option(WINDOWS_PLATFORM "Set to switch to build windows platform" ON)

set (CURRENT_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set (abseil_source_path "${CURRENT_DIR}/../source/abseil-cpp")
set (webrtc_source_path "${CURRENT_DIR}/../source/webrtc_m79")

include(${CURRENT_DIR}/../source/librtcbase.cmake)
include(${CURRENT_DIR}/../source/libaecm.cmake)
include(${CURRENT_DIR}/../source/libasp.cmake)

include_directories(${abseil_source_path})
include_directories(${webrtc_source_path})
include_directories(${webrtc_source_path}/common_audio/signal_processing/include)
include_directories(${CURRENT_DIR}/../source/pthread)

set (PTHREAD_LIB "${CURRENT_DIR}/../source/pthread")

ADD_DEFINITIONS(
		-DHAVE_LRINT
		-DHAVE_LRINTF
		-DWEBRTC_WIN
		#-DWEBRTC_POSIX
		#-DWEBRTC_LINUX
		#-DWEBRTC_ANDROID
		#-DWEBRTC_MAC
)

if (WINDOWS_PLATFORM)
	ADD_DEFINITIONS(-DNOMINMAX)
	ADD_DEFINITIONS(-DWIN32_LEAN_AND_MEAN)
endif()

set(webrtc_SOURCES
	${abseil_source_path}/absl/base/dynamic_annotations.cc
	${abseil_source_path}/absl/base/internal/raw_logging.cc
	${abseil_source_path}/absl/base/internal/throw_delegate.cc
	${abseil_source_path}/absl/strings/ascii.cc
	${abseil_source_path}/absl/strings/internal/memutil.cc
	${abseil_source_path}/absl/strings/match.cc
	${abseil_source_path}/absl/strings/string_view.cc
	${abseil_source_path}/absl/types/bad_optional_access.cc
	${abseil_source_path}/absl/types/bad_variant_access.cc
	${webrtc_source_path}/modules/audio_processing/utility/block_mean_calculator.cc
	${webrtc_source_path}/modules/audio_processing/utility/cascaded_biquad_filter.cc
	${webrtc_source_path}/modules/audio_processing/utility/delay_estimator.cc
	${webrtc_source_path}/modules/audio_processing/utility/delay_estimator_wrapper.cc
	${webrtc_source_path}/modules/audio_processing/utility/ooura_fft.cc
	${webrtc_source_path}/common_audio/ring_buffer.c
	${webrtc_source_path}/common_audio/third_party/spl_sqrt_floor/spl_sqrt_floor.c
	${webrtc_source_path}/api/task_queue/task_queue_base.cc
	${webrtc_source_path}/system_wrappers/source/cpu_features.cc
	$<TARGET_OBJECTS:librtcbase>
	$<TARGET_OBJECTS:libaecm>
	$<TARGET_OBJECTS:libasp>
)

if (WINDOWS_PLATFORM)
	list(APPEND webrtc_SOURCES
		${webrtc_source_path}/common_audio/fir_filter_sse.cc
		${webrtc_source_path}/common_audio/resampler/sinc_resampler_sse.cc
		${webrtc_source_path}/modules/audio_processing/utility/ooura_fft_sse2.cc
		${webrtc_source_path}/rtc_base/task_queue_win.cc
		${webrtc_source_path}/rtc_base/win32.cc
	)
else ()
	list(APPEND webrtc_SOURCES ${webrtc_source_path}/rtc_base/task_queue_stdlib.cc)
endif()

add_library(webrtc_3a
		SHARED
		${webrtc_SOURCES}
		)

#find_library(pthread-lib pthread PATHS ${PTHREAD_LIB} NO_CMAKE_FIND_ROOT_PATH)

#add_library(pthread STATIC IMPORTED)
#set_target_properties(pthread PROPERTIES IMPORTED_LOCATION ${PTHREAD_LIB}/libpthread.lib)

if (WINDOWS_PLATFORM)
add_library(winmm STATIC IMPORTED)
set_target_properties(winmm PROPERTIES IMPORTED_LOCATION winmm.lib)

add_library(ws2_32 STATIC IMPORTED)
set_target_properties(ws2_32 PROPERTIES IMPORTED_LOCATION ws2_32.lib)

add_library(iphlpapi STATIC IMPORTED)
set_target_properties(iphlpapi PROPERTIES IMPORTED_LOCATION iphlpapi.lib)

add_library(secur32 STATIC IMPORTED)
set_target_properties(secur32 PROPERTIES IMPORTED_LOCATION secur32.lib)

target_link_libraries( # Specifies the target library.
		webrtc_3a
		winmm
		ws2_32
		iphlpapi
		secur32
		# Links the target library to the log library
		# included in the NDK.
		)

else ()
target_link_libraries( # Specifies the target library.
		webrtc_3a
		# Links the target library to the log library
		# included in the NDK.
		)
endif ()