; ModuleID = 'src/http/modules/ngx_http_map_module.c'
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
%struct.ngx_variable_value_t = type { [4 x i8], i8* }
%struct.ngx_hash_init_t = type { %struct.ngx_hash_t*, i32 (i8*, i32)*, i32, i32, i8*, %struct.ngx_pool_s*, %struct.ngx_pool_s* }
%struct.ngx_hash_t = type { %struct.ngx_hash_elt_t**, i32 }
%struct.ngx_hash_elt_t = type { i8*, i16, [1 x i8] }
%struct.ngx_http_map_conf_ctx_t = type { %struct.ngx_hash_keys_arrays_t, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s, %struct.ngx_variable_value_t*, %struct.ngx_conf_s*, i32 }
%struct.ngx_hash_keys_arrays_t = type { i32, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s* }
%struct.ngx_http_compile_complex_value_t = type { %struct.ngx_conf_s*, %struct.ngx_str_t*, %struct.ngx_http_complex_value_t*, i8 }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, i32*, i8*, i8* }
%struct.ngx_http_variable_s = type { %struct.ngx_str_t, void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32, i32, i32 }
%struct.ngx_http_request_s = type { i32, %struct.ngx_connection_s*, i8**, i8**, i8**, i8**, void (%struct.ngx_http_request_s*)*, void (%struct.ngx_http_request_s*)*, %struct.ngx_http_cache_s*, %struct.ngx_http_upstream_s*, %struct.ngx_array_s*, %struct.ngx_pool_s*, %struct.ngx_buf_s*, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, %struct.ngx_http_request_body_t*, i32, i32, i32, i32, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_chain_s*, %struct.ngx_http_request_s*, %struct.ngx_http_request_s*, %struct.ngx_http_postponed_request_s*, %struct.ngx_http_post_subrequest_t*, %struct.ngx_http_posted_request_s*, %struct.ngx_http_virtual_names_t*, i32, i32 (%struct.ngx_http_request_s*)*, i32, %struct.ngx_variable_value_t*, i32, i32*, i8*, i32, i32, i64, i32, %struct.ngx_http_connection_t*, i8* (%struct.ngx_http_request_s*, %struct.ngx_http_request_s*, i8*, i32)*, %struct.ngx_http_cleanup_s*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [32 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [2 x i8], [2 x i8] }
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
%struct.ngx_http_upstream_s = type { void (%struct.ngx_http_request_s*, %struct.ngx_http_upstream_s*)*, void (%struct.ngx_http_request_s*, %struct.ngx_http_upstream_s*)*, %struct.ngx_peer_connection_s, %struct.ngx_event_pipe_s*, %struct.ngx_chain_s*, %struct.ngx_output_chain_ctx_s, %struct.ngx_chain_writer_ctx_t, %struct.ngx_http_upstream_conf_t*, %struct.ngx_http_upstream_headers_in_t, %struct.ngx_http_upstream_resolved_t*, %struct.ngx_buf_s, i64, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, i32 (i8*)*, i32 (i8*, i32)*, i8*, i32 (%struct.ngx_http_request_s*)*, i32 (%struct.ngx_http_request_s*)*, i32 (%struct.ngx_http_request_s*)*, i32 (%struct.ngx_http_request_s*)*, void (%struct.ngx_http_request_s*)*, void (%struct.ngx_http_request_s*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_table_elt_t*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_table_elt_t*)*, i32, %struct.ngx_http_upstream_state_t*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, void (i8*)**, i8, i8 }
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
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, %struct.ngx_http_regex_t*, i8, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s**, i8**, i32, i8**, i32 (%struct.ngx_http_request_s*)*, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_resolver_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_array_s*, i32, %struct.ngx_http_complex_value_t*, %struct.ngx_array_s*, %struct.ngx_http_try_file_t*, %struct.ngx_path_t*, %struct.ngx_open_file_cache_t*, i32, i32, i32, i32, %struct.ngx_log_s*, i32, i32, %struct.ngx_queue_s* }
%struct.ngx_http_location_tree_node_s = type { %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s*, %struct.ngx_http_core_loc_conf_s*, i8, i8, [1 x i8] }
%struct.ngx_http_try_file_t = type { %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_str_t, [2 x i8] }
%struct.ngx_open_file_cache_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, i32, i32, i32 }
%struct.ngx_http_connection_t = type { %struct.ngx_http_request_s*, %struct.ngx_buf_s**, i32, %struct.ngx_buf_s**, i32, i32 }
%struct.ngx_http_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_http_cleanup_s* }
%struct.ngx_hash_key_t = type { %struct.ngx_str_t, i32, i8* }
%struct.ngx_http_map_regex_t = type { %struct.ngx_http_regex_t*, i8* }
%struct.ngx_http_map_ctx_t = type { %struct.ngx_http_map_t, %struct.ngx_http_complex_value_t, %struct.ngx_variable_value_t*, i32 }
%struct.ngx_http_map_t = type { %struct.ngx_hash_combined_t, %struct.ngx_http_map_regex_t*, i32 }
%struct.ngx_regex_compile_t = type { %struct.ngx_str_t, %struct.ngx_pool_s*, i32, %struct.ngx_regex_t*, i32, i32, i32, i8*, %struct.ngx_str_t }

@ngx_http_map_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_map_create_conf, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null }, align 4
@ngx_http_map_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_map_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([4 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_map_commands to [4 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str1 = private unnamed_addr constant [18 x i8] c"map_hash_max_size\00", align 1
@.str2 = private unnamed_addr constant [21 x i8] c"map_hash_bucket_size\00", align 1
@ngx_http_map_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str, i32 0, i32 0) }, i32 33554692, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_map_block, i32 0, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str1, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 0, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 20, i8* getelementptr inbounds ([21 x i8]* @.str2, i32 0, i32 0) }, i32 33554434, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 0, i32 4, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@ngx_cacheline_size = external global i32
@ngx_http_variable_null_value = external global %struct.ngx_variable_value_t
@.str3 = private unnamed_addr constant [9 x i8] c"map_hash\00", align 1
@.str4 = private unnamed_addr constant [10 x i8] c"hostnames\00", align 1
@.str5 = private unnamed_addr constant [37 x i8] c"invalid number of the map parameters\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@0 = internal unnamed_addr constant [2 x i8] c"*\00"
@1 = internal unnamed_addr constant [2 x i8] c"+\00"
@2 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str7 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str8 = private unnamed_addr constant [32 x i8] c"duplicate default map parameter\00", align 1
@.str9 = private unnamed_addr constant [34 x i8] c"invalid hostname or wildcard \22%V\22\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"conflicting parameter \22%V\22\00", align 1
@3 = internal unnamed_addr constant [2 x i8] c"-\00"
@4 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@5 = internal unnamed_addr constant [4 x i8] c"int\00"
@6 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@7 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@8 = internal unnamed_addr constant [39 x i8] c"src/http/modules/ngx_http_map_module.c\00"

define internal i8* @ngx_http_map_block(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  %name = alloca %struct.ngx_str_t, align 8
  %save = alloca %struct.ngx_conf_s, align 4
  %hash = alloca %struct.ngx_hash_init_t, align 4
  %ctx = alloca %struct.ngx_http_map_conf_ctx_t, align 4
  %ccv = alloca %struct.ngx_http_compile_complex_value_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !1846
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !1846
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !1846
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %name}, metadata !473), !dbg !1847
  call void @llvm.dbg.declare(metadata !{%struct.ngx_conf_s* %save}, metadata !474), !dbg !1848
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %hash}, metadata !476), !dbg !1849
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_map_conf_ctx_t* %ctx}, metadata !1645), !dbg !1850
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_compile_complex_value_t* %ccv}, metadata !1668), !dbg !1851
  %hash_max_size = bitcast i8* %conf to i32*, !dbg !1852
  %0 = load i32* %hash_max_size, align 4, !dbg !1852, !tbaa !1853
  call void @__ioc_report_conversion(i32 106, i32 45, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1852
  %cmp = icmp eq i32 %0, -1, !dbg !1852
  br i1 %cmp, label %cont4, label %if.end, !dbg !1852

cont4:                                            ; preds = %entry
  store i32 2048, i32* %hash_max_size, align 4, !dbg !1856, !tbaa !1853
  br label %if.end, !dbg !1858

if.end:                                           ; preds = %cont4, %entry
  %hash_bucket_size = getelementptr inbounds i8* %conf, i32 4, !dbg !1859
  %1 = bitcast i8* %hash_bucket_size to i32*, !dbg !1859
  %2 = load i32* %1, align 4, !dbg !1859, !tbaa !1853
  call void @__ioc_report_conversion(i32 109, i32 48, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1859
  %cmp11 = icmp eq i32 %2, -1, !dbg !1859
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !1859

if.then12:                                        ; preds = %if.end
  %3 = load i32* @ngx_cacheline_size, align 4, !dbg !1860, !tbaa !1853
  br label %if.end26, !dbg !1862

if.else:                                          ; preds = %if.end
  %4 = load i32* %1, align 4, !dbg !1863, !tbaa !1853
  %5 = load i32* @ngx_cacheline_size, align 4, !dbg !1863, !tbaa !1853
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %5, i32 1), !dbg !1863
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !1863
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !1863
  br i1 %8, label %ioc_bb17, label %cont18, !dbg !1863

ioc_bb17:                                         ; preds = %if.else
  %9 = zext i32 %5 to i64, !dbg !1863
  call void @__ioc_report_sub_overflow(i32 113, i32 77, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %9, i64 1, i8 5) nounwind, !dbg !1863
  br label %cont18, !dbg !1863

cont18:                                           ; preds = %if.else, %ioc_bb17
  %10 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 %7), !dbg !1863
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !1863
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !1863
  br i1 %12, label %ioc_bb19, label %cont20, !dbg !1863

ioc_bb19:                                         ; preds = %cont18
  %13 = zext i32 %7 to i64, !dbg !1863
  %14 = zext i32 %4 to i64, !dbg !1863
  call void @__ioc_report_add_overflow(i32 113, i32 55, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %14, i64 %13, i8 5) nounwind, !dbg !1863
  br label %cont20, !dbg !1863

cont20:                                           ; preds = %cont18, %ioc_bb19
  %15 = load i32* @ngx_cacheline_size, align 4, !dbg !1863, !tbaa !1853
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %15, i32 1), !dbg !1863
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !1863
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !1863
  br i1 %18, label %ioc_bb23, label %cont24, !dbg !1863

ioc_bb23:                                         ; preds = %cont20
  %19 = zext i32 %15 to i64, !dbg !1863
  call void @__ioc_report_sub_overflow(i32 113, i32 105, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %19, i64 1, i8 5) nounwind, !dbg !1863
  br label %cont24, !dbg !1863

cont24:                                           ; preds = %cont20, %ioc_bb23
  %neg = xor i32 %17, -1, !dbg !1863
  %and = and i32 %11, %neg, !dbg !1863
  br label %if.end26

if.end26:                                         ; preds = %cont24, %if.then12
  %storemerge = phi i32 [ %and, %cont24 ], [ %3, %if.then12 ]
  store i32 %storemerge, i32* %1, align 4, !dbg !1860
  %pool27 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1865
  %20 = load %struct.ngx_pool_s** %pool27, align 4, !dbg !1865, !tbaa !1866
  %call = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %20, i32 52) nounwind, !dbg !1865
  %cmp28 = icmp eq i8* %call, null, !dbg !1867
  br i1 %cmp28, label %return, label %if.end32, !dbg !1867

if.end32:                                         ; preds = %if.end26
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1868
  %21 = load %struct.ngx_array_s** %args, align 4, !dbg !1868, !tbaa !1866
  %elts = getelementptr inbounds %struct.ngx_array_s* %21, i32 0, i32 0, !dbg !1868
  %22 = load i8** %elts, align 4, !dbg !1868, !tbaa !1866
  %23 = bitcast %struct.ngx_http_compile_complex_value_t* %ccv to i8*, !dbg !1869
  call void @llvm.memset.p0i8.i32(i8* %23, i8 0, i32 16, i32 4, i1 false), !dbg !1869
  %cf33 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 0, !dbg !1870
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf33, align 4, !dbg !1870, !tbaa !1866
  %arrayidx = getelementptr inbounds i8* %22, i32 8, !dbg !1871
  %24 = bitcast i8* %arrayidx to %struct.ngx_str_t*, !dbg !1871
  %value34 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 1, !dbg !1871
  store %struct.ngx_str_t* %24, %struct.ngx_str_t** %value34, align 4, !dbg !1871, !tbaa !1866
  %value35 = getelementptr inbounds i8* %call, i32 24, !dbg !1872
  %25 = bitcast i8* %value35 to %struct.ngx_http_complex_value_t*, !dbg !1872
  %complex_value = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 2, !dbg !1872
  store %struct.ngx_http_complex_value_t* %25, %struct.ngx_http_complex_value_t** %complex_value, align 4, !dbg !1872, !tbaa !1866
  %call36 = call i32 @ngx_http_compile_complex_value(%struct.ngx_http_compile_complex_value_t* %ccv) nounwind, !dbg !1873
  %cmp37 = icmp eq i32 %call36, 0, !dbg !1873
  br i1 %cmp37, label %if.end41, label %return, !dbg !1873

if.end41:                                         ; preds = %if.end32
  %arrayidx42 = getelementptr inbounds i8* %22, i32 16, !dbg !1874
  %26 = bitcast i8* %arrayidx42 to i64*, !dbg !1874
  %27 = bitcast %struct.ngx_str_t* %name to i64*, !dbg !1874
  %28 = load i64* %26, align 4, !dbg !1874
  store i64 %28, i64* %27, align 8, !dbg !1874
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !1875
  %trunc = trunc i64 %28 to i32
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %trunc, i32 1), !dbg !1875
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !1875
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !1875
  br i1 %31, label %ioc_bb43, label %if.end41.cont44_crit_edge, !dbg !1875

if.end41.cont44_crit_edge:                        ; preds = %if.end41
  %32 = lshr i64 %28, 32
  %33 = trunc i64 %32 to i32
  %34 = inttoptr i32 %33 to i8*
  %data.pre = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !1876
  br label %cont44, !dbg !1875

ioc_bb43:                                         ; preds = %if.end41
  %35 = and i64 %28, 4294967295, !dbg !1875
  call void @__ioc_report_sub_overflow(i32 128, i32 11, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %35, i64 1, i8 5) nounwind, !dbg !1875
  %data.phi.trans.insert = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1
  %.pre = load i8** %data.phi.trans.insert, align 4, !dbg !1876, !tbaa !1866
  br label %cont44, !dbg !1875

cont44:                                           ; preds = %if.end41.cont44_crit_edge, %ioc_bb43
  %data.pre-phi = phi i8** [ %data.pre, %if.end41.cont44_crit_edge ], [ %data.phi.trans.insert, %ioc_bb43 ], !dbg !1876
  %36 = phi i8* [ %34, %if.end41.cont44_crit_edge ], [ %.pre, %ioc_bb43 ]
  store i32 %30, i32* %len, align 8, !dbg !1875, !tbaa !1853
  %incdec.ptr = getelementptr inbounds i8* %36, i32 1, !dbg !1876
  store i8* %incdec.ptr, i8** %data.pre-phi, align 4, !dbg !1876, !tbaa !1866
  %call47 = call %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %name, i32 1) nounwind, !dbg !1877
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %call47}, i64 0, metadata !610), !dbg !1877
  %cmp48 = icmp eq %struct.ngx_http_variable_s* %call47, null, !dbg !1878
  br i1 %cmp48, label %return, label %if.end52, !dbg !1878

if.end52:                                         ; preds = %cont44
  %get_handler = getelementptr inbounds %struct.ngx_http_variable_s* %call47, i32 0, i32 2, !dbg !1879
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_map_variable, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler, align 4, !dbg !1879, !tbaa !1866
  %37 = ptrtoint i8* %call to i32, !dbg !1880
  %data53 = getelementptr inbounds %struct.ngx_http_variable_s* %call47, i32 0, i32 3, !dbg !1880
  store i32 %37, i32* %data53, align 4, !dbg !1880, !tbaa !1853
  %log = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 6, !dbg !1881
  %38 = load %struct.ngx_log_s** %log, align 4, !dbg !1881, !tbaa !1866
  %call56 = call %struct.ngx_pool_s* @ngx_create_pool(i32 16384, %struct.ngx_log_s* %38) nounwind, !dbg !1881
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %call56}, i64 0, metadata !475), !dbg !1881
  %cmp57 = icmp eq %struct.ngx_pool_s* %call56, null, !dbg !1882
  br i1 %cmp57, label %return, label %if.end61, !dbg !1882

if.end61:                                         ; preds = %if.end52
  %39 = load %struct.ngx_pool_s** %pool27, align 4, !dbg !1883, !tbaa !1866
  %pool63 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 1, !dbg !1883
  store %struct.ngx_pool_s* %39, %struct.ngx_pool_s** %pool63, align 4, !dbg !1883, !tbaa !1866
  %temp_pool = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 2, !dbg !1884
  store %struct.ngx_pool_s* %call56, %struct.ngx_pool_s** %temp_pool, align 4, !dbg !1884, !tbaa !1866
  %keys = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, !dbg !1883
  %call68 = call i32 @ngx_hash_keys_array_init(%struct.ngx_hash_keys_arrays_t* %keys, i32 2) nounwind, !dbg !1885
  %cmp69 = icmp eq i32 %call68, 0, !dbg !1885
  br i1 %cmp69, label %if.end73, label %if.then70, !dbg !1885

if.then70:                                        ; preds = %if.end61
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1886
  br label %return, !dbg !1888

if.end73:                                         ; preds = %if.end61
  %hsize = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 0, !dbg !1889
  %40 = load i32* %hsize, align 4, !dbg !1889, !tbaa !1853
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %40, i32 20), !dbg !1889
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !1889
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !1889
  br i1 %43, label %ioc_bb75, label %cont76, !dbg !1889

ioc_bb75:                                         ; preds = %if.end73
  %44 = zext i32 %40 to i64, !dbg !1889
  call void @__ioc_report_mul_overflow(i32 146, i32 60, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 20, i64 %44, i8 5) nounwind, !dbg !1889
  br label %cont76, !dbg !1889

cont76:                                           ; preds = %if.end73, %ioc_bb75
  %call77 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %call56, i32 %42) nounwind, !dbg !1889
  %45 = bitcast i8* %call77 to %struct.ngx_array_s*, !dbg !1889
  %values_hash = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 1, !dbg !1889
  store %struct.ngx_array_s* %45, %struct.ngx_array_s** %values_hash, align 4, !dbg !1889, !tbaa !1866
  %cmp79 = icmp eq i8* %call77, null, !dbg !1890
  br i1 %cmp79, label %if.then80, label %cont86, !dbg !1890

if.then80:                                        ; preds = %cont76
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1891
  br label %return, !dbg !1893

cont86:                                           ; preds = %cont76
  %46 = load %struct.ngx_pool_s** %pool27, align 4, !dbg !1894, !tbaa !1866
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %46}, i64 0, metadata !1895) nounwind, !dbg !1896
  call void @llvm.dbg.value(metadata !1897, i64 0, metadata !1898) nounwind, !dbg !1896
  call void @llvm.dbg.value(metadata !1899, i64 0, metadata !1900) nounwind, !dbg !1896
  %nelts.i = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 2, i32 1, !dbg !1901
  store i32 0, i32* %nelts.i, align 4, !dbg !1901, !tbaa !1853
  %size1.i = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 2, i32 2, !dbg !1903
  store i32 8, i32* %size1.i, align 4, !dbg !1903, !tbaa !1853
  %nalloc.i = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 2, i32 3, !dbg !1904
  store i32 2, i32* %nalloc.i, align 4, !dbg !1904, !tbaa !1853
  %pool2.i = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 2, i32 4, !dbg !1905
  store %struct.ngx_pool_s* %46, %struct.ngx_pool_s** %pool2.i, align 4, !dbg !1905, !tbaa !1866
  %call.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %46, i32 16) nounwind, !dbg !1906
  %elts.i = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 2, i32 0, !dbg !1906
  store i8* %call.i, i8** %elts.i, align 4, !dbg !1906, !tbaa !1866
  %cmp.i = icmp eq i8* %call.i, null, !dbg !1907
  br i1 %cmp.i, label %if.then89, label %if.end92, !dbg !1894

if.then89:                                        ; preds = %cont86
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1908
  br label %return, !dbg !1910

if.end92:                                         ; preds = %cont86
  %47 = load %struct.ngx_pool_s** %pool27, align 4, !dbg !1911, !tbaa !1866
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %47}, i64 0, metadata !1912) nounwind, !dbg !1913
  call void @llvm.dbg.value(metadata !1897, i64 0, metadata !1914) nounwind, !dbg !1913
  call void @llvm.dbg.value(metadata !1899, i64 0, metadata !1915) nounwind, !dbg !1913
  %nelts.i260 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 3, i32 1, !dbg !1916
  store i32 0, i32* %nelts.i260, align 4, !dbg !1916, !tbaa !1853
  %size1.i261 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 3, i32 2, !dbg !1917
  store i32 8, i32* %size1.i261, align 4, !dbg !1917, !tbaa !1853
  %nalloc.i262 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 3, i32 3, !dbg !1918
  store i32 2, i32* %nalloc.i262, align 4, !dbg !1918, !tbaa !1853
  %pool2.i263 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 3, i32 4, !dbg !1919
  store %struct.ngx_pool_s* %47, %struct.ngx_pool_s** %pool2.i263, align 4, !dbg !1919, !tbaa !1866
  %call.i265 = call i8* @ngx_palloc(%struct.ngx_pool_s* %47, i32 16) nounwind, !dbg !1920
  %elts.i266 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 3, i32 0, !dbg !1920
  store i8* %call.i265, i8** %elts.i266, align 4, !dbg !1920, !tbaa !1866
  %cmp.i267 = icmp eq i8* %call.i265, null, !dbg !1921
  br i1 %cmp.i267, label %if.then98, label %if.end101, !dbg !1911

if.then98:                                        ; preds = %if.end92
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1922
  br label %return, !dbg !1924

if.end101:                                        ; preds = %if.end92
  %default_value = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 4, !dbg !1925
  store %struct.ngx_variable_value_t* null, %struct.ngx_variable_value_t** %default_value, align 4, !dbg !1925, !tbaa !1866
  %cf102 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 5, !dbg !1926
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %save}, i64 0, metadata !474), !dbg !1926
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %save}, i64 0, metadata !474), !dbg !1926
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %save}, i64 0, metadata !474), !dbg !1926
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %save}, i64 0, metadata !474), !dbg !1926
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %save}, i64 0, metadata !474), !dbg !1926
  store %struct.ngx_conf_s* %save, %struct.ngx_conf_s** %cf102, align 4, !dbg !1926, !tbaa !1866
  %hostnames = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 6, !dbg !1927
  store i32 0, i32* %hostnames, align 4, !dbg !1927, !tbaa !1853
  %48 = bitcast %struct.ngx_conf_s* %save to i8*, !dbg !1928
  %49 = bitcast %struct.ngx_conf_s* %cf to i8*, !dbg !1928
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %48, i8* %49, i32 48, i32 4, i1 false), !dbg !1928, !tbaa.struct !1929
  store %struct.ngx_pool_s* %call56, %struct.ngx_pool_s** %pool27, align 4, !dbg !1930, !tbaa !1866
  %50 = bitcast %struct.ngx_http_map_conf_ctx_t* %ctx to i8*, !dbg !1931
  %ctx106 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !1931
  store i8* %50, i8** %ctx106, align 4, !dbg !1931, !tbaa !1866
  %handler = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 10, !dbg !1932
  store i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_map, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)** %handler, align 4, !dbg !1932, !tbaa !1866
  %handler_conf = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 11, !dbg !1933
  store i8* %conf, i8** %handler_conf, align 4, !dbg !1933, !tbaa !1866
  %call107 = call i8* @ngx_conf_parse(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* null) nounwind, !dbg !1934
  call void @llvm.dbg.value(metadata !{i8* %call107}, i64 0, metadata !470), !dbg !1934
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %49, i8* %48, i32 48, i32 4, i1 false), !dbg !1935, !tbaa.struct !1929
  %cmp108 = icmp eq i8* %call107, null, !dbg !1936
  br i1 %cmp108, label %if.end110, label %if.then109, !dbg !1936

if.then109:                                       ; preds = %if.end101
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1937
  br label %return, !dbg !1939

if.end110:                                        ; preds = %if.end101
  %51 = load %struct.ngx_variable_value_t** %default_value, align 4, !dbg !1940, !tbaa !1866
  %tobool = icmp eq %struct.ngx_variable_value_t* %51, null, !dbg !1940
  %ngx_http_variable_null_value. = select i1 %tobool, %struct.ngx_variable_value_t* @ngx_http_variable_null_value, %struct.ngx_variable_value_t* %51, !dbg !1940
  %default_value113 = getelementptr inbounds i8* %call, i32 44, !dbg !1940
  %52 = bitcast i8* %default_value113 to %struct.ngx_variable_value_t**, !dbg !1940
  store %struct.ngx_variable_value_t* %ngx_http_variable_null_value., %struct.ngx_variable_value_t** %52, align 4, !dbg !1940, !tbaa !1866
  %53 = load i32* %hostnames, align 4, !dbg !1941, !tbaa !1853
  %hostnames115 = getelementptr inbounds i8* %call, i32 48, !dbg !1941
  %54 = bitcast i8* %hostnames115 to i32*, !dbg !1941
  store i32 %53, i32* %54, align 4, !dbg !1941, !tbaa !1853
  %key = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 1, !dbg !1942
  store i32 (i8*, i32)* @ngx_hash_key_lc, i32 (i8*, i32)** %key, align 4, !dbg !1942, !tbaa !1866
  %55 = load i32* %hash_max_size, align 4, !dbg !1943, !tbaa !1853
  %max_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 2, !dbg !1943
  store i32 %55, i32* %max_size, align 4, !dbg !1943, !tbaa !1853
  %56 = load i32* %1, align 4, !dbg !1944, !tbaa !1853
  %bucket_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 3, !dbg !1944
  store i32 %56, i32* %bucket_size, align 4, !dbg !1944, !tbaa !1853
  %name118 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 4, !dbg !1945
  store i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8** %name118, align 4, !dbg !1945, !tbaa !1866
  %57 = load %struct.ngx_pool_s** %pool27, align 4, !dbg !1946, !tbaa !1866
  %pool120 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 5, !dbg !1946
  store %struct.ngx_pool_s* %57, %struct.ngx_pool_s** %pool120, align 4, !dbg !1946, !tbaa !1866
  %nelts = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 3, i32 1, !dbg !1947
  %58 = load i32* %nelts, align 4, !dbg !1947, !tbaa !1853
  %tobool123 = icmp eq i32 %58, 0, !dbg !1947
  br i1 %tobool123, label %if.end142, label %if.then124, !dbg !1947

if.then124:                                       ; preds = %if.end110
  %hash127 = bitcast i8* %call to %struct.ngx_hash_t*, !dbg !1948
  %hash128 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !1948
  store %struct.ngx_hash_t* %hash127, %struct.ngx_hash_t** %hash128, align 4, !dbg !1948, !tbaa !1866
  %temp_pool129 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !1950
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %temp_pool129, align 4, !dbg !1950, !tbaa !1866
  %elts132 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 3, i32 0, !dbg !1951
  %59 = load i8** %elts132, align 4, !dbg !1951, !tbaa !1866
  %60 = bitcast i8* %59 to %struct.ngx_hash_key_t*, !dbg !1951
  %call136 = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %60, i32 %58) nounwind, !dbg !1951
  %cmp137 = icmp eq i32 %call136, 0, !dbg !1951
  br i1 %cmp137, label %if.end142, label %if.then138, !dbg !1951

if.then138:                                       ; preds = %if.then124
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1952
  br label %return, !dbg !1954

if.end142:                                        ; preds = %if.then124, %if.end110
  %nelts144 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 5, i32 1, !dbg !1955
  %61 = load i32* %nelts144, align 4, !dbg !1955, !tbaa !1853
  %tobool145 = icmp eq i32 %61, 0, !dbg !1955
  br i1 %tobool145, label %if.end170, label %if.then146, !dbg !1955

if.then146:                                       ; preds = %if.end142
  %elts149 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 5, i32 0, !dbg !1956
  %62 = load i8** %elts149, align 4, !dbg !1956, !tbaa !1866
  call void @qsort(i8* %62, i32 %61, i32 16, i32 (i8*, i8*)* @ngx_http_map_cmp_dns_wildcards) nounwind, !dbg !1956
  %hash153 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !1958
  store %struct.ngx_hash_t* null, %struct.ngx_hash_t** %hash153, align 4, !dbg !1958, !tbaa !1866
  %temp_pool154 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !1959
  store %struct.ngx_pool_s* %call56, %struct.ngx_pool_s** %temp_pool154, align 4, !dbg !1959, !tbaa !1866
  %63 = load i8** %elts149, align 4, !dbg !1960, !tbaa !1866
  %64 = bitcast i8* %63 to %struct.ngx_hash_key_t*, !dbg !1960
  %65 = load i32* %nelts144, align 4, !dbg !1960, !tbaa !1853
  %call161 = call i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %64, i32 %65) nounwind, !dbg !1960
  %cmp162 = icmp eq i32 %call161, 0, !dbg !1960
  br i1 %cmp162, label %if.end166, label %if.then163, !dbg !1960

