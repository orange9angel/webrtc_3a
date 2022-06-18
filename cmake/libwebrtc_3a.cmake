option(WINDOWS_PLATFORM "Set to switch to build windows platform" ON)
option(ANDROID_PLATFORM "Set to switch to build windows platform" OFF)

set (CURRENT_DIR ${CMAKE_CURRENT_SOURCE_DIR})

set (abseil_source_path "${CURRENT_DIR}/../source/abseil-cpp")
set (webrtc_source_path "${CURRENT_DIR}/../source/webrtc_m79")
set (rnnoise_source_path "${CURRENT_DIR}/../third_party/rnnoise/src")
set (pffft_source_path "${CURRENT_DIR}/../third_party/pffft/src")

include(${CURRENT_DIR}/../cmake/librtcbase.cmake)
include(${CURRENT_DIR}/../cmake/libaecm.cmake)
include(${CURRENT_DIR}/../cmake/libasp.cmake)
include(${CURRENT_DIR}/../cmake/libaec3.cmake)
include(${CURRENT_DIR}/../cmake/libagc.cmake)
include(${CURRENT_DIR}/../cmake/libagc2.cmake)
include(${CURRENT_DIR}/../cmake/libans.cmake)
include(${CURRENT_DIR}/../cmake/libvad.cmake)

include_directories("${CURRENT_DIR}/../")
include_directories(${abseil_source_path})
include_directories(${webrtc_source_path})
include_directories(${webrtc_source_path}/common_audio/signal_processing/include)
include_directories(${rnnoise_source_path})
include_directories(${pffft_source_path})

ADD_DEFINITIONS(
		-DWEBRTC_NS_FLOAT
		-DWEBRTC_APM_DEBUG_DUMP=0
		-DHAVE_LRINT
		-DHAVE_LRINTF
		-DWEBRTC_WIN
		#-DWEBRTC_POSIX
		#-DWEBRTC_LINUX
		#-DWEBRTC_ANDROID
		#-DWEBRTC_MAC
		#-DWEBRTC_IOS
)

if (WINDOWS_PLATFORM)
    ADD_DEFINITIONS(-D_USE_MATH_DEFINES)
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
	${webrtc_source_path}/modules/audio_processing/logging/apm_data_dumper.cc
	${webrtc_source_path}/modules/audio_processing/high_pass_filter.cc
	${webrtc_source_path}/common_audio/ring_buffer.c
	${webrtc_source_path}/common_audio/third_party/spl_sqrt_floor/spl_sqrt_floor.c
	${webrtc_source_path}/api/audio/echo_canceller3_config.cc
	${webrtc_source_path}/api/audio/echo_canceller3_factory.cc
	${webrtc_source_path}/api/task_queue/task_queue_base.cc
	${webrtc_source_path}/system_wrappers/source/cpu_features.cc
	${webrtc_source_path}/system_wrappers/source/field_trial.cc
	${webrtc_source_path}/system_wrappers/source/metrics.cc
	${pffft_source_path}/pffft.c
	${webrtc_source_path}/modules/audio_processing/utility/pffft_wrapper.cc
	$<TARGET_OBJECTS:librtcbase>
	$<TARGET_OBJECTS:libaecm>
	$<TARGET_OBJECTS:libasp>
	$<TARGET_OBJECTS:libaec3>
	$<TARGET_OBJECTS:libagc>
	$<TARGET_OBJECTS:libagc2>
	$<TARGET_OBJECTS:libans>
	$<TARGET_OBJECTS:libvad>
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