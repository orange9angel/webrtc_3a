
add_library(librtcbase OBJECT
		${webrtc_source_path}/rtc_base/async_invoker.cc
		${webrtc_source_path}/rtc_base/async_packet_socket.cc
		${webrtc_source_path}/rtc_base/async_resolver_interface.cc
		${webrtc_source_path}/rtc_base/async_socket.cc
		${webrtc_source_path}/rtc_base/async_tcp_socket.cc
		${webrtc_source_path}/rtc_base/async_udp_socket.cc
		${webrtc_source_path}/rtc_base/bit_buffer.cc
		${webrtc_source_path}/rtc_base/buffer_queue.cc
		${webrtc_source_path}/rtc_base/byte_buffer.cc
		${webrtc_source_path}/rtc_base/checks.cc
		${webrtc_source_path}/rtc_base/copy_on_write_buffer.cc
		${webrtc_source_path}/rtc_base/cpu_time.cc
		${webrtc_source_path}/rtc_base/crc32.cc
		${webrtc_source_path}/rtc_base/critical_section.cc
		${webrtc_source_path}/rtc_base/crypt_string.cc
		${webrtc_source_path}/rtc_base/data_rate_limiter.cc
		${webrtc_source_path}/rtc_base/event.cc
		${webrtc_source_path}/rtc_base/event_tracer.cc
		#${webrtc_source_path}/rtc_base/http_common.cc
		${webrtc_source_path}/rtc_base/location.cc
		${webrtc_source_path}/rtc_base/ip_address.cc
		#${webrtc_source_path}/rtc_base/log_sinks.cc
		${webrtc_source_path}/rtc_base/logging.cc
		${webrtc_source_path}/rtc_base/memory/aligned_malloc.cc
		${webrtc_source_path}/rtc_base/memory/fifo_buffer.cc
		${webrtc_source_path}/rtc_base/memory_stream.cc
		${webrtc_source_path}/rtc_base/memory_usage.cc
		#${webrtc_source_path}/rtc_base/message_digest.cc
		${webrtc_source_path}/rtc_base/message_handler.cc
		${webrtc_source_path}/rtc_base/message_queue.cc
		${webrtc_source_path}/rtc_base/net_helper.cc
		${webrtc_source_path}/rtc_base/net_helpers.cc
		${webrtc_source_path}/rtc_base/network.cc
		${webrtc_source_path}/rtc_base/network_monitor.cc
		${webrtc_source_path}/rtc_base/network/sent_packet.cc
		${webrtc_source_path}/rtc_base/null_socket_server.cc
		${webrtc_source_path}/rtc_base/numerics/exp_filter.cc
		${webrtc_source_path}/rtc_base/numerics/histogram_percentile_counter.cc
		${webrtc_source_path}/rtc_base/numerics/moving_average.cc
		${webrtc_source_path}/rtc_base/numerics/sample_counter.cc
		${webrtc_source_path}/rtc_base/numerics/samples_stats_counter.cc
		${webrtc_source_path}/rtc_base/physical_socket_server.cc
		${webrtc_source_path}/rtc_base/platform_thread.cc
		${webrtc_source_path}/rtc_base/platform_thread_types.cc
		${webrtc_source_path}/rtc_base/race_checker.cc
		${webrtc_source_path}/rtc_base/random.cc
		${webrtc_source_path}/rtc_base/rate_limiter.cc
		${webrtc_source_path}/rtc_base/rate_statistics.cc
		${webrtc_source_path}/rtc_base/rate_tracker.cc
		${webrtc_source_path}/rtc_base/signal_thread.cc
		${webrtc_source_path}/rtc_base/socket.cc
		#${webrtc_source_path}/rtc_base/socket_adapters.cc
		${webrtc_source_path}/rtc_base/socket_address.cc
		${webrtc_source_path}/rtc_base/socket_address_pair.cc
		${webrtc_source_path}/rtc_base/socket_stream.cc
		${webrtc_source_path}/rtc_base/stream.cc
		${webrtc_source_path}/rtc_base/string_encode.cc
		${webrtc_source_path}/rtc_base/strings/audio_format_to_string.cc
		${webrtc_source_path}/rtc_base/strings/string_builder.cc
		${webrtc_source_path}/rtc_base/string_to_number.cc
		${webrtc_source_path}/rtc_base/string_utils.cc
		${webrtc_source_path}/rtc_base/synchronization/sequence_checker.cc
		${webrtc_source_path}/rtc_base/synchronization/yield_policy.cc
		${webrtc_source_path}/rtc_base/task_queue.cc
		${webrtc_source_path}/rtc_base/task_utils/repeating_task.cc
		${webrtc_source_path}/rtc_base/third_party/base64/base64.cc
		${webrtc_source_path}/rtc_base/third_party/sigslot/sigslot.cc
		${webrtc_source_path}/rtc_base/thread.cc
		#${webrtc_source_path}/rtc_base/time/timestamp_extrapolator.cc
		${webrtc_source_path}/rtc_base/timestamp_aligner.cc
		${webrtc_source_path}/rtc_base/time_utils.cc
		#${webrtc_source_path}/rtc_base/unique_id_generator.cc
		${webrtc_source_path}/rtc_base/weak_ptr.cc
		${webrtc_source_path}/rtc_base/zero_memory.cc
)

		
target_compile_options(librtcbase PRIVATE
)

target_compile_definitions(librtcbase PRIVATE
)

target_include_directories(librtcbase PRIVATE

)
