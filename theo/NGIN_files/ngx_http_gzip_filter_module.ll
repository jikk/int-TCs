; ModuleID = 'src/http/modules/ngx_http_gzip_filter_module.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_http_module_t = type { i32 (%struct.ngx_conf_s*)*, i32 (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*, i8*)*, i8* (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*, i8*, i8*)*, i8* (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*, i8*, i8*)* }
%struct.ngx_conf_s = type { i8*, %struct.ngx_array_s*, %struct.ngx_cycle_s*, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_conf_file_t*, %struct.ngx_log_s*, i8*, i32, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i8* }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_pool_s = type { %struct.ngx_pool_data_t, i32, %struct.ngx_pool_s*, %struct.ngx_chain_s*, %struct.ngx_pool_large_s*, %struct.ngx_pool_cleanup_s*, %struct.ngx_log_s* }
%struct.ngx_pool_data_t = type { i8*, i8*, %struct.ngx_pool_s*, i32 }
%struct.ngx_chain_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s* }
%struct.ngx_buf_s = type { i8*, i8*, i64, i64, i8*, i8*, i8*, %struct.ngx_file_s*, %struct.ngx_buf_s*, i8, i8, i32 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, %struct.ngx_log_s*, i8 }
%struct.ngx_str_t = type { i32, i8* }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.ngx_log_s = type { i32, %struct.ngx_open_file_s*, i32, i8* (%struct.ngx_log_s*, i8*, i32)*, i8*, i8* }
%struct.ngx_open_file_s = type { i32, %struct.ngx_str_t, i8*, i8*, i8* }
%struct.ngx_pool_large_s = type { %struct.ngx_pool_large_s*, i8* }
%struct.ngx_pool_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_pool_cleanup_s* }
%struct.ngx_cycle_s = type { i8****, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_log_s, %struct.ngx_connection_s**, %struct.ngx_connection_s*, i32, %struct.ngx_queue_s, %struct.ngx_array_s, %struct.ngx_array_s, %struct.ngx_list_t, %struct.ngx_list_t, i32, i32, %struct.ngx_connection_s*, %struct.ngx_event_s*, %struct.ngx_event_s*, %struct.ngx_cycle_s*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t }
%struct.ngx_connection_s = type { i8*, %struct.ngx_event_s*, %struct.ngx_event_s*, i32, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, %struct.ngx_listening_s*, i64, %struct.ngx_log_s*, %struct.ngx_pool_s*, %struct.sockaddr*, i32, %struct.ngx_str_t, %struct.sockaddr*, %struct.ngx_buf_s*, %struct.ngx_queue_s, i32, i32, i8, i8, i8, i8 }
%struct.ngx_event_s = type { i8*, i8, i8, i8, void (%struct.ngx_event_s*)*, i32, %struct.ngx_log_s*, %struct.ngx_rbtree_node_s, i8, %struct.ngx_event_s*, %struct.ngx_event_s** }
%struct.ngx_rbtree_node_s = type { i32, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, i8, i8 }
%struct.ngx_listening_s = type { i32, %struct.sockaddr*, i32, i32, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, void (%struct.ngx_connection_s*)*, i8*, %struct.ngx_log_s, %struct.ngx_log_s*, i32, i32, i32, %struct.ngx_listening_s*, %struct.ngx_connection_s*, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ngx_queue_s = type { %struct.ngx_queue_s*, %struct.ngx_queue_s* }
%struct.ngx_list_t = type { %struct.ngx_list_part_s*, %struct.ngx_list_part_s, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_part_s = type { i8*, i32, %struct.ngx_list_part_s* }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, %struct.ngx_buf_s*, i32 }
%struct.ngx_command_s = type { %struct.ngx_str_t, i32, {}*, i32, i32, i8* }
%struct.ngx_module_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.ngx_command_s*, i32, i32 (%struct.ngx_log_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ngx_conf_num_bounds_t = type { i8* (%struct.ngx_conf_s*, i8*, i8*)*, i32, i32 }
%struct.ngx_http_request_s = type { i32, %struct.ngx_connection_s*, i8**, i8**, i8**, i8**, void (%struct.ngx_http_request_s*)*, void (%struct.ngx_http_request_s*)*, %struct.ngx_http_cache_s*, %struct.ngx_http_upstream_s*, %struct.ngx_array_s*, %struct.ngx_pool_s*, %struct.ngx_buf_s*, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, %struct.ngx_http_request_body_t*, i32, i32, i32, i32, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_chain_s*, %struct.ngx_http_request_s*, %struct.ngx_http_request_s*, %struct.ngx_http_postponed_request_s*, %struct.ngx_http_post_subrequest_t*, %struct.ngx_http_posted_request_s*, %struct.ngx_http_virtual_names_t*, i32, {}*, i32, %struct.ngx_variable_value_t*, i32, i32*, i8*, i32, i32, i64, i32, %struct.ngx_http_connection_t*, i8* (%struct.ngx_http_request_s*, %struct.ngx_http_request_s*, i8*, i32)*, %struct.ngx_http_cleanup_s*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [32 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [2 x i8], [2 x i8] }
%struct.ngx_http_cache_s = type { %struct.ngx_file_s, %struct.ngx_array_s, i32, [16 x i8], i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.ngx_buf_s*, %struct.ngx_http_file_cache_s*, %struct.ngx_http_file_cache_node_t*, i32, i32, %struct.ngx_event_s, i8 }
%struct.ngx_http_file_cache_s = type { %struct.ngx_http_file_cache_sh_t*, %struct.ngx_slab_pool_t*, %struct.ngx_path_t*, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_shm_zone_s* }
%struct.ngx_http_file_cache_sh_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, i32, i32, i64 }
%struct.ngx_rbtree_s = type { %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* }
%struct.ngx_slab_pool_t = type { %struct.ngx_shmtx_sh_t, i32, i32, %struct.ngx_slab_page_s*, %struct.ngx_slab_page_s, i8*, i8*, %struct.ngx_shmtx_t, i8*, i8, i8*, i8* }
%struct.ngx_shmtx_sh_t = type { i32, i32 }
%struct.ngx_slab_page_s = type { i32, %struct.ngx_slab_page_s*, i32 }
%struct.ngx_shmtx_t = type { i32*, i32*, i32, %union.sem_t, i32 }
%union.sem_t = type { i32, [12 x i8] }
%struct.ngx_path_t = type { %struct.ngx_str_t, i32, [3 x i32], i32 (i8*)*, void (i8*)*, i8*, i8*, i32 }
%struct.ngx_shm_zone_s = type { i8*, %struct.ngx_shm_t, i32 (%struct.ngx_shm_zone_s*, i8*)*, i8* }
%struct.ngx_shm_t = type { i8*, i32, %struct.ngx_str_t, %struct.ngx_log_s*, i32 }
%struct.ngx_http_file_cache_node_t = type { %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, [12 x i8], [3 x i8], i8, [2 x i8], i8, i64, i32, i32, i32, i64 }
%struct.ngx_http_upstream_s = type { void (%struct.ngx_http_request_s*, %struct.ngx_http_upstream_s*)*, void (%struct.ngx_http_request_s*, %struct.ngx_http_upstream_s*)*, %struct.ngx_peer_connection_s, %struct.ngx_event_pipe_s*, %struct.ngx_chain_s*, %struct.ngx_output_chain_ctx_s, %struct.ngx_chain_writer_ctx_t, %struct.ngx_http_upstream_conf_t*, %struct.ngx_http_upstream_headers_in_t, %struct.ngx_http_upstream_resolved_t*, %struct.ngx_buf_s, i64, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, i32 (i8*)*, i32 (i8*, i32)*, i8*, {}*, {}*, {}*, {}*, void (%struct.ngx_http_request_s*)*, void (%struct.ngx_http_request_s*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_table_elt_t*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_table_elt_t*)*, i32, %struct.ngx_http_upstream_state_t*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, void (i8*)**, i8, i8 }
%struct.ngx_peer_connection_s = type { %struct.ngx_connection_s*, %struct.sockaddr*, i32, %struct.ngx_str_t*, i32, i32 (%struct.ngx_peer_connection_s*, i8*)*, void (%struct.ngx_peer_connection_s*, i8*, i32)*, i8*, %struct.ngx_addr_t*, i32, %struct.ngx_log_s*, i8 }
%struct.ngx_addr_t = type { %struct.sockaddr*, i32, %struct.ngx_str_t }
%struct.ngx_event_pipe_s = type { %struct.ngx_connection_s*, %struct.ngx_connection_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s**, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, i32 (%struct.ngx_event_pipe_s*, %struct.ngx_buf_s*)*, i8*, i32 (i8*, %struct.ngx_chain_s*)*, i8*, i8, i8, i32, %struct.ngx_bufs_t, i8*, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_chain_s*, i32, %struct.ngx_buf_s*, %struct.ngx_temp_file_t*, i32 }
%struct.ngx_bufs_t = type { i32, i32 }
%struct.ngx_temp_file_t = type { %struct.ngx_file_s, i64, %struct.ngx_path_t*, %struct.ngx_pool_s*, i8*, i32, i8, i8 }
%struct.ngx_output_chain_ctx_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, i8, i64, %struct.ngx_pool_s*, i32, %struct.ngx_bufs_t, i8*, i32 (i8*, %struct.ngx_chain_s*)*, i8* }
%struct.ngx_chain_writer_ctx_t = type { %struct.ngx_chain_s*, %struct.ngx_chain_s**, %struct.ngx_connection_s*, %struct.ngx_pool_s*, i64 }
%struct.ngx_http_upstream_conf_t = type { %struct.ngx_http_upstream_srv_conf_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_bufs_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_path_t*, %struct.ngx_hash_t, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_addr_t*, %struct.ngx_shm_zone_s*, i32, i32, i32, i32, i32, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, i8, %struct.ngx_str_t }
%struct.ngx_http_upstream_srv_conf_s = type { %struct.ngx_http_upstream_peer_t, i8**, %struct.ngx_array_s*, i32, %struct.ngx_str_t, i8*, i32, i16, i16 }
%struct.ngx_http_upstream_peer_t = type { i32 (%struct.ngx_conf_s*, %struct.ngx_http_upstream_srv_conf_s*)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_upstream_srv_conf_s*)*, i8* }
%struct.ngx_hash_t = type { %struct.ngx_hash_elt_t**, i32 }
%struct.ngx_hash_elt_t = type { i8*, i16, [1 x i8] }
%struct.ngx_http_upstream_headers_in_t = type { %struct.ngx_list_t, i32, %struct.ngx_str_t, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, i64, %struct.ngx_array_s, i8 }
%struct.ngx_table_elt_t = type { i32, %struct.ngx_str_t, %struct.ngx_str_t, i8* }
%struct.ngx_http_upstream_resolved_t = type { %struct.ngx_str_t, i16, i32, i32, i32*, %struct.sockaddr*, i32, %struct.ngx_resolver_ctx_s* }
%struct.ngx_resolver_ctx_s = type { %struct.ngx_resolver_ctx_s*, %struct.ngx_resolver_t*, %struct.ngx_udp_connection_t*, i32, i32, i32, %struct.ngx_str_t, i32, i32*, i32, void (%struct.ngx_resolver_ctx_s*)*, i8*, i32, i32, i32, %struct.ngx_event_s* }
%struct.ngx_resolver_t = type { %struct.ngx_event_s*, i8*, %struct.ngx_log_s*, i32, %struct.ngx_array_s, i32, %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, %struct.ngx_queue_s, %struct.ngx_queue_s, %struct.ngx_queue_s, i32, i32, i32, i32 }
%struct.ngx_udp_connection_t = type { %struct.ngx_connection_s*, %struct.sockaddr*, i32, %struct.ngx_str_t, %struct.ngx_log_s }
%struct.ngx_http_upstream_state_t = type { i32, i32, i32, i32, i32, i64, %struct.ngx_str_t* }
%struct.ngx_http_headers_in_t = type { %struct.ngx_list_t, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_s, %struct.ngx_str_t, i64, i32, i8, i8 }
%struct.ngx_http_headers_out_t = type { %struct.ngx_list_t, i32, %struct.ngx_str_t, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_table_elt_t*, %struct.ngx_str_t*, i32, %struct.ngx_str_t, %struct.ngx_str_t, i8*, i32, %struct.ngx_array_s, i64, i32, i32 }
%struct.ngx_http_request_body_t = type { %struct.ngx_temp_file_t*, %struct.ngx_chain_s*, %struct.ngx_buf_s*, i64, %struct.ngx_chain_s*, void (%struct.ngx_http_request_s*)* }
%struct.ngx_http_postponed_request_s = type { %struct.ngx_http_request_s*, %struct.ngx_chain_s*, %struct.ngx_http_postponed_request_s* }
%struct.ngx_http_post_subrequest_t = type { i32 (%struct.ngx_http_request_s*, i8*, i32)*, i8* }
%struct.ngx_http_posted_request_s = type { %struct.ngx_http_request_s*, %struct.ngx_http_posted_request_s* }
%struct.ngx_http_virtual_names_t = type { %struct.ngx_hash_combined_t, i32, %struct.ngx_http_server_name_s* }
%struct.ngx_hash_combined_t = type { %struct.ngx_hash_t, %struct.ngx_hash_wildcard_t*, %struct.ngx_hash_wildcard_t* }
%struct.ngx_hash_wildcard_t = type { %struct.ngx_hash_t, i8* }
%struct.ngx_http_server_name_s = type { %struct.ngx_http_regex_t*, %struct.ngx_http_core_srv_conf_t*, %struct.ngx_str_t }
%struct.ngx_http_regex_t = type { %struct.ngx_regex_t*, i32, %struct.ngx_http_regex_variable_t*, i32, %struct.ngx_str_t }
%struct.ngx_regex_t = type { %struct.real_pcre*, %struct.pcre_extra* }
%struct.real_pcre = type opaque
%struct.pcre_extra = type { i32, i8*, i32, i8*, i8*, i32, i8**, i8* }
%struct.ngx_http_regex_variable_t = type { i32, i32 }
%struct.ngx_http_core_srv_conf_t = type { %struct.ngx_array_s, %struct.ngx_http_conf_ctx_t*, %struct.ngx_str_t, i32, i32, i32, %struct.ngx_bufs_t, i32, i32, i32, i32, i8, %struct.ngx_http_core_loc_conf_s** }
%struct.ngx_http_conf_ctx_t = type { i8**, i8**, i8** }
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, %struct.ngx_http_regex_t*, i8, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s**, i8**, i32, i8**, {}*, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_resolver_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_array_s*, i32, %struct.ngx_http_complex_value_t*, %struct.ngx_array_s*, %struct.ngx_http_try_file_t*, %struct.ngx_path_t*, %struct.ngx_open_file_cache_t*, i32, i32, i32, i32, %struct.ngx_log_s*, i32, i32, %struct.ngx_queue_s* }
%struct.ngx_http_location_tree_node_s = type { %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s*, %struct.ngx_http_core_loc_conf_s*, i8, i8, [1 x i8] }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, i32*, i8*, i8* }
%struct.ngx_http_try_file_t = type { %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_str_t, [2 x i8] }
%struct.ngx_open_file_cache_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, i32, i32, i32 }
%struct.ngx_variable_value_t = type { [4 x i8], i8* }
%struct.ngx_http_connection_t = type { %struct.ngx_http_request_s*, %struct.ngx_buf_s**, i32, %struct.ngx_buf_s**, i32, i32 }
%struct.ngx_http_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_http_cleanup_s* }
%struct.ngx_http_variable_s = type { %struct.ngx_str_t, void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32, i32, i32 }
%struct.z_stream_s = type { i8*, i32, i32, i8*, i32, i32, i8*, %struct.internal_state*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8*, i32, i32, i32 }
%struct.internal_state = type { i32 }

@ngx_http_gzip_filter_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* @ngx_http_gzip_add_variables, i32 (%struct.ngx_conf_s*)* @ngx_http_gzip_filter_init, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_gzip_create_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_gzip_merge_conf }, align 4
@ngx_http_gzip_filter_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_gzip_filter_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([10 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_gzip_filter_commands to [10 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str1 = private unnamed_addr constant [13 x i8] c"gzip_buffers\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"gzip_types\00", align 1
@ngx_http_html_default_types = external global [0 x %struct.ngx_str_t]
@.str3 = private unnamed_addr constant [16 x i8] c"gzip_comp_level\00", align 1
@ngx_http_gzip_comp_level_bounds = internal global %struct.ngx_conf_num_bounds_t { i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_conf_check_num_bounds, i32 1, i32 9 }, align 4
@.str4 = private unnamed_addr constant [12 x i8] c"gzip_window\00", align 1
@ngx_http_gzip_window_p = internal global i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_gzip_window, align 4
@.str5 = private unnamed_addr constant [10 x i8] c"gzip_hash\00", align 1
@ngx_http_gzip_hash_p = internal global i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_gzip_hash, align 4
@.str6 = private unnamed_addr constant [18 x i8] c"postpone_gzipping\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"gzip_no_buffer\00", align 1
@.str8 = private unnamed_addr constant [16 x i8] c"gzip_min_length\00", align 1
@ngx_http_gzip_filter_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0) }, i32 1308623360, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0) }, i32 234881028, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_bufs_slot, i32 8, i32 16, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_types_slot, i32 8, i32 44, i8* bitcast ([0 x %struct.ngx_str_t]* @ngx_http_html_default_types to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 8, i32 28, i8* bitcast (%struct.ngx_conf_num_bounds_t* @ngx_http_gzip_comp_level_bounds to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 11, i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 32, i8* bitcast (i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_gzip_window_p to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 36, i8* bitcast (i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_gzip_hash_p to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str6, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 24, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str7, i32 0, i32 0) }, i32 234881536, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 4, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str8, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 40, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str9 = private unnamed_addr constant [52 x i8] c"must be 512, 1k, 2k, 4k, 8k, 16k, 32k, 64k, or 128k\00", align 1
@.str10 = private unnamed_addr constant [41 x i8] c"must be 512, 1k, 2k, 4k, 8k, 16k, or 32k\00", align 1
@ngx_pagesize = external global i32
@ngx_http_top_header_filter = external global i32 (%struct.ngx_http_request_s*)*
@ngx_http_next_header_filter = internal unnamed_addr global i32 (%struct.ngx_http_request_s*)* null, align 4
@ngx_http_top_body_filter = external global i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)*
@ngx_http_next_body_filter = internal unnamed_addr global i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)* null, align 4
@ngx_http_gzip_filter_gzheader.gzheader = internal global [10 x i8] c"\1F\8B\08\00\00\00\00\00\00\03", align 1
@.str11 = private unnamed_addr constant [25 x i8] c"deflate() failed: %d, %d\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"deflateEnd() failed: %d\00", align 1
@0 = internal unnamed_addr constant [5 x i8] c"uInt\00"
@1 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@.str13 = private unnamed_addr constant [6 x i8] c"1.2.3\00", align 1
@.str14 = private unnamed_addr constant [26 x i8] c"deflateInit2() failed: %d\00", align 1
@2 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str15 = private unnamed_addr constant [58 x i8] c"gzip filter failed to use preallocated memory: %ud of %ud\00", align 1
@3 = internal unnamed_addr constant [3 x i8] c"+=\00"
@.str16 = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1
@4 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@5 = internal unnamed_addr constant [2 x i8] c"-\00"
@6 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@7 = internal unnamed_addr constant [3 x i8] c"<<\00"
@8 = internal unnamed_addr constant [2 x i8] c"+\00"
@9 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@ngx_http_gzip_ratio = internal global %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str18, i32 0, i32 0) }, align 4
@10 = internal unnamed_addr constant [2 x i8] c"*\00"
@11 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str17 = private unnamed_addr constant [10 x i8] c"%ui.%02ui\00", align 1
@12 = internal unnamed_addr constant [4 x i8] c"int\00"
@13 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@14 = internal unnamed_addr constant [47 x i8] c"src/http/modules/ngx_http_gzip_filter_module.c\00"
@.str18 = private unnamed_addr constant [11 x i8] c"gzip_ratio\00", align 1

declare i8* @ngx_conf_set_flag_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_bufs_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_http_types_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_num_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_size_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

define internal i8* @ngx_http_gzip_hash(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %post, i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !461), !dbg !1939
  tail call void @llvm.dbg.value(metadata !{i8* %post}, i64 0, metadata !462), !dbg !1939
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !463), !dbg !1939
  %0 = bitcast i8* %data to i32*, !dbg !1940
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !464), !dbg !1940
  tail call void @llvm.dbg.value(metadata !1941, i64 0, metadata !467), !dbg !1942
  tail call void @llvm.dbg.value(metadata !1943, i64 0, metadata !468), !dbg !1944
  br label %for.body, !dbg !1944

for.body:                                         ; preds = %cont11.for.body_crit_edge, %entry
  %hsize.017 = phi i32 [ 131072, %entry ], [ %shr, %cont11.for.body_crit_edge ]
  %memlevel.016 = phi i32 [ 9, %entry ], [ %3, %cont11.for.body_crit_edge ]
  %1 = load i32* %0, align 4, !dbg !1946, !tbaa !1948
  %cmp7 = icmp eq i32 %hsize.017, %1, !dbg !1946
  br i1 %cmp7, label %if.then, label %if.end, !dbg !1946

if.then:                                          ; preds = %for.body
  store i32 %memlevel.016, i32* %0, align 4, !dbg !1951, !tbaa !1948
  br label %return, !dbg !1953

if.end:                                           ; preds = %for.body
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memlevel.016, i32 1), !dbg !1954
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !1954
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !1954
  br i1 %4, label %ioc_bb8, label %cont11, !dbg !1954

ioc_bb8:                                          ; preds = %if.end
  %5 = zext i32 %memlevel.016 to i64, !dbg !1954
  tail call void @__ioc_report_sub_overflow(i32 804, i32 13, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !1954
  br label %cont11, !dbg !1954

cont11:                                           ; preds = %ioc_bb8, %if.end
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !467), !dbg !1954
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !468), !dbg !1944
  %cmp = icmp ugt i32 %hsize.017, 513, !dbg !1944
  br i1 %cmp, label %cont11.for.body_crit_edge, label %return, !dbg !1944

cont11.for.body_crit_edge:                        ; preds = %cont11
  %shr = lshr i32 %hsize.017, 1, !dbg !1944
  br label %for.body, !dbg !1944

return:                                           ; preds = %cont11, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ getelementptr inbounds ([52 x i8]* @.str9, i32 0, i32 0), %cont11 ]
  ret i8* %retval.0, !dbg !1955
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal i8* @ngx_http_gzip_window(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %post, i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !472), !dbg !1956
  tail call void @llvm.dbg.value(metadata !{i8* %post}, i64 0, metadata !473), !dbg !1956
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !474), !dbg !1956
  %0 = bitcast i8* %data to i32*, !dbg !1957
  tail call void @llvm.dbg.value(metadata !{i32* %0}, i64 0, metadata !475), !dbg !1957
  tail call void @llvm.dbg.value(metadata !1958, i64 0, metadata !477), !dbg !1959
  tail call void @llvm.dbg.value(metadata !1960, i64 0, metadata !478), !dbg !1961
  %1 = load i32* %0, align 4, !dbg !1963, !tbaa !1948
  %cmp7 = icmp eq i32 %1, 32768, !dbg !1963
  br i1 %cmp7, label %if.then, label %cont11, !dbg !1963

if.then:                                          ; preds = %cont11.5, %cont11.4, %cont11.3, %cont11.2, %cont11.1, %cont11, %entry
  %wbits.016.lcssa = phi i32 [ 15, %entry ], [ 14, %cont11 ], [ 13, %cont11.1 ], [ 12, %cont11.2 ], [ 11, %cont11.3 ], [ 10, %cont11.4 ], [ 9, %cont11.5 ]
  store i32 %wbits.016.lcssa, i32* %0, align 4, !dbg !1965, !tbaa !1948
  br label %return, !dbg !1967

cont11:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !477), !dbg !1969
  tail call void @llvm.dbg.value(metadata !1970, i64 0, metadata !478), !dbg !1961
  %cmp7.1 = icmp eq i32 %1, 16384, !dbg !1963
  br i1 %cmp7.1, label %if.then, label %cont11.1, !dbg !1963

return:                                           ; preds = %cont11.5, %if.then
  %retval.0 = phi i8* [ null, %if.then ], [ getelementptr inbounds ([41 x i8]* @.str10, i32 0, i32 0), %cont11.5 ]
  ret i8* %retval.0, !dbg !1971

cont11.1:                                         ; preds = %cont11
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !477), !dbg !1969
  tail call void @llvm.dbg.value(metadata !1970, i64 0, metadata !478), !dbg !1961
  %cmp7.2 = icmp eq i32 %1, 8192, !dbg !1963
  br i1 %cmp7.2, label %if.then, label %cont11.2, !dbg !1963

cont11.2:                                         ; preds = %cont11.1
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !477), !dbg !1969
  tail call void @llvm.dbg.value(metadata !1970, i64 0, metadata !478), !dbg !1961
  %cmp7.3 = icmp eq i32 %1, 4096, !dbg !1963
  br i1 %cmp7.3, label %if.then, label %cont11.3, !dbg !1963

cont11.3:                                         ; preds = %cont11.2
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !477), !dbg !1969
  tail call void @llvm.dbg.value(metadata !1970, i64 0, metadata !478), !dbg !1961
  %cmp7.4 = icmp eq i32 %1, 2048, !dbg !1963
  br i1 %cmp7.4, label %if.then, label %cont11.4, !dbg !1963

cont11.4:                                         ; preds = %cont11.3
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !477), !dbg !1969
  tail call void @llvm.dbg.value(metadata !1970, i64 0, metadata !478), !dbg !1961
  %cmp7.5 = icmp eq i32 %1, 1024, !dbg !1963
  br i1 %cmp7.5, label %if.then, label %cont11.5, !dbg !1963

cont11.5:                                         ; preds = %cont11.4
  tail call void @llvm.dbg.value(metadata !1968, i64 0, metadata !477), !dbg !1969
  tail call void @llvm.dbg.value(metadata !1970, i64 0, metadata !478), !dbg !1961
  %cmp7.6 = icmp eq i32 %1, 512, !dbg !1963
  br i1 %cmp7.6, label %if.then, label %return, !dbg !1963
}

declare i8* @ngx_conf_check_num_bounds(%struct.ngx_conf_s*, i8*, i8*)

define internal i32 @ngx_http_gzip_add_variables(%struct.ngx_conf_s* %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1828), !dbg !1972
  %call = tail call %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* @ngx_http_gzip_ratio, i32 8) nounwind, !dbg !1973
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %call}, i64 0, metadata !1829), !dbg !1973
  %cmp = icmp eq %struct.ngx_http_variable_s* %call, null, !dbg !1974
  br i1 %cmp, label %return, label %if.end, !dbg !1974

if.end:                                           ; preds = %entry
  %get_handler = getelementptr inbounds %struct.ngx_http_variable_s* %call, i32 0, i32 2, !dbg !1975
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_gzip_ratio_variable, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler, align 4, !dbg !1975, !tbaa !1976
  br label %return, !dbg !1977

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !1978
}

define internal i32 @ngx_http_gzip_filter_init(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !543), !dbg !1979
  %0 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_top_header_filter, align 4, !dbg !1980, !tbaa !1976
  store i32 (%struct.ngx_http_request_s*)* %0, i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !1980, !tbaa !1976
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_gzip_header_filter, i32 (%struct.ngx_http_request_s*)** @ngx_http_top_header_filter, align 4, !dbg !1982, !tbaa !1976
  %1 = load i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_top_body_filter, align 4, !dbg !1983, !tbaa !1976
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)* %1, i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_next_body_filter, align 4, !dbg !1983, !tbaa !1976
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)* @ngx_http_gzip_body_filter, i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_top_body_filter, align 4, !dbg !1984, !tbaa !1976
  ret i32 0, !dbg !1985
}

define internal i8* @ngx_http_gzip_create_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !535), !dbg !1986
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1987
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1987, !tbaa !1976
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 48) nounwind, !dbg !1987
  %cmp = icmp eq i8* %call, null, !dbg !1988
  br i1 %cmp, label %return, label %cont, !dbg !1988

cont:                                             ; preds = %entry
  %enable = bitcast i8* %call to i32*, !dbg !1989
  store i32 -1, i32* %enable, align 4, !dbg !1989, !tbaa !1948
  %no_buffer = getelementptr inbounds i8* %call, i32 4, !dbg !1990
  %1 = bitcast i8* %no_buffer to i32*, !dbg !1990
  store i32 -1, i32* %1, align 4, !dbg !1990, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 711, i32 41, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1991
  %postpone_gzipping = getelementptr inbounds i8* %call, i32 24, !dbg !1991
  %2 = bitcast i8* %postpone_gzipping to i32*, !dbg !1991
  store i32 -1, i32* %2, align 4, !dbg !1991, !tbaa !1948
  %level = getelementptr inbounds i8* %call, i32 28, !dbg !1992
  %3 = bitcast i8* %level to i32*, !dbg !1992
  store i32 -1, i32* %3, align 4, !dbg !1992, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 713, i32 29, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1993
  %wbits = getelementptr inbounds i8* %call, i32 32, !dbg !1993
  %4 = bitcast i8* %wbits to i32*, !dbg !1993
  store i32 -1, i32* %4, align 4, !dbg !1993, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 714, i32 32, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1994
  %memlevel = getelementptr inbounds i8* %call, i32 36, !dbg !1994
  %5 = bitcast i8* %memlevel to i32*, !dbg !1994
  store i32 -1, i32* %5, align 4, !dbg !1994, !tbaa !1948
  %min_length = getelementptr inbounds i8* %call, i32 40, !dbg !1995
  %6 = bitcast i8* %min_length to i32*, !dbg !1995
  store i32 -1, i32* %6, align 4, !dbg !1995, !tbaa !1948
  br label %return, !dbg !1996

return:                                           ; preds = %entry, %cont
  %retval.0 = phi i8* [ %call, %cont ], [ null, %entry ]
  ret i8* %retval.0, !dbg !1997
}

define internal i8* @ngx_http_gzip_merge_conf(%struct.ngx_conf_s* %cf, i8* %parent, i8* %child) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !482), !dbg !1998
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !483), !dbg !1998
  tail call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !484), !dbg !1998
  %enable = bitcast i8* %child to i32*, !dbg !1999
  %0 = load i32* %enable, align 4, !dbg !1999, !tbaa !1948
  %cmp = icmp eq i32 %0, -1, !dbg !1999
  br i1 %cmp, label %if.then, label %if.end, !dbg !1999

if.then:                                          ; preds = %entry
  %enable1 = bitcast i8* %parent to i32*, !dbg !2000
  %1 = load i32* %enable1, align 4, !dbg !2000, !tbaa !1948
  %cmp4 = icmp eq i32 %1, -1, !dbg !2000
  %. = select i1 %cmp4, i32 0, i32 %1, !dbg !2000
  store i32 %., i32* %enable, align 4, !dbg !2000, !tbaa !1948
  br label %if.end, !dbg !2002

if.end:                                           ; preds = %if.then, %entry
  %no_buffer = getelementptr inbounds i8* %child, i32 4, !dbg !2003
  %2 = bitcast i8* %no_buffer to i32*, !dbg !2003
  %3 = load i32* %2, align 4, !dbg !2003, !tbaa !1948
  %cmp9 = icmp eq i32 %3, -1, !dbg !2003
  br i1 %cmp9, label %if.then10, label %if.end21, !dbg !2003

if.then10:                                        ; preds = %if.end
  %no_buffer11 = getelementptr inbounds i8* %parent, i32 4, !dbg !2004
  %4 = bitcast i8* %no_buffer11 to i32*, !dbg !2004
  %5 = load i32* %4, align 4, !dbg !2004, !tbaa !1948
  %cmp14 = icmp eq i32 %5, -1, !dbg !2004
  %.194 = select i1 %cmp14, i32 0, i32 %5, !dbg !2004
  store i32 %.194, i32* %2, align 4, !dbg !2004, !tbaa !1948
  br label %if.end21, !dbg !2006

if.end21:                                         ; preds = %if.then10, %if.end
  %bufs = getelementptr inbounds i8* %child, i32 16, !dbg !2007
  %num = bitcast i8* %bufs to i32*, !dbg !2007
  %6 = load i32* %num, align 4, !dbg !2007, !tbaa !1948
  %cmp22 = icmp eq i32 %6, 0, !dbg !2007
  br i1 %cmp22, label %if.then23, label %if.end46, !dbg !2007

if.then23:                                        ; preds = %if.end21
  %bufs24 = getelementptr inbounds i8* %parent, i32 16, !dbg !2008
  %num25 = bitcast i8* %bufs24 to i32*, !dbg !2008
  %7 = load i32* %num25, align 4, !dbg !2008, !tbaa !1948
  %tobool = icmp eq i32 %7, 0, !dbg !2008
  br i1 %tobool, label %cont37, label %if.then26, !dbg !2008

if.then26:                                        ; preds = %if.then23
  store i32 %7, i32* %num, align 4, !dbg !2010, !tbaa !1948
  %size = getelementptr inbounds i8* %parent, i32 20, !dbg !2012
  %8 = bitcast i8* %size to i32*, !dbg !2012
  %9 = load i32* %8, align 4, !dbg !2012, !tbaa !1948
  %size33 = getelementptr inbounds i8* %child, i32 20, !dbg !2012
  %10 = bitcast i8* %size33 to i32*, !dbg !2012
  store i32 %9, i32* %10, align 4, !dbg !2012, !tbaa !1948
  br label %if.end46, !dbg !2013

cont37:                                           ; preds = %if.then23
  %11 = load i32* @ngx_pagesize, align 4, !dbg !2014, !tbaa !1948
  %12 = icmp eq i32 %11, 0, !dbg !2014
  br i1 %12, label %trap, label %cont38, !dbg !2014

trap:                                             ; preds = %cont37
  tail call void @llvm.trap() noreturn nounwind, !dbg !2014
  unreachable, !dbg !2014

cont38:                                           ; preds = %cont37
  %div = udiv i32 131072, %11, !dbg !2014
  store i32 %div, i32* %num, align 4, !dbg !2014, !tbaa !1948
  %13 = load i32* @ngx_pagesize, align 4, !dbg !2016, !tbaa !1948
  %size44 = getelementptr inbounds i8* %child, i32 20, !dbg !2016
  %14 = bitcast i8* %size44 to i32*, !dbg !2016
  store i32 %13, i32* %14, align 4, !dbg !2016, !tbaa !1948
  br label %if.end46

if.end46:                                         ; preds = %if.then26, %cont38, %if.end21
  %postpone_gzipping = getelementptr inbounds i8* %child, i32 24, !dbg !2017
  %15 = bitcast i8* %postpone_gzipping to i32*, !dbg !2017
  %16 = load i32* %15, align 4, !dbg !2017, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 742, i32 46, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2017
  %cmp52 = icmp eq i32 %16, -1, !dbg !2017
  br i1 %cmp52, label %if.then53, label %if.end69, !dbg !2017

if.then53:                                        ; preds = %if.end46
  %postpone_gzipping54 = getelementptr inbounds i8* %parent, i32 24, !dbg !2018
  %17 = bitcast i8* %postpone_gzipping54 to i32*, !dbg !2018
  %18 = load i32* %17, align 4, !dbg !2018, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 743, i32 73, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2018
  %cmp60 = icmp eq i32 %18, -1, !dbg !2018
  br i1 %cmp60, label %cond.end66, label %cond.false64, !dbg !2018

cond.false64:                                     ; preds = %if.then53
  %19 = load i32* %17, align 4, !dbg !2018, !tbaa !1948
  br label %cond.end66, !dbg !2018

cond.end66:                                       ; preds = %if.then53, %cond.false64
  %cond67 = phi i32 [ %19, %cond.false64 ], [ 0, %if.then53 ], !dbg !2018
  store i32 %cond67, i32* %15, align 4, !dbg !2018, !tbaa !1948
  br label %if.end69, !dbg !2020

if.end69:                                         ; preds = %cond.end66, %if.end46
  %level = getelementptr inbounds i8* %child, i32 28, !dbg !2021
  %20 = bitcast i8* %level to i32*, !dbg !2021
  %21 = load i32* %20, align 4, !dbg !2021, !tbaa !1948
  %cmp72 = icmp eq i32 %21, -1, !dbg !2021
  br i1 %cmp72, label %if.then73, label %if.end84, !dbg !2021

if.then73:                                        ; preds = %if.end69
  %level74 = getelementptr inbounds i8* %parent, i32 28, !dbg !2022
  %22 = bitcast i8* %level74 to i32*, !dbg !2022
  %23 = load i32* %22, align 4, !dbg !2022, !tbaa !1948
  %cmp77 = icmp eq i32 %23, -1, !dbg !2022
  %.195 = select i1 %cmp77, i32 1, i32 %23, !dbg !2022
  store i32 %.195, i32* %20, align 4, !dbg !2022, !tbaa !1948
  br label %if.end84, !dbg !2024

if.end84:                                         ; preds = %if.then73, %if.end69
  %wbits = getelementptr inbounds i8* %child, i32 32, !dbg !2025
  %24 = bitcast i8* %wbits to i32*, !dbg !2025
  %25 = load i32* %24, align 4, !dbg !2025, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 750, i32 34, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2025
  %cmp90 = icmp eq i32 %25, -1, !dbg !2025
  br i1 %cmp90, label %if.then91, label %if.end107, !dbg !2025

if.then91:                                        ; preds = %if.end84
  %wbits92 = getelementptr inbounds i8* %parent, i32 32, !dbg !2026
  %26 = bitcast i8* %wbits92 to i32*, !dbg !2026
  %27 = load i32* %26, align 4, !dbg !2026, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 751, i32 49, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2026
  %cmp98 = icmp eq i32 %27, -1, !dbg !2026
  br i1 %cmp98, label %cond.end104, label %cond.false102, !dbg !2026

cond.false102:                                    ; preds = %if.then91
  %28 = load i32* %26, align 4, !dbg !2026, !tbaa !1948
  br label %cond.end104, !dbg !2026

cond.end104:                                      ; preds = %if.then91, %cond.false102
  %cond105 = phi i32 [ %28, %cond.false102 ], [ 15, %if.then91 ], !dbg !2026
  store i32 %cond105, i32* %24, align 4, !dbg !2026, !tbaa !1948
  br label %if.end107, !dbg !2028

if.end107:                                        ; preds = %cond.end104, %if.end84
  %memlevel = getelementptr inbounds i8* %child, i32 36, !dbg !2029
  %29 = bitcast i8* %memlevel to i32*, !dbg !2029
  %30 = load i32* %29, align 4, !dbg !2029, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 754, i32 37, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2029
  %cmp113 = icmp eq i32 %30, -1, !dbg !2029
  br i1 %cmp113, label %if.then114, label %if.end133, !dbg !2029

if.then114:                                       ; preds = %if.end107
  %memlevel115 = getelementptr inbounds i8* %parent, i32 36, !dbg !2030
  %31 = bitcast i8* %memlevel115 to i32*, !dbg !2030
  %32 = load i32* %31, align 4, !dbg !2030, !tbaa !1948
  tail call void @__ioc_report_conversion(i32 755, i32 55, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2030
  %cmp121 = icmp eq i32 %32, -1, !dbg !2030
  br i1 %cmp121, label %cond.end130, label %cond.false128, !dbg !2030

cond.false128:                                    ; preds = %if.then114
  %33 = load i32* %31, align 4, !dbg !2030, !tbaa !1948
  br label %cond.end130, !dbg !2030

cond.end130:                                      ; preds = %if.then114, %cond.false128
  %cond131 = phi i32 [ %33, %cond.false128 ], [ 8, %if.then114 ], !dbg !2030
  store i32 %cond131, i32* %29, align 4, !dbg !2030, !tbaa !1948
  br label %if.end133, !dbg !2032

if.end133:                                        ; preds = %cond.end130, %if.end107
  %min_length = getelementptr inbounds i8* %child, i32 40, !dbg !2033
  %34 = bitcast i8* %min_length to i32*, !dbg !2033
  %35 = load i32* %34, align 4, !dbg !2033, !tbaa !1948
  %cmp136 = icmp eq i32 %35, -1, !dbg !2033
  br i1 %cmp136, label %if.then137, label %if.end148, !dbg !2033

if.then137:                                       ; preds = %if.end133
  %min_length138 = getelementptr inbounds i8* %parent, i32 40, !dbg !2034
  %36 = bitcast i8* %min_length138 to i32*, !dbg !2034
  %37 = load i32* %36, align 4, !dbg !2034, !tbaa !1948
  %cmp141 = icmp eq i32 %37, -1, !dbg !2034
  %.196 = select i1 %cmp141, i32 20, i32 %37, !dbg !2034
  store i32 %.196, i32* %34, align 4, !dbg !2034, !tbaa !1948
  br label %if.end148, !dbg !2036

if.end148:                                        ; preds = %if.then137, %if.end133
  %types_keys = getelementptr inbounds i8* %child, i32 44, !dbg !2037
  %38 = bitcast i8* %types_keys to %struct.ngx_array_s**, !dbg !2037
  %types = getelementptr inbounds i8* %child, i32 8, !dbg !2037
  %39 = bitcast i8* %types to %struct.ngx_hash_t*, !dbg !2037
  %types_keys149 = getelementptr inbounds i8* %parent, i32 44, !dbg !2037
  %40 = bitcast i8* %types_keys149 to %struct.ngx_array_s**, !dbg !2037
  %types150 = getelementptr inbounds i8* %parent, i32 8, !dbg !2037
  %41 = bitcast i8* %types150 to %struct.ngx_hash_t*, !dbg !2037
  %call = tail call i8* @ngx_http_merge_types(%struct.ngx_conf_s* %cf, %struct.ngx_array_s** %38, %struct.ngx_hash_t* %39, %struct.ngx_array_s** %40, %struct.ngx_hash_t* %41, %struct.ngx_str_t* getelementptr inbounds ([0 x %struct.ngx_str_t]* @ngx_http_html_default_types, i32 0, i32 0)) nounwind, !dbg !2037
  %cmp151 = icmp eq i8* %call, null, !dbg !2037
  %retval.0 = select i1 %cmp151, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2037
  ret i8* %retval.0, !dbg !2038
}

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.trap() noreturn nounwind

declare i8* @ngx_http_merge_types(%struct.ngx_conf_s*, %struct.ngx_array_s**, %struct.ngx_hash_t*, %struct.ngx_array_s**, %struct.ngx_hash_t*, %struct.ngx_str_t*)

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

define internal i32 @ngx_http_gzip_header_filter(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1811), !dbg !2039
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2040, !tbaa !1948
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2040
  %1 = load i8*** %loc_conf, align 4, !dbg !2040, !tbaa !1976
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2040
  %2 = load i8** %arrayidx, align 4, !dbg !2040, !tbaa !1976
  %enable = bitcast i8* %2 to i32*, !dbg !2041
  %3 = load i32* %enable, align 4, !dbg !2041, !tbaa !1948
  %tobool = icmp eq i32 %3, 0, !dbg !2041
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2041

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 1, !dbg !2041
  %4 = load i32* %status, align 4, !dbg !2041, !tbaa !1948
  switch i32 %4, label %if.then [
    i32 200, label %lor.lhs.false12
    i32 403, label %lor.lhs.false12
    i32 404, label %lor.lhs.false12
  ], !dbg !2041

lor.lhs.false12:                                  ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %content_encoding = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 6, !dbg !2041
  %5 = load %struct.ngx_table_elt_t** %content_encoding, align 4, !dbg !2041, !tbaa !1976
  %tobool14 = icmp eq %struct.ngx_table_elt_t* %5, null, !dbg !2041
  br i1 %tobool14, label %lor.lhs.false19, label %land.lhs.true15, !dbg !2041

land.lhs.true15:                                  ; preds = %lor.lhs.false12
  %len = getelementptr inbounds %struct.ngx_table_elt_t* %5, i32 0, i32 2, i32 0, !dbg !2041
  %6 = load i32* %len, align 4, !dbg !2041, !tbaa !1948
  %tobool18 = icmp eq i32 %6, 0, !dbg !2041
  br i1 %tobool18, label %lor.lhs.false19, label %if.then, !dbg !2041

lor.lhs.false19:                                  ; preds = %land.lhs.true15, %lor.lhs.false12
  %content_length_n = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 22, !dbg !2041
  %7 = load i64* %content_length_n, align 4, !dbg !2041, !tbaa !2042
  %cmp23 = icmp eq i64 %7, -1, !dbg !2041
  br i1 %cmp23, label %lor.lhs.false31, label %land.lhs.true25, !dbg !2041

land.lhs.true25:                                  ; preds = %lor.lhs.false19
  %min_length = getelementptr inbounds i8* %2, i32 40, !dbg !2041
  %8 = bitcast i8* %min_length to i32*, !dbg !2041
  %9 = load i32* %8, align 4, !dbg !2041, !tbaa !1948
  %conv28 = sext i32 %9 to i64, !dbg !2041
  %cmp29 = icmp slt i64 %7, %conv28, !dbg !2041
  br i1 %cmp29, label %if.then, label %lor.lhs.false31, !dbg !2041

lor.lhs.false31:                                  ; preds = %lor.lhs.false19, %land.lhs.true25
  %types = getelementptr inbounds i8* %2, i32 8, !dbg !2041
  %10 = bitcast i8* %types to %struct.ngx_hash_t*, !dbg !2041
  %call = tail call i8* @ngx_http_test_content_type(%struct.ngx_http_request_s* %r, %struct.ngx_hash_t* %10) nounwind, !dbg !2041
  %cmp32 = icmp eq i8* %call, null, !dbg !2041
  br i1 %cmp32, label %if.then, label %lor.lhs.false34, !dbg !2041

lor.lhs.false34:                                  ; preds = %lor.lhs.false31
  %11 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 57, !dbg !2041
  %12 = bitcast i8* %11 to i32*, !dbg !2041
  %13 = load i32* %12, align 4, !dbg !2041
  %bf.clear = and i32 %13, 1, !dbg !2041
  %tobool37 = icmp eq i32 %bf.clear, 0, !dbg !2041
  br i1 %tobool37, label %cont40, label %if.then, !dbg !2041

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true15, %lor.lhs.false34, %entry, %lor.lhs.false31, %land.lhs.true25
  %14 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2043, !tbaa !1976
  %call38 = tail call i32 %14(%struct.ngx_http_request_s* %r) nounwind, !dbg !2043
  br label %return, !dbg !2043

cont40:                                           ; preds = %lor.lhs.false34
  %15 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 53, !dbg !2045
  %16 = bitcast i8* %15 to i32*, !dbg !2045
  %17 = load i32* %16, align 4, !dbg !2045
  %18 = or i32 %17, 8388608, !dbg !2045
  store i32 %18, i32* %16, align 4, !dbg !2045
  %bf.clear43 = and i32 %17, 2097152, !dbg !2046
  %tobool44 = icmp eq i32 %bf.clear43, 0, !dbg !2046
  br i1 %tobool44, label %if.then45, label %if.else, !dbg !2046

if.then45:                                        ; preds = %cont40
  %call46 = tail call i32 @ngx_http_gzip_ok(%struct.ngx_http_request_s* %r) nounwind, !dbg !2047
  %cmp47 = icmp eq i32 %call46, 0, !dbg !2047
  br i1 %cmp47, label %if.end58, label %if.then49, !dbg !2047

if.then49:                                        ; preds = %if.then45
  %19 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2049, !tbaa !1976
  %call50 = tail call i32 %19(%struct.ngx_http_request_s* %r) nounwind, !dbg !2049
  br label %return, !dbg !2049

if.else:                                          ; preds = %cont40
  %bf.clear53 = and i32 %17, 4194304, !dbg !2051
  %tobool54 = icmp eq i32 %bf.clear53, 0, !dbg !2051
  br i1 %tobool54, label %if.then55, label %if.end58, !dbg !2051

if.then55:                                        ; preds = %if.else
  %20 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2052, !tbaa !1976
  %call56 = tail call i32 %20(%struct.ngx_http_request_s* %r) nounwind, !dbg !2052
  br label %return, !dbg !2052

if.end58:                                         ; preds = %if.else, %if.then45
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2054
  %21 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2054, !tbaa !1976
  %call59 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %21, i32 136) nounwind, !dbg !2054
  %cmp60 = icmp eq i8* %call59, null, !dbg !2055
  br i1 %cmp60, label %return, label %if.end65, !dbg !2055

if.end65:                                         ; preds = %if.end58
  %22 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2056, !tbaa !1948
  %ctx66 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !2056
  %23 = load i8*** %ctx66, align 4, !dbg !2056, !tbaa !1976
  %arrayidx67 = getelementptr inbounds i8** %23, i32 %22, !dbg !2056
  store i8* %call59, i8** %arrayidx67, align 4, !dbg !2056, !tbaa !1976
  %request = getelementptr inbounds i8* %call59, i32 132, !dbg !2057
  %24 = bitcast i8* %request to %struct.ngx_http_request_s**, !dbg !2057
  store %struct.ngx_http_request_s* %r, %struct.ngx_http_request_s** %24, align 4, !dbg !2057, !tbaa !1976
  %postpone_gzipping = getelementptr inbounds i8* %2, i32 24, !dbg !2058
  %25 = bitcast i8* %postpone_gzipping to i32*, !dbg !2058
  %26 = load i32* %25, align 4, !dbg !2058, !tbaa !1948
  %cmp70 = icmp ne i32 %26, 0, !dbg !2058
  %conv71 = zext i1 %cmp70 to i32, !dbg !2058
  %bf.field.offs74 = getelementptr i8* %call59, i32 60, !dbg !2058
  %27 = bitcast i8* %bf.field.offs74 to i32*, !dbg !2058
  %28 = shl nuw nsw i32 %conv71, 8, !dbg !2058
  %29 = load i32* %27, align 4, !dbg !2058
  %30 = and i32 %29, -257, !dbg !2058
  %31 = or i32 %28, %30, !dbg !2058
  store i32 %31, i32* %27, align 4, !dbg !2058
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2059) nounwind, !dbg !2061
  %32 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2062, !tbaa !1948
  %33 = load i8*** %loc_conf, align 4, !dbg !2062, !tbaa !1976
  %arrayidx.i = getelementptr inbounds i8** %33, i32 %32, !dbg !2062
  %34 = load i8** %arrayidx.i, align 4, !dbg !2062, !tbaa !1976
  %wbits1.i = getelementptr inbounds i8* %34, i32 32, !dbg !2063
  %35 = bitcast i8* %wbits1.i to i32*, !dbg !2063
  %36 = load i32* %35, align 4, !dbg !2063, !tbaa !1948
  %37 = icmp sgt i32 %36, -1, !dbg !2063
  br i1 %37, label %cont.i, label %ioc_bb.i, !dbg !2063

ioc_bb.i:                                         ; preds = %if.end65
  %38 = zext i32 %36 to i64, !dbg !2063
  tail call void @__ioc_report_conversion(i32 280, i32 11, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %38, i8 0) nounwind, !dbg !2063
  br label %cont.i, !dbg !2063

cont.i:                                           ; preds = %ioc_bb.i, %if.end65
  tail call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !2064) nounwind, !dbg !2063
  %memlevel2.i = getelementptr inbounds i8* %34, i32 36, !dbg !2065
  %39 = bitcast i8* %memlevel2.i to i32*, !dbg !2065
  %40 = load i32* %39, align 4, !dbg !2065, !tbaa !1948
  %41 = icmp sgt i32 %40, -1, !dbg !2065
  br i1 %41, label %cont5.i, label %ioc_bb4.i, !dbg !2065

ioc_bb4.i:                                        ; preds = %cont.i
  %42 = zext i32 %40 to i64, !dbg !2065
  tail call void @__ioc_report_conversion(i32 281, i32 14, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i64 %42, i8 0) nounwind, !dbg !2065
  br label %cont5.i, !dbg !2065

cont5.i:                                          ; preds = %ioc_bb4.i, %cont.i
  tail call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !2066) nounwind, !dbg !2065
  %43 = load i64* %content_length_n, align 4, !dbg !2067, !tbaa !2042
  %cmp.i = icmp sgt i64 %43, 0, !dbg !2067
  br i1 %cmp.i, label %while.cond.i, label %if.end.i, !dbg !2067

while.cond.i:                                     ; preds = %cont5.i, %while.cond.backedge.i
  %44 = phi i64 [ %.pre.i, %while.cond.backedge.i ], [ %43, %cont5.i ], !dbg !2068
  %memlevel.0.i = phi i32 [ %60, %while.cond.backedge.i ], [ %40, %cont5.i ]
  %wbits.0.i = phi i32 [ %57, %while.cond.backedge.i ], [ %36, %cont5.i ]
  %45 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %wbits.0.i, i32 1) nounwind, !dbg !2068
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !2068
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !2068
  %48 = sext i32 %wbits.0.i to i64, !dbg !2068
  br i1 %47, label %ioc_bb8.i, label %cont9.i, !dbg !2068

ioc_bb8.i:                                        ; preds = %while.cond.i
  tail call void @__ioc_report_sub_overflow(i32 284, i32 60, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %48, i64 1, i8 13) nounwind, !dbg !2068
  br label %cont9.i, !dbg !2068

cont9.i:                                          ; preds = %ioc_bb8.i, %while.cond.i
  %49 = icmp ult i32 %46, 32, !dbg !2068
  %50 = sext i32 %46 to i64, !dbg !2068
  br i1 %49, label %cont11.i, label %ioc_bb10.i, !dbg !2068

ioc_bb10.i:                                       ; preds = %cont9.i
  tail call void @__ioc_report_shl_bitwidth(i32 284, i32 51, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 1, i64 %50, i8 13) nounwind, !dbg !2068
  br label %cont11.i, !dbg !2068

cont11.i:                                         ; preds = %ioc_bb10.i, %cont9.i
  %shl.zeros.i = sub nuw nsw i32 31, %46, !dbg !2068
  %shl.check.i = lshr i32 1, %shl.zeros.i, !dbg !2068
  %51 = icmp eq i32 %shl.check.i, 0, !dbg !2068
  br i1 %51, label %cont13.i, label %ioc_bb12.i, !dbg !2068

ioc_bb12.i:                                       ; preds = %cont11.i
  tail call void @__ioc_report_shl_strict(i32 284, i32 51, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 1, i64 %50, i8 13) nounwind, !dbg !2068
  br label %cont13.i, !dbg !2068

cont13.i:                                         ; preds = %ioc_bb12.i, %cont11.i
  %shl.i = shl i32 1, %46, !dbg !2068
  %52 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %shl.i, i32 262) nounwind, !dbg !2068
  %53 = extractvalue { i32, i1 } %52, 0, !dbg !2068
  %54 = extractvalue { i32, i1 } %52, 1, !dbg !2068
  br i1 %54, label %ioc_bb14.i, label %cont15.i, !dbg !2068

ioc_bb14.i:                                       ; preds = %cont13.i
  %55 = sext i32 %shl.i to i64, !dbg !2068
  tail call void @__ioc_report_sub_overflow(i32 284, i32 65, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %55, i64 262, i8 13) nounwind, !dbg !2068
  br label %cont15.i, !dbg !2068

cont15.i:                                         ; preds = %ioc_bb14.i, %cont13.i
  %conv.i = sext i32 %53 to i64, !dbg !2068
  %cmp16.i = icmp slt i64 %44, %conv.i, !dbg !2068
  br i1 %cmp16.i, label %while.body.i, label %if.end.i, !dbg !2068

while.body.i:                                     ; preds = %cont15.i
  %56 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %wbits.0.i, i32 -1) nounwind, !dbg !2070
  %57 = extractvalue { i32, i1 } %56, 0, !dbg !2070
  %58 = extractvalue { i32, i1 } %56, 1, !dbg !2070
  br i1 %58, label %ioc_bb18.i, label %cont19.i, !dbg !2070

ioc_bb18.i:                                       ; preds = %while.body.i
  tail call void @__ioc_report_add_overflow(i32 285, i32 12, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %48, i64 -1, i8 13) nounwind, !dbg !2070
  br label %cont19.i, !dbg !2070

cont19.i:                                         ; preds = %ioc_bb18.i, %while.body.i
  tail call void @llvm.dbg.value(metadata !{i32 %57}, i64 0, metadata !2064) nounwind, !dbg !2070
  %59 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memlevel.0.i, i32 -1) nounwind, !dbg !2072
  %60 = extractvalue { i32, i1 } %59, 0, !dbg !2072
  %61 = extractvalue { i32, i1 } %59, 1, !dbg !2072
  br i1 %61, label %ioc_bb20.i, label %while.cond.backedge.i, !dbg !2072

while.cond.backedge.i:                            ; preds = %cont19.i, %ioc_bb20.i
  %.pre.i = load i64* %content_length_n, align 4, !dbg !2068, !tbaa !2042
  br label %while.cond.i

ioc_bb20.i:                                       ; preds = %cont19.i
  %62 = sext i32 %memlevel.0.i to i64, !dbg !2072
  tail call void @__ioc_report_add_overflow(i32 286, i32 15, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %62, i64 -1, i8 13) nounwind, !dbg !2072
  br label %while.cond.backedge.i, !dbg !2072

if.end.i:                                         ; preds = %cont15.i, %cont5.i
  %memlevel.1.i = phi i32 [ %40, %cont5.i ], [ %memlevel.0.i, %cont15.i ]
  %wbits.1.i = phi i32 [ %36, %cont5.i ], [ %wbits.0.i, %cont15.i ]
  %wbits22.i = getelementptr inbounds i8* %call59, i32 52, !dbg !2073
  %63 = bitcast i8* %wbits22.i to i32*, !dbg !2073
  store i32 %wbits.1.i, i32* %63, align 4, !dbg !2073, !tbaa !1948
  %memlevel23.i = getelementptr inbounds i8* %call59, i32 56, !dbg !2074
  %64 = bitcast i8* %memlevel23.i to i32*, !dbg !2074
  store i32 %memlevel.1.i, i32* %64, align 4, !dbg !2074, !tbaa !1948
  %65 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %wbits.1.i, i32 2) nounwind, !dbg !2075
  %66 = extractvalue { i32, i1 } %65, 0, !dbg !2075
  %67 = extractvalue { i32, i1 } %65, 1, !dbg !2075
  br i1 %67, label %ioc_bb24.i, label %cont25.i, !dbg !2075

ioc_bb24.i:                                       ; preds = %if.end.i
  %68 = sext i32 %wbits.1.i to i64, !dbg !2075
  tail call void @__ioc_report_add_overflow(i32 302, i32 42, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %68, i64 2, i8 13) nounwind, !dbg !2075
  br label %cont25.i, !dbg !2075

cont25.i:                                         ; preds = %ioc_bb24.i, %if.end.i
  %69 = icmp ult i32 %66, 32, !dbg !2075
  %70 = sext i32 %66 to i64, !dbg !2075
  br i1 %69, label %cont27.i, label %ioc_bb26.i, !dbg !2075

ioc_bb26.i:                                       ; preds = %cont25.i
  tail call void @__ioc_report_shl_bitwidth(i32 302, i32 33, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 1, i64 %70, i8 13) nounwind, !dbg !2075
  br label %cont27.i, !dbg !2075

cont27.i:                                         ; preds = %ioc_bb26.i, %cont25.i
  %shl.zeros28.i = sub nuw nsw i32 31, %66, !dbg !2075
  %shl.check29.i = lshr i32 1, %shl.zeros28.i, !dbg !2075
  %71 = icmp eq i32 %shl.check29.i, 0, !dbg !2075
  br i1 %71, label %cont31.i, label %ioc_bb30.i, !dbg !2075

ioc_bb30.i:                                       ; preds = %cont27.i
  tail call void @__ioc_report_shl_strict(i32 302, i32 33, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 1, i64 %70, i8 13) nounwind, !dbg !2075
  br label %cont31.i, !dbg !2075

cont31.i:                                         ; preds = %ioc_bb30.i, %cont27.i
  %shl32.i = shl i32 1, %66, !dbg !2075
  %72 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %shl32.i, i32 8192) nounwind, !dbg !2075
  %73 = extractvalue { i32, i1 } %72, 0, !dbg !2075
  %74 = extractvalue { i32, i1 } %72, 1, !dbg !2075
  br i1 %74, label %ioc_bb33.i, label %cont34.i, !dbg !2075

ioc_bb33.i:                                       ; preds = %cont31.i
  %75 = sext i32 %shl32.i to i64, !dbg !2075
  tail call void @__ioc_report_add_overflow(i32 302, i32 28, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 8192, i64 %75, i8 13) nounwind, !dbg !2075
  br label %cont34.i, !dbg !2075

cont34.i:                                         ; preds = %ioc_bb33.i, %cont31.i
  %76 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memlevel.1.i, i32 9) nounwind, !dbg !2075
  %77 = extractvalue { i32, i1 } %76, 0, !dbg !2075
  %78 = extractvalue { i32, i1 } %76, 1, !dbg !2075
  br i1 %78, label %ioc_bb35.i, label %cont36.i, !dbg !2075

ioc_bb35.i:                                       ; preds = %cont34.i
  %79 = sext i32 %memlevel.1.i to i64, !dbg !2075
  tail call void @__ioc_report_add_overflow(i32 302, i32 64, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %79, i64 9, i8 13) nounwind, !dbg !2075
  br label %cont36.i, !dbg !2075

cont36.i:                                         ; preds = %ioc_bb35.i, %cont34.i
  %80 = icmp ult i32 %77, 32, !dbg !2075
  %81 = sext i32 %77 to i64, !dbg !2075
  br i1 %80, label %cont38.i, label %ioc_bb37.i, !dbg !2075

ioc_bb37.i:                                       ; preds = %cont36.i
  tail call void @__ioc_report_shl_bitwidth(i32 302, i32 52, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 1, i64 %81, i8 13) nounwind, !dbg !2075
  br label %cont38.i, !dbg !2075

cont38.i:                                         ; preds = %ioc_bb37.i, %cont36.i
  %shl.zeros39.i = sub nuw nsw i32 31, %77, !dbg !2075
  %shl.check40.i = lshr i32 1, %shl.zeros39.i, !dbg !2075
  %82 = icmp eq i32 %shl.check40.i, 0, !dbg !2075
  br i1 %82, label %cont42.i, label %ioc_bb41.i, !dbg !2075

ioc_bb41.i:                                       ; preds = %cont38.i
  tail call void @__ioc_report_shl_strict(i32 302, i32 52, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 1, i64 %81, i8 13) nounwind, !dbg !2075
  br label %cont42.i, !dbg !2075

cont42.i:                                         ; preds = %ioc_bb41.i, %cont38.i
  %shl43.i = shl i32 1, %77, !dbg !2075
  %83 = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %73, i32 %shl43.i) nounwind, !dbg !2075
  %84 = extractvalue { i32, i1 } %83, 0, !dbg !2075
  %85 = extractvalue { i32, i1 } %83, 1, !dbg !2075
  br i1 %85, label %ioc_bb44.i, label %cont45.i, !dbg !2075

ioc_bb44.i:                                       ; preds = %cont42.i
  %86 = sext i32 %shl43.i to i64, !dbg !2075
  %87 = sext i32 %73 to i64, !dbg !2075
  tail call void @__ioc_report_add_overflow(i32 302, i32 47, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %87, i64 %86, i8 13) nounwind, !dbg !2075
  br label %cont45.i, !dbg !2075

cont45.i:                                         ; preds = %ioc_bb44.i, %cont42.i
  %88 = icmp sgt i32 %84, -1, !dbg !2075
  br i1 %88, label %ngx_http_gzip_filter_memory.exit, label %ioc_bb46.i, !dbg !2075

ioc_bb46.i:                                       ; preds = %cont45.i
  %89 = sext i32 %84 to i64, !dbg !2075
  tail call void @__ioc_report_conversion(i32 302, i32 22, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %89, i8 1) nounwind, !dbg !2075
  br label %ngx_http_gzip_filter_memory.exit, !dbg !2075

ngx_http_gzip_filter_memory.exit:                 ; preds = %cont45.i, %ioc_bb46.i
  %allocated.i = getelementptr inbounds i8* %call59, i32 48, !dbg !2075
  %90 = bitcast i8* %allocated.i to i32*, !dbg !2075
  store i32 %84, i32* %90, align 4, !dbg !2075, !tbaa !1948
  %headers = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 0, !dbg !2076
  %call76 = tail call i8* @ngx_list_push(%struct.ngx_list_t* %headers) nounwind, !dbg !2076
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t* %91}, i64 0, metadata !1812), !dbg !2076
  %cmp77 = icmp eq i8* %call76, null, !dbg !2077
  br i1 %cmp77, label %return, label %cont84, !dbg !2077

cont84:                                           ; preds = %ngx_http_gzip_filter_memory.exit
  %91 = bitcast i8* %call76 to %struct.ngx_table_elt_t*, !dbg !2076
  %hash = bitcast i8* %call76 to i32*, !dbg !2078
  store i32 1, i32* %hash, align 4, !dbg !2078, !tbaa !1948
  %key = getelementptr inbounds i8* %call76, i32 4, !dbg !2079
  %len89 = bitcast i8* %key to i32*, !dbg !2079
  store i32 16, i32* %len89, align 4, !dbg !2079, !tbaa !1948
  %data = getelementptr inbounds i8* %call76, i32 8, !dbg !2080
  %92 = bitcast i8* %data to i8**, !dbg !2080
  store i8* getelementptr inbounds ([17 x i8]* @.str16, i32 0, i32 0), i8** %92, align 4, !dbg !2080, !tbaa !1976
  %value95 = getelementptr inbounds i8* %call76, i32 12, !dbg !2081
  %len96 = bitcast i8* %value95 to i32*, !dbg !2081
  store i32 4, i32* %len96, align 4, !dbg !2081, !tbaa !1948
  %data98 = getelementptr inbounds i8* %call76, i32 16, !dbg !2082
  %93 = bitcast i8* %data98 to i8**, !dbg !2082
  store i8* getelementptr inbounds ([5 x i8]* @.str, i32 0, i32 0), i8** %93, align 4, !dbg !2082, !tbaa !1976
  store %struct.ngx_table_elt_t* %91, %struct.ngx_table_elt_t** %content_encoding, align 4, !dbg !2083, !tbaa !1976
  %94 = load i32* %12, align 4, !dbg !2084
  %95 = or i32 %94, 1048576, !dbg !2084
  store i32 %95, i32* %12, align 4, !dbg !2084
  store i64 -1, i64* %content_length_n, align 4, !dbg !2085, !tbaa !2042
  %content_length = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 5, !dbg !2086
  %96 = load %struct.ngx_table_elt_t** %content_length, align 4, !dbg !2086, !tbaa !1976
  %tobool110 = icmp eq %struct.ngx_table_elt_t* %96, null, !dbg !2086
  br i1 %tobool110, label %cont121, label %cont113, !dbg !2086

cont113:                                          ; preds = %cont84
  %hash116 = getelementptr inbounds %struct.ngx_table_elt_t* %96, i32 0, i32 0, !dbg !2087
  store i32 0, i32* %hash116, align 4, !dbg !2087, !tbaa !1948
  store %struct.ngx_table_elt_t* null, %struct.ngx_table_elt_t** %content_length, align 4, !dbg !2089, !tbaa !1976
  %.pre = load i32* %12, align 4, !dbg !2090
  br label %cont121, !dbg !2091

cont121:                                          ; preds = %cont113, %cont84
  %97 = phi i32 [ %.pre, %cont113 ], [ %95, %cont84 ]
  %98 = and i32 %97, -8388609, !dbg !2090
  store i32 %98, i32* %12, align 4, !dbg !2090
  %accept_ranges = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 11, !dbg !2092
  %99 = load %struct.ngx_table_elt_t** %accept_ranges, align 4, !dbg !2092, !tbaa !1976
  %tobool124 = icmp eq %struct.ngx_table_elt_t* %99, null, !dbg !2092
  br i1 %tobool124, label %if.end133, label %cont127, !dbg !2092

cont127:                                          ; preds = %cont121
  %hash130 = getelementptr inbounds %struct.ngx_table_elt_t* %99, i32 0, i32 0, !dbg !2093
  store i32 0, i32* %hash130, align 4, !dbg !2093, !tbaa !1948
  store %struct.ngx_table_elt_t* null, %struct.ngx_table_elt_t** %accept_ranges, align 4, !dbg !2095, !tbaa !1976
  br label %if.end133, !dbg !2096

if.end133:                                        ; preds = %cont121, %cont127
  %100 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2097, !tbaa !1976
  %call134 = tail call i32 %100(%struct.ngx_http_request_s* %r) nounwind, !dbg !2097
  br label %return, !dbg !2097

return:                                           ; preds = %ngx_http_gzip_filter_memory.exit, %if.end58, %if.end133, %if.then55, %if.then49, %if.then
  %retval.0 = phi i32 [ %call38, %if.then ], [ %call134, %if.end133 ], [ %call56, %if.then55 ], [ %call50, %if.then49 ], [ -1, %if.end58 ], [ -1, %ngx_http_gzip_filter_memory.exit ]
  ret i32 %retval.0, !dbg !2098
}

define internal i32 @ngx_http_gzip_body_filter(%struct.ngx_http_request_s* %r, %struct.ngx_chain_s* %in) nounwind {
entry:
  %cl = alloca %struct.ngx_chain_s*, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1635), !dbg !2099
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %in}, i64 0, metadata !1636), !dbg !2099
  call void @llvm.dbg.declare(metadata !{%struct.ngx_chain_s** %cl}, metadata !1639), !dbg !2100
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2101, !tbaa !1948
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !2101
  %1 = load i8*** %ctx1, align 4, !dbg !2101, !tbaa !1976
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2101
  %2 = load i8** %arrayidx, align 4, !dbg !2101, !tbaa !1976
  %cmp = icmp eq i8* %2, null, !dbg !2102
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2102

lor.lhs.false:                                    ; preds = %entry
  %bf.field.offs = getelementptr i8* %2, i32 60, !dbg !2102
  %3 = bitcast i8* %bf.field.offs to i32*, !dbg !2102
  %4 = load i32* %3, align 4, !dbg !2102
  %bf.clear = and i32 %4, 32, !dbg !2102
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2102
  br i1 %tobool, label %if.end, label %if.then, !dbg !2102

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_next_body_filter, align 4, !dbg !2103, !tbaa !1976
  %call = call i32 %5(%struct.ngx_http_request_s* %r, %struct.ngx_chain_s* %in) nounwind, !dbg !2103
  br label %return, !dbg !2103

if.end:                                           ; preds = %lor.lhs.false
  %bf.clear3 = and i32 %4, 256, !dbg !2105
  %tobool4 = icmp eq i32 %bf.clear3, 0, !dbg !2105
  br i1 %tobool4, label %if.end14, label %if.then5, !dbg !2105

if.then5:                                         ; preds = %if.end
  %tobool6 = icmp eq %struct.ngx_chain_s* %in, null, !dbg !2106
  br i1 %tobool6, label %cont11, label %if.then7, !dbg !2106

if.then7:                                         ; preds = %if.then5
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %in}, i64 0, metadata !2108) nounwind, !dbg !2111
  %request.i = getelementptr inbounds i8* %2, i32 132, !dbg !2112
  %6 = bitcast i8* %request.i to %struct.ngx_http_request_s**, !dbg !2112
  %7 = load %struct.ngx_http_request_s** %6, align 4, !dbg !2112, !tbaa !1976
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %7}, i64 0, metadata !2113) nounwind, !dbg !2112
  %connection.i = getelementptr inbounds %struct.ngx_http_request_s* %7, i32 0, i32 1, !dbg !2114
  %8 = load %struct.ngx_connection_s** %connection.i, align 4, !dbg !2114, !tbaa !1976
  %9 = getelementptr %struct.ngx_connection_s* %8, i32 0, i32 20, !dbg !2114
  %10 = bitcast i8* %9 to i32*, !dbg !2114
  %11 = load i32* %10, align 4, !dbg !2114
  %12 = or i32 %11, 32, !dbg !2114
  store i32 %12, i32* %10, align 4, !dbg !2114
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2115) nounwind, !dbg !2116
  %in2.i = bitcast i8* %2 to %struct.ngx_chain_s**, !dbg !2117
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s** %in2.i}, i64 0, metadata !2118) nounwind, !dbg !2117
  %cl.0125.i = load %struct.ngx_chain_s** %in2.i, align 4, !dbg !2119
  %tobool126.i = icmp eq %struct.ngx_chain_s* %cl.0125.i, null, !dbg !2119
  br i1 %tobool126.i, label %while.body.lr.ph.i, label %for.body.i, !dbg !2119

for.body.i:                                       ; preds = %if.then7, %cont9.i
  %cl.0128.i = phi %struct.ngx_chain_s* [ %cl.0.i, %cont9.i ], [ %cl.0125.i, %if.then7 ]
  %buffered.0127.i = phi i32 [ %19, %cont9.i ], [ 0, %if.then7 ]
  %buf4.i = getelementptr inbounds %struct.ngx_chain_s* %cl.0128.i, i32 0, i32 0, !dbg !2121
  %13 = load %struct.ngx_buf_s** %buf4.i, align 4, !dbg !2121, !tbaa !1976
  %last.i = getelementptr inbounds %struct.ngx_buf_s* %13, i32 0, i32 1, !dbg !2121
  %14 = load i8** %last.i, align 4, !dbg !2121, !tbaa !1976
  %pos.i = getelementptr inbounds %struct.ngx_buf_s* %13, i32 0, i32 0, !dbg !2121
  %15 = load i8** %pos.i, align 4, !dbg !2121, !tbaa !1976
  %sub.ptr.lhs.cast.i = ptrtoint i8* %14 to i32, !dbg !2121
  %sub.ptr.rhs.cast.i = ptrtoint i8* %15 to i32, !dbg !2121
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !2121
  %16 = icmp sgt i32 %sub.ptr.sub.i, -1, !dbg !2121
  br i1 %16, label %cont7.i, label %ioc_bb6.i, !dbg !2121

ioc_bb6.i:                                        ; preds = %for.body.i
  %17 = sext i32 %sub.ptr.sub.i to i64, !dbg !2121
  call void @__ioc_report_conversion(i32 320, i32 17, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %17, i8 1) nounwind, !dbg !2121
  br label %cont7.i, !dbg !2121

cont7.i:                                          ; preds = %ioc_bb6.i, %for.body.i
  %18 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %buffered.0127.i, i32 %sub.ptr.sub.i) nounwind, !dbg !2121
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !2121
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !2121
  br i1 %20, label %ioc_bb8.i, label %cont9.i, !dbg !2121

ioc_bb8.i:                                        ; preds = %cont7.i
  %21 = zext i32 %sub.ptr.sub.i to i64, !dbg !2121
  %22 = zext i32 %buffered.0127.i to i64, !dbg !2121
  call void @__ioc_report_add_overflow(i32 320, i32 14, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %22, i64 %21, i8 5) nounwind, !dbg !2121
  br label %cont9.i, !dbg !2121

cont9.i:                                          ; preds = %ioc_bb8.i, %cont7.i
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !2115) nounwind, !dbg !2121
  %next.i = getelementptr inbounds %struct.ngx_chain_s* %cl.0128.i, i32 0, i32 1, !dbg !2123
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s** %next.i}, i64 0, metadata !2118) nounwind, !dbg !2123
  %cl.0.i = load %struct.ngx_chain_s** %next.i, align 4, !dbg !2119
  %tobool.i = icmp eq %struct.ngx_chain_s* %cl.0.i, null, !dbg !2119
  br i1 %tobool.i, label %while.body.lr.ph.i, label %for.body.i, !dbg !2119

while.body.lr.ph.i:                               ; preds = %cont9.i, %if.then7
  %buffered.0.lcssa.i302 = phi i32 [ 0, %if.then7 ], [ %19, %cont9.i ]
  %cl.0.in.lcssa.i301 = phi %struct.ngx_chain_s** [ %in2.i, %if.then7 ], [ %next.i, %cont9.i ]
  %loc_conf.i = getelementptr inbounds %struct.ngx_http_request_s* %7, i32 0, i32 5, !dbg !2124
  %23 = load i8*** %loc_conf.i, align 4, !dbg !2124, !tbaa !1976
  %24 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2124, !tbaa !1948
  %arrayidx.i = getelementptr inbounds i8** %23, i32 %24, !dbg !2124
  %25 = load i8** %arrayidx.i, align 4, !dbg !2124, !tbaa !1976
  %pool.i = getelementptr inbounds %struct.ngx_http_request_s* %7, i32 0, i32 11, !dbg !2125
  %postpone_gzipping.i = getelementptr inbounds i8* %25, i32 24, !dbg !2127
  %26 = bitcast i8* %postpone_gzipping.i to i32*, !dbg !2127
  br label %while.body.i, !dbg !2128

while.body.i:                                     ; preds = %if.end69.i, %while.body.lr.ph.i
  %in.addr.0124.i = phi %struct.ngx_chain_s* [ %in, %while.body.lr.ph.i ], [ %57, %if.end69.i ]
  %ll.1123.i = phi %struct.ngx_chain_s** [ %cl.0.in.lcssa.i301, %while.body.lr.ph.i ], [ %next70.i, %if.end69.i ]
  %buffered.1122.i = phi i32 [ %buffered.0.lcssa.i302, %while.body.lr.ph.i ], [ %34, %if.end69.i ]
  %27 = load %struct.ngx_pool_s** %pool.i, align 4, !dbg !2125, !tbaa !1976
  %call.i = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %27) nounwind, !dbg !2125
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call.i}, i64 0, metadata !2129) nounwind, !dbg !2125
  %cmp.i = icmp eq %struct.ngx_chain_s* %call.i, null, !dbg !2130
  br i1 %cmp.i, label %cont114.loopexit311, label %if.end.i, !dbg !2130

if.end.i:                                         ; preds = %while.body.i
  %buf14.i = getelementptr inbounds %struct.ngx_chain_s* %in.addr.0124.i, i32 0, i32 0, !dbg !2131
  %28 = load %struct.ngx_buf_s** %buf14.i, align 4, !dbg !2131, !tbaa !1976
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %28}, i64 0, metadata !2132) nounwind, !dbg !2131
  %last15.i = getelementptr inbounds %struct.ngx_buf_s* %28, i32 0, i32 1, !dbg !2133
  %29 = load i8** %last15.i, align 4, !dbg !2133, !tbaa !1976
  %pos16.i = getelementptr inbounds %struct.ngx_buf_s* %28, i32 0, i32 0, !dbg !2133
  %30 = load i8** %pos16.i, align 4, !dbg !2133, !tbaa !1976
  %sub.ptr.lhs.cast17.i = ptrtoint i8* %29 to i32, !dbg !2133
  %sub.ptr.rhs.cast18.i = ptrtoint i8* %30 to i32, !dbg !2133
  %sub.ptr.sub19.i = sub i32 %sub.ptr.lhs.cast17.i, %sub.ptr.rhs.cast18.i, !dbg !2133
  %31 = icmp sgt i32 %sub.ptr.sub19.i, -1, !dbg !2133
  br i1 %31, label %cont22.i, label %ioc_bb21.i, !dbg !2133

ioc_bb21.i:                                       ; preds = %if.end.i
  %32 = sext i32 %sub.ptr.sub19.i to i64, !dbg !2133
  call void @__ioc_report_conversion(i32 330, i32 12, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %32, i8 1) nounwind, !dbg !2133
  br label %cont22.i, !dbg !2133

cont22.i:                                         ; preds = %ioc_bb21.i, %if.end.i
  call void @llvm.dbg.value(metadata !{i32 %sub.ptr.sub19.i}, i64 0, metadata !2134) nounwind, !dbg !2133
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %buffered.1122.i, i32 %sub.ptr.sub19.i) nounwind, !dbg !2135
  %34 = extractvalue { i32, i1 } %33, 0, !dbg !2135
  %35 = extractvalue { i32, i1 } %33, 1, !dbg !2135
  br i1 %35, label %ioc_bb23.i, label %cont24.i, !dbg !2135

ioc_bb23.i:                                       ; preds = %cont22.i
  %36 = zext i32 %sub.ptr.sub19.i to i64, !dbg !2135
  %37 = zext i32 %buffered.1122.i to i64, !dbg !2135
  call void @__ioc_report_add_overflow(i32 331, i32 14, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %37, i64 %36, i8 5) nounwind, !dbg !2135
  br label %cont24.i, !dbg !2135

cont24.i:                                         ; preds = %ioc_bb23.i, %cont22.i
  call void @llvm.dbg.value(metadata !{i32 %34}, i64 0, metadata !2115) nounwind, !dbg !2135
  %38 = getelementptr %struct.ngx_buf_s* %28, i32 0, i32 9, !dbg !2127
  %39 = bitcast i8* %38 to i32*, !dbg !2127
  %40 = load i32* %39, align 4, !dbg !2127
  %41 = and i32 %40, 160, !dbg !2127
  %42 = icmp eq i32 %41, 0, !dbg !2127
  br i1 %42, label %lor.lhs.false36.i, label %cont40.i, !dbg !2127

lor.lhs.false36.i:                                ; preds = %cont24.i
  %43 = load i32* %26, align 4, !dbg !2127, !tbaa !1948
  %cmp37.i = icmp ugt i32 %34, %43, !dbg !2127
  br i1 %cmp37.i, label %cont40.i, label %lor.lhs.false36.cont47_crit_edge.i, !dbg !2127

lor.lhs.false36.cont47_crit_edge.i:               ; preds = %lor.lhs.false36.i
  %.pre.i = load i32* %3, align 4, !dbg !2136
  br label %cont47.i, !dbg !2127

cont40.i:                                         ; preds = %lor.lhs.false36.i, %cont24.i
  %44 = load i32* %3, align 4, !dbg !2137
  %45 = and i32 %44, -257, !dbg !2137
  store i32 %45, i32* %3, align 4, !dbg !2137
  br label %cont47.i, !dbg !2139

cont47.i:                                         ; preds = %cont40.i, %lor.lhs.false36.cont47_crit_edge.i
  %46 = phi i32 [ %.pre.i, %lor.lhs.false36.cont47_crit_edge.i ], [ %45, %cont40.i ]
  %bf.clear44.i = and i32 %46, 256, !dbg !2136
  %tobool48.i = icmp eq i32 %bf.clear44.i, 0, !dbg !2136
  %tobool49.i = icmp eq i8* %29, %30, !dbg !2136
  %or.cond.i = or i1 %tobool48.i, %tobool49.i, !dbg !2136
  br i1 %or.cond.i, label %if.else.i, label %if.then50.i, !dbg !2136

if.then50.i:                                      ; preds = %cont47.i
  %47 = load %struct.ngx_pool_s** %pool.i, align 4, !dbg !2140, !tbaa !1976
  %call52.i = call %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s* %47, i32 %sub.ptr.sub19.i) nounwind, !dbg !2140
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %call52.i}, i64 0, metadata !2142) nounwind, !dbg !2140
  %cmp53.i = icmp eq %struct.ngx_buf_s* %call52.i, null, !dbg !2143
  br i1 %cmp53.i, label %cont114.loopexit311, label %if.end57.i, !dbg !2143

if.end57.i:                                       ; preds = %if.then50.i
  %pos58.i = getelementptr inbounds %struct.ngx_buf_s* %call52.i, i32 0, i32 0, !dbg !2144
  %48 = load i8** %pos58.i, align 4, !dbg !2144, !tbaa !1976
  %49 = load i8** %pos16.i, align 4, !dbg !2144, !tbaa !1976
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 %sub.ptr.sub19.i, i32 1, i1 false) nounwind, !dbg !2144
  %add.ptr.i = getelementptr inbounds i8* %48, i32 %sub.ptr.sub19.i, !dbg !2144
  %last60.i = getelementptr inbounds %struct.ngx_buf_s* %call52.i, i32 0, i32 1, !dbg !2144
  store i8* %add.ptr.i, i8** %last60.i, align 4, !dbg !2144, !tbaa !1976
  %50 = load i8** %last15.i, align 4, !dbg !2145, !tbaa !1976
  store i8* %50, i8** %pos16.i, align 4, !dbg !2145, !tbaa !1976
  %51 = load i32* %39, align 4, !dbg !2146
  %bf.clear64.i = and i32 %51, 128, !dbg !2146
  %52 = getelementptr %struct.ngx_buf_s* %call52.i, i32 0, i32 9, !dbg !2146
  %53 = bitcast i8* %52 to i32*, !dbg !2146
  %54 = load i32* %53, align 4, !dbg !2146
  %55 = and i32 %54, -129, !dbg !2146
  %56 = or i32 %55, %bf.clear64.i, !dbg !2146
  store i32 %56, i32* %53, align 4, !dbg !2146
  %tag.i = getelementptr inbounds %struct.ngx_buf_s* %call52.i, i32 0, i32 6, !dbg !2147
  store i8* bitcast (%struct.ngx_module_s* @ngx_http_gzip_filter_module to i8*), i8** %tag.i, align 4, !dbg !2147, !tbaa !1976
  %buf67.i = getelementptr inbounds %struct.ngx_chain_s* %call.i, i32 0, i32 0, !dbg !2148
  store %struct.ngx_buf_s* %call52.i, %struct.ngx_buf_s** %buf67.i, align 4, !dbg !2148, !tbaa !1976
  br label %if.end69.i, !dbg !2149

if.else.i:                                        ; preds = %cont47.i
  %buf68.i = getelementptr inbounds %struct.ngx_chain_s* %call.i, i32 0, i32 0, !dbg !2150
  store %struct.ngx_buf_s* %28, %struct.ngx_buf_s** %buf68.i, align 4, !dbg !2150, !tbaa !1976
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else.i, %if.end57.i
  store %struct.ngx_chain_s* %call.i, %struct.ngx_chain_s** %ll.1123.i, align 4, !dbg !2152, !tbaa !1976
  %next70.i = getelementptr inbounds %struct.ngx_chain_s* %call.i, i32 0, i32 1, !dbg !2153
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s** %next70.i}, i64 0, metadata !2118) nounwind, !dbg !2153
  %next71.i = getelementptr inbounds %struct.ngx_chain_s* %in.addr.0124.i, i32 0, i32 1, !dbg !2154
  %57 = load %struct.ngx_chain_s** %next71.i, align 4, !dbg !2154, !tbaa !1976
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %57}, i64 0, metadata !2108) nounwind, !dbg !2154
  %tobool11.i = icmp eq %struct.ngx_chain_s* %57, null, !dbg !2128
  br i1 %tobool11.i, label %ngx_http_gzip_filter_buffer.exit, label %while.body.i, !dbg !2128

ngx_http_gzip_filter_buffer.exit:                 ; preds = %if.end69.i
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next70.i, align 4, !dbg !2155, !tbaa !1976
  %58 = load i32* %3, align 4, !dbg !2156
  %bf.clear73.i = and i32 %58, 256, !dbg !2156
  %tobool77.i = icmp eq i32 %bf.clear73.i, 0, !dbg !2156
  br i1 %tobool77.i, label %if.end14, label %return, !dbg !2109

cont11:                                           ; preds = %if.then5
  %59 = and i32 %4, -257, !dbg !2157
  store i32 %59, i32* %3, align 4, !dbg !2157
  br label %if.end14

if.end14:                                         ; preds = %ngx_http_gzip_filter_buffer.exit, %if.end, %cont11
  %60 = phi i32 [ %59, %cont11 ], [ %4, %if.end ], [ %58, %ngx_http_gzip_filter_buffer.exit ]
  %in.addr.0 = phi %struct.ngx_chain_s* [ null, %cont11 ], [ %in, %if.end ], [ null, %ngx_http_gzip_filter_buffer.exit ]
  %preallocated = getelementptr inbounds i8* %2, i32 40, !dbg !2159
  %61 = bitcast i8* %preallocated to i8**, !dbg !2159
  %62 = load i8** %61, align 4, !dbg !2159, !tbaa !1976
  %cmp15 = icmp eq i8* %62, null, !dbg !2159
  br i1 %cmp15, label %if.then16, label %if.end21, !dbg !2159

if.then16:                                        ; preds = %if.end14
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2160) nounwind, !dbg !2163
  %63 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2164, !tbaa !1948
  %loc_conf.i185 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2164
  %64 = load i8*** %loc_conf.i185, align 4, !dbg !2164, !tbaa !1976
  %arrayidx.i186 = getelementptr inbounds i8** %64, i32 %63, !dbg !2164
  %65 = load i8** %arrayidx.i186, align 4, !dbg !2164, !tbaa !1976
  %pool.i187 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2165
  %66 = load %struct.ngx_pool_s** %pool.i187, align 4, !dbg !2165, !tbaa !1976
  %allocated.i = getelementptr inbounds i8* %2, i32 48, !dbg !2165
  %67 = bitcast i8* %allocated.i to i32*, !dbg !2165
  %68 = load i32* %67, align 4, !dbg !2165, !tbaa !1948
  %call.i188 = call i8* @ngx_palloc(%struct.ngx_pool_s* %66, i32 %68) nounwind, !dbg !2165
  store i8* %call.i188, i8** %61, align 4, !dbg !2165, !tbaa !1976
  %cmp.i189 = icmp eq i8* %call.i188, null, !dbg !2166
  br i1 %cmp.i189, label %cont114, label %if.end.i190, !dbg !2166

if.end.i190:                                      ; preds = %if.then16
  %free_mem.i = getelementptr inbounds i8* %2, i32 44, !dbg !2167
  %69 = bitcast i8* %free_mem.i to i8**, !dbg !2167
  store i8* %call.i188, i8** %69, align 4, !dbg !2167, !tbaa !1976
  %zstream.i = getelementptr inbounds i8* %2, i32 76, !dbg !2168
  %70 = bitcast i8* %zstream.i to %struct.z_stream_s*, !dbg !2168
  %zalloc.i = getelementptr inbounds i8* %2, i32 108, !dbg !2168
  %71 = bitcast i8* %zalloc.i to i8* (i8*, i32, i32)**, !dbg !2168
  store i8* (i8*, i32, i32)* @ngx_http_gzip_filter_alloc, i8* (i8*, i32, i32)** %71, align 4, !dbg !2168, !tbaa !1976
  %zfree.i = getelementptr inbounds i8* %2, i32 112, !dbg !2169
  %72 = bitcast i8* %zfree.i to void (i8*, i8*)**, !dbg !2169
  store void (i8*, i8*)* @ngx_http_gzip_filter_free, void (i8*, i8*)** %72, align 4, !dbg !2169, !tbaa !1976
  %opaque.i = getelementptr inbounds i8* %2, i32 116, !dbg !2170
  %73 = bitcast i8* %opaque.i to i8**, !dbg !2170
  store i8* %2, i8** %73, align 4, !dbg !2170, !tbaa !1976
  %level.i = getelementptr inbounds i8* %65, i32 28, !dbg !2171
  %74 = bitcast i8* %level.i to i32*, !dbg !2171
  %75 = load i32* %74, align 4, !dbg !2171, !tbaa !1948
  %wbits.i = getelementptr inbounds i8* %2, i32 52, !dbg !2171
  %76 = bitcast i8* %wbits.i to i32*, !dbg !2171
  %77 = load i32* %76, align 4, !dbg !2171, !tbaa !1948
  %78 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %77) nounwind, !dbg !2171
  %79 = extractvalue { i32, i1 } %78, 0, !dbg !2171
  %80 = extractvalue { i32, i1 } %78, 1, !dbg !2171
  br i1 %80, label %ioc_bb6.i191, label %cont9.i192, !dbg !2171

ioc_bb6.i191:                                     ; preds = %if.end.i190
  %81 = sext i32 %77 to i64, !dbg !2171
  call void @__ioc_report_sub_overflow(i32 370, i32 64, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i64 0, i64 %81, i8 13) nounwind, !dbg !2171
  br label %cont9.i192, !dbg !2171

cont9.i192:                                       ; preds = %ioc_bb6.i191, %if.end.i190
  %memlevel.i = getelementptr inbounds i8* %2, i32 56, !dbg !2171
  %82 = bitcast i8* %memlevel.i to i32*, !dbg !2171
  %83 = load i32* %82, align 4, !dbg !2171, !tbaa !1948
  %call10.i = call i32 @deflateInit2_(%struct.z_stream_s* %70, i32 %75, i32 8, i32 %79, i32 %83, i32 0, i8* getelementptr inbounds ([6 x i8]* @.str13, i32 0, i32 0), i32 56) nounwind, !dbg !2171
  call void @llvm.dbg.value(metadata !{i32 %call10.i}, i64 0, metadata !2172) nounwind, !dbg !2171
  %cmp11.i = icmp eq i32 %call10.i, 0, !dbg !2173
  br i1 %cmp11.i, label %ngx_http_gzip_filter_deflate_start.exit, label %if.then12.i, !dbg !2173

if.then12.i:                                      ; preds = %cont9.i192
  %connection.i193 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2174
  %84 = load %struct.ngx_connection_s** %connection.i193, align 4, !dbg !2174, !tbaa !1976
  %log.i = getelementptr inbounds %struct.ngx_connection_s* %84, i32 0, i32 10, !dbg !2174
  %85 = load %struct.ngx_log_s** %log.i, align 4, !dbg !2174, !tbaa !1976
  %log_level.i = getelementptr inbounds %struct.ngx_log_s* %85, i32 0, i32 0, !dbg !2174
  %86 = load i32* %log_level.i, align 4, !dbg !2174, !tbaa !1948
  %cmp15.i = icmp ugt i32 %86, 1, !dbg !2174
  br i1 %cmp15.i, label %cont18.i, label %cont114, !dbg !2174

cont18.i:                                         ; preds = %if.then12.i
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %85, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str14, i32 0, i32 0), i32 %call10.i) nounwind, !dbg !2176
  br label %cont114, !dbg !2176

ngx_http_gzip_filter_deflate_start.exit:          ; preds = %cont9.i192
  %out.i = getelementptr inbounds i8* %2, i32 12, !dbg !2177
  %87 = bitcast i8* %out.i to %struct.ngx_chain_s**, !dbg !2177
  %last_out.i = getelementptr inbounds i8* %2, i32 16, !dbg !2177
  %88 = bitcast i8* %last_out.i to %struct.ngx_chain_s***, !dbg !2177
  store %struct.ngx_chain_s** %87, %struct.ngx_chain_s*** %88, align 4, !dbg !2177, !tbaa !1976
  %call29.i = call i32 @crc32(i32 0, i8* null, i32 0) nounwind, !dbg !2178
  %crc32.i = getelementptr inbounds i8* %2, i32 72, !dbg !2178
  %89 = bitcast i8* %crc32.i to i32*, !dbg !2178
  store i32 %call29.i, i32* %89, align 4, !dbg !2178, !tbaa !1948
  %90 = load i32* %3, align 4, !dbg !2179
  %91 = and i32 %90, -16, !dbg !2179
  store i32 %91, i32* %3, align 4, !dbg !2179
  br label %if.end21, !dbg !2161

if.end21:                                         ; preds = %ngx_http_gzip_filter_deflate_start.exit, %if.end14
  %92 = phi i32 [ %91, %ngx_http_gzip_filter_deflate_start.exit ], [ %60, %if.end14 ]
  %tobool22 = icmp eq %struct.ngx_chain_s* %in.addr.0, null, !dbg !2180
  br i1 %tobool22, label %if.end29, label %if.then23, !dbg !2180

if.then23:                                        ; preds = %if.end21
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2181
  %93 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2181, !tbaa !1976
  %in24 = bitcast i8* %2 to %struct.ngx_chain_s**, !dbg !2181
  %call25 = call i32 @ngx_chain_add_copy(%struct.ngx_pool_s* %93, %struct.ngx_chain_s** %in24, %struct.ngx_chain_s* %in.addr.0) nounwind, !dbg !2181
  %cmp26 = icmp eq i32 %call25, 0, !dbg !2181
  br i1 %cmp26, label %if.then23.if.end29_crit_edge, label %cont114, !dbg !2181

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  %.pre = load i32* %3, align 4, !dbg !2183
  br label %if.end29, !dbg !2181

if.end29:                                         ; preds = %if.end21, %if.then23.if.end29_crit_edge
  %94 = phi i32 [ %.pre, %if.then23.if.end29_crit_edge ], [ %92, %if.end21 ]
  %bf.clear31 = and i32 %94, 64, !dbg !2183
  %tobool32 = icmp eq i32 %bf.clear31, 0, !dbg !2183
  br i1 %tobool32, label %if.end29.for.cond45.preheader_crit_edge, label %if.then33, !dbg !2183

if.end29.for.cond45.preheader_crit_edge:          ; preds = %if.end29
  %pool.i262.pre = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2184
  %free101.pre = getelementptr inbounds i8* %2, i32 4, !dbg !2189
  %.pre315 = bitcast i8* %free101.pre to %struct.ngx_chain_s**, !dbg !2189
  %busy102.pre = getelementptr inbounds i8* %2, i32 8, !dbg !2189
  %.pre317 = bitcast i8* %busy102.pre to %struct.ngx_chain_s**, !dbg !2189
  br label %for.cond45.preheader, !dbg !2183

if.then33:                                        ; preds = %if.end29
  %95 = load i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_next_body_filter, align 4, !dbg !2190, !tbaa !1976
  %call34 = call i32 %95(%struct.ngx_http_request_s* %r, %struct.ngx_chain_s* null) nounwind, !dbg !2190
  %cmp37 = icmp eq i32 %call34, -1, !dbg !2190
  br i1 %cmp37, label %cont114, label %if.end39, !dbg !2190

if.end39:                                         ; preds = %if.then33
  call void @llvm.dbg.value(metadata !2192, i64 0, metadata !1639), !dbg !2193
  call void @llvm.dbg.value(metadata !2192, i64 0, metadata !1639), !dbg !2193
  call void @llvm.dbg.value(metadata !2192, i64 0, metadata !1639), !dbg !2193
  call void @llvm.dbg.value(metadata !2192, i64 0, metadata !1639), !dbg !2193
  call void @llvm.dbg.value(metadata !2192, i64 0, metadata !1639), !dbg !2193
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %cl, align 4, !dbg !2193, !tbaa !1976
  %pool40 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2194
  %96 = load %struct.ngx_pool_s** %pool40, align 4, !dbg !2194, !tbaa !1976
  %free = getelementptr inbounds i8* %2, i32 4, !dbg !2194
  %97 = bitcast i8* %free to %struct.ngx_chain_s**, !dbg !2194
  %busy = getelementptr inbounds i8* %2, i32 8, !dbg !2194
  %98 = bitcast i8* %busy to %struct.ngx_chain_s**, !dbg !2194
  call void @ngx_chain_update_chains(%struct.ngx_pool_s* %96, %struct.ngx_chain_s** %97, %struct.ngx_chain_s** %98, %struct.ngx_chain_s** %cl, i8* bitcast (%struct.ngx_module_s* @ngx_http_gzip_filter_module to i8*)) nounwind, !dbg !2194
  %99 = load i32* %3, align 4, !dbg !2195
  %100 = and i32 %99, -65, !dbg !2195
  store i32 %100, i32* %3, align 4, !dbg !2195
  br label %for.cond45.preheader, !dbg !2196

for.cond45.preheader:                             ; preds = %if.end29.for.cond45.preheader_crit_edge, %if.end39
  %.pre-phi318 = phi %struct.ngx_chain_s** [ %.pre317, %if.end29.for.cond45.preheader_crit_edge ], [ %98, %if.end39 ], !dbg !2189
  %.pre-phi316 = phi %struct.ngx_chain_s** [ %.pre315, %if.end29.for.cond45.preheader_crit_edge ], [ %97, %if.end39 ], !dbg !2189
  %pool.i262.pre-phi = phi %struct.ngx_pool_s** [ %pool.i262.pre, %if.end29.for.cond45.preheader_crit_edge ], [ %pool40, %if.end39 ], !dbg !2184
  %101 = phi i32 [ %94, %if.end29.for.cond45.preheader_crit_edge ], [ %100, %if.end39 ]
  %avail_in.i = getelementptr inbounds i8* %2, i32 80, !dbg !2197
  %102 = bitcast i8* %avail_in.i to i32*, !dbg !2197
  %in.i = bitcast i8* %2 to %struct.ngx_chain_s**, !dbg !2202
  %copy_buf.i = getelementptr inbounds i8* %2, i32 24, !dbg !2203
  %103 = bitcast i8* %copy_buf.i to %struct.ngx_chain_s**, !dbg !2203
  %in_buf.i = getelementptr inbounds i8* %2, i32 28, !dbg !2204
  %104 = bitcast i8* %in_buf.i to %struct.ngx_buf_s**, !dbg !2204
  %next_in.i = getelementptr inbounds i8* %2, i32 76, !dbg !2205
  %105 = bitcast i8* %next_in.i to i8**, !dbg !2205
  %crc32.i206 = getelementptr inbounds i8* %2, i32 72, !dbg !2206
  %106 = bitcast i8* %crc32.i206 to i32*, !dbg !2206
  %copied.i = getelementptr inbounds i8* %2, i32 20, !dbg !2208
  %107 = bitcast i8* %copied.i to %struct.ngx_chain_s**, !dbg !2208
  %out = getelementptr inbounds i8* %2, i32 12, !dbg !2210
  %108 = bitcast i8* %out to %struct.ngx_chain_s**, !dbg !2210
  %last_out = getelementptr inbounds i8* %2, i32 16, !dbg !2211
  %109 = bitcast i8* %last_out to %struct.ngx_chain_s***, !dbg !2211
  %avail_out.i = getelementptr inbounds i8* %2, i32 92, !dbg !2212
  %110 = bitcast i8* %avail_out.i to i32*, !dbg !2212
  %loc_conf.i210 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2214
  %bufs.i = getelementptr inbounds i8* %2, i32 36, !dbg !2215
  %111 = bitcast i8* %bufs.i to i32*, !dbg !2215
  %out_buf9.i = getelementptr inbounds i8* %2, i32 32, !dbg !2216
  %112 = bitcast i8* %out_buf9.i to %struct.ngx_buf_s**, !dbg !2216
  %next_out.i = getelementptr inbounds i8* %2, i32 88, !dbg !2218
  %113 = bitcast i8* %next_out.i to i8**, !dbg !2218
  %114 = bitcast i8* %next_in.i to %struct.z_stream_s*, !dbg !2219
  %request.i249 = getelementptr inbounds i8* %2, i32 132, !dbg !2221
  %115 = bitcast i8* %request.i249 to %struct.ngx_http_request_s**, !dbg !2221
  %total_in.i.i = getelementptr inbounds i8* %2, i32 84, !dbg !2224
  %116 = bitcast i8* %total_in.i.i to i32*, !dbg !2224
  %zin.i.i = getelementptr inbounds i8* %2, i32 64, !dbg !2224
  %117 = bitcast i8* %zin.i.i to i32*, !dbg !2224
  %total_out.i.i = getelementptr inbounds i8* %2, i32 96, !dbg !2227
  %118 = bitcast i8* %total_out.i.i to i32*, !dbg !2227
  %zout.i.i = getelementptr inbounds i8* %2, i32 68, !dbg !2227
  %119 = bitcast i8* %zout.i.i to i32*, !dbg !2227
  %connection80.i.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2228
  br label %for.cond45, !dbg !2229

for.cond45:                                       ; preds = %if.end135.i, %land.lhs.true137.i, %if.end46.i, %cont71.i, %ngx_http_gzip_filter_free_copy_buf.exit285, %for.cond45.preheader
  %120 = phi i32 [ %101, %for.cond45.preheader ], [ %295, %ngx_http_gzip_filter_free_copy_buf.exit285 ], [ %149, %cont71.i ], [ %192, %if.end46.i ], [ %194, %land.lhs.true137.i ], [ %194, %if.end135.i ]
  call void @llvm.dbg.value(metadata !2230, i64 0, metadata !2231) nounwind, !dbg !2229
  %121 = load i32* %102, align 4, !dbg !2197, !tbaa !1948
  %tobool.i195 = icmp eq i32 %121, 0, !dbg !2197
  br i1 %tobool.i195, label %lor.lhs.false.i, label %if.end56, !dbg !2197

lor.lhs.false.i:                                  ; preds = %for.cond45
  %122 = and i32 %120, 31, !dbg !2197
  %123 = icmp eq i32 %122, 0, !dbg !2197
  br i1 %123, label %if.end.i196, label %if.end56, !dbg !2197

if.end.i196:                                      ; preds = %lor.lhs.false.i
  %124 = load %struct.ngx_chain_s** %in.i, align 4, !dbg !2202, !tbaa !1976
  %cmp8.i = icmp eq %struct.ngx_chain_s* %124, null, !dbg !2202
  br i1 %cmp8.i, label %for.end, label %if.end12.i, !dbg !2202

if.end12.i:                                       ; preds = %if.end.i196
  %125 = load %struct.ngx_chain_s** %103, align 4, !dbg !2203, !tbaa !1976
  %tobool13.i = icmp eq %struct.ngx_chain_s* %125, null, !dbg !2203
  br i1 %tobool13.i, label %if.end19.i, label %if.then14.i, !dbg !2203

if.then14.i:                                      ; preds = %if.end12.i
  %126 = load %struct.ngx_chain_s** %107, align 4, !dbg !2208, !tbaa !1976
  %next.i197 = getelementptr inbounds %struct.ngx_chain_s* %125, i32 0, i32 1, !dbg !2208
  store %struct.ngx_chain_s* %126, %struct.ngx_chain_s** %next.i197, align 4, !dbg !2208, !tbaa !1976
  %127 = load %struct.ngx_chain_s** %103, align 4, !dbg !2232, !tbaa !1976
  store %struct.ngx_chain_s* %127, %struct.ngx_chain_s** %107, align 4, !dbg !2232, !tbaa !1976
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %103, align 4, !dbg !2233, !tbaa !1976
  %.pre.i198 = load %struct.ngx_chain_s** %in.i, align 4, !dbg !2204, !tbaa !1976
  br label %if.end19.i, !dbg !2234

if.end19.i:                                       ; preds = %if.then14.i, %if.end12.i
  %128 = phi %struct.ngx_chain_s* [ %124, %if.end12.i ], [ %.pre.i198, %if.then14.i ]
  %buf.i = getelementptr inbounds %struct.ngx_chain_s* %128, i32 0, i32 0, !dbg !2204
  %129 = load %struct.ngx_buf_s** %buf.i, align 4, !dbg !2204, !tbaa !1976
  store %struct.ngx_buf_s* %129, %struct.ngx_buf_s** %104, align 4, !dbg !2204, !tbaa !1976
  %tag.i199 = getelementptr inbounds %struct.ngx_buf_s* %129, i32 0, i32 6, !dbg !2235
  %130 = load i8** %tag.i199, align 4, !dbg !2235, !tbaa !1976
  %cmp22.i = icmp eq i8* %130, bitcast (%struct.ngx_module_s* @ngx_http_gzip_filter_module to i8*), !dbg !2235
  br i1 %cmp22.i, label %if.then23.i, label %if.end26.i, !dbg !2235

if.then23.i:                                      ; preds = %if.end19.i
  store %struct.ngx_chain_s* %128, %struct.ngx_chain_s** %103, align 4, !dbg !2236, !tbaa !1976
  br label %if.end26.i, !dbg !2238

if.end26.i:                                       ; preds = %if.then23.i, %if.end19.i
  %next28.i = getelementptr inbounds %struct.ngx_chain_s* %128, i32 0, i32 1, !dbg !2239
  %131 = load %struct.ngx_chain_s** %next28.i, align 4, !dbg !2239, !tbaa !1976
  store %struct.ngx_chain_s* %131, %struct.ngx_chain_s** %in.i, align 4, !dbg !2239, !tbaa !1976
  %pos.i200 = getelementptr inbounds %struct.ngx_buf_s* %129, i32 0, i32 0, !dbg !2205
  %132 = load i8** %pos.i200, align 4, !dbg !2205, !tbaa !1976
  store i8* %132, i8** %105, align 4, !dbg !2205, !tbaa !1976
  %last.i201 = getelementptr inbounds %struct.ngx_buf_s* %129, i32 0, i32 1, !dbg !2240
  %133 = load i8** %last.i201, align 4, !dbg !2240, !tbaa !1976
  %134 = load i8** %pos.i200, align 4, !dbg !2240, !tbaa !1976
  %sub.ptr.lhs.cast.i202 = ptrtoint i8* %133 to i32, !dbg !2240
  %sub.ptr.rhs.cast.i203 = ptrtoint i8* %134 to i32, !dbg !2240
  %sub.ptr.sub.i204 = sub i32 %sub.ptr.lhs.cast.i202, %sub.ptr.rhs.cast.i203, !dbg !2240
  %135 = icmp sgt i32 %sub.ptr.sub.i204, -1, !dbg !2240
  br i1 %135, label %cont36.i, label %ioc_bb35.i, !dbg !2240

ioc_bb35.i:                                       ; preds = %if.end26.i
  %136 = sext i32 %sub.ptr.sub.i204 to i64, !dbg !2240
  call void @__ioc_report_conversion(i32 429, i32 29, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %136, i8 1) nounwind, !dbg !2240
  %.pre1.i = load %struct.ngx_buf_s** %104, align 4, !dbg !2241, !tbaa !1976
  br label %cont36.i, !dbg !2240

cont36.i:                                         ; preds = %ioc_bb35.i, %if.end26.i
  %137 = phi %struct.ngx_buf_s* [ %.pre1.i, %ioc_bb35.i ], [ %129, %if.end26.i ]
  store i32 %sub.ptr.sub.i204, i32* %102, align 4, !dbg !2240, !tbaa !1948
  %138 = getelementptr %struct.ngx_buf_s* %137, i32 0, i32 9, !dbg !2241
  %139 = bitcast i8* %138 to i32*, !dbg !2241
  %140 = load i32* %139, align 4, !dbg !2241
  %bf.clear41.i = and i32 %140, 128, !dbg !2241
  %tobool42.i = icmp eq i32 %bf.clear41.i, 0, !dbg !2241
  br i1 %tobool42.i, label %if.else.i205, label %cont45.i, !dbg !2241

cont45.i:                                         ; preds = %cont36.i
  %141 = load i32* %3, align 4, !dbg !2242
  %142 = and i32 %141, -16, !dbg !2242
  %143 = or i32 %142, 4, !dbg !2242
  store i32 %143, i32* %3, align 4, !dbg !2242
  br label %if.end56.i, !dbg !2244

if.else.i205:                                     ; preds = %cont36.i
  %bf.clear49.i = and i32 %140, 32, !dbg !2245
  %tobool50.i = icmp eq i32 %bf.clear49.i, 0, !dbg !2245
  br i1 %tobool50.i, label %if.end56.i, label %cont53.i, !dbg !2245

cont53.i:                                         ; preds = %if.else.i205
  %144 = load i32* %3, align 4, !dbg !2246
  %145 = and i32 %144, -16, !dbg !2246
  %146 = or i32 %145, 2, !dbg !2246
  store i32 %146, i32* %3, align 4, !dbg !2246
  br label %if.end56.i, !dbg !2248

if.end56.i:                                       ; preds = %cont53.i, %if.else.i205, %cont45.i
  %tobool59.i = icmp eq i8* %133, %134, !dbg !2249
  br i1 %tobool59.i, label %cont71.i, label %if.then60.i, !dbg !2249

if.then60.i:                                      ; preds = %if.end56.i
  %147 = load i32* %106, align 4, !dbg !2206, !tbaa !1948
  %148 = load i8** %105, align 4, !dbg !2206, !tbaa !1976
  %call.i207 = call i32 @crc32(i32 %147, i8* %148, i32 %sub.ptr.sub.i204) nounwind, !dbg !2206
  store i32 %call.i207, i32* %106, align 4, !dbg !2206, !tbaa !1948
  br label %if.end56, !dbg !2250

cont71.i:                                         ; preds = %if.end56.i
  %149 = load i32* %3, align 4, !dbg !2251
  %bf.clear68.i = and i32 %149, 15, !dbg !2251
  %cmp72.i = icmp eq i32 %bf.clear68.i, 0, !dbg !2251
  br i1 %cmp72.i, label %for.cond45, label %if.end56, !dbg !2251

if.end56:                                         ; preds = %cont71.i, %lor.lhs.false.i, %for.cond45, %if.then60.i
  call void @llvm.dbg.value(metadata !2252, i64 0, metadata !1637), !dbg !2199
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2253) nounwind, !dbg !2254
  %150 = load i32* %110, align 4, !dbg !2212, !tbaa !1948
  %tobool.i209 = icmp eq i32 %150, 0, !dbg !2212
  br i1 %tobool.i209, label %if.end.i212, label %if.end67, !dbg !2212

if.end.i212:                                      ; preds = %if.end56
  %151 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2214, !tbaa !1948
  %152 = load i8*** %loc_conf.i210, align 4, !dbg !2214, !tbaa !1976
  %arrayidx.i211 = getelementptr inbounds i8** %152, i32 %151, !dbg !2214
  %153 = load i8** %arrayidx.i211, align 4, !dbg !2214, !tbaa !1976
  %154 = load %struct.ngx_chain_s** %.pre-phi316, align 4, !dbg !2255, !tbaa !1976
  %tobool1.i = icmp eq %struct.ngx_chain_s* %154, null, !dbg !2255
  br i1 %tobool1.i, label %if.else.i216, label %if.then2.i, !dbg !2255

if.then2.i:                                       ; preds = %if.end.i212
  %buf.i213 = getelementptr inbounds %struct.ngx_chain_s* %154, i32 0, i32 0, !dbg !2256
  %155 = load %struct.ngx_buf_s** %buf.i213, align 4, !dbg !2256, !tbaa !1976
  store %struct.ngx_buf_s* %155, %struct.ngx_buf_s** %112, align 4, !dbg !2256, !tbaa !1976
  %next.i214 = getelementptr inbounds %struct.ngx_chain_s* %154, i32 0, i32 1, !dbg !2258
  %156 = load %struct.ngx_chain_s** %next.i214, align 4, !dbg !2258, !tbaa !1976
  store %struct.ngx_chain_s* %156, %struct.ngx_chain_s** %.pre-phi316, align 4, !dbg !2258, !tbaa !1976
  %size32.pre.i = getelementptr inbounds i8* %153, i32 20, !dbg !2259
  %.pre52.i = bitcast i8* %size32.pre.i to i32*, !dbg !2259
  br label %if.end28.i, !dbg !2260

if.else.i216:                                     ; preds = %if.end.i212
  %157 = load i32* %111, align 4, !dbg !2215, !tbaa !1948
  %bufs6.i = getelementptr inbounds i8* %153, i32 16, !dbg !2215
  %num.i = bitcast i8* %bufs6.i to i32*, !dbg !2215
  %158 = load i32* %num.i, align 4, !dbg !2215, !tbaa !1948
  %cmp.i215 = icmp slt i32 %157, %158, !dbg !2215
  br i1 %cmp.i215, label %if.then7.i, label %ngx_http_gzip_filter_get_buf.exit.thread305, !dbg !2215

if.then7.i:                                       ; preds = %if.else.i216
  %159 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2216, !tbaa !1976
  %size.i = getelementptr inbounds i8* %153, i32 20, !dbg !2216
  %160 = bitcast i8* %size.i to i32*, !dbg !2216
  %161 = load i32* %160, align 4, !dbg !2216, !tbaa !1948
  %call.i218 = call %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s* %159, i32 %161) nounwind, !dbg !2216
  store %struct.ngx_buf_s* %call.i218, %struct.ngx_buf_s** %112, align 4, !dbg !2216, !tbaa !1976
  %cmp11.i219 = icmp eq %struct.ngx_buf_s* %call.i218, null, !dbg !2261
  br i1 %cmp11.i219, label %cont114, label %if.end13.i, !dbg !2261

if.end13.i:                                       ; preds = %if.then7.i
  %tag.i220 = getelementptr inbounds %struct.ngx_buf_s* %call.i218, i32 0, i32 6, !dbg !2262
  store i8* bitcast (%struct.ngx_module_s* @ngx_http_gzip_filter_module to i8*), i8** %tag.i220, align 4, !dbg !2262, !tbaa !1976
  %162 = load %struct.ngx_buf_s** %112, align 4, !dbg !2263, !tbaa !1976
  %163 = getelementptr %struct.ngx_buf_s* %162, i32 0, i32 9, !dbg !2263
  %164 = bitcast i8* %163 to i32*, !dbg !2263
  %165 = load i32* %164, align 4, !dbg !2263
  %166 = or i32 %165, 8, !dbg !2263
  store i32 %166, i32* %164, align 4, !dbg !2263
  %167 = load i32* %111, align 4, !dbg !2264, !tbaa !1948
  %168 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %167, i32 1) nounwind, !dbg !2264
  %169 = extractvalue { i32, i1 } %168, 0, !dbg !2264
  %170 = extractvalue { i32, i1 } %168, 1, !dbg !2264
  br i1 %170, label %ioc_bb19.i, label %cont20.i, !dbg !2264

ioc_bb19.i:                                       ; preds = %if.end13.i
  %171 = sext i32 %167 to i64, !dbg !2264
  call void @__ioc_report_add_overflow(i32 464, i32 16, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %171, i64 1, i8 13) nounwind, !dbg !2264
  br label %cont20.i, !dbg !2264

cont20.i:                                         ; preds = %ioc_bb19.i, %if.end13.i
  store i32 %169, i32* %111, align 4, !dbg !2264, !tbaa !1948
  %.pre.i221 = load %struct.ngx_buf_s** %112, align 4, !dbg !2218, !tbaa !1976
  br label %if.end28.i

ngx_http_gzip_filter_get_buf.exit.thread305:      ; preds = %if.else.i216
  %172 = load i32* %3, align 4, !dbg !2265
  %173 = or i32 %172, 64, !dbg !2265
  store i32 %173, i32* %3, align 4, !dbg !2265
  call void @llvm.dbg.value(metadata !2267, i64 0, metadata !1637), !dbg !2213
  br label %for.end, !dbg !2268

if.end28.i:                                       ; preds = %cont20.i, %if.then2.i
  %.pre-phi.i = phi i32* [ %160, %cont20.i ], [ %.pre52.i, %if.then2.i ], !dbg !2259
  %174 = phi %struct.ngx_buf_s* [ %.pre.i221, %cont20.i ], [ %155, %if.then2.i ]
  %pos.i222 = getelementptr inbounds %struct.ngx_buf_s* %174, i32 0, i32 0, !dbg !2218
  %175 = load i8** %pos.i222, align 4, !dbg !2218, !tbaa !1976
  store i8* %175, i8** %113, align 4, !dbg !2218, !tbaa !1976
  %176 = load i32* %.pre-phi.i, align 4, !dbg !2259, !tbaa !1948
  store i32 %176, i32* %110, align 4, !dbg !2259, !tbaa !1948
  br label %if.end67, !dbg !2269

if.end67:                                         ; preds = %if.end56, %if.end28.i
  call void @llvm.dbg.value(metadata !2267, i64 0, metadata !1637), !dbg !2213
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2270) nounwind, !dbg !2271
  %177 = load i32* %3, align 4, !dbg !2219
  %bf.clear.i = and i32 %177, 15, !dbg !2219
  %call.i225 = call i32 @deflate(%struct.z_stream_s* %114, i32 %bf.clear.i) nounwind, !dbg !2219
  call void @llvm.dbg.value(metadata !{i32 %call.i225}, i64 0, metadata !2272) nounwind, !dbg !2219
  switch i32 %call.i225, label %if.then.i [
    i32 -5, label %if.end21.i
    i32 1, label %if.end21.i
    i32 0, label %if.end21.i
  ], !dbg !2273

if.then.i:                                        ; preds = %if.end67
  %178 = load %struct.ngx_connection_s** %connection80.i.i, align 4, !dbg !2274, !tbaa !1976
  %log.i227 = getelementptr inbounds %struct.ngx_connection_s* %178, i32 0, i32 10, !dbg !2274
  %179 = load %struct.ngx_log_s** %log.i227, align 4, !dbg !2274, !tbaa !1976
  %log_level.i228 = getelementptr inbounds %struct.ngx_log_s* %179, i32 0, i32 0, !dbg !2274
  %180 = load i32* %log_level.i228, align 4, !dbg !2274, !tbaa !1948
  %cmp8.i229 = icmp ugt i32 %180, 1, !dbg !2274
  br i1 %cmp8.i229, label %cont18.i230, label %cont114, !dbg !2274

cont18.i230:                                      ; preds = %if.then.i
  %181 = load i32* %3, align 4, !dbg !2276
  %bf.clear15.i = and i32 %181, 15, !dbg !2276
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %179, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str11, i32 0, i32 0), i32 %bf.clear15.i, i32 %call.i225) nounwind, !dbg !2276
  br label %cont114, !dbg !2276

if.end21.i:                                       ; preds = %if.end67, %if.end67, %if.end67
  %182 = load i8** %105, align 4, !dbg !2277, !tbaa !1976
  %tobool.i232 = icmp eq i8* %182, null, !dbg !2277
  br i1 %tobool.i232, label %if.end34.i, label %if.then23.i236, !dbg !2277

if.then23.i236:                                   ; preds = %if.end21.i
  %183 = load %struct.ngx_buf_s** %104, align 4, !dbg !2278, !tbaa !1976
  %pos.i234 = getelementptr inbounds %struct.ngx_buf_s* %183, i32 0, i32 0, !dbg !2278
  store i8* %182, i8** %pos.i234, align 4, !dbg !2278, !tbaa !1976
  %184 = load i32* %102, align 4, !dbg !2280, !tbaa !1948
  %cmp29.i = icmp eq i32 %184, 0, !dbg !2280
  br i1 %cmp29.i, label %if.then30.i, label %if.end34.i, !dbg !2280

if.then30.i:                                      ; preds = %if.then23.i236
  store i8* null, i8** %105, align 4, !dbg !2281, !tbaa !1976
  br label %if.end34.i, !dbg !2283

if.end34.i:                                       ; preds = %if.then30.i, %if.then23.i236, %if.end21.i
  %185 = load i8** %113, align 4, !dbg !2284, !tbaa !1976
  %186 = load %struct.ngx_buf_s** %112, align 4, !dbg !2284, !tbaa !1976
  %last.i239 = getelementptr inbounds %struct.ngx_buf_s* %186, i32 0, i32 1, !dbg !2284
  store i8* %185, i8** %last.i239, align 4, !dbg !2284, !tbaa !1976
  %187 = load i32* %110, align 4, !dbg !2285, !tbaa !1948
  %cmp39.i = icmp eq i32 %187, 0, !dbg !2285
  br i1 %cmp39.i, label %if.then40.i, label %cont57.i, !dbg !2285

if.then40.i:                                      ; preds = %if.end34.i
  %188 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2286, !tbaa !1976
  %call41.i = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %188) nounwind, !dbg !2286
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call41.i}, i64 0, metadata !2288) nounwind, !dbg !2286
  %cmp42.i = icmp eq %struct.ngx_chain_s* %call41.i, null, !dbg !2289
  br i1 %cmp42.i, label %cont114, label %if.end46.i, !dbg !2289

if.end46.i:                                       ; preds = %if.then40.i
  %189 = load %struct.ngx_buf_s** %112, align 4, !dbg !2290, !tbaa !1976
  %buf.i242 = getelementptr inbounds %struct.ngx_chain_s* %call41.i, i32 0, i32 0, !dbg !2290
  store %struct.ngx_buf_s* %189, %struct.ngx_buf_s** %buf.i242, align 4, !dbg !2290, !tbaa !1976
  %next.i243 = getelementptr inbounds %struct.ngx_chain_s* %call41.i, i32 0, i32 1, !dbg !2291
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next.i243, align 4, !dbg !2291, !tbaa !1976
  %190 = load %struct.ngx_chain_s*** %109, align 4, !dbg !2292, !tbaa !1976
  store %struct.ngx_chain_s* %call41.i, %struct.ngx_chain_s** %190, align 4, !dbg !2292, !tbaa !1976
  store %struct.ngx_chain_s** %next.i243, %struct.ngx_chain_s*** %109, align 4, !dbg !2293, !tbaa !1976
  %191 = load i32* %3, align 4, !dbg !2294
  %192 = or i32 %191, 16, !dbg !2294
  store i32 %192, i32* %3, align 4, !dbg !2294
  br label %for.cond45, !dbg !2295

cont57.i:                                         ; preds = %if.end34.i
  %193 = load i32* %3, align 4, !dbg !2296
  %194 = and i32 %193, -17, !dbg !2296
  store i32 %194, i32* %3, align 4, !dbg !2296
  %bf.clear60.i = and i32 %193, 15, !dbg !2297
  %cmp64.i = icmp eq i32 %bf.clear60.i, 2, !dbg !2297
  br i1 %cmp64.i, label %cont67.i, label %if.end124.i, !dbg !2297

cont67.i:                                         ; preds = %cont57.i
  %195 = and i32 %193, -32, !dbg !2298
  store i32 %195, i32* %3, align 4, !dbg !2298
  %196 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2299, !tbaa !1976
  %call70.i = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %196) nounwind, !dbg !2299
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call70.i}, i64 0, metadata !2288) nounwind, !dbg !2299
  %cmp71.i = icmp eq %struct.ngx_chain_s* %call70.i, null, !dbg !2300
  br i1 %cmp71.i, label %cont114, label %if.end75.i, !dbg !2300

if.end75.i:                                       ; preds = %cont67.i
  %197 = load %struct.ngx_buf_s** %112, align 4, !dbg !2301, !tbaa !1976
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %197}, i64 0, metadata !2302) nounwind, !dbg !2301
  %198 = getelementptr %struct.ngx_buf_s* %197, i32 0, i32 9, !dbg !2303
  %199 = bitcast i8* %198 to i32*, !dbg !2303
  %200 = load i32* %199, align 4, !dbg !2303
  %201 = and i32 %200, 7, !dbg !2303
  %202 = icmp eq i32 %201, 0, !dbg !2303
  br i1 %202, label %cond.false.i, label %cond.true.i, !dbg !2303

cond.true.i:                                      ; preds = %if.end75.i
  %last96.i = getelementptr inbounds %struct.ngx_buf_s* %197, i32 0, i32 1, !dbg !2303
  %203 = load i8** %last96.i, align 4, !dbg !2303, !tbaa !1976
  %pos97.i = getelementptr inbounds %struct.ngx_buf_s* %197, i32 0, i32 0, !dbg !2303
  %204 = load i8** %pos97.i, align 4, !dbg !2303, !tbaa !1976
  %sub.ptr.lhs.cast.i245 = ptrtoint i8* %203 to i32, !dbg !2303
  %sub.ptr.rhs.cast.i246 = ptrtoint i8* %204 to i32, !dbg !2303
  %sub.ptr.sub.i247 = sub i32 %sub.ptr.lhs.cast.i245, %sub.ptr.rhs.cast.i246, !dbg !2303
  %conv.i = sext i32 %sub.ptr.sub.i247 to i64, !dbg !2303
  br label %cond.end.i, !dbg !2303

cond.false.i:                                     ; preds = %if.end75.i
  %file_last.i = getelementptr inbounds %struct.ngx_buf_s* %197, i32 0, i32 3, !dbg !2303
  %205 = load i64* %file_last.i, align 4, !dbg !2303, !tbaa !2042
  %file_pos.i = getelementptr inbounds %struct.ngx_buf_s* %197, i32 0, i32 2, !dbg !2303
  %206 = load i64* %file_pos.i, align 4, !dbg !2303, !tbaa !2042
  %207 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %205, i64 %206) nounwind, !dbg !2303
  %208 = extractvalue { i64, i1 } %207, 0, !dbg !2303
  %209 = extractvalue { i64, i1 } %207, 1, !dbg !2303
  br i1 %209, label %ioc_bb98.i, label %cond.end.i, !dbg !2303

ioc_bb98.i:                                       ; preds = %cond.false.i
  call void @__ioc_report_sub_overflow(i32 518, i32 104, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %205, i64 %206, i8 14) nounwind, !dbg !2303
  br label %cond.end.i, !dbg !2303

cond.end.i:                                       ; preds = %ioc_bb98.i, %cond.false.i, %cond.true.i
  %cond.i248 = phi i64 [ %conv.i, %cond.true.i ], [ %208, %ioc_bb98.i ], [ %208, %cond.false.i ], !dbg !2303
  %cmp100.i = icmp eq i64 %cond.i248, 0, !dbg !2303
  br i1 %cmp100.i, label %if.then102.i, label %cont112.i, !dbg !2303

if.then102.i:                                     ; preds = %cond.end.i
  %210 = load %struct.ngx_http_request_s** %115, align 4, !dbg !2221, !tbaa !1976
  %pool103.i = getelementptr inbounds %struct.ngx_http_request_s* %210, i32 0, i32 11, !dbg !2221
  %211 = load %struct.ngx_pool_s** %pool103.i, align 4, !dbg !2221, !tbaa !1976
  %call104.i = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %211, i32 52) nounwind, !dbg !2221
  %212 = bitcast i8* %call104.i to %struct.ngx_buf_s*, !dbg !2221
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %212}, i64 0, metadata !2302) nounwind, !dbg !2221
  %cmp105.i = icmp eq i8* %call104.i, null, !dbg !2304
  br i1 %cmp105.i, label %cont114, label %cont117.i, !dbg !2304

cont112.i:                                        ; preds = %cond.end.i
  store i32 0, i32* %110, align 4, !dbg !2305, !tbaa !1948
  br label %cont117.i

cont117.i:                                        ; preds = %cont112.i, %if.then102.i
  %b.0.i = phi %struct.ngx_buf_s* [ %212, %if.then102.i ], [ %197, %cont112.i ]
  %213 = getelementptr %struct.ngx_buf_s* %b.0.i, i32 0, i32 9, !dbg !2307
  %214 = bitcast i8* %213 to i32*, !dbg !2307
  %215 = load i32* %214, align 4, !dbg !2307
  %216 = or i32 %215, 32, !dbg !2307
  store i32 %216, i32* %214, align 4, !dbg !2307
  %buf119.i = getelementptr inbounds %struct.ngx_chain_s* %call70.i, i32 0, i32 0, !dbg !2308
  store %struct.ngx_buf_s* %b.0.i, %struct.ngx_buf_s** %buf119.i, align 4, !dbg !2308, !tbaa !1976
  %next120.i = getelementptr inbounds %struct.ngx_chain_s* %call70.i, i32 0, i32 1, !dbg !2309
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next120.i, align 4, !dbg !2309, !tbaa !1976
  %217 = load %struct.ngx_chain_s*** %109, align 4, !dbg !2310, !tbaa !1976
  store %struct.ngx_chain_s* %call70.i, %struct.ngx_chain_s** %217, align 4, !dbg !2310, !tbaa !1976
  store %struct.ngx_chain_s** %next120.i, %struct.ngx_chain_s*** %109, align 4, !dbg !2311, !tbaa !1976
  br label %for.end, !dbg !2312

if.end124.i:                                      ; preds = %cont57.i
  %cmp125.i = icmp eq i32 %call.i225, 1, !dbg !2313
  br i1 %cmp125.i, label %if.then127.i, label %if.end135.i, !dbg !2313

if.then127.i:                                     ; preds = %if.end124.i
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2314) nounwind, !dbg !2315
  %218 = load i32* %116, align 4, !dbg !2224, !tbaa !2316
  store i32 %218, i32* %117, align 4, !dbg !2224, !tbaa !1948
  %219 = load i32* %118, align 4, !dbg !2227, !tbaa !2316
  %220 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %219, i32 10) nounwind, !dbg !2227
  %221 = extractvalue { i32, i1 } %220, 0, !dbg !2227
  %222 = extractvalue { i32, i1 } %220, 1, !dbg !2227
  br i1 %222, label %ioc_bb2.i.i, label %cont5.i.i, !dbg !2227

ioc_bb2.i.i:                                      ; preds = %if.then127.i
  %223 = zext i32 %219 to i64, !dbg !2227
  call void @__ioc_report_add_overflow(i32 562, i32 21, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 10, i64 %223, i8 5) nounwind, !dbg !2227
  br label %cont5.i.i, !dbg !2227

cont5.i.i:                                        ; preds = %ioc_bb2.i.i, %if.then127.i
  %224 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %221, i32 8) nounwind, !dbg !2227
  %225 = extractvalue { i32, i1 } %224, 0, !dbg !2227
  %226 = extractvalue { i32, i1 } %224, 1, !dbg !2227
  br i1 %226, label %ioc_bb6.i.i, label %cont7.i.i, !dbg !2227

ioc_bb6.i.i:                                      ; preds = %cont5.i.i
  %227 = zext i32 %221 to i64, !dbg !2227
  call void @__ioc_report_add_overflow(i32 562, i32 48, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %227, i64 8, i8 5) nounwind, !dbg !2227
  br label %cont7.i.i, !dbg !2227

cont7.i.i:                                        ; preds = %ioc_bb6.i.i, %cont5.i.i
  store i32 %225, i32* %119, align 4, !dbg !2227, !tbaa !1948
  %call.i.i = call i32 @deflateEnd(%struct.z_stream_s* %114) nounwind, !dbg !2317
  call void @llvm.dbg.value(metadata !{i32 %call.i.i}, i64 0, metadata !2318) nounwind, !dbg !2317
  %cmp.i.i = icmp eq i32 %call.i.i, 0, !dbg !2319
  br i1 %cmp.i.i, label %if.end19.i.i, label %if.then.i.i, !dbg !2319

if.then.i.i:                                      ; preds = %cont7.i.i
  %228 = load %struct.ngx_connection_s** %connection80.i.i, align 4, !dbg !2320, !tbaa !1976
  %log.i.i = getelementptr inbounds %struct.ngx_connection_s* %228, i32 0, i32 10, !dbg !2320
  %229 = load %struct.ngx_log_s** %log.i.i, align 4, !dbg !2320, !tbaa !1976
  %log_level.i.i = getelementptr inbounds %struct.ngx_log_s* %229, i32 0, i32 0, !dbg !2320
  %230 = load i32* %log_level.i.i, align 4, !dbg !2320, !tbaa !1948
  %cmp11.i.i = icmp ugt i32 %230, 1, !dbg !2320
  br i1 %cmp11.i.i, label %cont14.i.i, label %cont114, !dbg !2320

cont14.i.i:                                       ; preds = %if.then.i.i
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %229, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str12, i32 0, i32 0), i32 %call.i.i) nounwind, !dbg !2322
  br label %cont114, !dbg !2322

if.end19.i.i:                                     ; preds = %cont7.i.i
  %231 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2323, !tbaa !1976
  %232 = load i8** %61, align 4, !dbg !2323, !tbaa !1976
  %call20.i.i = call i32 @ngx_pfree(%struct.ngx_pool_s* %231, i8* %232) nounwind, !dbg !2323
  %233 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2324, !tbaa !1976
  %call22.i.i = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %233) nounwind, !dbg !2324
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call22.i.i}, i64 0, metadata !2325) nounwind, !dbg !2324
  %cmp23.i.i = icmp eq %struct.ngx_chain_s* %call22.i.i, null, !dbg !2326
  br i1 %cmp23.i.i, label %cont114, label %if.end27.i.i, !dbg !2326

if.end27.i.i:                                     ; preds = %if.end19.i.i
  %234 = load %struct.ngx_buf_s** %112, align 4, !dbg !2327, !tbaa !1976
  %buf.i.i = getelementptr inbounds %struct.ngx_chain_s* %call22.i.i, i32 0, i32 0, !dbg !2327
  store %struct.ngx_buf_s* %234, %struct.ngx_buf_s** %buf.i.i, align 4, !dbg !2327, !tbaa !1976
  %next.i.i = getelementptr inbounds %struct.ngx_chain_s* %call22.i.i, i32 0, i32 1, !dbg !2328
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next.i.i, align 4, !dbg !2328, !tbaa !1976
  %235 = load %struct.ngx_chain_s*** %109, align 4, !dbg !2329, !tbaa !1976
  store %struct.ngx_chain_s* %call22.i.i, %struct.ngx_chain_s** %235, align 4, !dbg !2329, !tbaa !1976
  store %struct.ngx_chain_s** %next.i.i, %struct.ngx_chain_s*** %109, align 4, !dbg !2330, !tbaa !1976
  %236 = load i32* %110, align 4, !dbg !2331, !tbaa !1948
  %cmp33.i.i = icmp ugt i32 %236, 7, !dbg !2331
  br i1 %cmp33.i.i, label %if.then34.i.i, label %cont43.i.i, !dbg !2331

if.then34.i.i:                                    ; preds = %if.end27.i.i
  %237 = load %struct.ngx_buf_s** %112, align 4, !dbg !2332, !tbaa !1976
  %last.i.i = getelementptr inbounds %struct.ngx_buf_s* %237, i32 0, i32 1, !dbg !2332
  %238 = load i8** %last.i.i, align 4, !dbg !2332, !tbaa !1976
  %add.ptr.i.i = getelementptr inbounds i8* %238, i32 8, !dbg !2334
  store i8* %add.ptr.i.i, i8** %last.i.i, align 4, !dbg !2334, !tbaa !1976
  %239 = load %struct.ngx_buf_s** %112, align 4, !dbg !2335, !tbaa !1976
  %240 = getelementptr %struct.ngx_buf_s* %239, i32 0, i32 9, !dbg !2335
  %241 = bitcast i8* %240 to i32*, !dbg !2335
  %242 = load i32* %241, align 4, !dbg !2335
  %243 = or i32 %242, 128, !dbg !2335
  store i32 %243, i32* %241, align 4, !dbg !2335
  br label %if.end67.i.i, !dbg !2336

cont43.i.i:                                       ; preds = %if.end27.i.i
  %244 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2337, !tbaa !1976
  %call44.i.i = call %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s* %244, i32 8) nounwind, !dbg !2337
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %call44.i.i}, i64 0, metadata !2339) nounwind, !dbg !2337
  %cmp45.i.i = icmp eq %struct.ngx_buf_s* %call44.i.i, null, !dbg !2340
  br i1 %cmp45.i.i, label %cont114, label %cont51.i.i, !dbg !2340

cont51.i.i:                                       ; preds = %cont43.i.i
  %245 = getelementptr %struct.ngx_buf_s* %call44.i.i, i32 0, i32 9, !dbg !2341
  %246 = bitcast i8* %245 to i32*, !dbg !2341
  %247 = load i32* %246, align 4, !dbg !2341
  %248 = or i32 %247, 128, !dbg !2341
  store i32 %248, i32* %246, align 4, !dbg !2341
  %249 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2342, !tbaa !1976
  %call54.i.i = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %249) nounwind, !dbg !2342
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call54.i.i}, i64 0, metadata !2325) nounwind, !dbg !2342
  %cmp55.i.i = icmp eq %struct.ngx_chain_s* %call54.i.i, null, !dbg !2343
  br i1 %cmp55.i.i, label %cont114, label %if.end59.i.i, !dbg !2343

if.end59.i.i:                                     ; preds = %cont51.i.i
  %buf60.i.i = getelementptr inbounds %struct.ngx_chain_s* %call54.i.i, i32 0, i32 0, !dbg !2344
  store %struct.ngx_buf_s* %call44.i.i, %struct.ngx_buf_s** %buf60.i.i, align 4, !dbg !2344, !tbaa !1976
  %next61.i.i = getelementptr inbounds %struct.ngx_chain_s* %call54.i.i, i32 0, i32 1, !dbg !2345
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next61.i.i, align 4, !dbg !2345, !tbaa !1976
  %250 = load %struct.ngx_chain_s*** %109, align 4, !dbg !2346, !tbaa !1976
  store %struct.ngx_chain_s* %call54.i.i, %struct.ngx_chain_s** %250, align 4, !dbg !2346, !tbaa !1976
  store %struct.ngx_chain_s** %next61.i.i, %struct.ngx_chain_s*** %109, align 4, !dbg !2347, !tbaa !1976
  %pos.i.i = getelementptr inbounds %struct.ngx_buf_s* %call44.i.i, i32 0, i32 0, !dbg !2348
  %251 = load i8** %pos.i.i, align 4, !dbg !2348, !tbaa !1976
  %last65.i.i = getelementptr inbounds %struct.ngx_buf_s* %call44.i.i, i32 0, i32 1, !dbg !2349
  %252 = load i8** %last65.i.i, align 4, !dbg !2349, !tbaa !1976
  %add.ptr66.i.i = getelementptr inbounds i8* %252, i32 8, !dbg !2349
  store i8* %add.ptr66.i.i, i8** %last65.i.i, align 4, !dbg !2349, !tbaa !1976
  br label %if.end67.i.i

if.end67.i.i:                                     ; preds = %if.end59.i.i, %if.then34.i.i
  %trailer.0.in.i.i = phi i8* [ %238, %if.then34.i.i ], [ %251, %if.end59.i.i ]
  %253 = load i32* %106, align 4, !dbg !2350, !tbaa !1948
  %crc3268.i.i = bitcast i8* %trailer.0.in.i.i to i32*, !dbg !2350
  store i32 %253, i32* %crc3268.i.i, align 4, !dbg !2350, !tbaa !1948
  %254 = load i32* %117, align 4, !dbg !2351, !tbaa !1948
  %zlen.i.i = getelementptr inbounds i8* %trailer.0.in.i.i, i32 4, !dbg !2351
  %255 = bitcast i8* %zlen.i.i to i32*, !dbg !2351
  store i32 %254, i32* %255, align 4, !dbg !2351, !tbaa !1948
  store i32 0, i32* %102, align 4, !dbg !2352, !tbaa !1948
  store i32 0, i32* %110, align 4, !dbg !2353, !tbaa !1948
  %256 = load i32* %3, align 4, !dbg !2354
  %257 = or i32 %256, 32, !dbg !2354
  store i32 %257, i32* %3, align 4, !dbg !2354
  %258 = load %struct.ngx_connection_s** %connection80.i.i, align 4, !dbg !2228, !tbaa !1976
  %259 = getelementptr %struct.ngx_connection_s* %258, i32 0, i32 20, !dbg !2228
  %260 = bitcast i8* %259 to i32*, !dbg !2228
  %261 = load i32* %260, align 4, !dbg !2228
  %262 = and i32 %261, -33, !dbg !2228
  store i32 %262, i32* %260, align 4, !dbg !2228
  br label %for.end, !dbg !2355

if.end135.i:                                      ; preds = %if.end124.i
  %263 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2356, !tbaa !1948
  %264 = load i8*** %loc_conf.i210, align 4, !dbg !2356, !tbaa !1976
  %arrayidx.i251 = getelementptr inbounds i8** %264, i32 %263, !dbg !2356
  %265 = load i8** %arrayidx.i251, align 4, !dbg !2356, !tbaa !1976
  %no_buffer.i = getelementptr inbounds i8* %265, i32 4, !dbg !2357
  %266 = bitcast i8* %no_buffer.i to i32*, !dbg !2357
  %267 = load i32* %266, align 4, !dbg !2357, !tbaa !1948
  %tobool136.i = icmp eq i32 %267, 0, !dbg !2357
  br i1 %tobool136.i, label %for.cond45, label %land.lhs.true137.i, !dbg !2357

land.lhs.true137.i:                               ; preds = %if.end135.i
  %268 = load %struct.ngx_chain_s** %in.i, align 4, !dbg !2357, !tbaa !1976
  %cmp138.i = icmp eq %struct.ngx_chain_s* %268, null, !dbg !2357
  br i1 %cmp138.i, label %if.then140.i, label %for.cond45, !dbg !2357

if.then140.i:                                     ; preds = %land.lhs.true137.i
  %269 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2358, !tbaa !1976
  %call142.i = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %269) nounwind, !dbg !2358
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call142.i}, i64 0, metadata !2288) nounwind, !dbg !2358
  %cmp143.i = icmp eq %struct.ngx_chain_s* %call142.i, null, !dbg !2360
  br i1 %cmp143.i, label %cont114, label %if.end148.i, !dbg !2360

if.end148.i:                                      ; preds = %if.then140.i
  %270 = load %struct.ngx_buf_s** %112, align 4, !dbg !2361, !tbaa !1976
  %buf150.i = getelementptr inbounds %struct.ngx_chain_s* %call142.i, i32 0, i32 0, !dbg !2361
  store %struct.ngx_buf_s* %270, %struct.ngx_buf_s** %buf150.i, align 4, !dbg !2361, !tbaa !1976
  %next151.i = getelementptr inbounds %struct.ngx_chain_s* %call142.i, i32 0, i32 1, !dbg !2362
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next151.i, align 4, !dbg !2362, !tbaa !1976
  %271 = load %struct.ngx_chain_s*** %109, align 4, !dbg !2363, !tbaa !1976
  store %struct.ngx_chain_s* %call142.i, %struct.ngx_chain_s** %271, align 4, !dbg !2363, !tbaa !1976
  store %struct.ngx_chain_s** %next151.i, %struct.ngx_chain_s*** %109, align 4, !dbg !2364, !tbaa !1976
  br label %for.end, !dbg !2365

for.end:                                          ; preds = %if.end.i196, %if.end148.i, %if.end67.i.i, %cont117.i, %ngx_http_gzip_filter_get_buf.exit.thread305
  %272 = load %struct.ngx_chain_s** %108, align 4, !dbg !2210, !tbaa !1976
  %cmp77 = icmp eq %struct.ngx_chain_s* %272, null, !dbg !2210
  br i1 %cmp77, label %if.then78, label %if.end83, !dbg !2210

if.then78:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2366) nounwind, !dbg !2369
  %cl.05.i = load %struct.ngx_chain_s** %107, align 4, !dbg !2370
  %tobool6.i = icmp eq %struct.ngx_chain_s* %cl.05.i, null, !dbg !2370
  br i1 %tobool6.i, label %ngx_http_gzip_filter_free_copy_buf.exit, label %for.body.i260, !dbg !2370

for.body.i260:                                    ; preds = %if.then78, %for.body.i260
  %cl.07.i = phi %struct.ngx_chain_s* [ %cl.0.i258, %for.body.i260 ], [ %cl.05.i, %if.then78 ]
  %273 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2372, !tbaa !1976
  %buf.i255 = getelementptr inbounds %struct.ngx_chain_s* %cl.07.i, i32 0, i32 0, !dbg !2372
  %274 = load %struct.ngx_buf_s** %buf.i255, align 4, !dbg !2372, !tbaa !1976
  %start.i = getelementptr inbounds %struct.ngx_buf_s* %274, i32 0, i32 4, !dbg !2372
  %275 = load i8** %start.i, align 4, !dbg !2372, !tbaa !1976
  %call.i256 = call i32 @ngx_pfree(%struct.ngx_pool_s* %273, i8* %275) nounwind, !dbg !2372
  %next.i257 = getelementptr inbounds %struct.ngx_chain_s* %cl.07.i, i32 0, i32 1, !dbg !2370
  %cl.0.i258 = load %struct.ngx_chain_s** %next.i257, align 4, !dbg !2370
  %tobool.i259 = icmp eq %struct.ngx_chain_s* %cl.0.i258, null, !dbg !2370
  br i1 %tobool.i259, label %ngx_http_gzip_filter_free_copy_buf.exit, label %for.body.i260, !dbg !2370

ngx_http_gzip_filter_free_copy_buf.exit:          ; preds = %for.body.i260, %if.then78
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %107, align 4, !dbg !2374, !tbaa !1976
  %276 = load %struct.ngx_chain_s** %.pre-phi318, align 4, !dbg !2375, !tbaa !1976
  %tobool80 = icmp ne %struct.ngx_chain_s* %276, null, !dbg !2375
  %cond = select i1 %tobool80, i32 -2, i32 0, !dbg !2375
  br label %return, !dbg !2375

if.end83:                                         ; preds = %for.end
  %277 = load i32* %3, align 4, !dbg !2376
  %bf.clear85 = and i32 %277, 128, !dbg !2376
  %tobool86 = icmp eq i32 %bf.clear85, 0, !dbg !2376
  br i1 %tobool86, label %if.then87, label %if.end92, !dbg !2376

if.then87:                                        ; preds = %if.end83
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2377) nounwind, !dbg !2378
  %278 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2184, !tbaa !1976
  %call.i263 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %278, i32 52) nounwind, !dbg !2184
  %279 = bitcast i8* %call.i263 to %struct.ngx_buf_s*, !dbg !2184
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %279}, i64 0, metadata !2379) nounwind, !dbg !2184
  %cmp.i264 = icmp eq i8* %call.i263, null, !dbg !2380
  br i1 %cmp.i264, label %cont114, label %cont2.i, !dbg !2380

cont2.i:                                          ; preds = %if.then87
  %bf.field.offs.i = getelementptr i8* %call.i263, i32 44, !dbg !2381
  %280 = bitcast i8* %bf.field.offs.i to i32*, !dbg !2381
  %281 = load i32* %280, align 4, !dbg !2381
  %282 = or i32 %281, 2, !dbg !2381
  store i32 %282, i32* %280, align 4, !dbg !2381
  %pos.i265 = bitcast i8* %call.i263 to i8**, !dbg !2382
  store i8* getelementptr inbounds ([10 x i8]* @ngx_http_gzip_filter_gzheader.gzheader, i32 0, i32 0), i8** %pos.i265, align 4, !dbg !2382, !tbaa !1976
  %last.i266 = getelementptr inbounds i8* %call.i263, i32 4, !dbg !2383
  %283 = bitcast i8* %last.i266 to i8**, !dbg !2383
  store i8* getelementptr inbounds ([10 x i8]* @ngx_http_gzip_filter_gzheader.gzheader, i32 1, i32 0), i8** %283, align 4, !dbg !2383, !tbaa !1976
  %284 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2384, !tbaa !1976
  %call5.i = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %284) nounwind, !dbg !2384
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call5.i}, i64 0, metadata !2385) nounwind, !dbg !2384
  %cmp6.i = icmp eq %struct.ngx_chain_s* %call5.i, null, !dbg !2386
  br i1 %cmp6.i, label %cont114, label %ngx_http_gzip_filter_gzheader.exit, !dbg !2386

ngx_http_gzip_filter_gzheader.exit:               ; preds = %cont2.i
  %buf.i267 = getelementptr inbounds %struct.ngx_chain_s* %call5.i, i32 0, i32 0, !dbg !2387
  store %struct.ngx_buf_s* %279, %struct.ngx_buf_s** %buf.i267, align 4, !dbg !2387, !tbaa !1976
  %285 = load %struct.ngx_chain_s** %108, align 4, !dbg !2388, !tbaa !1976
  %next.i269 = getelementptr inbounds %struct.ngx_chain_s* %call5.i, i32 0, i32 1, !dbg !2388
  store %struct.ngx_chain_s* %285, %struct.ngx_chain_s** %next.i269, align 4, !dbg !2388, !tbaa !1976
  store %struct.ngx_chain_s* %call5.i, %struct.ngx_chain_s** %108, align 4, !dbg !2389, !tbaa !1976
  %286 = load i32* %3, align 4, !dbg !2390
  %287 = or i32 %286, 128, !dbg !2390
  store i32 %287, i32* %3, align 4, !dbg !2390
  br label %if.end92, !dbg !2185

if.end92:                                         ; preds = %ngx_http_gzip_filter_gzheader.exit, %if.end83
  %288 = phi %struct.ngx_chain_s* [ %call5.i, %ngx_http_gzip_filter_gzheader.exit ], [ %272, %if.end83 ]
  %289 = load i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_next_body_filter, align 4, !dbg !2391, !tbaa !1976
  %call94 = call i32 %289(%struct.ngx_http_request_s* %r, %struct.ngx_chain_s* %288) nounwind, !dbg !2391
  call void @llvm.dbg.value(metadata !{i32 %call94}, i64 0, metadata !1637), !dbg !2391
  %cmp97 = icmp eq i32 %call94, -1, !dbg !2392
  br i1 %cmp97, label %cont114, label %if.end99, !dbg !2392

if.end99:                                         ; preds = %if.end92
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2393) nounwind, !dbg !2395
  %cl.05.i272 = load %struct.ngx_chain_s** %107, align 4, !dbg !2396
  %tobool6.i273 = icmp eq %struct.ngx_chain_s* %cl.05.i272, null, !dbg !2396
  br i1 %tobool6.i273, label %ngx_http_gzip_filter_free_copy_buf.exit285, label %for.body.i283, !dbg !2396

for.body.i283:                                    ; preds = %if.end99, %for.body.i283
  %cl.07.i276 = phi %struct.ngx_chain_s* [ %cl.0.i281, %for.body.i283 ], [ %cl.05.i272, %if.end99 ]
  %290 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2397, !tbaa !1976
  %buf.i277 = getelementptr inbounds %struct.ngx_chain_s* %cl.07.i276, i32 0, i32 0, !dbg !2397
  %291 = load %struct.ngx_buf_s** %buf.i277, align 4, !dbg !2397, !tbaa !1976
  %start.i278 = getelementptr inbounds %struct.ngx_buf_s* %291, i32 0, i32 4, !dbg !2397
  %292 = load i8** %start.i278, align 4, !dbg !2397, !tbaa !1976
  %call.i279 = call i32 @ngx_pfree(%struct.ngx_pool_s* %290, i8* %292) nounwind, !dbg !2397
  %next.i280 = getelementptr inbounds %struct.ngx_chain_s* %cl.07.i276, i32 0, i32 1, !dbg !2396
  %cl.0.i281 = load %struct.ngx_chain_s** %next.i280, align 4, !dbg !2396
  %tobool.i282 = icmp eq %struct.ngx_chain_s* %cl.0.i281, null, !dbg !2396
  br i1 %tobool.i282, label %ngx_http_gzip_filter_free_copy_buf.exit285, label %for.body.i283, !dbg !2396

ngx_http_gzip_filter_free_copy_buf.exit285:       ; preds = %for.body.i283, %if.end99
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %107, align 4, !dbg !2398, !tbaa !1976
  %293 = load %struct.ngx_pool_s** %pool.i262.pre-phi, align 4, !dbg !2189, !tbaa !1976
  call void @ngx_chain_update_chains(%struct.ngx_pool_s* %293, %struct.ngx_chain_s** %.pre-phi316, %struct.ngx_chain_s** %.pre-phi318, %struct.ngx_chain_s** %108, i8* bitcast (%struct.ngx_module_s* @ngx_http_gzip_filter_module to i8*)) nounwind, !dbg !2189
  store %struct.ngx_chain_s** %108, %struct.ngx_chain_s*** %109, align 4, !dbg !2211, !tbaa !1976
  %294 = load i32* %3, align 4, !dbg !2399
  %295 = and i32 %294, -65, !dbg !2399
  store i32 %295, i32* %3, align 4, !dbg !2399
  %bf.clear109 = and i32 %294, 32, !dbg !2400
  %tobool110 = icmp eq i32 %bf.clear109, 0, !dbg !2400
  br i1 %tobool110, label %for.cond45, label %return, !dbg !2400

cont114.loopexit311:                              ; preds = %while.body.i, %if.then50.i
  %preallocated116.pre = getelementptr inbounds i8* %2, i32 40, !dbg !2401
  %.pre314 = bitcast i8* %preallocated116.pre to i8**, !dbg !2401
  br label %cont114

cont114:                                          ; preds = %cont2.i, %if.then87, %if.then140.i, %if.then102.i, %cont67.i, %if.then40.i, %cont51.i.i, %cont43.i.i, %if.end19.i.i, %if.then7.i, %if.end92, %if.then.i.i, %if.then.i, %if.then33, %if.then23, %if.then12.i, %cont114.loopexit311, %cont18.i230, %cont14.i.i, %cont18.i, %if.then16
  %.pre-phi = phi i8** [ %.pre314, %cont114.loopexit311 ], [ %61, %cont18.i230 ], [ %61, %cont14.i.i ], [ %61, %cont18.i ], [ %61, %if.then16 ], [ %61, %if.then12.i ], [ %61, %if.then23 ], [ %61, %if.then33 ], [ %61, %if.then.i ], [ %61, %if.then.i.i ], [ %61, %if.end92 ], [ %61, %if.then7.i ], [ %61, %if.end19.i.i ], [ %61, %cont43.i.i ], [ %61, %cont51.i.i ], [ %61, %if.then40.i ], [ %61, %cont67.i ], [ %61, %if.then102.i ], [ %61, %if.then140.i ], [ %61, %if.then87 ], [ %61, %cont2.i ], !dbg !2401
  %296 = load i32* %3, align 4, !dbg !2402
  %297 = or i32 %296, 32, !dbg !2402
  store i32 %297, i32* %3, align 4, !dbg !2402
  %298 = load i8** %.pre-phi, align 4, !dbg !2401, !tbaa !1976
  %tobool117 = icmp eq i8* %298, null, !dbg !2401
  br i1 %tobool117, label %if.end123, label %if.then118, !dbg !2401

if.then118:                                       ; preds = %cont114
  %zstream = getelementptr inbounds i8* %2, i32 76, !dbg !2403
  %299 = bitcast i8* %zstream to %struct.z_stream_s*, !dbg !2403
  %call119 = call i32 @deflateEnd(%struct.z_stream_s* %299) nounwind, !dbg !2403
  %pool120 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2405
  %300 = load %struct.ngx_pool_s** %pool120, align 4, !dbg !2405, !tbaa !1976
  %301 = load i8** %.pre-phi, align 4, !dbg !2405, !tbaa !1976
  %call122 = call i32 @ngx_pfree(%struct.ngx_pool_s* %300, i8* %301) nounwind, !dbg !2405
  br label %if.end123, !dbg !2406

if.end123:                                        ; preds = %cont114, %if.then118
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2407) nounwind, !dbg !2409
  %copied.i286 = getelementptr inbounds i8* %2, i32 20, !dbg !2410
  %302 = bitcast i8* %copied.i286 to %struct.ngx_chain_s**, !dbg !2410
  %cl.05.i287 = load %struct.ngx_chain_s** %302, align 4, !dbg !2410
  %tobool6.i288 = icmp eq %struct.ngx_chain_s* %cl.05.i287, null, !dbg !2410
  br i1 %tobool6.i288, label %ngx_http_gzip_filter_free_copy_buf.exit300, label %for.body.lr.ph.i290, !dbg !2410

for.body.lr.ph.i290:                              ; preds = %if.end123
  %pool.i289 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2411
  br label %for.body.i298, !dbg !2410

for.body.i298:                                    ; preds = %for.body.i298, %for.body.lr.ph.i290
  %cl.07.i291 = phi %struct.ngx_chain_s* [ %cl.05.i287, %for.body.lr.ph.i290 ], [ %cl.0.i296, %for.body.i298 ]
  %303 = load %struct.ngx_pool_s** %pool.i289, align 4, !dbg !2411, !tbaa !1976
  %buf.i292 = getelementptr inbounds %struct.ngx_chain_s* %cl.07.i291, i32 0, i32 0, !dbg !2411
  %304 = load %struct.ngx_buf_s** %buf.i292, align 4, !dbg !2411, !tbaa !1976
  %start.i293 = getelementptr inbounds %struct.ngx_buf_s* %304, i32 0, i32 4, !dbg !2411
  %305 = load i8** %start.i293, align 4, !dbg !2411, !tbaa !1976
  %call.i294 = call i32 @ngx_pfree(%struct.ngx_pool_s* %303, i8* %305) nounwind, !dbg !2411
  %next.i295 = getelementptr inbounds %struct.ngx_chain_s* %cl.07.i291, i32 0, i32 1, !dbg !2410
  %cl.0.i296 = load %struct.ngx_chain_s** %next.i295, align 4, !dbg !2410
  %tobool.i297 = icmp eq %struct.ngx_chain_s* %cl.0.i296, null, !dbg !2410
  br i1 %tobool.i297, label %ngx_http_gzip_filter_free_copy_buf.exit300, label %for.body.i298, !dbg !2410

ngx_http_gzip_filter_free_copy_buf.exit300:       ; preds = %for.body.i298, %if.end123
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %302, align 4, !dbg !2412, !tbaa !1976
  br label %return, !dbg !2413

return:                                           ; preds = %ngx_http_gzip_filter_free_copy_buf.exit285, %ngx_http_gzip_filter_buffer.exit, %ngx_http_gzip_filter_free_copy_buf.exit300, %ngx_http_gzip_filter_free_copy_buf.exit, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -1, %ngx_http_gzip_filter_free_copy_buf.exit300 ], [ %cond, %ngx_http_gzip_filter_free_copy_buf.exit ], [ 0, %ngx_http_gzip_filter_buffer.exit ], [ %call94, %ngx_http_gzip_filter_free_copy_buf.exit285 ]
  ret i32 %retval.0, !dbg !2414
}

declare i32 @ngx_chain_add_copy(%struct.ngx_pool_s*, %struct.ngx_chain_s**, %struct.ngx_chain_s*)

declare void @ngx_chain_update_chains(%struct.ngx_pool_s*, %struct.ngx_chain_s**, %struct.ngx_chain_s**, %struct.ngx_chain_s**, i8*)

declare i32 @deflateEnd(%struct.z_stream_s*)

declare i32 @ngx_pfree(%struct.ngx_pool_s*, i8*)

declare %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s*)

declare i32 @deflate(%struct.z_stream_s*, i32)

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s*, i32)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @crc32(i32, i8*, i32)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

define internal i8* @ngx_http_gzip_filter_alloc(i8* nocapture %opaque, i32 %items, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %opaque}, i64 0, metadata !1785), !dbg !2415
  tail call void @llvm.dbg.value(metadata !{i32 %items}, i64 0, metadata !1786), !dbg !2415
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !1787), !dbg !2415
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %items, i32 %size), !dbg !2416
  %1 = extractvalue { i32, i1 } %0, 0, !dbg !2416
  %2 = extractvalue { i32, i1 } %0, 1, !dbg !2416
  %3 = zext i32 %items to i64, !dbg !2416
  %4 = zext i32 %size to i64, !dbg !2416
  br i1 %2, label %ioc_bb, label %cont5, !dbg !2416

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_mul_overflow(i32 617, i32 17, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 %4, i8 5) nounwind, !dbg !2416
  br label %cont5, !dbg !2416

cont5:                                            ; preds = %entry, %ioc_bb
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !1791), !dbg !2416
  %rem = and i32 %1, 511, !dbg !2417
  %cmp = icmp ne i32 %rem, 0, !dbg !2417
  %cmp8 = icmp ult i32 %1, 8192, !dbg !2417
  %or.cond = and i1 %cmp, %cmp8, !dbg !2417
  tail call void @llvm.dbg.value(metadata !2418, i64 0, metadata !1791), !dbg !2419
  %alloc.0 = select i1 %or.cond, i32 8192, i32 %1, !dbg !2417
  %allocated = getelementptr inbounds i8* %opaque, i32 48, !dbg !2421
  %5 = bitcast i8* %allocated to i32*, !dbg !2421
  %6 = load i32* %5, align 4, !dbg !2421, !tbaa !1948
  %cmp11 = icmp ugt i32 %alloc.0, %6, !dbg !2421
  br i1 %cmp11, label %if.end17, label %if.then12, !dbg !2421

if.then12:                                        ; preds = %cont5
  %free_mem = getelementptr inbounds i8* %opaque, i32 44, !dbg !2422
  %7 = bitcast i8* %free_mem to i8**, !dbg !2422
  %8 = load i8** %7, align 4, !dbg !2422, !tbaa !1976
  tail call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !1790), !dbg !2422
  %add.ptr = getelementptr inbounds i8* %8, i32 %alloc.0, !dbg !2424
  store i8* %add.ptr, i8** %7, align 4, !dbg !2424, !tbaa !1976
  %9 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %6, i32 %alloc.0), !dbg !2425
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !2425
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !2425
  br i1 %11, label %ioc_bb15, label %cont16, !dbg !2425

ioc_bb15:                                         ; preds = %if.then12
  %12 = zext i32 %alloc.0 to i64, !dbg !2425
  %13 = zext i32 %6 to i64, !dbg !2425
  tail call void @__ioc_report_sub_overflow(i32 628, i32 22, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %13, i64 %12, i8 5) nounwind, !dbg !2425
  br label %cont16, !dbg !2425

cont16:                                           ; preds = %if.then12, %ioc_bb15
  store i32 %10, i32* %5, align 4, !dbg !2425, !tbaa !1948
  br label %return, !dbg !2426

if.end17:                                         ; preds = %cont5
  %request = getelementptr inbounds i8* %opaque, i32 132, !dbg !2427
  %14 = bitcast i8* %request to %struct.ngx_http_request_s**, !dbg !2427
  %15 = load %struct.ngx_http_request_s** %14, align 4, !dbg !2427, !tbaa !1976
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %15, i32 0, i32 1, !dbg !2427
  %16 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2427, !tbaa !1976
  %log = getelementptr inbounds %struct.ngx_connection_s* %16, i32 0, i32 10, !dbg !2427
  %17 = load %struct.ngx_log_s** %log, align 4, !dbg !2427, !tbaa !1976
  %log_level = getelementptr inbounds %struct.ngx_log_s* %17, i32 0, i32 0, !dbg !2427
  %18 = load i32* %log_level, align 4, !dbg !2427, !tbaa !1948
  %cmp20 = icmp ugt i32 %18, 1, !dbg !2427
  br i1 %cmp20, label %cont23, label %if.end30, !dbg !2427

cont23:                                           ; preds = %if.end17
  br i1 %2, label %ioc_bb27, label %cont28, !dbg !2428

ioc_bb27:                                         ; preds = %cont23
  tail call void @__ioc_report_mul_overflow(i32 633, i32 130, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 %4, i8 5) nounwind, !dbg !2428
  %.pre = load i32* %5, align 4, !dbg !2428, !tbaa !1948
  br label %cont28, !dbg !2428

cont28:                                           ; preds = %cont23, %ioc_bb27
  %19 = phi i32 [ %6, %cont23 ], [ %.pre, %ioc_bb27 ]
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %17, i32 0, i8* getelementptr inbounds ([58 x i8]* @.str15, i32 0, i32 0), i32 %1, i32 %19) nounwind, !dbg !2428
  %.pre49 = load %struct.ngx_http_request_s** %14, align 4, !dbg !2429, !tbaa !1976
  br label %if.end30, !dbg !2428

if.end30:                                         ; preds = %cont28, %if.end17
  %20 = phi %struct.ngx_http_request_s* [ %.pre49, %cont28 ], [ %15, %if.end17 ]
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %20, i32 0, i32 11, !dbg !2429
  %21 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2429, !tbaa !1976
  br i1 %2, label %ioc_bb32, label %cont33, !dbg !2429

ioc_bb32:                                         ; preds = %if.end30
  tail call void @__ioc_report_mul_overflow(i32 634, i32 47, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %3, i64 %4, i8 5) nounwind, !dbg !2429
  br label %cont33, !dbg !2429

cont33:                                           ; preds = %if.end30, %ioc_bb32
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %21, i32 %1) nounwind, !dbg !2429
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !1790), !dbg !2429
  br label %return, !dbg !2430

return:                                           ; preds = %cont33, %cont16
  %retval.0 = phi i8* [ %8, %cont16 ], [ %call, %cont33 ]
  ret i8* %retval.0, !dbg !2431
}

define internal void @ngx_http_gzip_filter_free(i8* nocapture %opaque, i8* nocapture %address) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %opaque}, i64 0, metadata !1776), !dbg !2432
  tail call void @llvm.dbg.value(metadata !{i8* %address}, i64 0, metadata !1777), !dbg !2432
  ret void, !dbg !2433
}

declare i32 @deflateInit2_(%struct.z_stream_s*, i32, i32, i32, i32, i32, i8*, i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i8* @ngx_http_test_content_type(%struct.ngx_http_request_s*, %struct.ngx_hash_t*)

declare i32 @ngx_http_gzip_ok(%struct.ngx_http_request_s*)

declare i8* @ngx_list_push(%struct.ngx_list_t*)

declare void @__ioc_report_shl_bitwidth(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32)

define internal i32 @ngx_http_gzip_ratio_variable(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_variable_value_t* nocapture %v, i32 %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1852), !dbg !2435
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1853), !dbg !2435
  tail call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1854), !dbg !2435
  %0 = bitcast %struct.ngx_variable_value_t* %v to i32*, !dbg !2436
  %1 = load i32* %0, align 4, !dbg !2436
  %2 = and i32 %1, -1879048193, !dbg !2437
  %3 = or i32 %2, 268435456, !dbg !2437
  store i32 %3, i32* %0, align 4, !dbg !2437
  %4 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_gzip_filter_module, i32 0, i32 0), align 4, !dbg !2438, !tbaa !1948
  %ctx5 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !2438
  %5 = load i8*** %ctx5, align 4, !dbg !2438, !tbaa !1976
  %arrayidx = getelementptr inbounds i8** %5, i32 %4, !dbg !2438
  %6 = load i8** %arrayidx, align 4, !dbg !2438, !tbaa !1976
  %cmp = icmp eq i8* %6, null, !dbg !2439
  br i1 %cmp, label %cont10, label %lor.lhs.false, !dbg !2439

lor.lhs.false:                                    ; preds = %entry
  %zout = getelementptr inbounds i8* %6, i32 68, !dbg !2439
  %7 = bitcast i8* %zout to i32*, !dbg !2439
  %8 = load i32* %7, align 4, !dbg !2439, !tbaa !1948
  %cmp8 = icmp eq i32 %8, 0, !dbg !2439
  br i1 %cmp8, label %cont10, label %if.end, !dbg !2439

cont10:                                           ; preds = %entry, %lor.lhs.false
  %9 = or i32 %2, 1342177280, !dbg !2440
  store i32 %9, i32* %0, align 4, !dbg !2440
  br label %return, !dbg !2442

if.end:                                           ; preds = %lor.lhs.false
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2443
  %10 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2443, !tbaa !1976
  %call = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %10, i32 14) nounwind, !dbg !2443
  %data19 = getelementptr inbounds %struct.ngx_variable_value_t* %v, i32 0, i32 1, !dbg !2443
  store i8* %call, i8** %data19, align 4, !dbg !2443, !tbaa !1976
  %cmp21 = icmp eq i8* %call, null, !dbg !2444
  br i1 %cmp21, label %return, label %if.end25, !dbg !2444

if.end25:                                         ; preds = %if.end
  %zin = getelementptr inbounds i8* %6, i32 64, !dbg !2445
  %11 = bitcast i8* %zin to i32*, !dbg !2445
  %12 = load i32* %11, align 4, !dbg !2445, !tbaa !1948
  %13 = load i32* %7, align 4, !dbg !2445, !tbaa !1948
  %14 = icmp eq i32 %13, 0, !dbg !2445
  br i1 %14, label %trap, label %cont27, !dbg !2445

trap:                                             ; preds = %cont43, %cont32, %if.end25
  tail call void @llvm.trap() noreturn nounwind, !dbg !2445
  unreachable, !dbg !2445

cont27:                                           ; preds = %if.end25
  %div = udiv i32 %12, %13, !dbg !2445
  tail call void @llvm.dbg.value(metadata !{i32 %div}, i64 0, metadata !1855), !dbg !2445
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 100), !dbg !2446
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !2446
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !2446
  br i1 %17, label %cont32, label %cont38, !dbg !2446

cont32:                                           ; preds = %cont27
  %18 = zext i32 %12 to i64, !dbg !2446
  tail call void @__ioc_report_mul_overflow(i32 682, i32 37, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %18, i64 100, i8 5) nounwind, !dbg !2446
  %.pre = load i32* %7, align 4, !dbg !2446, !tbaa !1948
  %19 = icmp eq i32 %.pre, 0, !dbg !2446
  br i1 %19, label %trap, label %cont38, !dbg !2446

cont38:                                           ; preds = %cont27, %cont32
  %20 = phi i32 [ %.pre, %cont32 ], [ %13, %cont27 ]
  %div35 = udiv i32 %16, %20, !dbg !2446
  %rem = urem i32 %div35, 100, !dbg !2446
  tail call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !1857), !dbg !2446
  %21 = load i32* %11, align 4, !dbg !2447, !tbaa !1948
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 1000), !dbg !2447
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !2447
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !2447
  br i1 %24, label %ioc_bb42, label %cont43, !dbg !2447

ioc_bb42:                                         ; preds = %cont38
  %25 = zext i32 %21 to i64, !dbg !2447
  tail call void @__ioc_report_mul_overflow(i32 683, i32 18, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %25, i64 1000, i8 5) nounwind, !dbg !2447
  %.pre91 = load i32* %7, align 4, !dbg !2447, !tbaa !1948
  br label %cont43, !dbg !2447

cont43:                                           ; preds = %cont38, %ioc_bb42
  %26 = phi i32 [ %20, %cont38 ], [ %.pre91, %ioc_bb42 ]
  %27 = icmp eq i32 %26, 0, !dbg !2447
  br i1 %27, label %trap, label %cont52, !dbg !2447

cont52:                                           ; preds = %cont43
  %div46 = udiv i32 %23, %26, !dbg !2447
  %rem50 = urem i32 %div46, 10, !dbg !2447
  %cmp53 = icmp ugt i32 %rem50, 4, !dbg !2447
  br i1 %cmp53, label %if.then54, label %if.end66, !dbg !2447

if.then54:                                        ; preds = %cont52
  %28 = add nuw i32 %rem, 1, !dbg !2448
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !1857), !dbg !2448
  %cmp59 = icmp ugt i32 %28, 99, !dbg !2450
  br i1 %cmp59, label %if.then60, label %if.end66, !dbg !2450

if.then60:                                        ; preds = %if.then54
  %29 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %div, i32 1), !dbg !2451
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !2451
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !2451
  br i1 %31, label %ioc_bb61, label %if.end66, !dbg !2451

ioc_bb61:                                         ; preds = %if.then60
  %32 = zext i32 %div to i64, !dbg !2451
  tail call void @__ioc_report_add_overflow(i32 687, i32 11, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %32, i64 1, i8 5) nounwind, !dbg !2451
  br label %if.end66, !dbg !2451

if.end66:                                         ; preds = %if.then60, %if.then54, %cont52, %ioc_bb61
  %zint.0 = phi i32 [ %30, %ioc_bb61 ], [ %div, %cont52 ], [ %div, %if.then54 ], [ %30, %if.then60 ]
  %zfrac.0 = phi i32 [ 0, %ioc_bb61 ], [ %rem, %cont52 ], [ %28, %if.then54 ], [ 0, %if.then60 ]
  %33 = load i8** %data19, align 4, !dbg !2453, !tbaa !1976
  %call68 = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %33, i8* getelementptr inbounds ([10 x i8]* @.str17, i32 0, i32 0), i32 %zint.0, i32 %zfrac.0) nounwind, !dbg !2453
  %34 = load i8** %data19, align 4, !dbg !2453, !tbaa !1976
  %sub.ptr.lhs.cast = ptrtoint i8* %call68 to i32, !dbg !2453
  %sub.ptr.rhs.cast = ptrtoint i8* %34 to i32, !dbg !2453
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2453
  %35 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2453
  br i1 %35, label %cont71, label %ioc_bb70, !dbg !2453

ioc_bb70:                                         ; preds = %if.end66
  %36 = sext i32 %sub.ptr.sub to i64, !dbg !2453
  tail call void @__ioc_report_conversion(i32 691, i32 14, i8* getelementptr inbounds ([47 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @13, i32 0, i32 0), i64 %36, i8 1) nounwind, !dbg !2453
  br label %cont71, !dbg !2453

cont71:                                           ; preds = %ioc_bb70, %if.end66
  %bf.value = and i32 %sub.ptr.sub, 268435455, !dbg !2453
  %37 = load i32* %0, align 4, !dbg !2453
  %38 = and i32 %37, -268435456, !dbg !2453
  %39 = or i32 %38, %bf.value, !dbg !2453
  store i32 %39, i32* %0, align 4, !dbg !2453
  br label %return, !dbg !2454

return:                                           ; preds = %if.end, %cont71, %cont10
  %retval.0 = phi i32 [ 0, %cont10 ], [ 0, %cont71 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2455
}

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare i8* @ngx_sprintf(i8*, i8*, ...)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_gzip_filter_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1859} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !469, metadata !479, metadata !530, metadata !538, metadata !544, metadata !1707, metadata !1717, metadata !1726, metadata !1736, metadata !1751, metadata !1758, metadata !1763, metadata !1771, metadata !1778, metadata !1792, metadata !1808, metadata !1816, metadata !1825, metadata !1849}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_hash", metadata !"ngx_http_gzip_hash", metadata !"", metadata !6, i32 793, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_gzip_hash, null, null, metadata !459, i32 794} ; [ DW_TAG_subprogram ] [line 793] [local] [def] [scope 794] [ngx_http_gzip_hash]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_gzip_filter_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!10 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!12 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !13, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!13 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !13, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17, metadata !202, metadata !429, metadata !430, metadata !431, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !458}
!16 = metadata !{i32 786445, metadata !14, metadata !"name", metadata !13, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!17 = metadata !{i32 786445, metadata !14, metadata !"args", metadata !13, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!18 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!19 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !13, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!20 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !21, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !22, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!21 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!22 = metadata !{metadata !23, metadata !25, metadata !29, metadata !32, metadata !33}
!23 = metadata !{i32 786445, metadata !20, metadata !"elts", metadata !21, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!25 = metadata !{i32 786445, metadata !20, metadata !"nelts", metadata !21, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!26 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !13, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!27 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !13, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!28 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!29 = metadata !{i32 786445, metadata !20, metadata !"size", metadata !21, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!30 = metadata !{i32 786454, null, metadata !"size_t", metadata !31, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!31 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 786445, metadata !20, metadata !"nalloc", metadata !21, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!33 = metadata !{i32 786445, metadata !20, metadata !"pool", metadata !21, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!34 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!35 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !21, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!36 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !37, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!37 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!38 = metadata !{metadata !39, metadata !53, metadata !54, metadata !55, metadata !182, metadata !189, metadata !201}
!39 = metadata !{i32 786445, metadata !36, metadata !"d", metadata !37, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!40 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !37, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !41} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!41 = metadata !{i32 786451, null, metadata !"", metadata !37, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!42 = metadata !{metadata !43, metadata !48, metadata !49, metadata !52}
!43 = metadata !{i32 786445, metadata !41, metadata !"last", metadata !37, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!45 = metadata !{i32 786454, null, metadata !"u_char", metadata !31, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!46 = metadata !{i32 786454, null, metadata !"__u_char", metadata !31, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!47 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!48 = metadata !{i32 786445, metadata !41, metadata !"end", metadata !37, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!49 = metadata !{i32 786445, metadata !41, metadata !"next", metadata !37, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!50 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!51 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !37, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !36} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!52 = metadata !{i32 786445, metadata !41, metadata !"failed", metadata !37, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!53 = metadata !{i32 786445, metadata !36, metadata !"max", metadata !37, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!54 = metadata !{i32 786445, metadata !36, metadata !"current", metadata !37, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !50} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!55 = metadata !{i32 786445, metadata !36, metadata !"chain", metadata !37, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!56 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !57} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!57 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !37, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!58 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !59, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!59 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!60 = metadata !{metadata !61, metadata !179}
!61 = metadata !{i32 786445, metadata !58, metadata !"buf", metadata !59, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!62 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !63} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!63 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !59, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !64} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!64 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !59, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !65, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !67, metadata !68, metadata !73, metadata !74, metadata !75, metadata !76, metadata !78, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178}
!66 = metadata !{i32 786445, metadata !64, metadata !"pos", metadata !59, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!67 = metadata !{i32 786445, metadata !64, metadata !"last", metadata !59, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!68 = metadata !{i32 786445, metadata !64, metadata !"file_pos", metadata !59, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !69} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!69 = metadata !{i32 786454, null, metadata !"off_t", metadata !59, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!70 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !59, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!71 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !59, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!72 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!73 = metadata !{i32 786445, metadata !64, metadata !"file_last", metadata !59, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!74 = metadata !{i32 786445, metadata !64, metadata !"start", metadata !59, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!75 = metadata !{i32 786445, metadata !64, metadata !"end", metadata !59, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!76 = metadata !{i32 786445, metadata !64, metadata !"tag", metadata !59, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!77 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !59, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!78 = metadata !{i32 786445, metadata !64, metadata !"file", metadata !59, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !79} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!79 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!80 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !59, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !81} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!81 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !82, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!82 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!83 = metadata !{metadata !84, metadata !87, metadata !93, metadata !134, metadata !135, metadata !136, metadata !164, metadata !165}
!84 = metadata !{i32 786445, metadata !81, metadata !"fd", metadata !82, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!85 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !82, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!86 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!87 = metadata !{i32 786445, metadata !81, metadata !"name", metadata !82, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!88 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !13, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !89} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!89 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!90 = metadata !{metadata !91, metadata !92}
!91 = metadata !{i32 786445, metadata !89, metadata !"len", metadata !31, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!92 = metadata !{i32 786445, metadata !89, metadata !"data", metadata !31, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!93 = metadata !{i32 786445, metadata !81, metadata !"info", metadata !82, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !94} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!94 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !82, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!95 = metadata !{i32 786451, null, metadata !"stat", metadata !96, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!96 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!97 = metadata !{metadata !98, metadata !102, metadata !104, metadata !107, metadata !109, metadata !111, metadata !113, metadata !115, metadata !116, metadata !117, metadata !118, metadata !121, metadata !123, metadata !130, metadata !131, metadata !132}
!98 = metadata !{i32 786445, metadata !95, metadata !"st_dev", metadata !96, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !99} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!99 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !96, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!100 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !96, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!101 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!102 = metadata !{i32 786445, metadata !95, metadata !"__pad1", metadata !96, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !103} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!103 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!104 = metadata !{i32 786445, metadata !95, metadata !"__st_ino", metadata !96, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !105} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!105 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !96, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!106 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!107 = metadata !{i32 786445, metadata !95, metadata !"st_mode", metadata !96, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !108} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!108 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !96, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!109 = metadata !{i32 786445, metadata !95, metadata !"st_nlink", metadata !96, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !110} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!110 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !96, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!111 = metadata !{i32 786445, metadata !95, metadata !"st_uid", metadata !96, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !112} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!112 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !96, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!113 = metadata !{i32 786445, metadata !95, metadata !"st_gid", metadata !96, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !114} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!114 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !96, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!115 = metadata !{i32 786445, metadata !95, metadata !"st_rdev", metadata !96, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !99} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!116 = metadata !{i32 786445, metadata !95, metadata !"__pad2", metadata !96, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !103} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!117 = metadata !{i32 786445, metadata !95, metadata !"st_size", metadata !96, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !70} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!118 = metadata !{i32 786445, metadata !95, metadata !"st_blksize", metadata !96, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !119} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!119 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !96, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!120 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!121 = metadata !{i32 786445, metadata !95, metadata !"st_blocks", metadata !96, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !122} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!122 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !96, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!123 = metadata !{i32 786445, metadata !95, metadata !"st_atim", metadata !96, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !124} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!124 = metadata !{i32 786451, null, metadata !"timespec", metadata !125, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !126, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!125 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!126 = metadata !{metadata !127, metadata !129}
!127 = metadata !{i32 786445, metadata !124, metadata !"tv_sec", metadata !125, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !128} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!128 = metadata !{i32 786454, null, metadata !"__time_t", metadata !125, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!129 = metadata !{i32 786445, metadata !124, metadata !"tv_nsec", metadata !125, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !120} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!130 = metadata !{i32 786445, metadata !95, metadata !"st_mtim", metadata !96, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !124} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!131 = metadata !{i32 786445, metadata !95, metadata !"st_ctim", metadata !96, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !124} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!132 = metadata !{i32 786445, metadata !95, metadata !"st_ino", metadata !96, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !133} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!133 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !96, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!134 = metadata !{i32 786445, metadata !81, metadata !"offset", metadata !82, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!135 = metadata !{i32 786445, metadata !81, metadata !"sys_offset", metadata !82, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !69} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!136 = metadata !{i32 786445, metadata !81, metadata !"log", metadata !82, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!137 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !138} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!138 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !82, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!139 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !140, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!140 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!141 = metadata !{metadata !142, metadata !143, metadata !153, metadata !155, metadata !162, metadata !163}
!142 = metadata !{i32 786445, metadata !139, metadata !"log_level", metadata !140, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!143 = metadata !{i32 786445, metadata !139, metadata !"file", metadata !140, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !144} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!144 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !145} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!145 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !140, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !146} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!146 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !13, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !151, metadata !152}
!148 = metadata !{i32 786445, metadata !146, metadata !"fd", metadata !13, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!149 = metadata !{i32 786445, metadata !146, metadata !"name", metadata !13, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!150 = metadata !{i32 786445, metadata !146, metadata !"buffer", metadata !13, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!151 = metadata !{i32 786445, metadata !146, metadata !"pos", metadata !13, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!152 = metadata !{i32 786445, metadata !146, metadata !"last", metadata !13, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!153 = metadata !{i32 786445, metadata !139, metadata !"connection", metadata !140, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !154} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!154 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !140, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!155 = metadata !{i32 786445, metadata !139, metadata !"handler", metadata !140, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !156} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!156 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !140, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!157 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !158} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!159 = metadata !{metadata !44, metadata !160, metadata !44, metadata !30}
!160 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!161 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !140, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!162 = metadata !{i32 786445, metadata !139, metadata !"data", metadata !140, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!163 = metadata !{i32 786445, metadata !139, metadata !"action", metadata !140, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!164 = metadata !{i32 786445, metadata !81, metadata !"valid_info", metadata !82, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!165 = metadata !{i32 786445, metadata !81, metadata !"directio", metadata !82, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!166 = metadata !{i32 786445, metadata !64, metadata !"shadow", metadata !59, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !62} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!167 = metadata !{i32 786445, metadata !64, metadata !"temporary", metadata !59, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!168 = metadata !{i32 786445, metadata !64, metadata !"memory", metadata !59, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!169 = metadata !{i32 786445, metadata !64, metadata !"mmap", metadata !59, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !28} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!170 = metadata !{i32 786445, metadata !64, metadata !"recycled", metadata !59, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !28} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!171 = metadata !{i32 786445, metadata !64, metadata !"in_file", metadata !59, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !28} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!172 = metadata !{i32 786445, metadata !64, metadata !"flush", metadata !59, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !28} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!173 = metadata !{i32 786445, metadata !64, metadata !"sync", metadata !59, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !28} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!174 = metadata !{i32 786445, metadata !64, metadata !"last_buf", metadata !59, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !28} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!175 = metadata !{i32 786445, metadata !64, metadata !"last_in_chain", metadata !59, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !28} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!176 = metadata !{i32 786445, metadata !64, metadata !"last_shadow", metadata !59, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !28} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!177 = metadata !{i32 786445, metadata !64, metadata !"temp_file", metadata !59, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!178 = metadata !{i32 786445, metadata !64, metadata !"num", metadata !59, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!179 = metadata !{i32 786445, metadata !58, metadata !"next", metadata !59, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !180} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!180 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!181 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !59, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!182 = metadata !{i32 786445, metadata !36, metadata !"large", metadata !37, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !183} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!184 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !37, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !185} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!185 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !37, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!186 = metadata !{metadata !187, metadata !188}
!187 = metadata !{i32 786445, metadata !185, metadata !"next", metadata !37, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !183} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!188 = metadata !{i32 786445, metadata !185, metadata !"alloc", metadata !37, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!189 = metadata !{i32 786445, metadata !36, metadata !"cleanup", metadata !37, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !190} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!190 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !191} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!191 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !37, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !192} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!192 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !37, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!193 = metadata !{metadata !194, metadata !199, metadata !200}
!194 = metadata !{i32 786445, metadata !192, metadata !"handler", metadata !37, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !195} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!195 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !37, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!196 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !197} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{null, metadata !24}
!199 = metadata !{i32 786445, metadata !192, metadata !"data", metadata !37, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!200 = metadata !{i32 786445, metadata !192, metadata !"next", metadata !37, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !190} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!201 = metadata !{i32 786445, metadata !36, metadata !"log", metadata !37, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!202 = metadata !{i32 786445, metadata !14, metadata !"cycle", metadata !13, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !203} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!203 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!204 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !13, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!205 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !206, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!206 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!207 = metadata !{metadata !208, metadata !212, metadata !213, metadata !214, metadata !215, metadata !392, metadata !393, metadata !394, metadata !395, metadata !396, metadata !397, metadata !414, metadata !415, metadata !416, metadata !417, metadata !418, metadata !419, metadata !420, metadata !423, metadata !424, metadata !425, metadata !426, metadata !427, metadata !428}
!208 = metadata !{i32 786445, metadata !205, metadata !"conf_ctx", metadata !206, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !209} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!209 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !210} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!210 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!211 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!212 = metadata !{i32 786445, metadata !205, metadata !"pool", metadata !206, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!213 = metadata !{i32 786445, metadata !205, metadata !"log", metadata !206, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!214 = metadata !{i32 786445, metadata !205, metadata !"new_log", metadata !206, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !138} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!215 = metadata !{i32 786445, metadata !205, metadata !"files", metadata !206, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !216} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!216 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!217 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!218 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !206, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!219 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !220, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !221, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!220 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!221 = metadata !{metadata !222, metadata !223, metadata !278, metadata !279, metadata !281, metadata !290, metadata !292, metadata !297, metadata !302, metadata !359, metadata !360, metadata !361, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !376, metadata !377, metadata !378, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391}
!222 = metadata !{i32 786445, metadata !219, metadata !"data", metadata !220, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!223 = metadata !{i32 786445, metadata !219, metadata !"read", metadata !220, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !224} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!224 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !225} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!225 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !220, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !226} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!226 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !227, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !228, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!227 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!228 = metadata !{metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !256, metadata !257, metadata !258, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276}
!229 = metadata !{i32 786445, metadata !226, metadata !"data", metadata !227, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!230 = metadata !{i32 786445, metadata !226, metadata !"write", metadata !227, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!231 = metadata !{i32 786445, metadata !226, metadata !"accept", metadata !227, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !28} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!232 = metadata !{i32 786445, metadata !226, metadata !"instance", metadata !227, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !28} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!233 = metadata !{i32 786445, metadata !226, metadata !"active", metadata !227, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !28} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!234 = metadata !{i32 786445, metadata !226, metadata !"disabled", metadata !227, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !28} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!235 = metadata !{i32 786445, metadata !226, metadata !"ready", metadata !227, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !28} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!236 = metadata !{i32 786445, metadata !226, metadata !"oneshot", metadata !227, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !28} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!237 = metadata !{i32 786445, metadata !226, metadata !"complete", metadata !227, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !28} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!238 = metadata !{i32 786445, metadata !226, metadata !"eof", metadata !227, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !28} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!239 = metadata !{i32 786445, metadata !226, metadata !"error", metadata !227, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!240 = metadata !{i32 786445, metadata !226, metadata !"timedout", metadata !227, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !28} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!241 = metadata !{i32 786445, metadata !226, metadata !"timer_set", metadata !227, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !28} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!242 = metadata !{i32 786445, metadata !226, metadata !"delayed", metadata !227, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !28} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!243 = metadata !{i32 786445, metadata !226, metadata !"read_discarded", metadata !227, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !28} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!244 = metadata !{i32 786445, metadata !226, metadata !"unexpected_eof", metadata !227, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !28} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!245 = metadata !{i32 786445, metadata !226, metadata !"deferred_accept", metadata !227, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !28} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!246 = metadata !{i32 786445, metadata !226, metadata !"pending_eof", metadata !227, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !28} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!247 = metadata !{i32 786445, metadata !226, metadata !"posted_ready", metadata !227, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !28} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!248 = metadata !{i32 786445, metadata !226, metadata !"available", metadata !227, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !28} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!249 = metadata !{i32 786445, metadata !226, metadata !"handler", metadata !227, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !250} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!250 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !227, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!251 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !252} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!253 = metadata !{null, metadata !254}
!254 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!255 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !227, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !226} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!256 = metadata !{i32 786445, metadata !226, metadata !"index", metadata !227, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!257 = metadata !{i32 786445, metadata !226, metadata !"log", metadata !227, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!258 = metadata !{i32 786445, metadata !226, metadata !"timer", metadata !227, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !259} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!259 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !227, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !260} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!260 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !261, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!261 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!262 = metadata !{metadata !263, metadata !265, metadata !268, metadata !269, metadata !270, metadata !271}
!263 = metadata !{i32 786445, metadata !260, metadata !"key", metadata !261, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !264} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!264 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !261, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!265 = metadata !{i32 786445, metadata !260, metadata !"left", metadata !261, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!266 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !267} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!267 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !261, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !260} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!268 = metadata !{i32 786445, metadata !260, metadata !"right", metadata !261, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !266} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!269 = metadata !{i32 786445, metadata !260, metadata !"parent", metadata !261, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !266} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!270 = metadata !{i32 786445, metadata !260, metadata !"color", metadata !261, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !45} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!271 = metadata !{i32 786445, metadata !260, metadata !"data", metadata !261, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !45} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!272 = metadata !{i32 786445, metadata !226, metadata !"closed", metadata !227, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!273 = metadata !{i32 786445, metadata !226, metadata !"channel", metadata !227, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !28} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!274 = metadata !{i32 786445, metadata !226, metadata !"resolver", metadata !227, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !28} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!275 = metadata !{i32 786445, metadata !226, metadata !"next", metadata !227, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !254} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!276 = metadata !{i32 786445, metadata !226, metadata !"prev", metadata !227, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !277} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!277 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!278 = metadata !{i32 786445, metadata !219, metadata !"write", metadata !220, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !224} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!279 = metadata !{i32 786445, metadata !219, metadata !"fd", metadata !220, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !280} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!280 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !220, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!281 = metadata !{i32 786445, metadata !219, metadata !"recv", metadata !220, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !282} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!282 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !220, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !283} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!283 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !284} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!284 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!285 = metadata !{metadata !286, metadata !288, metadata !44, metadata !30}
!286 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !220, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !287} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!287 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !220, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!288 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !289} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!289 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !220, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !219} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!290 = metadata !{i32 786445, metadata !219, metadata !"send", metadata !220, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !291} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!291 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !220, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !283} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!292 = metadata !{i32 786445, metadata !219, metadata !"recv_chain", metadata !220, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !293} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!293 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !220, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !294} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!294 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !295} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!295 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !296, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!296 = metadata !{metadata !286, metadata !288, metadata !56}
!297 = metadata !{i32 786445, metadata !219, metadata !"send_chain", metadata !220, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !298} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!298 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !220, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !299} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!299 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !300} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!300 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !301, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!301 = metadata !{metadata !56, metadata !288, metadata !56, metadata !69}
!302 = metadata !{i32 786445, metadata !219, metadata !"listening", metadata !220, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !303} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!303 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !304} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!304 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !220, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !305} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!305 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !220, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!306 = metadata !{metadata !307, metadata !308, metadata !319, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358}
!307 = metadata !{i32 786445, metadata !305, metadata !"fd", metadata !220, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !280} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!308 = metadata !{i32 786445, metadata !305, metadata !"sockaddr", metadata !220, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!309 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !310} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!310 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !311, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!311 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!312 = metadata !{metadata !313, metadata !315}
!313 = metadata !{i32 786445, metadata !310, metadata !"sa_family", metadata !311, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !314} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!314 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !311, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!315 = metadata !{i32 786445, metadata !310, metadata !"sa_data", metadata !311, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !316} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!316 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !10, metadata !317, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!317 = metadata !{metadata !318}
!318 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!319 = metadata !{i32 786445, metadata !305, metadata !"socklen", metadata !220, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!320 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !220, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !321} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!321 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !220, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!322 = metadata !{i32 786445, metadata !305, metadata !"addr_text_max_len", metadata !220, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!323 = metadata !{i32 786445, metadata !305, metadata !"addr_text", metadata !220, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!324 = metadata !{i32 786445, metadata !305, metadata !"type", metadata !220, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !86} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!325 = metadata !{i32 786445, metadata !305, metadata !"backlog", metadata !220, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !86} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!326 = metadata !{i32 786445, metadata !305, metadata !"rcvbuf", metadata !220, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!327 = metadata !{i32 786445, metadata !305, metadata !"sndbuf", metadata !220, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!328 = metadata !{i32 786445, metadata !305, metadata !"keepidle", metadata !220, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !86} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!329 = metadata !{i32 786445, metadata !305, metadata !"keepintvl", metadata !220, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !86} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!330 = metadata !{i32 786445, metadata !305, metadata !"keepcnt", metadata !220, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !86} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!331 = metadata !{i32 786445, metadata !305, metadata !"handler", metadata !220, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !332} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!332 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !220, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !333} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!333 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !334} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!334 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !335, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!335 = metadata !{null, metadata !288}
!336 = metadata !{i32 786445, metadata !305, metadata !"servers", metadata !220, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !24} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!337 = metadata !{i32 786445, metadata !305, metadata !"log", metadata !220, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!338 = metadata !{i32 786445, metadata !305, metadata !"logp", metadata !220, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !137} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!339 = metadata !{i32 786445, metadata !305, metadata !"pool_size", metadata !220, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !30} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!340 = metadata !{i32 786445, metadata !305, metadata !"post_accept_buffer_size", metadata !220, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!341 = metadata !{i32 786445, metadata !305, metadata !"post_accept_timeout", metadata !220, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !342} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!342 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !220, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !264} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!343 = metadata !{i32 786445, metadata !305, metadata !"previous", metadata !220, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !303} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!344 = metadata !{i32 786445, metadata !305, metadata !"connection", metadata !220, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !288} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!345 = metadata !{i32 786445, metadata !305, metadata !"open", metadata !220, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !28} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!346 = metadata !{i32 786445, metadata !305, metadata !"remain", metadata !220, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !28} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!347 = metadata !{i32 786445, metadata !305, metadata !"ignore", metadata !220, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!348 = metadata !{i32 786445, metadata !305, metadata !"bound", metadata !220, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !28} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!349 = metadata !{i32 786445, metadata !305, metadata !"inherited", metadata !220, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !28} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!350 = metadata !{i32 786445, metadata !305, metadata !"nonblocking_accept", metadata !220, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !28} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!351 = metadata !{i32 786445, metadata !305, metadata !"listen", metadata !220, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!352 = metadata !{i32 786445, metadata !305, metadata !"nonblocking", metadata !220, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !28} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!353 = metadata !{i32 786445, metadata !305, metadata !"shared", metadata !220, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !28} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!354 = metadata !{i32 786445, metadata !305, metadata !"addr_ntop", metadata !220, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !28} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!355 = metadata !{i32 786445, metadata !305, metadata !"keepalive", metadata !220, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!356 = metadata !{i32 786445, metadata !305, metadata !"deferred_accept", metadata !220, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !28} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!357 = metadata !{i32 786445, metadata !305, metadata !"delete_deferred", metadata !220, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !28} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!358 = metadata !{i32 786445, metadata !305, metadata !"add_deferred", metadata !220, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !28} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!359 = metadata !{i32 786445, metadata !219, metadata !"sent", metadata !220, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !69} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!360 = metadata !{i32 786445, metadata !219, metadata !"log", metadata !220, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!361 = metadata !{i32 786445, metadata !219, metadata !"pool", metadata !220, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!362 = metadata !{i32 786445, metadata !219, metadata !"sockaddr", metadata !220, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!363 = metadata !{i32 786445, metadata !219, metadata !"socklen", metadata !220, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!364 = metadata !{i32 786445, metadata !219, metadata !"addr_text", metadata !220, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !88} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!365 = metadata !{i32 786445, metadata !219, metadata !"local_sockaddr", metadata !220, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !309} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!366 = metadata !{i32 786445, metadata !219, metadata !"buffer", metadata !220, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !62} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!367 = metadata !{i32 786445, metadata !219, metadata !"queue", metadata !220, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!368 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !220, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!369 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !370, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!370 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!371 = metadata !{metadata !372, metadata !375}
!372 = metadata !{i32 786445, metadata !369, metadata !"prev", metadata !370, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !373} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!373 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !374} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!374 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !370, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !369} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!375 = metadata !{i32 786445, metadata !369, metadata !"next", metadata !370, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !373} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!376 = metadata !{i32 786445, metadata !219, metadata !"number", metadata !220, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !154} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!377 = metadata !{i32 786445, metadata !219, metadata !"requests", metadata !220, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !26} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!378 = metadata !{i32 786445, metadata !219, metadata !"buffered", metadata !220, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!379 = metadata !{i32 786445, metadata !219, metadata !"log_error", metadata !220, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!380 = metadata !{i32 786445, metadata !219, metadata !"single_connection", metadata !220, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !28} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!381 = metadata !{i32 786445, metadata !219, metadata !"unexpected_eof", metadata !220, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !28} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!382 = metadata !{i32 786445, metadata !219, metadata !"timedout", metadata !220, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !28} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!383 = metadata !{i32 786445, metadata !219, metadata !"error", metadata !220, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!384 = metadata !{i32 786445, metadata !219, metadata !"destroyed", metadata !220, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !28} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!385 = metadata !{i32 786445, metadata !219, metadata !"idle", metadata !220, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !28} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!386 = metadata !{i32 786445, metadata !219, metadata !"reusable", metadata !220, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !28} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!387 = metadata !{i32 786445, metadata !219, metadata !"close", metadata !220, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !28} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!388 = metadata !{i32 786445, metadata !219, metadata !"sendfile", metadata !220, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!389 = metadata !{i32 786445, metadata !219, metadata !"sndlowat", metadata !220, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !28} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!390 = metadata !{i32 786445, metadata !219, metadata !"tcp_nodelay", metadata !220, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !28} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!391 = metadata !{i32 786445, metadata !219, metadata !"tcp_nopush", metadata !220, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !28} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!392 = metadata !{i32 786445, metadata !205, metadata !"free_connections", metadata !206, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !217} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!393 = metadata !{i32 786445, metadata !205, metadata !"free_connection_n", metadata !206, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!394 = metadata !{i32 786445, metadata !205, metadata !"reusable_connections_queue", metadata !206, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !368} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!395 = metadata !{i32 786445, metadata !205, metadata !"listening", metadata !206, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !19} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!396 = metadata !{i32 786445, metadata !205, metadata !"pathes", metadata !206, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !19} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!397 = metadata !{i32 786445, metadata !205, metadata !"open_files", metadata !206, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !398} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!398 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !206, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !399} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!399 = metadata !{i32 786451, null, metadata !"", metadata !400, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!400 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!401 = metadata !{metadata !402, metadata !410, metadata !411, metadata !412, metadata !413}
!402 = metadata !{i32 786445, metadata !399, metadata !"last", metadata !400, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !403} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!403 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !404} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!404 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !400, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !405} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!405 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !400, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!406 = metadata !{metadata !407, metadata !408, metadata !409}
!407 = metadata !{i32 786445, metadata !405, metadata !"elts", metadata !400, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!408 = metadata !{i32 786445, metadata !405, metadata !"nelts", metadata !400, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!409 = metadata !{i32 786445, metadata !405, metadata !"next", metadata !400, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !403} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!410 = metadata !{i32 786445, metadata !399, metadata !"part", metadata !400, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !404} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!411 = metadata !{i32 786445, metadata !399, metadata !"size", metadata !400, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!412 = metadata !{i32 786445, metadata !399, metadata !"nalloc", metadata !400, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!413 = metadata !{i32 786445, metadata !399, metadata !"pool", metadata !400, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!414 = metadata !{i32 786445, metadata !205, metadata !"shared_memory", metadata !206, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !398} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!415 = metadata !{i32 786445, metadata !205, metadata !"connection_n", metadata !206, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!416 = metadata !{i32 786445, metadata !205, metadata !"files_n", metadata !206, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !26} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!417 = metadata !{i32 786445, metadata !205, metadata !"connections", metadata !206, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !217} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!418 = metadata !{i32 786445, metadata !205, metadata !"read_events", metadata !206, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !224} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!419 = metadata !{i32 786445, metadata !205, metadata !"write_events", metadata !206, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !224} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!420 = metadata !{i32 786445, metadata !205, metadata !"old_cycle", metadata !206, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !421} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!421 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !422} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!422 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !206, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !205} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!423 = metadata !{i32 786445, metadata !205, metadata !"conf_file", metadata !206, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !88} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!424 = metadata !{i32 786445, metadata !205, metadata !"conf_param", metadata !206, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !88} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!425 = metadata !{i32 786445, metadata !205, metadata !"conf_prefix", metadata !206, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !88} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!426 = metadata !{i32 786445, metadata !205, metadata !"prefix", metadata !206, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !88} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!427 = metadata !{i32 786445, metadata !205, metadata !"lock_file", metadata !206, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !88} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!428 = metadata !{i32 786445, metadata !205, metadata !"hostname", metadata !206, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !88} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!429 = metadata !{i32 786445, metadata !14, metadata !"pool", metadata !13, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!430 = metadata !{i32 786445, metadata !14, metadata !"temp_pool", metadata !13, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!431 = metadata !{i32 786445, metadata !14, metadata !"conf_file", metadata !13, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !432} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!432 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !433} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!433 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !13, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !434} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!434 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !435, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!435 = metadata !{metadata !436, metadata !437, metadata !438}
!436 = metadata !{i32 786445, metadata !434, metadata !"file", metadata !13, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!437 = metadata !{i32 786445, metadata !434, metadata !"buffer", metadata !13, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !62} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!438 = metadata !{i32 786445, metadata !434, metadata !"line", metadata !13, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!439 = metadata !{i32 786445, metadata !14, metadata !"log", metadata !13, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!440 = metadata !{i32 786445, metadata !14, metadata !"ctx", metadata !13, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!441 = metadata !{i32 786445, metadata !14, metadata !"module_type", metadata !13, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!442 = metadata !{i32 786445, metadata !14, metadata !"cmd_type", metadata !13, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!443 = metadata !{i32 786445, metadata !14, metadata !"handler", metadata !13, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !444} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!444 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !13, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !445} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!445 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !446} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!447 = metadata !{metadata !9, metadata !11, metadata !448, metadata !24}
!448 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !449} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!449 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !13, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !450} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!450 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !13, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!451 = metadata !{metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457}
!452 = metadata !{i32 786445, metadata !450, metadata !"name", metadata !13, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!453 = metadata !{i32 786445, metadata !450, metadata !"type", metadata !13, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!454 = metadata !{i32 786445, metadata !450, metadata !"set", metadata !13, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !445} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!455 = metadata !{i32 786445, metadata !450, metadata !"conf", metadata !13, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!456 = metadata !{i32 786445, metadata !450, metadata !"offset", metadata !13, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!457 = metadata !{i32 786445, metadata !450, metadata !"post", metadata !13, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!458 = metadata !{i32 786445, metadata !14, metadata !"handler_conf", metadata !13, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !9} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!459 = metadata !{metadata !460}
!460 = metadata !{metadata !461, metadata !462, metadata !463, metadata !464, metadata !467, metadata !468}
!461 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16778009, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 793]
!462 = metadata !{i32 786689, metadata !5, metadata !"post", metadata !6, i32 33555225, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [post] [line 793]
!463 = metadata !{i32 786689, metadata !5, metadata !"data", metadata !6, i32 50332441, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 793]
!464 = metadata !{i32 786688, metadata !465, metadata !"np", metadata !6, i32 795, metadata !466, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 795]
!465 = metadata !{i32 786443, metadata !5, i32 794, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!466 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from size_t]
!467 = metadata !{i32 786688, metadata !465, metadata !"memlevel", metadata !6, i32 796, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [memlevel] [line 796]
!468 = metadata !{i32 786688, metadata !465, metadata !"hsize", metadata !6, i32 797, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize] [line 797]
!469 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_window", metadata !"ngx_http_gzip_window", metadata !"", metadata !6, i32 777, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_gzip_window, null, null, metadata !470, i32 778} ; [ DW_TAG_subprogram ] [line 777] [local] [def] [scope 778] [ngx_http_gzip_window]
!470 = metadata !{metadata !471}
!471 = metadata !{metadata !472, metadata !473, metadata !474, metadata !475, metadata !477, metadata !478}
!472 = metadata !{i32 786689, metadata !469, metadata !"cf", metadata !6, i32 16777993, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 777]
!473 = metadata !{i32 786689, metadata !469, metadata !"post", metadata !6, i32 33555209, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [post] [line 777]
!474 = metadata !{i32 786689, metadata !469, metadata !"data", metadata !6, i32 50332425, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 777]
!475 = metadata !{i32 786688, metadata !476, metadata !"np", metadata !6, i32 779, metadata !466, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [np] [line 779]
!476 = metadata !{i32 786443, metadata !469, i32 778, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!477 = metadata !{i32 786688, metadata !476, metadata !"wbits", metadata !6, i32 780, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wbits] [line 780]
!478 = metadata !{i32 786688, metadata !476, metadata !"wsize", metadata !6, i32 781, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wsize] [line 781]
!479 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_merge_conf", metadata !"ngx_http_gzip_merge_conf", metadata !"", metadata !6, i32 719, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_gzip_merge_conf, null, null, metadata !480, i32 720} ; [ DW_TAG_subprogram ] [line 719] [local] [def] [scope 720] [ngx_http_gzip_merge_conf]
!480 = metadata !{metadata !481}
!481 = metadata !{metadata !482, metadata !483, metadata !484, metadata !485, metadata !529}
!482 = metadata !{i32 786689, metadata !479, metadata !"cf", metadata !6, i32 16777935, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 719]
!483 = metadata !{i32 786689, metadata !479, metadata !"parent", metadata !6, i32 33555151, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 719]
!484 = metadata !{i32 786689, metadata !479, metadata !"child", metadata !6, i32 50332367, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 719]
!485 = metadata !{i32 786688, metadata !486, metadata !"prev", metadata !6, i32 721, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 721]
!486 = metadata !{i32 786443, metadata !479, i32 720, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!487 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_gzip_conf_t]
!488 = metadata !{i32 786454, null, metadata !"ngx_http_gzip_conf_t", metadata !6, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !489} ; [ DW_TAG_typedef ] [ngx_http_gzip_conf_t] [line 19, size 0, align 0, offset 0] [from ]
!489 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 9, i64 384, i64 32, i32 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 9, size 384, align 32, offset 0] [from ]
!490 = metadata !{metadata !491, metadata !495, metadata !496, metadata !516, metadata !523, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528}
!491 = metadata !{i32 786445, metadata !489, metadata !"enable", metadata !6, i32 10, i64 32, i64 32, i64 0, i32 0, metadata !492} ; [ DW_TAG_member ] [enable] [line 10, size 32, align 32, offset 0] [from ngx_flag_t]
!492 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !6, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!493 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !494} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!494 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!495 = metadata !{i32 786445, metadata !489, metadata !"no_buffer", metadata !6, i32 11, i64 32, i64 32, i64 32, i32 0, metadata !492} ; [ DW_TAG_member ] [no_buffer] [line 11, size 32, align 32, offset 32] [from ngx_flag_t]
!496 = metadata !{i32 786445, metadata !489, metadata !"types", metadata !6, i32 12, i64 64, i64 32, i64 64, i32 0, metadata !497} ; [ DW_TAG_member ] [types] [line 12, size 64, align 32, offset 64] [from ngx_hash_t]
!497 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !6, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!498 = metadata !{i32 786451, null, metadata !"", metadata !499, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !500, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!499 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!500 = metadata !{metadata !501, metadata !515}
!501 = metadata !{i32 786445, metadata !498, metadata !"buckets", metadata !499, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !502} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!502 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !503} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!503 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!504 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !499, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !505} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!505 = metadata !{i32 786451, null, metadata !"", metadata !499, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !506, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!506 = metadata !{metadata !507, metadata !508, metadata !511}
!507 = metadata !{i32 786445, metadata !505, metadata !"value", metadata !499, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!508 = metadata !{i32 786445, metadata !505, metadata !"len", metadata !499, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !509} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!509 = metadata !{i32 786454, null, metadata !"u_short", metadata !499, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !510} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!510 = metadata !{i32 786454, null, metadata !"__u_short", metadata !499, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!511 = metadata !{i32 786445, metadata !505, metadata !"name", metadata !499, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !512} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!512 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !513, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!513 = metadata !{metadata !514}
!514 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!515 = metadata !{i32 786445, metadata !498, metadata !"size", metadata !499, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!516 = metadata !{i32 786445, metadata !489, metadata !"bufs", metadata !6, i32 13, i64 64, i64 32, i64 128, i32 0, metadata !517} ; [ DW_TAG_member ] [bufs] [line 13, size 64, align 32, offset 128] [from ngx_bufs_t]
!517 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !6, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !518} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!518 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !519, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!519 = metadata !{metadata !520, metadata !522}
!520 = metadata !{i32 786445, metadata !518, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !521} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!521 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!522 = metadata !{i32 786445, metadata !518, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!523 = metadata !{i32 786445, metadata !489, metadata !"postpone_gzipping", metadata !6, i32 14, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_gzipping] [line 14, size 32, align 32, offset 192] [from size_t]
!524 = metadata !{i32 786445, metadata !489, metadata !"level", metadata !6, i32 15, i64 32, i64 32, i64 224, i32 0, metadata !521} ; [ DW_TAG_member ] [level] [line 15, size 32, align 32, offset 224] [from ngx_int_t]
!525 = metadata !{i32 786445, metadata !489, metadata !"wbits", metadata !6, i32 16, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [wbits] [line 16, size 32, align 32, offset 256] [from size_t]
!526 = metadata !{i32 786445, metadata !489, metadata !"memlevel", metadata !6, i32 17, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [memlevel] [line 17, size 32, align 32, offset 288] [from size_t]
!527 = metadata !{i32 786445, metadata !489, metadata !"min_length", metadata !6, i32 18, i64 32, i64 32, i64 320, i32 0, metadata !286} ; [ DW_TAG_member ] [min_length] [line 18, size 32, align 32, offset 320] [from ssize_t]
!528 = metadata !{i32 786445, metadata !489, metadata !"types_keys", metadata !6, i32 19, i64 32, i64 32, i64 352, i32 0, metadata !18} ; [ DW_TAG_member ] [types_keys] [line 19, size 32, align 32, offset 352] [from ]
!529 = metadata !{i32 786688, metadata !486, metadata !"conf", metadata !6, i32 722, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 722]
!530 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_create_conf", metadata !"ngx_http_gzip_create_conf", metadata !"", metadata !6, i32 695, metadata !531, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_gzip_create_conf, null, null, metadata !533, i32 696} ; [ DW_TAG_subprogram ] [line 695] [local] [def] [scope 696] [ngx_http_gzip_create_conf]
!531 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !532, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!532 = metadata !{metadata !24, metadata !11}
!533 = metadata !{metadata !534}
!534 = metadata !{metadata !535, metadata !536}
!535 = metadata !{i32 786689, metadata !530, metadata !"cf", metadata !6, i32 16777911, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 695]
!536 = metadata !{i32 786688, metadata !537, metadata !"conf", metadata !6, i32 697, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 697]
!537 = metadata !{i32 786443, metadata !530, i32 696, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!538 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_init", metadata !"ngx_http_gzip_filter_init", metadata !"", metadata !6, i32 768, metadata !539, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_gzip_filter_init, null, null, metadata !541, i32 769} ; [ DW_TAG_subprogram ] [line 768] [local] [def] [scope 769] [ngx_http_gzip_filter_init]
!539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!540 = metadata !{metadata !521, metadata !11}
!541 = metadata !{metadata !542}
!542 = metadata !{metadata !543}
!543 = metadata !{i32 786689, metadata !538, metadata !"cf", metadata !6, i32 16777984, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 768]
!544 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_body_filter", metadata !"ngx_http_gzip_body_filter", metadata !"", metadata !6, i32 158, metadata !545, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)* @ngx_http_gzip_body_filter, null, null, metadata !1633, i32 159} ; [ DW_TAG_subprogram ] [line 158] [local] [def] [scope 159] [ngx_http_gzip_body_filter]
!545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!546 = metadata !{metadata !521, metadata !547, metadata !56}
!547 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !548} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!548 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !549} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!549 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !550, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !551, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!550 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!551 = metadata !{metadata !552, metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !566, metadata !567, metadata !755, metadata !1156, metadata !1157, metadata !1158, metadata !1159, metadata !1195, metadata !1224, metadata !1236, metadata !1237, metadata !1238, metadata !1239, metadata !1240, metadata !1241, metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246, metadata !1247, metadata !1248, metadata !1249, metadata !1250, metadata !1251, metadata !1259, metadata !1270, metadata !1277, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1518, metadata !1519, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1538, metadata !1543, metadata !1551, metadata !1552, metadata !1553, metadata !1554, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572, metadata !1573, metadata !1574, metadata !1575, metadata !1576, metadata !1577, metadata !1578, metadata !1579, metadata !1580, metadata !1581, metadata !1582, metadata !1583, metadata !1584, metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1589, metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597, metadata !1598, metadata !1599, metadata !1600, metadata !1601, metadata !1602, metadata !1603, metadata !1604, metadata !1605, metadata !1606, metadata !1607, metadata !1608, metadata !1609, metadata !1610, metadata !1614, metadata !1615, metadata !1616, metadata !1617, metadata !1618, metadata !1619, metadata !1620, metadata !1621, metadata !1622, metadata !1623, metadata !1624, metadata !1625, metadata !1626, metadata !1627, metadata !1628, metadata !1629, metadata !1630, metadata !1631, metadata !1632}
!552 = metadata !{i32 786445, metadata !549, metadata !"signature", metadata !550, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !553} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!553 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !550, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!554 = metadata !{i32 786445, metadata !549, metadata !"connection", metadata !550, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!555 = metadata !{i32 786445, metadata !549, metadata !"ctx", metadata !550, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!556 = metadata !{i32 786445, metadata !549, metadata !"main_conf", metadata !550, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!557 = metadata !{i32 786445, metadata !549, metadata !"srv_conf", metadata !550, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!558 = metadata !{i32 786445, metadata !549, metadata !"loc_conf", metadata !550, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!559 = metadata !{i32 786445, metadata !549, metadata !"read_event_handler", metadata !550, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !560} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!560 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !550, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !561} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!561 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !562} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!563 = metadata !{null, metadata !564}
!564 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !565} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!565 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !550, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !549} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!566 = metadata !{i32 786445, metadata !549, metadata !"write_event_handler", metadata !550, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !560} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!567 = metadata !{i32 786445, metadata !549, metadata !"cache", metadata !550, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !568} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!568 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !569} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!569 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !550, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !570} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!570 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !571, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !572, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!571 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!572 = metadata !{metadata !573, metadata !574, metadata !575, metadata !576, metadata !580, metadata !583, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !723, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754}
!573 = metadata !{i32 786445, metadata !570, metadata !"file", metadata !571, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!574 = metadata !{i32 786445, metadata !570, metadata !"keys", metadata !571, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!575 = metadata !{i32 786445, metadata !570, metadata !"crc32", metadata !571, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !553} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!576 = metadata !{i32 786445, metadata !570, metadata !"key", metadata !571, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !577} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!577 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !578, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!578 = metadata !{metadata !579}
!579 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!580 = metadata !{i32 786445, metadata !570, metadata !"uniq", metadata !571, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !581} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!581 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !571, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !582} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!582 = metadata !{i32 786454, null, metadata !"ino_t", metadata !571, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!583 = metadata !{i32 786445, metadata !570, metadata !"valid_sec", metadata !571, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !584} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!584 = metadata !{i32 786454, null, metadata !"time_t", metadata !571, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!585 = metadata !{i32 786445, metadata !570, metadata !"last_modified", metadata !571, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !584} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!586 = metadata !{i32 786445, metadata !570, metadata !"date", metadata !571, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !584} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!587 = metadata !{i32 786445, metadata !570, metadata !"header_start", metadata !571, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!588 = metadata !{i32 786445, metadata !570, metadata !"body_start", metadata !571, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!589 = metadata !{i32 786445, metadata !570, metadata !"length", metadata !571, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!590 = metadata !{i32 786445, metadata !570, metadata !"fs_size", metadata !571, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!591 = metadata !{i32 786445, metadata !570, metadata !"min_uses", metadata !571, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!592 = metadata !{i32 786445, metadata !570, metadata !"error", metadata !571, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!593 = metadata !{i32 786445, metadata !570, metadata !"valid_msec", metadata !571, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!594 = metadata !{i32 786445, metadata !570, metadata !"buf", metadata !571, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!595 = metadata !{i32 786445, metadata !570, metadata !"file_cache", metadata !571, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !596} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!596 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !597} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!597 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !571, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !598} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!598 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !571, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !599, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!599 = metadata !{metadata !600, metadata !623, metadata !670, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699}
!600 = metadata !{i32 786445, metadata !598, metadata !"sh", metadata !571, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !601} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!601 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !602} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!602 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !571, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !603} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!603 = metadata !{i32 786451, null, metadata !"", metadata !571, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !604, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!604 = metadata !{metadata !605, metadata !616, metadata !617, metadata !618, metadata !621, metadata !622}
!605 = metadata !{i32 786445, metadata !603, metadata !"rbtree", metadata !571, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !606} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!606 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !571, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !607} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!607 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !608, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!608 = metadata !{metadata !609, metadata !610, metadata !611}
!609 = metadata !{i32 786445, metadata !607, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!610 = metadata !{i32 786445, metadata !607, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!611 = metadata !{i32 786445, metadata !607, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !612} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!612 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !613} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!613 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !614} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!615 = metadata !{null, metadata !266, metadata !266, metadata !266}
!616 = metadata !{i32 786445, metadata !603, metadata !"sentinel", metadata !571, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!617 = metadata !{i32 786445, metadata !603, metadata !"queue", metadata !571, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!618 = metadata !{i32 786445, metadata !603, metadata !"cold", metadata !571, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !619} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!619 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !571, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !620} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!620 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!621 = metadata !{i32 786445, metadata !603, metadata !"loading", metadata !571, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !619} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!622 = metadata !{i32 786445, metadata !603, metadata !"size", metadata !571, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!623 = metadata !{i32 786445, metadata !598, metadata !"shpool", metadata !571, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !624} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!624 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !625} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!625 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !571, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!626 = metadata !{i32 786451, null, metadata !"", metadata !627, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !628, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!627 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!628 = metadata !{metadata !629, metadata !636, metadata !637, metadata !638, metadata !646, metadata !647, metadata !648, metadata !649, metadata !666, metadata !667, metadata !668, metadata !669}
!629 = metadata !{i32 786445, metadata !626, metadata !"lock", metadata !627, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !630} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!630 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !627, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !631} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!631 = metadata !{i32 786451, null, metadata !"", metadata !632, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !633, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!632 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!633 = metadata !{metadata !634, metadata !635}
!634 = metadata !{i32 786445, metadata !631, metadata !"lock", metadata !632, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !619} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!635 = metadata !{i32 786445, metadata !631, metadata !"wait", metadata !632, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !619} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!636 = metadata !{i32 786445, metadata !626, metadata !"min_size", metadata !627, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!637 = metadata !{i32 786445, metadata !626, metadata !"min_shift", metadata !627, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!638 = metadata !{i32 786445, metadata !626, metadata !"pages", metadata !627, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !639} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!639 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !640} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!640 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !627, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !641} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!641 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !627, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !642, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!642 = metadata !{metadata !643, metadata !644, metadata !645}
!643 = metadata !{i32 786445, metadata !641, metadata !"slab", metadata !627, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!644 = metadata !{i32 786445, metadata !641, metadata !"next", metadata !627, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !639} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!645 = metadata !{i32 786445, metadata !641, metadata !"prev", metadata !627, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!646 = metadata !{i32 786445, metadata !626, metadata !"free", metadata !627, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !640} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!647 = metadata !{i32 786445, metadata !626, metadata !"start", metadata !627, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!648 = metadata !{i32 786445, metadata !626, metadata !"end", metadata !627, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!649 = metadata !{i32 786445, metadata !626, metadata !"mutex", metadata !627, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !650} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!650 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !627, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!651 = metadata !{i32 786451, null, metadata !"", metadata !632, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !652, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!652 = metadata !{metadata !653, metadata !655, metadata !656, metadata !657, metadata !665}
!653 = metadata !{i32 786445, metadata !651, metadata !"lock", metadata !632, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !654} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!654 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !619} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!655 = metadata !{i32 786445, metadata !651, metadata !"wait", metadata !632, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !654} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!656 = metadata !{i32 786445, metadata !651, metadata !"semaphore", metadata !632, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!657 = metadata !{i32 786445, metadata !651, metadata !"sem", metadata !632, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !658} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!658 = metadata !{i32 786454, null, metadata !"sem_t", metadata !632, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !659} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!659 = metadata !{i32 786455, null, metadata !"", metadata !660, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !661, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!660 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!661 = metadata !{metadata !662, metadata !664}
!662 = metadata !{i32 786445, metadata !659, metadata !"__size", metadata !660, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !663} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!663 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !578, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!664 = metadata !{i32 786445, metadata !659, metadata !"__align", metadata !660, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!665 = metadata !{i32 786445, metadata !651, metadata !"spin", metadata !632, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!666 = metadata !{i32 786445, metadata !626, metadata !"log_ctx", metadata !627, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!667 = metadata !{i32 786445, metadata !626, metadata !"zero", metadata !627, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!668 = metadata !{i32 786445, metadata !626, metadata !"data", metadata !627, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!669 = metadata !{i32 786445, metadata !626, metadata !"addr", metadata !627, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!670 = metadata !{i32 786445, metadata !598, metadata !"path", metadata !571, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !671} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!671 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !672} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!672 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !571, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !673} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!673 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !674, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!674 = metadata !{metadata !675, metadata !676, metadata !677, metadata !681, metadata !686, metadata !688, metadata !689, metadata !690}
!675 = metadata !{i32 786445, metadata !673, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!676 = metadata !{i32 786445, metadata !673, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!677 = metadata !{i32 786445, metadata !673, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !678} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!678 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !679, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!679 = metadata !{metadata !680}
!680 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!681 = metadata !{i32 786445, metadata !673, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !682} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!682 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !683} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!683 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !684} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!684 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !685, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!685 = metadata !{metadata !584, metadata !24}
!686 = metadata !{i32 786445, metadata !673, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !687} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!687 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!688 = metadata !{i32 786445, metadata !673, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!689 = metadata !{i32 786445, metadata !673, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!690 = metadata !{i32 786445, metadata !673, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!691 = metadata !{i32 786445, metadata !598, metadata !"max_size", metadata !571, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!692 = metadata !{i32 786445, metadata !598, metadata !"bsize", metadata !571, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!693 = metadata !{i32 786445, metadata !598, metadata !"inactive", metadata !571, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !584} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!694 = metadata !{i32 786445, metadata !598, metadata !"files", metadata !571, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!695 = metadata !{i32 786445, metadata !598, metadata !"loader_files", metadata !571, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!696 = metadata !{i32 786445, metadata !598, metadata !"last", metadata !571, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!697 = metadata !{i32 786445, metadata !598, metadata !"loader_sleep", metadata !571, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!698 = metadata !{i32 786445, metadata !598, metadata !"loader_threshold", metadata !571, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!699 = metadata !{i32 786445, metadata !598, metadata !"shm_zone", metadata !571, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !700} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!700 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !701} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!701 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !571, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !702} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!702 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !703, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!703 = metadata !{metadata !704, metadata !705, metadata !715, metadata !722}
!704 = metadata !{i32 786445, metadata !702, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!705 = metadata !{i32 786445, metadata !702, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !706} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!706 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !707} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!707 = metadata !{i32 786451, null, metadata !"", metadata !708, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !709, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!708 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!709 = metadata !{metadata !710, metadata !711, metadata !712, metadata !713, metadata !714}
!710 = metadata !{i32 786445, metadata !707, metadata !"addr", metadata !708, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!711 = metadata !{i32 786445, metadata !707, metadata !"size", metadata !708, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!712 = metadata !{i32 786445, metadata !707, metadata !"name", metadata !708, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!713 = metadata !{i32 786445, metadata !707, metadata !"log", metadata !708, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!714 = metadata !{i32 786445, metadata !707, metadata !"exists", metadata !708, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!715 = metadata !{i32 786445, metadata !702, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !716} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!716 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !717} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!717 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !718} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!719 = metadata !{metadata !521, metadata !720, metadata !24}
!720 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !721} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!721 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !702} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!722 = metadata !{i32 786445, metadata !702, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!723 = metadata !{i32 786445, metadata !570, metadata !"node", metadata !571, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !724} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!724 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !725} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!725 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !571, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !726} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!726 = metadata !{i32 786451, null, metadata !"", metadata !571, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !727, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!727 = metadata !{metadata !728, metadata !729, metadata !730, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745}
!728 = metadata !{i32 786445, metadata !726, metadata !"node", metadata !571, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!729 = metadata !{i32 786445, metadata !726, metadata !"queue", metadata !571, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!730 = metadata !{i32 786445, metadata !726, metadata !"key", metadata !571, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !731} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!731 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !732, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!732 = metadata !{metadata !733}
!733 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!734 = metadata !{i32 786445, metadata !726, metadata !"count", metadata !571, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!735 = metadata !{i32 786445, metadata !726, metadata !"uses", metadata !571, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!736 = metadata !{i32 786445, metadata !726, metadata !"valid_msec", metadata !571, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!737 = metadata !{i32 786445, metadata !726, metadata !"error", metadata !571, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!738 = metadata !{i32 786445, metadata !726, metadata !"exists", metadata !571, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!739 = metadata !{i32 786445, metadata !726, metadata !"updating", metadata !571, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!740 = metadata !{i32 786445, metadata !726, metadata !"deleting", metadata !571, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!741 = metadata !{i32 786445, metadata !726, metadata !"uniq", metadata !571, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !581} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!742 = metadata !{i32 786445, metadata !726, metadata !"expire", metadata !571, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !584} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!743 = metadata !{i32 786445, metadata !726, metadata !"valid_sec", metadata !571, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !584} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!744 = metadata !{i32 786445, metadata !726, metadata !"body_start", metadata !571, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!745 = metadata !{i32 786445, metadata !726, metadata !"fs_size", metadata !571, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!746 = metadata !{i32 786445, metadata !570, metadata !"lock_timeout", metadata !571, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!747 = metadata !{i32 786445, metadata !570, metadata !"wait_time", metadata !571, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!748 = metadata !{i32 786445, metadata !570, metadata !"wait_event", metadata !571, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!749 = metadata !{i32 786445, metadata !570, metadata !"lock", metadata !571, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!750 = metadata !{i32 786445, metadata !570, metadata !"waiting", metadata !571, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!751 = metadata !{i32 786445, metadata !570, metadata !"updated", metadata !571, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!752 = metadata !{i32 786445, metadata !570, metadata !"updating", metadata !571, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!753 = metadata !{i32 786445, metadata !570, metadata !"exists", metadata !571, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!754 = metadata !{i32 786445, metadata !570, metadata !"temp_file", metadata !571, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!755 = metadata !{i32 786445, metadata !549, metadata !"upstream", metadata !550, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !756} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!756 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !757} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!757 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !550, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !758} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!758 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !759, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !760, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!759 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!760 = metadata !{metadata !761, metadata !768, metadata !769, metadata !806, metadata !877, metadata !878, metadata !899, metadata !908, metadata !985, metadata !1021, metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099, metadata !1103, metadata !1107, metadata !1108, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1116, metadata !1120, metadata !1124, metadata !1128, metadata !1129, metadata !1141, metadata !1142, metadata !1143, metadata !1144, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155}
!761 = metadata !{i32 786445, metadata !758, metadata !"read_event_handler", metadata !759, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !762} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!762 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !759, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !763} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!763 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !764} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!764 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !765, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!765 = metadata !{null, metadata !564, metadata !766}
!766 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !767} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!767 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !759, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !758} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!768 = metadata !{i32 786445, metadata !758, metadata !"write_event_handler", metadata !759, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !762} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!769 = metadata !{i32 786445, metadata !758, metadata !"peer", metadata !759, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !770} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!770 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !759, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !771} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!771 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !772, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !773, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!772 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!773 = metadata !{metadata !774, metadata !775, metadata !776, metadata !777, metadata !779, metadata !780, metadata !787, metadata !792, metadata !793, metadata !802, metadata !803, metadata !804, metadata !805}
!774 = metadata !{i32 786445, metadata !771, metadata !"connection", metadata !772, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!775 = metadata !{i32 786445, metadata !771, metadata !"sockaddr", metadata !772, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!776 = metadata !{i32 786445, metadata !771, metadata !"socklen", metadata !772, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!777 = metadata !{i32 786445, metadata !771, metadata !"name", metadata !772, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !778} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!778 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!779 = metadata !{i32 786445, metadata !771, metadata !"tries", metadata !772, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!780 = metadata !{i32 786445, metadata !771, metadata !"get", metadata !772, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !781} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!781 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !772, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !782} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!782 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !783} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!783 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !784, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!784 = metadata !{metadata !521, metadata !785, metadata !24}
!785 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !786} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!786 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !772, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !771} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!787 = metadata !{i32 786445, metadata !771, metadata !"free", metadata !772, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !788} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!788 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !772, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !789} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!789 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !790} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!790 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !791, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!791 = metadata !{null, metadata !785, metadata !24, metadata !26}
!792 = metadata !{i32 786445, metadata !771, metadata !"data", metadata !772, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!793 = metadata !{i32 786445, metadata !771, metadata !"local", metadata !772, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !794} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!794 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !795} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!795 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !772, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !796} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!796 = metadata !{i32 786451, null, metadata !"", metadata !797, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !798, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!797 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!798 = metadata !{metadata !799, metadata !800, metadata !801}
!799 = metadata !{i32 786445, metadata !796, metadata !"sockaddr", metadata !797, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!800 = metadata !{i32 786445, metadata !796, metadata !"socklen", metadata !797, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!801 = metadata !{i32 786445, metadata !796, metadata !"name", metadata !797, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!802 = metadata !{i32 786445, metadata !771, metadata !"rcvbuf", metadata !772, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!803 = metadata !{i32 786445, metadata !771, metadata !"log", metadata !772, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!804 = metadata !{i32 786445, metadata !771, metadata !"cached", metadata !772, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!805 = metadata !{i32 786445, metadata !771, metadata !"log_error", metadata !772, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!806 = metadata !{i32 786445, metadata !758, metadata !"pipe", metadata !759, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !807} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!807 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !808} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!808 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !759, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !809} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!809 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !810, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !811, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!810 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!811 = metadata !{metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !818, metadata !819, metadata !820, metadata !821, metadata !828, metadata !829, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !853, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !862, metadata !876}
!812 = metadata !{i32 786445, metadata !809, metadata !"upstream", metadata !810, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!813 = metadata !{i32 786445, metadata !809, metadata !"downstream", metadata !810, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!814 = metadata !{i32 786445, metadata !809, metadata !"free_raw_bufs", metadata !810, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!815 = metadata !{i32 786445, metadata !809, metadata !"in", metadata !810, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!816 = metadata !{i32 786445, metadata !809, metadata !"last_in", metadata !810, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !817} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!817 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!818 = metadata !{i32 786445, metadata !809, metadata !"out", metadata !810, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!819 = metadata !{i32 786445, metadata !809, metadata !"free", metadata !810, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!820 = metadata !{i32 786445, metadata !809, metadata !"busy", metadata !810, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!821 = metadata !{i32 786445, metadata !809, metadata !"input_filter", metadata !810, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !822} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!822 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !810, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !823} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!823 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !824} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!824 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !825, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!825 = metadata !{metadata !521, metadata !826, metadata !62}
!826 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !827} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!827 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !810, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !809} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!828 = metadata !{i32 786445, metadata !809, metadata !"input_ctx", metadata !810, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!829 = metadata !{i32 786445, metadata !809, metadata !"output_filter", metadata !810, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !830} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!830 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !810, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !831} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!831 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !832} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!832 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!833 = metadata !{metadata !521, metadata !24, metadata !56}
!834 = metadata !{i32 786445, metadata !809, metadata !"output_ctx", metadata !810, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!835 = metadata !{i32 786445, metadata !809, metadata !"read", metadata !810, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!836 = metadata !{i32 786445, metadata !809, metadata !"cacheable", metadata !810, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!837 = metadata !{i32 786445, metadata !809, metadata !"single_buf", metadata !810, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!838 = metadata !{i32 786445, metadata !809, metadata !"free_bufs", metadata !810, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!839 = metadata !{i32 786445, metadata !809, metadata !"upstream_done", metadata !810, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!840 = metadata !{i32 786445, metadata !809, metadata !"upstream_error", metadata !810, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!841 = metadata !{i32 786445, metadata !809, metadata !"upstream_eof", metadata !810, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!842 = metadata !{i32 786445, metadata !809, metadata !"upstream_blocked", metadata !810, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!843 = metadata !{i32 786445, metadata !809, metadata !"downstream_done", metadata !810, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!844 = metadata !{i32 786445, metadata !809, metadata !"downstream_error", metadata !810, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!845 = metadata !{i32 786445, metadata !809, metadata !"cyclic_temp_file", metadata !810, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!846 = metadata !{i32 786445, metadata !809, metadata !"allocated", metadata !810, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !521} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!847 = metadata !{i32 786445, metadata !809, metadata !"bufs", metadata !810, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !517} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!848 = metadata !{i32 786445, metadata !809, metadata !"tag", metadata !810, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!849 = metadata !{i32 786445, metadata !809, metadata !"busy_size", metadata !810, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!850 = metadata !{i32 786445, metadata !809, metadata !"read_length", metadata !810, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!851 = metadata !{i32 786445, metadata !809, metadata !"length", metadata !810, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!852 = metadata !{i32 786445, metadata !809, metadata !"max_temp_file_size", metadata !810, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!853 = metadata !{i32 786445, metadata !809, metadata !"temp_file_write_size", metadata !810, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!854 = metadata !{i32 786445, metadata !809, metadata !"read_timeout", metadata !810, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!855 = metadata !{i32 786445, metadata !809, metadata !"send_timeout", metadata !810, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!856 = metadata !{i32 786445, metadata !809, metadata !"send_lowat", metadata !810, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!857 = metadata !{i32 786445, metadata !809, metadata !"pool", metadata !810, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!858 = metadata !{i32 786445, metadata !809, metadata !"log", metadata !810, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!859 = metadata !{i32 786445, metadata !809, metadata !"preread_bufs", metadata !810, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!860 = metadata !{i32 786445, metadata !809, metadata !"preread_size", metadata !810, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!861 = metadata !{i32 786445, metadata !809, metadata !"buf_to_file", metadata !810, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!862 = metadata !{i32 786445, metadata !809, metadata !"temp_file", metadata !810, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !863} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!863 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !864} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!864 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !810, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !865} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!865 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !866, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!866 = metadata !{metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !873, metadata !874, metadata !875}
!867 = metadata !{i32 786445, metadata !865, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!868 = metadata !{i32 786445, metadata !865, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!869 = metadata !{i32 786445, metadata !865, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !671} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!870 = metadata !{i32 786445, metadata !865, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!871 = metadata !{i32 786445, metadata !865, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!872 = metadata !{i32 786445, metadata !865, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!873 = metadata !{i32 786445, metadata !865, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!874 = metadata !{i32 786445, metadata !865, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!875 = metadata !{i32 786445, metadata !865, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!876 = metadata !{i32 786445, metadata !809, metadata !"num", metadata !810, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!877 = metadata !{i32 786445, metadata !758, metadata !"request_bufs", metadata !759, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!878 = metadata !{i32 786445, metadata !758, metadata !"output", metadata !759, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !879} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!879 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !759, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !880} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!880 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !881, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!881 = metadata !{metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !898}
!882 = metadata !{i32 786445, metadata !880, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!883 = metadata !{i32 786445, metadata !880, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!884 = metadata !{i32 786445, metadata !880, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!885 = metadata !{i32 786445, metadata !880, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!886 = metadata !{i32 786445, metadata !880, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!887 = metadata !{i32 786445, metadata !880, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!888 = metadata !{i32 786445, metadata !880, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!889 = metadata !{i32 786445, metadata !880, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!890 = metadata !{i32 786445, metadata !880, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!891 = metadata !{i32 786445, metadata !880, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!892 = metadata !{i32 786445, metadata !880, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!893 = metadata !{i32 786445, metadata !880, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !521} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!894 = metadata !{i32 786445, metadata !880, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !517} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!895 = metadata !{i32 786445, metadata !880, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!896 = metadata !{i32 786445, metadata !880, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !897} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!897 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !831} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!898 = metadata !{i32 786445, metadata !880, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!899 = metadata !{i32 786445, metadata !758, metadata !"writer", metadata !759, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !900} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!900 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !759, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !901} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!901 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !902, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!902 = metadata !{metadata !903, metadata !904, metadata !905, metadata !906, metadata !907}
!903 = metadata !{i32 786445, metadata !901, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!904 = metadata !{i32 786445, metadata !901, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !817} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!905 = metadata !{i32 786445, metadata !901, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!906 = metadata !{i32 786445, metadata !901, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!907 = metadata !{i32 786445, metadata !901, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!908 = metadata !{i32 786445, metadata !758, metadata !"conf", metadata !759, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !909} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!909 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !910} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!910 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !759, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !911} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!911 = metadata !{i32 786451, null, metadata !"", metadata !759, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !912, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!912 = metadata !{metadata !913, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980, metadata !981, metadata !982, metadata !983, metadata !984}
!913 = metadata !{i32 786445, metadata !911, metadata !"upstream", metadata !759, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !914} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!914 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !915} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!915 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !759, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !916} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!916 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !759, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !917, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!917 = metadata !{metadata !918, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !942}
!918 = metadata !{i32 786445, metadata !916, metadata !"peer", metadata !759, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !919} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!919 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !759, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !920} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!920 = metadata !{i32 786451, null, metadata !"", metadata !759, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !921, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!921 = metadata !{metadata !922, metadata !927, metadata !932}
!922 = metadata !{i32 786445, metadata !920, metadata !"init_upstream", metadata !759, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !923} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!923 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !759, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !924} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!924 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !925} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!925 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !926, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!926 = metadata !{metadata !521, metadata !11, metadata !914}
!927 = metadata !{i32 786445, metadata !920, metadata !"init", metadata !759, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !928} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!928 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !759, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!929 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !930} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!930 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !931, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!931 = metadata !{metadata !521, metadata !564, metadata !914}
!932 = metadata !{i32 786445, metadata !920, metadata !"data", metadata !759, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!933 = metadata !{i32 786445, metadata !916, metadata !"srv_conf", metadata !759, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!934 = metadata !{i32 786445, metadata !916, metadata !"servers", metadata !759, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!935 = metadata !{i32 786445, metadata !916, metadata !"flags", metadata !759, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!936 = metadata !{i32 786445, metadata !916, metadata !"host", metadata !759, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!937 = metadata !{i32 786445, metadata !916, metadata !"file_name", metadata !759, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!938 = metadata !{i32 786445, metadata !916, metadata !"line", metadata !759, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!939 = metadata !{i32 786445, metadata !916, metadata !"port", metadata !759, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !940} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!940 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !759, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !941} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!941 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !759, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!942 = metadata !{i32 786445, metadata !916, metadata !"default_port", metadata !759, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !940} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!943 = metadata !{i32 786445, metadata !911, metadata !"connect_timeout", metadata !759, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!944 = metadata !{i32 786445, metadata !911, metadata !"send_timeout", metadata !759, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!945 = metadata !{i32 786445, metadata !911, metadata !"read_timeout", metadata !759, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!946 = metadata !{i32 786445, metadata !911, metadata !"timeout", metadata !759, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!947 = metadata !{i32 786445, metadata !911, metadata !"send_lowat", metadata !759, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!948 = metadata !{i32 786445, metadata !911, metadata !"buffer_size", metadata !759, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!949 = metadata !{i32 786445, metadata !911, metadata !"busy_buffers_size", metadata !759, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!950 = metadata !{i32 786445, metadata !911, metadata !"max_temp_file_size", metadata !759, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!951 = metadata !{i32 786445, metadata !911, metadata !"temp_file_write_size", metadata !759, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!952 = metadata !{i32 786445, metadata !911, metadata !"busy_buffers_size_conf", metadata !759, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!953 = metadata !{i32 786445, metadata !911, metadata !"max_temp_file_size_conf", metadata !759, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!954 = metadata !{i32 786445, metadata !911, metadata !"temp_file_write_size_conf", metadata !759, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!955 = metadata !{i32 786445, metadata !911, metadata !"bufs", metadata !759, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !517} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!956 = metadata !{i32 786445, metadata !911, metadata !"ignore_headers", metadata !759, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!957 = metadata !{i32 786445, metadata !911, metadata !"next_upstream", metadata !759, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!958 = metadata !{i32 786445, metadata !911, metadata !"store_access", metadata !759, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!959 = metadata !{i32 786445, metadata !911, metadata !"buffering", metadata !759, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !492} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!960 = metadata !{i32 786445, metadata !911, metadata !"pass_request_headers", metadata !759, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !492} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!961 = metadata !{i32 786445, metadata !911, metadata !"pass_request_body", metadata !759, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !492} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!962 = metadata !{i32 786445, metadata !911, metadata !"ignore_client_abort", metadata !759, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !492} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!963 = metadata !{i32 786445, metadata !911, metadata !"intercept_errors", metadata !759, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !492} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!964 = metadata !{i32 786445, metadata !911, metadata !"cyclic_temp_file", metadata !759, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !492} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!965 = metadata !{i32 786445, metadata !911, metadata !"temp_path", metadata !759, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !671} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!966 = metadata !{i32 786445, metadata !911, metadata !"hide_headers_hash", metadata !759, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !497} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!967 = metadata !{i32 786445, metadata !911, metadata !"hide_headers", metadata !759, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!968 = metadata !{i32 786445, metadata !911, metadata !"pass_headers", metadata !759, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!969 = metadata !{i32 786445, metadata !911, metadata !"local", metadata !759, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !794} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!970 = metadata !{i32 786445, metadata !911, metadata !"cache", metadata !759, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !700} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!971 = metadata !{i32 786445, metadata !911, metadata !"cache_min_uses", metadata !759, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!972 = metadata !{i32 786445, metadata !911, metadata !"cache_use_stale", metadata !759, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!973 = metadata !{i32 786445, metadata !911, metadata !"cache_methods", metadata !759, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!974 = metadata !{i32 786445, metadata !911, metadata !"cache_lock", metadata !759, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !492} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!975 = metadata !{i32 786445, metadata !911, metadata !"cache_lock_timeout", metadata !759, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!976 = metadata !{i32 786445, metadata !911, metadata !"cache_valid", metadata !759, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!977 = metadata !{i32 786445, metadata !911, metadata !"cache_bypass", metadata !759, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!978 = metadata !{i32 786445, metadata !911, metadata !"no_cache", metadata !759, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!979 = metadata !{i32 786445, metadata !911, metadata !"store_lengths", metadata !759, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!980 = metadata !{i32 786445, metadata !911, metadata !"store_values", metadata !759, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!981 = metadata !{i32 786445, metadata !911, metadata !"store", metadata !759, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!982 = metadata !{i32 786445, metadata !911, metadata !"intercept_404", metadata !759, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!983 = metadata !{i32 786445, metadata !911, metadata !"change_buffering", metadata !759, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!984 = metadata !{i32 786445, metadata !911, metadata !"module", metadata !759, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!985 = metadata !{i32 786445, metadata !758, metadata !"headers_in", metadata !759, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !986} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!986 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !759, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !987} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!987 = metadata !{i32 786451, null, metadata !"", metadata !759, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !988, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!988 = metadata !{metadata !989, metadata !990, metadata !991, metadata !992, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1017, metadata !1018, metadata !1019, metadata !1020}
!989 = metadata !{i32 786445, metadata !987, metadata !"headers", metadata !759, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!990 = metadata !{i32 786445, metadata !987, metadata !"status_n", metadata !759, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!991 = metadata !{i32 786445, metadata !987, metadata !"status_line", metadata !759, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!992 = metadata !{i32 786445, metadata !987, metadata !"status", metadata !759, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !993} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!993 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !994} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!994 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !759, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !995} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!995 = metadata !{i32 786451, null, metadata !"", metadata !499, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !996, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!996 = metadata !{metadata !997, metadata !998, metadata !999, metadata !1000}
!997 = metadata !{i32 786445, metadata !995, metadata !"hash", metadata !499, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!998 = metadata !{i32 786445, metadata !995, metadata !"key", metadata !499, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!999 = metadata !{i32 786445, metadata !995, metadata !"value", metadata !499, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!1000 = metadata !{i32 786445, metadata !995, metadata !"lowcase_key", metadata !499, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1001 = metadata !{i32 786445, metadata !987, metadata !"date", metadata !759, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !993} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1002 = metadata !{i32 786445, metadata !987, metadata !"server", metadata !759, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !993} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1003 = metadata !{i32 786445, metadata !987, metadata !"connection", metadata !759, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !993} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1004 = metadata !{i32 786445, metadata !987, metadata !"expires", metadata !759, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !993} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1005 = metadata !{i32 786445, metadata !987, metadata !"etag", metadata !759, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !993} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1006 = metadata !{i32 786445, metadata !987, metadata !"x_accel_expires", metadata !759, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !993} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1007 = metadata !{i32 786445, metadata !987, metadata !"x_accel_redirect", metadata !759, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !993} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1008 = metadata !{i32 786445, metadata !987, metadata !"x_accel_limit_rate", metadata !759, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !993} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1009 = metadata !{i32 786445, metadata !987, metadata !"content_type", metadata !759, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !993} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1010 = metadata !{i32 786445, metadata !987, metadata !"content_length", metadata !759, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !993} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1011 = metadata !{i32 786445, metadata !987, metadata !"last_modified", metadata !759, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !993} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1012 = metadata !{i32 786445, metadata !987, metadata !"location", metadata !759, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !993} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1013 = metadata !{i32 786445, metadata !987, metadata !"accept_ranges", metadata !759, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !993} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1014 = metadata !{i32 786445, metadata !987, metadata !"www_authenticate", metadata !759, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !993} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1015 = metadata !{i32 786445, metadata !987, metadata !"transfer_encoding", metadata !759, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !993} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1016 = metadata !{i32 786445, metadata !987, metadata !"content_encoding", metadata !759, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !993} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1017 = metadata !{i32 786445, metadata !987, metadata !"content_length_n", metadata !759, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1018 = metadata !{i32 786445, metadata !987, metadata !"cache_control", metadata !759, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1019 = metadata !{i32 786445, metadata !987, metadata !"connection_close", metadata !759, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1020 = metadata !{i32 786445, metadata !987, metadata !"chunked", metadata !759, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1021 = metadata !{i32 786445, metadata !758, metadata !"resolved", metadata !759, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1022} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1022 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1023} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1023 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !759, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1024} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1024 = metadata !{i32 786451, null, metadata !"", metadata !759, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1025, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1025 = metadata !{metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1033, metadata !1034, metadata !1035}
!1026 = metadata !{i32 786445, metadata !1024, metadata !"host", metadata !759, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1027 = metadata !{i32 786445, metadata !1024, metadata !"port", metadata !759, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !940} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1028 = metadata !{i32 786445, metadata !1024, metadata !"no_port", metadata !759, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1029 = metadata !{i32 786445, metadata !1024, metadata !"naddrs", metadata !759, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1030 = metadata !{i32 786445, metadata !1024, metadata !"addrs", metadata !759, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1031} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1031 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1032} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1032 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !759, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !553} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1033 = metadata !{i32 786445, metadata !1024, metadata !"sockaddr", metadata !759, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1034 = metadata !{i32 786445, metadata !1024, metadata !"socklen", metadata !759, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1035 = metadata !{i32 786445, metadata !1024, metadata !"ctx", metadata !759, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1036} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1036 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1037} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1037 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !759, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1038} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1038 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1039, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1040, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1039 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1040 = metadata !{metadata !1041, metadata !1044, metadata !1067, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093}
!1041 = metadata !{i32 786445, metadata !1038, metadata !"next", metadata !1039, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1042} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1042 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1043} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1043 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1039, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1038} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1044 = metadata !{i32 786445, metadata !1038, metadata !"resolver", metadata !1039, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1045} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1045 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1046} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1046 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1039, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1047} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1047 = metadata !{i32 786451, null, metadata !"", metadata !1039, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1048, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1048 = metadata !{metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1065, metadata !1066}
!1049 = metadata !{i32 786445, metadata !1047, metadata !"event", metadata !1039, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1050 = metadata !{i32 786445, metadata !1047, metadata !"dummy", metadata !1039, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1051 = metadata !{i32 786445, metadata !1047, metadata !"log", metadata !1039, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1052 = metadata !{i32 786445, metadata !1047, metadata !"ident", metadata !1039, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !521} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1053 = metadata !{i32 786445, metadata !1047, metadata !"udp_connections", metadata !1039, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1054 = metadata !{i32 786445, metadata !1047, metadata !"last_connection", metadata !1039, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1055 = metadata !{i32 786445, metadata !1047, metadata !"name_rbtree", metadata !1039, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !606} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1056 = metadata !{i32 786445, metadata !1047, metadata !"name_sentinel", metadata !1039, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1057 = metadata !{i32 786445, metadata !1047, metadata !"addr_rbtree", metadata !1039, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !606} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1058 = metadata !{i32 786445, metadata !1047, metadata !"addr_sentinel", metadata !1039, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1059 = metadata !{i32 786445, metadata !1047, metadata !"name_resend_queue", metadata !1039, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1060 = metadata !{i32 786445, metadata !1047, metadata !"addr_resend_queue", metadata !1039, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1061 = metadata !{i32 786445, metadata !1047, metadata !"name_expire_queue", metadata !1039, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1062 = metadata !{i32 786445, metadata !1047, metadata !"addr_expire_queue", metadata !1039, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1063 = metadata !{i32 786445, metadata !1047, metadata !"resend_timeout", metadata !1039, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !584} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1064 = metadata !{i32 786445, metadata !1047, metadata !"expire", metadata !1039, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !584} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1065 = metadata !{i32 786445, metadata !1047, metadata !"valid", metadata !1039, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !584} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1066 = metadata !{i32 786445, metadata !1047, metadata !"log_level", metadata !1039, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1067 = metadata !{i32 786445, metadata !1038, metadata !"udp_connection", metadata !1039, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1068} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1068 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1069} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1069 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1039, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1070} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1070 = metadata !{i32 786451, null, metadata !"", metadata !1039, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1071, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1071 = metadata !{metadata !1072, metadata !1073, metadata !1074, metadata !1075, metadata !1076}
!1072 = metadata !{i32 786445, metadata !1070, metadata !"connection", metadata !1039, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1073 = metadata !{i32 786445, metadata !1070, metadata !"sockaddr", metadata !1039, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1074 = metadata !{i32 786445, metadata !1070, metadata !"socklen", metadata !1039, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1075 = metadata !{i32 786445, metadata !1070, metadata !"server", metadata !1039, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1076 = metadata !{i32 786445, metadata !1070, metadata !"log", metadata !1039, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1077 = metadata !{i32 786445, metadata !1038, metadata !"ident", metadata !1039, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !521} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1078 = metadata !{i32 786445, metadata !1038, metadata !"state", metadata !1039, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !521} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1079 = metadata !{i32 786445, metadata !1038, metadata !"type", metadata !1039, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !521} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1080 = metadata !{i32 786445, metadata !1038, metadata !"name", metadata !1039, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1081 = metadata !{i32 786445, metadata !1038, metadata !"naddrs", metadata !1039, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1082 = metadata !{i32 786445, metadata !1038, metadata !"addrs", metadata !1039, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !1031} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1083 = metadata !{i32 786445, metadata !1038, metadata !"addr", metadata !1039, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !1032} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1084 = metadata !{i32 786445, metadata !1038, metadata !"handler", metadata !1039, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1085} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1085 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1039, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1086} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1086 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1087} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1087 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1088, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1088 = metadata !{null, metadata !1042}
!1089 = metadata !{i32 786445, metadata !1038, metadata !"data", metadata !1039, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1090 = metadata !{i32 786445, metadata !1038, metadata !"timeout", metadata !1039, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1091 = metadata !{i32 786445, metadata !1038, metadata !"quick", metadata !1039, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1092 = metadata !{i32 786445, metadata !1038, metadata !"recursion", metadata !1039, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1093 = metadata !{i32 786445, metadata !1038, metadata !"event", metadata !1039, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1094 = metadata !{i32 786445, metadata !758, metadata !"buffer", metadata !759, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1095 = metadata !{i32 786445, metadata !758, metadata !"length", metadata !759, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1096 = metadata !{i32 786445, metadata !758, metadata !"out_bufs", metadata !759, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1097 = metadata !{i32 786445, metadata !758, metadata !"busy_bufs", metadata !759, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1098 = metadata !{i32 786445, metadata !758, metadata !"free_bufs", metadata !759, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1099 = metadata !{i32 786445, metadata !758, metadata !"input_filter_init", metadata !759, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1100} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1100 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1101} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1102 = metadata !{metadata !521, metadata !24}
!1103 = metadata !{i32 786445, metadata !758, metadata !"input_filter", metadata !759, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1104} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1104 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1105} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1105 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1106, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1106 = metadata !{metadata !521, metadata !24, metadata !286}
!1107 = metadata !{i32 786445, metadata !758, metadata !"input_filter_ctx", metadata !759, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1108 = metadata !{i32 786445, metadata !758, metadata !"create_key", metadata !759, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1109} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1109 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1110} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1111 = metadata !{metadata !521, metadata !564}
!1112 = metadata !{i32 786445, metadata !758, metadata !"create_request", metadata !759, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1109} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1113 = metadata !{i32 786445, metadata !758, metadata !"reinit_request", metadata !759, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1109} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1114 = metadata !{i32 786445, metadata !758, metadata !"process_header", metadata !759, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1109} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1115 = metadata !{i32 786445, metadata !758, metadata !"abort_request", metadata !759, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !561} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1116 = metadata !{i32 786445, metadata !758, metadata !"finalize_request", metadata !759, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1117} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1117 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1118} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1119 = metadata !{null, metadata !564, metadata !521}
!1120 = metadata !{i32 786445, metadata !758, metadata !"rewrite_redirect", metadata !759, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1121} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1121 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1122} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1123 = metadata !{metadata !521, metadata !564, metadata !993, metadata !30}
!1124 = metadata !{i32 786445, metadata !758, metadata !"rewrite_cookie", metadata !759, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1125} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1125 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1126} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1127 = metadata !{metadata !521, metadata !564, metadata !993}
!1128 = metadata !{i32 786445, metadata !758, metadata !"timeout", metadata !759, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1129 = metadata !{i32 786445, metadata !758, metadata !"state", metadata !759, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1130} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1130 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1131} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1131 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !759, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1132} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1132 = metadata !{i32 786451, null, metadata !"", metadata !759, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1133, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1133 = metadata !{metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1140}
!1134 = metadata !{i32 786445, metadata !1132, metadata !"bl_time", metadata !759, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1135 = metadata !{i32 786445, metadata !1132, metadata !"bl_state", metadata !759, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1136 = metadata !{i32 786445, metadata !1132, metadata !"status", metadata !759, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1137 = metadata !{i32 786445, metadata !1132, metadata !"response_sec", metadata !759, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !584} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1138 = metadata !{i32 786445, metadata !1132, metadata !"response_msec", metadata !759, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1139 = metadata !{i32 786445, metadata !1132, metadata !"response_length", metadata !759, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1140 = metadata !{i32 786445, metadata !1132, metadata !"peer", metadata !759, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !778} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1141 = metadata !{i32 786445, metadata !758, metadata !"method", metadata !759, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1142 = metadata !{i32 786445, metadata !758, metadata !"schema", metadata !759, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1143 = metadata !{i32 786445, metadata !758, metadata !"uri", metadata !759, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1144 = metadata !{i32 786445, metadata !758, metadata !"cleanup", metadata !759, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1145} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1145 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1146} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1146 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !759, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1147 = metadata !{i32 786445, metadata !758, metadata !"store", metadata !759, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1148 = metadata !{i32 786445, metadata !758, metadata !"cacheable", metadata !759, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1149 = metadata !{i32 786445, metadata !758, metadata !"accel", metadata !759, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1150 = metadata !{i32 786445, metadata !758, metadata !"ssl", metadata !759, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1151 = metadata !{i32 786445, metadata !758, metadata !"cache_status", metadata !759, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1152 = metadata !{i32 786445, metadata !758, metadata !"buffering", metadata !759, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1153 = metadata !{i32 786445, metadata !758, metadata !"keepalive", metadata !759, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1154 = metadata !{i32 786445, metadata !758, metadata !"request_sent", metadata !759, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1155 = metadata !{i32 786445, metadata !758, metadata !"header_sent", metadata !759, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1156 = metadata !{i32 786445, metadata !549, metadata !"upstream_states", metadata !550, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1157 = metadata !{i32 786445, metadata !549, metadata !"pool", metadata !550, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1158 = metadata !{i32 786445, metadata !549, metadata !"header_in", metadata !550, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1159 = metadata !{i32 786445, metadata !549, metadata !"headers_in", metadata !550, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1160} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1160 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !550, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1161} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1161 = metadata !{i32 786451, null, metadata !"", metadata !550, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1162, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1162 = metadata !{metadata !1163, metadata !1164, metadata !1165, metadata !1166, metadata !1167, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1172, metadata !1173, metadata !1174, metadata !1175, metadata !1176, metadata !1177, metadata !1178, metadata !1179, metadata !1180, metadata !1181, metadata !1182, metadata !1183, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1192, metadata !1193, metadata !1194}
!1163 = metadata !{i32 786445, metadata !1161, metadata !"headers", metadata !550, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1164 = metadata !{i32 786445, metadata !1161, metadata !"host", metadata !550, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !993} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1165 = metadata !{i32 786445, metadata !1161, metadata !"connection", metadata !550, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !993} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1166 = metadata !{i32 786445, metadata !1161, metadata !"if_modified_since", metadata !550, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !993} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1167 = metadata !{i32 786445, metadata !1161, metadata !"if_unmodified_since", metadata !550, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !993} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1168 = metadata !{i32 786445, metadata !1161, metadata !"user_agent", metadata !550, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !993} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1169 = metadata !{i32 786445, metadata !1161, metadata !"referer", metadata !550, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !993} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1170 = metadata !{i32 786445, metadata !1161, metadata !"content_length", metadata !550, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !993} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1171 = metadata !{i32 786445, metadata !1161, metadata !"content_type", metadata !550, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !993} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1172 = metadata !{i32 786445, metadata !1161, metadata !"range", metadata !550, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !993} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1173 = metadata !{i32 786445, metadata !1161, metadata !"if_range", metadata !550, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !993} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1174 = metadata !{i32 786445, metadata !1161, metadata !"transfer_encoding", metadata !550, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !993} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1175 = metadata !{i32 786445, metadata !1161, metadata !"expect", metadata !550, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !993} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1176 = metadata !{i32 786445, metadata !1161, metadata !"accept_encoding", metadata !550, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !993} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1177 = metadata !{i32 786445, metadata !1161, metadata !"via", metadata !550, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !993} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1178 = metadata !{i32 786445, metadata !1161, metadata !"authorization", metadata !550, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !993} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1179 = metadata !{i32 786445, metadata !1161, metadata !"keep_alive", metadata !550, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !993} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1180 = metadata !{i32 786445, metadata !1161, metadata !"x_forwarded_for", metadata !550, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !993} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1181 = metadata !{i32 786445, metadata !1161, metadata !"user", metadata !550, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1182 = metadata !{i32 786445, metadata !1161, metadata !"passwd", metadata !550, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1183 = metadata !{i32 786445, metadata !1161, metadata !"cookies", metadata !550, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1184 = metadata !{i32 786445, metadata !1161, metadata !"server", metadata !550, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1185 = metadata !{i32 786445, metadata !1161, metadata !"content_length_n", metadata !550, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1186 = metadata !{i32 786445, metadata !1161, metadata !"keep_alive_n", metadata !550, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !584} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1187 = metadata !{i32 786445, metadata !1161, metadata !"connection_type", metadata !550, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1188 = metadata !{i32 786445, metadata !1161, metadata !"msie", metadata !550, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1189 = metadata !{i32 786445, metadata !1161, metadata !"msie6", metadata !550, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1190 = metadata !{i32 786445, metadata !1161, metadata !"opera", metadata !550, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1191 = metadata !{i32 786445, metadata !1161, metadata !"gecko", metadata !550, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1192 = metadata !{i32 786445, metadata !1161, metadata !"chrome", metadata !550, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1193 = metadata !{i32 786445, metadata !1161, metadata !"safari", metadata !550, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1194 = metadata !{i32 786445, metadata !1161, metadata !"konqueror", metadata !550, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1195 = metadata !{i32 786445, metadata !549, metadata !"headers_out", metadata !550, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1196} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1196 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !550, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1197} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1197 = metadata !{i32 786451, null, metadata !"", metadata !550, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1198, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1198 = metadata !{metadata !1199, metadata !1200, metadata !1201, metadata !1202, metadata !1203, metadata !1204, metadata !1205, metadata !1206, metadata !1207, metadata !1208, metadata !1209, metadata !1210, metadata !1211, metadata !1212, metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217, metadata !1218, metadata !1219, metadata !1220, metadata !1221, metadata !1222, metadata !1223}
!1199 = metadata !{i32 786445, metadata !1197, metadata !"headers", metadata !550, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1200 = metadata !{i32 786445, metadata !1197, metadata !"status", metadata !550, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1201 = metadata !{i32 786445, metadata !1197, metadata !"status_line", metadata !550, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1202 = metadata !{i32 786445, metadata !1197, metadata !"server", metadata !550, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !993} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1203 = metadata !{i32 786445, metadata !1197, metadata !"date", metadata !550, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !993} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1204 = metadata !{i32 786445, metadata !1197, metadata !"content_length", metadata !550, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !993} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1205 = metadata !{i32 786445, metadata !1197, metadata !"content_encoding", metadata !550, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !993} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1206 = metadata !{i32 786445, metadata !1197, metadata !"location", metadata !550, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !993} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1207 = metadata !{i32 786445, metadata !1197, metadata !"refresh", metadata !550, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !993} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1208 = metadata !{i32 786445, metadata !1197, metadata !"last_modified", metadata !550, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !993} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1209 = metadata !{i32 786445, metadata !1197, metadata !"content_range", metadata !550, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !993} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1210 = metadata !{i32 786445, metadata !1197, metadata !"accept_ranges", metadata !550, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !993} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1211 = metadata !{i32 786445, metadata !1197, metadata !"www_authenticate", metadata !550, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !993} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1212 = metadata !{i32 786445, metadata !1197, metadata !"expires", metadata !550, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !993} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1213 = metadata !{i32 786445, metadata !1197, metadata !"etag", metadata !550, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !993} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1214 = metadata !{i32 786445, metadata !1197, metadata !"override_charset", metadata !550, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !778} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1215 = metadata !{i32 786445, metadata !1197, metadata !"content_type_len", metadata !550, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1216 = metadata !{i32 786445, metadata !1197, metadata !"content_type", metadata !550, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1217 = metadata !{i32 786445, metadata !1197, metadata !"charset", metadata !550, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1218 = metadata !{i32 786445, metadata !1197, metadata !"content_type_lowcase", metadata !550, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1219 = metadata !{i32 786445, metadata !1197, metadata !"content_type_hash", metadata !550, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1220 = metadata !{i32 786445, metadata !1197, metadata !"cache_control", metadata !550, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1221 = metadata !{i32 786445, metadata !1197, metadata !"content_length_n", metadata !550, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1222 = metadata !{i32 786445, metadata !1197, metadata !"date_time", metadata !550, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !584} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1223 = metadata !{i32 786445, metadata !1197, metadata !"last_modified_time", metadata !550, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !584} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1224 = metadata !{i32 786445, metadata !549, metadata !"request_body", metadata !550, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1225} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1225 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1226} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1226 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !550, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1227} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1227 = metadata !{i32 786451, null, metadata !"", metadata !550, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1228, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1228 = metadata !{metadata !1229, metadata !1230, metadata !1231, metadata !1232, metadata !1233, metadata !1234}
!1229 = metadata !{i32 786445, metadata !1227, metadata !"temp_file", metadata !550, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !863} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1230 = metadata !{i32 786445, metadata !1227, metadata !"bufs", metadata !550, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1231 = metadata !{i32 786445, metadata !1227, metadata !"buf", metadata !550, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1232 = metadata !{i32 786445, metadata !1227, metadata !"rest", metadata !550, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1233 = metadata !{i32 786445, metadata !1227, metadata !"to_write", metadata !550, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1234 = metadata !{i32 786445, metadata !1227, metadata !"post_handler", metadata !550, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1235} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1235 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !550, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !561} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1236 = metadata !{i32 786445, metadata !549, metadata !"lingering_time", metadata !550, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !584} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1237 = metadata !{i32 786445, metadata !549, metadata !"start_sec", metadata !550, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !584} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1238 = metadata !{i32 786445, metadata !549, metadata !"start_msec", metadata !550, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1239 = metadata !{i32 786445, metadata !549, metadata !"method", metadata !550, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1240 = metadata !{i32 786445, metadata !549, metadata !"http_version", metadata !550, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1241 = metadata !{i32 786445, metadata !549, metadata !"request_line", metadata !550, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1242 = metadata !{i32 786445, metadata !549, metadata !"uri", metadata !550, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1243 = metadata !{i32 786445, metadata !549, metadata !"args", metadata !550, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1244 = metadata !{i32 786445, metadata !549, metadata !"exten", metadata !550, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1245 = metadata !{i32 786445, metadata !549, metadata !"unparsed_uri", metadata !550, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1246 = metadata !{i32 786445, metadata !549, metadata !"method_name", metadata !550, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1247 = metadata !{i32 786445, metadata !549, metadata !"http_protocol", metadata !550, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1248 = metadata !{i32 786445, metadata !549, metadata !"out", metadata !550, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1249 = metadata !{i32 786445, metadata !549, metadata !"main", metadata !550, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !564} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1250 = metadata !{i32 786445, metadata !549, metadata !"parent", metadata !550, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !564} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1251 = metadata !{i32 786445, metadata !549, metadata !"postponed", metadata !550, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1252} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1252 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1253} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1253 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !550, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1254} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1254 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !550, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1255, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1255 = metadata !{metadata !1256, metadata !1257, metadata !1258}
!1256 = metadata !{i32 786445, metadata !1254, metadata !"request", metadata !550, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !564} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1257 = metadata !{i32 786445, metadata !1254, metadata !"out", metadata !550, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1258 = metadata !{i32 786445, metadata !1254, metadata !"next", metadata !550, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1252} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1259 = metadata !{i32 786445, metadata !549, metadata !"post_subrequest", metadata !550, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1260} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1260 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1261} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1261 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !550, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1262} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1262 = metadata !{i32 786451, null, metadata !"", metadata !550, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1263, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1263 = metadata !{metadata !1264, metadata !1269}
!1264 = metadata !{i32 786445, metadata !1262, metadata !"handler", metadata !550, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1265} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1265 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !550, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1266} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1266 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1267} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1267 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1268, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1268 = metadata !{metadata !521, metadata !564, metadata !24, metadata !521}
!1269 = metadata !{i32 786445, metadata !1262, metadata !"data", metadata !550, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1270 = metadata !{i32 786445, metadata !549, metadata !"posted_requests", metadata !550, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1271} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1271 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1272} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1272 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !550, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1273} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1273 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !550, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1274, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1274 = metadata !{metadata !1275, metadata !1276}
!1275 = metadata !{i32 786445, metadata !1273, metadata !"request", metadata !550, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !564} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1276 = metadata !{i32 786445, metadata !1273, metadata !"next", metadata !550, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1271} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1277 = metadata !{i32 786445, metadata !549, metadata !"virtual_names", metadata !550, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1278} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1278 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1279} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1279 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !550, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1280} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1280 = metadata !{i32 786451, null, metadata !"", metadata !550, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1281, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1281 = metadata !{metadata !1282, metadata !1295, metadata !1296}
!1282 = metadata !{i32 786445, metadata !1280, metadata !"names", metadata !550, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1283} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1283 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !550, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1284} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1284 = metadata !{i32 786451, null, metadata !"", metadata !499, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1285, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1285 = metadata !{metadata !1286, metadata !1287, metadata !1294}
!1286 = metadata !{i32 786445, metadata !1284, metadata !"hash", metadata !499, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !497} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1287 = metadata !{i32 786445, metadata !1284, metadata !"wc_head", metadata !499, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1288} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1288 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1289} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1289 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !499, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1290} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1290 = metadata !{i32 786451, null, metadata !"", metadata !499, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1291, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1291 = metadata !{metadata !1292, metadata !1293}
!1292 = metadata !{i32 786445, metadata !1290, metadata !"hash", metadata !499, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !497} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1293 = metadata !{i32 786445, metadata !1290, metadata !"value", metadata !499, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1294 = metadata !{i32 786445, metadata !1284, metadata !"wc_tail", metadata !499, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1288} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1295 = metadata !{i32 786445, metadata !1280, metadata !"nregex", metadata !550, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1296 = metadata !{i32 786445, metadata !1280, metadata !"regex", metadata !550, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1297} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1297 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1298} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1298 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !550, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1299} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1299 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1300, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1301, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1300 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1301 = metadata !{metadata !1302, metadata !1346, metadata !1502}
!1302 = metadata !{i32 786445, metadata !1299, metadata !"regex", metadata !1300, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1303} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1303 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1304} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1304 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1300, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1305} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1305 = metadata !{i32 786451, null, metadata !"", metadata !1306, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1307, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1306 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1307 = metadata !{metadata !1308, metadata !1336, metadata !1337, metadata !1344, metadata !1345}
!1308 = metadata !{i32 786445, metadata !1305, metadata !"regex", metadata !1306, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1309} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1309 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1310} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1310 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !1306, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1311} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1311 = metadata !{i32 786451, null, metadata !"", metadata !1312, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1313, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1312 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1313 = metadata !{metadata !1314, metadata !1319}
!1314 = metadata !{i32 786445, metadata !1311, metadata !"code", metadata !1312, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1315} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1315 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1316} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1316 = metadata !{i32 786454, null, metadata !"pcre", metadata !1312, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1317} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1317 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1318, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1318 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1319 = metadata !{i32 786445, metadata !1311, metadata !"extra", metadata !1312, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1320} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1320 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1321} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1321 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1312, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1322} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1322 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1318, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1323, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1323 = metadata !{metadata !1324, metadata !1325, metadata !1326, metadata !1327, metadata !1328, metadata !1331, metadata !1332, metadata !1335}
!1324 = metadata !{i32 786445, metadata !1322, metadata !"flags", metadata !1318, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1325 = metadata !{i32 786445, metadata !1322, metadata !"study_data", metadata !1318, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1326 = metadata !{i32 786445, metadata !1322, metadata !"match_limit", metadata !1318, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1327 = metadata !{i32 786445, metadata !1322, metadata !"callout_data", metadata !1318, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1328 = metadata !{i32 786445, metadata !1322, metadata !"tables", metadata !1318, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !1329} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1329 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1330} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1330 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!1331 = metadata !{i32 786445, metadata !1322, metadata !"match_limit_recursion", metadata !1318, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1332 = metadata !{i32 786445, metadata !1322, metadata !"mark", metadata !1318, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1333} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1333 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1334} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1334 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1335 = metadata !{i32 786445, metadata !1322, metadata !"executable_jit", metadata !1318, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1336 = metadata !{i32 786445, metadata !1305, metadata !"ncaptures", metadata !1306, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1337 = metadata !{i32 786445, metadata !1305, metadata !"variables", metadata !1306, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1338} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1338 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1339} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1339 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !1306, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1340} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1340 = metadata !{i32 786451, null, metadata !"", metadata !1306, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1341, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1341 = metadata !{metadata !1342, metadata !1343}
!1342 = metadata !{i32 786445, metadata !1340, metadata !"capture", metadata !1306, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1343 = metadata !{i32 786445, metadata !1340, metadata !"index", metadata !1306, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !521} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1344 = metadata !{i32 786445, metadata !1305, metadata !"nvariables", metadata !1306, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1345 = metadata !{i32 786445, metadata !1305, metadata !"name", metadata !1306, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1346 = metadata !{i32 786445, metadata !1299, metadata !"server", metadata !1300, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1347} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1347 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1348} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1348 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1300, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1349} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1349 = metadata !{i32 786451, null, metadata !"", metadata !1300, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1350, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1350 = metadata !{metadata !1351, metadata !1352, metadata !1361, metadata !1362, metadata !1363, metadata !1364, metadata !1365, metadata !1366, metadata !1367, metadata !1368, metadata !1369, metadata !1370, metadata !1371, metadata !1372}
!1351 = metadata !{i32 786445, metadata !1349, metadata !"server_names", metadata !1300, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1352 = metadata !{i32 786445, metadata !1349, metadata !"ctx", metadata !1300, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1353} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1353 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1354} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1354 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1300, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1355} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1355 = metadata !{i32 786451, null, metadata !"", metadata !1356, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1357, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1356 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1357 = metadata !{metadata !1358, metadata !1359, metadata !1360}
!1358 = metadata !{i32 786445, metadata !1355, metadata !"main_conf", metadata !1356, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1359 = metadata !{i32 786445, metadata !1355, metadata !"srv_conf", metadata !1356, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1360 = metadata !{i32 786445, metadata !1355, metadata !"loc_conf", metadata !1356, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1361 = metadata !{i32 786445, metadata !1349, metadata !"server_name", metadata !1300, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1362 = metadata !{i32 786445, metadata !1349, metadata !"connection_pool_size", metadata !1300, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1363 = metadata !{i32 786445, metadata !1349, metadata !"request_pool_size", metadata !1300, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1364 = metadata !{i32 786445, metadata !1349, metadata !"client_header_buffer_size", metadata !1300, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1365 = metadata !{i32 786445, metadata !1349, metadata !"large_client_header_buffers", metadata !1300, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !517} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1366 = metadata !{i32 786445, metadata !1349, metadata !"client_header_timeout", metadata !1300, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1367 = metadata !{i32 786445, metadata !1349, metadata !"ignore_invalid_headers", metadata !1300, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !492} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1368 = metadata !{i32 786445, metadata !1349, metadata !"merge_slashes", metadata !1300, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !492} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1369 = metadata !{i32 786445, metadata !1349, metadata !"underscores_in_headers", metadata !1300, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !492} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1370 = metadata !{i32 786445, metadata !1349, metadata !"listen", metadata !1300, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1371 = metadata !{i32 786445, metadata !1349, metadata !"captures", metadata !1300, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1372 = metadata !{i32 786445, metadata !1349, metadata !"named_locations", metadata !1300, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1373} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1373 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1374} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1374 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1375} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1375 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1300, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1376} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1376 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1300, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1377, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1377 = metadata !{metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1382, metadata !1383, metadata !1384, metadata !1385, metadata !1386, metadata !1387, metadata !1400, metadata !1401, metadata !1402, metadata !1403, metadata !1404, metadata !1406, metadata !1407, metadata !1408, metadata !1409, metadata !1410, metadata !1411, metadata !1412, metadata !1413, metadata !1414, metadata !1415, metadata !1416, metadata !1417, metadata !1418, metadata !1419, metadata !1420, metadata !1421, metadata !1422, metadata !1423, metadata !1424, metadata !1425, metadata !1426, metadata !1427, metadata !1428, metadata !1429, metadata !1430, metadata !1431, metadata !1432, metadata !1433, metadata !1434, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1442, metadata !1443, metadata !1444, metadata !1445, metadata !1446, metadata !1447, metadata !1448, metadata !1449, metadata !1450, metadata !1451, metadata !1452, metadata !1453, metadata !1454, metadata !1455, metadata !1456, metadata !1457, metadata !1458, metadata !1459, metadata !1470, metadata !1471, metadata !1481, metadata !1482, metadata !1494, metadata !1495, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1501}
!1378 = metadata !{i32 786445, metadata !1376, metadata !"name", metadata !1300, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1379 = metadata !{i32 786445, metadata !1376, metadata !"regex", metadata !1300, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1303} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1380 = metadata !{i32 786445, metadata !1376, metadata !"noname", metadata !1300, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1381 = metadata !{i32 786445, metadata !1376, metadata !"lmt_excpt", metadata !1300, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1382 = metadata !{i32 786445, metadata !1376, metadata !"named", metadata !1300, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1383 = metadata !{i32 786445, metadata !1376, metadata !"exact_match", metadata !1300, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1384 = metadata !{i32 786445, metadata !1376, metadata !"noregex", metadata !1300, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1385 = metadata !{i32 786445, metadata !1376, metadata !"auto_redirect", metadata !1300, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1386 = metadata !{i32 786445, metadata !1376, metadata !"gzip_disable_msie6", metadata !1300, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1387 = metadata !{i32 786445, metadata !1376, metadata !"static_locations", metadata !1300, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1388} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1388 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1389} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1389 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1300, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1390} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1390 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1300, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1391, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1391 = metadata !{metadata !1392, metadata !1393, metadata !1394, metadata !1395, metadata !1396, metadata !1397, metadata !1398, metadata !1399}
!1392 = metadata !{i32 786445, metadata !1390, metadata !"left", metadata !1300, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1388} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1393 = metadata !{i32 786445, metadata !1390, metadata !"right", metadata !1300, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1388} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1394 = metadata !{i32 786445, metadata !1390, metadata !"tree", metadata !1300, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1388} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1395 = metadata !{i32 786445, metadata !1390, metadata !"exact", metadata !1300, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1374} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1396 = metadata !{i32 786445, metadata !1390, metadata !"inclusive", metadata !1300, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1374} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1397 = metadata !{i32 786445, metadata !1390, metadata !"auto_redirect", metadata !1300, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1398 = metadata !{i32 786445, metadata !1390, metadata !"len", metadata !1300, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1399 = metadata !{i32 786445, metadata !1390, metadata !"name", metadata !1300, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !512} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1400 = metadata !{i32 786445, metadata !1376, metadata !"regex_locations", metadata !1300, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1373} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1401 = metadata !{i32 786445, metadata !1376, metadata !"loc_conf", metadata !1300, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1402 = metadata !{i32 786445, metadata !1376, metadata !"limit_except", metadata !1300, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !553} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1403 = metadata !{i32 786445, metadata !1376, metadata !"limit_except_loc_conf", metadata !1300, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1404 = metadata !{i32 786445, metadata !1376, metadata !"handler", metadata !1300, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1405} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1405 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1300, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1109} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1406 = metadata !{i32 786445, metadata !1376, metadata !"alias", metadata !1300, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1407 = metadata !{i32 786445, metadata !1376, metadata !"root", metadata !1300, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1408 = metadata !{i32 786445, metadata !1376, metadata !"post_action", metadata !1300, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1409 = metadata !{i32 786445, metadata !1376, metadata !"root_lengths", metadata !1300, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1410 = metadata !{i32 786445, metadata !1376, metadata !"root_values", metadata !1300, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1411 = metadata !{i32 786445, metadata !1376, metadata !"types", metadata !1300, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1412 = metadata !{i32 786445, metadata !1376, metadata !"types_hash", metadata !1300, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !497} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1413 = metadata !{i32 786445, metadata !1376, metadata !"default_type", metadata !1300, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1414 = metadata !{i32 786445, metadata !1376, metadata !"client_max_body_size", metadata !1300, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1415 = metadata !{i32 786445, metadata !1376, metadata !"directio", metadata !1300, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1416 = metadata !{i32 786445, metadata !1376, metadata !"directio_alignment", metadata !1300, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1417 = metadata !{i32 786445, metadata !1376, metadata !"client_body_buffer_size", metadata !1300, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1418 = metadata !{i32 786445, metadata !1376, metadata !"send_lowat", metadata !1300, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1419 = metadata !{i32 786445, metadata !1376, metadata !"postpone_output", metadata !1300, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1420 = metadata !{i32 786445, metadata !1376, metadata !"limit_rate", metadata !1300, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1421 = metadata !{i32 786445, metadata !1376, metadata !"limit_rate_after", metadata !1300, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1422 = metadata !{i32 786445, metadata !1376, metadata !"sendfile_max_chunk", metadata !1300, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1423 = metadata !{i32 786445, metadata !1376, metadata !"read_ahead", metadata !1300, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1424 = metadata !{i32 786445, metadata !1376, metadata !"client_body_timeout", metadata !1300, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1425 = metadata !{i32 786445, metadata !1376, metadata !"send_timeout", metadata !1300, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1426 = metadata !{i32 786445, metadata !1376, metadata !"keepalive_timeout", metadata !1300, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1427 = metadata !{i32 786445, metadata !1376, metadata !"lingering_time", metadata !1300, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1428 = metadata !{i32 786445, metadata !1376, metadata !"lingering_timeout", metadata !1300, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1429 = metadata !{i32 786445, metadata !1376, metadata !"resolver_timeout", metadata !1300, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1430 = metadata !{i32 786445, metadata !1376, metadata !"resolver", metadata !1300, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1045} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1431 = metadata !{i32 786445, metadata !1376, metadata !"keepalive_header", metadata !1300, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !584} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1432 = metadata !{i32 786445, metadata !1376, metadata !"keepalive_requests", metadata !1300, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1433 = metadata !{i32 786445, metadata !1376, metadata !"keepalive_disable", metadata !1300, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1434 = metadata !{i32 786445, metadata !1376, metadata !"satisfy", metadata !1300, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1435 = metadata !{i32 786445, metadata !1376, metadata !"lingering_close", metadata !1300, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1436 = metadata !{i32 786445, metadata !1376, metadata !"if_modified_since", metadata !1300, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1437 = metadata !{i32 786445, metadata !1376, metadata !"max_ranges", metadata !1300, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1438 = metadata !{i32 786445, metadata !1376, metadata !"client_body_in_file_only", metadata !1300, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1439 = metadata !{i32 786445, metadata !1376, metadata !"client_body_in_single_buffer", metadata !1300, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !492} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1440 = metadata !{i32 786445, metadata !1376, metadata !"internal", metadata !1300, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !492} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1441 = metadata !{i32 786445, metadata !1376, metadata !"sendfile", metadata !1300, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !492} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1442 = metadata !{i32 786445, metadata !1376, metadata !"tcp_nopush", metadata !1300, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !492} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1443 = metadata !{i32 786445, metadata !1376, metadata !"tcp_nodelay", metadata !1300, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !492} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1444 = metadata !{i32 786445, metadata !1376, metadata !"reset_timedout_connection", metadata !1300, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !492} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1445 = metadata !{i32 786445, metadata !1376, metadata !"server_name_in_redirect", metadata !1300, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !492} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1446 = metadata !{i32 786445, metadata !1376, metadata !"port_in_redirect", metadata !1300, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !492} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1447 = metadata !{i32 786445, metadata !1376, metadata !"msie_padding", metadata !1300, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !492} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1448 = metadata !{i32 786445, metadata !1376, metadata !"msie_refresh", metadata !1300, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !492} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1449 = metadata !{i32 786445, metadata !1376, metadata !"log_not_found", metadata !1300, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !492} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1450 = metadata !{i32 786445, metadata !1376, metadata !"log_subrequest", metadata !1300, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !492} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1451 = metadata !{i32 786445, metadata !1376, metadata !"recursive_error_pages", metadata !1300, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !492} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1452 = metadata !{i32 786445, metadata !1376, metadata !"server_tokens", metadata !1300, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !492} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1453 = metadata !{i32 786445, metadata !1376, metadata !"chunked_transfer_encoding", metadata !1300, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !492} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1454 = metadata !{i32 786445, metadata !1376, metadata !"gzip_vary", metadata !1300, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !492} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1455 = metadata !{i32 786445, metadata !1376, metadata !"gzip_http_version", metadata !1300, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1456 = metadata !{i32 786445, metadata !1376, metadata !"gzip_proxied", metadata !1300, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1457 = metadata !{i32 786445, metadata !1376, metadata !"gzip_disable", metadata !1300, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1458 = metadata !{i32 786445, metadata !1376, metadata !"disable_symlinks", metadata !1300, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1459 = metadata !{i32 786445, metadata !1376, metadata !"disable_symlinks_from", metadata !1300, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1460} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1460 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1461} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1461 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1300, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1462} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1462 = metadata !{i32 786451, null, metadata !"", metadata !1463, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1464, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1463 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1464 = metadata !{metadata !1465, metadata !1466, metadata !1468, metadata !1469}
!1465 = metadata !{i32 786445, metadata !1462, metadata !"value", metadata !1463, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1466 = metadata !{i32 786445, metadata !1462, metadata !"flushes", metadata !1463, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1467} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1467 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1468 = metadata !{i32 786445, metadata !1462, metadata !"lengths", metadata !1463, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1469 = metadata !{i32 786445, metadata !1462, metadata !"values", metadata !1463, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1470 = metadata !{i32 786445, metadata !1376, metadata !"error_pages", metadata !1300, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1471 = metadata !{i32 786445, metadata !1376, metadata !"try_files", metadata !1300, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1472} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1472 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1473} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1473 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1300, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1474} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1474 = metadata !{i32 786451, null, metadata !"", metadata !1300, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1475, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1475 = metadata !{metadata !1476, metadata !1477, metadata !1478, metadata !1479, metadata !1480}
!1476 = metadata !{i32 786445, metadata !1474, metadata !"lengths", metadata !1300, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1477 = metadata !{i32 786445, metadata !1474, metadata !"values", metadata !1300, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1478 = metadata !{i32 786445, metadata !1474, metadata !"name", metadata !1300, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1479 = metadata !{i32 786445, metadata !1474, metadata !"code", metadata !1300, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1480 = metadata !{i32 786445, metadata !1474, metadata !"test_dir", metadata !1300, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1481 = metadata !{i32 786445, metadata !1376, metadata !"client_body_temp_path", metadata !1300, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !671} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1482 = metadata !{i32 786445, metadata !1376, metadata !"open_file_cache", metadata !1300, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1483} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1483 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1484} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1484 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1300, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1485} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1485 = metadata !{i32 786451, null, metadata !"", metadata !1486, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1487, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1486 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1487 = metadata !{metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1493}
!1488 = metadata !{i32 786445, metadata !1485, metadata !"rbtree", metadata !1486, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !606} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1489 = metadata !{i32 786445, metadata !1485, metadata !"sentinel", metadata !1486, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1490 = metadata !{i32 786445, metadata !1485, metadata !"expire_queue", metadata !1486, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1491 = metadata !{i32 786445, metadata !1485, metadata !"current", metadata !1486, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1492 = metadata !{i32 786445, metadata !1485, metadata !"max", metadata !1486, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1493 = metadata !{i32 786445, metadata !1485, metadata !"inactive", metadata !1486, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !584} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1494 = metadata !{i32 786445, metadata !1376, metadata !"open_file_cache_valid", metadata !1300, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !584} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1495 = metadata !{i32 786445, metadata !1376, metadata !"open_file_cache_min_uses", metadata !1300, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1496 = metadata !{i32 786445, metadata !1376, metadata !"open_file_cache_errors", metadata !1300, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !492} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1497 = metadata !{i32 786445, metadata !1376, metadata !"open_file_cache_events", metadata !1300, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !492} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1498 = metadata !{i32 786445, metadata !1376, metadata !"error_log", metadata !1300, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1499 = metadata !{i32 786445, metadata !1376, metadata !"types_hash_max_size", metadata !1300, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1500 = metadata !{i32 786445, metadata !1376, metadata !"types_hash_bucket_size", metadata !1300, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1501 = metadata !{i32 786445, metadata !1376, metadata !"locations", metadata !1300, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1502 = metadata !{i32 786445, metadata !1299, metadata !"name", metadata !1300, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1503 = metadata !{i32 786445, metadata !549, metadata !"phase_handler", metadata !550, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !521} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1504 = metadata !{i32 786445, metadata !549, metadata !"content_handler", metadata !550, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1405} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1505 = metadata !{i32 786445, metadata !549, metadata !"access_code", metadata !550, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1506 = metadata !{i32 786445, metadata !549, metadata !"variables", metadata !550, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1507} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1507 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1508} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1508 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !550, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1509} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1509 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !550, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1510} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1510 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1511, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1511 = metadata !{metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516, metadata !1517}
!1512 = metadata !{i32 786445, metadata !1510, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1513 = metadata !{i32 786445, metadata !1510, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1514 = metadata !{i32 786445, metadata !1510, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1515 = metadata !{i32 786445, metadata !1510, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1516 = metadata !{i32 786445, metadata !1510, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1517 = metadata !{i32 786445, metadata !1510, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1518 = metadata !{i32 786445, metadata !549, metadata !"ncaptures", metadata !550, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1519 = metadata !{i32 786445, metadata !549, metadata !"captures", metadata !550, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1520} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1520 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1521 = metadata !{i32 786445, metadata !549, metadata !"captures_data", metadata !550, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1522 = metadata !{i32 786445, metadata !549, metadata !"limit_rate", metadata !550, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1523 = metadata !{i32 786445, metadata !549, metadata !"header_size", metadata !550, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1524 = metadata !{i32 786445, metadata !549, metadata !"request_length", metadata !550, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1525 = metadata !{i32 786445, metadata !549, metadata !"err_status", metadata !550, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1526 = metadata !{i32 786445, metadata !549, metadata !"http_connection", metadata !550, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1527} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1527 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1528} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1528 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !550, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1529} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1529 = metadata !{i32 786451, null, metadata !"", metadata !550, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1530, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1530 = metadata !{metadata !1531, metadata !1532, metadata !1534, metadata !1535, metadata !1536, metadata !1537}
!1531 = metadata !{i32 786445, metadata !1529, metadata !"request", metadata !550, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !564} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1532 = metadata !{i32 786445, metadata !1529, metadata !"busy", metadata !550, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1533} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1533 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1534 = metadata !{i32 786445, metadata !1529, metadata !"nbusy", metadata !550, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !521} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1535 = metadata !{i32 786445, metadata !1529, metadata !"free", metadata !550, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1533} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1536 = metadata !{i32 786445, metadata !1529, metadata !"nfree", metadata !550, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !521} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1537 = metadata !{i32 786445, metadata !1529, metadata !"pipeline", metadata !550, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1538 = metadata !{i32 786445, metadata !549, metadata !"log_handler", metadata !550, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1539} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1539 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !550, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1540} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1540 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1541} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1542 = metadata !{metadata !44, metadata !564, metadata !564, metadata !44, metadata !30}
!1543 = metadata !{i32 786445, metadata !549, metadata !"cleanup", metadata !550, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1544} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1544 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1545 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !550, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1546} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1546 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !550, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1547, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1547 = metadata !{metadata !1548, metadata !1549, metadata !1550}
!1548 = metadata !{i32 786445, metadata !1546, metadata !"handler", metadata !550, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1146} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1549 = metadata !{i32 786445, metadata !1546, metadata !"data", metadata !550, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1550 = metadata !{i32 786445, metadata !1546, metadata !"next", metadata !550, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1544} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1551 = metadata !{i32 786445, metadata !549, metadata !"subrequests", metadata !550, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1552 = metadata !{i32 786445, metadata !549, metadata !"count", metadata !550, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1553 = metadata !{i32 786445, metadata !549, metadata !"blocked", metadata !550, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1554 = metadata !{i32 786445, metadata !549, metadata !"aio", metadata !550, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1555 = metadata !{i32 786445, metadata !549, metadata !"http_state", metadata !550, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1556 = metadata !{i32 786445, metadata !549, metadata !"complex_uri", metadata !550, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1557 = metadata !{i32 786445, metadata !549, metadata !"quoted_uri", metadata !550, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1558 = metadata !{i32 786445, metadata !549, metadata !"plus_in_uri", metadata !550, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1559 = metadata !{i32 786445, metadata !549, metadata !"space_in_uri", metadata !550, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1560 = metadata !{i32 786445, metadata !549, metadata !"invalid_header", metadata !550, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1561 = metadata !{i32 786445, metadata !549, metadata !"add_uri_to_alias", metadata !550, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1562 = metadata !{i32 786445, metadata !549, metadata !"valid_location", metadata !550, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1563 = metadata !{i32 786445, metadata !549, metadata !"valid_unparsed_uri", metadata !550, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1564 = metadata !{i32 786445, metadata !549, metadata !"uri_changed", metadata !550, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1565 = metadata !{i32 786445, metadata !549, metadata !"uri_changes", metadata !550, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1566 = metadata !{i32 786445, metadata !549, metadata !"request_body_in_single_buf", metadata !550, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1567 = metadata !{i32 786445, metadata !549, metadata !"request_body_in_file_only", metadata !550, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1568 = metadata !{i32 786445, metadata !549, metadata !"request_body_in_persistent_file", metadata !550, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1569 = metadata !{i32 786445, metadata !549, metadata !"request_body_in_clean_file", metadata !550, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1570 = metadata !{i32 786445, metadata !549, metadata !"request_body_file_group_access", metadata !550, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1571 = metadata !{i32 786445, metadata !549, metadata !"request_body_file_log_level", metadata !550, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1572 = metadata !{i32 786445, metadata !549, metadata !"subrequest_in_memory", metadata !550, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1573 = metadata !{i32 786445, metadata !549, metadata !"waited", metadata !550, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1574 = metadata !{i32 786445, metadata !549, metadata !"cached", metadata !550, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1575 = metadata !{i32 786445, metadata !549, metadata !"gzip_tested", metadata !550, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1576 = metadata !{i32 786445, metadata !549, metadata !"gzip_ok", metadata !550, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1577 = metadata !{i32 786445, metadata !549, metadata !"gzip_vary", metadata !550, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1578 = metadata !{i32 786445, metadata !549, metadata !"proxy", metadata !550, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1579 = metadata !{i32 786445, metadata !549, metadata !"bypass_cache", metadata !550, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1580 = metadata !{i32 786445, metadata !549, metadata !"no_cache", metadata !550, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1581 = metadata !{i32 786445, metadata !549, metadata !"limit_conn_set", metadata !550, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1582 = metadata !{i32 786445, metadata !549, metadata !"limit_req_set", metadata !550, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1583 = metadata !{i32 786445, metadata !549, metadata !"pipeline", metadata !550, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1584 = metadata !{i32 786445, metadata !549, metadata !"plain_http", metadata !550, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1585 = metadata !{i32 786445, metadata !549, metadata !"chunked", metadata !550, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1586 = metadata !{i32 786445, metadata !549, metadata !"header_only", metadata !550, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1587 = metadata !{i32 786445, metadata !549, metadata !"keepalive", metadata !550, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1588 = metadata !{i32 786445, metadata !549, metadata !"lingering_close", metadata !550, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1589 = metadata !{i32 786445, metadata !549, metadata !"discard_body", metadata !550, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1590 = metadata !{i32 786445, metadata !549, metadata !"internal", metadata !550, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1591 = metadata !{i32 786445, metadata !549, metadata !"error_page", metadata !550, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1592 = metadata !{i32 786445, metadata !549, metadata !"ignore_content_encoding", metadata !550, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1593 = metadata !{i32 786445, metadata !549, metadata !"filter_finalize", metadata !550, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1594 = metadata !{i32 786445, metadata !549, metadata !"post_action", metadata !550, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1595 = metadata !{i32 786445, metadata !549, metadata !"request_complete", metadata !550, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1596 = metadata !{i32 786445, metadata !549, metadata !"request_output", metadata !550, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1597 = metadata !{i32 786445, metadata !549, metadata !"header_sent", metadata !550, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1598 = metadata !{i32 786445, metadata !549, metadata !"expect_tested", metadata !550, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1599 = metadata !{i32 786445, metadata !549, metadata !"root_tested", metadata !550, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1600 = metadata !{i32 786445, metadata !549, metadata !"done", metadata !550, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1601 = metadata !{i32 786445, metadata !549, metadata !"logged", metadata !550, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1602 = metadata !{i32 786445, metadata !549, metadata !"buffered", metadata !550, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1603 = metadata !{i32 786445, metadata !549, metadata !"main_filter_need_in_memory", metadata !550, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1604 = metadata !{i32 786445, metadata !549, metadata !"filter_need_in_memory", metadata !550, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1605 = metadata !{i32 786445, metadata !549, metadata !"filter_need_temporary", metadata !550, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1606 = metadata !{i32 786445, metadata !549, metadata !"allow_ranges", metadata !550, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1607 = metadata !{i32 786445, metadata !549, metadata !"state", metadata !550, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1608 = metadata !{i32 786445, metadata !549, metadata !"header_hash", metadata !550, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1609 = metadata !{i32 786445, metadata !549, metadata !"lowcase_index", metadata !550, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1610 = metadata !{i32 786445, metadata !549, metadata !"lowcase_header", metadata !550, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1611} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1611 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1612, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1612 = metadata !{metadata !1613}
!1613 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1614 = metadata !{i32 786445, metadata !549, metadata !"header_name_start", metadata !550, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1615 = metadata !{i32 786445, metadata !549, metadata !"header_name_end", metadata !550, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1616 = metadata !{i32 786445, metadata !549, metadata !"header_start", metadata !550, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1617 = metadata !{i32 786445, metadata !549, metadata !"header_end", metadata !550, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1618 = metadata !{i32 786445, metadata !549, metadata !"uri_start", metadata !550, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1619 = metadata !{i32 786445, metadata !549, metadata !"uri_end", metadata !550, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1620 = metadata !{i32 786445, metadata !549, metadata !"uri_ext", metadata !550, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1621 = metadata !{i32 786445, metadata !549, metadata !"args_start", metadata !550, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1622 = metadata !{i32 786445, metadata !549, metadata !"request_start", metadata !550, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1623 = metadata !{i32 786445, metadata !549, metadata !"request_end", metadata !550, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1624 = metadata !{i32 786445, metadata !549, metadata !"method_end", metadata !550, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1625 = metadata !{i32 786445, metadata !549, metadata !"schema_start", metadata !550, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1626 = metadata !{i32 786445, metadata !549, metadata !"schema_end", metadata !550, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1627 = metadata !{i32 786445, metadata !549, metadata !"host_start", metadata !550, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1628 = metadata !{i32 786445, metadata !549, metadata !"host_end", metadata !550, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1629 = metadata !{i32 786445, metadata !549, metadata !"port_start", metadata !550, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1630 = metadata !{i32 786445, metadata !549, metadata !"port_end", metadata !550, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1631 = metadata !{i32 786445, metadata !549, metadata !"http_minor", metadata !550, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1632 = metadata !{i32 786445, metadata !549, metadata !"http_major", metadata !550, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1633 = metadata !{metadata !1634}
!1634 = metadata !{metadata !1635, metadata !1636, metadata !1637, metadata !1639, metadata !1640}
!1635 = metadata !{i32 786689, metadata !544, metadata !"r", metadata !6, i32 16777374, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 158]
!1636 = metadata !{i32 786689, metadata !544, metadata !"in", metadata !6, i32 33554590, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 158]
!1637 = metadata !{i32 786688, metadata !1638, metadata !"rc", metadata !6, i32 160, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 160]
!1638 = metadata !{i32 786443, metadata !544, i32 159, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1639 = metadata !{i32 786688, metadata !1638, metadata !"cl", metadata !6, i32 161, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 161]
!1640 = metadata !{i32 786688, metadata !1638, metadata !"ctx", metadata !6, i32 162, metadata !1641, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 162]
!1641 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1642} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_gzip_ctx_t]
!1642 = metadata !{i32 786454, null, metadata !"ngx_http_gzip_ctx_t", metadata !6, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1643} ; [ DW_TAG_typedef ] [ngx_http_gzip_ctx_t] [line 46, size 0, align 0, offset 0] [from ]
!1643 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 20, i64 1088, i64 32, i32 0, i32 0, null, metadata !1644, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 20, size 1088, align 32, offset 0] [from ]
!1644 = metadata !{metadata !1645, metadata !1646, metadata !1647, metadata !1648, metadata !1649, metadata !1650, metadata !1651, metadata !1652, metadata !1653, metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1659, metadata !1660, metadata !1661, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1706}
!1645 = metadata !{i32 786445, metadata !1643, metadata !"in", metadata !6, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 21, size 32, align 32, offset 0] [from ]
!1646 = metadata !{i32 786445, metadata !1643, metadata !"free", metadata !6, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 22, size 32, align 32, offset 32] [from ]
!1647 = metadata !{i32 786445, metadata !1643, metadata !"busy", metadata !6, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 23, size 32, align 32, offset 64] [from ]
!1648 = metadata !{i32 786445, metadata !1643, metadata !"out", metadata !6, i32 24, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 24, size 32, align 32, offset 96] [from ]
!1649 = metadata !{i32 786445, metadata !1643, metadata !"last_out", metadata !6, i32 25, i64 32, i64 32, i64 128, i32 0, metadata !817} ; [ DW_TAG_member ] [last_out] [line 25, size 32, align 32, offset 128] [from ]
!1650 = metadata !{i32 786445, metadata !1643, metadata !"copied", metadata !6, i32 26, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [copied] [line 26, size 32, align 32, offset 160] [from ]
!1651 = metadata !{i32 786445, metadata !1643, metadata !"copy_buf", metadata !6, i32 27, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [copy_buf] [line 27, size 32, align 32, offset 192] [from ]
!1652 = metadata !{i32 786445, metadata !1643, metadata !"in_buf", metadata !6, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !62} ; [ DW_TAG_member ] [in_buf] [line 28, size 32, align 32, offset 224] [from ]
!1653 = metadata !{i32 786445, metadata !1643, metadata !"out_buf", metadata !6, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !62} ; [ DW_TAG_member ] [out_buf] [line 29, size 32, align 32, offset 256] [from ]
!1654 = metadata !{i32 786445, metadata !1643, metadata !"bufs", metadata !6, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !521} ; [ DW_TAG_member ] [bufs] [line 30, size 32, align 32, offset 288] [from ngx_int_t]
!1655 = metadata !{i32 786445, metadata !1643, metadata !"preallocated", metadata !6, i32 31, i64 32, i64 32, i64 320, i32 0, metadata !24} ; [ DW_TAG_member ] [preallocated] [line 31, size 32, align 32, offset 320] [from ]
!1656 = metadata !{i32 786445, metadata !1643, metadata !"free_mem", metadata !6, i32 32, i64 32, i64 32, i64 352, i32 0, metadata !9} ; [ DW_TAG_member ] [free_mem] [line 32, size 32, align 32, offset 352] [from ]
!1657 = metadata !{i32 786445, metadata !1643, metadata !"allocated", metadata !6, i32 33, i64 32, i64 32, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [allocated] [line 33, size 32, align 32, offset 384] [from ngx_uint_t]
!1658 = metadata !{i32 786445, metadata !1643, metadata !"wbits", metadata !6, i32 34, i64 32, i64 32, i64 416, i32 0, metadata !86} ; [ DW_TAG_member ] [wbits] [line 34, size 32, align 32, offset 416] [from int]
!1659 = metadata !{i32 786445, metadata !1643, metadata !"memlevel", metadata !6, i32 35, i64 32, i64 32, i64 448, i32 0, metadata !86} ; [ DW_TAG_member ] [memlevel] [line 35, size 32, align 32, offset 448] [from int]
!1660 = metadata !{i32 786445, metadata !1643, metadata !"flush", metadata !6, i32 36, i64 4, i64 32, i64 480, i32 0, metadata !28} ; [ DW_TAG_member ] [flush] [line 36, size 4, align 32, offset 480] [from unsigned int]
!1661 = metadata !{i32 786445, metadata !1643, metadata !"redo", metadata !6, i32 37, i64 1, i64 32, i64 484, i32 0, metadata !28} ; [ DW_TAG_member ] [redo] [line 37, size 1, align 32, offset 484] [from unsigned int]
!1662 = metadata !{i32 786445, metadata !1643, metadata !"done", metadata !6, i32 38, i64 1, i64 32, i64 485, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 38, size 1, align 32, offset 485] [from unsigned int]
!1663 = metadata !{i32 786445, metadata !1643, metadata !"nomem", metadata !6, i32 39, i64 1, i64 32, i64 486, i32 0, metadata !28} ; [ DW_TAG_member ] [nomem] [line 39, size 1, align 32, offset 486] [from unsigned int]
!1664 = metadata !{i32 786445, metadata !1643, metadata !"gzheader", metadata !6, i32 40, i64 1, i64 32, i64 487, i32 0, metadata !28} ; [ DW_TAG_member ] [gzheader] [line 40, size 1, align 32, offset 487] [from unsigned int]
!1665 = metadata !{i32 786445, metadata !1643, metadata !"buffering", metadata !6, i32 41, i64 1, i64 32, i64 488, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 41, size 1, align 32, offset 488] [from unsigned int]
!1666 = metadata !{i32 786445, metadata !1643, metadata !"zin", metadata !6, i32 42, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [zin] [line 42, size 32, align 32, offset 512] [from size_t]
!1667 = metadata !{i32 786445, metadata !1643, metadata !"zout", metadata !6, i32 43, i64 32, i64 32, i64 544, i32 0, metadata !30} ; [ DW_TAG_member ] [zout] [line 43, size 32, align 32, offset 544] [from size_t]
!1668 = metadata !{i32 786445, metadata !1643, metadata !"crc32", metadata !6, i32 44, i64 32, i64 32, i64 576, i32 0, metadata !553} ; [ DW_TAG_member ] [crc32] [line 44, size 32, align 32, offset 576] [from uint32_t]
!1669 = metadata !{i32 786445, metadata !1643, metadata !"zstream", metadata !6, i32 45, i64 448, i64 32, i64 608, i32 0, metadata !1670} ; [ DW_TAG_member ] [zstream] [line 45, size 448, align 32, offset 608] [from z_stream]
!1670 = metadata !{i32 786454, null, metadata !"z_stream", metadata !6, i32 104, i64 0, i64 0, i64 0, i32 0, metadata !1671} ; [ DW_TAG_typedef ] [z_stream] [line 104, size 0, align 0, offset 0] [from z_stream_s]
!1671 = metadata !{i32 786451, null, metadata !"z_stream_s", metadata !1672, i32 85, i64 448, i64 32, i32 0, i32 0, null, metadata !1673, i32 0, i32 0} ; [ DW_TAG_structure_type ] [z_stream_s] [line 85, size 448, align 32, offset 0] [from ]
!1672 = metadata !{i32 786473, metadata !"/usr/include/zlib.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1673 = metadata !{metadata !1674, metadata !1678, metadata !1680, metadata !1682, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1691, metadata !1697, metadata !1702, metadata !1703, metadata !1704, metadata !1705}
!1674 = metadata !{i32 786445, metadata !1671, metadata !"next_in", metadata !1672, i32 86, i64 32, i64 32, i64 0, i32 0, metadata !1675} ; [ DW_TAG_member ] [next_in] [line 86, size 32, align 32, offset 0] [from ]
!1675 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1676} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from Bytef]
!1676 = metadata !{i32 786454, null, metadata !"Bytef", metadata !1672, i32 337, i64 0, i64 0, i64 0, i32 0, metadata !1677} ; [ DW_TAG_typedef ] [Bytef] [line 337, size 0, align 0, offset 0] [from Byte]
!1677 = metadata !{i32 786454, null, metadata !"Byte", metadata !1672, i32 328, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [Byte] [line 328, size 0, align 0, offset 0] [from unsigned char]
!1678 = metadata !{i32 786445, metadata !1671, metadata !"avail_in", metadata !1672, i32 87, i64 32, i64 32, i64 32, i32 0, metadata !1679} ; [ DW_TAG_member ] [avail_in] [line 87, size 32, align 32, offset 32] [from uInt]
!1679 = metadata !{i32 786454, null, metadata !"uInt", metadata !1672, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uInt] [line 330, size 0, align 0, offset 0] [from unsigned int]
!1680 = metadata !{i32 786445, metadata !1671, metadata !"total_in", metadata !1672, i32 88, i64 32, i64 32, i64 64, i32 0, metadata !1681} ; [ DW_TAG_member ] [total_in] [line 88, size 32, align 32, offset 64] [from uLong]
!1681 = metadata !{i32 786454, null, metadata !"uLong", metadata !1672, i32 331, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [uLong] [line 331, size 0, align 0, offset 0] [from long unsigned int]
!1682 = metadata !{i32 786445, metadata !1671, metadata !"next_out", metadata !1672, i32 90, i64 32, i64 32, i64 96, i32 0, metadata !1675} ; [ DW_TAG_member ] [next_out] [line 90, size 32, align 32, offset 96] [from ]
!1683 = metadata !{i32 786445, metadata !1671, metadata !"avail_out", metadata !1672, i32 91, i64 32, i64 32, i64 128, i32 0, metadata !1679} ; [ DW_TAG_member ] [avail_out] [line 91, size 32, align 32, offset 128] [from uInt]
!1684 = metadata !{i32 786445, metadata !1671, metadata !"total_out", metadata !1672, i32 92, i64 32, i64 32, i64 160, i32 0, metadata !1681} ; [ DW_TAG_member ] [total_out] [line 92, size 32, align 32, offset 160] [from uLong]
!1685 = metadata !{i32 786445, metadata !1671, metadata !"msg", metadata !1672, i32 94, i64 32, i64 32, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [msg] [line 94, size 32, align 32, offset 192] [from ]
!1686 = metadata !{i32 786445, metadata !1671, metadata !"state", metadata !1672, i32 95, i64 32, i64 32, i64 224, i32 0, metadata !1687} ; [ DW_TAG_member ] [state] [line 95, size 32, align 32, offset 224] [from ]
!1687 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1688} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from internal_state]
!1688 = metadata !{i32 786451, null, metadata !"internal_state", metadata !1672, i32 1476, i64 32, i64 32, i32 0, i32 0, null, metadata !1689, i32 0, i32 0} ; [ DW_TAG_structure_type ] [internal_state] [line 1476, size 32, align 32, offset 0] [from ]
!1689 = metadata !{metadata !1690}
!1690 = metadata !{i32 786445, metadata !1688, metadata !"dummy", metadata !1672, i32 1476, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_member ] [dummy] [line 1476, size 32, align 32, offset 0] [from int]
!1691 = metadata !{i32 786445, metadata !1671, metadata !"zalloc", metadata !1672, i32 97, i64 32, i64 32, i64 256, i32 0, metadata !1692} ; [ DW_TAG_member ] [zalloc] [line 97, size 32, align 32, offset 256] [from alloc_func]
!1692 = metadata !{i32 786454, null, metadata !"alloc_func", metadata !1672, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !1693} ; [ DW_TAG_typedef ] [alloc_func] [line 80, size 0, align 0, offset 0] [from ]
!1693 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1694} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1694 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1695, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1695 = metadata !{metadata !1696, metadata !1696, metadata !1679, metadata !1679}
!1696 = metadata !{i32 786454, null, metadata !"voidpf", metadata !1672, i32 346, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [voidpf] [line 346, size 0, align 0, offset 0] [from ]
!1697 = metadata !{i32 786445, metadata !1671, metadata !"zfree", metadata !1672, i32 98, i64 32, i64 32, i64 288, i32 0, metadata !1698} ; [ DW_TAG_member ] [zfree] [line 98, size 32, align 32, offset 288] [from free_func]
!1698 = metadata !{i32 786454, null, metadata !"free_func", metadata !1672, i32 81, i64 0, i64 0, i64 0, i32 0, metadata !1699} ; [ DW_TAG_typedef ] [free_func] [line 81, size 0, align 0, offset 0] [from ]
!1699 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1700} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1701 = metadata !{null, metadata !1696, metadata !1696}
!1702 = metadata !{i32 786445, metadata !1671, metadata !"opaque", metadata !1672, i32 99, i64 32, i64 32, i64 320, i32 0, metadata !1696} ; [ DW_TAG_member ] [opaque] [line 99, size 32, align 32, offset 320] [from voidpf]
!1703 = metadata !{i32 786445, metadata !1671, metadata !"data_type", metadata !1672, i32 101, i64 32, i64 32, i64 352, i32 0, metadata !86} ; [ DW_TAG_member ] [data_type] [line 101, size 32, align 32, offset 352] [from int]
!1704 = metadata !{i32 786445, metadata !1671, metadata !"adler", metadata !1672, i32 102, i64 32, i64 32, i64 384, i32 0, metadata !1681} ; [ DW_TAG_member ] [adler] [line 102, size 32, align 32, offset 384] [from uLong]
!1705 = metadata !{i32 786445, metadata !1671, metadata !"reserved", metadata !1672, i32 103, i64 32, i64 32, i64 416, i32 0, metadata !1681} ; [ DW_TAG_member ] [reserved] [line 103, size 32, align 32, offset 416] [from uLong]
!1706 = metadata !{i32 786445, metadata !1643, metadata !"request", metadata !6, i32 46, i64 32, i64 32, i64 1056, i32 0, metadata !547} ; [ DW_TAG_member ] [request] [line 46, size 32, align 32, offset 1056] [from ]
!1707 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_gzheader", metadata !"ngx_http_gzip_filter_gzheader", metadata !"", metadata !6, i32 382, metadata !1708, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1710, i32 383} ; [ DW_TAG_subprogram ] [line 382] [local] [def] [scope 383] [ngx_http_gzip_filter_gzheader]
!1708 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1709, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1709 = metadata !{metadata !521, metadata !547, metadata !1641}
!1710 = metadata !{metadata !1711}
!1711 = metadata !{metadata !1712, metadata !1713, metadata !1714, metadata !1716}
!1712 = metadata !{i32 786689, metadata !1707, metadata !"r", metadata !6, i32 16777598, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 382]
!1713 = metadata !{i32 786689, metadata !1707, metadata !"ctx", metadata !6, i32 33554814, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 382]
!1714 = metadata !{i32 786688, metadata !1715, metadata !"b", metadata !6, i32 384, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 384]
!1715 = metadata !{i32 786443, metadata !1707, i32 383, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1716 = metadata !{i32 786688, metadata !1715, metadata !"cl", metadata !6, i32 385, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 385]
!1717 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_free_copy_buf", metadata !"ngx_http_gzip_filter_free_copy_buf", metadata !"", metadata !6, i32 644, metadata !1718, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1720, i32 645} ; [ DW_TAG_subprogram ] [line 644] [local] [def] [scope 645] [ngx_http_gzip_filter_free_copy_buf]
!1718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1719 = metadata !{null, metadata !547, metadata !1641}
!1720 = metadata !{metadata !1721}
!1721 = metadata !{metadata !1722, metadata !1723, metadata !1724}
!1722 = metadata !{i32 786689, metadata !1717, metadata !"r", metadata !6, i32 16777860, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 644]
!1723 = metadata !{i32 786689, metadata !1717, metadata !"ctx", metadata !6, i32 33555076, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 644]
!1724 = metadata !{i32 786688, metadata !1725, metadata !"cl", metadata !6, i32 646, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 646]
!1725 = metadata !{i32 786443, metadata !1717, i32 645, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1726 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_deflate", metadata !"ngx_http_gzip_filter_deflate", metadata !"", metadata !6, i32 475, metadata !1708, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1727, i32 476} ; [ DW_TAG_subprogram ] [line 475] [local] [def] [scope 476] [ngx_http_gzip_filter_deflate]
!1727 = metadata !{metadata !1728}
!1728 = metadata !{metadata !1729, metadata !1730, metadata !1731, metadata !1733, metadata !1734, metadata !1735}
!1729 = metadata !{i32 786689, metadata !1726, metadata !"r", metadata !6, i32 16777691, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 475]
!1730 = metadata !{i32 786689, metadata !1726, metadata !"ctx", metadata !6, i32 33554907, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 475]
!1731 = metadata !{i32 786688, metadata !1732, metadata !"rc", metadata !6, i32 477, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 477]
!1732 = metadata !{i32 786443, metadata !1726, i32 476, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1733 = metadata !{i32 786688, metadata !1732, metadata !"b", metadata !6, i32 478, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 478]
!1734 = metadata !{i32 786688, metadata !1732, metadata !"cl", metadata !6, i32 479, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 479]
!1735 = metadata !{i32 786688, metadata !1732, metadata !"conf", metadata !6, i32 480, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 480]
!1736 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_deflate_end", metadata !"ngx_http_gzip_filter_deflate_end", metadata !"", metadata !6, i32 555, metadata !1708, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1737, i32 556} ; [ DW_TAG_subprogram ] [line 555] [local] [def] [scope 556] [ngx_http_gzip_filter_deflate_end]
!1737 = metadata !{metadata !1738}
!1738 = metadata !{metadata !1739, metadata !1740, metadata !1741, metadata !1743, metadata !1744, metadata !1745}
!1739 = metadata !{i32 786689, metadata !1736, metadata !"r", metadata !6, i32 16777771, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 555]
!1740 = metadata !{i32 786689, metadata !1736, metadata !"ctx", metadata !6, i32 33554987, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 555]
!1741 = metadata !{i32 786688, metadata !1742, metadata !"rc", metadata !6, i32 557, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 557]
!1742 = metadata !{i32 786443, metadata !1736, i32 556, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1743 = metadata !{i32 786688, metadata !1742, metadata !"b", metadata !6, i32 558, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 558]
!1744 = metadata !{i32 786688, metadata !1742, metadata !"cl", metadata !6, i32 559, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 559]
!1745 = metadata !{i32 786688, metadata !1742, metadata !"trailer", metadata !6, i32 560, metadata !1746, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [trailer] [line 560]
!1746 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1747} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from gztrailer]
!1747 = metadata !{i32 786451, null, metadata !"gztrailer", metadata !6, i32 49, i64 64, i64 32, i32 0, i32 0, null, metadata !1748, i32 0, i32 0} ; [ DW_TAG_structure_type ] [gztrailer] [line 49, size 64, align 32, offset 0] [from ]
!1748 = metadata !{metadata !1749, metadata !1750}
!1749 = metadata !{i32 786445, metadata !1747, metadata !"crc32", metadata !6, i32 51, i64 32, i64 32, i64 0, i32 0, metadata !553} ; [ DW_TAG_member ] [crc32] [line 51, size 32, align 32, offset 0] [from uint32_t]
!1750 = metadata !{i32 786445, metadata !1747, metadata !"zlen", metadata !6, i32 52, i64 32, i64 32, i64 32, i32 0, metadata !553} ; [ DW_TAG_member ] [zlen] [line 52, size 32, align 32, offset 32] [from uint32_t]
!1751 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_get_buf", metadata !"ngx_http_gzip_filter_get_buf", metadata !"", metadata !6, i32 446, metadata !1708, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1752, i32 447} ; [ DW_TAG_subprogram ] [line 446] [local] [def] [scope 447] [ngx_http_gzip_filter_get_buf]
!1752 = metadata !{metadata !1753}
!1753 = metadata !{metadata !1754, metadata !1755, metadata !1756}
!1754 = metadata !{i32 786689, metadata !1751, metadata !"r", metadata !6, i32 16777662, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 446]
!1755 = metadata !{i32 786689, metadata !1751, metadata !"ctx", metadata !6, i32 33554878, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 446]
!1756 = metadata !{i32 786688, metadata !1757, metadata !"conf", metadata !6, i32 448, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 448]
!1757 = metadata !{i32 786443, metadata !1751, i32 447, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1758 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_add_data", metadata !"ngx_http_gzip_filter_add_data", metadata !"", metadata !6, i32 405, metadata !1708, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1759, i32 406} ; [ DW_TAG_subprogram ] [line 405] [local] [def] [scope 406] [ngx_http_gzip_filter_add_data]
!1759 = metadata !{metadata !1760}
!1760 = metadata !{metadata !1761, metadata !1762}
!1761 = metadata !{i32 786689, metadata !1758, metadata !"r", metadata !6, i32 16777621, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 405]
!1762 = metadata !{i32 786689, metadata !1758, metadata !"ctx", metadata !6, i32 33554837, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 405]
!1763 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_deflate_start", metadata !"ngx_http_gzip_filter_deflate_start", metadata !"", metadata !6, i32 357, metadata !1708, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1764, i32 358} ; [ DW_TAG_subprogram ] [line 357] [local] [def] [scope 358] [ngx_http_gzip_filter_deflate_start]
!1764 = metadata !{metadata !1765}
!1765 = metadata !{metadata !1766, metadata !1767, metadata !1768, metadata !1770}
!1766 = metadata !{i32 786689, metadata !1763, metadata !"r", metadata !6, i32 16777573, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 357]
!1767 = metadata !{i32 786689, metadata !1763, metadata !"ctx", metadata !6, i32 33554789, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 357]
!1768 = metadata !{i32 786688, metadata !1769, metadata !"rc", metadata !6, i32 359, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 359]
!1769 = metadata !{i32 786443, metadata !1763, i32 358, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1770 = metadata !{i32 786688, metadata !1769, metadata !"conf", metadata !6, i32 360, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 360]
!1771 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_free", metadata !"ngx_http_gzip_filter_free", metadata !"", metadata !6, i32 638, metadata !1772, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*, i8*)* @ngx_http_gzip_filter_free, null, null, metadata !1774, i32 639} ; [ DW_TAG_subprogram ] [line 638] [local] [def] [scope 639] [ngx_http_gzip_filter_free]
!1772 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1773, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1773 = metadata !{null, metadata !24, metadata !24}
!1774 = metadata !{metadata !1775}
!1775 = metadata !{metadata !1776, metadata !1777}
!1776 = metadata !{i32 786689, metadata !1771, metadata !"opaque", metadata !6, i32 16777854, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opaque] [line 638]
!1777 = metadata !{i32 786689, metadata !1771, metadata !"address", metadata !6, i32 33555070, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [address] [line 638]
!1778 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_alloc", metadata !"ngx_http_gzip_filter_alloc", metadata !"", metadata !6, i32 612, metadata !1779, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (i8*, i32, i32)* @ngx_http_gzip_filter_alloc, null, null, metadata !1783, i32 613} ; [ DW_TAG_subprogram ] [line 612] [local] [def] [scope 613] [ngx_http_gzip_filter_alloc]
!1779 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1780, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1780 = metadata !{metadata !24, metadata !24, metadata !1781, metadata !1781}
!1781 = metadata !{i32 786454, null, metadata !"u_int", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1782} ; [ DW_TAG_typedef ] [u_int] [line 36, size 0, align 0, offset 0] [from __u_int]
!1782 = metadata !{i32 786454, null, metadata !"__u_int", metadata !6, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [__u_int] [line 33, size 0, align 0, offset 0] [from unsigned int]
!1783 = metadata !{metadata !1784}
!1784 = metadata !{metadata !1785, metadata !1786, metadata !1787, metadata !1788, metadata !1790, metadata !1791}
!1785 = metadata !{i32 786689, metadata !1778, metadata !"opaque", metadata !6, i32 16777828, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [opaque] [line 612]
!1786 = metadata !{i32 786689, metadata !1778, metadata !"items", metadata !6, i32 33555044, metadata !1781, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [items] [line 612]
!1787 = metadata !{i32 786689, metadata !1778, metadata !"size", metadata !6, i32 50332260, metadata !1781, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 612]
!1788 = metadata !{i32 786688, metadata !1789, metadata !"ctx", metadata !6, i32 614, metadata !1641, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 614]
!1789 = metadata !{i32 786443, metadata !1778, i32 613, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1790 = metadata !{i32 786688, metadata !1789, metadata !"p", metadata !6, i32 615, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 615]
!1791 = metadata !{i32 786688, metadata !1789, metadata !"alloc", metadata !6, i32 616, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [alloc] [line 616]
!1792 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_buffer", metadata !"ngx_http_gzip_filter_buffer", metadata !"", metadata !6, i32 305, metadata !1793, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1795, i32 306} ; [ DW_TAG_subprogram ] [line 305] [local] [def] [scope 306] [ngx_http_gzip_filter_buffer]
!1793 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1794, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1794 = metadata !{metadata !521, metadata !1641, metadata !56}
!1795 = metadata !{metadata !1796}
!1796 = metadata !{metadata !1797, metadata !1798, metadata !1799, metadata !1801, metadata !1802, metadata !1803, metadata !1804, metadata !1805, metadata !1806, metadata !1807}
!1797 = metadata !{i32 786689, metadata !1792, metadata !"ctx", metadata !6, i32 16777521, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 305]
!1798 = metadata !{i32 786689, metadata !1792, metadata !"in", metadata !6, i32 33554737, metadata !56, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [in] [line 305]
!1799 = metadata !{i32 786688, metadata !1800, metadata !"size", metadata !6, i32 307, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 307]
!1800 = metadata !{i32 786443, metadata !1792, i32 306, i32 0, metadata !6, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1801 = metadata !{i32 786688, metadata !1800, metadata !"buffered", metadata !6, i32 308, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffered] [line 308]
!1802 = metadata !{i32 786688, metadata !1800, metadata !"b", metadata !6, i32 309, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 309]
!1803 = metadata !{i32 786688, metadata !1800, metadata !"buf", metadata !6, i32 310, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 310]
!1804 = metadata !{i32 786688, metadata !1800, metadata !"cl", metadata !6, i32 311, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 311]
!1805 = metadata !{i32 786688, metadata !1800, metadata !"ll", metadata !6, i32 312, metadata !817, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 312]
!1806 = metadata !{i32 786688, metadata !1800, metadata !"r", metadata !6, i32 313, metadata !547, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 313]
!1807 = metadata !{i32 786688, metadata !1800, metadata !"conf", metadata !6, i32 314, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 314]
!1808 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_header_filter", metadata !"ngx_http_gzip_header_filter", metadata !"", metadata !6, i32 103, metadata !1110, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_gzip_header_filter, null, null, metadata !1809, i32 104} ; [ DW_TAG_subprogram ] [line 103] [local] [def] [scope 104] [ngx_http_gzip_header_filter]
!1809 = metadata !{metadata !1810}
!1810 = metadata !{metadata !1811, metadata !1812, metadata !1814, metadata !1815}
!1811 = metadata !{i32 786689, metadata !1808, metadata !"r", metadata !6, i32 16777319, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 103]
!1812 = metadata !{i32 786688, metadata !1813, metadata !"h", metadata !6, i32 105, metadata !993, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 105]
!1813 = metadata !{i32 786443, metadata !1808, i32 104, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1814 = metadata !{i32 786688, metadata !1813, metadata !"ctx", metadata !6, i32 106, metadata !1641, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 106]
!1815 = metadata !{i32 786688, metadata !1813, metadata !"conf", metadata !6, i32 107, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 107]
!1816 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_filter_memory", metadata !"ngx_http_gzip_filter_memory", metadata !"", metadata !6, i32 274, metadata !1718, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1817, i32 275} ; [ DW_TAG_subprogram ] [line 274] [local] [def] [scope 275] [ngx_http_gzip_filter_memory]
!1817 = metadata !{metadata !1818}
!1818 = metadata !{metadata !1819, metadata !1820, metadata !1821, metadata !1823, metadata !1824}
!1819 = metadata !{i32 786689, metadata !1816, metadata !"r", metadata !6, i32 16777490, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 274]
!1820 = metadata !{i32 786689, metadata !1816, metadata !"ctx", metadata !6, i32 33554706, metadata !1641, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 274]
!1821 = metadata !{i32 786688, metadata !1822, metadata !"wbits", metadata !6, i32 276, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wbits] [line 276]
!1822 = metadata !{i32 786443, metadata !1816, i32 275, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1823 = metadata !{i32 786688, metadata !1822, metadata !"memlevel", metadata !6, i32 277, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [memlevel] [line 277]
!1824 = metadata !{i32 786688, metadata !1822, metadata !"conf", metadata !6, i32 278, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 278]
!1825 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_add_variables", metadata !"ngx_http_gzip_add_variables", metadata !"", metadata !6, i32 653, metadata !539, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_gzip_add_variables, null, null, metadata !1826, i32 654} ; [ DW_TAG_subprogram ] [line 653] [local] [def] [scope 654] [ngx_http_gzip_add_variables]
!1826 = metadata !{metadata !1827}
!1827 = metadata !{metadata !1828, metadata !1829}
!1828 = metadata !{i32 786689, metadata !1825, metadata !"cf", metadata !6, i32 16777869, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 653]
!1829 = metadata !{i32 786688, metadata !1830, metadata !"var", metadata !6, i32 655, metadata !1831, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 655]
!1830 = metadata !{i32 786443, metadata !1825, i32 654, i32 0, metadata !6, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1831 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1832} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_t]
!1832 = metadata !{i32 786454, null, metadata !"ngx_http_variable_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1833} ; [ DW_TAG_typedef ] [ngx_http_variable_t] [line 21, size 0, align 0, offset 0] [from ngx_http_variable_s]
!1833 = metadata !{i32 786451, null, metadata !"ngx_http_variable_s", metadata !1306, i32 35, i64 224, i64 32, i32 0, i32 0, null, metadata !1834, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_variable_s] [line 35, size 224, align 32, offset 0] [from ]
!1834 = metadata !{metadata !1835, metadata !1836, metadata !1841, metadata !1846, metadata !1847, metadata !1848}
!1835 = metadata !{i32 786445, metadata !1833, metadata !"name", metadata !1306, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!1836 = metadata !{i32 786445, metadata !1833, metadata !"set_handler", metadata !1306, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !1837} ; [ DW_TAG_member ] [set_handler] [line 37, size 32, align 32, offset 64] [from ngx_http_set_variable_pt]
!1837 = metadata !{i32 786454, null, metadata !"ngx_http_set_variable_pt", metadata !1306, i32 23, i64 0, i64 0, i64 0, i32 0, metadata !1838} ; [ DW_TAG_typedef ] [ngx_http_set_variable_pt] [line 23, size 0, align 0, offset 0] [from ]
!1838 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1839} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1839 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1840, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1840 = metadata !{null, metadata !547, metadata !1507, metadata !27}
!1841 = metadata !{i32 786445, metadata !1833, metadata !"get_handler", metadata !1306, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !1842} ; [ DW_TAG_member ] [get_handler] [line 38, size 32, align 32, offset 96] [from ngx_http_get_variable_pt]
!1842 = metadata !{i32 786454, null, metadata !"ngx_http_get_variable_pt", metadata !1306, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !1843} ; [ DW_TAG_typedef ] [ngx_http_get_variable_pt] [line 25, size 0, align 0, offset 0] [from ]
!1843 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1844} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1844 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1845, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1845 = metadata !{metadata !521, metadata !547, metadata !1507, metadata !27}
!1846 = metadata !{i32 786445, metadata !1833, metadata !"data", metadata !1306, i32 39, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 128] [from uintptr_t]
!1847 = metadata !{i32 786445, metadata !1833, metadata !"flags", metadata !1306, i32 40, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 40, size 32, align 32, offset 160] [from ngx_uint_t]
!1848 = metadata !{i32 786445, metadata !1833, metadata !"index", metadata !1306, i32 41, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 41, size 32, align 32, offset 192] [from ngx_uint_t]
!1849 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_gzip_ratio_variable", metadata !"ngx_http_gzip_ratio_variable", metadata !"", metadata !6, i32 664, metadata !1844, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_gzip_ratio_variable, null, null, metadata !1850, i32 665} ; [ DW_TAG_subprogram ] [line 664] [local] [def] [scope 665] [ngx_http_gzip_ratio_variable]
!1850 = metadata !{metadata !1851}
!1851 = metadata !{metadata !1852, metadata !1853, metadata !1854, metadata !1855, metadata !1857, metadata !1858}
!1852 = metadata !{i32 786689, metadata !1849, metadata !"r", metadata !6, i32 16777880, metadata !547, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 664]
!1853 = metadata !{i32 786689, metadata !1849, metadata !"v", metadata !6, i32 33555096, metadata !1507, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 664]
!1854 = metadata !{i32 786689, metadata !1849, metadata !"data", metadata !6, i32 50332312, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 664]
!1855 = metadata !{i32 786688, metadata !1856, metadata !"zint", metadata !6, i32 666, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zint] [line 666]
!1856 = metadata !{i32 786443, metadata !1849, i32 665, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1857 = metadata !{i32 786688, metadata !1856, metadata !"zfrac", metadata !6, i32 667, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [zfrac] [line 667]
!1858 = metadata !{i32 786688, metadata !1856, metadata !"ctx", metadata !6, i32 668, metadata !1641, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 668]
!1859 = metadata !{metadata !1860}
!1860 = metadata !{metadata !1861, metadata !1899, metadata !1903, metadata !1906, metadata !1907, metadata !1914, metadata !1931, metadata !1933, metadata !1936, metadata !1938}
!1861 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_gzip_filter_module", metadata !"ngx_http_gzip_filter_module", metadata !"", metadata !6, i32 88, metadata !1862, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_gzip_filter_module} ; [ DW_TAG_variable ] [ngx_http_gzip_filter_module] [line 88] [def]
!1862 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1863} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1863 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1864, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1864 = metadata !{metadata !1865, metadata !1866, metadata !1867, metadata !1868, metadata !1869, metadata !1870, metadata !1871, metadata !1872, metadata !1873, metadata !1874, metadata !1875, metadata !1879, metadata !1883, metadata !1884, metadata !1885, metadata !1889, metadata !1890, metadata !1891, metadata !1892, metadata !1893, metadata !1894, metadata !1895, metadata !1896, metadata !1897, metadata !1898}
!1865 = metadata !{i32 786445, metadata !1863, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1866 = metadata !{i32 786445, metadata !1863, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1867 = metadata !{i32 786445, metadata !1863, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1868 = metadata !{i32 786445, metadata !1863, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1869 = metadata !{i32 786445, metadata !1863, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1870 = metadata !{i32 786445, metadata !1863, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1871 = metadata !{i32 786445, metadata !1863, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1872 = metadata !{i32 786445, metadata !1863, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1873 = metadata !{i32 786445, metadata !1863, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !448} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1874 = metadata !{i32 786445, metadata !1863, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1875 = metadata !{i32 786445, metadata !1863, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1876} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1876 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1877} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1877 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1878, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1878 = metadata !{metadata !521, metadata !137}
!1879 = metadata !{i32 786445, metadata !1863, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1880} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1880 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1881} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1881 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1882, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1882 = metadata !{metadata !521, metadata !203}
!1883 = metadata !{i32 786445, metadata !1863, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1880} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1884 = metadata !{i32 786445, metadata !1863, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1880} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1885 = metadata !{i32 786445, metadata !1863, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1886} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1886 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1887} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1887 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1888, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1888 = metadata !{null, metadata !203}
!1889 = metadata !{i32 786445, metadata !1863, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1886} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1890 = metadata !{i32 786445, metadata !1863, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1886} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1891 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1892 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1893 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1894 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1895 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1896 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1897 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1898 = metadata !{i32 786445, metadata !1863, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1899 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_gzip_filter_commands", metadata !"ngx_http_gzip_filter_commands", metadata !"", metadata !6, i32 78, metadata !1900, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_gzip_filter_commands} ; [ DW_TAG_variable ] [ngx_http_gzip_filter_commands] [line 78] [local] [def]
!1900 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2240, i64 32, i32 0, i32 0, metadata !449, metadata !1901, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2240, align 32, offset 0] [from ngx_command_t]
!1901 = metadata !{metadata !1902}
!1902 = metadata !{i32 786465, i64 0, i64 9}      ; [ DW_TAG_subrange_type ] [0, 9]
!1903 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_gzip_hash_p", metadata !"ngx_http_gzip_hash_p", metadata !"", metadata !6, i32 77, metadata !1904, i32 1, i32 1, i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_gzip_hash_p} ; [ DW_TAG_variable ] [ngx_http_gzip_hash_p] [line 77] [local] [def]
!1904 = metadata !{i32 786454, null, metadata !"ngx_conf_post_handler_pt", metadata !6, i32 185, i64 0, i64 0, i64 0, i32 0, metadata !1905} ; [ DW_TAG_typedef ] [ngx_conf_post_handler_pt] [line 185, size 0, align 0, offset 0] [from ]
!1905 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1906 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_gzip_window_p", metadata !"ngx_http_gzip_window_p", metadata !"", metadata !6, i32 76, metadata !1904, i32 1, i32 1, i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_gzip_window_p} ; [ DW_TAG_variable ] [ngx_http_gzip_window_p] [line 76] [local] [def]
!1907 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_gzip_comp_level_bounds", metadata !"ngx_http_gzip_comp_level_bounds", metadata !"", metadata !6, i32 75, metadata !1908, i32 1, i32 1, %struct.ngx_conf_num_bounds_t* @ngx_http_gzip_comp_level_bounds} ; [ DW_TAG_variable ] [ngx_http_gzip_comp_level_bounds] [line 75] [local] [def]
!1908 = metadata !{i32 786454, null, metadata !"ngx_conf_num_bounds_t", metadata !6, i32 204, i64 0, i64 0, i64 0, i32 0, metadata !1909} ; [ DW_TAG_typedef ] [ngx_conf_num_bounds_t] [line 204, size 0, align 0, offset 0] [from ]
!1909 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 200, i64 96, i64 32, i32 0, i32 0, null, metadata !1910, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 200, size 96, align 32, offset 0] [from ]
!1910 = metadata !{metadata !1911, metadata !1912, metadata !1913}
!1911 = metadata !{i32 786445, metadata !1909, metadata !"post_handler", metadata !13, i32 201, i64 32, i64 32, i64 0, i32 0, metadata !1904} ; [ DW_TAG_member ] [post_handler] [line 201, size 32, align 32, offset 0] [from ngx_conf_post_handler_pt]
!1912 = metadata !{i32 786445, metadata !1909, metadata !"low", metadata !13, i32 202, i64 32, i64 32, i64 32, i32 0, metadata !521} ; [ DW_TAG_member ] [low] [line 202, size 32, align 32, offset 32] [from ngx_int_t]
!1913 = metadata !{i32 786445, metadata !1909, metadata !"high", metadata !13, i32 203, i64 32, i64 32, i64 64, i32 0, metadata !521} ; [ DW_TAG_member ] [high] [line 203, size 32, align 32, offset 64] [from ngx_int_t]
!1914 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_gzip_filter_module_ctx", metadata !"ngx_http_gzip_filter_module_ctx", metadata !"", metadata !6, i32 79, metadata !1915, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_gzip_filter_module_ctx} ; [ DW_TAG_variable ] [ngx_http_gzip_filter_module_ctx] [line 79] [local] [def]
!1915 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1916} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1916 = metadata !{i32 786451, null, metadata !"", metadata !1356, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1917, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1917 = metadata !{metadata !1918, metadata !1920, metadata !1921, metadata !1923, metadata !1927, metadata !1928, metadata !1929, metadata !1930}
!1918 = metadata !{i32 786445, metadata !1916, metadata !"preconfiguration", metadata !1356, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1919} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1919 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !539} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1920 = metadata !{i32 786445, metadata !1916, metadata !"postconfiguration", metadata !1356, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1919} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1921 = metadata !{i32 786445, metadata !1916, metadata !"create_main_conf", metadata !1356, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1922} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1922 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !531} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1923 = metadata !{i32 786445, metadata !1916, metadata !"init_main_conf", metadata !1356, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1924} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1924 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1925} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1925 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1926, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1926 = metadata !{metadata !9, metadata !11, metadata !24}
!1927 = metadata !{i32 786445, metadata !1916, metadata !"create_srv_conf", metadata !1356, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1922} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1928 = metadata !{i32 786445, metadata !1916, metadata !"merge_srv_conf", metadata !1356, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1905} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1929 = metadata !{i32 786445, metadata !1916, metadata !"create_loc_conf", metadata !1356, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1922} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1930 = metadata !{i32 786445, metadata !1916, metadata !"merge_loc_conf", metadata !1356, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1905} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1931 = metadata !{i32 786484, i32 0, metadata !1707, metadata !"gzheader", metadata !"gzheader", metadata !"", metadata !6, i32 386, metadata !1932, i32 1, i32 1, [10 x i8]* @ngx_http_gzip_filter_gzheader.gzheader} ; [ DW_TAG_variable ] [gzheader] [line 386] [local] [def]
!1932 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 80, i64 8, i32 0, i32 0, metadata !45, metadata !1901, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 80, align 8, offset 0] [from u_char]
!1933 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_next_body_filter", metadata !"ngx_http_next_body_filter", metadata !"", metadata !6, i32 101, metadata !1934, i32 1, i32 1, i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_next_body_filter} ; [ DW_TAG_variable ] [ngx_http_next_body_filter] [line 101] [local] [def]
!1934 = metadata !{i32 786454, null, metadata !"ngx_http_output_body_filter_pt", metadata !6, i32 505, i64 0, i64 0, i64 0, i32 0, metadata !1935} ; [ DW_TAG_typedef ] [ngx_http_output_body_filter_pt] [line 505, size 0, align 0, offset 0] [from ]
!1935 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1936 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_next_header_filter", metadata !"ngx_http_next_header_filter", metadata !"", metadata !6, i32 100, metadata !1937, i32 1, i32 1, i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter} ; [ DW_TAG_variable ] [ngx_http_next_header_filter] [line 100] [local] [def]
!1937 = metadata !{i32 786454, null, metadata !"ngx_http_output_header_filter_pt", metadata !6, i32 504, i64 0, i64 0, i64 0, i32 0, metadata !1109} ; [ DW_TAG_typedef ] [ngx_http_output_header_filter_pt] [line 504, size 0, align 0, offset 0] [from ]
!1938 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_gzip_ratio", metadata !"ngx_http_gzip_ratio", metadata !"", metadata !6, i32 99, metadata !88, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_gzip_ratio} ; [ DW_TAG_variable ] [ngx_http_gzip_ratio] [line 99] [local] [def]
!1939 = metadata !{i32 793, i32 0, metadata !5, null}
!1940 = metadata !{i32 795, i32 0, metadata !465, null}
!1941 = metadata !{i32 9}
!1942 = metadata !{i32 798, i32 0, metadata !465, null}
!1943 = metadata !{i32 131072}
!1944 = metadata !{i32 799, i32 0, metadata !1945, null}
!1945 = metadata !{i32 786443, metadata !465, i32 799, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1946 = metadata !{i32 800, i32 0, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !1945, i32 799, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1948 = metadata !{metadata !"int", metadata !1949}
!1949 = metadata !{metadata !"omnipotent char", metadata !1950}
!1950 = metadata !{metadata !"Simple C/C++ TBAA"}
!1951 = metadata !{i32 801, i32 0, metadata !1952, null}
!1952 = metadata !{i32 786443, metadata !1947, i32 800, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1953 = metadata !{i32 802, i32 0, metadata !1952, null}
!1954 = metadata !{i32 804, i32 0, metadata !1947, null}
!1955 = metadata !{i32 807, i32 0, metadata !465, null}
!1956 = metadata !{i32 777, i32 0, metadata !469, null}
!1957 = metadata !{i32 779, i32 0, metadata !476, null}
!1958 = metadata !{i32 15}
!1959 = metadata !{i32 782, i32 0, metadata !476, null}
!1960 = metadata !{i32 32768}
!1961 = metadata !{i32 783, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !476, i32 783, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1963 = metadata !{i32 784, i32 0, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !1962, i32 783, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1965 = metadata !{i32 785, i32 0, metadata !1966, null}
!1966 = metadata !{i32 786443, metadata !1964, i32 784, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1967 = metadata !{i32 786, i32 0, metadata !1966, null}
!1968 = metadata !{i32 14}
!1969 = metadata !{i32 788, i32 0, metadata !1964, null}
!1970 = metadata !{i32 16384}
!1971 = metadata !{i32 791, i32 0, metadata !476, null}
!1972 = metadata !{i32 653, i32 0, metadata !1825, null}
!1973 = metadata !{i32 656, i32 0, metadata !1830, null}
!1974 = metadata !{i32 657, i32 0, metadata !1830, null}
!1975 = metadata !{i32 660, i32 0, metadata !1830, null}
!1976 = metadata !{metadata !"any pointer", metadata !1949}
!1977 = metadata !{i32 661, i32 0, metadata !1830, null}
!1978 = metadata !{i32 662, i32 0, metadata !1830, null}
!1979 = metadata !{i32 768, i32 0, metadata !538, null}
!1980 = metadata !{i32 770, i32 0, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !538, i32 769, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!1982 = metadata !{i32 771, i32 0, metadata !1981, null}
!1983 = metadata !{i32 772, i32 0, metadata !1981, null}
!1984 = metadata !{i32 773, i32 0, metadata !1981, null}
!1985 = metadata !{i32 774, i32 0, metadata !1981, null}
!1986 = metadata !{i32 695, i32 0, metadata !530, null}
!1987 = metadata !{i32 698, i32 0, metadata !537, null}
!1988 = metadata !{i32 699, i32 0, metadata !537, null}
!1989 = metadata !{i32 709, i32 0, metadata !537, null}
!1990 = metadata !{i32 710, i32 0, metadata !537, null}
!1991 = metadata !{i32 711, i32 0, metadata !537, null}
!1992 = metadata !{i32 712, i32 0, metadata !537, null}
!1993 = metadata !{i32 713, i32 0, metadata !537, null}
!1994 = metadata !{i32 714, i32 0, metadata !537, null}
!1995 = metadata !{i32 715, i32 0, metadata !537, null}
!1996 = metadata !{i32 716, i32 0, metadata !537, null}
!1997 = metadata !{i32 717, i32 0, metadata !537, null}
!1998 = metadata !{i32 719, i32 0, metadata !479, null}
!1999 = metadata !{i32 723, i32 0, metadata !486, null}
!2000 = metadata !{i32 724, i32 0, metadata !2001, null}
!2001 = metadata !{i32 786443, metadata !486, i32 723, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2002 = metadata !{i32 725, i32 0, metadata !2001, null}
!2003 = metadata !{i32 727, i32 0, metadata !486, null}
!2004 = metadata !{i32 728, i32 0, metadata !2005, null}
!2005 = metadata !{i32 786443, metadata !486, i32 727, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2006 = metadata !{i32 729, i32 0, metadata !2005, null}
!2007 = metadata !{i32 731, i32 0, metadata !486, null}
!2008 = metadata !{i32 732, i32 0, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !486, i32 731, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2010 = metadata !{i32 733, i32 0, metadata !2011, null}
!2011 = metadata !{i32 786443, metadata !2009, i32 732, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2012 = metadata !{i32 734, i32 0, metadata !2011, null}
!2013 = metadata !{i32 735, i32 0, metadata !2011, null}
!2014 = metadata !{i32 737, i32 0, metadata !2015, null}
!2015 = metadata !{i32 786443, metadata !2009, i32 736, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2016 = metadata !{i32 738, i32 0, metadata !2015, null}
!2017 = metadata !{i32 742, i32 0, metadata !486, null}
!2018 = metadata !{i32 743, i32 0, metadata !2019, null}
!2019 = metadata !{i32 786443, metadata !486, i32 742, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2020 = metadata !{i32 744, i32 0, metadata !2019, null}
!2021 = metadata !{i32 746, i32 0, metadata !486, null}
!2022 = metadata !{i32 747, i32 0, metadata !2023, null}
!2023 = metadata !{i32 786443, metadata !486, i32 746, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2024 = metadata !{i32 748, i32 0, metadata !2023, null}
!2025 = metadata !{i32 750, i32 0, metadata !486, null}
!2026 = metadata !{i32 751, i32 0, metadata !2027, null}
!2027 = metadata !{i32 786443, metadata !486, i32 750, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2028 = metadata !{i32 752, i32 0, metadata !2027, null}
!2029 = metadata !{i32 754, i32 0, metadata !486, null}
!2030 = metadata !{i32 755, i32 0, metadata !2031, null}
!2031 = metadata !{i32 786443, metadata !486, i32 754, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2032 = metadata !{i32 756, i32 0, metadata !2031, null}
!2033 = metadata !{i32 758, i32 0, metadata !486, null}
!2034 = metadata !{i32 759, i32 0, metadata !2035, null}
!2035 = metadata !{i32 786443, metadata !486, i32 758, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2036 = metadata !{i32 760, i32 0, metadata !2035, null}
!2037 = metadata !{i32 762, i32 0, metadata !486, null}
!2038 = metadata !{i32 766, i32 0, metadata !486, null}
!2039 = metadata !{i32 103, i32 0, metadata !1808, null}
!2040 = metadata !{i32 108, i32 0, metadata !1813, null}
!2041 = metadata !{i32 109, i32 0, metadata !1813, null}
!2042 = metadata !{metadata !"long long", metadata !1949}
!2043 = metadata !{i32 110, i32 0, metadata !2044, null}
!2044 = metadata !{i32 786443, metadata !1813, i32 109, i32 0, metadata !6, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2045 = metadata !{i32 112, i32 0, metadata !1813, null}
!2046 = metadata !{i32 115, i32 0, metadata !1813, null}
!2047 = metadata !{i32 116, i32 0, metadata !2048, null}
!2048 = metadata !{i32 786443, metadata !1813, i32 115, i32 0, metadata !6, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2049 = metadata !{i32 117, i32 0, metadata !2050, null}
!2050 = metadata !{i32 786443, metadata !2048, i32 116, i32 0, metadata !6, i32 114} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2051 = metadata !{i32 120, i32 0, metadata !1813, null}
!2052 = metadata !{i32 121, i32 0, metadata !2053, null}
!2053 = metadata !{i32 786443, metadata !1813, i32 120, i32 0, metadata !6, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2054 = metadata !{i32 123, i32 0, metadata !1813, null}
!2055 = metadata !{i32 124, i32 0, metadata !1813, null}
!2056 = metadata !{i32 127, i32 0, metadata !1813, null}
!2057 = metadata !{i32 129, i32 0, metadata !1813, null}
!2058 = metadata !{i32 130, i32 0, metadata !1813, null}
!2059 = metadata !{i32 786689, metadata !1816, metadata !"r", metadata !6, i32 16777490, metadata !547, i32 0, metadata !2060} ; [ DW_TAG_arg_variable ] [r] [line 274]
!2060 = metadata !{i32 131, i32 0, metadata !1813, null}
!2061 = metadata !{i32 274, i32 0, metadata !1816, metadata !2060}
!2062 = metadata !{i32 279, i32 0, metadata !1822, metadata !2060}
!2063 = metadata !{i32 280, i32 0, metadata !1822, metadata !2060}
!2064 = metadata !{i32 786688, metadata !1822, metadata !"wbits", metadata !6, i32 276, metadata !86, i32 0, metadata !2060} ; [ DW_TAG_auto_variable ] [wbits] [line 276]
!2065 = metadata !{i32 281, i32 0, metadata !1822, metadata !2060}
!2066 = metadata !{i32 786688, metadata !1822, metadata !"memlevel", metadata !6, i32 277, metadata !86, i32 0, metadata !2060} ; [ DW_TAG_auto_variable ] [memlevel] [line 277]
!2067 = metadata !{i32 282, i32 0, metadata !1822, metadata !2060}
!2068 = metadata !{i32 284, i32 0, metadata !2069, metadata !2060}
!2069 = metadata !{i32 786443, metadata !1822, i32 282, i32 0, metadata !6, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2070 = metadata !{i32 285, i32 0, metadata !2071, metadata !2060}
!2071 = metadata !{i32 786443, metadata !2069, i32 284, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2072 = metadata !{i32 286, i32 0, metadata !2071, metadata !2060}
!2073 = metadata !{i32 289, i32 0, metadata !1822, metadata !2060}
!2074 = metadata !{i32 290, i32 0, metadata !1822, metadata !2060}
!2075 = metadata !{i32 302, i32 0, metadata !1822, metadata !2060}
!2076 = metadata !{i32 132, i32 0, metadata !1813, null}
!2077 = metadata !{i32 133, i32 0, metadata !1813, null}
!2078 = metadata !{i32 136, i32 0, metadata !1813, null}
!2079 = metadata !{i32 137, i32 0, metadata !1813, null}
!2080 = metadata !{i32 138, i32 0, metadata !1813, null}
!2081 = metadata !{i32 139, i32 0, metadata !1813, null}
!2082 = metadata !{i32 140, i32 0, metadata !1813, null}
!2083 = metadata !{i32 141, i32 0, metadata !1813, null}
!2084 = metadata !{i32 142, i32 0, metadata !1813, null}
!2085 = metadata !{i32 143, i32 0, metadata !1813, null}
!2086 = metadata !{i32 144, i32 0, metadata !1813, null}
!2087 = metadata !{i32 145, i32 0, metadata !2088, null}
!2088 = metadata !{i32 786443, metadata !1813, i32 144, i32 0, metadata !6, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2089 = metadata !{i32 146, i32 0, metadata !2088, null}
!2090 = metadata !{i32 149, i32 0, metadata !1813, null}
!2091 = metadata !{i32 147, i32 0, metadata !2088, null}
!2092 = metadata !{i32 150, i32 0, metadata !1813, null}
!2093 = metadata !{i32 151, i32 0, metadata !2094, null}
!2094 = metadata !{i32 786443, metadata !1813, i32 150, i32 0, metadata !6, i32 119} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2095 = metadata !{i32 152, i32 0, metadata !2094, null}
!2096 = metadata !{i32 153, i32 0, metadata !2094, null}
!2097 = metadata !{i32 155, i32 0, metadata !1813, null}
!2098 = metadata !{i32 156, i32 0, metadata !1813, null}
!2099 = metadata !{i32 158, i32 0, metadata !544, null}
!2100 = metadata !{i32 161, i32 0, metadata !1638, null}
!2101 = metadata !{i32 163, i32 0, metadata !1638, null}
!2102 = metadata !{i32 164, i32 0, metadata !1638, null}
!2103 = metadata !{i32 165, i32 0, metadata !2104, null}
!2104 = metadata !{i32 786443, metadata !1638, i32 164, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2105 = metadata !{i32 168, i32 0, metadata !1638, null}
!2106 = metadata !{i32 177, i32 0, metadata !2107, null}
!2107 = metadata !{i32 786443, metadata !1638, i32 168, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2108 = metadata !{i32 786689, metadata !1792, metadata !"in", metadata !6, i32 33554737, metadata !56, i32 0, metadata !2109} ; [ DW_TAG_arg_variable ] [in] [line 305]
!2109 = metadata !{i32 178, i32 0, metadata !2110, null}
!2110 = metadata !{i32 786443, metadata !2107, i32 177, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2111 = metadata !{i32 305, i32 0, metadata !1792, metadata !2109}
!2112 = metadata !{i32 315, i32 0, metadata !1800, metadata !2109}
!2113 = metadata !{i32 786688, metadata !1800, metadata !"r", metadata !6, i32 313, metadata !547, i32 0, metadata !2109} ; [ DW_TAG_auto_variable ] [r] [line 313]
!2114 = metadata !{i32 316, i32 0, metadata !1800, metadata !2109}
!2115 = metadata !{i32 786688, metadata !1800, metadata !"buffered", metadata !6, i32 308, metadata !30, i32 0, metadata !2109} ; [ DW_TAG_auto_variable ] [buffered] [line 308]
!2116 = metadata !{i32 317, i32 0, metadata !1800, metadata !2109}
!2117 = metadata !{i32 318, i32 0, metadata !1800, metadata !2109}
!2118 = metadata !{i32 786688, metadata !1800, metadata !"ll", metadata !6, i32 312, metadata !817, i32 0, metadata !2109} ; [ DW_TAG_auto_variable ] [ll] [line 312]
!2119 = metadata !{i32 319, i32 0, metadata !2120, metadata !2109}
!2120 = metadata !{i32 786443, metadata !1800, i32 319, i32 0, metadata !6, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2121 = metadata !{i32 320, i32 0, metadata !2122, metadata !2109}
!2122 = metadata !{i32 786443, metadata !2120, i32 319, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2123 = metadata !{i32 321, i32 0, metadata !2122, metadata !2109}
!2124 = metadata !{i32 323, i32 0, metadata !1800, metadata !2109}
!2125 = metadata !{i32 325, i32 0, metadata !2126, metadata !2109}
!2126 = metadata !{i32 786443, metadata !1800, i32 324, i32 0, metadata !6, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2127 = metadata !{i32 332, i32 0, metadata !2126, metadata !2109}
!2128 = metadata !{i32 324, i32 0, metadata !1800, metadata !2109}
!2129 = metadata !{i32 786688, metadata !1800, metadata !"cl", metadata !6, i32 311, metadata !56, i32 0, metadata !2109} ; [ DW_TAG_auto_variable ] [cl] [line 311]
!2130 = metadata !{i32 326, i32 0, metadata !2126, metadata !2109}
!2131 = metadata !{i32 329, i32 0, metadata !2126, metadata !2109}
!2132 = metadata !{i32 786688, metadata !1800, metadata !"b", metadata !6, i32 309, metadata !62, i32 0, metadata !2109} ; [ DW_TAG_auto_variable ] [b] [line 309]
!2133 = metadata !{i32 330, i32 0, metadata !2126, metadata !2109}
!2134 = metadata !{i32 786688, metadata !1800, metadata !"size", metadata !6, i32 307, metadata !30, i32 0, metadata !2109} ; [ DW_TAG_auto_variable ] [size] [line 307]
!2135 = metadata !{i32 331, i32 0, metadata !2126, metadata !2109}
!2136 = metadata !{i32 335, i32 0, metadata !2126, metadata !2109}
!2137 = metadata !{i32 333, i32 0, metadata !2138, metadata !2109}
!2138 = metadata !{i32 786443, metadata !2126, i32 332, i32 0, metadata !6, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2139 = metadata !{i32 334, i32 0, metadata !2138, metadata !2109}
!2140 = metadata !{i32 336, i32 0, metadata !2141, metadata !2109}
!2141 = metadata !{i32 786443, metadata !2126, i32 335, i32 0, metadata !6, i32 108} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2142 = metadata !{i32 786688, metadata !1800, metadata !"buf", metadata !6, i32 310, metadata !62, i32 0, metadata !2109} ; [ DW_TAG_auto_variable ] [buf] [line 310]
!2143 = metadata !{i32 337, i32 0, metadata !2141, metadata !2109}
!2144 = metadata !{i32 340, i32 0, metadata !2141, metadata !2109}
!2145 = metadata !{i32 341, i32 0, metadata !2141, metadata !2109}
!2146 = metadata !{i32 342, i32 0, metadata !2141, metadata !2109}
!2147 = metadata !{i32 343, i32 0, metadata !2141, metadata !2109}
!2148 = metadata !{i32 344, i32 0, metadata !2141, metadata !2109}
!2149 = metadata !{i32 345, i32 0, metadata !2141, metadata !2109}
!2150 = metadata !{i32 347, i32 0, metadata !2151, metadata !2109}
!2151 = metadata !{i32 786443, metadata !2126, i32 346, i32 0, metadata !6, i32 110} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2152 = metadata !{i32 349, i32 0, metadata !2126, metadata !2109}
!2153 = metadata !{i32 350, i32 0, metadata !2126, metadata !2109}
!2154 = metadata !{i32 351, i32 0, metadata !2126, metadata !2109}
!2155 = metadata !{i32 353, i32 0, metadata !1800, metadata !2109}
!2156 = metadata !{i32 354, i32 0, metadata !1800, metadata !2109}
!2157 = metadata !{i32 192, i32 0, metadata !2158, null}
!2158 = metadata !{i32 786443, metadata !2107, i32 191, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2159 = metadata !{i32 195, i32 0, metadata !1638, null}
!2160 = metadata !{i32 786689, metadata !1763, metadata !"r", metadata !6, i32 16777573, metadata !547, i32 0, metadata !2161} ; [ DW_TAG_arg_variable ] [r] [line 357]
!2161 = metadata !{i32 196, i32 0, metadata !2162, null}
!2162 = metadata !{i32 786443, metadata !1638, i32 195, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2163 = metadata !{i32 357, i32 0, metadata !1763, metadata !2161}
!2164 = metadata !{i32 361, i32 0, metadata !1769, metadata !2161}
!2165 = metadata !{i32 362, i32 0, metadata !1769, metadata !2161}
!2166 = metadata !{i32 363, i32 0, metadata !1769, metadata !2161}
!2167 = metadata !{i32 366, i32 0, metadata !1769, metadata !2161}
!2168 = metadata !{i32 367, i32 0, metadata !1769, metadata !2161}
!2169 = metadata !{i32 368, i32 0, metadata !1769, metadata !2161}
!2170 = metadata !{i32 369, i32 0, metadata !1769, metadata !2161}
!2171 = metadata !{i32 370, i32 0, metadata !1769, metadata !2161}
!2172 = metadata !{i32 786688, metadata !1769, metadata !"rc", metadata !6, i32 359, metadata !86, i32 0, metadata !2161} ; [ DW_TAG_auto_variable ] [rc] [line 359]
!2173 = metadata !{i32 371, i32 0, metadata !1769, metadata !2161}
!2174 = metadata !{i32 372, i32 0, metadata !2175, metadata !2161}
!2175 = metadata !{i32 786443, metadata !1769, i32 371, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2176 = metadata !{i32 373, i32 0, metadata !2175, metadata !2161}
!2177 = metadata !{i32 376, i32 0, metadata !1769, metadata !2161}
!2178 = metadata !{i32 377, i32 0, metadata !1769, metadata !2161}
!2179 = metadata !{i32 378, i32 0, metadata !1769, metadata !2161}
!2180 = metadata !{i32 200, i32 0, metadata !1638, null}
!2181 = metadata !{i32 201, i32 0, metadata !2182, null}
!2182 = metadata !{i32 786443, metadata !1638, i32 200, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2183 = metadata !{i32 205, i32 0, metadata !1638, null}
!2184 = metadata !{i32 387, i32 0, metadata !1715, metadata !2185}
!2185 = metadata !{i32 247, i32 0, metadata !2186, null}
!2186 = metadata !{i32 786443, metadata !2187, i32 246, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2187 = metadata !{i32 786443, metadata !2188, i32 214, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2188 = metadata !{i32 786443, metadata !1638, i32 214, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2189 = metadata !{i32 256, i32 0, metadata !2187, null}
!2190 = metadata !{i32 207, i32 0, metadata !2191, null}
!2191 = metadata !{i32 786443, metadata !1638, i32 205, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2192 = metadata !{%struct.ngx_chain_s* null}
!2193 = metadata !{i32 210, i32 0, metadata !2191, null}
!2194 = metadata !{i32 211, i32 0, metadata !2191, null}
!2195 = metadata !{i32 212, i32 0, metadata !2191, null}
!2196 = metadata !{i32 213, i32 0, metadata !2191, null}
!2197 = metadata !{i32 407, i32 0, metadata !2198, metadata !2199}
!2198 = metadata !{i32 786443, metadata !1758, i32 406, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2199 = metadata !{i32 218, i32 0, metadata !2200, null}
!2200 = metadata !{i32 786443, metadata !2201, i32 216, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2201 = metadata !{i32 786443, metadata !2187, i32 216, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2202 = metadata !{i32 411, i32 0, metadata !2198, metadata !2199}
!2203 = metadata !{i32 414, i32 0, metadata !2198, metadata !2199}
!2204 = metadata !{i32 423, i32 0, metadata !2198, metadata !2199}
!2205 = metadata !{i32 428, i32 0, metadata !2198, metadata !2199}
!2206 = metadata !{i32 438, i32 0, metadata !2207, metadata !2199}
!2207 = metadata !{i32 786443, metadata !2198, i32 437, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2208 = metadata !{i32 419, i32 0, metadata !2209, metadata !2199}
!2209 = metadata !{i32 786443, metadata !2198, i32 414, i32 0, metadata !6, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2210 = metadata !{i32 242, i32 0, metadata !2187, null}
!2211 = metadata !{i32 257, i32 0, metadata !2187, null}
!2212 = metadata !{i32 449, i32 0, metadata !1757, metadata !2213}
!2213 = metadata !{i32 226, i32 0, metadata !2200, null}
!2214 = metadata !{i32 452, i32 0, metadata !1757, metadata !2213}
!2215 = metadata !{i32 457, i32 0, metadata !1757, metadata !2213}
!2216 = metadata !{i32 458, i32 0, metadata !2217, metadata !2213}
!2217 = metadata !{i32 786443, metadata !1757, i32 457, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2218 = metadata !{i32 470, i32 0, metadata !1757, metadata !2213}
!2219 = metadata !{i32 482, i32 0, metadata !1732, metadata !2220}
!2220 = metadata !{i32 233, i32 0, metadata !2200, null}
!2221 = metadata !{i32 519, i32 0, metadata !2222, metadata !2220}
!2222 = metadata !{i32 786443, metadata !2223, i32 518, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2223 = metadata !{i32 786443, metadata !1732, i32 511, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2224 = metadata !{i32 561, i32 0, metadata !1742, metadata !2225}
!2225 = metadata !{i32 535, i32 0, metadata !2226, metadata !2220}
!2226 = metadata !{i32 786443, metadata !1732, i32 534, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2227 = metadata !{i32 562, i32 0, metadata !1742, metadata !2225}
!2228 = metadata !{i32 608, i32 0, metadata !1742, metadata !2225}
!2229 = metadata !{i32 405, i32 0, metadata !1758, metadata !2199}
!2230 = metadata !{%struct.ngx_http_request_s* null}
!2231 = metadata !{i32 786689, metadata !1758, metadata !"r", metadata !6, i32 16777621, metadata !547, i32 0, metadata !2199} ; [ DW_TAG_arg_variable ] [r] [line 405]
!2232 = metadata !{i32 420, i32 0, metadata !2209, metadata !2199}
!2233 = metadata !{i32 421, i32 0, metadata !2209, metadata !2199}
!2234 = metadata !{i32 422, i32 0, metadata !2209, metadata !2199}
!2235 = metadata !{i32 424, i32 0, metadata !2198, metadata !2199}
!2236 = metadata !{i32 425, i32 0, metadata !2237, metadata !2199}
!2237 = metadata !{i32 786443, metadata !2198, i32 424, i32 0, metadata !6, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2238 = metadata !{i32 426, i32 0, metadata !2237, metadata !2199}
!2239 = metadata !{i32 427, i32 0, metadata !2198, metadata !2199}
!2240 = metadata !{i32 429, i32 0, metadata !2198, metadata !2199}
!2241 = metadata !{i32 431, i32 0, metadata !2198, metadata !2199}
!2242 = metadata !{i32 432, i32 0, metadata !2243, metadata !2199}
!2243 = metadata !{i32 786443, metadata !2198, i32 431, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2244 = metadata !{i32 433, i32 0, metadata !2243, metadata !2199}
!2245 = metadata !{i32 434, i32 0, metadata !2198, metadata !2199}
!2246 = metadata !{i32 435, i32 0, metadata !2247, metadata !2199}
!2247 = metadata !{i32 786443, metadata !2198, i32 434, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2248 = metadata !{i32 436, i32 0, metadata !2247, metadata !2199}
!2249 = metadata !{i32 437, i32 0, metadata !2198, metadata !2199}
!2250 = metadata !{i32 439, i32 0, metadata !2207, metadata !2199}
!2251 = metadata !{i32 440, i32 0, metadata !2198, metadata !2199}
!2252 = metadata !{i32 -2}                        
!2253 = metadata !{i32 786689, metadata !1751, metadata !"r", metadata !6, i32 16777662, metadata !547, i32 0, metadata !2213} ; [ DW_TAG_arg_variable ] [r] [line 446]
!2254 = metadata !{i32 446, i32 0, metadata !1751, metadata !2213}
!2255 = metadata !{i32 453, i32 0, metadata !1757, metadata !2213}
!2256 = metadata !{i32 454, i32 0, metadata !2257, metadata !2213}
!2257 = metadata !{i32 786443, metadata !1757, i32 453, i32 0, metadata !6, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2258 = metadata !{i32 455, i32 0, metadata !2257, metadata !2213}
!2259 = metadata !{i32 471, i32 0, metadata !1757, metadata !2213}
!2260 = metadata !{i32 456, i32 0, metadata !2257, metadata !2213}
!2261 = metadata !{i32 459, i32 0, metadata !2217, metadata !2213}
!2262 = metadata !{i32 462, i32 0, metadata !2217, metadata !2213}
!2263 = metadata !{i32 463, i32 0, metadata !2217, metadata !2213}
!2264 = metadata !{i32 464, i32 0, metadata !2217, metadata !2213}
!2265 = metadata !{i32 467, i32 0, metadata !2266, metadata !2213}
!2266 = metadata !{i32 786443, metadata !1757, i32 466, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2267 = metadata !{i32 -1}                        ; [ DW_TAG_hi_user ]
!2268 = metadata !{i32 227, i32 0, metadata !2200, null}
!2269 = metadata !{i32 472, i32 0, metadata !1757, metadata !2213}
!2270 = metadata !{i32 786689, metadata !1726, metadata !"r", metadata !6, i32 16777691, metadata !547, i32 0, metadata !2220} ; [ DW_TAG_arg_variable ] [r] [line 475]
!2271 = metadata !{i32 475, i32 0, metadata !1726, metadata !2220}
!2272 = metadata !{i32 786688, metadata !1732, metadata !"rc", metadata !6, i32 477, metadata !86, i32 0, metadata !2220} ; [ DW_TAG_auto_variable ] [rc] [line 477]
!2273 = metadata !{i32 483, i32 0, metadata !1732, metadata !2220}
!2274 = metadata !{i32 484, i32 0, metadata !2275, metadata !2220}
!2275 = metadata !{i32 786443, metadata !1732, i32 483, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2276 = metadata !{i32 485, i32 0, metadata !2275, metadata !2220}
!2277 = metadata !{i32 490, i32 0, metadata !1732, metadata !2220}
!2278 = metadata !{i32 491, i32 0, metadata !2279, metadata !2220}
!2279 = metadata !{i32 786443, metadata !1732, i32 490, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2280 = metadata !{i32 492, i32 0, metadata !2279, metadata !2220}
!2281 = metadata !{i32 493, i32 0, metadata !2282, metadata !2220}
!2282 = metadata !{i32 786443, metadata !2279, i32 492, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2283 = metadata !{i32 494, i32 0, metadata !2282, metadata !2220}
!2284 = metadata !{i32 496, i32 0, metadata !1732, metadata !2220}
!2285 = metadata !{i32 497, i32 0, metadata !1732, metadata !2220}
!2286 = metadata !{i32 499, i32 0, metadata !2287, metadata !2220}
!2287 = metadata !{i32 786443, metadata !1732, i32 497, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2288 = metadata !{i32 786688, metadata !1732, metadata !"cl", metadata !6, i32 479, metadata !56, i32 0, metadata !2220} ; [ DW_TAG_auto_variable ] [cl] [line 479]
!2289 = metadata !{i32 500, i32 0, metadata !2287, metadata !2220}
!2290 = metadata !{i32 503, i32 0, metadata !2287, metadata !2220}
!2291 = metadata !{i32 504, i32 0, metadata !2287, metadata !2220}
!2292 = metadata !{i32 505, i32 0, metadata !2287, metadata !2220}
!2293 = metadata !{i32 506, i32 0, metadata !2287, metadata !2220}
!2294 = metadata !{i32 507, i32 0, metadata !2287, metadata !2220}
!2295 = metadata !{i32 508, i32 0, metadata !2287, metadata !2220}
!2296 = metadata !{i32 510, i32 0, metadata !1732, metadata !2220}
!2297 = metadata !{i32 511, i32 0, metadata !1732, metadata !2220}
!2298 = metadata !{i32 512, i32 0, metadata !2223, metadata !2220}
!2299 = metadata !{i32 513, i32 0, metadata !2223, metadata !2220}
!2300 = metadata !{i32 514, i32 0, metadata !2223, metadata !2220}
!2301 = metadata !{i32 517, i32 0, metadata !2223, metadata !2220}
!2302 = metadata !{i32 786688, metadata !1732, metadata !"b", metadata !6, i32 478, metadata !62, i32 0, metadata !2220} ; [ DW_TAG_auto_variable ] [b] [line 478]
!2303 = metadata !{i32 518, i32 0, metadata !2223, metadata !2220}
!2304 = metadata !{i32 520, i32 0, metadata !2222, metadata !2220}
!2305 = metadata !{i32 525, i32 0, metadata !2306, metadata !2220}
!2306 = metadata !{i32 786443, metadata !2223, i32 524, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2307 = metadata !{i32 527, i32 0, metadata !2223, metadata !2220}
!2308 = metadata !{i32 528, i32 0, metadata !2223, metadata !2220}
!2309 = metadata !{i32 529, i32 0, metadata !2223, metadata !2220}
!2310 = metadata !{i32 530, i32 0, metadata !2223, metadata !2220}
!2311 = metadata !{i32 531, i32 0, metadata !2223, metadata !2220}
!2312 = metadata !{i32 532, i32 0, metadata !2223, metadata !2220}
!2313 = metadata !{i32 534, i32 0, metadata !1732, metadata !2220}
!2314 = metadata !{i32 786689, metadata !1736, metadata !"r", metadata !6, i32 16777771, metadata !547, i32 0, metadata !2225} ; [ DW_TAG_arg_variable ] [r] [line 555]
!2315 = metadata !{i32 555, i32 0, metadata !1736, metadata !2225}
!2316 = metadata !{metadata !"long", metadata !1949}
!2317 = metadata !{i32 563, i32 0, metadata !1742, metadata !2225}
!2318 = metadata !{i32 786688, metadata !1742, metadata !"rc", metadata !6, i32 557, metadata !86, i32 0, metadata !2225} ; [ DW_TAG_auto_variable ] [rc] [line 557]
!2319 = metadata !{i32 564, i32 0, metadata !1742, metadata !2225}
!2320 = metadata !{i32 565, i32 0, metadata !2321, metadata !2225}
!2321 = metadata !{i32 786443, metadata !1742, i32 564, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2322 = metadata !{i32 566, i32 0, metadata !2321, metadata !2225}
!2323 = metadata !{i32 569, i32 0, metadata !1742, metadata !2225}
!2324 = metadata !{i32 570, i32 0, metadata !1742, metadata !2225}
!2325 = metadata !{i32 786688, metadata !1742, metadata !"cl", metadata !6, i32 559, metadata !56, i32 0, metadata !2225} ; [ DW_TAG_auto_variable ] [cl] [line 559]
!2326 = metadata !{i32 571, i32 0, metadata !1742, metadata !2225}
!2327 = metadata !{i32 574, i32 0, metadata !1742, metadata !2225}
!2328 = metadata !{i32 575, i32 0, metadata !1742, metadata !2225}
!2329 = metadata !{i32 576, i32 0, metadata !1742, metadata !2225}
!2330 = metadata !{i32 577, i32 0, metadata !1742, metadata !2225}
!2331 = metadata !{i32 578, i32 0, metadata !1742, metadata !2225}
!2332 = metadata !{i32 579, i32 0, metadata !2333, metadata !2225}
!2333 = metadata !{i32 786443, metadata !1742, i32 578, i32 0, metadata !6, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2334 = metadata !{i32 580, i32 0, metadata !2333, metadata !2225}
!2335 = metadata !{i32 581, i32 0, metadata !2333, metadata !2225}
!2336 = metadata !{i32 582, i32 0, metadata !2333, metadata !2225}
!2337 = metadata !{i32 584, i32 0, metadata !2338, metadata !2225}
!2338 = metadata !{i32 786443, metadata !1742, i32 583, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2339 = metadata !{i32 786688, metadata !1742, metadata !"b", metadata !6, i32 558, metadata !62, i32 0, metadata !2225} ; [ DW_TAG_auto_variable ] [b] [line 558]
!2340 = metadata !{i32 585, i32 0, metadata !2338, metadata !2225}
!2341 = metadata !{i32 588, i32 0, metadata !2338, metadata !2225}
!2342 = metadata !{i32 589, i32 0, metadata !2338, metadata !2225}
!2343 = metadata !{i32 590, i32 0, metadata !2338, metadata !2225}
!2344 = metadata !{i32 593, i32 0, metadata !2338, metadata !2225}
!2345 = metadata !{i32 594, i32 0, metadata !2338, metadata !2225}
!2346 = metadata !{i32 595, i32 0, metadata !2338, metadata !2225}
!2347 = metadata !{i32 596, i32 0, metadata !2338, metadata !2225}
!2348 = metadata !{i32 597, i32 0, metadata !2338, metadata !2225}
!2349 = metadata !{i32 598, i32 0, metadata !2338, metadata !2225}
!2350 = metadata !{i32 601, i32 0, metadata !1742, metadata !2225}
!2351 = metadata !{i32 602, i32 0, metadata !1742, metadata !2225}
!2352 = metadata !{i32 605, i32 0, metadata !1742, metadata !2225}
!2353 = metadata !{i32 606, i32 0, metadata !1742, metadata !2225}
!2354 = metadata !{i32 607, i32 0, metadata !1742, metadata !2225}
!2355 = metadata !{i32 609, i32 0, metadata !1742, metadata !2225}
!2356 = metadata !{i32 540, i32 0, metadata !1732, metadata !2220}
!2357 = metadata !{i32 541, i32 0, metadata !1732, metadata !2220}
!2358 = metadata !{i32 542, i32 0, metadata !2359, metadata !2220}
!2359 = metadata !{i32 786443, metadata !1732, i32 541, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2360 = metadata !{i32 543, i32 0, metadata !2359, metadata !2220}
!2361 = metadata !{i32 546, i32 0, metadata !2359, metadata !2220}
!2362 = metadata !{i32 547, i32 0, metadata !2359, metadata !2220}
!2363 = metadata !{i32 548, i32 0, metadata !2359, metadata !2220}
!2364 = metadata !{i32 549, i32 0, metadata !2359, metadata !2220}
!2365 = metadata !{i32 550, i32 0, metadata !2359, metadata !2220}
!2366 = metadata !{i32 786689, metadata !1717, metadata !"r", metadata !6, i32 16777860, metadata !547, i32 0, metadata !2367} ; [ DW_TAG_arg_variable ] [r] [line 644]
!2367 = metadata !{i32 243, i32 0, metadata !2368, null}
!2368 = metadata !{i32 786443, metadata !2187, i32 242, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2369 = metadata !{i32 644, i32 0, metadata !1717, metadata !2367}
!2370 = metadata !{i32 647, i32 0, metadata !2371, metadata !2367}
!2371 = metadata !{i32 786443, metadata !1725, i32 647, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2372 = metadata !{i32 648, i32 0, metadata !2373, metadata !2367}
!2373 = metadata !{i32 786443, metadata !2371, i32 647, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2374 = metadata !{i32 650, i32 0, metadata !1725, metadata !2367}
!2375 = metadata !{i32 244, i32 0, metadata !2368, null}
!2376 = metadata !{i32 246, i32 0, metadata !2187, null}
!2377 = metadata !{i32 786689, metadata !1707, metadata !"r", metadata !6, i32 16777598, metadata !547, i32 0, metadata !2185} ; [ DW_TAG_arg_variable ] [r] [line 382]
!2378 = metadata !{i32 382, i32 0, metadata !1707, metadata !2185}
!2379 = metadata !{i32 786688, metadata !1715, metadata !"b", metadata !6, i32 384, metadata !62, i32 0, metadata !2185} ; [ DW_TAG_auto_variable ] [b] [line 384]
!2380 = metadata !{i32 388, i32 0, metadata !1715, metadata !2185}
!2381 = metadata !{i32 391, i32 0, metadata !1715, metadata !2185}
!2382 = metadata !{i32 392, i32 0, metadata !1715, metadata !2185}
!2383 = metadata !{i32 393, i32 0, metadata !1715, metadata !2185}
!2384 = metadata !{i32 394, i32 0, metadata !1715, metadata !2185}
!2385 = metadata !{i32 786688, metadata !1715, metadata !"cl", metadata !6, i32 385, metadata !56, i32 0, metadata !2185} ; [ DW_TAG_auto_variable ] [cl] [line 385]
!2386 = metadata !{i32 395, i32 0, metadata !1715, metadata !2185}
!2387 = metadata !{i32 398, i32 0, metadata !1715, metadata !2185}
!2388 = metadata !{i32 399, i32 0, metadata !1715, metadata !2185}
!2389 = metadata !{i32 400, i32 0, metadata !1715, metadata !2185}
!2390 = metadata !{i32 401, i32 0, metadata !1715, metadata !2185}
!2391 = metadata !{i32 251, i32 0, metadata !2187, null}
!2392 = metadata !{i32 252, i32 0, metadata !2187, null}
!2393 = metadata !{i32 786689, metadata !1717, metadata !"r", metadata !6, i32 16777860, metadata !547, i32 0, metadata !2394} ; [ DW_TAG_arg_variable ] [r] [line 644]
!2394 = metadata !{i32 255, i32 0, metadata !2187, null}
!2395 = metadata !{i32 644, i32 0, metadata !1717, metadata !2394}
!2396 = metadata !{i32 647, i32 0, metadata !2371, metadata !2394}
!2397 = metadata !{i32 648, i32 0, metadata !2373, metadata !2394}
!2398 = metadata !{i32 650, i32 0, metadata !1725, metadata !2394}
!2399 = metadata !{i32 258, i32 0, metadata !2187, null}
!2400 = metadata !{i32 259, i32 0, metadata !2187, null}
!2401 = metadata !{i32 266, i32 0, metadata !1638, null}
!2402 = metadata !{i32 265, i32 0, metadata !1638, null}
!2403 = metadata !{i32 267, i32 0, metadata !2404, null}
!2404 = metadata !{i32 786443, metadata !1638, i32 266, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2405 = metadata !{i32 268, i32 0, metadata !2404, null}
!2406 = metadata !{i32 269, i32 0, metadata !2404, null}
!2407 = metadata !{i32 786689, metadata !1717, metadata !"r", metadata !6, i32 16777860, metadata !547, i32 0, metadata !2408} ; [ DW_TAG_arg_variable ] [r] [line 644]
!2408 = metadata !{i32 270, i32 0, metadata !1638, null}
!2409 = metadata !{i32 644, i32 0, metadata !1717, metadata !2408}
!2410 = metadata !{i32 647, i32 0, metadata !2371, metadata !2408}
!2411 = metadata !{i32 648, i32 0, metadata !2373, metadata !2408}
!2412 = metadata !{i32 650, i32 0, metadata !1725, metadata !2408}
!2413 = metadata !{i32 271, i32 0, metadata !1638, null}
!2414 = metadata !{i32 272, i32 0, metadata !1638, null}
!2415 = metadata !{i32 612, i32 0, metadata !1778, null}
!2416 = metadata !{i32 617, i32 0, metadata !1789, null}
!2417 = metadata !{i32 618, i32 0, metadata !1789, null}
!2418 = metadata !{i32 8192}
!2419 = metadata !{i32 623, i32 0, metadata !2420, null}
!2420 = metadata !{i32 786443, metadata !1789, i32 618, i32 0, metadata !6, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2421 = metadata !{i32 625, i32 0, metadata !1789, null}
!2422 = metadata !{i32 626, i32 0, metadata !2423, null}
!2423 = metadata !{i32 786443, metadata !1789, i32 625, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2424 = metadata !{i32 627, i32 0, metadata !2423, null}
!2425 = metadata !{i32 628, i32 0, metadata !2423, null}
!2426 = metadata !{i32 630, i32 0, metadata !2423, null}
!2427 = metadata !{i32 632, i32 0, metadata !1789, null}
!2428 = metadata !{i32 633, i32 0, metadata !1789, null}
!2429 = metadata !{i32 634, i32 0, metadata !1789, null}
!2430 = metadata !{i32 635, i32 0, metadata !1789, null}
!2431 = metadata !{i32 636, i32 0, metadata !1789, null}
!2432 = metadata !{i32 638, i32 0, metadata !1771, null}
!2433 = metadata !{i32 642, i32 0, metadata !2434, null}
!2434 = metadata !{i32 786443, metadata !1771, i32 639, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2435 = metadata !{i32 664, i32 0, metadata !1849, null}
!2436 = metadata !{i32 669, i32 0, metadata !1856, null}
!2437 = metadata !{i32 671, i32 0, metadata !1856, null}
!2438 = metadata !{i32 672, i32 0, metadata !1856, null}
!2439 = metadata !{i32 673, i32 0, metadata !1856, null}
!2440 = metadata !{i32 674, i32 0, metadata !2441, null}
!2441 = metadata !{i32 786443, metadata !1856, i32 673, i32 0, metadata !6, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2442 = metadata !{i32 675, i32 0, metadata !2441, null}
!2443 = metadata !{i32 677, i32 0, metadata !1856, null}
!2444 = metadata !{i32 678, i32 0, metadata !1856, null}
!2445 = metadata !{i32 681, i32 0, metadata !1856, null}
!2446 = metadata !{i32 682, i32 0, metadata !1856, null}
!2447 = metadata !{i32 683, i32 0, metadata !1856, null}
!2448 = metadata !{i32 685, i32 0, metadata !2449, null}
!2449 = metadata !{i32 786443, metadata !1856, i32 683, i32 0, metadata !6, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2450 = metadata !{i32 686, i32 0, metadata !2449, null}
!2451 = metadata !{i32 687, i32 0, metadata !2452, null}
!2452 = metadata !{i32 786443, metadata !2449, i32 686, i32 0, metadata !6, i32 129} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_gzip_filter_module.c]
!2453 = metadata !{i32 691, i32 0, metadata !1856, null}
!2454 = metadata !{i32 692, i32 0, metadata !1856, null}
!2455 = metadata !{i32 693, i32 0, metadata !1856, null}