if.then163:                                       ; preds = %if.then146
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1961
  br label %return, !dbg !1963

if.end166:                                        ; preds = %if.then146
  %66 = load %struct.ngx_hash_t** %hash153, align 4, !dbg !1964, !tbaa !1866
  %67 = bitcast %struct.ngx_hash_t* %66 to %struct.ngx_hash_wildcard_t*, !dbg !1964
  %wc_head = getelementptr inbounds i8* %call, i32 8, !dbg !1964
  %68 = bitcast i8* %wc_head to %struct.ngx_hash_wildcard_t**, !dbg !1964
  store %struct.ngx_hash_wildcard_t* %67, %struct.ngx_hash_wildcard_t** %68, align 4, !dbg !1964, !tbaa !1866
  br label %if.end170, !dbg !1965

if.end170:                                        ; preds = %if.end142, %if.end166
  %nelts172 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 7, i32 1, !dbg !1966
  %69 = load i32* %nelts172, align 4, !dbg !1966, !tbaa !1853
  %tobool173 = icmp eq i32 %69, 0, !dbg !1966
  br i1 %tobool173, label %if.end198, label %if.then174, !dbg !1966

if.then174:                                       ; preds = %if.end170
  %elts177 = getelementptr inbounds %struct.ngx_http_map_conf_ctx_t* %ctx, i32 0, i32 0, i32 7, i32 0, !dbg !1967
  %70 = load i8** %elts177, align 4, !dbg !1967, !tbaa !1866
  call void @qsort(i8* %70, i32 %69, i32 16, i32 (i8*, i8*)* @ngx_http_map_cmp_dns_wildcards) nounwind, !dbg !1967
  %hash181 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !1969
  store %struct.ngx_hash_t* null, %struct.ngx_hash_t** %hash181, align 4, !dbg !1969, !tbaa !1866
  %temp_pool182 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !1970
  store %struct.ngx_pool_s* %call56, %struct.ngx_pool_s** %temp_pool182, align 4, !dbg !1970, !tbaa !1866
  %71 = load i8** %elts177, align 4, !dbg !1971, !tbaa !1866
  %72 = bitcast i8* %71 to %struct.ngx_hash_key_t*, !dbg !1971
  %73 = load i32* %nelts172, align 4, !dbg !1971, !tbaa !1853
  %call189 = call i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %72, i32 %73) nounwind, !dbg !1971
  %cmp190 = icmp eq i32 %call189, 0, !dbg !1971
  br i1 %cmp190, label %if.end194, label %if.then191, !dbg !1971

if.then191:                                       ; preds = %if.then174
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1972
  br label %return, !dbg !1974

if.end194:                                        ; preds = %if.then174
  %74 = load %struct.ngx_hash_t** %hash181, align 4, !dbg !1975, !tbaa !1866
  %75 = bitcast %struct.ngx_hash_t* %74 to %struct.ngx_hash_wildcard_t*, !dbg !1975
  %wc_tail = getelementptr inbounds i8* %call, i32 12, !dbg !1975
  %76 = bitcast i8* %wc_tail to %struct.ngx_hash_wildcard_t**, !dbg !1975
  store %struct.ngx_hash_wildcard_t* %75, %struct.ngx_hash_wildcard_t** %76, align 4, !dbg !1975, !tbaa !1866
  br label %if.end198, !dbg !1976

if.end198:                                        ; preds = %if.end170, %if.end194
  %77 = load i32* %nelts.i260, align 4, !dbg !1977, !tbaa !1853
  %tobool201 = icmp eq i32 %77, 0, !dbg !1977
  br i1 %tobool201, label %if.end209, label %if.then202, !dbg !1977

if.then202:                                       ; preds = %if.end198
  %78 = load i8** %elts.i266, align 4, !dbg !1978, !tbaa !1866
  %79 = bitcast i8* %78 to %struct.ngx_http_map_regex_t*, !dbg !1978
  %regex = getelementptr inbounds i8* %call, i32 16, !dbg !1978
  %80 = bitcast i8* %regex to %struct.ngx_http_map_regex_t**, !dbg !1978
  store %struct.ngx_http_map_regex_t* %79, %struct.ngx_http_map_regex_t** %80, align 4, !dbg !1978, !tbaa !1866
  %nregex = getelementptr inbounds i8* %call, i32 20, !dbg !1980
  %81 = bitcast i8* %nregex to i32*, !dbg !1980
  store i32 %77, i32* %81, align 4, !dbg !1980, !tbaa !1853
  br label %if.end209, !dbg !1981

if.end209:                                        ; preds = %if.end198, %if.then202
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %call56) nounwind, !dbg !1982
  br label %return, !dbg !1983

return:                                           ; preds = %if.end52, %cont44, %if.end32, %if.end26, %if.end209, %if.then191, %if.then163, %if.then138, %if.then109, %if.then98, %if.then89, %if.then80, %if.then70
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %if.then70 ], [ inttoptr (i32 -1 to i8*), %if.then80 ], [ inttoptr (i32 -1 to i8*), %if.then89 ], [ inttoptr (i32 -1 to i8*), %if.then98 ], [ %call107, %if.then109 ], [ inttoptr (i32 -1 to i8*), %if.then138 ], [ inttoptr (i32 -1 to i8*), %if.then163 ], [ inttoptr (i32 -1 to i8*), %if.then191 ], [ null, %if.end209 ], [ inttoptr (i32 -1 to i8*), %if.end26 ], [ inttoptr (i32 -1 to i8*), %if.end32 ], [ inttoptr (i32 -1 to i8*), %cont44 ], [ inttoptr (i32 -1 to i8*), %if.end52 ]
  ret i8* %retval.0, !dbg !1984
}

declare i8* @ngx_conf_set_num_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @ngx_http_compile_complex_value(%struct.ngx_http_compile_complex_value_t*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32)

define internal i32 @ngx_http_map_variable(%struct.ngx_http_request_s* %r, %struct.ngx_variable_value_t* nocapture %v, i32 %data) nounwind {
entry:
  %val = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1765), !dbg !1985
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1766), !dbg !1985
  call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1767), !dbg !1985
  %0 = inttoptr i32 %data to %struct.ngx_http_map_ctx_t*, !dbg !1986
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_map_ctx_t* %0}, i64 0, metadata !1768), !dbg !1986
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %val}, metadata !1770), !dbg !1987
  %value1 = getelementptr inbounds %struct.ngx_http_map_ctx_t* %0, i32 0, i32 1, !dbg !1988
  %call = call i32 @ngx_http_complex_value(%struct.ngx_http_request_s* %r, %struct.ngx_http_complex_value_t* %value1, %struct.ngx_str_t* %val) nounwind, !dbg !1988
  %cmp = icmp eq i32 %call, 0, !dbg !1988
  br i1 %cmp, label %if.end, label %return, !dbg !1988

if.end:                                           ; preds = %entry
  %hostnames = getelementptr inbounds %struct.ngx_http_map_ctx_t* %0, i32 0, i32 3, !dbg !1989
  %1 = load i32* %hostnames, align 4, !dbg !1989, !tbaa !1853
  %tobool = icmp eq i32 %1, 0, !dbg !1989
  br i1 %tobool, label %if.end18, label %land.lhs.true, !dbg !1989

land.lhs.true:                                    ; preds = %if.end
  %len = getelementptr inbounds %struct.ngx_str_t* %val, i32 0, i32 0, !dbg !1989
  %2 = load i32* %len, align 4, !dbg !1989, !tbaa !1853
  %cmp4 = icmp eq i32 %2, 0, !dbg !1989
  br i1 %cmp4, label %if.end18, label %land.lhs.true5, !dbg !1989

land.lhs.true5:                                   ; preds = %land.lhs.true
  %3 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 1), !dbg !1989
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !1989
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !1989
  br i1 %5, label %ioc_bb9, label %cont10, !dbg !1989

ioc_bb9:                                          ; preds = %land.lhs.true5
  %6 = zext i32 %2 to i64, !dbg !1989
  call void @__ioc_report_sub_overflow(i32 63, i32 59, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %6, i64 1, i8 5) nounwind, !dbg !1989
  br label %cont10, !dbg !1989

cont10:                                           ; preds = %land.lhs.true5, %ioc_bb9
  %data11 = getelementptr inbounds %struct.ngx_str_t* %val, i32 0, i32 1, !dbg !1989
  %7 = load i8** %data11, align 4, !dbg !1989, !tbaa !1866
  %arrayidx = getelementptr inbounds i8* %7, i32 %4, !dbg !1989
  %8 = load i8* %arrayidx, align 1, !dbg !1989, !tbaa !1854
  %cmp12 = icmp eq i8 %8, 46, !dbg !1989
  br i1 %cmp12, label %if.then14, label %if.end18, !dbg !1989

if.then14:                                        ; preds = %cont10
  %9 = load i32* %len, align 4, !dbg !1990, !tbaa !1853
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %9, i32 1), !dbg !1990
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !1990
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !1990
  br i1 %12, label %ioc_bb16, label %cont17, !dbg !1990

ioc_bb16:                                         ; preds = %if.then14
  %13 = zext i32 %9 to i64, !dbg !1990
  call void @__ioc_report_sub_overflow(i32 64, i32 12, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %13, i64 1, i8 5) nounwind, !dbg !1990
  br label %cont17, !dbg !1990

cont17:                                           ; preds = %if.then14, %ioc_bb16
  store i32 %11, i32* %len, align 4, !dbg !1990, !tbaa !1853
  br label %if.end18, !dbg !1992

if.end18:                                         ; preds = %land.lhs.true, %if.end, %cont17, %cont10
  %map19 = getelementptr inbounds %struct.ngx_http_map_ctx_t* %0, i32 0, i32 0, !dbg !1993
  %call20 = call i8* @ngx_http_map_find(%struct.ngx_http_request_s* %r, %struct.ngx_http_map_t* %map19, %struct.ngx_str_t* %val) nounwind, !dbg !1993
  %14 = bitcast i8* %call20 to %struct.ngx_variable_value_t*, !dbg !1993
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %14}, i64 0, metadata !1771), !dbg !1993
  %cmp21 = icmp eq i8* %call20, null, !dbg !1994
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !1994

if.then23:                                        ; preds = %if.end18
  %default_value = getelementptr inbounds %struct.ngx_http_map_ctx_t* %0, i32 0, i32 2, !dbg !1995
  %15 = load %struct.ngx_variable_value_t** %default_value, align 4, !dbg !1995, !tbaa !1866
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %15}, i64 0, metadata !1771), !dbg !1995
  br label %if.end24, !dbg !1997

if.end24:                                         ; preds = %if.then23, %if.end18
  %value.0 = phi %struct.ngx_variable_value_t* [ %15, %if.then23 ], [ %14, %if.end18 ]
  %16 = bitcast %struct.ngx_variable_value_t* %value.0 to i32*, !dbg !1998
  %17 = load i32* %16, align 4, !dbg !1998
  %bf.clear = and i32 %17, 268435456, !dbg !1998
  %tobool25 = icmp eq i32 %bf.clear, 0, !dbg !1998
  br i1 %tobool25, label %if.then26, label %if.end37, !dbg !1998

if.then26:                                        ; preds = %if.end24
  %data27 = getelementptr inbounds %struct.ngx_variable_value_t* %value.0, i32 0, i32 1, !dbg !1999
  %18 = load i8** %data27, align 4, !dbg !1999, !tbaa !1866
  %19 = ptrtoint i8* %18 to i32, !dbg !1999
  %call28 = call %struct.ngx_variable_value_t* @ngx_http_get_flushed_variable(%struct.ngx_http_request_s* %r, i32 %19) nounwind, !dbg !1999
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call28}, i64 0, metadata !1771), !dbg !1999
  %cmp29 = icmp eq %struct.ngx_variable_value_t* %call28, null, !dbg !2001
  br i1 %cmp29, label %if.then35, label %cont33, !dbg !2001

cont33:                                           ; preds = %if.then26
  %20 = bitcast %struct.ngx_variable_value_t* %call28 to i32*, !dbg !2001
  %21 = load i32* %20, align 4, !dbg !2001
  %bf.clear31 = and i32 %21, 1073741824, !dbg !2001
  %tobool34 = icmp eq i32 %bf.clear31, 0, !dbg !2001
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !2001

if.then35:                                        ; preds = %cont33, %if.then26
  call void @llvm.dbg.value(metadata !2002, i64 0, metadata !1771), !dbg !2003
  br label %if.end37, !dbg !2005

if.end37:                                         ; preds = %cont33, %if.end24, %if.then35
  %value.1 = phi %struct.ngx_variable_value_t* [ %value.0, %if.end24 ], [ @ngx_http_variable_null_value, %if.then35 ], [ %call28, %cont33 ]
  %22 = bitcast %struct.ngx_variable_value_t* %value.1 to i64*, !dbg !2006
  %23 = bitcast %struct.ngx_variable_value_t* %v to i64*, !dbg !2006
  %24 = load i64* %22, align 4, !dbg !2006
  store i64 %24, i64* %23, align 4, !dbg !2006
  br label %return, !dbg !2007

return:                                           ; preds = %entry, %if.end37
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !2008
}

declare %struct.ngx_pool_s* @ngx_create_pool(i32, %struct.ngx_log_s*)

declare i32 @ngx_hash_keys_array_init(%struct.ngx_hash_keys_arrays_t*, i32)

declare void @ngx_destroy_pool(%struct.ngx_pool_s*)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal i8* @ngx_http_map(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %dummy, i8* nocapture %conf) nounwind {
entry:
  %file = alloca %struct.ngx_str_t, align 8
  %name = alloca %struct.ngx_str_t, align 8
  %rc430 = alloca %struct.ngx_regex_compile_t, align 8
  %errstr = alloca [1024 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1700), !dbg !2009
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %dummy}, i64 0, metadata !1701), !dbg !2009
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1702), !dbg !2009
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %file}, metadata !1707), !dbg !2010
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %name}, metadata !1708), !dbg !2011
  %ctx1 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2012
  %0 = load i8** %ctx1, align 4, !dbg !2012, !tbaa !1866
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2013
  %1 = load %struct.ngx_array_s** %args, align 4, !dbg !2013, !tbaa !1866
  %elts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 0, !dbg !2013
  %2 = load i8** %elts, align 4, !dbg !2013, !tbaa !1866
  %3 = bitcast i8* %2 to %struct.ngx_str_t*, !dbg !2013
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %3}, i64 0, metadata !1706), !dbg !2013
  %nelts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 1, !dbg !2014
  %4 = load i32* %nelts, align 4, !dbg !2014, !tbaa !1853
  %cmp = icmp eq i32 %4, 1, !dbg !2014
  br i1 %cmp, label %land.lhs.true, label %cont66, !dbg !2014

land.lhs.true:                                    ; preds = %entry
  %5 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 1) to i32), i32 ptrtoint ([10 x i8]* @.str4 to i32)), !dbg !2015
  %6 = extractvalue { i32, i1 } %5, 1, !dbg !2015
  br i1 %6, label %ioc_bb3, label %cont6, !dbg !2015

ioc_bb3:                                          ; preds = %land.lhs.true
  call void @__ioc_report_sub_overflow(i32 243, i32 35, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([10 x i8]* @.str4 to i32) to i64), i8 5) nounwind, !dbg !2015
  br label %cont6, !dbg !2015

cont6:                                            ; preds = %ioc_bb3, %land.lhs.true
  %data57 = getelementptr inbounds i8* %2, i32 4, !dbg !2016
  %7 = bitcast i8* %data57 to i8**, !dbg !2016
  %8 = load i8** %7, align 4, !dbg !2016, !tbaa !1866
  %call = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([10 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !2016
  %cmp58 = icmp eq i32 %call, 0, !dbg !2016
  br i1 %cmp58, label %cont62, label %cont6.cont66_crit_edge, !dbg !2016

cont6.cont66_crit_edge:                           ; preds = %cont6
  %.pre679 = load %struct.ngx_array_s** %args, align 4, !dbg !2019, !tbaa !1866
  %nelts64.phi.trans.insert = getelementptr inbounds %struct.ngx_array_s* %.pre679, i32 0, i32 1
  %.pre680 = load i32* %nelts64.phi.trans.insert, align 4, !dbg !2019, !tbaa !1853
  br label %cont66, !dbg !2016

cont62:                                           ; preds = %cont6
  %hostnames = getelementptr inbounds i8* %0, i32 136, !dbg !2020
  %9 = bitcast i8* %hostnames to i32*, !dbg !2020
  store i32 1, i32* %9, align 4, !dbg !2020, !tbaa !1853
  br label %return, !dbg !2022

cont66:                                           ; preds = %cont6.cont66_crit_edge, %entry
  %10 = phi i32 [ %.pre680, %cont6.cont66_crit_edge ], [ %4, %entry ]
  %cmp67 = icmp eq i32 %10, 2, !dbg !2019
  br i1 %cmp67, label %if.end75, label %cont71, !dbg !2019

cont71:                                           ; preds = %cont66
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([37 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !2023
  br label %return, !dbg !2025

if.end75:                                         ; preds = %cont66
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 1) to i32), i32 ptrtoint ([8 x i8]* @.str6 to i32)), !dbg !2026
  %12 = extractvalue { i32, i1 } %11, 1, !dbg !2026
  br i1 %12, label %ioc_bb78, label %cont81, !dbg !2026

ioc_bb78:                                         ; preds = %if.end75
  call void @__ioc_report_sub_overflow(i32 251, i32 7, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([8 x i8]* @.str6 to i32) to i64), i8 5) nounwind, !dbg !2026
  br label %cont81, !dbg !2026

cont81:                                           ; preds = %if.end75, %ioc_bb78
  %data143 = getelementptr inbounds i8* %2, i32 4, !dbg !2027
  %13 = bitcast i8* %data143 to i8**, !dbg !2027
  %14 = load i8** %13, align 4, !dbg !2027, !tbaa !1866
  %call144 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !2027
  %cmp147 = icmp eq i32 %call144, 0, !dbg !2027
  %arrayidx150 = getelementptr inbounds i8* %2, i32 8, !dbg !2030
  %15 = bitcast i8* %arrayidx150 to %struct.ngx_str_t*, !dbg !2030
  br i1 %cmp147, label %if.then149, label %if.end161, !dbg !2027

if.then149:                                       ; preds = %cont81
  %16 = bitcast i8* %arrayidx150 to i64*, !dbg !2030
  %17 = bitcast %struct.ngx_str_t* %file to i64*, !dbg !2030
  %18 = load i64* %16, align 4, !dbg !2030
  store i64 %18, i64* %17, align 8, !dbg !2030
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !2032
  %19 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !2032, !tbaa !1866
  %call153 = call i32 @ngx_conf_full_name(%struct.ngx_cycle_s* %19, %struct.ngx_str_t* %file, i32 1) nounwind, !dbg !2032
  %cmp154 = icmp eq i32 %call153, 0, !dbg !2032
  br i1 %cmp154, label %if.end159, label %return, !dbg !2032

if.end159:                                        ; preds = %if.then149
  %call160 = call i8* @ngx_conf_parse(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %file) nounwind, !dbg !2033
  br label %return, !dbg !2033

if.end161:                                        ; preds = %cont81
  %data163 = getelementptr inbounds i8* %2, i32 12, !dbg !2034
  %20 = bitcast i8* %data163 to i8**, !dbg !2034
  %21 = load i8** %20, align 4, !dbg !2034, !tbaa !1866
  %22 = load i8* %21, align 1, !dbg !2034, !tbaa !1854
  %cmp166 = icmp eq i8 %22, 36, !dbg !2034
  br i1 %cmp166, label %if.then168, label %for.cond227.preheader, !dbg !2034

for.cond227.preheader:                            ; preds = %if.end161
  %len229 = bitcast i8* %arrayidx150 to i32*, !dbg !2035
  %23 = load i32* %len229, align 4, !dbg !2035, !tbaa !1853
  %cmp230669 = icmp eq i32 %23, 0, !dbg !2035
  br i1 %cmp230669, label %for.end246, label %cont234, !dbg !2035

if.then168:                                       ; preds = %if.end161
  %24 = bitcast i8* %arrayidx150 to i64*, !dbg !2037
  %25 = bitcast %struct.ngx_str_t* %name to i64*, !dbg !2037
  %26 = load i64* %24, align 4, !dbg !2037
  store i64 %26, i64* %25, align 8, !dbg !2037
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !2039
  %trunc = trunc i64 %26 to i32
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %trunc, i32 1), !dbg !2039
  %28 = extractvalue { i32, i1 } %27, 0, !dbg !2039
  %29 = extractvalue { i32, i1 } %27, 1, !dbg !2039
  br i1 %29, label %ioc_bb170, label %if.then168.cont171_crit_edge, !dbg !2039

if.then168.cont171_crit_edge:                     ; preds = %if.then168
  %30 = lshr i64 %26, 32
  %31 = trunc i64 %30 to i32
  %32 = inttoptr i32 %31 to i8*
  %data172.pre = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !2040
  br label %cont171, !dbg !2039

ioc_bb170:                                        ; preds = %if.then168
  %33 = and i64 %26, 4294967295, !dbg !2039
  call void @__ioc_report_sub_overflow(i32 261, i32 13, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %33, i64 1, i8 5) nounwind, !dbg !2039
  %data172.phi.trans.insert = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1
  %.pre = load i8** %data172.phi.trans.insert, align 4, !dbg !2040, !tbaa !1866
  br label %cont171, !dbg !2039

cont171:                                          ; preds = %if.then168.cont171_crit_edge, %ioc_bb170
  %data172.pre-phi = phi i8** [ %data172.pre, %if.then168.cont171_crit_edge ], [ %data172.phi.trans.insert, %ioc_bb170 ], !dbg !2040
  %34 = phi i8* [ %32, %if.then168.cont171_crit_edge ], [ %.pre, %ioc_bb170 ]
  store i32 %28, i32* %len, align 8, !dbg !2039, !tbaa !1853
  %incdec.ptr = getelementptr inbounds i8* %34, i32 1, !dbg !2040
  store i8* %incdec.ptr, i8** %data172.pre-phi, align 4, !dbg !2040, !tbaa !1866
  %cf173 = getelementptr inbounds i8* %0, i32 132, !dbg !2041
  %35 = bitcast i8* %cf173 to %struct.ngx_conf_s**, !dbg !2041
  %36 = load %struct.ngx_conf_s** %35, align 4, !dbg !2041, !tbaa !1866
  %call174 = call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %36, %struct.ngx_str_t* %name) nounwind, !dbg !2041
  call void @llvm.dbg.value(metadata !{i32 %call174}, i64 0, metadata !1705), !dbg !2041
  %cmp177 = icmp eq i32 %call174, -1, !dbg !2042
  br i1 %cmp177, label %return, label %if.end182, !dbg !2042

if.end182:                                        ; preds = %cont171
  %var_values = getelementptr inbounds i8* %0, i32 88, !dbg !2043
  %37 = bitcast i8* %var_values to %struct.ngx_array_s*, !dbg !2043
  %elts183 = bitcast i8* %var_values to i8**, !dbg !2043
  %38 = load i8** %elts183, align 4, !dbg !2043, !tbaa !1866
  %39 = bitcast i8* %38 to %struct.ngx_variable_value_t*, !dbg !2043
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %39}, i64 0, metadata !1713), !dbg !2043
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1709), !dbg !2044
  %nelts187 = getelementptr inbounds i8* %0, i32 92, !dbg !2044
  %40 = bitcast i8* %nelts187 to i32*, !dbg !2044
  %41 = load i32* %40, align 4, !dbg !2044, !tbaa !1853
  %cmp188661 = icmp eq i32 %41, 0, !dbg !2044
  br i1 %cmp188661, label %for.end, label %for.body, !dbg !2044

for.body:                                         ; preds = %if.end182, %for.cond.backedge
  %42 = phi i32 [ %48, %for.cond.backedge ], [ %41, %if.end182 ]
  %i.0662 = phi i32 [ %46, %for.cond.backedge ], [ 0, %if.end182 ]
  %data191 = getelementptr inbounds %struct.ngx_variable_value_t* %39, i32 %i.0662, i32 1, !dbg !2046
  %43 = load i8** %data191, align 4, !dbg !2046, !tbaa !1866
  %44 = ptrtoint i8* %43 to i32, !dbg !2046
  %cmp192 = icmp eq i32 %call174, %44, !dbg !2046
  br i1 %cmp192, label %found, label %for.inc, !dbg !2046

for.inc:                                          ; preds = %for.body
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0662, i32 1), !dbg !2044
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !2044
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !2044
  br i1 %47, label %ioc_bb196, label %for.cond.backedge, !dbg !2044

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb196
  %48 = phi i32 [ %42, %for.inc ], [ %.pre675, %ioc_bb196 ], !dbg !2044
  %cmp188 = icmp ult i32 %46, %48, !dbg !2044
  br i1 %cmp188, label %for.body, label %for.end, !dbg !2044

ioc_bb196:                                        ; preds = %for.inc
  %49 = zext i32 %i.0662 to i64, !dbg !2044
  call void @__ioc_report_add_overflow(i32 268, i32 47, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %49, i64 1, i8 5) nounwind, !dbg !2044
  %.pre675 = load i32* %40, align 4, !dbg !2044, !tbaa !1853
  br label %for.cond.backedge, !dbg !2044

for.end:                                          ; preds = %for.cond.backedge, %if.end182
  %pool = getelementptr inbounds i8* %0, i32 4, !dbg !2048
  %50 = bitcast i8* %pool to %struct.ngx_pool_s**, !dbg !2048
  %51 = load %struct.ngx_pool_s** %50, align 4, !dbg !2048, !tbaa !1866
  %call198 = call i8* @ngx_palloc(%struct.ngx_pool_s* %51, i32 8) nounwind, !dbg !2048
  %52 = bitcast i8* %call198 to %struct.ngx_variable_value_t*, !dbg !2048
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %52}, i64 0, metadata !1713), !dbg !2048
  %cmp199 = icmp eq i8* %call198, null, !dbg !2049
  br i1 %cmp199, label %return, label %cont206, !dbg !2049

cont206:                                          ; preds = %for.end
  %53 = bitcast i8* %call198 to i32*, !dbg !2050
  %54 = load i32* %53, align 4, !dbg !2050
  %55 = and i32 %54, -2147483648, !dbg !2051
  store i32 %55, i32* %53, align 4, !dbg !2051
  %56 = inttoptr i32 %call174 to i8*, !dbg !2052
  %data213 = getelementptr inbounds i8* %call198, i32 4, !dbg !2052
  %57 = bitcast i8* %data213 to i8**, !dbg !2052
  store i8* %56, i8** %57, align 4, !dbg !2052, !tbaa !1866
  %call215 = call i8* @ngx_array_push(%struct.ngx_array_s* %37) nounwind, !dbg !2053
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t** %58}, i64 0, metadata !1714), !dbg !2053
  %cmp216 = icmp eq i8* %call215, null, !dbg !2054
  br i1 %cmp216, label %return, label %if.end221, !dbg !2054

if.end221:                                        ; preds = %cont206
  %58 = bitcast i8* %call215 to %struct.ngx_variable_value_t**, !dbg !2053
  store %struct.ngx_variable_value_t* %52, %struct.ngx_variable_value_t** %58, align 4, !dbg !2055, !tbaa !1866
  br label %found, !dbg !2056

cont234:                                          ; preds = %for.cond227.preheader, %for.cond227.backedge
  %i.1671 = phi i32 [ %71, %for.cond227.backedge ], [ 0, %for.cond227.preheader ]
  %key.0670 = phi i32 [ %66, %for.cond227.backedge ], [ 0, %for.cond227.preheader ]
  %59 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %key.0670, i32 31), !dbg !2057
  %60 = extractvalue { i32, i1 } %59, 0, !dbg !2057
  %61 = extractvalue { i32, i1 } %59, 1, !dbg !2057
  br i1 %61, label %ioc_bb235, label %cont236, !dbg !2057

ioc_bb235:                                        ; preds = %cont234
  %62 = zext i32 %key.0670 to i64, !dbg !2057
  call void @__ioc_report_mul_overflow(i32 291, i32 30, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 %62, i64 31, i8 5) nounwind, !dbg !2057
  br label %cont236, !dbg !2057

