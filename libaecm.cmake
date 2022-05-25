
add_library(libaecm OBJECT
		${webrtc_source_path}/modules/audio_processing/aecm/aecm_core.cc
		${webrtc_source_path}/modules/audio_processing/aecm/aecm_core_c.cc
		${webrtc_source_path}/modules/audio_processing/aecm/echo_control_mobile.cc
)

target_compile_options(libaecm PRIVATE
)

target_compile_definitions(libaecm PRIVATE
)

target_include_directories(libaecm PRIVATE

)