cont236:                                          ; preds = %cont234, %ioc_bb235
  %63 = load i8** %20, align 4, !dbg !2057, !tbaa !1866
  %arrayidx239 = getelementptr inbounds i8* %63, i32 %i.1671, !dbg !2057
  %64 = load i8* %arrayidx239, align 1, !dbg !2057, !tbaa !1854
  %conv240 = zext i8 %64 to i32, !dbg !2057
  %65 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %60, i32 %conv240), !dbg !2057
  %66 = extractvalue { i32, i1 } %65, 0, !dbg !2057
  %67 = extractvalue { i32, i1 } %65, 1, !dbg !2057
  br i1 %67, label %ioc_bb241, label %cont242, !dbg !2057

ioc_bb241:                                        ; preds = %cont236
  %68 = zext i8 %64 to i64, !dbg !2057
  %69 = zext i32 %60 to i64, !dbg !2057
  call void @__ioc_report_add_overflow(i32 291, i32 35, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %69, i64 %68, i8 5) nounwind, !dbg !2057
  br label %cont242, !dbg !2057

cont242:                                          ; preds = %cont236, %ioc_bb241
  call void @llvm.dbg.value(metadata !{i32 %66}, i64 0, metadata !1710), !dbg !2057
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1671, i32 1), !dbg !2035
  %71 = extractvalue { i32, i1 } %70, 0, !dbg !2035
  %72 = extractvalue { i32, i1 } %70, 1, !dbg !2035
  br i1 %72, label %ioc_bb244, label %for.cond227.backedge, !dbg !2035

for.cond227.backedge:                             ; preds = %cont242, %ioc_bb244
  %73 = load i32* %len229, align 4, !dbg !2035, !tbaa !1853
  %cmp230 = icmp ult i32 %71, %73, !dbg !2035
  br i1 %cmp230, label %cont234, label %for.end246, !dbg !2035

ioc_bb244:                                        ; preds = %cont242
  %74 = zext i32 %i.1671 to i64, !dbg !2035
  call void @__ioc_report_add_overflow(i32 290, i32 34, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %74, i64 1, i8 5) nounwind, !dbg !2035
  br label %for.cond227.backedge, !dbg !2035

for.end246:                                       ; preds = %for.cond227.backedge, %for.cond227.preheader
  %75 = phi i32 [ 0, %for.cond227.preheader ], [ %73, %for.cond227.backedge ]
  %key.0.lcssa = phi i32 [ 0, %for.cond227.preheader ], [ %66, %for.cond227.backedge ]
  %hsize = bitcast i8* %0 to i32*, !dbg !2059
  %76 = load i32* %hsize, align 4, !dbg !2059, !tbaa !1853
  %77 = icmp eq i32 %76, 0, !dbg !2059
  br i1 %77, label %trap, label %cont248, !dbg !2059

trap:                                             ; preds = %for.end246
  call void @llvm.trap() noreturn nounwind, !dbg !2059
  unreachable, !dbg !2059

cont248:                                          ; preds = %for.end246
  %rem = urem i32 %key.0.lcssa, %76, !dbg !2059
  call void @llvm.dbg.value(metadata !{i32 %rem}, i64 0, metadata !1710), !dbg !2059
  %values_hash = getelementptr inbounds i8* %0, i32 84, !dbg !2060
  %78 = bitcast i8* %values_hash to %struct.ngx_array_s**, !dbg !2060
  %79 = load %struct.ngx_array_s** %78, align 4, !dbg !2060, !tbaa !1866
  %elts250 = getelementptr inbounds %struct.ngx_array_s* %79, i32 %rem, i32 0, !dbg !2060
  %80 = load i8** %elts250, align 4, !dbg !2060, !tbaa !1866
  %81 = bitcast i8* %80 to %struct.ngx_variable_value_t**, !dbg !2060
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t** %81}, i64 0, metadata !1714), !dbg !2060
  %tobool = icmp eq i8* %80, null, !dbg !2061
  br i1 %tobool, label %cont289, label %for.cond254.preheader, !dbg !2061

for.cond254.preheader:                            ; preds = %cont248
  %nelts257664 = getelementptr inbounds %struct.ngx_array_s* %79, i32 %rem, i32 1, !dbg !2062
  %82 = load i32* %nelts257664, align 4, !dbg !2062, !tbaa !1853
  %cmp258665 = icmp eq i32 %82, 0, !dbg !2062
  br i1 %cmp258665, label %if.end297, label %for.body260, !dbg !2062

for.body260:                                      ; preds = %for.cond254.preheader, %for.cond254.backedge.for.body260_crit_edge
  %83 = phi i32 [ %.pre681, %for.cond254.backedge.for.body260_crit_edge ], [ %75, %for.cond254.preheader ], !dbg !2065
  %84 = phi %struct.ngx_array_s* [ %93, %for.cond254.backedge.for.body260_crit_edge ], [ %79, %for.cond254.preheader ]
  %i.2666 = phi i32 [ %91, %for.cond254.backedge.for.body260_crit_edge ], [ 0, %for.cond254.preheader ]
  %arrayidx263 = getelementptr inbounds %struct.ngx_variable_value_t** %81, i32 %i.2666, !dbg !2065
  %85 = load %struct.ngx_variable_value_t** %arrayidx263, align 4, !dbg !2065, !tbaa !1866
  %86 = bitcast %struct.ngx_variable_value_t* %85 to i32*, !dbg !2065
  %87 = load i32* %86, align 4, !dbg !2065
  %bf.clear = and i32 %87, 268435455, !dbg !2065
  %cmp264 = icmp eq i32 %83, %bf.clear, !dbg !2065
  br i1 %cmp264, label %if.end267, label %for.inc280, !dbg !2065

if.end267:                                        ; preds = %for.body260
  %88 = load i8** %20, align 4, !dbg !2067, !tbaa !1866
  %data271 = getelementptr inbounds %struct.ngx_variable_value_t* %85, i32 0, i32 1, !dbg !2067
  %89 = load i8** %data271, align 4, !dbg !2067, !tbaa !1866
  %call274 = call i32 @strncmp(i8* %88, i8* %89, i32 %83) nounwind readonly, !dbg !2067
  %cmp275 = icmp eq i32 %call274, 0, !dbg !2067
  br i1 %cmp275, label %found, label %for.inc280, !dbg !2067

for.inc280:                                       ; preds = %for.body260, %if.end267
  %90 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2666, i32 1), !dbg !2062
  %91 = extractvalue { i32, i1 } %90, 0, !dbg !2062
  %92 = extractvalue { i32, i1 } %90, 1, !dbg !2062
  br i1 %92, label %ioc_bb281, label %for.cond254.backedge, !dbg !2062

for.cond254.backedge:                             ; preds = %for.inc280, %ioc_bb281
  %93 = phi %struct.ngx_array_s* [ %84, %for.inc280 ], [ %.pre678, %ioc_bb281 ], !dbg !2062
  %nelts257 = getelementptr inbounds %struct.ngx_array_s* %93, i32 %rem, i32 1, !dbg !2062
  %94 = load i32* %nelts257, align 4, !dbg !2062, !tbaa !1853
  %cmp258 = icmp ult i32 %91, %94, !dbg !2062
  br i1 %cmp258, label %for.cond254.backedge.for.body260_crit_edge, label %if.end297, !dbg !2062

for.cond254.backedge.for.body260_crit_edge:       ; preds = %for.cond254.backedge
  %.pre681 = load i32* %len229, align 4, !dbg !2065, !tbaa !1853
  br label %for.body260, !dbg !2062

ioc_bb281:                                        ; preds = %for.inc280
  %95 = zext i32 %i.2666 to i64, !dbg !2062
  call void @__ioc_report_add_overflow(i32 296, i32 53, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %95, i64 1, i8 5) nounwind, !dbg !2062
  %.pre678 = load %struct.ngx_array_s** %78, align 4, !dbg !2062, !tbaa !1866
  br label %for.cond254.backedge, !dbg !2062

cont289:                                          ; preds = %cont248
  %pool287 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2068
  %96 = load %struct.ngx_pool_s** %pool287, align 4, !dbg !2068, !tbaa !1866
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %96}, i64 0, metadata !2070) nounwind, !dbg !2071
  call void @llvm.dbg.value(metadata !2072, i64 0, metadata !2073) nounwind, !dbg !2071
  call void @llvm.dbg.value(metadata !2072, i64 0, metadata !2074) nounwind, !dbg !2071
  %nelts.i = getelementptr inbounds %struct.ngx_array_s* %79, i32 %rem, i32 1, !dbg !2075
  store i32 0, i32* %nelts.i, align 4, !dbg !2075, !tbaa !1853
  %size1.i = getelementptr inbounds %struct.ngx_array_s* %79, i32 %rem, i32 2, !dbg !2076
  store i32 4, i32* %size1.i, align 4, !dbg !2076, !tbaa !1853
  %nalloc.i = getelementptr inbounds %struct.ngx_array_s* %79, i32 %rem, i32 3, !dbg !2077
  store i32 4, i32* %nalloc.i, align 4, !dbg !2077, !tbaa !1853
  %pool2.i = getelementptr inbounds %struct.ngx_array_s* %79, i32 %rem, i32 4, !dbg !2078
  store %struct.ngx_pool_s* %96, %struct.ngx_pool_s** %pool2.i, align 4, !dbg !2078, !tbaa !1866
  %call.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %96, i32 16) nounwind, !dbg !2079
  store i8* %call.i, i8** %elts250, align 4, !dbg !2079, !tbaa !1866
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2080
  br i1 %cmp.i, label %return, label %if.end297, !dbg !2068

if.end297:                                        ; preds = %for.cond254.preheader, %for.cond254.backedge, %cont289
  %pool299 = getelementptr inbounds i8* %0, i32 4, !dbg !2081
  %97 = bitcast i8* %pool299 to %struct.ngx_pool_s**, !dbg !2081
  %98 = load %struct.ngx_pool_s** %97, align 4, !dbg !2081, !tbaa !1866
  %call300 = call i8* @ngx_palloc(%struct.ngx_pool_s* %98, i32 8) nounwind, !dbg !2081
  %99 = bitcast i8* %call300 to %struct.ngx_variable_value_t*, !dbg !2081
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %99}, i64 0, metadata !1713), !dbg !2081
  %cmp301 = icmp eq i8* %call300, null, !dbg !2082
  br i1 %cmp301, label %return, label %if.end306, !dbg !2082

if.end306:                                        ; preds = %if.end297
  %100 = load i32* %len229, align 4, !dbg !2083, !tbaa !1853
  %bf.value = and i32 %100, 268435455, !dbg !2083
  %101 = bitcast i8* %call300 to i32*, !dbg !2083
  %102 = load i32* %101, align 4, !dbg !2083
  %103 = and i32 %102, -268435456, !dbg !2083
  %104 = or i32 %103, %bf.value, !dbg !2083
  store i32 %104, i32* %101, align 4, !dbg !2083
  %105 = load %struct.ngx_pool_s** %97, align 4, !dbg !2084, !tbaa !1866
  %call312 = call i8* @ngx_pstrdup(%struct.ngx_pool_s* %105, %struct.ngx_str_t* %15) nounwind, !dbg !2084
  %data313 = getelementptr inbounds i8* %call300, i32 4, !dbg !2084
  %106 = bitcast i8* %data313 to i8**, !dbg !2084
  store i8* %call312, i8** %106, align 4, !dbg !2084, !tbaa !1866
  %cmp315 = icmp eq i8* %call312, null, !dbg !2085
  br i1 %cmp315, label %return, label %cont322, !dbg !2085

cont322:                                          ; preds = %if.end306
  %107 = load i32* %101, align 4, !dbg !2086
  %108 = and i32 %107, -1879048193, !dbg !2087
  %109 = or i32 %108, 268435456, !dbg !2087
  store i32 %109, i32* %101, align 4, !dbg !2087
  %110 = load %struct.ngx_array_s** %78, align 4, !dbg !2088, !tbaa !1866
  %arrayidx328 = getelementptr inbounds %struct.ngx_array_s* %110, i32 %rem, !dbg !2088
  %call329 = call i8* @ngx_array_push(%struct.ngx_array_s* %arrayidx328) nounwind, !dbg !2088
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t** %111}, i64 0, metadata !1714), !dbg !2088
  %cmp330 = icmp eq i8* %call329, null, !dbg !2089
  br i1 %cmp330, label %return, label %if.end335, !dbg !2089

if.end335:                                        ; preds = %cont322
  %111 = bitcast i8* %call329 to %struct.ngx_variable_value_t**, !dbg !2088
  store %struct.ngx_variable_value_t* %99, %struct.ngx_variable_value_t** %111, align 4, !dbg !2090, !tbaa !1866
  br label %found, !dbg !2090

found:                                            ; preds = %if.end267, %for.body, %if.end335, %if.end221
  %var.0 = phi %struct.ngx_variable_value_t* [ %52, %if.end221 ], [ %99, %if.end335 ], [ %39, %for.body ], [ %85, %if.end267 ]
  %112 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 1) to i32), i32 ptrtoint ([8 x i8]* @.str7 to i32)), !dbg !2091
  %113 = extractvalue { i32, i1 } %112, 1, !dbg !2091
  br i1 %113, label %ioc_bb338, label %cont341, !dbg !2091

ioc_bb338:                                        ; preds = %found
  call void @__ioc_report_sub_overflow(i32 329, i32 7, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([8 x i8]* @.str7 to i32) to i64), i8 5) nounwind, !dbg !2091
  br label %cont341, !dbg !2091

cont341:                                          ; preds = %found, %ioc_bb338
  %114 = load i8** %13, align 4, !dbg !2092, !tbaa !1866
  %call404 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([8 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !2092
  %cmp407 = icmp eq i32 %call404, 0, !dbg !2092
  br i1 %cmp407, label %if.then409, label %if.end418, !dbg !2092

if.then409:                                       ; preds = %cont341
  %default_value = getelementptr inbounds i8* %0, i32 128, !dbg !2095
  %115 = bitcast i8* %default_value to %struct.ngx_variable_value_t**, !dbg !2095
  %116 = load %struct.ngx_variable_value_t** %115, align 4, !dbg !2095, !tbaa !1866
  %tobool410 = icmp eq %struct.ngx_variable_value_t* %116, null, !dbg !2095
  br i1 %tobool410, label %if.end416, label %cont413, !dbg !2095

cont413:                                          ; preds = %if.then409
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([32 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !2097
  br label %return, !dbg !2099

if.end416:                                        ; preds = %if.then409
  store %struct.ngx_variable_value_t* %var.0, %struct.ngx_variable_value_t** %115, align 4, !dbg !2100, !tbaa !1866
  br label %return, !dbg !2101

if.end418:                                        ; preds = %cont341
  %len420 = bitcast i8* %2 to i32*, !dbg !2102
  %117 = load i32* %len420, align 4, !dbg !2102, !tbaa !1853
  %tobool421 = icmp eq i32 %117, 0, !dbg !2102
  br i1 %tobool421, label %cont503, label %land.lhs.true422, !dbg !2102

land.lhs.true422:                                 ; preds = %if.end418
  %118 = load i8* %114, align 1, !dbg !2102, !tbaa !1854
  switch i8 %118, label %cont503 [
    i8 126, label %if.then429
    i8 92, label %if.then488
  ], !dbg !2102

if.then429:                                       ; preds = %land.lhs.true422
  call void @llvm.dbg.declare(metadata !{%struct.ngx_regex_compile_t* %rc430}, metadata !1734), !dbg !2103
  call void @llvm.dbg.declare(metadata !{[1024 x i8]* %errstr}, metadata !1749), !dbg !2104
  %regexes = getelementptr inbounds i8* %0, i32 108, !dbg !2105
  %119 = bitcast i8* %regexes to %struct.ngx_array_s*, !dbg !2105
  %call431 = call i8* @ngx_array_push(%struct.ngx_array_s* %119) nounwind, !dbg !2105
  %cmp432 = icmp eq i8* %call431, null, !dbg !2106
  br i1 %cmp432, label %return, label %if.end437, !dbg !2106

if.end437:                                        ; preds = %if.then429
  %120 = load i32* %len420, align 4, !dbg !2107, !tbaa !1853
  %121 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %120, i32 1), !dbg !2107
  %122 = extractvalue { i32, i1 } %121, 0, !dbg !2107
  %123 = extractvalue { i32, i1 } %121, 1, !dbg !2107
  br i1 %123, label %ioc_bb440, label %cont441, !dbg !2107

ioc_bb440:                                        ; preds = %if.end437
  %124 = zext i32 %120 to i64, !dbg !2107
  call void @__ioc_report_sub_overflow(i32 346, i32 17, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %124, i64 1, i8 5) nounwind, !dbg !2107
  br label %cont441, !dbg !2107

cont441:                                          ; preds = %if.end437, %ioc_bb440
  store i32 %122, i32* %len420, align 4, !dbg !2107, !tbaa !1853
  %125 = load i8** %13, align 4, !dbg !2108, !tbaa !1866
  %incdec.ptr444 = getelementptr inbounds i8* %125, i32 1, !dbg !2108
  store i8* %incdec.ptr444, i8** %13, align 4, !dbg !2108, !tbaa !1866
  %126 = bitcast %struct.ngx_regex_compile_t* %rc430 to i8*, !dbg !2109
  call void @llvm.memset.p0i8.i32(i8* %126, i8 0, i32 44, i32 8, i1 false), !dbg !2109
  %127 = load i8** %13, align 4, !dbg !2110, !tbaa !1866
  %128 = load i8* %127, align 1, !dbg !2110, !tbaa !1854
  %cmp449 = icmp eq i8 %128, 42, !dbg !2110
  br i1 %cmp449, label %if.then451, label %if.end459, !dbg !2110

if.then451:                                       ; preds = %cont441
  %129 = load i32* %len420, align 4, !dbg !2111, !tbaa !1853
  %130 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %129, i32 1), !dbg !2111
  %131 = extractvalue { i32, i1 } %130, 0, !dbg !2111
  %132 = extractvalue { i32, i1 } %130, 1, !dbg !2111
  br i1 %132, label %ioc_bb454, label %cont455, !dbg !2111

ioc_bb454:                                        ; preds = %if.then451
  %133 = zext i32 %129 to i64, !dbg !2111
  call void @__ioc_report_sub_overflow(i32 350, i32 19, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %133, i64 1, i8 5) nounwind, !dbg !2111
  %.pre676 = load i8** %13, align 4, !dbg !2113, !tbaa !1866
  br label %cont455, !dbg !2111

cont455:                                          ; preds = %if.then451, %ioc_bb454
  %134 = phi i8* [ %127, %if.then451 ], [ %.pre676, %ioc_bb454 ]
  store i32 %131, i32* %len420, align 4, !dbg !2111, !tbaa !1853
  %incdec.ptr458 = getelementptr inbounds i8* %134, i32 1, !dbg !2113
  store i8* %incdec.ptr458, i8** %13, align 4, !dbg !2113, !tbaa !1866
  %options = getelementptr inbounds %struct.ngx_regex_compile_t* %rc430, i32 0, i32 2, !dbg !2114
  store i32 1, i32* %options, align 4, !dbg !2114, !tbaa !1853
  br label %if.end459, !dbg !2115

if.end459:                                        ; preds = %cont455, %cont441
  %135 = bitcast i8* %2 to i64*, !dbg !2116
  %136 = bitcast %struct.ngx_regex_compile_t* %rc430 to i64*, !dbg !2116
  %137 = load i64* %135, align 4, !dbg !2116
  store i64 %137, i64* %136, align 8, !dbg !2116
  %len463 = getelementptr inbounds %struct.ngx_regex_compile_t* %rc430, i32 0, i32 8, i32 0, !dbg !2117
  store i32 1024, i32* %len463, align 4, !dbg !2117, !tbaa !1853
  %arraydecay = getelementptr inbounds [1024 x i8]* %errstr, i32 0, i32 0, !dbg !2118
  %data465 = getelementptr inbounds %struct.ngx_regex_compile_t* %rc430, i32 0, i32 8, i32 1, !dbg !2118
  store i8* %arraydecay, i8** %data465, align 4, !dbg !2118, !tbaa !1866
  %cf466 = getelementptr inbounds i8* %0, i32 132, !dbg !2119
  %138 = bitcast i8* %cf466 to %struct.ngx_conf_s**, !dbg !2119
  %139 = load %struct.ngx_conf_s** %138, align 4, !dbg !2119, !tbaa !1866
  %call467 = call %struct.ngx_http_regex_t* @ngx_http_regex_compile(%struct.ngx_conf_s* %139, %struct.ngx_regex_compile_t* %rc430) nounwind, !dbg !2119
  %regex468 = bitcast i8* %call431 to %struct.ngx_http_regex_t**, !dbg !2119
  store %struct.ngx_http_regex_t* %call467, %struct.ngx_http_regex_t** %regex468, align 4, !dbg !2119, !tbaa !1866
  %cmp470 = icmp eq %struct.ngx_http_regex_t* %call467, null, !dbg !2120
  br i1 %cmp470, label %return, label %if.end475, !dbg !2120

if.end475:                                        ; preds = %if.end459
  %140 = getelementptr inbounds %struct.ngx_variable_value_t* %var.0, i32 0, i32 0, i32 0, !dbg !2121
  %value476 = getelementptr inbounds i8* %call431, i32 4, !dbg !2121
  %141 = bitcast i8* %value476 to i8**, !dbg !2121
  store i8* %140, i8** %141, align 4, !dbg !2121, !tbaa !1866
  br label %return, !dbg !2122

if.then488:                                       ; preds = %land.lhs.true422
  %142 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %117, i32 1), !dbg !2123
  %143 = extractvalue { i32, i1 } %142, 0, !dbg !2123
  %144 = extractvalue { i32, i1 } %142, 1, !dbg !2123
  br i1 %144, label %ioc_bb491, label %cont492, !dbg !2123

ioc_bb491:                                        ; preds = %if.then488
  %145 = zext i32 %117 to i64, !dbg !2123
  call void @__ioc_report_sub_overflow(i32 366, i32 17, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %145, i64 1, i8 5) nounwind, !dbg !2123
  %.pre677 = load i8** %13, align 4, !dbg !2125, !tbaa !1866
  br label %cont492, !dbg !2123

cont492:                                          ; preds = %if.then488, %ioc_bb491
  %146 = phi i8* [ %114, %if.then488 ], [ %.pre677, %ioc_bb491 ]
  store i32 %143, i32* %len420, align 4, !dbg !2123, !tbaa !1853
  %incdec.ptr495 = getelementptr inbounds i8* %146, i32 1, !dbg !2125
  store i8* %incdec.ptr495, i8** %13, align 4, !dbg !2125, !tbaa !1866
  br label %cont503, !dbg !2126

cont503:                                          ; preds = %land.lhs.true422, %if.end418, %cont492
  %hostnames499 = getelementptr inbounds i8* %0, i32 136, !dbg !2127
  %147 = bitcast i8* %hostnames499 to i32*, !dbg !2127
  %148 = load i32* %147, align 4, !dbg !2127, !tbaa !1853
  %tobool500 = icmp ne i32 %148, 0, !dbg !2127
  %cond501 = zext i1 %tobool500 to i32, !dbg !2127
  %149 = getelementptr inbounds %struct.ngx_variable_value_t* %var.0, i32 0, i32 0, i32 0, !dbg !2127
  %keys497 = bitcast i8* %0 to %struct.ngx_hash_keys_arrays_t*, !dbg !2127
  %call504 = call i32 @ngx_hash_add_key(%struct.ngx_hash_keys_arrays_t* %keys497, %struct.ngx_str_t* %3, i8* %149, i32 %cond501) nounwind, !dbg !2127
  call void @llvm.dbg.value(metadata !{i32 %call504}, i64 0, metadata !1703), !dbg !2127
  switch i32 %call504, label %cont528 [
    i32 0, label %return
    i32 -5, label %cont515
    i32 -3, label %cont524
  ], !dbg !2128

cont515:                                          ; preds = %cont503
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str9, i32 0, i32 0), i8* %2) nounwind, !dbg !2129
  br label %cont528, !dbg !2131

cont524:                                          ; preds = %cont503
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str10, i32 0, i32 0), i8* %2) nounwind, !dbg !2132
  br label %cont528, !dbg !2134

cont528:                                          ; preds = %cont515, %cont524, %cont503
  br label %return, !dbg !2135

return:                                           ; preds = %cont289, %cont503, %if.end459, %if.then429, %cont322, %if.end306, %if.end297, %cont206, %for.end, %cont171, %if.then149, %cont528, %if.end475, %if.end416, %cont413, %if.end159, %cont71, %cont62
  %retval.0 = phi i8* [ null, %cont62 ], [ inttoptr (i32 -1 to i8*), %cont71 ], [ %call160, %if.end159 ], [ inttoptr (i32 -1 to i8*), %cont413 ], [ null, %if.end416 ], [ null, %if.end475 ], [ inttoptr (i32 -1 to i8*), %cont528 ], [ inttoptr (i32 -1 to i8*), %if.then149 ], [ inttoptr (i32 -1 to i8*), %cont171 ], [ inttoptr (i32 -1 to i8*), %for.end ], [ inttoptr (i32 -1 to i8*), %cont206 ], [ inttoptr (i32 -1 to i8*), %cont289 ], [ inttoptr (i32 -1 to i8*), %if.end297 ], [ inttoptr (i32 -1 to i8*), %if.end306 ], [ inttoptr (i32 -1 to i8*), %cont322 ], [ inttoptr (i32 -1 to i8*), %if.then429 ], [ inttoptr (i32 -1 to i8*), %if.end459 ], [ null, %cont503 ]
  ret i8* %retval.0, !dbg !2136
}

declare i8* @ngx_conf_parse(%struct.ngx_conf_s*, %struct.ngx_str_t*)

declare i32 @ngx_hash_key_lc(i8*, i32)

declare i32 @ngx_hash_init(%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)* nocapture)

define internal i32 @ngx_http_map_cmp_dns_wildcards(i8* nocapture %one, i8* nocapture %two) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %one}, i64 0, metadata !1685), !dbg !2137
  tail call void @llvm.dbg.value(metadata !{i8* %two}, i64 0, metadata !1686), !dbg !2137
  %data = getelementptr inbounds i8* %one, i32 4, !dbg !2138
  %0 = bitcast i8* %data to i8**, !dbg !2138
  %1 = load i8** %0, align 4, !dbg !2138, !tbaa !1866
  %data2 = getelementptr inbounds i8* %two, i32 4, !dbg !2138
  %2 = bitcast i8* %data2 to i8**, !dbg !2138
  %3 = load i8** %2, align 4, !dbg !2138, !tbaa !1866
  %call = tail call i32 @ngx_dns_strcmp(i8* %1, i8* %3) nounwind, !dbg !2138
  ret i32 %call, !dbg !2138
}

declare i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)

declare i32 @ngx_dns_strcmp(i8*, i8*)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare i32 @ngx_conf_full_name(%struct.ngx_cycle_s*, %struct.ngx_str_t*, i32)

declare i32 @ngx_http_get_variable_index(%struct.ngx_conf_s*, %struct.ngx_str_t*)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare void @llvm.trap() noreturn nounwind

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i8* @ngx_pstrdup(%struct.ngx_pool_s*, %struct.ngx_str_t*)

declare %struct.ngx_http_regex_t* @ngx_http_regex_compile(%struct.ngx_conf_s*, %struct.ngx_regex_compile_t*)

declare i32 @ngx_hash_add_key(%struct.ngx_hash_keys_arrays_t*, %struct.ngx_str_t*, i8*, i32)

declare i32 @ngx_http_complex_value(%struct.ngx_http_request_s*, %struct.ngx_http_complex_value_t*, %struct.ngx_str_t*)

declare i8* @ngx_http_map_find(%struct.ngx_http_request_s*, %struct.ngx_http_map_t*, %struct.ngx_str_t*)

declare %struct.ngx_variable_value_t* @ngx_http_get_flushed_variable(%struct.ngx_http_request_s*, i32)

define internal i8* @ngx_http_map_create_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1777), !dbg !2139
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2140
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2140, !tbaa !1866
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %0, i32 8) nounwind, !dbg !2140
  %cmp = icmp eq i8* %call, null, !dbg !2141
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !2141

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 88, i32 40, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2142
  %hash_max_size = bitcast i8* %call to i32*, !dbg !2142
  store i32 -1, i32* %hash_max_size, align 4, !dbg !2142, !tbaa !1853
  tail call void @__ioc_report_conversion(i32 89, i32 43, i8* getelementptr inbounds ([39 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2143
  %hash_bucket_size = getelementptr inbounds i8* %call, i32 4, !dbg !2143
  %1 = bitcast i8* %hash_bucket_size to i32*, !dbg !2143
  store i32 -1, i32* %1, align 4, !dbg !2143, !tbaa !1853
  br label %return, !dbg !2144

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2145
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_map_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1780} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !1678, metadata !1697, metadata !1753, metadata !1762, metadata !1772}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_map_block", metadata !"ngx_http_map_block", metadata !"", metadata !6, i32 93, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_map_block, null, null, metadata !457, i32 94} ; [ DW_TAG_subprogram ] [line 93] [local] [def] [scope 94] [ngx_http_map_block]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_map_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !11, metadata !447, metadata !24}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!10 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!12 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !13, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!13 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!14 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !13, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17, metadata !202, metadata !429, metadata !430, metadata !431, metadata !439, metadata !440, metadata !441, metadata !442, metadata !443, metadata !446}
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
!445 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!446 = metadata !{i32 786445, metadata !14, metadata !"handler_conf", metadata !13, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !9} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!447 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !448} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!448 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !13, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !449} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!449 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !13, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!450 = metadata !{metadata !451, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456}
!451 = metadata !{i32 786445, metadata !449, metadata !"name", metadata !13, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!452 = metadata !{i32 786445, metadata !449, metadata !"type", metadata !13, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!453 = metadata !{i32 786445, metadata !449, metadata !"set", metadata !13, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !445} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!454 = metadata !{i32 786445, metadata !449, metadata !"conf", metadata !13, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!455 = metadata !{i32 786445, metadata !449, metadata !"offset", metadata !13, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!456 = metadata !{i32 786445, metadata !449, metadata !"post", metadata !13, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !24} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!457 = metadata !{metadata !458}
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !470, metadata !471, metadata !473, metadata !474, metadata !475, metadata !476, metadata !511, metadata !610, metadata !1645, metadata !1668}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16777309, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 93]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33554525, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 93]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50331741, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 93]
!462 = metadata !{i32 786688, metadata !463, metadata !"mcf", metadata !6, i32 95, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcf] [line 95]
!463 = metadata !{i32 786443, metadata !5, i32 94, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_map_conf_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_http_map_conf_t", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_http_map_conf_t] [line 10, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 8, i64 64, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 8, size 64, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469}
!468 = metadata !{i32 786445, metadata !466, metadata !"hash_max_size", metadata !6, i32 9, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash_max_size] [line 9, size 32, align 32, offset 0] [from ngx_uint_t]
!469 = metadata !{i32 786445, metadata !466, metadata !"hash_bucket_size", metadata !6, i32 10, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [hash_bucket_size] [line 10, size 32, align 32, offset 32] [from ngx_uint_t]
!470 = metadata !{i32 786688, metadata !463, metadata !"rv", metadata !6, i32 96, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rv] [line 96]
!471 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 97, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 97]
!472 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!473 = metadata !{i32 786688, metadata !463, metadata !"name", metadata !6, i32 98, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 98]
!474 = metadata !{i32 786688, metadata !463, metadata !"save", metadata !6, i32 99, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save] [line 99]
!475 = metadata !{i32 786688, metadata !463, metadata !"pool", metadata !6, i32 100, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pool] [line 100]
!476 = metadata !{i32 786688, metadata !463, metadata !"hash", metadata !6, i32 101, metadata !477, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 101]
!477 = metadata !{i32 786454, null, metadata !"ngx_hash_init_t", metadata !6, i32 62, i64 0, i64 0, i64 0, i32 0, metadata !478} ; [ DW_TAG_typedef ] [ngx_hash_init_t] [line 62, size 0, align 0, offset 0] [from ]
!478 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 52, i64 224, i64 32, i32 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 52, size 224, align 32, offset 0] [from ]
!479 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!480 = metadata !{metadata !481, metadata !501, metadata !506, metadata !507, metadata !508, metadata !509, metadata !510}
!481 = metadata !{i32 786445, metadata !478, metadata !"hash", metadata !479, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !482} ; [ DW_TAG_member ] [hash] [line 53, size 32, align 32, offset 0] [from ]
!482 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !483} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_t]
!483 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !479, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !484} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!484 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !485, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!485 = metadata !{metadata !486, metadata !500}
!486 = metadata !{i32 786445, metadata !484, metadata !"buckets", metadata !479, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !487} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!487 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!488 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!489 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !479, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !490} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!490 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !491, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!491 = metadata !{metadata !492, metadata !493, metadata !496}
!492 = metadata !{i32 786445, metadata !490, metadata !"value", metadata !479, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!493 = metadata !{i32 786445, metadata !490, metadata !"len", metadata !479, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !494} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!494 = metadata !{i32 786454, null, metadata !"u_short", metadata !479, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!495 = metadata !{i32 786454, null, metadata !"__u_short", metadata !479, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!496 = metadata !{i32 786445, metadata !490, metadata !"name", metadata !479, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !497} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!497 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !498, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!498 = metadata !{metadata !499}
!499 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!500 = metadata !{i32 786445, metadata !484, metadata !"size", metadata !479, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!501 = metadata !{i32 786445, metadata !478, metadata !"key", metadata !479, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !502} ; [ DW_TAG_member ] [key] [line 54, size 32, align 32, offset 32] [from ngx_hash_key_pt]
!502 = metadata !{i32 786454, null, metadata !"ngx_hash_key_pt", metadata !479, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [ngx_hash_key_pt] [line 42, size 0, align 0, offset 0] [from ]
!503 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !504} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!504 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !505, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!505 = metadata !{metadata !26, metadata !44, metadata !30}
!506 = metadata !{i32 786445, metadata !478, metadata !"max_size", metadata !479, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [max_size] [line 56, size 32, align 32, offset 64] [from ngx_uint_t]
!507 = metadata !{i32 786445, metadata !478, metadata !"bucket_size", metadata !479, i32 57, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [bucket_size] [line 57, size 32, align 32, offset 96] [from ngx_uint_t]
!508 = metadata !{i32 786445, metadata !478, metadata !"name", metadata !479, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 59, size 32, align 32, offset 128] [from ]
!509 = metadata !{i32 786445, metadata !478, metadata !"pool", metadata !479, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 60, size 32, align 32, offset 160] [from ]
!510 = metadata !{i32 786445, metadata !478, metadata !"temp_pool", metadata !479, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 61, size 32, align 32, offset 192] [from ]
!511 = metadata !{i32 786688, metadata !463, metadata !"map", metadata !6, i32 102, metadata !512, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 102]
!512 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_map_ctx_t]
!513 = metadata !{i32 786454, null, metadata !"ngx_http_map_ctx_t", metadata !6, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !514} ; [ DW_TAG_typedef ] [ngx_http_map_ctx_t] [line 27, size 0, align 0, offset 0] [from ]
!514 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 22, i64 416, i64 32, i32 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 22, size 416, align 32, offset 0] [from ]
!515 = metadata !{metadata !516, metadata !587, metadata !597, metadata !609}
!516 = metadata !{i32 786445, metadata !514, metadata !"map", metadata !6, i32 23, i64 192, i64 32, i64 0, i32 0, metadata !517} ; [ DW_TAG_member ] [map] [line 23, size 192, align 32, offset 0] [from ngx_http_map_t]
!517 = metadata !{i32 786454, null, metadata !"ngx_http_map_t", metadata !6, i32 100, i64 0, i64 0, i64 0, i32 0, metadata !518} ; [ DW_TAG_typedef ] [ngx_http_map_t] [line 100, size 0, align 0, offset 0] [from ]
!518 = metadata !{i32 786451, null, metadata !"", metadata !519, i32 94, i64 192, i64 32, i32 0, i32 0, null, metadata !520, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 94, size 192, align 32, offset 0] [from ]
!519 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!520 = metadata !{metadata !521, metadata !534, metadata !586}
!521 = metadata !{i32 786445, metadata !518, metadata !"hash", metadata !519, i32 95, i64 128, i64 32, i64 0, i32 0, metadata !522} ; [ DW_TAG_member ] [hash] [line 95, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!522 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !519, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !523} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!523 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !524, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!524 = metadata !{metadata !525, metadata !526, metadata !533}
!525 = metadata !{i32 786445, metadata !523, metadata !"hash", metadata !479, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !483} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!526 = metadata !{i32 786445, metadata !523, metadata !"wc_head", metadata !479, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !527} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!527 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !528} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!528 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !479, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !529} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!529 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !530, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!530 = metadata !{metadata !531, metadata !532}
!531 = metadata !{i32 786445, metadata !529, metadata !"hash", metadata !479, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !483} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!532 = metadata !{i32 786445, metadata !529, metadata !"value", metadata !479, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!533 = metadata !{i32 786445, metadata !523, metadata !"wc_tail", metadata !479, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !527} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!534 = metadata !{i32 786445, metadata !518, metadata !"regex", metadata !519, i32 97, i64 32, i64 32, i64 128, i32 0, metadata !535} ; [ DW_TAG_member ] [regex] [line 97, size 32, align 32, offset 128] [from ]
!535 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !536} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_map_regex_t]
!536 = metadata !{i32 786454, null, metadata !"ngx_http_map_regex_t", metadata !519, i32 83, i64 0, i64 0, i64 0, i32 0, metadata !537} ; [ DW_TAG_typedef ] [ngx_http_map_regex_t] [line 83, size 0, align 0, offset 0] [from ]
!537 = metadata !{i32 786451, null, metadata !"", metadata !519, i32 80, i64 64, i64 32, i32 0, i32 0, null, metadata !538, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 64, align 32, offset 0] [from ]
!538 = metadata !{metadata !539, metadata !585}
!539 = metadata !{i32 786445, metadata !537, metadata !"regex", metadata !519, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !540} ; [ DW_TAG_member ] [regex] [line 81, size 32, align 32, offset 0] [from ]
!540 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !541} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!541 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !519, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!542 = metadata !{i32 786451, null, metadata !"", metadata !519, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!543 = metadata !{metadata !544, metadata !572, metadata !573, metadata !583, metadata !584}
!544 = metadata !{i32 786445, metadata !542, metadata !"regex", metadata !519, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!545 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !546} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!546 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !519, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!547 = metadata !{i32 786451, null, metadata !"", metadata !548, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !549, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!548 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!549 = metadata !{metadata !550, metadata !555}
!550 = metadata !{i32 786445, metadata !547, metadata !"code", metadata !548, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !551} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!551 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !552} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!552 = metadata !{i32 786454, null, metadata !"pcre", metadata !548, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !553} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!553 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !554, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!554 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!555 = metadata !{i32 786445, metadata !547, metadata !"extra", metadata !548, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !556} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!556 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !557} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!557 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !548, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !558} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!558 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !554, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!559 = metadata !{metadata !560, metadata !561, metadata !562, metadata !563, metadata !564, metadata !567, metadata !568, metadata !571}
!560 = metadata !{i32 786445, metadata !558, metadata !"flags", metadata !554, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!561 = metadata !{i32 786445, metadata !558, metadata !"study_data", metadata !554, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!562 = metadata !{i32 786445, metadata !558, metadata !"match_limit", metadata !554, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!563 = metadata !{i32 786445, metadata !558, metadata !"callout_data", metadata !554, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!564 = metadata !{i32 786445, metadata !558, metadata !"tables", metadata !554, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !565} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!565 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !566} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!566 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!567 = metadata !{i32 786445, metadata !558, metadata !"match_limit_recursion", metadata !554, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!568 = metadata !{i32 786445, metadata !558, metadata !"mark", metadata !554, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !569} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!569 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !570} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!570 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!571 = metadata !{i32 786445, metadata !558, metadata !"executable_jit", metadata !554, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!572 = metadata !{i32 786445, metadata !542, metadata !"ncaptures", metadata !519, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!573 = metadata !{i32 786445, metadata !542, metadata !"variables", metadata !519, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !574} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!574 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !575} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!575 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !519, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !576} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!576 = metadata !{i32 786451, null, metadata !"", metadata !519, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !577, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!577 = metadata !{metadata !578, metadata !579}
!578 = metadata !{i32 786445, metadata !576, metadata !"capture", metadata !519, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!579 = metadata !{i32 786445, metadata !576, metadata !"index", metadata !519, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !580} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!580 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !581} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!581 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !582} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!582 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!583 = metadata !{i32 786445, metadata !542, metadata !"nvariables", metadata !519, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!584 = metadata !{i32 786445, metadata !542, metadata !"name", metadata !519, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!585 = metadata !{i32 786445, metadata !537, metadata !"value", metadata !519, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 82, size 32, align 32, offset 32] [from ]
!586 = metadata !{i32 786445, metadata !518, metadata !"nregex", metadata !519, i32 98, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 98, size 32, align 32, offset 160] [from ngx_uint_t]
!587 = metadata !{i32 786445, metadata !514, metadata !"value", metadata !6, i32 24, i64 160, i64 32, i64 192, i32 0, metadata !588} ; [ DW_TAG_member ] [value] [line 24, size 160, align 32, offset 192] [from ngx_http_complex_value_t]
!588 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !6, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !589} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!589 = metadata !{i32 786451, null, metadata !"", metadata !590, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !591, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!590 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!591 = metadata !{metadata !592, metadata !593, metadata !595, metadata !596}
!592 = metadata !{i32 786445, metadata !589, metadata !"value", metadata !590, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!593 = metadata !{i32 786445, metadata !589, metadata !"flushes", metadata !590, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !594} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!594 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!595 = metadata !{i32 786445, metadata !589, metadata !"lengths", metadata !590, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!596 = metadata !{i32 786445, metadata !589, metadata !"values", metadata !590, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!597 = metadata !{i32 786445, metadata !514, metadata !"default_value", metadata !6, i32 25, i64 32, i64 32, i64 352, i32 0, metadata !598} ; [ DW_TAG_member ] [default_value] [line 25, size 32, align 32, offset 352] [from ]
!598 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !599} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!599 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !600} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!600 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !6, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !601} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!601 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!602 = metadata !{metadata !603, metadata !604, metadata !605, metadata !606, metadata !607, metadata !608}
!603 = metadata !{i32 786445, metadata !601, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!604 = metadata !{i32 786445, metadata !601, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!605 = metadata !{i32 786445, metadata !601, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!606 = metadata !{i32 786445, metadata !601, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!607 = metadata !{i32 786445, metadata !601, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!608 = metadata !{i32 786445, metadata !601, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!609 = metadata !{i32 786445, metadata !514, metadata !"hostnames", metadata !6, i32 27, i64 32, i64 32, i64 384, i32 0, metadata !26} ; [ DW_TAG_member ] [hostnames] [line 27, size 32, align 32, offset 384] [from ngx_uint_t]
!610 = metadata !{i32 786688, metadata !463, metadata !"var", metadata !6, i32 103, metadata !611, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 103]
!611 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !612} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_t]
!612 = metadata !{i32 786454, null, metadata !"ngx_http_variable_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !613} ; [ DW_TAG_typedef ] [ngx_http_variable_t] [line 21, size 0, align 0, offset 0] [from ngx_http_variable_s]
!613 = metadata !{i32 786451, null, metadata !"ngx_http_variable_s", metadata !519, i32 35, i64 224, i64 32, i32 0, i32 0, null, metadata !614, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_variable_s] [line 35, size 224, align 32, offset 0] [from ]
!614 = metadata !{metadata !615, metadata !616, metadata !1637, metadata !1642, metadata !1643, metadata !1644}
!615 = metadata !{i32 786445, metadata !613, metadata !"name", metadata !519, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!616 = metadata !{i32 786445, metadata !613, metadata !"set_handler", metadata !519, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !617} ; [ DW_TAG_member ] [set_handler] [line 37, size 32, align 32, offset 64] [from ngx_http_set_variable_pt]
!617 = metadata !{i32 786454, null, metadata !"ngx_http_set_variable_pt", metadata !519, i32 23, i64 0, i64 0, i64 0, i32 0, metadata !618} ; [ DW_TAG_typedef ] [ngx_http_set_variable_pt] [line 23, size 0, align 0, offset 0] [from ]
!618 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !619} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!619 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !620, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!620 = metadata !{null, metadata !621, metadata !598, metadata !27}
!621 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !622} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!622 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !519, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !623} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!623 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !624, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!624 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!625 = metadata !{metadata !626, metadata !628, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !640, metadata !641, metadata !829, metadata !1235, metadata !1236, metadata !1237, metadata !1238, metadata !1274, metadata !1303, metadata !1315, metadata !1316, metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1321, metadata !1322, metadata !1323, metadata !1324, metadata !1325, metadata !1326, metadata !1327, metadata !1328, metadata !1329, metadata !1330, metadata !1338, metadata !1349, metadata !1356, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1542, metadata !1547, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572, metadata !1573, metadata !1574, metadata !1575, metadata !1576, metadata !1577, metadata !1578, metadata !1579, metadata !1580, metadata !1581, metadata !1582, metadata !1583, metadata !1584, metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1589, metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597, metadata !1598, metadata !1599, metadata !1600, metadata !1601, metadata !1602, metadata !1603, metadata !1604, metadata !1605, metadata !1606, metadata !1607, metadata !1608, metadata !1609, metadata !1610, metadata !1611, metadata !1612, metadata !1613, metadata !1614, metadata !1618, metadata !1619, metadata !1620, metadata !1621, metadata !1622, metadata !1623, metadata !1624, metadata !1625, metadata !1626, metadata !1627, metadata !1628, metadata !1629, metadata !1630, metadata !1631, metadata !1632, metadata !1633, metadata !1634, metadata !1635, metadata !1636}
!626 = metadata !{i32 786445, metadata !623, metadata !"signature", metadata !624, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !627} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!627 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !624, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!628 = metadata !{i32 786445, metadata !623, metadata !"connection", metadata !624, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!629 = metadata !{i32 786445, metadata !623, metadata !"ctx", metadata !624, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!630 = metadata !{i32 786445, metadata !623, metadata !"main_conf", metadata !624, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!631 = metadata !{i32 786445, metadata !623, metadata !"srv_conf", metadata !624, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!632 = metadata !{i32 786445, metadata !623, metadata !"loc_conf", metadata !624, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!633 = metadata !{i32 786445, metadata !623, metadata !"read_event_handler", metadata !624, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !634} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!634 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !624, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !635} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!635 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !636} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!636 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !637, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!637 = metadata !{null, metadata !638}
!638 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !639} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!639 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !624, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !623} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!640 = metadata !{i32 786445, metadata !623, metadata !"write_event_handler", metadata !624, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !634} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!641 = metadata !{i32 786445, metadata !623, metadata !"cache", metadata !624, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !642} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!642 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !643} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!643 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !624, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !644} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!644 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !645, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !646, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!645 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!646 = metadata !{metadata !647, metadata !648, metadata !649, metadata !650, metadata !654, metadata !657, metadata !659, metadata !660, metadata !661, metadata !662, metadata !663, metadata !664, metadata !665, metadata !666, metadata !667, metadata !668, metadata !669, metadata !797, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !828}
!647 = metadata !{i32 786445, metadata !644, metadata !"file", metadata !645, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!648 = metadata !{i32 786445, metadata !644, metadata !"keys", metadata !645, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!649 = metadata !{i32 786445, metadata !644, metadata !"crc32", metadata !645, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !627} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!650 = metadata !{i32 786445, metadata !644, metadata !"key", metadata !645, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !651} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!651 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !652, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!652 = metadata !{metadata !653}
!653 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!654 = metadata !{i32 786445, metadata !644, metadata !"uniq", metadata !645, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !655} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!655 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !645, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !656} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!656 = metadata !{i32 786454, null, metadata !"ino_t", metadata !645, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!657 = metadata !{i32 786445, metadata !644, metadata !"valid_sec", metadata !645, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !658} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!658 = metadata !{i32 786454, null, metadata !"time_t", metadata !645, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!659 = metadata !{i32 786445, metadata !644, metadata !"last_modified", metadata !645, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !658} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!660 = metadata !{i32 786445, metadata !644, metadata !"date", metadata !645, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !658} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!661 = metadata !{i32 786445, metadata !644, metadata !"header_start", metadata !645, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!662 = metadata !{i32 786445, metadata !644, metadata !"body_start", metadata !645, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!663 = metadata !{i32 786445, metadata !644, metadata !"length", metadata !645, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!664 = metadata !{i32 786445, metadata !644, metadata !"fs_size", metadata !645, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!665 = metadata !{i32 786445, metadata !644, metadata !"min_uses", metadata !645, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!666 = metadata !{i32 786445, metadata !644, metadata !"error", metadata !645, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!667 = metadata !{i32 786445, metadata !644, metadata !"valid_msec", metadata !645, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!668 = metadata !{i32 786445, metadata !644, metadata !"buf", metadata !645, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!669 = metadata !{i32 786445, metadata !644, metadata !"file_cache", metadata !645, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !670} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!670 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !671} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!671 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !645, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !672} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!672 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !645, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !673, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!673 = metadata !{metadata !674, metadata !697, metadata !744, metadata !765, metadata !766, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773}
!674 = metadata !{i32 786445, metadata !672, metadata !"sh", metadata !645, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !675} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!675 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !676} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!676 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !645, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !677} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!677 = metadata !{i32 786451, null, metadata !"", metadata !645, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !678, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!678 = metadata !{metadata !679, metadata !690, metadata !691, metadata !692, metadata !695, metadata !696}
!679 = metadata !{i32 786445, metadata !677, metadata !"rbtree", metadata !645, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !680} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!680 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !645, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !681} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!681 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !682, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!682 = metadata !{metadata !683, metadata !684, metadata !685}
!683 = metadata !{i32 786445, metadata !681, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!684 = metadata !{i32 786445, metadata !681, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!685 = metadata !{i32 786445, metadata !681, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !686} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!686 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !687} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!687 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !688} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!688 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !689, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!689 = metadata !{null, metadata !266, metadata !266, metadata !266}
!690 = metadata !{i32 786445, metadata !677, metadata !"sentinel", metadata !645, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!691 = metadata !{i32 786445, metadata !677, metadata !"queue", metadata !645, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!692 = metadata !{i32 786445, metadata !677, metadata !"cold", metadata !645, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !693} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!693 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !645, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !694} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!694 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!695 = metadata !{i32 786445, metadata !677, metadata !"loading", metadata !645, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !693} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!696 = metadata !{i32 786445, metadata !677, metadata !"size", metadata !645, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!697 = metadata !{i32 786445, metadata !672, metadata !"shpool", metadata !645, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !698} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!698 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !699} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!699 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !645, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !700} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!700 = metadata !{i32 786451, null, metadata !"", metadata !701, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !702, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!701 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!702 = metadata !{metadata !703, metadata !710, metadata !711, metadata !712, metadata !720, metadata !721, metadata !722, metadata !723, metadata !740, metadata !741, metadata !742, metadata !743}
!703 = metadata !{i32 786445, metadata !700, metadata !"lock", metadata !701, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !704} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!704 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !701, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !705} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!705 = metadata !{i32 786451, null, metadata !"", metadata !706, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !707, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!706 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!707 = metadata !{metadata !708, metadata !709}
!708 = metadata !{i32 786445, metadata !705, metadata !"lock", metadata !706, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !693} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!709 = metadata !{i32 786445, metadata !705, metadata !"wait", metadata !706, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !693} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!710 = metadata !{i32 786445, metadata !700, metadata !"min_size", metadata !701, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!711 = metadata !{i32 786445, metadata !700, metadata !"min_shift", metadata !701, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!712 = metadata !{i32 786445, metadata !700, metadata !"pages", metadata !701, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !713} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!713 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !714} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!714 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !701, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !715} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!715 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !701, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !716, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!716 = metadata !{metadata !717, metadata !718, metadata !719}
!717 = metadata !{i32 786445, metadata !715, metadata !"slab", metadata !701, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!718 = metadata !{i32 786445, metadata !715, metadata !"next", metadata !701, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !713} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!719 = metadata !{i32 786445, metadata !715, metadata !"prev", metadata !701, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!720 = metadata !{i32 786445, metadata !700, metadata !"free", metadata !701, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !714} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!721 = metadata !{i32 786445, metadata !700, metadata !"start", metadata !701, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!722 = metadata !{i32 786445, metadata !700, metadata !"end", metadata !701, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!723 = metadata !{i32 786445, metadata !700, metadata !"mutex", metadata !701, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !724} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!724 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !701, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !725} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!725 = metadata !{i32 786451, null, metadata !"", metadata !706, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !726, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!726 = metadata !{metadata !727, metadata !729, metadata !730, metadata !731, metadata !739}
!727 = metadata !{i32 786445, metadata !725, metadata !"lock", metadata !706, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !728} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!728 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !693} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!729 = metadata !{i32 786445, metadata !725, metadata !"wait", metadata !706, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !728} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!730 = metadata !{i32 786445, metadata !725, metadata !"semaphore", metadata !706, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!731 = metadata !{i32 786445, metadata !725, metadata !"sem", metadata !706, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !732} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!732 = metadata !{i32 786454, null, metadata !"sem_t", metadata !706, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !733} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!733 = metadata !{i32 786455, null, metadata !"", metadata !734, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !735, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!734 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!735 = metadata !{metadata !736, metadata !738}
!736 = metadata !{i32 786445, metadata !733, metadata !"__size", metadata !734, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !737} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!737 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !652, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!738 = metadata !{i32 786445, metadata !733, metadata !"__align", metadata !734, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!739 = metadata !{i32 786445, metadata !725, metadata !"spin", metadata !706, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!740 = metadata !{i32 786445, metadata !700, metadata !"log_ctx", metadata !701, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!741 = metadata !{i32 786445, metadata !700, metadata !"zero", metadata !701, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!742 = metadata !{i32 786445, metadata !700, metadata !"data", metadata !701, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!743 = metadata !{i32 786445, metadata !700, metadata !"addr", metadata !701, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!744 = metadata !{i32 786445, metadata !672, metadata !"path", metadata !645, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !745} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!745 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !746} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!746 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !645, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !747} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!747 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !748, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!748 = metadata !{metadata !749, metadata !750, metadata !751, metadata !755, metadata !760, metadata !762, metadata !763, metadata !764}
!749 = metadata !{i32 786445, metadata !747, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!750 = metadata !{i32 786445, metadata !747, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!751 = metadata !{i32 786445, metadata !747, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !752} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!752 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !753, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!753 = metadata !{metadata !754}
!754 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!755 = metadata !{i32 786445, metadata !747, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !756} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!756 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !757} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!757 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !758} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!758 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!759 = metadata !{metadata !658, metadata !24}
!760 = metadata !{i32 786445, metadata !747, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !761} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!761 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!762 = metadata !{i32 786445, metadata !747, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!763 = metadata !{i32 786445, metadata !747, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!764 = metadata !{i32 786445, metadata !747, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!765 = metadata !{i32 786445, metadata !672, metadata !"max_size", metadata !645, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!766 = metadata !{i32 786445, metadata !672, metadata !"bsize", metadata !645, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!767 = metadata !{i32 786445, metadata !672, metadata !"inactive", metadata !645, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !658} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!768 = metadata !{i32 786445, metadata !672, metadata !"files", metadata !645, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!769 = metadata !{i32 786445, metadata !672, metadata !"loader_files", metadata !645, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!770 = metadata !{i32 786445, metadata !672, metadata !"last", metadata !645, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!771 = metadata !{i32 786445, metadata !672, metadata !"loader_sleep", metadata !645, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!772 = metadata !{i32 786445, metadata !672, metadata !"loader_threshold", metadata !645, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!773 = metadata !{i32 786445, metadata !672, metadata !"shm_zone", metadata !645, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !774} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!774 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !775} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!775 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !645, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !776} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!776 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !777, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!777 = metadata !{metadata !778, metadata !779, metadata !789, metadata !796}
!778 = metadata !{i32 786445, metadata !776, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!779 = metadata !{i32 786445, metadata !776, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !780} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!780 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !781} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!781 = metadata !{i32 786451, null, metadata !"", metadata !782, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !783, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!782 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!783 = metadata !{metadata !784, metadata !785, metadata !786, metadata !787, metadata !788}
!784 = metadata !{i32 786445, metadata !781, metadata !"addr", metadata !782, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!785 = metadata !{i32 786445, metadata !781, metadata !"size", metadata !782, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!786 = metadata !{i32 786445, metadata !781, metadata !"name", metadata !782, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!787 = metadata !{i32 786445, metadata !781, metadata !"log", metadata !782, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!788 = metadata !{i32 786445, metadata !781, metadata !"exists", metadata !782, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!789 = metadata !{i32 786445, metadata !776, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !790} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!790 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !791} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!791 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !792} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!792 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !793, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!793 = metadata !{metadata !580, metadata !794, metadata !24}
!794 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !795} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!795 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !776} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!796 = metadata !{i32 786445, metadata !776, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!797 = metadata !{i32 786445, metadata !644, metadata !"node", metadata !645, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !798} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!798 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !799} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!799 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !645, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !800} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!800 = metadata !{i32 786451, null, metadata !"", metadata !645, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !801, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!801 = metadata !{metadata !802, metadata !803, metadata !804, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !815, metadata !816, metadata !817, metadata !818, metadata !819}
!802 = metadata !{i32 786445, metadata !800, metadata !"node", metadata !645, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!803 = metadata !{i32 786445, metadata !800, metadata !"queue", metadata !645, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!804 = metadata !{i32 786445, metadata !800, metadata !"key", metadata !645, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !805} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!805 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !806, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!806 = metadata !{metadata !807}
!807 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!808 = metadata !{i32 786445, metadata !800, metadata !"count", metadata !645, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!809 = metadata !{i32 786445, metadata !800, metadata !"uses", metadata !645, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!810 = metadata !{i32 786445, metadata !800, metadata !"valid_msec", metadata !645, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!811 = metadata !{i32 786445, metadata !800, metadata !"error", metadata !645, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!812 = metadata !{i32 786445, metadata !800, metadata !"exists", metadata !645, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!813 = metadata !{i32 786445, metadata !800, metadata !"updating", metadata !645, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!814 = metadata !{i32 786445, metadata !800, metadata !"deleting", metadata !645, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!815 = metadata !{i32 786445, metadata !800, metadata !"uniq", metadata !645, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !655} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!816 = metadata !{i32 786445, metadata !800, metadata !"expire", metadata !645, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !658} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!817 = metadata !{i32 786445, metadata !800, metadata !"valid_sec", metadata !645, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !658} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!818 = metadata !{i32 786445, metadata !800, metadata !"body_start", metadata !645, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!819 = metadata !{i32 786445, metadata !800, metadata !"fs_size", metadata !645, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!820 = metadata !{i32 786445, metadata !644, metadata !"lock_timeout", metadata !645, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!821 = metadata !{i32 786445, metadata !644, metadata !"wait_time", metadata !645, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!822 = metadata !{i32 786445, metadata !644, metadata !"wait_event", metadata !645, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!823 = metadata !{i32 786445, metadata !644, metadata !"lock", metadata !645, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!824 = metadata !{i32 786445, metadata !644, metadata !"waiting", metadata !645, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!825 = metadata !{i32 786445, metadata !644, metadata !"updated", metadata !645, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!826 = metadata !{i32 786445, metadata !644, metadata !"updating", metadata !645, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!827 = metadata !{i32 786445, metadata !644, metadata !"exists", metadata !645, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!828 = metadata !{i32 786445, metadata !644, metadata !"temp_file", metadata !645, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!829 = metadata !{i32 786445, metadata !623, metadata !"upstream", metadata !624, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !830} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!830 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !831} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!831 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !624, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !832} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!832 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !833, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !834, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!833 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!834 = metadata !{metadata !835, metadata !842, metadata !843, metadata !879, metadata !955, metadata !956, metadata !977, metadata !986, metadata !1064, metadata !1100, metadata !1173, metadata !1174, metadata !1175, metadata !1176, metadata !1177, metadata !1178, metadata !1182, metadata !1186, metadata !1187, metadata !1191, metadata !1192, metadata !1193, metadata !1194, metadata !1195, metadata !1199, metadata !1203, metadata !1207, metadata !1208, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1226, metadata !1227, metadata !1228, metadata !1229, metadata !1230, metadata !1231, metadata !1232, metadata !1233, metadata !1234}
!835 = metadata !{i32 786445, metadata !832, metadata !"read_event_handler", metadata !833, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !836} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!836 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !833, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !837} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!837 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !838} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!838 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !839, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!839 = metadata !{null, metadata !638, metadata !840}
!840 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !841} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!841 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !833, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !832} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!842 = metadata !{i32 786445, metadata !832, metadata !"write_event_handler", metadata !833, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !836} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!843 = metadata !{i32 786445, metadata !832, metadata !"peer", metadata !833, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !844} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!844 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !833, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !845} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!845 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !846, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !847, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!846 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!847 = metadata !{metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !853, metadata !860, metadata !865, metadata !866, metadata !875, metadata !876, metadata !877, metadata !878}
!848 = metadata !{i32 786445, metadata !845, metadata !"connection", metadata !846, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!849 = metadata !{i32 786445, metadata !845, metadata !"sockaddr", metadata !846, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!850 = metadata !{i32 786445, metadata !845, metadata !"socklen", metadata !846, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!851 = metadata !{i32 786445, metadata !845, metadata !"name", metadata !846, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!852 = metadata !{i32 786445, metadata !845, metadata !"tries", metadata !846, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!853 = metadata !{i32 786445, metadata !845, metadata !"get", metadata !846, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !854} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!854 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !846, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !855} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!855 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !856} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!856 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !857, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!857 = metadata !{metadata !580, metadata !858, metadata !24}
!858 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !859} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!859 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !846, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !845} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!860 = metadata !{i32 786445, metadata !845, metadata !"free", metadata !846, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !861} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!861 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !846, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !862} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!862 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !863} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!863 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !864, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!864 = metadata !{null, metadata !858, metadata !24, metadata !26}
!865 = metadata !{i32 786445, metadata !845, metadata !"data", metadata !846, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!866 = metadata !{i32 786445, metadata !845, metadata !"local", metadata !846, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !867} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!867 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !868} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!868 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !846, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !869} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!869 = metadata !{i32 786451, null, metadata !"", metadata !870, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !871, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!870 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!871 = metadata !{metadata !872, metadata !873, metadata !874}
!872 = metadata !{i32 786445, metadata !869, metadata !"sockaddr", metadata !870, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!873 = metadata !{i32 786445, metadata !869, metadata !"socklen", metadata !870, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!874 = metadata !{i32 786445, metadata !869, metadata !"name", metadata !870, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!875 = metadata !{i32 786445, metadata !845, metadata !"rcvbuf", metadata !846, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!876 = metadata !{i32 786445, metadata !845, metadata !"log", metadata !846, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!877 = metadata !{i32 786445, metadata !845, metadata !"cached", metadata !846, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!878 = metadata !{i32 786445, metadata !845, metadata !"log_error", metadata !846, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!879 = metadata !{i32 786445, metadata !832, metadata !"pipe", metadata !833, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !880} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!880 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !881} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!881 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !833, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !882} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!882 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !883, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !884, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!883 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!884 = metadata !{metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !891, metadata !892, metadata !893, metadata !894, metadata !901, metadata !902, metadata !907, metadata !908, metadata !909, metadata !910, metadata !911, metadata !912, metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !926, metadata !927, metadata !928, metadata !929, metadata !930, metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !954}
!885 = metadata !{i32 786445, metadata !882, metadata !"upstream", metadata !883, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!886 = metadata !{i32 786445, metadata !882, metadata !"downstream", metadata !883, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!887 = metadata !{i32 786445, metadata !882, metadata !"free_raw_bufs", metadata !883, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!888 = metadata !{i32 786445, metadata !882, metadata !"in", metadata !883, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!889 = metadata !{i32 786445, metadata !882, metadata !"last_in", metadata !883, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !890} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!890 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!891 = metadata !{i32 786445, metadata !882, metadata !"out", metadata !883, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!892 = metadata !{i32 786445, metadata !882, metadata !"free", metadata !883, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!893 = metadata !{i32 786445, metadata !882, metadata !"busy", metadata !883, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!894 = metadata !{i32 786445, metadata !882, metadata !"input_filter", metadata !883, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !895} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!895 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !883, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !896} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!896 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !897} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!897 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !898, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!898 = metadata !{metadata !580, metadata !899, metadata !62}
!899 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !900} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!900 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !883, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !882} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!901 = metadata !{i32 786445, metadata !882, metadata !"input_ctx", metadata !883, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!902 = metadata !{i32 786445, metadata !882, metadata !"output_filter", metadata !883, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !903} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!903 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !883, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !904} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!904 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !905} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!905 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !906, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!906 = metadata !{metadata !580, metadata !24, metadata !56}
!907 = metadata !{i32 786445, metadata !882, metadata !"output_ctx", metadata !883, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!908 = metadata !{i32 786445, metadata !882, metadata !"read", metadata !883, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!909 = metadata !{i32 786445, metadata !882, metadata !"cacheable", metadata !883, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!910 = metadata !{i32 786445, metadata !882, metadata !"single_buf", metadata !883, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!911 = metadata !{i32 786445, metadata !882, metadata !"free_bufs", metadata !883, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!912 = metadata !{i32 786445, metadata !882, metadata !"upstream_done", metadata !883, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!913 = metadata !{i32 786445, metadata !882, metadata !"upstream_error", metadata !883, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!914 = metadata !{i32 786445, metadata !882, metadata !"upstream_eof", metadata !883, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!915 = metadata !{i32 786445, metadata !882, metadata !"upstream_blocked", metadata !883, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!916 = metadata !{i32 786445, metadata !882, metadata !"downstream_done", metadata !883, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!917 = metadata !{i32 786445, metadata !882, metadata !"downstream_error", metadata !883, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!918 = metadata !{i32 786445, metadata !882, metadata !"cyclic_temp_file", metadata !883, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!919 = metadata !{i32 786445, metadata !882, metadata !"allocated", metadata !883, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !580} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!920 = metadata !{i32 786445, metadata !882, metadata !"bufs", metadata !883, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !921} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!921 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !883, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !922} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!922 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !923, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!923 = metadata !{metadata !924, metadata !925}
!924 = metadata !{i32 786445, metadata !922, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !580} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!925 = metadata !{i32 786445, metadata !922, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!926 = metadata !{i32 786445, metadata !882, metadata !"tag", metadata !883, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!927 = metadata !{i32 786445, metadata !882, metadata !"busy_size", metadata !883, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!928 = metadata !{i32 786445, metadata !882, metadata !"read_length", metadata !883, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!929 = metadata !{i32 786445, metadata !882, metadata !"length", metadata !883, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!930 = metadata !{i32 786445, metadata !882, metadata !"max_temp_file_size", metadata !883, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!931 = metadata !{i32 786445, metadata !882, metadata !"temp_file_write_size", metadata !883, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!932 = metadata !{i32 786445, metadata !882, metadata !"read_timeout", metadata !883, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!933 = metadata !{i32 786445, metadata !882, metadata !"send_timeout", metadata !883, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!934 = metadata !{i32 786445, metadata !882, metadata !"send_lowat", metadata !883, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!935 = metadata !{i32 786445, metadata !882, metadata !"pool", metadata !883, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!936 = metadata !{i32 786445, metadata !882, metadata !"log", metadata !883, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!937 = metadata !{i32 786445, metadata !882, metadata !"preread_bufs", metadata !883, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!938 = metadata !{i32 786445, metadata !882, metadata !"preread_size", metadata !883, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!939 = metadata !{i32 786445, metadata !882, metadata !"buf_to_file", metadata !883, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!940 = metadata !{i32 786445, metadata !882, metadata !"temp_file", metadata !883, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !941} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!941 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !942} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!942 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !883, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !943} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!943 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !944, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!944 = metadata !{metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953}
!945 = metadata !{i32 786445, metadata !943, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!946 = metadata !{i32 786445, metadata !943, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!947 = metadata !{i32 786445, metadata !943, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !745} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!948 = metadata !{i32 786445, metadata !943, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!949 = metadata !{i32 786445, metadata !943, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!950 = metadata !{i32 786445, metadata !943, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!951 = metadata !{i32 786445, metadata !943, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!952 = metadata !{i32 786445, metadata !943, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!953 = metadata !{i32 786445, metadata !943, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!954 = metadata !{i32 786445, metadata !882, metadata !"num", metadata !883, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!955 = metadata !{i32 786445, metadata !832, metadata !"request_bufs", metadata !833, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!956 = metadata !{i32 786445, metadata !832, metadata !"output", metadata !833, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !957} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!957 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !833, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !958} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!958 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !959, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!959 = metadata !{metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974, metadata !976}
!960 = metadata !{i32 786445, metadata !958, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!961 = metadata !{i32 786445, metadata !958, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!962 = metadata !{i32 786445, metadata !958, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!963 = metadata !{i32 786445, metadata !958, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!964 = metadata !{i32 786445, metadata !958, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!965 = metadata !{i32 786445, metadata !958, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!966 = metadata !{i32 786445, metadata !958, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!967 = metadata !{i32 786445, metadata !958, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!968 = metadata !{i32 786445, metadata !958, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!969 = metadata !{i32 786445, metadata !958, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!970 = metadata !{i32 786445, metadata !958, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!971 = metadata !{i32 786445, metadata !958, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !580} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!972 = metadata !{i32 786445, metadata !958, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !921} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!973 = metadata !{i32 786445, metadata !958, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!974 = metadata !{i32 786445, metadata !958, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !975} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!975 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !904} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!976 = metadata !{i32 786445, metadata !958, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!977 = metadata !{i32 786445, metadata !832, metadata !"writer", metadata !833, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !978} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!978 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !833, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !979} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!979 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !980, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!980 = metadata !{metadata !981, metadata !982, metadata !983, metadata !984, metadata !985}
!981 = metadata !{i32 786445, metadata !979, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!982 = metadata !{i32 786445, metadata !979, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !890} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!983 = metadata !{i32 786445, metadata !979, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!984 = metadata !{i32 786445, metadata !979, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!985 = metadata !{i32 786445, metadata !979, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!986 = metadata !{i32 786445, metadata !832, metadata !"conf", metadata !833, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !987} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!987 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !988} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!988 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !833, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !989} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!989 = metadata !{i32 786451, null, metadata !"", metadata !833, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !990, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!990 = metadata !{metadata !991, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034, metadata !1035, metadata !1036, metadata !1037, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1062, metadata !1063}
!991 = metadata !{i32 786445, metadata !989, metadata !"upstream", metadata !833, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !992} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!992 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !993} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!993 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !833, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !994} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!994 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !833, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !995, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!995 = metadata !{metadata !996, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1017, metadata !1020}
!996 = metadata !{i32 786445, metadata !994, metadata !"peer", metadata !833, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !997} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!997 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !833, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !998} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!998 = metadata !{i32 786451, null, metadata !"", metadata !833, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !999, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!999 = metadata !{metadata !1000, metadata !1005, metadata !1010}
!1000 = metadata !{i32 786445, metadata !998, metadata !"init_upstream", metadata !833, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !1001} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!1001 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !833, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !1002} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!1002 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1003} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1003 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1004, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1004 = metadata !{metadata !580, metadata !11, metadata !992}
!1005 = metadata !{i32 786445, metadata !998, metadata !"init", metadata !833, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !1006} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!1006 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !833, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !1007} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!1007 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1008} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1008 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1009, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1009 = metadata !{metadata !580, metadata !638, metadata !992}
!1010 = metadata !{i32 786445, metadata !998, metadata !"data", metadata !833, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!1011 = metadata !{i32 786445, metadata !994, metadata !"srv_conf", metadata !833, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!1012 = metadata !{i32 786445, metadata !994, metadata !"servers", metadata !833, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!1013 = metadata !{i32 786445, metadata !994, metadata !"flags", metadata !833, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!1014 = metadata !{i32 786445, metadata !994, metadata !"host", metadata !833, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!1015 = metadata !{i32 786445, metadata !994, metadata !"file_name", metadata !833, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!1016 = metadata !{i32 786445, metadata !994, metadata !"line", metadata !833, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!1017 = metadata !{i32 786445, metadata !994, metadata !"port", metadata !833, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !1018} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!1018 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !833, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1019} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!1019 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !833, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!1020 = metadata !{i32 786445, metadata !994, metadata !"default_port", metadata !833, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !1018} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!1021 = metadata !{i32 786445, metadata !989, metadata !"connect_timeout", metadata !833, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!1022 = metadata !{i32 786445, metadata !989, metadata !"send_timeout", metadata !833, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!1023 = metadata !{i32 786445, metadata !989, metadata !"read_timeout", metadata !833, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!1024 = metadata !{i32 786445, metadata !989, metadata !"timeout", metadata !833, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!1025 = metadata !{i32 786445, metadata !989, metadata !"send_lowat", metadata !833, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!1026 = metadata !{i32 786445, metadata !989, metadata !"buffer_size", metadata !833, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!1027 = metadata !{i32 786445, metadata !989, metadata !"busy_buffers_size", metadata !833, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!1028 = metadata !{i32 786445, metadata !989, metadata !"max_temp_file_size", metadata !833, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!1029 = metadata !{i32 786445, metadata !989, metadata !"temp_file_write_size", metadata !833, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!1030 = metadata !{i32 786445, metadata !989, metadata !"busy_buffers_size_conf", metadata !833, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!1031 = metadata !{i32 786445, metadata !989, metadata !"max_temp_file_size_conf", metadata !833, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!1032 = metadata !{i32 786445, metadata !989, metadata !"temp_file_write_size_conf", metadata !833, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!1033 = metadata !{i32 786445, metadata !989, metadata !"bufs", metadata !833, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !921} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!1034 = metadata !{i32 786445, metadata !989, metadata !"ignore_headers", metadata !833, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!1035 = metadata !{i32 786445, metadata !989, metadata !"next_upstream", metadata !833, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!1036 = metadata !{i32 786445, metadata !989, metadata !"store_access", metadata !833, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!1037 = metadata !{i32 786445, metadata !989, metadata !"buffering", metadata !833, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !1038} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!1038 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !833, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !581} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!1039 = metadata !{i32 786445, metadata !989, metadata !"pass_request_headers", metadata !833, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !1038} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!1040 = metadata !{i32 786445, metadata !989, metadata !"pass_request_body", metadata !833, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !1038} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!1041 = metadata !{i32 786445, metadata !989, metadata !"ignore_client_abort", metadata !833, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !1038} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!1042 = metadata !{i32 786445, metadata !989, metadata !"intercept_errors", metadata !833, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !1038} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!1043 = metadata !{i32 786445, metadata !989, metadata !"cyclic_temp_file", metadata !833, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !1038} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!1044 = metadata !{i32 786445, metadata !989, metadata !"temp_path", metadata !833, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !745} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!1045 = metadata !{i32 786445, metadata !989, metadata !"hide_headers_hash", metadata !833, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !483} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!1046 = metadata !{i32 786445, metadata !989, metadata !"hide_headers", metadata !833, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!1047 = metadata !{i32 786445, metadata !989, metadata !"pass_headers", metadata !833, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!1048 = metadata !{i32 786445, metadata !989, metadata !"local", metadata !833, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !867} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!1049 = metadata !{i32 786445, metadata !989, metadata !"cache", metadata !833, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !774} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!1050 = metadata !{i32 786445, metadata !989, metadata !"cache_min_uses", metadata !833, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!1051 = metadata !{i32 786445, metadata !989, metadata !"cache_use_stale", metadata !833, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!1052 = metadata !{i32 786445, metadata !989, metadata !"cache_methods", metadata !833, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!1053 = metadata !{i32 786445, metadata !989, metadata !"cache_lock", metadata !833, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !1038} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!1054 = metadata !{i32 786445, metadata !989, metadata !"cache_lock_timeout", metadata !833, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!1055 = metadata !{i32 786445, metadata !989, metadata !"cache_valid", metadata !833, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!1056 = metadata !{i32 786445, metadata !989, metadata !"cache_bypass", metadata !833, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!1057 = metadata !{i32 786445, metadata !989, metadata !"no_cache", metadata !833, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!1058 = metadata !{i32 786445, metadata !989, metadata !"store_lengths", metadata !833, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!1059 = metadata !{i32 786445, metadata !989, metadata !"store_values", metadata !833, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!1060 = metadata !{i32 786445, metadata !989, metadata !"store", metadata !833, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!1061 = metadata !{i32 786445, metadata !989, metadata !"intercept_404", metadata !833, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!1062 = metadata !{i32 786445, metadata !989, metadata !"change_buffering", metadata !833, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!1063 = metadata !{i32 786445, metadata !989, metadata !"module", metadata !833, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!1064 = metadata !{i32 786445, metadata !832, metadata !"headers_in", metadata !833, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !1065} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!1065 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !833, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1066} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1066 = metadata !{i32 786451, null, metadata !"", metadata !833, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !1067, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!1067 = metadata !{metadata !1068, metadata !1069, metadata !1070, metadata !1071, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099}
!1068 = metadata !{i32 786445, metadata !1066, metadata !"headers", metadata !833, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!1069 = metadata !{i32 786445, metadata !1066, metadata !"status_n", metadata !833, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!1070 = metadata !{i32 786445, metadata !1066, metadata !"status_line", metadata !833, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!1071 = metadata !{i32 786445, metadata !1066, metadata !"status", metadata !833, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !1072} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!1072 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1073} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!1073 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !833, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1074} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!1074 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !1075, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!1075 = metadata !{metadata !1076, metadata !1077, metadata !1078, metadata !1079}
!1076 = metadata !{i32 786445, metadata !1074, metadata !"hash", metadata !479, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!1077 = metadata !{i32 786445, metadata !1074, metadata !"key", metadata !479, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!1078 = metadata !{i32 786445, metadata !1074, metadata !"value", metadata !479, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!1079 = metadata !{i32 786445, metadata !1074, metadata !"lowcase_key", metadata !479, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1080 = metadata !{i32 786445, metadata !1066, metadata !"date", metadata !833, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !1072} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1081 = metadata !{i32 786445, metadata !1066, metadata !"server", metadata !833, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !1072} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1082 = metadata !{i32 786445, metadata !1066, metadata !"connection", metadata !833, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !1072} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1083 = metadata !{i32 786445, metadata !1066, metadata !"expires", metadata !833, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !1072} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1084 = metadata !{i32 786445, metadata !1066, metadata !"etag", metadata !833, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !1072} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1085 = metadata !{i32 786445, metadata !1066, metadata !"x_accel_expires", metadata !833, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1086 = metadata !{i32 786445, metadata !1066, metadata !"x_accel_redirect", metadata !833, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1087 = metadata !{i32 786445, metadata !1066, metadata !"x_accel_limit_rate", metadata !833, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1088 = metadata !{i32 786445, metadata !1066, metadata !"content_type", metadata !833, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1089 = metadata !{i32 786445, metadata !1066, metadata !"content_length", metadata !833, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1090 = metadata !{i32 786445, metadata !1066, metadata !"last_modified", metadata !833, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !1072} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1091 = metadata !{i32 786445, metadata !1066, metadata !"location", metadata !833, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !1072} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1092 = metadata !{i32 786445, metadata !1066, metadata !"accept_ranges", metadata !833, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !1072} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1093 = metadata !{i32 786445, metadata !1066, metadata !"www_authenticate", metadata !833, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !1072} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1094 = metadata !{i32 786445, metadata !1066, metadata !"transfer_encoding", metadata !833, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !1072} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1095 = metadata !{i32 786445, metadata !1066, metadata !"content_encoding", metadata !833, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1096 = metadata !{i32 786445, metadata !1066, metadata !"content_length_n", metadata !833, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1097 = metadata !{i32 786445, metadata !1066, metadata !"cache_control", metadata !833, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1098 = metadata !{i32 786445, metadata !1066, metadata !"connection_close", metadata !833, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1099 = metadata !{i32 786445, metadata !1066, metadata !"chunked", metadata !833, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1100 = metadata !{i32 786445, metadata !832, metadata !"resolved", metadata !833, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1101} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1101 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1102} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1102 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !833, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1103} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1103 = metadata !{i32 786451, null, metadata !"", metadata !833, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1104, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1104 = metadata !{metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1112, metadata !1113, metadata !1114}
!1105 = metadata !{i32 786445, metadata !1103, metadata !"host", metadata !833, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1106 = metadata !{i32 786445, metadata !1103, metadata !"port", metadata !833, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !1018} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1107 = metadata !{i32 786445, metadata !1103, metadata !"no_port", metadata !833, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1108 = metadata !{i32 786445, metadata !1103, metadata !"naddrs", metadata !833, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1109 = metadata !{i32 786445, metadata !1103, metadata !"addrs", metadata !833, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1110} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1111} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1111 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !833, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !627} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1112 = metadata !{i32 786445, metadata !1103, metadata !"sockaddr", metadata !833, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1113 = metadata !{i32 786445, metadata !1103, metadata !"socklen", metadata !833, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1114 = metadata !{i32 786445, metadata !1103, metadata !"ctx", metadata !833, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1115} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1115 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1116} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1116 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !833, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1117} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1117 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1118, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1119, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1118 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1119 = metadata !{metadata !1120, metadata !1123, metadata !1146, metadata !1156, metadata !1157, metadata !1158, metadata !1159, metadata !1160, metadata !1161, metadata !1162, metadata !1163, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1172}
!1120 = metadata !{i32 786445, metadata !1117, metadata !"next", metadata !1118, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1121} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1121 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1122} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1122 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1118, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1117} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1123 = metadata !{i32 786445, metadata !1117, metadata !"resolver", metadata !1118, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1124} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1124 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1125} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1125 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1118, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1126} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1126 = metadata !{i32 786451, null, metadata !"", metadata !1118, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1127, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1127 = metadata !{metadata !1128, metadata !1129, metadata !1130, metadata !1131, metadata !1132, metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1140, metadata !1141, metadata !1142, metadata !1143, metadata !1144, metadata !1145}
!1128 = metadata !{i32 786445, metadata !1126, metadata !"event", metadata !1118, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1129 = metadata !{i32 786445, metadata !1126, metadata !"dummy", metadata !1118, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1130 = metadata !{i32 786445, metadata !1126, metadata !"log", metadata !1118, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1131 = metadata !{i32 786445, metadata !1126, metadata !"ident", metadata !1118, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !580} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1132 = metadata !{i32 786445, metadata !1126, metadata !"udp_connections", metadata !1118, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1133 = metadata !{i32 786445, metadata !1126, metadata !"last_connection", metadata !1118, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1134 = metadata !{i32 786445, metadata !1126, metadata !"name_rbtree", metadata !1118, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !680} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1135 = metadata !{i32 786445, metadata !1126, metadata !"name_sentinel", metadata !1118, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1136 = metadata !{i32 786445, metadata !1126, metadata !"addr_rbtree", metadata !1118, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !680} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1137 = metadata !{i32 786445, metadata !1126, metadata !"addr_sentinel", metadata !1118, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1138 = metadata !{i32 786445, metadata !1126, metadata !"name_resend_queue", metadata !1118, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1139 = metadata !{i32 786445, metadata !1126, metadata !"addr_resend_queue", metadata !1118, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1140 = metadata !{i32 786445, metadata !1126, metadata !"name_expire_queue", metadata !1118, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1141 = metadata !{i32 786445, metadata !1126, metadata !"addr_expire_queue", metadata !1118, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1142 = metadata !{i32 786445, metadata !1126, metadata !"resend_timeout", metadata !1118, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !658} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1143 = metadata !{i32 786445, metadata !1126, metadata !"expire", metadata !1118, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !658} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1144 = metadata !{i32 786445, metadata !1126, metadata !"valid", metadata !1118, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !658} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1145 = metadata !{i32 786445, metadata !1126, metadata !"log_level", metadata !1118, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1146 = metadata !{i32 786445, metadata !1117, metadata !"udp_connection", metadata !1118, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1147} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1148} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1148 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1118, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1149} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1149 = metadata !{i32 786451, null, metadata !"", metadata !1118, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1150, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1150 = metadata !{metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155}
!1151 = metadata !{i32 786445, metadata !1149, metadata !"connection", metadata !1118, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1152 = metadata !{i32 786445, metadata !1149, metadata !"sockaddr", metadata !1118, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1153 = metadata !{i32 786445, metadata !1149, metadata !"socklen", metadata !1118, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1154 = metadata !{i32 786445, metadata !1149, metadata !"server", metadata !1118, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1155 = metadata !{i32 786445, metadata !1149, metadata !"log", metadata !1118, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1156 = metadata !{i32 786445, metadata !1117, metadata !"ident", metadata !1118, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !580} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1157 = metadata !{i32 786445, metadata !1117, metadata !"state", metadata !1118, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !580} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1158 = metadata !{i32 786445, metadata !1117, metadata !"type", metadata !1118, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !580} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1159 = metadata !{i32 786445, metadata !1117, metadata !"name", metadata !1118, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1160 = metadata !{i32 786445, metadata !1117, metadata !"naddrs", metadata !1118, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1161 = metadata !{i32 786445, metadata !1117, metadata !"addrs", metadata !1118, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !1110} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1162 = metadata !{i32 786445, metadata !1117, metadata !"addr", metadata !1118, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !1111} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1163 = metadata !{i32 786445, metadata !1117, metadata !"handler", metadata !1118, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1164} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1164 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1118, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1165} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1165 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1166} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1166 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1167, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1167 = metadata !{null, metadata !1121}
!1168 = metadata !{i32 786445, metadata !1117, metadata !"data", metadata !1118, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1169 = metadata !{i32 786445, metadata !1117, metadata !"timeout", metadata !1118, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1170 = metadata !{i32 786445, metadata !1117, metadata !"quick", metadata !1118, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1171 = metadata !{i32 786445, metadata !1117, metadata !"recursion", metadata !1118, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1172 = metadata !{i32 786445, metadata !1117, metadata !"event", metadata !1118, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1173 = metadata !{i32 786445, metadata !832, metadata !"buffer", metadata !833, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1174 = metadata !{i32 786445, metadata !832, metadata !"length", metadata !833, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1175 = metadata !{i32 786445, metadata !832, metadata !"out_bufs", metadata !833, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1176 = metadata !{i32 786445, metadata !832, metadata !"busy_bufs", metadata !833, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1177 = metadata !{i32 786445, metadata !832, metadata !"free_bufs", metadata !833, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1178 = metadata !{i32 786445, metadata !832, metadata !"input_filter_init", metadata !833, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1179} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1181 = metadata !{metadata !580, metadata !24}
!1182 = metadata !{i32 786445, metadata !832, metadata !"input_filter", metadata !833, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1183} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1184} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1185 = metadata !{metadata !580, metadata !24, metadata !286}
!1186 = metadata !{i32 786445, metadata !832, metadata !"input_filter_ctx", metadata !833, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1187 = metadata !{i32 786445, metadata !832, metadata !"create_key", metadata !833, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1188} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1188 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1189} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1190 = metadata !{metadata !580, metadata !638}
!1191 = metadata !{i32 786445, metadata !832, metadata !"create_request", metadata !833, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1188} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1192 = metadata !{i32 786445, metadata !832, metadata !"reinit_request", metadata !833, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1188} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1193 = metadata !{i32 786445, metadata !832, metadata !"process_header", metadata !833, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1188} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1194 = metadata !{i32 786445, metadata !832, metadata !"abort_request", metadata !833, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !635} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1195 = metadata !{i32 786445, metadata !832, metadata !"finalize_request", metadata !833, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1196} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1196 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1197} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1198 = metadata !{null, metadata !638, metadata !580}
!1199 = metadata !{i32 786445, metadata !832, metadata !"rewrite_redirect", metadata !833, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1200} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1200 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1201} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1201 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1202 = metadata !{metadata !580, metadata !638, metadata !1072, metadata !30}
!1203 = metadata !{i32 786445, metadata !832, metadata !"rewrite_cookie", metadata !833, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1204} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1204 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1206 = metadata !{metadata !580, metadata !638, metadata !1072}
!1207 = metadata !{i32 786445, metadata !832, metadata !"timeout", metadata !833, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1208 = metadata !{i32 786445, metadata !832, metadata !"state", metadata !833, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1209} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1209 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1210} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1210 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !833, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1211} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1211 = metadata !{i32 786451, null, metadata !"", metadata !833, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1212, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1212 = metadata !{metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217, metadata !1218, metadata !1219}
!1213 = metadata !{i32 786445, metadata !1211, metadata !"bl_time", metadata !833, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1214 = metadata !{i32 786445, metadata !1211, metadata !"bl_state", metadata !833, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1215 = metadata !{i32 786445, metadata !1211, metadata !"status", metadata !833, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1216 = metadata !{i32 786445, metadata !1211, metadata !"response_sec", metadata !833, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !658} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1217 = metadata !{i32 786445, metadata !1211, metadata !"response_msec", metadata !833, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1218 = metadata !{i32 786445, metadata !1211, metadata !"response_length", metadata !833, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1219 = metadata !{i32 786445, metadata !1211, metadata !"peer", metadata !833, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !472} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1220 = metadata !{i32 786445, metadata !832, metadata !"method", metadata !833, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1221 = metadata !{i32 786445, metadata !832, metadata !"schema", metadata !833, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1222 = metadata !{i32 786445, metadata !832, metadata !"uri", metadata !833, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1223 = metadata !{i32 786445, metadata !832, metadata !"cleanup", metadata !833, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1224} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1224 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1225} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1225 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !833, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1226 = metadata !{i32 786445, metadata !832, metadata !"store", metadata !833, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1227 = metadata !{i32 786445, metadata !832, metadata !"cacheable", metadata !833, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1228 = metadata !{i32 786445, metadata !832, metadata !"accel", metadata !833, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1229 = metadata !{i32 786445, metadata !832, metadata !"ssl", metadata !833, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1230 = metadata !{i32 786445, metadata !832, metadata !"cache_status", metadata !833, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1231 = metadata !{i32 786445, metadata !832, metadata !"buffering", metadata !833, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1232 = metadata !{i32 786445, metadata !832, metadata !"keepalive", metadata !833, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1233 = metadata !{i32 786445, metadata !832, metadata !"request_sent", metadata !833, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1234 = metadata !{i32 786445, metadata !832, metadata !"header_sent", metadata !833, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1235 = metadata !{i32 786445, metadata !623, metadata !"upstream_states", metadata !624, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1236 = metadata !{i32 786445, metadata !623, metadata !"pool", metadata !624, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1237 = metadata !{i32 786445, metadata !623, metadata !"header_in", metadata !624, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1238 = metadata !{i32 786445, metadata !623, metadata !"headers_in", metadata !624, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1239} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1239 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !624, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1240} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1240 = metadata !{i32 786451, null, metadata !"", metadata !624, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1241, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1241 = metadata !{metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246, metadata !1247, metadata !1248, metadata !1249, metadata !1250, metadata !1251, metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1257, metadata !1258, metadata !1259, metadata !1260, metadata !1261, metadata !1262, metadata !1263, metadata !1264, metadata !1265, metadata !1266, metadata !1267, metadata !1268, metadata !1269, metadata !1270, metadata !1271, metadata !1272, metadata !1273}
!1242 = metadata !{i32 786445, metadata !1240, metadata !"headers", metadata !624, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1243 = metadata !{i32 786445, metadata !1240, metadata !"host", metadata !624, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !1072} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1244 = metadata !{i32 786445, metadata !1240, metadata !"connection", metadata !624, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !1072} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1245 = metadata !{i32 786445, metadata !1240, metadata !"if_modified_since", metadata !624, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !1072} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1246 = metadata !{i32 786445, metadata !1240, metadata !"if_unmodified_since", metadata !624, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !1072} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1247 = metadata !{i32 786445, metadata !1240, metadata !"user_agent", metadata !624, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !1072} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1248 = metadata !{i32 786445, metadata !1240, metadata !"referer", metadata !624, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !1072} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1249 = metadata !{i32 786445, metadata !1240, metadata !"content_length", metadata !624, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1250 = metadata !{i32 786445, metadata !1240, metadata !"content_type", metadata !624, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1251 = metadata !{i32 786445, metadata !1240, metadata !"range", metadata !624, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !1072} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1252 = metadata !{i32 786445, metadata !1240, metadata !"if_range", metadata !624, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !1072} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1253 = metadata !{i32 786445, metadata !1240, metadata !"transfer_encoding", metadata !624, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !1072} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1254 = metadata !{i32 786445, metadata !1240, metadata !"expect", metadata !624, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !1072} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1255 = metadata !{i32 786445, metadata !1240, metadata !"accept_encoding", metadata !624, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !1072} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1256 = metadata !{i32 786445, metadata !1240, metadata !"via", metadata !624, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !1072} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1257 = metadata !{i32 786445, metadata !1240, metadata !"authorization", metadata !624, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !1072} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1258 = metadata !{i32 786445, metadata !1240, metadata !"keep_alive", metadata !624, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !1072} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1259 = metadata !{i32 786445, metadata !1240, metadata !"x_forwarded_for", metadata !624, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1260 = metadata !{i32 786445, metadata !1240, metadata !"user", metadata !624, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1261 = metadata !{i32 786445, metadata !1240, metadata !"passwd", metadata !624, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1262 = metadata !{i32 786445, metadata !1240, metadata !"cookies", metadata !624, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1263 = metadata !{i32 786445, metadata !1240, metadata !"server", metadata !624, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1264 = metadata !{i32 786445, metadata !1240, metadata !"content_length_n", metadata !624, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1265 = metadata !{i32 786445, metadata !1240, metadata !"keep_alive_n", metadata !624, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !658} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1266 = metadata !{i32 786445, metadata !1240, metadata !"connection_type", metadata !624, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1267 = metadata !{i32 786445, metadata !1240, metadata !"msie", metadata !624, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1268 = metadata !{i32 786445, metadata !1240, metadata !"msie6", metadata !624, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1269 = metadata !{i32 786445, metadata !1240, metadata !"opera", metadata !624, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1270 = metadata !{i32 786445, metadata !1240, metadata !"gecko", metadata !624, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1271 = metadata !{i32 786445, metadata !1240, metadata !"chrome", metadata !624, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1272 = metadata !{i32 786445, metadata !1240, metadata !"safari", metadata !624, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1273 = metadata !{i32 786445, metadata !1240, metadata !"konqueror", metadata !624, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1274 = metadata !{i32 786445, metadata !623, metadata !"headers_out", metadata !624, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1275} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1275 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !624, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1276} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1276 = metadata !{i32 786451, null, metadata !"", metadata !624, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1277, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1277 = metadata !{metadata !1278, metadata !1279, metadata !1280, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287, metadata !1288, metadata !1289, metadata !1290, metadata !1291, metadata !1292, metadata !1293, metadata !1294, metadata !1295, metadata !1296, metadata !1297, metadata !1298, metadata !1299, metadata !1300, metadata !1301, metadata !1302}
!1278 = metadata !{i32 786445, metadata !1276, metadata !"headers", metadata !624, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1279 = metadata !{i32 786445, metadata !1276, metadata !"status", metadata !624, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1280 = metadata !{i32 786445, metadata !1276, metadata !"status_line", metadata !624, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1281 = metadata !{i32 786445, metadata !1276, metadata !"server", metadata !624, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !1072} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1282 = metadata !{i32 786445, metadata !1276, metadata !"date", metadata !624, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !1072} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1283 = metadata !{i32 786445, metadata !1276, metadata !"content_length", metadata !624, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1284 = metadata !{i32 786445, metadata !1276, metadata !"content_encoding", metadata !624, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1285 = metadata !{i32 786445, metadata !1276, metadata !"location", metadata !624, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !1072} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1286 = metadata !{i32 786445, metadata !1276, metadata !"refresh", metadata !624, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !1072} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1287 = metadata !{i32 786445, metadata !1276, metadata !"last_modified", metadata !624, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !1072} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1288 = metadata !{i32 786445, metadata !1276, metadata !"content_range", metadata !624, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1289 = metadata !{i32 786445, metadata !1276, metadata !"accept_ranges", metadata !624, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !1072} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1290 = metadata !{i32 786445, metadata !1276, metadata !"www_authenticate", metadata !624, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !1072} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1291 = metadata !{i32 786445, metadata !1276, metadata !"expires", metadata !624, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !1072} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1292 = metadata !{i32 786445, metadata !1276, metadata !"etag", metadata !624, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !1072} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1293 = metadata !{i32 786445, metadata !1276, metadata !"override_charset", metadata !624, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !472} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1294 = metadata !{i32 786445, metadata !1276, metadata !"content_type_len", metadata !624, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1295 = metadata !{i32 786445, metadata !1276, metadata !"content_type", metadata !624, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1296 = metadata !{i32 786445, metadata !1276, metadata !"charset", metadata !624, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1297 = metadata !{i32 786445, metadata !1276, metadata !"content_type_lowcase", metadata !624, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1298 = metadata !{i32 786445, metadata !1276, metadata !"content_type_hash", metadata !624, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1299 = metadata !{i32 786445, metadata !1276, metadata !"cache_control", metadata !624, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1300 = metadata !{i32 786445, metadata !1276, metadata !"content_length_n", metadata !624, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1301 = metadata !{i32 786445, metadata !1276, metadata !"date_time", metadata !624, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !658} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1302 = metadata !{i32 786445, metadata !1276, metadata !"last_modified_time", metadata !624, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !658} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1303 = metadata !{i32 786445, metadata !623, metadata !"request_body", metadata !624, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1304} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1304 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1305} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1305 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !624, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1306} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1306 = metadata !{i32 786451, null, metadata !"", metadata !624, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1307, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1307 = metadata !{metadata !1308, metadata !1309, metadata !1310, metadata !1311, metadata !1312, metadata !1313}
!1308 = metadata !{i32 786445, metadata !1306, metadata !"temp_file", metadata !624, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !941} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1309 = metadata !{i32 786445, metadata !1306, metadata !"bufs", metadata !624, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1310 = metadata !{i32 786445, metadata !1306, metadata !"buf", metadata !624, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1311 = metadata !{i32 786445, metadata !1306, metadata !"rest", metadata !624, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1312 = metadata !{i32 786445, metadata !1306, metadata !"to_write", metadata !624, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1313 = metadata !{i32 786445, metadata !1306, metadata !"post_handler", metadata !624, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1314} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1314 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !624, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !635} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1315 = metadata !{i32 786445, metadata !623, metadata !"lingering_time", metadata !624, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !658} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1316 = metadata !{i32 786445, metadata !623, metadata !"start_sec", metadata !624, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !658} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1317 = metadata !{i32 786445, metadata !623, metadata !"start_msec", metadata !624, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1318 = metadata !{i32 786445, metadata !623, metadata !"method", metadata !624, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1319 = metadata !{i32 786445, metadata !623, metadata !"http_version", metadata !624, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1320 = metadata !{i32 786445, metadata !623, metadata !"request_line", metadata !624, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1321 = metadata !{i32 786445, metadata !623, metadata !"uri", metadata !624, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1322 = metadata !{i32 786445, metadata !623, metadata !"args", metadata !624, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1323 = metadata !{i32 786445, metadata !623, metadata !"exten", metadata !624, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1324 = metadata !{i32 786445, metadata !623, metadata !"unparsed_uri", metadata !624, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1325 = metadata !{i32 786445, metadata !623, metadata !"method_name", metadata !624, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1326 = metadata !{i32 786445, metadata !623, metadata !"http_protocol", metadata !624, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1327 = metadata !{i32 786445, metadata !623, metadata !"out", metadata !624, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1328 = metadata !{i32 786445, metadata !623, metadata !"main", metadata !624, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !638} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1329 = metadata !{i32 786445, metadata !623, metadata !"parent", metadata !624, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !638} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1330 = metadata !{i32 786445, metadata !623, metadata !"postponed", metadata !624, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1331} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1331 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1332} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1332 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !624, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1333} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1333 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !624, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1334, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1334 = metadata !{metadata !1335, metadata !1336, metadata !1337}
!1335 = metadata !{i32 786445, metadata !1333, metadata !"request", metadata !624, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !638} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1336 = metadata !{i32 786445, metadata !1333, metadata !"out", metadata !624, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1337 = metadata !{i32 786445, metadata !1333, metadata !"next", metadata !624, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1331} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1338 = metadata !{i32 786445, metadata !623, metadata !"post_subrequest", metadata !624, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1339} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1339 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1340} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1340 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !624, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1341} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1341 = metadata !{i32 786451, null, metadata !"", metadata !624, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1342, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1342 = metadata !{metadata !1343, metadata !1348}
!1343 = metadata !{i32 786445, metadata !1341, metadata !"handler", metadata !624, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1344} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1344 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !624, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1345} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1345 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1346} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1346 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1347 = metadata !{metadata !580, metadata !638, metadata !24, metadata !580}
!1348 = metadata !{i32 786445, metadata !1341, metadata !"data", metadata !624, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1349 = metadata !{i32 786445, metadata !623, metadata !"posted_requests", metadata !624, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1350} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1350 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1351} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1351 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !624, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1352} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1352 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !624, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1353, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1353 = metadata !{metadata !1354, metadata !1355}
!1354 = metadata !{i32 786445, metadata !1352, metadata !"request", metadata !624, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !638} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1355 = metadata !{i32 786445, metadata !1352, metadata !"next", metadata !624, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1350} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1356 = metadata !{i32 786445, metadata !623, metadata !"virtual_names", metadata !624, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1357} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1357 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1358} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1358 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !624, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1359} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1359 = metadata !{i32 786451, null, metadata !"", metadata !624, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1360, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1360 = metadata !{metadata !1361, metadata !1362, metadata !1363}
!1361 = metadata !{i32 786445, metadata !1359, metadata !"names", metadata !624, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !522} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1362 = metadata !{i32 786445, metadata !1359, metadata !"nregex", metadata !624, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1363 = metadata !{i32 786445, metadata !1359, metadata !"regex", metadata !624, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1364} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1364 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1365} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1365 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !624, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1366} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1366 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1367, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1368, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1367 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1368 = metadata !{metadata !1369, metadata !1370, metadata !1517}
!1369 = metadata !{i32 786445, metadata !1366, metadata !"regex", metadata !1367, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !540} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1370 = metadata !{i32 786445, metadata !1366, metadata !"server", metadata !1367, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1371} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1371 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1372} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1372 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1367, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1373} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1373 = metadata !{i32 786451, null, metadata !"", metadata !1367, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1374, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1374 = metadata !{metadata !1375, metadata !1376, metadata !1385, metadata !1386, metadata !1387, metadata !1388, metadata !1389, metadata !1390, metadata !1391, metadata !1392, metadata !1393, metadata !1394, metadata !1395, metadata !1396}
!1375 = metadata !{i32 786445, metadata !1373, metadata !"server_names", metadata !1367, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1376 = metadata !{i32 786445, metadata !1373, metadata !"ctx", metadata !1367, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1377} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1377 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1378} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1378 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1367, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1379} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1379 = metadata !{i32 786451, null, metadata !"", metadata !1380, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1381, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1380 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1381 = metadata !{metadata !1382, metadata !1383, metadata !1384}
!1382 = metadata !{i32 786445, metadata !1379, metadata !"main_conf", metadata !1380, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1383 = metadata !{i32 786445, metadata !1379, metadata !"srv_conf", metadata !1380, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1384 = metadata !{i32 786445, metadata !1379, metadata !"loc_conf", metadata !1380, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1385 = metadata !{i32 786445, metadata !1373, metadata !"server_name", metadata !1367, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1386 = metadata !{i32 786445, metadata !1373, metadata !"connection_pool_size", metadata !1367, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1387 = metadata !{i32 786445, metadata !1373, metadata !"request_pool_size", metadata !1367, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1388 = metadata !{i32 786445, metadata !1373, metadata !"client_header_buffer_size", metadata !1367, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1389 = metadata !{i32 786445, metadata !1373, metadata !"large_client_header_buffers", metadata !1367, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !921} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1390 = metadata !{i32 786445, metadata !1373, metadata !"client_header_timeout", metadata !1367, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1391 = metadata !{i32 786445, metadata !1373, metadata !"ignore_invalid_headers", metadata !1367, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !1038} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1392 = metadata !{i32 786445, metadata !1373, metadata !"merge_slashes", metadata !1367, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !1038} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1393 = metadata !{i32 786445, metadata !1373, metadata !"underscores_in_headers", metadata !1367, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !1038} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1394 = metadata !{i32 786445, metadata !1373, metadata !"listen", metadata !1367, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1395 = metadata !{i32 786445, metadata !1373, metadata !"captures", metadata !1367, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1396 = metadata !{i32 786445, metadata !1373, metadata !"named_locations", metadata !1367, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1397} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1397 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1398} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1398 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1399} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1399 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1367, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1400} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1400 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1367, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1401, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1401 = metadata !{metadata !1402, metadata !1403, metadata !1404, metadata !1405, metadata !1406, metadata !1407, metadata !1408, metadata !1409, metadata !1410, metadata !1411, metadata !1424, metadata !1425, metadata !1426, metadata !1427, metadata !1428, metadata !1430, metadata !1431, metadata !1432, metadata !1433, metadata !1434, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1442, metadata !1443, metadata !1444, metadata !1445, metadata !1446, metadata !1447, metadata !1448, metadata !1449, metadata !1450, metadata !1451, metadata !1452, metadata !1453, metadata !1454, metadata !1455, metadata !1456, metadata !1457, metadata !1458, metadata !1459, metadata !1460, metadata !1461, metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466, metadata !1467, metadata !1468, metadata !1469, metadata !1470, metadata !1471, metadata !1472, metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1477, metadata !1478, metadata !1479, metadata !1480, metadata !1481, metadata !1482, metadata !1483, metadata !1485, metadata !1486, metadata !1496, metadata !1497, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516}
!1402 = metadata !{i32 786445, metadata !1400, metadata !"name", metadata !1367, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1403 = metadata !{i32 786445, metadata !1400, metadata !"regex", metadata !1367, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !540} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1404 = metadata !{i32 786445, metadata !1400, metadata !"noname", metadata !1367, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1405 = metadata !{i32 786445, metadata !1400, metadata !"lmt_excpt", metadata !1367, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1406 = metadata !{i32 786445, metadata !1400, metadata !"named", metadata !1367, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1407 = metadata !{i32 786445, metadata !1400, metadata !"exact_match", metadata !1367, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1408 = metadata !{i32 786445, metadata !1400, metadata !"noregex", metadata !1367, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1409 = metadata !{i32 786445, metadata !1400, metadata !"auto_redirect", metadata !1367, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1410 = metadata !{i32 786445, metadata !1400, metadata !"gzip_disable_msie6", metadata !1367, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1411 = metadata !{i32 786445, metadata !1400, metadata !"static_locations", metadata !1367, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1412} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1412 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1413} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1413 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1367, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1414} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1414 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1367, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1415, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1415 = metadata !{metadata !1416, metadata !1417, metadata !1418, metadata !1419, metadata !1420, metadata !1421, metadata !1422, metadata !1423}
!1416 = metadata !{i32 786445, metadata !1414, metadata !"left", metadata !1367, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1412} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1417 = metadata !{i32 786445, metadata !1414, metadata !"right", metadata !1367, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1412} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1418 = metadata !{i32 786445, metadata !1414, metadata !"tree", metadata !1367, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1412} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1419 = metadata !{i32 786445, metadata !1414, metadata !"exact", metadata !1367, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1398} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1420 = metadata !{i32 786445, metadata !1414, metadata !"inclusive", metadata !1367, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1398} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1421 = metadata !{i32 786445, metadata !1414, metadata !"auto_redirect", metadata !1367, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1422 = metadata !{i32 786445, metadata !1414, metadata !"len", metadata !1367, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1423 = metadata !{i32 786445, metadata !1414, metadata !"name", metadata !1367, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !497} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1424 = metadata !{i32 786445, metadata !1400, metadata !"regex_locations", metadata !1367, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1397} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1425 = metadata !{i32 786445, metadata !1400, metadata !"loc_conf", metadata !1367, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1426 = metadata !{i32 786445, metadata !1400, metadata !"limit_except", metadata !1367, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !627} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1427 = metadata !{i32 786445, metadata !1400, metadata !"limit_except_loc_conf", metadata !1367, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1428 = metadata !{i32 786445, metadata !1400, metadata !"handler", metadata !1367, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1429} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1429 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1367, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1188} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1430 = metadata !{i32 786445, metadata !1400, metadata !"alias", metadata !1367, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1431 = metadata !{i32 786445, metadata !1400, metadata !"root", metadata !1367, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1432 = metadata !{i32 786445, metadata !1400, metadata !"post_action", metadata !1367, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1433 = metadata !{i32 786445, metadata !1400, metadata !"root_lengths", metadata !1367, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1434 = metadata !{i32 786445, metadata !1400, metadata !"root_values", metadata !1367, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1435 = metadata !{i32 786445, metadata !1400, metadata !"types", metadata !1367, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1436 = metadata !{i32 786445, metadata !1400, metadata !"types_hash", metadata !1367, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !483} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1437 = metadata !{i32 786445, metadata !1400, metadata !"default_type", metadata !1367, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1438 = metadata !{i32 786445, metadata !1400, metadata !"client_max_body_size", metadata !1367, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1439 = metadata !{i32 786445, metadata !1400, metadata !"directio", metadata !1367, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1440 = metadata !{i32 786445, metadata !1400, metadata !"directio_alignment", metadata !1367, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1441 = metadata !{i32 786445, metadata !1400, metadata !"client_body_buffer_size", metadata !1367, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1442 = metadata !{i32 786445, metadata !1400, metadata !"send_lowat", metadata !1367, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1443 = metadata !{i32 786445, metadata !1400, metadata !"postpone_output", metadata !1367, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1444 = metadata !{i32 786445, metadata !1400, metadata !"limit_rate", metadata !1367, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1445 = metadata !{i32 786445, metadata !1400, metadata !"limit_rate_after", metadata !1367, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1446 = metadata !{i32 786445, metadata !1400, metadata !"sendfile_max_chunk", metadata !1367, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1447 = metadata !{i32 786445, metadata !1400, metadata !"read_ahead", metadata !1367, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1448 = metadata !{i32 786445, metadata !1400, metadata !"client_body_timeout", metadata !1367, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1449 = metadata !{i32 786445, metadata !1400, metadata !"send_timeout", metadata !1367, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1450 = metadata !{i32 786445, metadata !1400, metadata !"keepalive_timeout", metadata !1367, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1451 = metadata !{i32 786445, metadata !1400, metadata !"lingering_time", metadata !1367, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1452 = metadata !{i32 786445, metadata !1400, metadata !"lingering_timeout", metadata !1367, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1453 = metadata !{i32 786445, metadata !1400, metadata !"resolver_timeout", metadata !1367, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1454 = metadata !{i32 786445, metadata !1400, metadata !"resolver", metadata !1367, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1124} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1455 = metadata !{i32 786445, metadata !1400, metadata !"keepalive_header", metadata !1367, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !658} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1456 = metadata !{i32 786445, metadata !1400, metadata !"keepalive_requests", metadata !1367, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1457 = metadata !{i32 786445, metadata !1400, metadata !"keepalive_disable", metadata !1367, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1458 = metadata !{i32 786445, metadata !1400, metadata !"satisfy", metadata !1367, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1459 = metadata !{i32 786445, metadata !1400, metadata !"lingering_close", metadata !1367, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1460 = metadata !{i32 786445, metadata !1400, metadata !"if_modified_since", metadata !1367, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1461 = metadata !{i32 786445, metadata !1400, metadata !"max_ranges", metadata !1367, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1462 = metadata !{i32 786445, metadata !1400, metadata !"client_body_in_file_only", metadata !1367, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1463 = metadata !{i32 786445, metadata !1400, metadata !"client_body_in_single_buffer", metadata !1367, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !1038} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1464 = metadata !{i32 786445, metadata !1400, metadata !"internal", metadata !1367, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !1038} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1465 = metadata !{i32 786445, metadata !1400, metadata !"sendfile", metadata !1367, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !1038} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1466 = metadata !{i32 786445, metadata !1400, metadata !"tcp_nopush", metadata !1367, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !1038} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1467 = metadata !{i32 786445, metadata !1400, metadata !"tcp_nodelay", metadata !1367, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !1038} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1468 = metadata !{i32 786445, metadata !1400, metadata !"reset_timedout_connection", metadata !1367, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !1038} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1469 = metadata !{i32 786445, metadata !1400, metadata !"server_name_in_redirect", metadata !1367, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !1038} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1470 = metadata !{i32 786445, metadata !1400, metadata !"port_in_redirect", metadata !1367, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !1038} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1471 = metadata !{i32 786445, metadata !1400, metadata !"msie_padding", metadata !1367, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !1038} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1472 = metadata !{i32 786445, metadata !1400, metadata !"msie_refresh", metadata !1367, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !1038} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1473 = metadata !{i32 786445, metadata !1400, metadata !"log_not_found", metadata !1367, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !1038} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1474 = metadata !{i32 786445, metadata !1400, metadata !"log_subrequest", metadata !1367, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !1038} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1475 = metadata !{i32 786445, metadata !1400, metadata !"recursive_error_pages", metadata !1367, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !1038} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1476 = metadata !{i32 786445, metadata !1400, metadata !"server_tokens", metadata !1367, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !1038} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1477 = metadata !{i32 786445, metadata !1400, metadata !"chunked_transfer_encoding", metadata !1367, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !1038} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1478 = metadata !{i32 786445, metadata !1400, metadata !"gzip_vary", metadata !1367, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !1038} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1479 = metadata !{i32 786445, metadata !1400, metadata !"gzip_http_version", metadata !1367, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1480 = metadata !{i32 786445, metadata !1400, metadata !"gzip_proxied", metadata !1367, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1481 = metadata !{i32 786445, metadata !1400, metadata !"gzip_disable", metadata !1367, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1482 = metadata !{i32 786445, metadata !1400, metadata !"disable_symlinks", metadata !1367, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1483 = metadata !{i32 786445, metadata !1400, metadata !"disable_symlinks_from", metadata !1367, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1484} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1484 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !588} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1485 = metadata !{i32 786445, metadata !1400, metadata !"error_pages", metadata !1367, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1486 = metadata !{i32 786445, metadata !1400, metadata !"try_files", metadata !1367, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1487} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1487 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1488} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1488 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1367, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1489} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1489 = metadata !{i32 786451, null, metadata !"", metadata !1367, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1490, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1490 = metadata !{metadata !1491, metadata !1492, metadata !1493, metadata !1494, metadata !1495}
!1491 = metadata !{i32 786445, metadata !1489, metadata !"lengths", metadata !1367, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1492 = metadata !{i32 786445, metadata !1489, metadata !"values", metadata !1367, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1493 = metadata !{i32 786445, metadata !1489, metadata !"name", metadata !1367, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1494 = metadata !{i32 786445, metadata !1489, metadata !"code", metadata !1367, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1495 = metadata !{i32 786445, metadata !1489, metadata !"test_dir", metadata !1367, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1496 = metadata !{i32 786445, metadata !1400, metadata !"client_body_temp_path", metadata !1367, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !745} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1497 = metadata !{i32 786445, metadata !1400, metadata !"open_file_cache", metadata !1367, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1498} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1498 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1499} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1499 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1367, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1500} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1500 = metadata !{i32 786451, null, metadata !"", metadata !1501, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1502, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1501 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1502 = metadata !{metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508}
!1503 = metadata !{i32 786445, metadata !1500, metadata !"rbtree", metadata !1501, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !680} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1504 = metadata !{i32 786445, metadata !1500, metadata !"sentinel", metadata !1501, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1505 = metadata !{i32 786445, metadata !1500, metadata !"expire_queue", metadata !1501, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1506 = metadata !{i32 786445, metadata !1500, metadata !"current", metadata !1501, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1507 = metadata !{i32 786445, metadata !1500, metadata !"max", metadata !1501, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1508 = metadata !{i32 786445, metadata !1500, metadata !"inactive", metadata !1501, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !658} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1509 = metadata !{i32 786445, metadata !1400, metadata !"open_file_cache_valid", metadata !1367, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !658} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1510 = metadata !{i32 786445, metadata !1400, metadata !"open_file_cache_min_uses", metadata !1367, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1511 = metadata !{i32 786445, metadata !1400, metadata !"open_file_cache_errors", metadata !1367, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !1038} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1512 = metadata !{i32 786445, metadata !1400, metadata !"open_file_cache_events", metadata !1367, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !1038} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1513 = metadata !{i32 786445, metadata !1400, metadata !"error_log", metadata !1367, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1514 = metadata !{i32 786445, metadata !1400, metadata !"types_hash_max_size", metadata !1367, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1515 = metadata !{i32 786445, metadata !1400, metadata !"types_hash_bucket_size", metadata !1367, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1516 = metadata !{i32 786445, metadata !1400, metadata !"locations", metadata !1367, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1517 = metadata !{i32 786445, metadata !1366, metadata !"name", metadata !1367, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1518 = metadata !{i32 786445, metadata !623, metadata !"phase_handler", metadata !624, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !580} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1519 = metadata !{i32 786445, metadata !623, metadata !"content_handler", metadata !624, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1429} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1520 = metadata !{i32 786445, metadata !623, metadata !"access_code", metadata !624, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1521 = metadata !{i32 786445, metadata !623, metadata !"variables", metadata !624, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !598} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1522 = metadata !{i32 786445, metadata !623, metadata !"ncaptures", metadata !624, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1523 = metadata !{i32 786445, metadata !623, metadata !"captures", metadata !624, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1524} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1524 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1525 = metadata !{i32 786445, metadata !623, metadata !"captures_data", metadata !624, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1526 = metadata !{i32 786445, metadata !623, metadata !"limit_rate", metadata !624, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1527 = metadata !{i32 786445, metadata !623, metadata !"header_size", metadata !624, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1528 = metadata !{i32 786445, metadata !623, metadata !"request_length", metadata !624, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1529 = metadata !{i32 786445, metadata !623, metadata !"err_status", metadata !624, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1530 = metadata !{i32 786445, metadata !623, metadata !"http_connection", metadata !624, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1531} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1531 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1532} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1532 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !624, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1533} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1533 = metadata !{i32 786451, null, metadata !"", metadata !624, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1534, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1534 = metadata !{metadata !1535, metadata !1536, metadata !1538, metadata !1539, metadata !1540, metadata !1541}
!1535 = metadata !{i32 786445, metadata !1533, metadata !"request", metadata !624, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !638} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1536 = metadata !{i32 786445, metadata !1533, metadata !"busy", metadata !624, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1537} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1537 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1538 = metadata !{i32 786445, metadata !1533, metadata !"nbusy", metadata !624, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !580} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1539 = metadata !{i32 786445, metadata !1533, metadata !"free", metadata !624, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1537} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1540 = metadata !{i32 786445, metadata !1533, metadata !"nfree", metadata !624, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !580} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1541 = metadata !{i32 786445, metadata !1533, metadata !"pipeline", metadata !624, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1542 = metadata !{i32 786445, metadata !623, metadata !"log_handler", metadata !624, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1543} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1543 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !624, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1544} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1544 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1546 = metadata !{metadata !44, metadata !638, metadata !638, metadata !44, metadata !30}
!1547 = metadata !{i32 786445, metadata !623, metadata !"cleanup", metadata !624, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1548} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1548 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1549} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1549 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !624, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1550} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1550 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !624, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1551, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1551 = metadata !{metadata !1552, metadata !1553, metadata !1554}
!1552 = metadata !{i32 786445, metadata !1550, metadata !"handler", metadata !624, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1225} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1553 = metadata !{i32 786445, metadata !1550, metadata !"data", metadata !624, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1554 = metadata !{i32 786445, metadata !1550, metadata !"next", metadata !624, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1548} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1555 = metadata !{i32 786445, metadata !623, metadata !"subrequests", metadata !624, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1556 = metadata !{i32 786445, metadata !623, metadata !"count", metadata !624, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1557 = metadata !{i32 786445, metadata !623, metadata !"blocked", metadata !624, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1558 = metadata !{i32 786445, metadata !623, metadata !"aio", metadata !624, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1559 = metadata !{i32 786445, metadata !623, metadata !"http_state", metadata !624, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1560 = metadata !{i32 786445, metadata !623, metadata !"complex_uri", metadata !624, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1561 = metadata !{i32 786445, metadata !623, metadata !"quoted_uri", metadata !624, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1562 = metadata !{i32 786445, metadata !623, metadata !"plus_in_uri", metadata !624, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1563 = metadata !{i32 786445, metadata !623, metadata !"space_in_uri", metadata !624, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1564 = metadata !{i32 786445, metadata !623, metadata !"invalid_header", metadata !624, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1565 = metadata !{i32 786445, metadata !623, metadata !"add_uri_to_alias", metadata !624, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1566 = metadata !{i32 786445, metadata !623, metadata !"valid_location", metadata !624, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1567 = metadata !{i32 786445, metadata !623, metadata !"valid_unparsed_uri", metadata !624, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1568 = metadata !{i32 786445, metadata !623, metadata !"uri_changed", metadata !624, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1569 = metadata !{i32 786445, metadata !623, metadata !"uri_changes", metadata !624, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1570 = metadata !{i32 786445, metadata !623, metadata !"request_body_in_single_buf", metadata !624, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1571 = metadata !{i32 786445, metadata !623, metadata !"request_body_in_file_only", metadata !624, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1572 = metadata !{i32 786445, metadata !623, metadata !"request_body_in_persistent_file", metadata !624, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1573 = metadata !{i32 786445, metadata !623, metadata !"request_body_in_clean_file", metadata !624, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1574 = metadata !{i32 786445, metadata !623, metadata !"request_body_file_group_access", metadata !624, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1575 = metadata !{i32 786445, metadata !623, metadata !"request_body_file_log_level", metadata !624, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1576 = metadata !{i32 786445, metadata !623, metadata !"subrequest_in_memory", metadata !624, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1577 = metadata !{i32 786445, metadata !623, metadata !"waited", metadata !624, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1578 = metadata !{i32 786445, metadata !623, metadata !"cached", metadata !624, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1579 = metadata !{i32 786445, metadata !623, metadata !"gzip_tested", metadata !624, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1580 = metadata !{i32 786445, metadata !623, metadata !"gzip_ok", metadata !624, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1581 = metadata !{i32 786445, metadata !623, metadata !"gzip_vary", metadata !624, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1582 = metadata !{i32 786445, metadata !623, metadata !"proxy", metadata !624, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1583 = metadata !{i32 786445, metadata !623, metadata !"bypass_cache", metadata !624, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1584 = metadata !{i32 786445, metadata !623, metadata !"no_cache", metadata !624, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1585 = metadata !{i32 786445, metadata !623, metadata !"limit_conn_set", metadata !624, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1586 = metadata !{i32 786445, metadata !623, metadata !"limit_req_set", metadata !624, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1587 = metadata !{i32 786445, metadata !623, metadata !"pipeline", metadata !624, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1588 = metadata !{i32 786445, metadata !623, metadata !"plain_http", metadata !624, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1589 = metadata !{i32 786445, metadata !623, metadata !"chunked", metadata !624, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1590 = metadata !{i32 786445, metadata !623, metadata !"header_only", metadata !624, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1591 = metadata !{i32 786445, metadata !623, metadata !"keepalive", metadata !624, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1592 = metadata !{i32 786445, metadata !623, metadata !"lingering_close", metadata !624, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1593 = metadata !{i32 786445, metadata !623, metadata !"discard_body", metadata !624, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1594 = metadata !{i32 786445, metadata !623, metadata !"internal", metadata !624, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1595 = metadata !{i32 786445, metadata !623, metadata !"error_page", metadata !624, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1596 = metadata !{i32 786445, metadata !623, metadata !"ignore_content_encoding", metadata !624, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1597 = metadata !{i32 786445, metadata !623, metadata !"filter_finalize", metadata !624, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1598 = metadata !{i32 786445, metadata !623, metadata !"post_action", metadata !624, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1599 = metadata !{i32 786445, metadata !623, metadata !"request_complete", metadata !624, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1600 = metadata !{i32 786445, metadata !623, metadata !"request_output", metadata !624, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1601 = metadata !{i32 786445, metadata !623, metadata !"header_sent", metadata !624, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1602 = metadata !{i32 786445, metadata !623, metadata !"expect_tested", metadata !624, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1603 = metadata !{i32 786445, metadata !623, metadata !"root_tested", metadata !624, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1604 = metadata !{i32 786445, metadata !623, metadata !"done", metadata !624, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1605 = metadata !{i32 786445, metadata !623, metadata !"logged", metadata !624, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1606 = metadata !{i32 786445, metadata !623, metadata !"buffered", metadata !624, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1607 = metadata !{i32 786445, metadata !623, metadata !"main_filter_need_in_memory", metadata !624, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1608 = metadata !{i32 786445, metadata !623, metadata !"filter_need_in_memory", metadata !624, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1609 = metadata !{i32 786445, metadata !623, metadata !"filter_need_temporary", metadata !624, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1610 = metadata !{i32 786445, metadata !623, metadata !"allow_ranges", metadata !624, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1611 = metadata !{i32 786445, metadata !623, metadata !"state", metadata !624, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1612 = metadata !{i32 786445, metadata !623, metadata !"header_hash", metadata !624, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1613 = metadata !{i32 786445, metadata !623, metadata !"lowcase_index", metadata !624, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1614 = metadata !{i32 786445, metadata !623, metadata !"lowcase_header", metadata !624, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1615} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1615 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1616, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1616 = metadata !{metadata !1617}
!1617 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1618 = metadata !{i32 786445, metadata !623, metadata !"header_name_start", metadata !624, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1619 = metadata !{i32 786445, metadata !623, metadata !"header_name_end", metadata !624, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1620 = metadata !{i32 786445, metadata !623, metadata !"header_start", metadata !624, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1621 = metadata !{i32 786445, metadata !623, metadata !"header_end", metadata !624, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1622 = metadata !{i32 786445, metadata !623, metadata !"uri_start", metadata !624, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1623 = metadata !{i32 786445, metadata !623, metadata !"uri_end", metadata !624, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1624 = metadata !{i32 786445, metadata !623, metadata !"uri_ext", metadata !624, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1625 = metadata !{i32 786445, metadata !623, metadata !"args_start", metadata !624, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1626 = metadata !{i32 786445, metadata !623, metadata !"request_start", metadata !624, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1627 = metadata !{i32 786445, metadata !623, metadata !"request_end", metadata !624, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1628 = metadata !{i32 786445, metadata !623, metadata !"method_end", metadata !624, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1629 = metadata !{i32 786445, metadata !623, metadata !"schema_start", metadata !624, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1630 = metadata !{i32 786445, metadata !623, metadata !"schema_end", metadata !624, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1631 = metadata !{i32 786445, metadata !623, metadata !"host_start", metadata !624, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1632 = metadata !{i32 786445, metadata !623, metadata !"host_end", metadata !624, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1633 = metadata !{i32 786445, metadata !623, metadata !"port_start", metadata !624, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1634 = metadata !{i32 786445, metadata !623, metadata !"port_end", metadata !624, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1635 = metadata !{i32 786445, metadata !623, metadata !"http_minor", metadata !624, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1636 = metadata !{i32 786445, metadata !623, metadata !"http_major", metadata !624, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1637 = metadata !{i32 786445, metadata !613, metadata !"get_handler", metadata !519, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !1638} ; [ DW_TAG_member ] [get_handler] [line 38, size 32, align 32, offset 96] [from ngx_http_get_variable_pt]
!1638 = metadata !{i32 786454, null, metadata !"ngx_http_get_variable_pt", metadata !519, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !1639} ; [ DW_TAG_typedef ] [ngx_http_get_variable_pt] [line 25, size 0, align 0, offset 0] [from ]
!1639 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1640} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1640 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1641, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1641 = metadata !{metadata !580, metadata !621, metadata !598, metadata !27}
!1642 = metadata !{i32 786445, metadata !613, metadata !"data", metadata !519, i32 39, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 128] [from uintptr_t]
!1643 = metadata !{i32 786445, metadata !613, metadata !"flags", metadata !519, i32 40, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 40, size 32, align 32, offset 160] [from ngx_uint_t]
!1644 = metadata !{i32 786445, metadata !613, metadata !"index", metadata !519, i32 41, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 41, size 32, align 32, offset 192] [from ngx_uint_t]
!1645 = metadata !{i32 786688, metadata !463, metadata !"ctx", metadata !6, i32 104, metadata !1646, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 104]
!1646 = metadata !{i32 786454, null, metadata !"ngx_http_map_conf_ctx_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1647} ; [ DW_TAG_typedef ] [ngx_http_map_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1647 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 11, i64 1120, i64 32, i32 0, i32 0, null, metadata !1648, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 11, size 1120, align 32, offset 0] [from ]
!1648 = metadata !{metadata !1649, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1667}
!1649 = metadata !{i32 786445, metadata !1647, metadata !"keys", metadata !6, i32 12, i64 672, i64 32, i64 0, i32 0, metadata !1650} ; [ DW_TAG_member ] [keys] [line 12, size 672, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!1650 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !6, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !1651} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!1651 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !1652, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!1652 = metadata !{metadata !1653, metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1659, metadata !1660, metadata !1661}
!1653 = metadata !{i32 786445, metadata !1651, metadata !"hsize", metadata !479, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!1654 = metadata !{i32 786445, metadata !1651, metadata !"pool", metadata !479, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!1655 = metadata !{i32 786445, metadata !1651, metadata !"temp_pool", metadata !479, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!1656 = metadata !{i32 786445, metadata !1651, metadata !"keys", metadata !479, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!1657 = metadata !{i32 786445, metadata !1651, metadata !"keys_hash", metadata !479, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!1658 = metadata !{i32 786445, metadata !1651, metadata !"dns_wc_head", metadata !479, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!1659 = metadata !{i32 786445, metadata !1651, metadata !"dns_wc_head_hash", metadata !479, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!1660 = metadata !{i32 786445, metadata !1651, metadata !"dns_wc_tail", metadata !479, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!1661 = metadata !{i32 786445, metadata !1651, metadata !"dns_wc_tail_hash", metadata !479, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!1662 = metadata !{i32 786445, metadata !1647, metadata !"values_hash", metadata !6, i32 13, i64 32, i64 32, i64 672, i32 0, metadata !18} ; [ DW_TAG_member ] [values_hash] [line 13, size 32, align 32, offset 672] [from ]
!1663 = metadata !{i32 786445, metadata !1647, metadata !"var_values", metadata !6, i32 14, i64 160, i64 32, i64 704, i32 0, metadata !19} ; [ DW_TAG_member ] [var_values] [line 14, size 160, align 32, offset 704] [from ngx_array_t]
!1664 = metadata !{i32 786445, metadata !1647, metadata !"regexes", metadata !6, i32 16, i64 160, i64 32, i64 864, i32 0, metadata !19} ; [ DW_TAG_member ] [regexes] [line 16, size 160, align 32, offset 864] [from ngx_array_t]
!1665 = metadata !{i32 786445, metadata !1647, metadata !"default_value", metadata !6, i32 18, i64 32, i64 32, i64 1024, i32 0, metadata !598} ; [ DW_TAG_member ] [default_value] [line 18, size 32, align 32, offset 1024] [from ]
!1666 = metadata !{i32 786445, metadata !1647, metadata !"cf", metadata !6, i32 19, i64 32, i64 32, i64 1056, i32 0, metadata !11} ; [ DW_TAG_member ] [cf] [line 19, size 32, align 32, offset 1056] [from ]
!1667 = metadata !{i32 786445, metadata !1647, metadata !"hostnames", metadata !6, i32 21, i64 32, i64 32, i64 1088, i32 0, metadata !26} ; [ DW_TAG_member ] [hostnames] [line 21, size 32, align 32, offset 1088] [from ngx_uint_t]
!1668 = metadata !{i32 786688, metadata !463, metadata !"ccv", metadata !6, i32 105, metadata !1669, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccv] [line 105]
!1669 = metadata !{i32 786454, null, metadata !"ngx_http_compile_complex_value_t", metadata !6, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !1670} ; [ DW_TAG_typedef ] [ngx_http_compile_complex_value_t] [line 82, size 0, align 0, offset 0] [from ]
!1670 = metadata !{i32 786451, null, metadata !"", metadata !590, i32 74, i64 128, i64 32, i32 0, i32 0, null, metadata !1671, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 74, size 128, align 32, offset 0] [from ]
!1671 = metadata !{metadata !1672, metadata !1673, metadata !1674, metadata !1675, metadata !1676, metadata !1677}
!1672 = metadata !{i32 786445, metadata !1670, metadata !"cf", metadata !590, i32 75, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [cf] [line 75, size 32, align 32, offset 0] [from ]
!1673 = metadata !{i32 786445, metadata !1670, metadata !"value", metadata !590, i32 76, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [value] [line 76, size 32, align 32, offset 32] [from ]
!1674 = metadata !{i32 786445, metadata !1670, metadata !"complex_value", metadata !590, i32 77, i64 32, i64 32, i64 64, i32 0, metadata !1484} ; [ DW_TAG_member ] [complex_value] [line 77, size 32, align 32, offset 64] [from ]
!1675 = metadata !{i32 786445, metadata !1670, metadata !"zero", metadata !590, i32 79, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [zero] [line 79, size 1, align 32, offset 96] [from unsigned int]
!1676 = metadata !{i32 786445, metadata !1670, metadata !"conf_prefix", metadata !590, i32 80, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [conf_prefix] [line 80, size 1, align 32, offset 97] [from unsigned int]
!1677 = metadata !{i32 786445, metadata !1670, metadata !"root_prefix", metadata !590, i32 81, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [root_prefix] [line 81, size 1, align 32, offset 98] [from unsigned int]
!1678 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_map_cmp_dns_wildcards", metadata !"ngx_http_map_cmp_dns_wildcards", metadata !"", metadata !6, i32 220, metadata !1679, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @ngx_http_map_cmp_dns_wildcards, null, null, metadata !1683, i32 221} ; [ DW_TAG_subprogram ] [line 220] [local] [def] [scope 221] [ngx_http_map_cmp_dns_wildcards]
!1679 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1680, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1680 = metadata !{metadata !86, metadata !1681, metadata !1681}
!1681 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1682} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1682 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!1683 = metadata !{metadata !1684}
!1684 = metadata !{metadata !1685, metadata !1686, metadata !1687, metadata !1696}
!1685 = metadata !{i32 786689, metadata !1678, metadata !"one", metadata !6, i32 16777436, metadata !1681, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [one] [line 220]
!1686 = metadata !{i32 786689, metadata !1678, metadata !"two", metadata !6, i32 33554652, metadata !1681, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [two] [line 220]
!1687 = metadata !{i32 786688, metadata !1688, metadata !"first", metadata !6, i32 222, metadata !1689, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 222]
!1688 = metadata !{i32 786443, metadata !1678, i32 221, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1689 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1690} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_key_t]
!1690 = metadata !{i32 786454, null, metadata !"ngx_hash_key_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !1691} ; [ DW_TAG_typedef ] [ngx_hash_key_t] [line 39, size 0, align 0, offset 0] [from ]
!1691 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 35, i64 128, i64 32, i32 0, i32 0, null, metadata !1692, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 35, size 128, align 32, offset 0] [from ]
!1692 = metadata !{metadata !1693, metadata !1694, metadata !1695}
!1693 = metadata !{i32 786445, metadata !1691, metadata !"key", metadata !479, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!1694 = metadata !{i32 786445, metadata !1691, metadata !"key_hash", metadata !479, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [key_hash] [line 37, size 32, align 32, offset 64] [from ngx_uint_t]
!1695 = metadata !{i32 786445, metadata !1691, metadata !"value", metadata !479, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 38, size 32, align 32, offset 96] [from ]
!1696 = metadata !{i32 786688, metadata !1688, metadata !"second", metadata !6, i32 223, metadata !1689, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [second] [line 223]
!1697 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_map", metadata !"ngx_http_map", metadata !"", metadata !6, i32 229, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_map, null, null, metadata !1698, i32 230} ; [ DW_TAG_subprogram ] [line 229] [local] [def] [scope 230] [ngx_http_map]
!1698 = metadata !{metadata !1699}
!1699 = metadata !{metadata !1700, metadata !1701, metadata !1702, metadata !1703, metadata !1705, metadata !1706, metadata !1707, metadata !1708, metadata !1709, metadata !1710, metadata !1711, metadata !1713, metadata !1714, metadata !1716, metadata !1718, metadata !1719, metadata !1721, metadata !1722, metadata !1724, metadata !1725, metadata !1727, metadata !1728, metadata !1730, metadata !1731, metadata !1733, metadata !1734, metadata !1748, metadata !1749}
!1700 = metadata !{i32 786689, metadata !1697, metadata !"cf", metadata !6, i32 16777445, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 229]
!1701 = metadata !{i32 786689, metadata !1697, metadata !"dummy", metadata !6, i32 33554661, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dummy] [line 229]
!1702 = metadata !{i32 786689, metadata !1697, metadata !"conf", metadata !6, i32 50331877, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 229]
!1703 = metadata !{i32 786688, metadata !1704, metadata !"rc", metadata !6, i32 231, metadata !580, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 231]
!1704 = metadata !{i32 786443, metadata !1697, i32 230, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1705 = metadata !{i32 786688, metadata !1704, metadata !"index", metadata !6, i32 232, metadata !580, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 232]
!1706 = metadata !{i32 786688, metadata !1704, metadata !"value", metadata !6, i32 233, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 233]
!1707 = metadata !{i32 786688, metadata !1704, metadata !"file", metadata !6, i32 234, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 234]
!1708 = metadata !{i32 786688, metadata !1704, metadata !"name", metadata !6, i32 235, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 235]
!1709 = metadata !{i32 786688, metadata !1704, metadata !"i", metadata !6, i32 236, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 236]
!1710 = metadata !{i32 786688, metadata !1704, metadata !"key", metadata !6, i32 237, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 237]
!1711 = metadata !{i32 786688, metadata !1704, metadata !"ctx", metadata !6, i32 238, metadata !1712, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 238]
!1712 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1646} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_map_conf_ctx_t]
!1713 = metadata !{i32 786688, metadata !1704, metadata !"var", metadata !6, i32 239, metadata !598, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 239]
!1714 = metadata !{i32 786688, metadata !1704, metadata !"vp", metadata !6, i32 240, metadata !1715, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vp] [line 240]
!1715 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !598} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1716 = metadata !{i32 786688, metadata !1717, metadata !"__s1_len", metadata !6, i32 243, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 243]
!1717 = metadata !{i32 786443, metadata !1704, i32 243, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1718 = metadata !{i32 786688, metadata !1717, metadata !"__s2_len", metadata !6, i32 243, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 243]
!1719 = metadata !{i32 786688, metadata !1720, metadata !"__s1", metadata !6, i32 243, metadata !565, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 243]
!1720 = metadata !{i32 786443, metadata !1717, i32 243, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1721 = metadata !{i32 786688, metadata !1720, metadata !"__result", metadata !6, i32 243, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 243]
!1722 = metadata !{i32 786688, metadata !1723, metadata !"__s1_len", metadata !6, i32 251, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 251]
!1723 = metadata !{i32 786443, metadata !1704, i32 251, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1724 = metadata !{i32 786688, metadata !1723, metadata !"__s2_len", metadata !6, i32 251, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 251]
!1725 = metadata !{i32 786688, metadata !1726, metadata !"__s1", metadata !6, i32 251, metadata !565, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 251]
!1726 = metadata !{i32 786443, metadata !1723, i32 251, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1727 = metadata !{i32 786688, metadata !1726, metadata !"__result", metadata !6, i32 251, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 251]
!1728 = metadata !{i32 786688, metadata !1729, metadata !"__s1_len", metadata !6, i32 329, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 329]
!1729 = metadata !{i32 786443, metadata !1704, i32 329, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1730 = metadata !{i32 786688, metadata !1729, metadata !"__s2_len", metadata !6, i32 329, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 329]
!1731 = metadata !{i32 786688, metadata !1732, metadata !"__s1", metadata !6, i32 329, metadata !565, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 329]
!1732 = metadata !{i32 786443, metadata !1729, i32 329, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1733 = metadata !{i32 786688, metadata !1732, metadata !"__result", metadata !6, i32 329, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 329]
!1734 = metadata !{i32 786688, metadata !1735, metadata !"rc", metadata !6, i32 339, metadata !1736, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 339]
!1735 = metadata !{i32 786443, metadata !1704, i32 338, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1736 = metadata !{i32 786454, null, metadata !"ngx_regex_compile_t", metadata !6, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !1737} ; [ DW_TAG_typedef ] [ngx_regex_compile_t] [line 40, size 0, align 0, offset 0] [from ]
!1737 = metadata !{i32 786451, null, metadata !"", metadata !548, i32 29, i64 352, i64 32, i32 0, i32 0, null, metadata !1738, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 352, align 32, offset 0] [from ]
!1738 = metadata !{metadata !1739, metadata !1740, metadata !1741, metadata !1742, metadata !1743, metadata !1744, metadata !1745, metadata !1746, metadata !1747}
!1739 = metadata !{i32 786445, metadata !1737, metadata !"pattern", metadata !548, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [pattern] [line 30, size 64, align 32, offset 0] [from ngx_str_t]
!1740 = metadata !{i32 786445, metadata !1737, metadata !"pool", metadata !548, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 31, size 32, align 32, offset 64] [from ]
!1741 = metadata !{i32 786445, metadata !1737, metadata !"options", metadata !548, i32 32, i64 32, i64 32, i64 96, i32 0, metadata !580} ; [ DW_TAG_member ] [options] [line 32, size 32, align 32, offset 96] [from ngx_int_t]
!1742 = metadata !{i32 786445, metadata !1737, metadata !"regex", metadata !548, i32 34, i64 32, i64 32, i64 128, i32 0, metadata !545} ; [ DW_TAG_member ] [regex] [line 34, size 32, align 32, offset 128] [from ]
!1743 = metadata !{i32 786445, metadata !1737, metadata !"captures", metadata !548, i32 35, i64 32, i64 32, i64 160, i32 0, metadata !86} ; [ DW_TAG_member ] [captures] [line 35, size 32, align 32, offset 160] [from int]
!1744 = metadata !{i32 786445, metadata !1737, metadata !"named_captures", metadata !548, i32 36, i64 32, i64 32, i64 192, i32 0, metadata !86} ; [ DW_TAG_member ] [named_captures] [line 36, size 32, align 32, offset 192] [from int]
!1745 = metadata !{i32 786445, metadata !1737, metadata !"name_size", metadata !548, i32 37, i64 32, i64 32, i64 224, i32 0, metadata !86} ; [ DW_TAG_member ] [name_size] [line 37, size 32, align 32, offset 224] [from int]
!1746 = metadata !{i32 786445, metadata !1737, metadata !"names", metadata !548, i32 38, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [names] [line 38, size 32, align 32, offset 256] [from ]
!1747 = metadata !{i32 786445, metadata !1737, metadata !"err", metadata !548, i32 39, i64 64, i64 32, i64 288, i32 0, metadata !88} ; [ DW_TAG_member ] [err] [line 39, size 64, align 32, offset 288] [from ngx_str_t]
!1748 = metadata !{i32 786688, metadata !1735, metadata !"regex", metadata !6, i32 340, metadata !535, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regex] [line 340]
!1749 = metadata !{i32 786688, metadata !1735, metadata !"errstr", metadata !6, i32 341, metadata !1750, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errstr] [line 341]
!1750 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !45, metadata !1751, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from u_char]
!1751 = metadata !{metadata !1752}
!1752 = metadata !{i32 786465, i64 0, i64 1023}   ; [ DW_TAG_subrange_type ] [0, 1023]
!1753 = metadata !{i32 786478, i32 0, metadata !21, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !21, i32 32, metadata !1754, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1756, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!1754 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1755, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1755 = metadata !{metadata !580, metadata !18, metadata !34, metadata !26, metadata !30}
!1756 = metadata !{metadata !1757}
!1757 = metadata !{metadata !1758, metadata !1759, metadata !1760, metadata !1761}
!1758 = metadata !{i32 786689, metadata !1753, metadata !"array", metadata !21, i32 16777248, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!1759 = metadata !{i32 786689, metadata !1753, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!1760 = metadata !{i32 786689, metadata !1753, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1761 = metadata !{i32 786689, metadata !1753, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1762 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_map_variable", metadata !"ngx_http_map_variable", metadata !"", metadata !6, i32 54, metadata !1640, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_map_variable, null, null, metadata !1763, i32 55} ; [ DW_TAG_subprogram ] [line 54] [local] [def] [scope 55] [ngx_http_map_variable]
!1763 = metadata !{metadata !1764}
!1764 = metadata !{metadata !1765, metadata !1766, metadata !1767, metadata !1768, metadata !1770, metadata !1771}
!1765 = metadata !{i32 786689, metadata !1762, metadata !"r", metadata !6, i32 16777270, metadata !621, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 54]
!1766 = metadata !{i32 786689, metadata !1762, metadata !"v", metadata !6, i32 33554486, metadata !598, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 54]
!1767 = metadata !{i32 786689, metadata !1762, metadata !"data", metadata !6, i32 50331702, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 54]
!1768 = metadata !{i32 786688, metadata !1769, metadata !"map", metadata !6, i32 56, metadata !512, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [map] [line 56]
!1769 = metadata !{i32 786443, metadata !1762, i32 55, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1770 = metadata !{i32 786688, metadata !1769, metadata !"val", metadata !6, i32 57, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 57]
!1771 = metadata !{i32 786688, metadata !1769, metadata !"value", metadata !6, i32 58, metadata !598, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 58]
!1772 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_map_create_conf", metadata !"ngx_http_map_create_conf", metadata !"", metadata !6, i32 81, metadata !1773, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_map_create_conf, null, null, metadata !1775, i32 82} ; [ DW_TAG_subprogram ] [line 81] [local] [def] [scope 82] [ngx_http_map_create_conf]
!1773 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1774, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1774 = metadata !{metadata !24, metadata !11}
!1775 = metadata !{metadata !1776}
!1776 = metadata !{metadata !1777, metadata !1778}
!1777 = metadata !{i32 786689, metadata !1772, metadata !"cf", metadata !6, i32 16777297, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 81]
!1778 = metadata !{i32 786688, metadata !1779, metadata !"mcf", metadata !6, i32 83, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mcf] [line 83]
!1779 = metadata !{i32 786443, metadata !1772, i32 82, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1780 = metadata !{metadata !1781}
!1781 = metadata !{metadata !1782, metadata !1820, metadata !1824}
!1782 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_map_module", metadata !"ngx_http_map_module", metadata !"", metadata !6, i32 42, metadata !1783, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_map_module} ; [ DW_TAG_variable ] [ngx_http_map_module] [line 42] [def]
!1783 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1784} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1784 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1785, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1785 = metadata !{metadata !1786, metadata !1787, metadata !1788, metadata !1789, metadata !1790, metadata !1791, metadata !1792, metadata !1793, metadata !1794, metadata !1795, metadata !1796, metadata !1800, metadata !1804, metadata !1805, metadata !1806, metadata !1810, metadata !1811, metadata !1812, metadata !1813, metadata !1814, metadata !1815, metadata !1816, metadata !1817, metadata !1818, metadata !1819}
!1786 = metadata !{i32 786445, metadata !1784, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1787 = metadata !{i32 786445, metadata !1784, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1788 = metadata !{i32 786445, metadata !1784, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1789 = metadata !{i32 786445, metadata !1784, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1790 = metadata !{i32 786445, metadata !1784, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1791 = metadata !{i32 786445, metadata !1784, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1792 = metadata !{i32 786445, metadata !1784, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1793 = metadata !{i32 786445, metadata !1784, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1794 = metadata !{i32 786445, metadata !1784, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1795 = metadata !{i32 786445, metadata !1784, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1796 = metadata !{i32 786445, metadata !1784, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1797} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1797 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1798} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1798 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1799, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1799 = metadata !{metadata !580, metadata !137}
!1800 = metadata !{i32 786445, metadata !1784, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1801} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1801 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1802} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1802 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1803, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1803 = metadata !{metadata !580, metadata !203}
!1804 = metadata !{i32 786445, metadata !1784, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1801} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1805 = metadata !{i32 786445, metadata !1784, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1801} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1806 = metadata !{i32 786445, metadata !1784, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1807} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1807 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1808} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1809 = metadata !{null, metadata !203}
!1810 = metadata !{i32 786445, metadata !1784, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1807} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1811 = metadata !{i32 786445, metadata !1784, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1807} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1812 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1813 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1814 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1815 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1816 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1817 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1818 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1819 = metadata !{i32 786445, metadata !1784, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1820 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_map_commands", metadata !"ngx_http_map_commands", metadata !"", metadata !6, i32 32, metadata !1821, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_map_commands} ; [ DW_TAG_variable ] [ngx_http_map_commands] [line 32] [local] [def]
!1821 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !448, metadata !1822, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 896, align 32, offset 0] [from ngx_command_t]
!1822 = metadata !{metadata !1823}
!1823 = metadata !{i32 786465, i64 0, i64 3}      ; [ DW_TAG_subrange_type ] [0, 3]
!1824 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_map_module_ctx", metadata !"ngx_http_map_module_ctx", metadata !"", metadata !6, i32 33, metadata !1825, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_map_module_ctx} ; [ DW_TAG_variable ] [ngx_http_map_module_ctx] [line 33] [local] [def]
!1825 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1826} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1826 = metadata !{i32 786451, null, metadata !"", metadata !1380, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1827, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1827 = metadata !{metadata !1828, metadata !1832, metadata !1833, metadata !1835, metadata !1839, metadata !1840, metadata !1844, metadata !1845}
!1828 = metadata !{i32 786445, metadata !1826, metadata !"preconfiguration", metadata !1380, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1829} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1829 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1830} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1830 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1831, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1831 = metadata !{metadata !580, metadata !11}
!1832 = metadata !{i32 786445, metadata !1826, metadata !"postconfiguration", metadata !1380, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1829} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1833 = metadata !{i32 786445, metadata !1826, metadata !"create_main_conf", metadata !1380, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1834} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1834 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1773} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1835 = metadata !{i32 786445, metadata !1826, metadata !"init_main_conf", metadata !1380, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1836} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1836 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1837} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1837 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1838, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1838 = metadata !{metadata !9, metadata !11, metadata !24}
!1839 = metadata !{i32 786445, metadata !1826, metadata !"create_srv_conf", metadata !1380, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1834} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1840 = metadata !{i32 786445, metadata !1826, metadata !"merge_srv_conf", metadata !1380, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1841} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1841 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1842} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1842 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1843, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1843 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!1844 = metadata !{i32 786445, metadata !1826, metadata !"create_loc_conf", metadata !1380, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1834} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1845 = metadata !{i32 786445, metadata !1826, metadata !"merge_loc_conf", metadata !1380, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1841} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1846 = metadata !{i32 93, i32 0, metadata !5, null}
!1847 = metadata !{i32 98, i32 0, metadata !463, null}
!1848 = metadata !{i32 99, i32 0, metadata !463, null}
!1849 = metadata !{i32 101, i32 0, metadata !463, null}
!1850 = metadata !{i32 104, i32 0, metadata !463, null}
!1851 = metadata !{i32 105, i32 0, metadata !463, null}
!1852 = metadata !{i32 106, i32 0, metadata !463, null}
!1853 = metadata !{metadata !"int", metadata !1854}
!1854 = metadata !{metadata !"omnipotent char", metadata !1855}
!1855 = metadata !{metadata !"Simple C/C++ TBAA"}
!1856 = metadata !{i32 107, i32 0, metadata !1857, null}
!1857 = metadata !{i32 786443, metadata !463, i32 106, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1858 = metadata !{i32 108, i32 0, metadata !1857, null}
!1859 = metadata !{i32 109, i32 0, metadata !463, null}
!1860 = metadata !{i32 110, i32 0, metadata !1861, null}
!1861 = metadata !{i32 786443, metadata !463, i32 109, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1862 = metadata !{i32 111, i32 0, metadata !1861, null}
!1863 = metadata !{i32 113, i32 0, metadata !1864, null}
!1864 = metadata !{i32 786443, metadata !463, i32 112, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1865 = metadata !{i32 115, i32 0, metadata !463, null}
!1866 = metadata !{metadata !"any pointer", metadata !1854}
!1867 = metadata !{i32 116, i32 0, metadata !463, null}
!1868 = metadata !{i32 119, i32 0, metadata !463, null}
!1869 = metadata !{i32 120, i32 0, metadata !463, null}
!1870 = metadata !{i32 121, i32 0, metadata !463, null}
!1871 = metadata !{i32 122, i32 0, metadata !463, null}
!1872 = metadata !{i32 123, i32 0, metadata !463, null}
!1873 = metadata !{i32 124, i32 0, metadata !463, null}
!1874 = metadata !{i32 127, i32 0, metadata !463, null}
!1875 = metadata !{i32 128, i32 0, metadata !463, null}
!1876 = metadata !{i32 129, i32 0, metadata !463, null}
!1877 = metadata !{i32 130, i32 0, metadata !463, null}
!1878 = metadata !{i32 131, i32 0, metadata !463, null}
!1879 = metadata !{i32 134, i32 0, metadata !463, null}
!1880 = metadata !{i32 135, i32 0, metadata !463, null}
!1881 = metadata !{i32 136, i32 0, metadata !463, null}
!1882 = metadata !{i32 137, i32 0, metadata !463, null}
!1883 = metadata !{i32 140, i32 0, metadata !463, null}
!1884 = metadata !{i32 141, i32 0, metadata !463, null}
!1885 = metadata !{i32 142, i32 0, metadata !463, null}
!1886 = metadata !{i32 143, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !463, i32 142, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1888 = metadata !{i32 144, i32 0, metadata !1887, null}
!1889 = metadata !{i32 146, i32 0, metadata !463, null}
!1890 = metadata !{i32 147, i32 0, metadata !463, null}
!1891 = metadata !{i32 148, i32 0, metadata !1892, null}
!1892 = metadata !{i32 786443, metadata !463, i32 147, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1893 = metadata !{i32 149, i32 0, metadata !1892, null}
!1894 = metadata !{i32 151, i32 0, metadata !463, null}
!1895 = metadata !{i32 786689, metadata !1753, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, metadata !1894} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!1896 = metadata !{i32 32, i32 0, metadata !1753, metadata !1894}
!1897 = metadata !{i32 2}
!1898 = metadata !{i32 786689, metadata !1753, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !1894} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1899 = metadata !{i32 8}
!1900 = metadata !{i32 786689, metadata !1753, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, metadata !1894} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1901 = metadata !{i32 39, i32 0, metadata !1902, metadata !1894}
!1902 = metadata !{i32 786443, metadata !1753, i32 33, i32 0, metadata !21, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!1903 = metadata !{i32 40, i32 0, metadata !1902, metadata !1894}
!1904 = metadata !{i32 41, i32 0, metadata !1902, metadata !1894}
!1905 = metadata !{i32 42, i32 0, metadata !1902, metadata !1894}
!1906 = metadata !{i32 44, i32 0, metadata !1902, metadata !1894}
!1907 = metadata !{i32 45, i32 0, metadata !1902, metadata !1894}
!1908 = metadata !{i32 152, i32 0, metadata !1909, null}
!1909 = metadata !{i32 786443, metadata !463, i32 151, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1910 = metadata !{i32 153, i32 0, metadata !1909, null}
!1911 = metadata !{i32 156, i32 0, metadata !463, null}
!1912 = metadata !{i32 786689, metadata !1753, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, metadata !1911} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!1913 = metadata !{i32 32, i32 0, metadata !1753, metadata !1911}
!1914 = metadata !{i32 786689, metadata !1753, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !1911} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1915 = metadata !{i32 786689, metadata !1753, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, metadata !1911} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1916 = metadata !{i32 39, i32 0, metadata !1902, metadata !1911}
!1917 = metadata !{i32 40, i32 0, metadata !1902, metadata !1911}
!1918 = metadata !{i32 41, i32 0, metadata !1902, metadata !1911}
!1919 = metadata !{i32 42, i32 0, metadata !1902, metadata !1911}
!1920 = metadata !{i32 44, i32 0, metadata !1902, metadata !1911}
!1921 = metadata !{i32 45, i32 0, metadata !1902, metadata !1911}
!1922 = metadata !{i32 157, i32 0, metadata !1923, null}
!1923 = metadata !{i32 786443, metadata !463, i32 156, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1924 = metadata !{i32 158, i32 0, metadata !1923, null}
!1925 = metadata !{i32 161, i32 0, metadata !463, null}
!1926 = metadata !{i32 162, i32 0, metadata !463, null}
!1927 = metadata !{i32 163, i32 0, metadata !463, null}
!1928 = metadata !{i32 164, i32 0, metadata !463, null}
!1929 = metadata !{i64 0, i64 4, metadata !1866, i64 4, i64 4, metadata !1866, i64 8, i64 4, metadata !1866, i64 12, i64 4, metadata !1866, i64 16, i64 4, metadata !1866, i64 20, i64 4, metadata !1866, i64 24, i64 4, metadata !1866, i64 28, i64 4, metadata !1866, i64 32, i64 4, metadata !1853, i64 36, i64 4, metadata !1853, i64 40, i64 4, metadata !1866, i64 44, i64 4, metadata !1866}
!1930 = metadata !{i32 165, i32 0, metadata !463, null}
!1931 = metadata !{i32 166, i32 0, metadata !463, null}
!1932 = metadata !{i32 167, i32 0, metadata !463, null}
!1933 = metadata !{i32 168, i32 0, metadata !463, null}
!1934 = metadata !{i32 169, i32 0, metadata !463, null}
!1935 = metadata !{i32 170, i32 0, metadata !463, null}
!1936 = metadata !{i32 171, i32 0, metadata !463, null}
!1937 = metadata !{i32 172, i32 0, metadata !1938, null}
!1938 = metadata !{i32 786443, metadata !463, i32 171, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1939 = metadata !{i32 173, i32 0, metadata !1938, null}
!1940 = metadata !{i32 175, i32 0, metadata !463, null}
!1941 = metadata !{i32 176, i32 0, metadata !463, null}
!1942 = metadata !{i32 177, i32 0, metadata !463, null}
!1943 = metadata !{i32 178, i32 0, metadata !463, null}
!1944 = metadata !{i32 179, i32 0, metadata !463, null}
!1945 = metadata !{i32 180, i32 0, metadata !463, null}
!1946 = metadata !{i32 181, i32 0, metadata !463, null}
!1947 = metadata !{i32 182, i32 0, metadata !463, null}
!1948 = metadata !{i32 183, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !463, i32 182, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1950 = metadata !{i32 184, i32 0, metadata !1949, null}
!1951 = metadata !{i32 185, i32 0, metadata !1949, null}
!1952 = metadata !{i32 186, i32 0, metadata !1953, null}
!1953 = metadata !{i32 786443, metadata !1949, i32 185, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1954 = metadata !{i32 187, i32 0, metadata !1953, null}
!1955 = metadata !{i32 190, i32 0, metadata !463, null}
!1956 = metadata !{i32 191, i32 0, metadata !1957, null}
!1957 = metadata !{i32 786443, metadata !463, i32 190, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1958 = metadata !{i32 192, i32 0, metadata !1957, null}
!1959 = metadata !{i32 193, i32 0, metadata !1957, null}
!1960 = metadata !{i32 194, i32 0, metadata !1957, null}
!1961 = metadata !{i32 195, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !1957, i32 194, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1963 = metadata !{i32 196, i32 0, metadata !1962, null}
!1964 = metadata !{i32 198, i32 0, metadata !1957, null}
!1965 = metadata !{i32 199, i32 0, metadata !1957, null}
!1966 = metadata !{i32 200, i32 0, metadata !463, null}
!1967 = metadata !{i32 201, i32 0, metadata !1968, null}
!1968 = metadata !{i32 786443, metadata !463, i32 200, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1969 = metadata !{i32 202, i32 0, metadata !1968, null}
!1970 = metadata !{i32 203, i32 0, metadata !1968, null}
!1971 = metadata !{i32 204, i32 0, metadata !1968, null}
!1972 = metadata !{i32 205, i32 0, metadata !1973, null}
!1973 = metadata !{i32 786443, metadata !1968, i32 204, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1974 = metadata !{i32 206, i32 0, metadata !1973, null}
!1975 = metadata !{i32 208, i32 0, metadata !1968, null}
!1976 = metadata !{i32 209, i32 0, metadata !1968, null}
!1977 = metadata !{i32 211, i32 0, metadata !463, null}
!1978 = metadata !{i32 212, i32 0, metadata !1979, null}
!1979 = metadata !{i32 786443, metadata !463, i32 211, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1980 = metadata !{i32 213, i32 0, metadata !1979, null}
!1981 = metadata !{i32 214, i32 0, metadata !1979, null}
!1982 = metadata !{i32 216, i32 0, metadata !463, null}
!1983 = metadata !{i32 217, i32 0, metadata !463, null}
!1984 = metadata !{i32 218, i32 0, metadata !463, null}
!1985 = metadata !{i32 54, i32 0, metadata !1762, null}
!1986 = metadata !{i32 56, i32 0, metadata !1769, null}
!1987 = metadata !{i32 57, i32 0, metadata !1769, null}
!1988 = metadata !{i32 60, i32 0, metadata !1769, null}
!1989 = metadata !{i32 63, i32 0, metadata !1769, null}
!1990 = metadata !{i32 64, i32 0, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !1769, i32 63, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1992 = metadata !{i32 65, i32 0, metadata !1991, null}
!1993 = metadata !{i32 66, i32 0, metadata !1769, null}
!1994 = metadata !{i32 67, i32 0, metadata !1769, null}
!1995 = metadata !{i32 68, i32 0, metadata !1996, null}
!1996 = metadata !{i32 786443, metadata !1769, i32 67, i32 0, metadata !6, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!1997 = metadata !{i32 69, i32 0, metadata !1996, null}
!1998 = metadata !{i32 70, i32 0, metadata !1769, null}
!1999 = metadata !{i32 71, i32 0, metadata !2000, null}
!2000 = metadata !{i32 786443, metadata !1769, i32 70, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2001 = metadata !{i32 72, i32 0, metadata !2000, null}
!2002 = metadata !{%struct.ngx_variable_value_t* @ngx_http_variable_null_value}
!2003 = metadata !{i32 73, i32 0, metadata !2004, null}
!2004 = metadata !{i32 786443, metadata !2000, i32 72, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2005 = metadata !{i32 74, i32 0, metadata !2004, null}
!2006 = metadata !{i32 76, i32 0, metadata !1769, null}
!2007 = metadata !{i32 78, i32 0, metadata !1769, null}
!2008 = metadata !{i32 79, i32 0, metadata !1769, null}
!2009 = metadata !{i32 229, i32 0, metadata !1697, null}
!2010 = metadata !{i32 234, i32 0, metadata !1704, null}
!2011 = metadata !{i32 235, i32 0, metadata !1704, null}
!2012 = metadata !{i32 241, i32 0, metadata !1704, null}
!2013 = metadata !{i32 242, i32 0, metadata !1704, null}
!2014 = metadata !{i32 243, i32 0, metadata !1704, null}
!2015 = metadata !{i32 243, i32 0, metadata !1717, null}
!2016 = metadata !{i32 243, i32 0, metadata !2017, null}
!2017 = metadata !{i32 786443, metadata !2018, i32 243, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2018 = metadata !{i32 786443, metadata !1720, i32 243, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2019 = metadata !{i32 247, i32 0, metadata !1704, null}
!2020 = metadata !{i32 244, i32 0, metadata !2021, null}
!2021 = metadata !{i32 786443, metadata !1704, i32 243, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2022 = metadata !{i32 245, i32 0, metadata !2021, null}
!2023 = metadata !{i32 248, i32 0, metadata !2024, null}
!2024 = metadata !{i32 786443, metadata !1704, i32 247, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2025 = metadata !{i32 249, i32 0, metadata !2024, null}
!2026 = metadata !{i32 251, i32 0, metadata !1723, null}
!2027 = metadata !{i32 251, i32 0, metadata !2028, null}
!2028 = metadata !{i32 786443, metadata !2029, i32 251, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2029 = metadata !{i32 786443, metadata !1726, i32 251, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2030 = metadata !{i32 252, i32 0, metadata !2031, null}
!2031 = metadata !{i32 786443, metadata !1704, i32 251, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2032 = metadata !{i32 253, i32 0, metadata !2031, null}
!2033 = metadata !{i32 257, i32 0, metadata !2031, null}
!2034 = metadata !{i32 259, i32 0, metadata !1704, null}
!2035 = metadata !{i32 290, i32 0, metadata !2036, null}
!2036 = metadata !{i32 786443, metadata !1704, i32 290, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2037 = metadata !{i32 260, i32 0, metadata !2038, null}
!2038 = metadata !{i32 786443, metadata !1704, i32 259, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2039 = metadata !{i32 261, i32 0, metadata !2038, null}
!2040 = metadata !{i32 262, i32 0, metadata !2038, null}
!2041 = metadata !{i32 263, i32 0, metadata !2038, null}
!2042 = metadata !{i32 264, i32 0, metadata !2038, null}
!2043 = metadata !{i32 267, i32 0, metadata !2038, null}
!2044 = metadata !{i32 268, i32 0, metadata !2045, null}
!2045 = metadata !{i32 786443, metadata !2038, i32 268, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2046 = metadata !{i32 269, i32 0, metadata !2047, null}
!2047 = metadata !{i32 786443, metadata !2045, i32 268, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2048 = metadata !{i32 273, i32 0, metadata !2038, null}
!2049 = metadata !{i32 274, i32 0, metadata !2038, null}
!2050 = metadata !{i32 277, i32 0, metadata !2038, null}
!2051 = metadata !{i32 280, i32 0, metadata !2038, null}
!2052 = metadata !{i32 281, i32 0, metadata !2038, null}
!2053 = metadata !{i32 282, i32 0, metadata !2038, null}
!2054 = metadata !{i32 283, i32 0, metadata !2038, null}
!2055 = metadata !{i32 286, i32 0, metadata !2038, null}
!2056 = metadata !{i32 287, i32 0, metadata !2038, null}
!2057 = metadata !{i32 291, i32 0, metadata !2058, null}
!2058 = metadata !{i32 786443, metadata !2036, i32 290, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2059 = metadata !{i32 293, i32 0, metadata !1704, null}
!2060 = metadata !{i32 294, i32 0, metadata !1704, null}
!2061 = metadata !{i32 295, i32 0, metadata !1704, null}
!2062 = metadata !{i32 296, i32 0, metadata !2063, null}
!2063 = metadata !{i32 786443, metadata !2064, i32 296, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2064 = metadata !{i32 786443, metadata !1704, i32 295, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2065 = metadata !{i32 297, i32 0, metadata !2066, null}
!2066 = metadata !{i32 786443, metadata !2063, i32 296, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2067 = metadata !{i32 300, i32 0, metadata !2066, null}
!2068 = metadata !{i32 307, i32 0, metadata !2069, null}
!2069 = metadata !{i32 786443, metadata !1704, i32 306, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2070 = metadata !{i32 786689, metadata !1753, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, metadata !2068} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2071 = metadata !{i32 32, i32 0, metadata !1753, metadata !2068}
!2072 = metadata !{i32 4}
!2073 = metadata !{i32 786689, metadata !1753, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !2068} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2074 = metadata !{i32 786689, metadata !1753, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, metadata !2068} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2075 = metadata !{i32 39, i32 0, metadata !1902, metadata !2068}
!2076 = metadata !{i32 40, i32 0, metadata !1902, metadata !2068}
!2077 = metadata !{i32 41, i32 0, metadata !1902, metadata !2068}
!2078 = metadata !{i32 42, i32 0, metadata !1902, metadata !2068}
!2079 = metadata !{i32 44, i32 0, metadata !1902, metadata !2068}
!2080 = metadata !{i32 45, i32 0, metadata !1902, metadata !2068}
!2081 = metadata !{i32 311, i32 0, metadata !1704, null}
!2082 = metadata !{i32 312, i32 0, metadata !1704, null}
!2083 = metadata !{i32 315, i32 0, metadata !1704, null}
!2084 = metadata !{i32 316, i32 0, metadata !1704, null}
!2085 = metadata !{i32 317, i32 0, metadata !1704, null}
!2086 = metadata !{i32 320, i32 0, metadata !1704, null}
!2087 = metadata !{i32 322, i32 0, metadata !1704, null}
!2088 = metadata !{i32 323, i32 0, metadata !1704, null}
!2089 = metadata !{i32 324, i32 0, metadata !1704, null}
!2090 = metadata !{i32 327, i32 0, metadata !1704, null}
!2091 = metadata !{i32 329, i32 0, metadata !1729, null}
!2092 = metadata !{i32 329, i32 0, metadata !2093, null}
!2093 = metadata !{i32 786443, metadata !2094, i32 329, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2094 = metadata !{i32 786443, metadata !1732, i32 329, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2095 = metadata !{i32 330, i32 0, metadata !2096, null}
!2096 = metadata !{i32 786443, metadata !1704, i32 329, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2097 = metadata !{i32 331, i32 0, metadata !2098, null}
!2098 = metadata !{i32 786443, metadata !2096, i32 330, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2099 = metadata !{i32 332, i32 0, metadata !2098, null}
!2100 = metadata !{i32 334, i32 0, metadata !2096, null}
!2101 = metadata !{i32 335, i32 0, metadata !2096, null}
!2102 = metadata !{i32 338, i32 0, metadata !1704, null}
!2103 = metadata !{i32 339, i32 0, metadata !1735, null}
!2104 = metadata !{i32 341, i32 0, metadata !1735, null}
!2105 = metadata !{i32 342, i32 0, metadata !1735, null}
!2106 = metadata !{i32 343, i32 0, metadata !1735, null}
!2107 = metadata !{i32 346, i32 0, metadata !1735, null}
!2108 = metadata !{i32 347, i32 0, metadata !1735, null}
!2109 = metadata !{i32 348, i32 0, metadata !1735, null}
!2110 = metadata !{i32 349, i32 0, metadata !1735, null}
!2111 = metadata !{i32 350, i32 0, metadata !2112, null}
!2112 = metadata !{i32 786443, metadata !1735, i32 349, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2113 = metadata !{i32 351, i32 0, metadata !2112, null}
!2114 = metadata !{i32 352, i32 0, metadata !2112, null}
!2115 = metadata !{i32 353, i32 0, metadata !2112, null}
!2116 = metadata !{i32 354, i32 0, metadata !1735, null}
!2117 = metadata !{i32 355, i32 0, metadata !1735, null}
!2118 = metadata !{i32 356, i32 0, metadata !1735, null}
!2119 = metadata !{i32 357, i32 0, metadata !1735, null}
!2120 = metadata !{i32 358, i32 0, metadata !1735, null}
!2121 = metadata !{i32 361, i32 0, metadata !1735, null}
!2122 = metadata !{i32 362, i32 0, metadata !1735, null}
!2123 = metadata !{i32 366, i32 0, metadata !2124, null}
!2124 = metadata !{i32 786443, metadata !1704, i32 365, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2125 = metadata !{i32 367, i32 0, metadata !2124, null}
!2126 = metadata !{i32 368, i32 0, metadata !2124, null}
!2127 = metadata !{i32 369, i32 0, metadata !1704, null}
!2128 = metadata !{i32 370, i32 0, metadata !1704, null}
!2129 = metadata !{i32 374, i32 0, metadata !2130, null}
!2130 = metadata !{i32 786443, metadata !1704, i32 373, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2131 = metadata !{i32 376, i32 0, metadata !1704, null}
!2132 = metadata !{i32 377, i32 0, metadata !2133, null}
!2133 = metadata !{i32 786443, metadata !1704, i32 376, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_map_module.c]
!2134 = metadata !{i32 378, i32 0, metadata !2133, null}
!2135 = metadata !{i32 379, i32 0, metadata !1704, null}
!2136 = metadata !{i32 380, i32 0, metadata !1704, null}
!2137 = metadata !{i32 220, i32 0, metadata !1678, null}
!2138 = metadata !{i32 226, i32 0, metadata !1688, null}
!2139 = metadata !{i32 81, i32 0, metadata !1772, null}
!2140 = metadata !{i32 84, i32 0, metadata !1779, null}
!2141 = metadata !{i32 85, i32 0, metadata !1779, null}
!2142 = metadata !{i32 88, i32 0, metadata !1779, null}
!2143 = metadata !{i32 89, i32 0, metadata !1779, null}
!2144 = metadata !{i32 90, i32 0, metadata !1779, null}
!2145 = metadata !{i32 91, i32 0, metadata !1779, null}
