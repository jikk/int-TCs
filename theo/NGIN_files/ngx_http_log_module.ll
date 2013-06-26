; ModuleID = 'src/http/modules/ngx_http_log_module.c'
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
%struct.ngx_http_log_var_t = type { %struct.ngx_str_t, i32, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* }
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
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, %struct.ngx_http_regex_t*, i8, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s**, i8**, i32, i8**, i32 (%struct.ngx_http_request_s*)*, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_resolver_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_array_s*, i32, %struct.ngx_http_complex_value_t*, %struct.ngx_array_s*, %struct.ngx_http_try_file_t*, %struct.ngx_path_t*, %struct.ngx_open_file_cache_t*, i32, i32, i32, i32, %struct.ngx_log_s*, i32, i32, %struct.ngx_queue_s* }
%struct.ngx_http_location_tree_node_s = type { %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s*, %struct.ngx_http_core_loc_conf_s*, i8, i8, [1 x i8] }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, i32*, i8*, i8* }
%struct.ngx_http_try_file_t = type { %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_str_t, [2 x i8] }
%struct.ngx_open_file_cache_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, i32, i32, i32 }
%struct.ngx_variable_value_t = type { [4 x i8], i8* }
%struct.ngx_http_connection_t = type { %struct.ngx_http_request_s*, %struct.ngx_buf_s**, i32, %struct.ngx_buf_s**, i32, i32 }
%struct.ngx_http_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_http_cleanup_s* }
%struct.ngx_http_log_op_s = type { i32, i32 (%struct.ngx_http_request_s*, i32)*, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)*, i32 }
%struct.ngx_time_t = type { i32, i32, i32 }
%struct.ngx_http_log_fmt_t = type { %struct.ngx_str_t, %struct.ngx_array_s*, %struct.ngx_array_s* }
%struct.ngx_http_script_compile_t = type { %struct.ngx_conf_s*, %struct.ngx_str_t*, %struct.ngx_array_s**, %struct.ngx_array_s**, %struct.ngx_array_s**, i32, i32, i32, i32, i8*, i8 }
%struct.ngx_http_log_script_t = type { %struct.ngx_array_s*, %struct.ngx_array_s* }
%struct.ngx_http_log_t = type { %struct.ngx_open_file_s*, %struct.ngx_http_log_script_t*, i32, i32, %struct.ngx_http_log_fmt_t* }
%struct.ngx_open_file_info_t = type { i32, i64, i32, i64, i64, i64, i32, i32, i8*, i32, i32, i32, i8, i8 }

@ngx_http_log_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* @ngx_http_log_init, i8* (%struct.ngx_conf_s*)* @ngx_http_log_create_main_conf, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_log_create_loc_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_log_merge_loc_conf }, align 4
@ngx_http_log_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_log_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([4 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_log_commands to [4 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"log_format\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"access_log\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"open_log_file_cache\00", align 1
@ngx_http_log_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str, i32 0, i32 0) }, i32 234885120, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_log_set_format, i32 0, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0) }, i32 -838860786, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_log_set_log, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 19, i8* getelementptr inbounds ([20 x i8]* @.str2, i32 0, i32 0) }, i32 234881054, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_log_open_file_cache, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str3 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"max=\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"inactive=\00", align 1
@.str6 = private unnamed_addr constant [10 x i8] c"min_uses=\00", align 1
@.str7 = private unnamed_addr constant [7 x i8] c"valid=\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str9 = private unnamed_addr constant [45 x i8] c"invalid \22open_log_file_cache\22 parameter \22%V\22\00", align 1
@.str10 = private unnamed_addr constant [48 x i8] c"\22open_log_file_cache\22 must have \22max\22 parameter\00", align 1
@0 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@.str11 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@.str13 = private unnamed_addr constant [24 x i8] c"unknown log format \22%V\22\00", align 1
@.str14 = private unnamed_addr constant [8 x i8] c"buffer=\00", align 1
@.str15 = private unnamed_addr constant [44 x i8] c"buffered logs cannot have variables in name\00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"invalid buffer value \22%V\22\00", align 1
@.str17 = private unnamed_addr constant [59 x i8] c"access_log \22%V\22 already defined with different buffer size\00", align 1
@.str18 = private unnamed_addr constant [60 x i8] c"the \22log_format\22 directive may be used only on \22http\22 level\00", align 1
@.str19 = private unnamed_addr constant [33 x i8] c"duplicate \22log_format\22 name \22%V\22\00", align 1
@.str20 = private unnamed_addr constant [48 x i8] c"the closing bracket in \22%V\22 variable is missing\00", align 1
@.str21 = private unnamed_addr constant [18 x i8] c"apache_bytes_sent\00", align 1
@.str22 = private unnamed_addr constant [55 x i8] c"use \22$body_bytes_sent\22 instead of \22$apache_bytes_sent\22\00", align 1
@ngx_http_log_vars = internal unnamed_addr constant [13 x %struct.ngx_http_log_var_t] [%struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str24, i32 0, i32 0) }, i32 11, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_connection }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 19, i8* getelementptr inbounds ([20 x i8]* @.str25, i32 0, i32 0) }, i32 11, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_connection_requests }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str26, i32 0, i32 0) }, i32 1, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_pipe }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str27, i32 0, i32 0) }, i32 26, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_time }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str28, i32 0, i32 0) }, i32 25, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_iso8601 }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0) }, i32 15, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_msec }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str30, i32 0, i32 0) }, i32 15, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_request_time }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str31, i32 0, i32 0) }, i32 11, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_status }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str32, i32 0, i32 0) }, i32 20, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_bytes_sent }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str33, i32 0, i32 0) }, i32 20, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_body_bytes_sent }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str21, i32 0, i32 0) }, i32 20, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_body_bytes_sent }, %struct.ngx_http_log_var_t { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str34, i32 0, i32 0) }, i32 11, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_request_length }, %struct.ngx_http_log_var_t zeroinitializer], align 4
@.str23 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%s\22\00", align 1
@1 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@2 = internal unnamed_addr constant [10 x i8] c"uintptr_t\00"
@ngx_http_log_escape.hex = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@ngx_http_log_escape.escape = internal unnamed_addr constant [8 x i32] [i32 -1, i32 4, i32 268435456, i32 -2147483648, i32 -1, i32 -1, i32 -1, i32 -1], align 4
@3 = internal unnamed_addr constant [3 x i8] c"<<\00"
@4 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str24 = private unnamed_addr constant [11 x i8] c"connection\00", align 1
@.str25 = private unnamed_addr constant [20 x i8] c"connection_requests\00", align 1
@.str26 = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str27 = private unnamed_addr constant [11 x i8] c"time_local\00", align 1
@.str28 = private unnamed_addr constant [13 x i8] c"time_iso8601\00", align 1
@.str29 = private unnamed_addr constant [5 x i8] c"msec\00", align 1
@.str30 = private unnamed_addr constant [13 x i8] c"request_time\00", align 1
@.str31 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str32 = private unnamed_addr constant [11 x i8] c"bytes_sent\00", align 1
@.str33 = private unnamed_addr constant [16 x i8] c"body_bytes_sent\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"request_length\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"%O\00", align 1
@.str36 = private unnamed_addr constant [6 x i8] c"%03ui\00", align 1
@ngx_cached_time = external global %struct.ngx_time_t*
@5 = internal unnamed_addr constant [2 x i8] c"*\00"
@6 = internal unnamed_addr constant [5 x i8] c"long\00"
@7 = internal unnamed_addr constant [2 x i8] c"+\00"
@8 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@9 = internal unnamed_addr constant [15 x i8] c"ngx_msec_int_t\00"
@.str37 = private unnamed_addr constant [8 x i8] c"%T.%03M\00", align 1
@ngx_cached_http_log_iso8601 = external global %struct.ngx_str_t
@ngx_cached_http_log_time = external global %struct.ngx_str_t
@.str38 = private unnamed_addr constant [4 x i8] c"%ui\00", align 1
@.str39 = private unnamed_addr constant [4 x i8] c"%uA\00", align 1
@ngx_http_access_log = internal global %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str40, i32 0, i32 0) }, align 4
@.str40 = private unnamed_addr constant [16 x i8] c"logs/access.log\00", align 1
@ngx_http_combined_fmt = internal unnamed_addr constant %struct.ngx_str_t { i32 112, i8* getelementptr inbounds ([113 x i8]* @.str45, i32 0, i32 0) }, align 8
@ngx_http_core_module = external global %struct.ngx_module_s
@10 = internal unnamed_addr constant [3 x i8] c"+=\00"
@11 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str41 = private unnamed_addr constant [23 x i8] c"write() to \22%s\22 failed\00", align 1
@.str42 = private unnamed_addr constant [42 x i8] c"write() to \22%s\22 was incomplete: %z of %uz\00", align 1
@12 = internal unnamed_addr constant [11 x i8] c"ngx_flag_t\00"
@.str43 = private unnamed_addr constant [30 x i8] c"testing \22%s\22 existence failed\00", align 1
@13 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str44 = private unnamed_addr constant [15 x i8] c"%s \22%s\22 failed\00", align 1
@14 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@15 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@16 = internal unnamed_addr constant [8 x i8] c"ssize_t\00"
@17 = internal unnamed_addr constant [4 x i8] c"int\00"
@18 = internal unnamed_addr constant [39 x i8] c"src/http/modules/ngx_http_log_module.c\00"
@.str45 = private unnamed_addr constant [113 x i8] c"$remote_addr - $remote_user [$time_local] \22$request\22 $status $body_bytes_sent \22$http_referer\22 \22$http_user_agent\22\00", align 1

define internal i8* @ngx_http_log_set_format(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !600), !dbg !2146
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !601), !dbg !2146
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !602), !dbg !2146
  %cmd_type = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 9, !dbg !2147
  %0 = load i32* %cmd_type, align 4, !dbg !2147, !tbaa !2148
  %cmp = icmp eq i32 %0, 33554432, !dbg !2147
  br i1 %cmp, label %if.end, label %cont2, !dbg !2147

cont2:                                            ; preds = %entry
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 5, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([60 x i8]* @.str18, i32 0, i32 0)) nounwind, !dbg !2151
  br label %if.end, !dbg !2153

if.end:                                           ; preds = %entry, %cont2
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2154
  %1 = load %struct.ngx_array_s** %args, align 4, !dbg !2154, !tbaa !2155
  %elts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 0, !dbg !2154
  %2 = load i8** %elts, align 4, !dbg !2154, !tbaa !2155
  %formats = bitcast i8* %conf to %struct.ngx_array_s*, !dbg !2156
  %elts3 = bitcast i8* %conf to i8**, !dbg !2156
  %3 = load i8** %elts3, align 4, !dbg !2156, !tbaa !2155
  %4 = bitcast i8* %3 to %struct.ngx_http_log_fmt_t*, !dbg !2156
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_fmt_t* %4}, i64 0, metadata !607), !dbg !2156
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !606), !dbg !2157
  %nelts = getelementptr inbounds i8* %conf, i32 4, !dbg !2157
  %5 = bitcast i8* %nelts to i32*, !dbg !2157
  %6 = load i32* %5, align 4, !dbg !2157, !tbaa !2148
  %cmp783 = icmp eq i32 %6, 0, !dbg !2157
  br i1 %cmp783, label %for.end, label %for.body.lr.ph, !dbg !2157

for.body.lr.ph:                                   ; preds = %if.end
  %arrayidx8 = getelementptr inbounds i8* %2, i32 8, !dbg !2158
  %len9 = bitcast i8* %arrayidx8 to i32*, !dbg !2158
  %data14 = getelementptr inbounds i8* %2, i32 12, !dbg !2159
  %7 = bitcast i8* %data14 to i8**, !dbg !2159
  br label %for.body, !dbg !2157

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %8 = phi i32 [ %6, %for.body.lr.ph ], [ %16, %for.cond.backedge ]
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %14, %for.cond.backedge ]
  %len = getelementptr inbounds %struct.ngx_http_log_fmt_t* %4, i32 %i.084, i32 0, i32 0, !dbg !2158
  %9 = load i32* %len, align 4, !dbg !2158, !tbaa !2148
  %10 = load i32* %len9, align 4, !dbg !2158, !tbaa !2148
  %cmp10 = icmp eq i32 %9, %10, !dbg !2158
  br i1 %cmp10, label %land.lhs.true, label %for.inc, !dbg !2158

land.lhs.true:                                    ; preds = %for.body
  %data = getelementptr inbounds %struct.ngx_http_log_fmt_t* %4, i32 %i.084, i32 0, i32 1, !dbg !2159
  %11 = load i8** %data, align 4, !dbg !2159, !tbaa !2155
  %12 = load i8** %7, align 4, !dbg !2159, !tbaa !2155
  %call = tail call i32 @strcmp(i8* %11, i8* %12) nounwind, !dbg !2159
  %cmp15 = icmp eq i32 %call, 0, !dbg !2159
  br i1 %cmp15, label %cont18, label %for.inc, !dbg !2159

cont18:                                           ; preds = %land.lhs.true
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([33 x i8]* @.str19, i32 0, i32 0), i8* %arrayidx8) nounwind, !dbg !2160
  br label %return, !dbg !2162

for.inc:                                          ; preds = %for.body, %land.lhs.true
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.084, i32 1), !dbg !2157
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !2157
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !2157
  br i1 %15, label %ioc_bb23, label %for.cond.backedge, !dbg !2157

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb23
  %16 = phi i32 [ %8, %for.inc ], [ %.pre, %ioc_bb23 ], !dbg !2157
  %cmp7 = icmp ult i32 %14, %16, !dbg !2157
  br i1 %cmp7, label %for.body, label %for.end, !dbg !2157

ioc_bb23:                                         ; preds = %for.inc
  %17 = zext i32 %i.084 to i64, !dbg !2157
  tail call void @__ioc_report_add_overflow(i32 682, i32 43, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %17, i64 1, i8 5) nounwind, !dbg !2157
  %.pre = load i32* %5, align 4, !dbg !2157, !tbaa !2148
  br label %for.cond.backedge, !dbg !2157

for.end:                                          ; preds = %for.cond.backedge, %if.end
  %call26 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %formats) nounwind, !dbg !2163
  %cmp27 = icmp eq i8* %call26, null, !dbg !2164
  br i1 %cmp27, label %return, label %if.end31, !dbg !2164

if.end31:                                         ; preds = %for.end
  %arrayidx33 = getelementptr inbounds i8* %2, i32 8, !dbg !2165
  %18 = bitcast i8* %arrayidx33 to i64*, !dbg !2165
  %19 = bitcast i8* %call26 to i64*, !dbg !2165
  %20 = load i64* %18, align 4, !dbg !2165
  store i64 %20, i64* %19, align 4, !dbg !2165
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2166
  %21 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2166, !tbaa !2155
  %call36 = tail call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %21, i32 4, i32 4) nounwind, !dbg !2166
  %flushes = getelementptr inbounds i8* %call26, i32 8, !dbg !2166
  %22 = bitcast i8* %flushes to %struct.ngx_array_s**, !dbg !2166
  store %struct.ngx_array_s* %call36, %struct.ngx_array_s** %22, align 4, !dbg !2166, !tbaa !2155
  %cmp38 = icmp eq %struct.ngx_array_s* %call36, null, !dbg !2167
  br i1 %cmp38, label %return, label %cont45, !dbg !2167

cont45:                                           ; preds = %if.end31
  %23 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2168, !tbaa !2155
  %call46 = tail call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %23, i32 16, i32 16) nounwind, !dbg !2168
  %ops = getelementptr inbounds i8* %call26, i32 12, !dbg !2168
  %24 = bitcast i8* %ops to %struct.ngx_array_s**, !dbg !2168
  store %struct.ngx_array_s* %call46, %struct.ngx_array_s** %24, align 4, !dbg !2168, !tbaa !2155
  %cmp48 = icmp eq %struct.ngx_array_s* %call46, null, !dbg !2169
  br i1 %cmp48, label %return, label %cont57, !dbg !2169

cont57:                                           ; preds = %cont45
  %25 = load %struct.ngx_array_s** %args, align 4, !dbg !2170, !tbaa !2155
  %26 = load %struct.ngx_array_s** %22, align 4, !dbg !2170, !tbaa !2155
  %call58 = tail call fastcc i8* @ngx_http_log_compile_format(%struct.ngx_conf_s* %cf, %struct.ngx_array_s* %26, %struct.ngx_array_s* %call46, %struct.ngx_array_s* %25, i32 2), !dbg !2170
  br label %return, !dbg !2170

return:                                           ; preds = %cont45, %if.end31, %for.end, %cont57, %cont18
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont18 ], [ %call58, %cont57 ], [ inttoptr (i32 -1 to i8*), %for.end ], [ inttoptr (i32 -1 to i8*), %if.end31 ], [ inttoptr (i32 -1 to i8*), %cont45 ]
  ret i8* %retval.0, !dbg !2171
}

define internal i8* @ngx_http_log_set_log(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  %name = alloca %struct.ngx_str_t, align 8
  %sc = alloca %struct.ngx_http_script_compile_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !519), !dbg !2172
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !520), !dbg !2172
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !521), !dbg !2172
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %name}, metadata !528), !dbg !2173
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_compile_t* %sc}, metadata !560), !dbg !2174
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2175
  %0 = load %struct.ngx_array_s** %args, align 4, !dbg !2175, !tbaa !2155
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !2175
  %1 = load i8** %elts, align 4, !dbg !2175, !tbaa !2155
  %2 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str8 to i32)), !dbg !2176
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !2176
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !2176
  br i1 %4, label %ioc_bb, label %cont2, !dbg !2176

ioc_bb:                                           ; preds = %entry
  call void @__ioc_report_sub_overflow(i32 573, i32 7, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str8 to i32) to i64), i8 5) nounwind, !dbg !2176
  br label %cont2, !dbg !2176

cont2:                                            ; preds = %ioc_bb, %entry
  %cmp = icmp eq i32 %3, 1, !dbg !2176
  %data = getelementptr inbounds i8* %1, i32 12, !dbg !2177
  %5 = bitcast i8* %data to i8**, !dbg !2177
  %6 = load i8** %5, align 4, !dbg !2177, !tbaa !2155
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2176

cond.true:                                        ; preds = %cont2
  call void @llvm.dbg.value(metadata !2178, i64 0, metadata !586), !dbg !2176
  call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !587), !dbg !2177
  %7 = load i8* %6, align 1, !dbg !2177, !tbaa !2149
  %conv = zext i8 %7 to i32, !dbg !2177
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 111), !dbg !2177
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !2177
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !2177
  br i1 %10, label %ioc_bb8, label %land.lhs.true14, !dbg !2177

ioc_bb8:                                          ; preds = %cond.true
  %11 = zext i8 %7 to i64, !dbg !2177
  call void @__ioc_report_sub_overflow(i32 573, i32 7, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %11, i64 111, i8 13) nounwind, !dbg !2177
  br label %land.lhs.true14, !dbg !2177

land.lhs.true14:                                  ; preds = %cond.true, %ioc_bb8
  call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !589), !dbg !2177
  %cmp15 = icmp eq i32 %9, 0, !dbg !2177
  br i1 %cmp15, label %if.then, label %if.end69, !dbg !2177

if.then:                                          ; preds = %land.lhs.true14
  %arrayidx17 = getelementptr inbounds i8* %6, i32 1, !dbg !2179
  %12 = load i8* %arrayidx17, align 1, !dbg !2179, !tbaa !2149
  %conv18 = zext i8 %12 to i32, !dbg !2179
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv18, i32 102), !dbg !2179
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !2179
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !2179
  br i1 %15, label %ioc_bb20, label %land.lhs.true26, !dbg !2179

ioc_bb20:                                         ; preds = %if.then
  %16 = zext i8 %12 to i64, !dbg !2179
  call void @__ioc_report_sub_overflow(i32 573, i32 7, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %16, i64 102, i8 13) nounwind, !dbg !2179
  br label %land.lhs.true26, !dbg !2179

land.lhs.true26:                                  ; preds = %if.then, %ioc_bb20
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !589), !dbg !2179
  %cmp27 = icmp eq i32 %14, 0, !dbg !2179
  br i1 %cmp27, label %if.then29, label %if.end69, !dbg !2179

if.then29:                                        ; preds = %land.lhs.true26
  %arrayidx30 = getelementptr inbounds i8* %6, i32 2, !dbg !2181
  %17 = load i8* %arrayidx30, align 1, !dbg !2181, !tbaa !2149
  %conv31 = zext i8 %17 to i32, !dbg !2181
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv31, i32 102), !dbg !2181
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !2181
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !2181
  br i1 %20, label %ioc_bb33, label %land.lhs.true39, !dbg !2181

ioc_bb33:                                         ; preds = %if.then29
  %21 = zext i8 %17 to i64, !dbg !2181
  call void @__ioc_report_sub_overflow(i32 573, i32 7, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %21, i64 102, i8 13) nounwind, !dbg !2181
  br label %land.lhs.true39, !dbg !2181

land.lhs.true39:                                  ; preds = %if.then29, %ioc_bb33
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !589), !dbg !2181
  %cmp40 = icmp eq i32 %19, 0, !dbg !2181
  br i1 %cmp40, label %if.then42, label %if.end69, !dbg !2181

if.then42:                                        ; preds = %land.lhs.true39
  %arrayidx43 = getelementptr inbounds i8* %6, i32 3, !dbg !2181
  %22 = load i8* %arrayidx43, align 1, !dbg !2181, !tbaa !2149
  %conv44 = zext i8 %22 to i32, !dbg !2181
  call void @llvm.dbg.value(metadata !{i32 %conv44}, i64 0, metadata !589), !dbg !2181
  br label %cond.end, !dbg !2181

cond.false:                                       ; preds = %cont2
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !2181
  br label %cond.end, !dbg !2181

cond.end:                                         ; preds = %if.then42, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ %conv44, %if.then42 ], !dbg !2181
  %cmp52 = icmp eq i32 %cond, 0, !dbg !2181
  br i1 %cmp52, label %cont56, label %if.end69, !dbg !2181

cont56:                                           ; preds = %cond.end
  %off = getelementptr inbounds i8* %conf, i32 16, !dbg !2183
  %23 = bitcast i8* %off to i32*, !dbg !2183
  store i32 1, i32* %23, align 4, !dbg !2183, !tbaa !2148
  %24 = load %struct.ngx_array_s** %args, align 4, !dbg !2185, !tbaa !2155
  %nelts = getelementptr inbounds %struct.ngx_array_s* %24, i32 0, i32 1, !dbg !2185
  %25 = load i32* %nelts, align 4, !dbg !2185, !tbaa !2148
  %cmp60 = icmp eq i32 %25, 2, !dbg !2185
  br i1 %cmp60, label %return, label %cont65, !dbg !2185

cont65:                                           ; preds = %cont56
  %arrayidx66 = getelementptr inbounds i8* %1, i32 16, !dbg !2186
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str11, i32 0, i32 0), i8* %arrayidx66) nounwind, !dbg !2186
  br label %return, !dbg !2187

if.end69:                                         ; preds = %land.lhs.true14, %land.lhs.true26, %land.lhs.true39, %cond.end
  %logs = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2188
  %26 = load %struct.ngx_array_s** %logs, align 4, !dbg !2188, !tbaa !2155
  %cmp70 = icmp eq %struct.ngx_array_s* %26, null, !dbg !2188
  br i1 %cmp70, label %cont74, label %if.end84, !dbg !2188

cont74:                                           ; preds = %if.end69
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2189
  %27 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2189, !tbaa !2155
  %call75 = call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %27, i32 2, i32 20) nounwind, !dbg !2189
  store %struct.ngx_array_s* %call75, %struct.ngx_array_s** %logs, align 4, !dbg !2189, !tbaa !2155
  %cmp78 = icmp eq %struct.ngx_array_s* %call75, null, !dbg !2191
  br i1 %cmp78, label %return, label %if.end84, !dbg !2191

if.end84:                                         ; preds = %cont74, %if.end69
  %28 = phi %struct.ngx_array_s* [ %call75, %cont74 ], [ %26, %if.end69 ]
  %29 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_log_module, i32 0, i32 0), align 4, !dbg !2192, !tbaa !2148
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2192
  %30 = load i8** %ctx, align 4, !dbg !2192, !tbaa !2155
  %main_conf = bitcast i8* %30 to i8***, !dbg !2192
  %31 = load i8*** %main_conf, align 4, !dbg !2192, !tbaa !2155
  %arrayidx85 = getelementptr inbounds i8** %31, i32 %29, !dbg !2192
  %32 = load i8** %arrayidx85, align 4, !dbg !2192, !tbaa !2155
  %call87 = call i8* @ngx_array_push(%struct.ngx_array_s* %28) nounwind, !dbg !2193
  %cmp88 = icmp eq i8* %call87, null, !dbg !2194
  br i1 %cmp88, label %return, label %if.end93, !dbg !2194

if.end93:                                         ; preds = %if.end84
  call void @llvm.memset.p0i8.i32(i8* %call87, i8 0, i32 20, i32 4, i1 false), !dbg !2195
  %arrayidx94 = getelementptr inbounds i8* %1, i32 8, !dbg !2196
  %33 = bitcast i8* %arrayidx94 to %struct.ngx_str_t*, !dbg !2196
  %call95 = call i32 @ngx_http_script_variables_count(%struct.ngx_str_t* %33) nounwind, !dbg !2196
  call void @llvm.dbg.value(metadata !{i32 %call95}, i64 0, metadata !526), !dbg !2196
  %cmp98 = icmp eq i32 %call95, 0, !dbg !2197
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !2198
  %34 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !2198, !tbaa !2155
  br i1 %cmp98, label %if.then100, label %cont113, !dbg !2197

if.then100:                                       ; preds = %if.end93
  %call102 = call %struct.ngx_open_file_s* @ngx_conf_open_file(%struct.ngx_cycle_s* %34, %struct.ngx_str_t* %33) nounwind, !dbg !2198
  %file = bitcast i8* %call87 to %struct.ngx_open_file_s**, !dbg !2198
  store %struct.ngx_open_file_s* %call102, %struct.ngx_open_file_s** %file, align 4, !dbg !2198, !tbaa !2155
  %cmp104 = icmp eq %struct.ngx_open_file_s* %call102, null, !dbg !2200
  br i1 %cmp104, label %return, label %cont152, !dbg !2200

cont113:                                          ; preds = %if.end93
  %call114 = call i32 @ngx_conf_full_name(%struct.ngx_cycle_s* %34, %struct.ngx_str_t* %33, i32 0) nounwind, !dbg !2201
  %cmp115 = icmp eq i32 %call114, 0, !dbg !2201
  br i1 %cmp115, label %if.end120, label %return, !dbg !2201

if.end120:                                        ; preds = %cont113
  %pool121 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2203
  %35 = load %struct.ngx_pool_s** %pool121, align 4, !dbg !2203, !tbaa !2155
  %call122 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %35, i32 8) nounwind, !dbg !2203
  %36 = bitcast i8* %call122 to %struct.ngx_http_log_script_t*, !dbg !2203
  %script = getelementptr inbounds i8* %call87, i32 4, !dbg !2203
  %37 = bitcast i8* %script to %struct.ngx_http_log_script_t**, !dbg !2203
  store %struct.ngx_http_log_script_t* %36, %struct.ngx_http_log_script_t** %37, align 4, !dbg !2203, !tbaa !2155
  %cmp124 = icmp eq i8* %call122, null, !dbg !2204
  br i1 %cmp124, label %return, label %if.end129, !dbg !2204

if.end129:                                        ; preds = %if.end120
  %38 = bitcast %struct.ngx_http_script_compile_t* %sc to i8*, !dbg !2205
  call void @llvm.memset.p0i8.i32(i8* %38, i8 0, i32 44, i32 4, i1 false), !dbg !2205
  %cf130 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 0, !dbg !2206
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf130, align 4, !dbg !2206, !tbaa !2155
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 1, !dbg !2207
  store %struct.ngx_str_t* %33, %struct.ngx_str_t** %source, align 4, !dbg !2207, !tbaa !2155
  %39 = load %struct.ngx_http_log_script_t** %37, align 4, !dbg !2208, !tbaa !2155
  %lengths = getelementptr inbounds %struct.ngx_http_log_script_t* %39, i32 0, i32 0, !dbg !2208
  %lengths133 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 3, !dbg !2208
  store %struct.ngx_array_s** %lengths, %struct.ngx_array_s*** %lengths133, align 4, !dbg !2208, !tbaa !2155
  %40 = load %struct.ngx_http_log_script_t** %37, align 4, !dbg !2209, !tbaa !2155
  %values = getelementptr inbounds %struct.ngx_http_log_script_t* %40, i32 0, i32 1, !dbg !2209
  %values135 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 4, !dbg !2209
  store %struct.ngx_array_s** %values, %struct.ngx_array_s*** %values135, align 4, !dbg !2209, !tbaa !2155
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 5, !dbg !2210
  store i32 %call95, i32* %variables, align 4, !dbg !2210, !tbaa !2148
  %41 = getelementptr %struct.ngx_http_script_compile_t* %sc, i32 0, i32 10, !dbg !2211
  %42 = bitcast i8* %41 to i32*, !dbg !2211
  store i32 6, i32* %42, align 4, !dbg !2212
  %call141 = call i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t* %sc) nounwind, !dbg !2213
  %cmp142 = icmp eq i32 %call141, 0, !dbg !2213
  br i1 %cmp142, label %cont152, label %return, !dbg !2213

cont152:                                          ; preds = %if.then100, %if.end129
  %43 = load %struct.ngx_array_s** %args, align 4, !dbg !2214, !tbaa !2155
  %nelts150 = getelementptr inbounds %struct.ngx_array_s* %43, i32 0, i32 1, !dbg !2214
  %44 = load i32* %nelts150, align 4, !dbg !2214, !tbaa !2148
  %cmp153 = icmp ugt i32 %44, 2, !dbg !2214
  br i1 %cmp153, label %if.then155, label %cont236, !dbg !2214

if.then155:                                       ; preds = %cont152
  %arrayidx156 = getelementptr inbounds i8* %1, i32 16, !dbg !2215
  %45 = bitcast i8* %arrayidx156 to i64*, !dbg !2215
  %46 = bitcast %struct.ngx_str_t* %name to i64*, !dbg !2215
  %47 = load i64* %45, align 4, !dbg !2215
  store i64 %47, i64* %46, align 8, !dbg !2215
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 1) to i32), i32 ptrtoint ([9 x i8]* @.str12 to i32)), !dbg !2216
  %49 = extractvalue { i32, i1 } %48, 1, !dbg !2216
  br i1 %49, label %ioc_bb159, label %if.then155.cont162_crit_edge, !dbg !2216

if.then155.cont162_crit_edge:                     ; preds = %if.then155
  %50 = lshr i64 %47, 32
  %51 = trunc i64 %50 to i32
  %52 = inttoptr i32 %51 to i8*
  br label %cont162, !dbg !2216

ioc_bb159:                                        ; preds = %if.then155
  call void @__ioc_report_sub_overflow(i32 622, i32 9, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([9 x i8]* @.str12 to i32) to i64), i8 5) nounwind, !dbg !2216
  %data222.phi.trans.insert = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1
  %.pre = load i8** %data222.phi.trans.insert, align 4, !dbg !2217, !tbaa !2155
  br label %cont162, !dbg !2216

cont162:                                          ; preds = %if.then155.cont162_crit_edge, %ioc_bb159
  %53 = phi i8* [ %.pre, %ioc_bb159 ], [ %52, %if.then155.cont162_crit_edge ]
  %call223 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0)) nounwind, !dbg !2217
  %cmp226 = icmp eq i32 %call223, 0, !dbg !2217
  br i1 %cmp226, label %cont230, label %if.end241, !dbg !2217

cont230:                                          ; preds = %cont162
  %combined_used = getelementptr inbounds i8* %32, i32 20, !dbg !2220
  %54 = bitcast i8* %combined_used to i32*, !dbg !2220
  store i32 1, i32* %54, align 4, !dbg !2220, !tbaa !2148
  br label %if.end241, !dbg !2222

cont236:                                          ; preds = %cont152
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !2223
  store i32 8, i32* %len, align 8, !dbg !2223, !tbaa !2148
  %data237 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !2225
  store i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0), i8** %data237, align 4, !dbg !2225, !tbaa !2155
  %combined_used240 = getelementptr inbounds i8* %32, i32 20, !dbg !2226
  %55 = bitcast i8* %combined_used240 to i32*, !dbg !2226
  store i32 1, i32* %55, align 4, !dbg !2226, !tbaa !2148
  br label %if.end241

if.end241:                                        ; preds = %cont162, %cont230, %cont236
  %elts242 = bitcast i8* %32 to i8**, !dbg !2227
  %56 = load i8** %elts242, align 4, !dbg !2227, !tbaa !2155
  %57 = bitcast i8* %56 to %struct.ngx_http_log_fmt_t*, !dbg !2227
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_fmt_t* %57}, i64 0, metadata !552), !dbg !2227
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !525), !dbg !2228
  %nelts246 = getelementptr inbounds i8* %32, i32 4, !dbg !2228
  %58 = bitcast i8* %nelts246 to i32*, !dbg !2228
  %59 = load i32* %58, align 4, !dbg !2228, !tbaa !2148
  %cmp247440 = icmp eq i32 %59, 0, !dbg !2228
  br i1 %cmp247440, label %cont269, label %for.body.lr.ph, !dbg !2228

for.body.lr.ph:                                   ; preds = %if.end241
  %len252 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !2230
  %data259 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !2230
  br label %for.body, !dbg !2228

for.body:                                         ; preds = %for.cond.backedge, %for.body.lr.ph
  %i.0441 = phi i32 [ 0, %for.body.lr.ph ], [ %68, %for.cond.backedge ]
  %arrayidx249 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %57, i32 %i.0441, !dbg !2230
  %len251 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %arrayidx249, i32 0, i32 0, i32 0, !dbg !2230
  %60 = load i32* %len251, align 4, !dbg !2230, !tbaa !2148
  %61 = load i32* %len252, align 8, !dbg !2230, !tbaa !2148
  %cmp253 = icmp eq i32 %60, %61, !dbg !2230
  br i1 %cmp253, label %land.lhs.true255, label %for.inc, !dbg !2230

land.lhs.true255:                                 ; preds = %for.body
  %data258 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %57, i32 %i.0441, i32 0, i32 1, !dbg !2230
  %62 = load i8** %data258, align 4, !dbg !2230, !tbaa !2155
  %63 = load i8** %data259, align 4, !dbg !2230, !tbaa !2155
  %call260 = call i32 @ngx_strcasecmp(i8* %62, i8* %63) nounwind, !dbg !2230
  %cmp261 = icmp eq i32 %call260, 0, !dbg !2230
  br i1 %cmp261, label %if.then263, label %for.inc, !dbg !2230

if.then263:                                       ; preds = %land.lhs.true255
  %format = getelementptr inbounds i8* %call87, i32 16, !dbg !2232
  %64 = bitcast i8* %format to %struct.ngx_http_log_fmt_t**, !dbg !2232
  store %struct.ngx_http_log_fmt_t* %arrayidx249, %struct.ngx_http_log_fmt_t** %64, align 4, !dbg !2232, !tbaa !2155
  %65 = load %struct.ngx_array_s** %args, align 4, !dbg !2234, !tbaa !2155
  %nelts273 = getelementptr inbounds %struct.ngx_array_s* %65, i32 0, i32 1, !dbg !2234
  %66 = load i32* %nelts273, align 4, !dbg !2234, !tbaa !2148
  %cmp276 = icmp eq i32 %66, 4, !dbg !2234
  br i1 %cmp276, label %if.then278, label %return, !dbg !2234

for.inc:                                          ; preds = %for.body, %land.lhs.true255
  %67 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0441, i32 1), !dbg !2228
  %68 = extractvalue { i32, i1 } %67, 0, !dbg !2228
  %69 = extractvalue { i32, i1 } %67, 1, !dbg !2228
  br i1 %69, label %ioc_bb266, label %for.cond.backedge, !dbg !2228

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb266
  %70 = load i32* %58, align 4, !dbg !2228, !tbaa !2148
  %cmp247 = icmp ult i32 %68, %70, !dbg !2228
  br i1 %cmp247, label %for.body, label %cont269, !dbg !2228

ioc_bb266:                                        ; preds = %for.inc
  %71 = zext i32 %i.0441 to i64, !dbg !2228
  call void @__ioc_report_add_overflow(i32 632, i32 43, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %71, i64 1, i8 5) nounwind, !dbg !2228
  br label %for.cond.backedge, !dbg !2228

cont269:                                          ; preds = %for.cond.backedge, %if.end241
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str13, i32 0, i32 0), %struct.ngx_str_t* %name) nounwind, !dbg !2235
  br label %return, !dbg !2236

if.then278:                                       ; preds = %if.then263
  %arrayidx279 = getelementptr inbounds i8* %1, i32 24, !dbg !2237
  %data280 = getelementptr inbounds i8* %1, i32 28, !dbg !2237
  %72 = bitcast i8* %data280 to i8**, !dbg !2237
  %73 = load i8** %72, align 4, !dbg !2237, !tbaa !2155
  %call283 = call i32 @strncmp(i8* %73, i8* getelementptr inbounds ([8 x i8]* @.str14, i32 0, i32 0), i32 7) nounwind readonly, !dbg !2237
  %cmp284 = icmp eq i32 %call283, 0, !dbg !2237
  br i1 %cmp284, label %if.end292, label %cont288, !dbg !2237

cont288:                                          ; preds = %if.then278
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str11, i32 0, i32 0), i8* %arrayidx279) nounwind, !dbg !2239
  br label %return, !dbg !2241

if.end292:                                        ; preds = %if.then278
  %script293 = getelementptr inbounds i8* %call87, i32 4, !dbg !2242
  %74 = bitcast i8* %script293 to %struct.ngx_http_log_script_t**, !dbg !2242
  %75 = load %struct.ngx_http_log_script_t** %74, align 4, !dbg !2242, !tbaa !2155
  %tobool = icmp eq %struct.ngx_http_log_script_t* %75, null, !dbg !2242
  br i1 %tobool, label %if.end299, label %cont296, !dbg !2242

cont296:                                          ; preds = %if.end292
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([44 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !2243
  br label %return, !dbg !2245

if.end299:                                        ; preds = %if.end292
  %len301 = bitcast i8* %arrayidx279 to i32*, !dbg !2246
  %76 = load i32* %len301, align 4, !dbg !2246, !tbaa !2148
  %77 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %76, i32 7), !dbg !2246
  %78 = extractvalue { i32, i1 } %77, 0, !dbg !2246
  %79 = extractvalue { i32, i1 } %77, 1, !dbg !2246
  br i1 %79, label %ioc_bb304, label %cont305, !dbg !2246

ioc_bb304:                                        ; preds = %if.end299
  %80 = zext i32 %76 to i64, !dbg !2246
  call void @__ioc_report_sub_overflow(i32 650, i32 29, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %80, i64 7, i8 5) nounwind, !dbg !2246
  %.pre443 = load i8** %72, align 4, !dbg !2247, !tbaa !2155
  br label %cont305, !dbg !2246

cont305:                                          ; preds = %if.end299, %ioc_bb304
  %81 = phi i8* [ %73, %if.end299 ], [ %.pre443, %ioc_bb304 ]
  store i32 %78, i32* %len252, align 8, !dbg !2246, !tbaa !2148
  %add.ptr = getelementptr inbounds i8* %81, i32 7, !dbg !2247
  store i8* %add.ptr, i8** %data259, align 4, !dbg !2247, !tbaa !2155
  %call310 = call i32 @ngx_parse_size(%struct.ngx_str_t* %name) nounwind, !dbg !2248
  call void @llvm.dbg.value(metadata !{i32 %call310}, i64 0, metadata !524), !dbg !2248
  %cmp313 = icmp eq i32 %call310, -1, !dbg !2249
  br i1 %cmp313, label %cont317, label %if.end320, !dbg !2249

cont317:                                          ; preds = %cont305
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([26 x i8]* @.str16, i32 0, i32 0), %struct.ngx_str_t* %name) nounwind, !dbg !2250
  br label %return, !dbg !2252

if.end320:                                        ; preds = %cont305
  %file321 = bitcast i8* %call87 to %struct.ngx_open_file_s**, !dbg !2253
  %82 = load %struct.ngx_open_file_s** %file321, align 4, !dbg !2253, !tbaa !2155
  %buffer322 = getelementptr inbounds %struct.ngx_open_file_s* %82, i32 0, i32 2, !dbg !2253
  %83 = load i8** %buffer322, align 4, !dbg !2253, !tbaa !2155
  %tobool323 = icmp eq i8* %83, null, !dbg !2253
  br i1 %tobool323, label %if.end335, label %land.lhs.true324, !dbg !2253

land.lhs.true324:                                 ; preds = %if.end320
  %last = getelementptr inbounds %struct.ngx_open_file_s* %82, i32 0, i32 4, !dbg !2253
  %84 = load i8** %last, align 4, !dbg !2253, !tbaa !2155
  %pos = getelementptr inbounds %struct.ngx_open_file_s* %82, i32 0, i32 3, !dbg !2253
  %85 = load i8** %pos, align 4, !dbg !2253, !tbaa !2155
  %sub.ptr.lhs.cast = ptrtoint i8* %84 to i32, !dbg !2253
  %sub.ptr.rhs.cast = ptrtoint i8* %85 to i32, !dbg !2253
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2253
  %cmp327 = icmp eq i32 %sub.ptr.sub, %call310, !dbg !2253
  br i1 %cmp327, label %if.end335, label %cont331, !dbg !2253

cont331:                                          ; preds = %land.lhs.true324
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([59 x i8]* @.str17, i32 0, i32 0), i8* %arrayidx94) nounwind, !dbg !2254
  br label %return, !dbg !2256

if.end335:                                        ; preds = %land.lhs.true324, %if.end320
  %pool336 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2257
  %86 = load %struct.ngx_pool_s** %pool336, align 4, !dbg !2257, !tbaa !2155
  %87 = icmp sgt i32 %call310, -1, !dbg !2257
  br i1 %87, label %cont338, label %ioc_bb337, !dbg !2257

ioc_bb337:                                        ; preds = %if.end335
  %88 = sext i32 %call310 to i64, !dbg !2257
  call void @__ioc_report_conversion(i32 661, i32 52, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %88, i8 1) nounwind, !dbg !2257
  br label %cont338, !dbg !2257

cont338:                                          ; preds = %ioc_bb337, %if.end335
  %call339 = call i8* @ngx_palloc(%struct.ngx_pool_s* %86, i32 %call310) nounwind, !dbg !2257
  %89 = load %struct.ngx_open_file_s** %file321, align 4, !dbg !2257, !tbaa !2155
  %buffer341 = getelementptr inbounds %struct.ngx_open_file_s* %89, i32 0, i32 2, !dbg !2257
  store i8* %call339, i8** %buffer341, align 4, !dbg !2257, !tbaa !2155
  %90 = load %struct.ngx_open_file_s** %file321, align 4, !dbg !2258, !tbaa !2155
  %buffer343 = getelementptr inbounds %struct.ngx_open_file_s* %90, i32 0, i32 2, !dbg !2258
  %91 = load i8** %buffer343, align 4, !dbg !2258, !tbaa !2155
  %cmp344 = icmp eq i8* %91, null, !dbg !2258
  br i1 %cmp344, label %return, label %if.end349, !dbg !2258

if.end349:                                        ; preds = %cont338
  %pos353 = getelementptr inbounds %struct.ngx_open_file_s* %90, i32 0, i32 3, !dbg !2259
  store i8* %91, i8** %pos353, align 4, !dbg !2259, !tbaa !2155
  %92 = load %struct.ngx_open_file_s** %file321, align 4, !dbg !2260, !tbaa !2155
  %buffer355 = getelementptr inbounds %struct.ngx_open_file_s* %92, i32 0, i32 2, !dbg !2260
  %93 = load i8** %buffer355, align 4, !dbg !2260, !tbaa !2155
  %add.ptr356 = getelementptr inbounds i8* %93, i32 %call310, !dbg !2260
  %last358 = getelementptr inbounds %struct.ngx_open_file_s* %92, i32 0, i32 4, !dbg !2260
  store i8* %add.ptr356, i8** %last358, align 4, !dbg !2260, !tbaa !2155
  br label %return, !dbg !2261

return:                                           ; preds = %if.then263, %if.end349, %cont338, %if.end129, %if.end120, %cont113, %if.then100, %if.end84, %cont74, %cont56, %cont331, %cont317, %cont296, %cont288, %cont269, %cont65
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont65 ], [ inttoptr (i32 -1 to i8*), %cont288 ], [ inttoptr (i32 -1 to i8*), %cont296 ], [ inttoptr (i32 -1 to i8*), %cont317 ], [ inttoptr (i32 -1 to i8*), %cont331 ], [ inttoptr (i32 -1 to i8*), %cont269 ], [ null, %cont56 ], [ inttoptr (i32 -1 to i8*), %cont74 ], [ inttoptr (i32 -1 to i8*), %if.end84 ], [ inttoptr (i32 -1 to i8*), %if.then100 ], [ inttoptr (i32 -1 to i8*), %cont113 ], [ inttoptr (i32 -1 to i8*), %if.end120 ], [ inttoptr (i32 -1 to i8*), %if.end129 ], [ inttoptr (i32 -1 to i8*), %cont338 ], [ null, %if.end349 ], [ null, %if.then263 ]
  ret i8* %retval.0, !dbg !2262
}

define internal i8* @ngx_http_log_open_file_cache(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  %s = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !2263
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !2263
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !2263
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %s}, metadata !499), !dbg !2264
  %open_file_cache = getelementptr inbounds i8* %conf, i32 4, !dbg !2265
  %0 = bitcast i8* %open_file_cache to %struct.ngx_open_file_cache_t**, !dbg !2265
  %1 = load %struct.ngx_open_file_cache_t** %0, align 4, !dbg !2265, !tbaa !2155
  %cmp = icmp eq %struct.ngx_open_file_cache_t* %1, inttoptr (i32 -1 to %struct.ngx_open_file_cache_t*), !dbg !2265
  br i1 %cmp, label %if.end, label %return, !dbg !2265

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2266
  %2 = load %struct.ngx_array_s** %args, align 4, !dbg !2266, !tbaa !2155
  %elts = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 0, !dbg !2266
  %3 = load i8** %elts, align 4, !dbg !2266, !tbaa !2155
  %4 = bitcast i8* %3 to %struct.ngx_str_t*, !dbg !2266
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %4}, i64 0, metadata !497), !dbg !2266
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !500), !dbg !2267
  call void @llvm.dbg.value(metadata !2268, i64 0, metadata !495), !dbg !2269
  call void @llvm.dbg.value(metadata !2270, i64 0, metadata !496), !dbg !2271
  call void @llvm.dbg.value(metadata !2272, i64 0, metadata !504), !dbg !2273
  call void @llvm.dbg.value(metadata !2272, i64 0, metadata !505), !dbg !2274
  %nelts249 = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 1, !dbg !2274
  %5 = load i32* %nelts249, align 4, !dbg !2274, !tbaa !2148
  %cmp4250 = icmp ugt i32 %5, 1, !dbg !2274
  br i1 %cmp4250, label %for.body.lr.ph, label %cont180, !dbg !2274

for.body.lr.ph:                                   ; preds = %if.end
  %len36 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 0, !dbg !2275
  %data40 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 1, !dbg !2277
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str8 to i32)), !dbg !2278
  br label %for.body, !dbg !2274

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %inactive.0255 = phi i32 [ 10, %for.body.lr.ph ], [ %inactive.1, %for.cond.backedge ]
  %i.0254 = phi i32 [ 1, %for.body.lr.ph ], [ %50, %for.cond.backedge ]
  %min_uses.0253 = phi i32 [ 1, %for.body.lr.ph ], [ %min_uses.1, %for.cond.backedge ]
  %max.0252 = phi i32 [ 0, %for.body.lr.ph ], [ %max.1, %for.cond.backedge ]
  %valid.0251 = phi i32 [ 60, %for.body.lr.ph ], [ %valid.1, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_str_t* %4, i32 %i.0254, !dbg !2279
  %data = getelementptr inbounds %struct.ngx_str_t* %4, i32 %i.0254, i32 1, !dbg !2279
  %7 = load i8** %data, align 4, !dbg !2279, !tbaa !2155
  %call = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 4) nounwind readonly, !dbg !2279
  %cmp7 = icmp eq i32 %call, 0, !dbg !2279
  br i1 %cmp7, label %if.then8, label %cont26, !dbg !2279

if.then8:                                         ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %7, i32 4, !dbg !2280
  %len = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2280
  %8 = load i32* %len, align 4, !dbg !2280, !tbaa !2148
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %8, i32 4), !dbg !2280
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !2280
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !2280
  br i1 %11, label %ioc_bb14, label %cont15, !dbg !2280

ioc_bb14:                                         ; preds = %if.then8
  %12 = zext i32 %8 to i64, !dbg !2280
  call void @__ioc_report_sub_overflow(i32 841, i32 53, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %12, i64 4, i8 5) nounwind, !dbg !2280
  br label %cont15, !dbg !2280

cont15:                                           ; preds = %if.then8, %ioc_bb14
  %call16 = call i32 @ngx_atoi(i8* %add.ptr, i32 %10) nounwind, !dbg !2280
  call void @llvm.dbg.value(metadata !{i32 %call16}, i64 0, metadata !500), !dbg !2280
  %cmp19 = icmp eq i32 %call16, -1, !dbg !2282
  br i1 %cmp19, label %cont165, label %for.inc, !dbg !2282

cont26:                                           ; preds = %for.body
  %call27 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0), i32 9) nounwind readonly, !dbg !2283
  %cmp28 = icmp eq i32 %call27, 0, !dbg !2283
  br i1 %cmp28, label %if.then29, label %cont53, !dbg !2283

if.then29:                                        ; preds = %cont26
  %len31 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2275
  %13 = load i32* %len31, align 4, !dbg !2275, !tbaa !2148
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %13, i32 9), !dbg !2275
  %15 = extractvalue { i32, i1 } %14, 0, !dbg !2275
  %16 = extractvalue { i32, i1 } %14, 1, !dbg !2275
  br i1 %16, label %ioc_bb34, label %cont35, !dbg !2275

ioc_bb34:                                         ; preds = %if.then29
  %17 = zext i32 %13 to i64, !dbg !2275
  call void @__ioc_report_sub_overflow(i32 848, i32 28, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %17, i64 9, i8 5) nounwind, !dbg !2275
  %.pre260 = load i8** %data, align 4, !dbg !2277, !tbaa !2155
  br label %cont35, !dbg !2275

cont35:                                           ; preds = %if.then29, %ioc_bb34
  %18 = phi i8* [ %7, %if.then29 ], [ %.pre260, %ioc_bb34 ]
  store i32 %15, i32* %len36, align 4, !dbg !2275, !tbaa !2148
  %add.ptr39 = getelementptr inbounds i8* %18, i32 9, !dbg !2277
  store i8* %add.ptr39, i8** %data40, align 4, !dbg !2277, !tbaa !2155
  %call43 = call i32 @ngx_parse_time(%struct.ngx_str_t* %s, i32 1) nounwind, !dbg !2284
  call void @llvm.dbg.value(metadata !{i32 %call43}, i64 0, metadata !495), !dbg !2284
  %cmp46 = icmp eq i32 %call43, -1, !dbg !2285
  br i1 %cmp46, label %cont165, label %for.inc, !dbg !2285

cont53:                                           ; preds = %cont26
  %call54 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([10 x i8]* @.str6, i32 0, i32 0), i32 9) nounwind readonly, !dbg !2286
  %cmp55 = icmp eq i32 %call54, 0, !dbg !2286
  br i1 %cmp55, label %if.then56, label %cont76, !dbg !2286

if.then56:                                        ; preds = %cont53
  %add.ptr59 = getelementptr inbounds i8* %7, i32 9, !dbg !2287
  %len61 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2287
  %19 = load i32* %len61, align 4, !dbg !2287, !tbaa !2148
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %19, i32 9), !dbg !2287
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !2287
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !2287
  br i1 %22, label %ioc_bb64, label %cont65, !dbg !2287

ioc_bb64:                                         ; preds = %if.then56
  %23 = zext i32 %19 to i64, !dbg !2287
  call void @__ioc_report_sub_overflow(i32 857, i32 58, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %23, i64 9, i8 5) nounwind, !dbg !2287
  br label %cont65, !dbg !2287

cont65:                                           ; preds = %if.then56, %ioc_bb64
  %call66 = call i32 @ngx_atoi(i8* %add.ptr59, i32 %21) nounwind, !dbg !2287
  call void @llvm.dbg.value(metadata !{i32 %call66}, i64 0, metadata !504), !dbg !2287
  %cmp69 = icmp eq i32 %call66, -1, !dbg !2289
  br i1 %cmp69, label %cont165, label %for.inc, !dbg !2289

cont76:                                           ; preds = %cont53
  %call77 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([7 x i8]* @.str7, i32 0, i32 0), i32 6) nounwind readonly, !dbg !2290
  %cmp78 = icmp eq i32 %call77, 0, !dbg !2290
  br i1 %cmp78, label %if.then79, label %if.end99, !dbg !2290

if.then79:                                        ; preds = %cont76
  %len81 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2291
  %24 = load i32* %len81, align 4, !dbg !2291, !tbaa !2148
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %24, i32 6), !dbg !2291
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !2291
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !2291
  br i1 %27, label %ioc_bb84, label %cont85, !dbg !2291

ioc_bb84:                                         ; preds = %if.then79
  %28 = zext i32 %24 to i64, !dbg !2291
  call void @__ioc_report_sub_overflow(i32 864, i32 28, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %28, i64 6, i8 5) nounwind, !dbg !2291
  %.pre261 = load i8** %data, align 4, !dbg !2293, !tbaa !2155
  br label %cont85, !dbg !2291

cont85:                                           ; preds = %if.then79, %ioc_bb84
  %29 = phi i8* [ %7, %if.then79 ], [ %.pre261, %ioc_bb84 ]
  store i32 %26, i32* %len36, align 4, !dbg !2291, !tbaa !2148
  %add.ptr89 = getelementptr inbounds i8* %29, i32 6, !dbg !2293
  store i8* %add.ptr89, i8** %data40, align 4, !dbg !2293, !tbaa !2155
  %call93 = call i32 @ngx_parse_time(%struct.ngx_str_t* %s, i32 1) nounwind, !dbg !2294
  call void @llvm.dbg.value(metadata !{i32 %call93}, i64 0, metadata !496), !dbg !2294
  %cmp96 = icmp eq i32 %call93, -1, !dbg !2295
  br i1 %cmp96, label %cont165, label %for.inc, !dbg !2295

if.end99:                                         ; preds = %cont76
  %30 = extractvalue { i32, i1 } %6, 0, !dbg !2278
  %31 = extractvalue { i32, i1 } %6, 1, !dbg !2278
  br i1 %31, label %ioc_bb100, label %cont103, !dbg !2278

ioc_bb100:                                        ; preds = %if.end99
  call void @__ioc_report_sub_overflow(i32 872, i32 9, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str8 to i32) to i64), i8 5) nounwind, !dbg !2278
  %.pre262 = load i8** %data, align 4, !dbg !2296, !tbaa !2155
  br label %cont103, !dbg !2278

cont103:                                          ; preds = %ioc_bb100, %if.end99
  %32 = phi i8* [ %.pre262, %ioc_bb100 ], [ %7, %if.end99 ]
  %cmp104 = icmp eq i32 %30, 1, !dbg !2278
  br i1 %cmp104, label %cond.true, label %cond.false, !dbg !2278

cond.true:                                        ; preds = %cont103
  call void @llvm.dbg.value(metadata !2178, i64 0, metadata !510), !dbg !2278
  call void @llvm.dbg.value(metadata !{i8* %32}, i64 0, metadata !511), !dbg !2296
  %33 = load i8* %32, align 1, !dbg !2296, !tbaa !2149
  %conv = zext i8 %33 to i32, !dbg !2296
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 111), !dbg !2296
  %35 = extractvalue { i32, i1 } %34, 0, !dbg !2296
  %36 = extractvalue { i32, i1 } %34, 1, !dbg !2296
  br i1 %36, label %ioc_bb112, label %land.lhs.true118, !dbg !2296

ioc_bb112:                                        ; preds = %cond.true
  %37 = zext i8 %33 to i64, !dbg !2296
  call void @__ioc_report_sub_overflow(i32 872, i32 9, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %37, i64 111, i8 13) nounwind, !dbg !2296
  br label %land.lhs.true118, !dbg !2296

land.lhs.true118:                                 ; preds = %cond.true, %ioc_bb112
  call void @llvm.dbg.value(metadata !{i32 %35}, i64 0, metadata !515), !dbg !2296
  %cmp119 = icmp eq i32 %35, 0, !dbg !2296
  br i1 %cmp119, label %if.then121, label %cont165, !dbg !2296

if.then121:                                       ; preds = %land.lhs.true118
  %arrayidx122 = getelementptr inbounds i8* %32, i32 1, !dbg !2297
  %38 = load i8* %arrayidx122, align 1, !dbg !2297, !tbaa !2149
  %conv123 = zext i8 %38 to i32, !dbg !2297
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv123, i32 102), !dbg !2297
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !2297
  %41 = extractvalue { i32, i1 } %39, 1, !dbg !2297
  br i1 %41, label %ioc_bb125, label %land.lhs.true131, !dbg !2297

ioc_bb125:                                        ; preds = %if.then121
  %42 = zext i8 %38 to i64, !dbg !2297
  call void @__ioc_report_sub_overflow(i32 872, i32 9, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %42, i64 102, i8 13) nounwind, !dbg !2297
  br label %land.lhs.true131, !dbg !2297

land.lhs.true131:                                 ; preds = %if.then121, %ioc_bb125
  call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !515), !dbg !2297
  %cmp132 = icmp eq i32 %40, 0, !dbg !2297
  br i1 %cmp132, label %if.then134, label %cont165, !dbg !2297

if.then134:                                       ; preds = %land.lhs.true131
  %arrayidx135 = getelementptr inbounds i8* %32, i32 2, !dbg !2299
  %43 = load i8* %arrayidx135, align 1, !dbg !2299, !tbaa !2149
  %conv136 = zext i8 %43 to i32, !dbg !2299
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv136, i32 102), !dbg !2299
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !2299
  %46 = extractvalue { i32, i1 } %44, 1, !dbg !2299
  br i1 %46, label %ioc_bb138, label %land.lhs.true144, !dbg !2299

ioc_bb138:                                        ; preds = %if.then134
  %47 = zext i8 %43 to i64, !dbg !2299
  call void @__ioc_report_sub_overflow(i32 872, i32 9, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %47, i64 102, i8 13) nounwind, !dbg !2299
  br label %land.lhs.true144, !dbg !2299

land.lhs.true144:                                 ; preds = %if.then134, %ioc_bb138
  call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !515), !dbg !2299
  %cmp145 = icmp eq i32 %45, 0, !dbg !2299
  br i1 %cmp145, label %if.then147, label %cont165, !dbg !2299

if.then147:                                       ; preds = %land.lhs.true144
  %arrayidx148 = getelementptr inbounds i8* %32, i32 3, !dbg !2299
  %48 = load i8* %arrayidx148, align 1, !dbg !2299, !tbaa !2149
  %conv149 = zext i8 %48 to i32, !dbg !2299
  call void @llvm.dbg.value(metadata !{i32 %conv149}, i64 0, metadata !515), !dbg !2299
  br label %cond.end, !dbg !2299

cond.false:                                       ; preds = %cont103
  %call158 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8]* @.str8, i32 0, i32 0)) nounwind, !dbg !2299
  br label %cond.end, !dbg !2299

cond.end:                                         ; preds = %if.then147, %cond.false
  %cond = phi i32 [ %call158, %cond.false ], [ %conv149, %if.then147 ], !dbg !2299
  %cmp159 = icmp eq i32 %cond, 0, !dbg !2299
  br i1 %cmp159, label %if.then161, label %cont165, !dbg !2299

if.then161:                                       ; preds = %cond.end
  store %struct.ngx_open_file_cache_t* null, %struct.ngx_open_file_cache_t** %0, align 4, !dbg !2301, !tbaa !2155
  br label %for.inc, !dbg !2303

cont165:                                          ; preds = %land.lhs.true118, %land.lhs.true131, %land.lhs.true144, %cont15, %cont35, %cont65, %cont85, %cond.end
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([45 x i8]* @.str9, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !2304
  br label %return, !dbg !2305

for.inc:                                          ; preds = %cont85, %cont65, %cont35, %cont15, %if.then161
  %valid.1 = phi i32 [ %valid.0251, %cont15 ], [ %valid.0251, %cont35 ], [ %valid.0251, %cont65 ], [ %call93, %cont85 ], [ %valid.0251, %if.then161 ]
  %max.1 = phi i32 [ %call16, %cont15 ], [ %max.0252, %cont35 ], [ %max.0252, %cont65 ], [ %max.0252, %cont85 ], [ %max.0252, %if.then161 ]
  %min_uses.1 = phi i32 [ %min_uses.0253, %cont15 ], [ %min_uses.0253, %cont35 ], [ %call66, %cont65 ], [ %min_uses.0253, %cont85 ], [ %min_uses.0253, %if.then161 ]
  %inactive.1 = phi i32 [ %inactive.0255, %cont15 ], [ %call43, %cont35 ], [ %inactive.0255, %cont65 ], [ %inactive.0255, %cont85 ], [ %inactive.0255, %if.then161 ]
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0254, i32 1), !dbg !2274
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !2274
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !2274
  br i1 %51, label %ioc_bb169, label %for.cond.backedge, !dbg !2274

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb169
  %52 = load %struct.ngx_array_s** %args, align 4, !dbg !2274, !tbaa !2155
  %nelts = getelementptr inbounds %struct.ngx_array_s* %52, i32 0, i32 1, !dbg !2274
  %53 = load i32* %nelts, align 4, !dbg !2274, !tbaa !2148
  %cmp4 = icmp ult i32 %50, %53, !dbg !2274
  br i1 %cmp4, label %for.body, label %for.end, !dbg !2274

ioc_bb169:                                        ; preds = %for.inc
  %54 = zext i32 %i.0254 to i64, !dbg !2274
  call void @__ioc_report_add_overflow(i32 839, i32 41, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %54, i64 1, i8 5) nounwind, !dbg !2274
  br label %for.cond.backedge, !dbg !2274

for.end:                                          ; preds = %for.cond.backedge
  %.pre = load %struct.ngx_open_file_cache_t** %0, align 4, !dbg !2306, !tbaa !2155
  %cmp172 = icmp eq %struct.ngx_open_file_cache_t* %.pre, null, !dbg !2306
  br i1 %cmp172, label %return, label %if.end175, !dbg !2306

if.end175:                                        ; preds = %for.end
  %cmp176 = icmp eq i32 %max.1, 0, !dbg !2307
  br i1 %cmp176, label %cont180, label %if.end183, !dbg !2307

cont180:                                          ; preds = %if.end, %if.end175
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([48 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !2308
  br label %return, !dbg !2310

if.end183:                                        ; preds = %if.end175
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2311
  %55 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2311, !tbaa !2155
  %56 = icmp sgt i32 %max.1, -1, !dbg !2311
  br i1 %56, label %cont185, label %ioc_bb184, !dbg !2311

ioc_bb184:                                        ; preds = %if.end183
  %57 = sext i32 %max.1 to i64, !dbg !2311
  call void @__ioc_report_conversion(i32 887, i32 65, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %57, i8 1) nounwind, !dbg !2311
  br label %cont185, !dbg !2311

cont185:                                          ; preds = %ioc_bb184, %if.end183
  %call186 = call %struct.ngx_open_file_cache_t* @ngx_open_file_cache_init(%struct.ngx_pool_s* %55, i32 %max.1, i32 %inactive.1) nounwind, !dbg !2311
  store %struct.ngx_open_file_cache_t* %call186, %struct.ngx_open_file_cache_t** %0, align 4, !dbg !2311, !tbaa !2155
  %tobool = icmp eq %struct.ngx_open_file_cache_t* %call186, null, !dbg !2312
  br i1 %tobool, label %return, label %if.then189, !dbg !2312

if.then189:                                       ; preds = %cont185
  %open_file_cache_valid = getelementptr inbounds i8* %conf, i32 8, !dbg !2313
  %58 = bitcast i8* %open_file_cache_valid to i32*, !dbg !2313
  store i32 %valid.1, i32* %58, align 4, !dbg !2313, !tbaa !2315
  %59 = icmp sgt i32 %min_uses.1, -1, !dbg !2316
  br i1 %59, label %cont192, label %ioc_bb191, !dbg !2316

ioc_bb191:                                        ; preds = %if.then189
  %60 = sext i32 %min_uses.1 to i64, !dbg !2316
  call void @__ioc_report_conversion(i32 890, i32 40, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %60, i8 1) nounwind, !dbg !2316
  br label %cont192, !dbg !2316

cont192:                                          ; preds = %ioc_bb191, %if.then189
  %open_file_cache_min_uses = getelementptr inbounds i8* %conf, i32 12, !dbg !2316
  %61 = bitcast i8* %open_file_cache_min_uses to i32*, !dbg !2316
  store i32 %min_uses.1, i32* %61, align 4, !dbg !2316, !tbaa !2148
  br label %return, !dbg !2317

return:                                           ; preds = %cont185, %for.end, %entry, %cont192, %cont180, %cont165
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont165 ], [ inttoptr (i32 -1 to i8*), %cont180 ], [ null, %cont192 ], [ getelementptr inbounds ([13 x i8]* @.str3, i32 0, i32 0), %entry ], [ null, %for.end ], [ inttoptr (i32 -1 to i8*), %cont185 ]
  ret i8* %retval.0, !dbg !2318
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @ngx_atoi(i8*, i32)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @ngx_parse_time(%struct.ngx_str_t*, i32)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.ngx_open_file_cache_t* @ngx_open_file_cache_init(%struct.ngx_pool_s*, i32, i32)

declare %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s*, i32, i32)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @ngx_http_script_variables_count(%struct.ngx_str_t*)

declare %struct.ngx_open_file_s* @ngx_conf_open_file(%struct.ngx_cycle_s*, %struct.ngx_str_t*)

declare i32 @ngx_conf_full_name(%struct.ngx_cycle_s*, %struct.ngx_str_t*, i32)

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @ngx_strcasecmp(i8*, i8*)

declare i32 @ngx_parse_size(%struct.ngx_str_t*)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

define internal fastcc i8* @ngx_http_log_compile_format(%struct.ngx_conf_s* %cf, %struct.ngx_array_s* %flushes, %struct.ngx_array_s* %ops, %struct.ngx_array_s* nocapture %args, i32 %s) nounwind {
entry:
  %var = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !618), !dbg !2319
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %flushes}, i64 0, metadata !619), !dbg !2319
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %ops}, i64 0, metadata !620), !dbg !2319
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %args}, i64 0, metadata !621), !dbg !2319
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !622), !dbg !2319
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %var}, metadata !630), !dbg !2320
  %elts = getelementptr inbounds %struct.ngx_array_s* %args, i32 0, i32 0, !dbg !2321
  %0 = load i8** %elts, align 4, !dbg !2321, !tbaa !2155
  %1 = bitcast i8* %0 to %struct.ngx_str_t*, !dbg !2321
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %1}, i64 0, metadata !629), !dbg !2321
  %nelts = getelementptr inbounds %struct.ngx_array_s* %args, i32 0, i32 1, !dbg !2322
  %2 = load i32* %nelts, align 4, !dbg !2322, !tbaa !2148
  %cmp352 = icmp ugt i32 %2, %s, !dbg !2322
  br i1 %cmp352, label %while.cond.preheader.lr.ph, label %return, !dbg !2322

while.cond.preheader.lr.ph:                       ; preds = %entry
  %data43 = getelementptr inbounds %struct.ngx_str_t* %var, i32 0, i32 1, !dbg !2324
  %len53 = getelementptr inbounds %struct.ngx_str_t* %var, i32 0, i32 0, !dbg !2329
  %tobool163 = icmp eq %struct.ngx_array_s* %flushes, null, !dbg !2331
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2332
  br label %while.cond.preheader, !dbg !2322

while.cond.preheader:                             ; preds = %while.cond.preheader.lr.ph, %for.cond.backedge
  %s.addr.0353 = phi i32 [ %s, %while.cond.preheader.lr.ph ], [ %85, %for.cond.backedge ]
  %len1 = getelementptr inbounds %struct.ngx_str_t* %1, i32 %s.addr.0353, i32 0, !dbg !2335
  %3 = load i32* %len1, align 4, !dbg !2335, !tbaa !2148
  %cmp2349 = icmp eq i32 %3, 0, !dbg !2335
  br i1 %cmp2349, label %for.inc234, label %while.body.lr.ph, !dbg !2335

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %data7 = getelementptr inbounds %struct.ngx_str_t* %1, i32 %s.addr.0353, i32 1, !dbg !2336
  br label %while.body, !dbg !2335

while.body:                                       ; preds = %while.body.lr.ph, %while.cond.backedge
  %i.0350 = phi i32 [ 0, %while.body.lr.ph ], [ %i.0.be, %while.cond.backedge ]
  %call = call i8* @ngx_array_push(%struct.ngx_array_s* %ops) nounwind, !dbg !2337
  %cmp3 = icmp eq i8* %call, null, !dbg !2338
  br i1 %cmp3, label %return, label %if.end, !dbg !2338

if.end:                                           ; preds = %while.body
  %4 = load i8** %data7, align 4, !dbg !2336, !tbaa !2155
  %arrayidx8 = getelementptr inbounds i8* %4, i32 %i.0350, !dbg !2336
  call void @llvm.dbg.value(metadata !{i8* %arrayidx8}, i64 0, metadata !623), !dbg !2336
  %5 = load i8* %arrayidx8, align 1, !dbg !2339, !tbaa !2149
  %cmp12 = icmp eq i8 %5, 36, !dbg !2339
  %6 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0350, i32 1), !dbg !2340
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !2340
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !2340
  %9 = zext i32 %i.0350 to i64, !dbg !2340
  br i1 %cmp12, label %if.then14, label %if.end176, !dbg !2339

if.then14:                                        ; preds = %if.end
  br i1 %8, label %ioc_bb15, label %cont16, !dbg !2340

ioc_bb15:                                         ; preds = %if.then14
  call void @__ioc_report_add_overflow(i32 728, i32 13, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %9, i64 1, i8 5) nounwind, !dbg !2340
  br label %cont16, !dbg !2340

cont16:                                           ; preds = %if.then14, %ioc_bb15
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !627), !dbg !2340
  %10 = load i32* %len1, align 4, !dbg !2340, !tbaa !2148
  %cmp19 = icmp eq i32 %7, %10, !dbg !2340
  br i1 %cmp19, label %cont239, label %if.end22, !dbg !2340

if.end22:                                         ; preds = %cont16
  %11 = load i8** %data7, align 4, !dbg !2341, !tbaa !2155
  %arrayidx25 = getelementptr inbounds i8* %11, i32 %7, !dbg !2341
  %12 = load i8* %arrayidx25, align 1, !dbg !2341, !tbaa !2149
  %cmp27 = icmp eq i8 %12, 123, !dbg !2341
  br i1 %cmp27, label %cont31, label %cont52, !dbg !2341

cont31:                                           ; preds = %if.end22
  call void @llvm.dbg.value(metadata !2272, i64 0, metadata !633), !dbg !2342
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %7, i32 1), !dbg !2343
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !2343
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !2343
  br i1 %15, label %ioc_bb32, label %cont33, !dbg !2343

ioc_bb32:                                         ; preds = %cont31
  %16 = zext i32 %7 to i64, !dbg !2343
  call void @__ioc_report_add_overflow(i32 733, i32 15, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind, !dbg !2343
  %.pre = load i32* %len1, align 4, !dbg !2343, !tbaa !2148
  br label %cont33, !dbg !2343

cont33:                                           ; preds = %cont31, %ioc_bb32
  %17 = phi i32 [ %10, %cont31 ], [ %.pre, %ioc_bb32 ]
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !627), !dbg !2343
  %cmp36 = icmp eq i32 %14, %17, !dbg !2343
  br i1 %cmp36, label %cont239, label %if.end39, !dbg !2343

if.end39:                                         ; preds = %cont33
  %18 = load i8** %data7, align 4, !dbg !2324, !tbaa !2155
  %arrayidx42 = getelementptr inbounds i8* %18, i32 %14, !dbg !2324
  br label %cont52, !dbg !2344

cont52:                                           ; preds = %if.end22, %if.end39
  %storemerge366 = phi i8* [ %arrayidx42, %if.end39 ], [ %arrayidx25, %if.end22 ]
  %i.1 = phi i32 [ %14, %if.end39 ], [ %7, %if.end22 ]
  %bracket.0 = phi i32 [ 1, %if.end39 ], [ 0, %if.end22 ]
  store i8* %storemerge366, i8** %data43, align 4, !dbg !2324
  store i32 0, i32* %len53, align 4, !dbg !2329
  %19 = load i32* %len1, align 4, !dbg !2329, !tbaa !2148
  %cmp57343 = icmp ult i32 %i.1, %19, !dbg !2329
  br i1 %cmp57343, label %for.body59.lr.ph, label %for.end, !dbg !2329

for.body59.lr.ph:                                 ; preds = %cont52
  %tobool = icmp eq i32 %bracket.0, 0, !dbg !2345
  br label %for.body59, !dbg !2329

for.body59:                                       ; preds = %for.body59.lr.ph, %for.cond54.backedge
  %20 = phi i32 [ 0, %for.body59.lr.ph ], [ %36, %for.cond54.backedge ]
  %i.2344 = phi i32 [ %i.1, %for.body59.lr.ph ], [ %31, %for.cond54.backedge ]
  %21 = load i8** %data7, align 4, !dbg !2347, !tbaa !2155
  %arrayidx62 = getelementptr inbounds i8* %21, i32 %i.2344, !dbg !2347
  %22 = load i8* %arrayidx62, align 1, !dbg !2347, !tbaa !2149
  call void @llvm.dbg.value(metadata !{i8 %22}, i64 0, metadata !626), !dbg !2347
  %cmp64 = icmp ne i8 %22, 125, !dbg !2345
  %or.cond = or i1 %cmp64, %tobool, !dbg !2345
  br i1 %or.cond, label %if.end71, label %if.then66, !dbg !2345

if.then66:                                        ; preds = %for.body59
  %23 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2344, i32 1), !dbg !2348
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !2348
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !2348
  br i1 %25, label %ioc_bb67, label %cont114, !dbg !2348

ioc_bb67:                                         ; preds = %if.then66
  %26 = zext i32 %i.2344 to i64, !dbg !2348
  call void @__ioc_report_add_overflow(i32 745, i32 14, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind, !dbg !2348
  %.pre362 = load i32* %len53, align 4, !dbg !2350, !tbaa !2148
  br label %cont114, !dbg !2348

if.end71:                                         ; preds = %for.body59
  %.off = add i8 %22, -65, !dbg !2351
  %27 = icmp ult i8 %.off, 26, !dbg !2351
  %.off336 = add i8 %22, -97, !dbg !2351
  %28 = icmp ult i8 %.off336, 26, !dbg !2351
  %or.cond339 = or i1 %27, %28, !dbg !2351
  br i1 %or.cond339, label %for.inc, label %lor.lhs.false86, !dbg !2351

lor.lhs.false86:                                  ; preds = %if.end71
  %.off337 = add i8 %22, -48, !dbg !2351
  %29 = icmp ult i8 %.off337, 10, !dbg !2351
  %cmp96 = icmp eq i8 %22, 95, !dbg !2351
  %or.cond330 = or i1 %29, %cmp96, !dbg !2351
  br i1 %or.cond330, label %for.inc, label %for.end, !dbg !2351

for.inc:                                          ; preds = %lor.lhs.false86, %if.end71
  %30 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2344, i32 1), !dbg !2329
  %31 = extractvalue { i32, i1 } %30, 0, !dbg !2329
  %32 = extractvalue { i32, i1 } %30, 1, !dbg !2329
  br i1 %32, label %ioc_bb100, label %cont101, !dbg !2329

ioc_bb100:                                        ; preds = %for.inc
  %33 = zext i32 %i.2344 to i64, !dbg !2329
  call void @__ioc_report_add_overflow(i32 742, i32 47, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %33, i64 1, i8 5) nounwind, !dbg !2329
  %.pre361 = load i32* %len53, align 4, !dbg !2329, !tbaa !2148
  br label %cont101, !dbg !2329

cont101:                                          ; preds = %for.inc, %ioc_bb100
  %34 = phi i32 [ %20, %for.inc ], [ %.pre361, %ioc_bb100 ]
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !627), !dbg !2329
  %35 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %34, i32 1), !dbg !2329
  %36 = extractvalue { i32, i1 } %35, 0, !dbg !2329
  %37 = extractvalue { i32, i1 } %35, 1, !dbg !2329
  br i1 %37, label %ioc_bb103, label %for.cond54.backedge, !dbg !2329

for.cond54.backedge:                              ; preds = %cont101, %ioc_bb103
  store i32 %36, i32* %len53, align 4, !dbg !2329
  %38 = load i32* %len1, align 4, !dbg !2329, !tbaa !2148
  %cmp57 = icmp ult i32 %31, %38, !dbg !2329
  br i1 %cmp57, label %for.body59, label %for.end, !dbg !2329

ioc_bb103:                                        ; preds = %cont101
  %39 = zext i32 %34 to i64, !dbg !2329
  call void @__ioc_report_add_overflow(i32 742, i32 59, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %39, i64 1, i8 5) nounwind, !dbg !2329
  br label %for.cond54.backedge, !dbg !2329

for.end:                                          ; preds = %for.cond54.backedge, %lor.lhs.false86, %cont52
  %40 = phi i32 [ 0, %cont52 ], [ %20, %lor.lhs.false86 ], [ %36, %for.cond54.backedge ]
  %i.2.lcssa = phi i32 [ %i.1, %cont52 ], [ %i.2344, %lor.lhs.false86 ], [ %31, %for.cond54.backedge ]
  %tobool105 = icmp eq i32 %bracket.0, 0, !dbg !2352
  br i1 %tobool105, label %cont114, label %cont108, !dbg !2352

cont108:                                          ; preds = %for.end
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([48 x i8]* @.str20, i32 0, i32 0), %struct.ngx_str_t* %var) nounwind, !dbg !2353
  br label %return, !dbg !2355

cont114:                                          ; preds = %if.then66, %ioc_bb67, %for.end
  %41 = phi i32 [ %40, %for.end ], [ %.pre362, %ioc_bb67 ], [ %20, %if.then66 ]
  %i.3332 = phi i32 [ %i.2.lcssa, %for.end ], [ %24, %ioc_bb67 ], [ %24, %if.then66 ]
  %cmp115 = icmp eq i32 %41, 0, !dbg !2350
  br i1 %cmp115, label %cont239, label %if.end118, !dbg !2350

if.end118:                                        ; preds = %cont114
  %42 = load i8** %data43, align 4, !dbg !2356, !tbaa !2155
  %call122 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([18 x i8]* @.str21, i32 0, i32 0), i32 17) nounwind readonly, !dbg !2356
  %cmp123 = icmp eq i32 %call122, 0, !dbg !2356
  br i1 %cmp123, label %cont127, label %for.cond129.preheader, !dbg !2356

cont127:                                          ; preds = %if.end118
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 5, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([55 x i8]* @.str22, i32 0, i32 0)) nounwind, !dbg !2357
  %.pre363 = load i32* %len53, align 4, !dbg !2359, !tbaa !2148
  %.pre364 = load i8** %data43, align 4, !dbg !2359, !tbaa !2155
  br label %for.cond129.preheader, !dbg !2362

for.cond129.preheader:                            ; preds = %cont127, %if.end118
  %43 = phi i8* [ %.pre364, %cont127 ], [ %42, %if.end118 ]
  %44 = phi i32 [ %.pre363, %cont127 ], [ %41, %if.end118 ]
  %cmp136 = icmp eq i32 %44, 10, !dbg !2359
  br i1 %cmp136, label %land.lhs.true138, label %for.inc154, !dbg !2359

land.lhs.true138:                                 ; preds = %for.cond129.preheader
  %call143 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str24, i32 0, i32 0), i8* %43, i32 10) nounwind readonly, !dbg !2359
  %cmp144 = icmp eq i32 %call143, 0, !dbg !2359
  br i1 %cmp144, label %if.then146, label %for.inc154.2, !dbg !2359

if.then146:                                       ; preds = %land.lhs.true138.11, %land.lhs.true138.10, %land.lhs.true138.9, %land.lhs.true138.8, %land.lhs.true138.7, %land.lhs.true138.6, %land.lhs.true138.5, %land.lhs.true138.4, %land.lhs.true138.3, %land.lhs.true138.2, %land.lhs.true138.1, %land.lhs.true138
  %v.0347.lcssa = phi %struct.ngx_http_log_var_t* [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 0), %land.lhs.true138 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 1), %land.lhs.true138.1 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 2), %land.lhs.true138.2 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 3), %land.lhs.true138.3 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 4), %land.lhs.true138.4 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 5), %land.lhs.true138.5 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 6), %land.lhs.true138.6 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 7), %land.lhs.true138.7 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 8), %land.lhs.true138.8 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 9), %land.lhs.true138.9 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 10), %land.lhs.true138.10 ], [ getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 11), %land.lhs.true138.11 ]
  %len147 = getelementptr inbounds %struct.ngx_http_log_var_t* %v.0347.lcssa, i32 0, i32 1, !dbg !2363
  %45 = load i32* %len147, align 4, !dbg !2363, !tbaa !2148
  %len148 = bitcast i8* %call to i32*, !dbg !2363
  store i32 %45, i32* %len148, align 4, !dbg !2363, !tbaa !2148
  %getlen = getelementptr inbounds i8* %call, i32 4, !dbg !2365
  %46 = bitcast i8* %getlen to i32 (%struct.ngx_http_request_s*, i32)**, !dbg !2365
  store i32 (%struct.ngx_http_request_s*, i32)* null, i32 (%struct.ngx_http_request_s*, i32)** %46, align 4, !dbg !2365, !tbaa !2155
  %run = getelementptr inbounds %struct.ngx_http_log_var_t* %v.0347.lcssa, i32 0, i32 2, !dbg !2366
  %47 = load i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)** %run, align 4, !dbg !2366, !tbaa !2155
  %run149 = getelementptr inbounds i8* %call, i32 8, !dbg !2366
  %48 = bitcast i8* %run149 to i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)**, !dbg !2366
  store i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* %47, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)** %48, align 4, !dbg !2366, !tbaa !2155
  %data152 = getelementptr inbounds i8* %call, i32 12, !dbg !2367
  %49 = bitcast i8* %data152 to i32*, !dbg !2367
  store i32 0, i32* %49, align 4, !dbg !2367, !tbaa !2148
  br label %while.cond.backedge, !dbg !2368

for.inc154:                                       ; preds = %for.cond129.preheader
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  switch i32 %44, label %for.inc154.3 [
    i32 19, label %land.lhs.true138.1
    i32 4, label %land.lhs.true138.2
  ], !dbg !2359

cont4.i:                                          ; preds = %for.inc154.11
  %len.i = bitcast i8* %call to i32*, !dbg !2371
  store i32 0, i32* %len.i, align 4, !dbg !2371, !tbaa !2148
  %getlen.i = getelementptr inbounds i8* %call, i32 4, !dbg !2373
  %50 = bitcast i8* %getlen.i to i32 (%struct.ngx_http_request_s*, i32)**, !dbg !2373
  store i32 (%struct.ngx_http_request_s*, i32)* @ngx_http_log_variable_getlen, i32 (%struct.ngx_http_request_s*, i32)** %50, align 4, !dbg !2373, !tbaa !2155
  %run.i = getelementptr inbounds i8* %call, i32 8, !dbg !2374
  %51 = bitcast i8* %run.i to i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)**, !dbg !2374
  store i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_variable, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)** %51, align 4, !dbg !2374, !tbaa !2155
  %52 = icmp sgt i32 %call.i, -1, !dbg !2375
  br i1 %52, label %if.end162, label %ioc_bb5.i, !dbg !2375

ioc_bb5.i:                                        ; preds = %cont4.i
  %53 = sext i32 %call.i to i64, !dbg !2375
  call void @__ioc_report_conversion(i32 401, i32 16, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %53, i8 1) nounwind, !dbg !2375
  br label %if.end162, !dbg !2375

if.end162:                                        ; preds = %cont4.i, %ioc_bb5.i
  %data.i = getelementptr inbounds i8* %call, i32 12, !dbg !2375
  %54 = bitcast i8* %data.i to i32*, !dbg !2375
  store i32 %call.i, i32* %54, align 4, !dbg !2375, !tbaa !2148
  br i1 %tobool163, label %while.cond.backedge, label %if.then164, !dbg !2331

if.then164:                                       ; preds = %if.end162
  %call165 = call i8* @ngx_array_push(%struct.ngx_array_s* %flushes) nounwind, !dbg !2376
  %55 = bitcast i8* %call165 to i32*, !dbg !2376
  call void @llvm.dbg.value(metadata !{i32* %55}, i64 0, metadata !631), !dbg !2376
  %cmp166 = icmp eq i8* %call165, null, !dbg !2378
  br i1 %cmp166, label %return, label %if.end171, !dbg !2378

if.end171:                                        ; preds = %if.then164
  %56 = load i32* %54, align 4, !dbg !2379, !tbaa !2148
  %57 = icmp sgt i32 %56, -1, !dbg !2379
  br i1 %57, label %cont174, label %ioc_bb173, !dbg !2379

ioc_bb173:                                        ; preds = %if.end171
  %58 = zext i32 %56 to i64, !dbg !2379
  call void @__ioc_report_conversion(i32 782, i32 21, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %58, i8 0) nounwind, !dbg !2379
  br label %cont174, !dbg !2379

cont174:                                          ; preds = %ioc_bb173, %if.end171
  store i32 %56, i32* %55, align 4, !dbg !2379, !tbaa !2148
  br label %while.cond.backedge, !dbg !2380

while.cond.backedge:                              ; preds = %cont197, %if.end162, %cont211, %cont174, %if.then146, %if.end229
  %i.0.be = phi i32 [ %i.3332, %if.then146 ], [ %i.3332, %cont174 ], [ %i.4.lcssa, %if.end229 ], [ %i.4.lcssa, %cont211 ], [ %i.3332, %if.end162 ], [ %i.4.lcssa, %cont197 ]
  %59 = load i32* %len1, align 4, !dbg !2335, !tbaa !2148
  %cmp2 = icmp ult i32 %i.0.be, %59, !dbg !2335
  br i1 %cmp2, label %while.body, label %for.inc234, !dbg !2335

if.end176:                                        ; preds = %if.end
  br i1 %8, label %ioc_bb177, label %while.cond179.preheader, !dbg !2381

ioc_bb177:                                        ; preds = %if.end176
  call void @__ioc_report_add_overflow(i32 787, i32 8, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %9, i64 1, i8 5) nounwind, !dbg !2381
  br label %while.cond179.preheader, !dbg !2381

while.cond179.preheader:                          ; preds = %if.end176, %ioc_bb177
  %60 = load i32* %len1, align 4, !dbg !2382, !tbaa !2148
  %cmp182340 = icmp ult i32 %7, %60, !dbg !2382
  br i1 %cmp182340, label %land.rhs, label %while.end, !dbg !2382

land.rhs:                                         ; preds = %while.cond179.backedge, %while.cond179.preheader
  %61 = phi i32 [ %60, %while.cond179.preheader ], [ %67, %while.cond179.backedge ]
  %i.4341 = phi i32 [ %7, %while.cond179.preheader ], [ %65, %while.cond179.backedge ]
  %62 = load i8** %data7, align 4, !dbg !2382, !tbaa !2155
  %arrayidx186 = getelementptr inbounds i8* %62, i32 %i.4341, !dbg !2382
  %63 = load i8* %arrayidx186, align 1, !dbg !2382, !tbaa !2149
  %cmp188 = icmp eq i8 %63, 36, !dbg !2382
  br i1 %cmp188, label %while.end, label %while.body190

while.body190:                                    ; preds = %land.rhs
  %64 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.4341, i32 1), !dbg !2383
  %65 = extractvalue { i32, i1 } %64, 0, !dbg !2383
  %66 = extractvalue { i32, i1 } %64, 1, !dbg !2383
  br i1 %66, label %ioc_bb191, label %while.cond179.backedge, !dbg !2383

while.cond179.backedge:                           ; preds = %while.body190, %ioc_bb191
  %67 = phi i32 [ %61, %while.body190 ], [ %.pre365, %ioc_bb191 ], !dbg !2382
  %cmp182 = icmp ult i32 %65, %67, !dbg !2382
  br i1 %cmp182, label %land.rhs, label %while.end, !dbg !2382

ioc_bb191:                                        ; preds = %while.body190
  %68 = zext i32 %i.4341 to i64, !dbg !2383
  call void @__ioc_report_add_overflow(i32 789, i32 10, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %68, i64 1, i8 5) nounwind, !dbg !2383
  %.pre365 = load i32* %len1, align 4, !dbg !2382, !tbaa !2148
  br label %while.cond179.backedge, !dbg !2383

while.end:                                        ; preds = %while.cond179.backedge, %land.rhs, %while.cond179.preheader
  %i.4.lcssa = phi i32 [ %7, %while.cond179.preheader ], [ %i.4341, %land.rhs ], [ %65, %while.cond179.backedge ]
  %69 = load i8** %data7, align 4, !dbg !2385, !tbaa !2155
  %arrayidx195 = getelementptr inbounds i8* %69, i32 %i.4.lcssa, !dbg !2385
  %sub.ptr.lhs.cast = ptrtoint i8* %arrayidx195 to i32, !dbg !2385
  %sub.ptr.rhs.cast = ptrtoint i8* %arrayidx8 to i32, !dbg !2385
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2385
  %70 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2385
  br i1 %70, label %cont197, label %ioc_bb196, !dbg !2385

ioc_bb196:                                        ; preds = %while.end
  %71 = sext i32 %sub.ptr.sub to i64, !dbg !2385
  call void @__ioc_report_conversion(i32 791, i32 13, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %71, i8 1) nounwind, !dbg !2385
  br label %cont197, !dbg !2385

cont197:                                          ; preds = %ioc_bb196, %while.end
  call void @llvm.dbg.value(metadata !{i32 %sub.ptr.sub}, i64 0, metadata !628), !dbg !2385
  %tobool198 = icmp eq i8* %arrayidx195, %arrayidx8, !dbg !2386
  br i1 %tobool198, label %while.cond.backedge, label %if.then199, !dbg !2386

if.then199:                                       ; preds = %cont197
  %len200 = bitcast i8* %call to i32*, !dbg !2387
  store i32 %sub.ptr.sub, i32* %len200, align 4, !dbg !2387, !tbaa !2148
  %getlen201 = getelementptr inbounds i8* %call, i32 4, !dbg !2388
  %72 = bitcast i8* %getlen201 to i32 (%struct.ngx_http_request_s*, i32)**, !dbg !2388
  store i32 (%struct.ngx_http_request_s*, i32)* null, i32 (%struct.ngx_http_request_s*, i32)** %72, align 4, !dbg !2388, !tbaa !2155
  %cmp202 = icmp ult i32 %sub.ptr.sub, 5, !dbg !2389
  %run205 = getelementptr inbounds i8* %call, i32 8, !dbg !2390
  %73 = bitcast i8* %run205 to i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)**, !dbg !2390
  br i1 %cmp202, label %if.then204, label %if.else221, !dbg !2389

if.then204:                                       ; preds = %if.then199
  store i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_copy_short, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)** %73, align 4, !dbg !2390, !tbaa !2155
  %data208 = getelementptr inbounds i8* %call, i32 12, !dbg !2392
  %74 = bitcast i8* %data208 to i32*, !dbg !2392
  br label %while.cond209, !dbg !2393

while.cond209:                                    ; preds = %cont216, %if.then204
  %storemerge = phi i32 [ 0, %if.then204 ], [ %or, %cont216 ]
  %len.0 = phi i32 [ %sub.ptr.sub, %if.then204 ], [ %76, %cont216 ]
  store i32 %storemerge, i32* %74, align 4, !dbg !2394
  %75 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0, i32 1), !dbg !2393
  %76 = extractvalue { i32, i1 } %75, 0, !dbg !2393
  %77 = extractvalue { i32, i1 } %75, 1, !dbg !2393
  br i1 %77, label %ioc_bb210, label %cont211, !dbg !2393

ioc_bb210:                                        ; preds = %while.cond209
  %78 = zext i32 %len.0 to i64, !dbg !2393
  call void @__ioc_report_sub_overflow(i32 798, i32 20, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %78, i64 1, i8 5) nounwind, !dbg !2393
  br label %cont211, !dbg !2393

cont211:                                          ; preds = %while.cond209, %ioc_bb210
  call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !628), !dbg !2393
  %tobool212 = icmp eq i32 %len.0, 0, !dbg !2393
  br i1 %tobool212, label %while.cond.backedge, label %cont216, !dbg !2393

cont216:                                          ; preds = %cont211
  %79 = load i32* %74, align 4, !dbg !2396, !tbaa !2148
  %shl = shl i32 %79, 8, !dbg !2396
  store i32 %shl, i32* %74, align 4, !dbg !2396, !tbaa !2148
  %arrayidx8.sum = add i32 %76, %i.0350, !dbg !2394
  %arrayidx217 = getelementptr inbounds i8* %4, i32 %arrayidx8.sum, !dbg !2394
  %80 = load i8* %arrayidx217, align 1, !dbg !2394, !tbaa !2149
  %conv218 = zext i8 %80 to i32, !dbg !2394
  %or = or i32 %conv218, %shl, !dbg !2394
  br label %while.cond209, !dbg !2397

if.else221:                                       ; preds = %if.then199
  store i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_copy_long, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)** %73, align 4, !dbg !2398, !tbaa !2155
  %81 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2332, !tbaa !2155
  %call223 = call i8* @ngx_pnalloc(%struct.ngx_pool_s* %81, i32 %sub.ptr.sub) nounwind, !dbg !2332
  call void @llvm.dbg.value(metadata !{i8* %call223}, i64 0, metadata !625), !dbg !2332
  %cmp224 = icmp eq i8* %call223, null, !dbg !2399
  br i1 %cmp224, label %return, label %if.end229, !dbg !2399

if.end229:                                        ; preds = %if.else221
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call223, i8* %arrayidx8, i32 %sub.ptr.sub, i32 1, i1 false), !dbg !2400
  %82 = ptrtoint i8* %call223 to i32, !dbg !2401
  %data230 = getelementptr inbounds i8* %call, i32 12, !dbg !2401
  %83 = bitcast i8* %data230 to i32*, !dbg !2401
  store i32 %82, i32* %83, align 4, !dbg !2401, !tbaa !2148
  br label %while.cond.backedge

for.inc234:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %84 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %s.addr.0353, i32 1), !dbg !2322
  %85 = extractvalue { i32, i1 } %84, 0, !dbg !2322
  %86 = extractvalue { i32, i1 } %84, 1, !dbg !2322
  br i1 %86, label %ioc_bb235, label %for.cond.backedge, !dbg !2322

for.cond.backedge:                                ; preds = %for.inc234, %ioc_bb235
  %87 = load i32* %nelts, align 4, !dbg !2322, !tbaa !2148
  %cmp = icmp ult i32 %85, %87, !dbg !2322
  br i1 %cmp, label %while.cond.preheader, label %return, !dbg !2322

ioc_bb235:                                        ; preds = %for.inc234
  %88 = zext i32 %s.addr.0353 to i64, !dbg !2322
  call void @__ioc_report_add_overflow(i32 719, i32 30, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %88, i64 1, i8 5) nounwind, !dbg !2322
  br label %for.cond.backedge, !dbg !2322

cont239:                                          ; preds = %cont16, %cont33, %cont114
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str23, i32 0, i32 0), i8* %arrayidx8) nounwind, !dbg !2402
  br label %return, !dbg !2403

return:                                           ; preds = %entry, %for.cond.backedge, %for.inc154.11, %if.else221, %if.then164, %while.body, %cont239, %cont108
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont239 ], [ inttoptr (i32 -1 to i8*), %cont108 ], [ inttoptr (i32 -1 to i8*), %while.body ], [ inttoptr (i32 -1 to i8*), %if.then164 ], [ inttoptr (i32 -1 to i8*), %if.else221 ], [ inttoptr (i32 -1 to i8*), %for.inc154.11 ], [ null, %for.cond.backedge ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2404

land.lhs.true138.1:                               ; preds = %for.inc154
  %call143.1 = call i32 @strncmp(i8* getelementptr inbounds ([20 x i8]* @.str25, i32 0, i32 0), i8* %43, i32 19) nounwind readonly, !dbg !2359
  %cmp144.1 = icmp eq i32 %call143.1, 0, !dbg !2359
  br i1 %cmp144.1, label %if.then146, label %for.inc154.2, !dbg !2359

land.lhs.true138.2:                               ; preds = %for.inc154
  %call143.2 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8]* @.str26, i32 0, i32 0), i8* %43, i32 4) nounwind readonly, !dbg !2359
  %cmp144.2 = icmp eq i32 %call143.2, 0, !dbg !2359
  br i1 %cmp144.2, label %if.then146, label %for.inc154.2, !dbg !2359

for.inc154.2:                                     ; preds = %land.lhs.true138, %land.lhs.true138.1, %land.lhs.true138.2
  %cmp136.2369 = phi i1 [ true, %land.lhs.true138.2 ], [ false, %land.lhs.true138.1 ], [ false, %land.lhs.true138 ]
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  br i1 %cmp136, label %land.lhs.true138.3, label %for.inc154.3, !dbg !2359

land.lhs.true138.3:                               ; preds = %for.inc154.2
  %call143.3 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str27, i32 0, i32 0), i8* %43, i32 10) nounwind readonly, !dbg !2359
  %cmp144.3 = icmp eq i32 %call143.3, 0, !dbg !2359
  br i1 %cmp144.3, label %if.then146, label %for.inc154.3.thread, !dbg !2359

for.inc154.3.thread:                              ; preds = %land.lhs.true138.3
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  br i1 %cmp136.2369, label %land.lhs.true138.5, label %for.inc154.6, !dbg !2359

for.inc154.3:                                     ; preds = %for.inc154, %for.inc154.2
  %cmp136.2369370 = phi i1 [ %cmp136.2369, %for.inc154.2 ], [ false, %for.inc154 ]
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  %cmp136.4 = icmp eq i32 %44, 12, !dbg !2359
  br i1 %cmp136.4, label %land.lhs.true138.4, label %for.inc154.4, !dbg !2359

land.lhs.true138.4:                               ; preds = %for.inc154.3
  %call143.4 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8]* @.str28, i32 0, i32 0), i8* %43, i32 12) nounwind readonly, !dbg !2359
  %cmp144.4 = icmp eq i32 %call143.4, 0, !dbg !2359
  br i1 %cmp144.4, label %if.then146, label %for.inc154.4, !dbg !2359

for.inc154.4:                                     ; preds = %land.lhs.true138.4, %for.inc154.3
  %cmp136.4373 = phi i1 [ true, %land.lhs.true138.4 ], [ false, %for.inc154.3 ]
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  br i1 %cmp136.2369370, label %land.lhs.true138.5, label %for.inc154.5, !dbg !2359

land.lhs.true138.5:                               ; preds = %for.inc154.3.thread, %for.inc154.4
  %cmp136.4373375 = phi i1 [ false, %for.inc154.3.thread ], [ %cmp136.4373, %for.inc154.4 ]
  %call143.5 = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8]* @.str29, i32 0, i32 0), i8* %43, i32 4) nounwind readonly, !dbg !2359
  %cmp144.5 = icmp eq i32 %call143.5, 0, !dbg !2359
  br i1 %cmp144.5, label %if.then146, label %for.inc154.5, !dbg !2359

for.inc154.5:                                     ; preds = %land.lhs.true138.5, %for.inc154.4
  %cmp136.4373374 = phi i1 [ %cmp136.4373375, %land.lhs.true138.5 ], [ %cmp136.4373, %for.inc154.4 ]
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  br i1 %cmp136.4373374, label %land.lhs.true138.6, label %for.inc154.6, !dbg !2359

land.lhs.true138.6:                               ; preds = %for.inc154.5
  %call143.6 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8]* @.str30, i32 0, i32 0), i8* %43, i32 12) nounwind readonly, !dbg !2359
  %cmp144.6 = icmp eq i32 %call143.6, 0, !dbg !2359
  br i1 %cmp144.6, label %if.then146, label %for.inc154.6, !dbg !2359

for.inc154.6:                                     ; preds = %for.inc154.3.thread, %land.lhs.true138.6, %for.inc154.5
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  %cmp136.7 = icmp eq i32 %44, 6, !dbg !2359
  br i1 %cmp136.7, label %land.lhs.true138.7, label %for.inc154.7, !dbg !2359

land.lhs.true138.7:                               ; preds = %for.inc154.6
  %call143.7 = call i32 @strncmp(i8* getelementptr inbounds ([7 x i8]* @.str31, i32 0, i32 0), i8* %43, i32 6) nounwind readonly, !dbg !2359
  %cmp144.7 = icmp eq i32 %call143.7, 0, !dbg !2359
  br i1 %cmp144.7, label %if.then146, label %for.inc154.7, !dbg !2359

for.inc154.7:                                     ; preds = %land.lhs.true138.7, %for.inc154.6
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  br i1 %cmp136, label %land.lhs.true138.8, label %for.inc154.8, !dbg !2359

land.lhs.true138.8:                               ; preds = %for.inc154.7
  %call143.8 = call i32 @strncmp(i8* getelementptr inbounds ([11 x i8]* @.str32, i32 0, i32 0), i8* %43, i32 10) nounwind readonly, !dbg !2359
  %cmp144.8 = icmp eq i32 %call143.8, 0, !dbg !2359
  br i1 %cmp144.8, label %if.then146, label %for.inc154.11, !dbg !2359

for.inc154.8:                                     ; preds = %for.inc154.7
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  switch i32 %44, label %for.inc154.11 [
    i32 15, label %land.lhs.true138.9
    i32 17, label %land.lhs.true138.10
    i32 14, label %land.lhs.true138.11
  ], !dbg !2359

land.lhs.true138.9:                               ; preds = %for.inc154.8
  %call143.9 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8]* @.str33, i32 0, i32 0), i8* %43, i32 15) nounwind readonly, !dbg !2359
  %cmp144.9 = icmp eq i32 %call143.9, 0, !dbg !2359
  br i1 %cmp144.9, label %if.then146, label %for.inc154.11, !dbg !2359

land.lhs.true138.10:                              ; preds = %for.inc154.8
  %call143.10 = call i32 @strncmp(i8* getelementptr inbounds ([18 x i8]* @.str21, i32 0, i32 0), i8* %43, i32 17) nounwind readonly, !dbg !2359
  %cmp144.10 = icmp eq i32 %call143.10, 0, !dbg !2359
  br i1 %cmp144.10, label %if.then146, label %for.inc154.11, !dbg !2359

land.lhs.true138.11:                              ; preds = %for.inc154.8
  %call143.11 = call i32 @strncmp(i8* getelementptr inbounds ([15 x i8]* @.str34, i32 0, i32 0), i8* %43, i32 14) nounwind readonly, !dbg !2359
  %cmp144.11 = icmp eq i32 %call143.11, 0, !dbg !2359
  br i1 %cmp144.11, label %if.then146, label %for.inc154.11, !dbg !2359

for.inc154.11:                                    ; preds = %for.inc154.8, %land.lhs.true138.9, %land.lhs.true138.8, %land.lhs.true138.10, %land.lhs.true138.11
  call void @llvm.dbg.value(metadata !2369, i64 0, metadata !1736), !dbg !2370
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2405) nounwind, !dbg !2406
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %var}, i64 0, metadata !2407) nounwind, !dbg !2406
  %call.i = call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %var) nounwind, !dbg !2408
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !2409) nounwind, !dbg !2408
  %cmp.i = icmp eq i32 %call.i, -1, !dbg !2410
  br i1 %cmp.i, label %return, label %cont4.i, !dbg !2410
}

define internal i8* @ngx_http_log_copy_short(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1753), !dbg !2411
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1754), !dbg !2411
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1755), !dbg !2411
  %len1 = getelementptr inbounds %struct.ngx_http_log_op_s* %op, i32 0, i32 0, !dbg !2412
  %0 = load i32* %len1, align 4, !dbg !2412, !tbaa !2148
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !1756), !dbg !2412
  %data2 = getelementptr inbounds %struct.ngx_http_log_op_s* %op, i32 0, i32 3, !dbg !2413
  %1 = load i32* %data2, align 4, !dbg !2413, !tbaa !2148
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !1758), !dbg !2413
  br label %while.cond, !dbg !2414

while.cond:                                       ; preds = %cont6, %entry
  %buf.addr.0 = phi i8* [ %buf, %entry ], [ %incdec.ptr, %cont6 ]
  %len.0 = phi i32 [ %0, %entry ], [ %3, %cont6 ]
  %data.0 = phi i32 [ %1, %entry ], [ %shr, %cont6 ]
  %2 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0, i32 1), !dbg !2414
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !2414
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !2414
  br i1 %4, label %ioc_bb, label %cont, !dbg !2414

ioc_bb:                                           ; preds = %while.cond
  %5 = zext i32 %len.0 to i64, !dbg !2414
  tail call void @__ioc_report_sub_overflow(i32 288, i32 12, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %5, i64 1, i8 5) nounwind, !dbg !2414
  br label %cont, !dbg !2414

cont:                                             ; preds = %while.cond, %ioc_bb
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !1756), !dbg !2414
  %tobool = icmp eq i32 %len.0, 0, !dbg !2414
  br i1 %tobool, label %while.end, label %cont6, !dbg !2414

cont6:                                            ; preds = %cont
  %conv = trunc i32 %data.0 to i8, !dbg !2415
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1754), !dbg !2415
  store i8 %conv, i8* %buf.addr.0, align 1, !dbg !2415, !tbaa !2149
  %incdec.ptr = getelementptr inbounds i8* %buf.addr.0, i32 1, !dbg !2415
  %shr = lshr i32 %data.0, 8, !dbg !2417
  tail call void @llvm.dbg.value(metadata !{i32 %shr}, i64 0, metadata !1758), !dbg !2417
  br label %while.cond, !dbg !2418

while.end:                                        ; preds = %cont
  ret i8* %buf.addr.0, !dbg !2419
}

define internal i8* @ngx_http_log_copy_long(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1747), !dbg !2420
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1748), !dbg !2420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1749), !dbg !2420
  %data = getelementptr inbounds %struct.ngx_http_log_op_s* %op, i32 0, i32 3, !dbg !2421
  %0 = load i32* %data, align 4, !dbg !2421, !tbaa !2148
  %1 = inttoptr i32 %0 to i8*, !dbg !2421
  %len = getelementptr inbounds %struct.ngx_http_log_op_s* %op, i32 0, i32 0, !dbg !2421
  %2 = load i32* %len, align 4, !dbg !2421, !tbaa !2148
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf, i8* %1, i32 %2, i32 1, i1 false), !dbg !2421
  %3 = load i32* %len, align 4, !dbg !2421, !tbaa !2148
  %add.ptr = getelementptr inbounds i8* %buf, i32 %3, !dbg !2421
  ret i8* %add.ptr, !dbg !2421
}

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_http_get_variable_index(%struct.ngx_conf_s*, %struct.ngx_str_t*)

define internal i32 @ngx_http_log_variable_getlen(%struct.ngx_http_request_s* %r, i32 %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1790), !dbg !2423
  tail call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1791), !dbg !2423
  %call = tail call %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s* %r, i32 %data) nounwind, !dbg !2424
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call}, i64 0, metadata !1794), !dbg !2424
  %cmp = icmp eq %struct.ngx_variable_value_t* %call, null, !dbg !2425
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !2425

lor.lhs.false:                                    ; preds = %entry
  %0 = bitcast %struct.ngx_variable_value_t* %call to i32*, !dbg !2425
  %1 = load i32* %0, align 4, !dbg !2425
  %bf.clear = and i32 %1, 1073741824, !dbg !2425
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2425
  br i1 %tobool, label %if.end, label %return, !dbg !2425

if.end:                                           ; preds = %lor.lhs.false
  %data3 = getelementptr inbounds %struct.ngx_variable_value_t* %call, i32 0, i32 1, !dbg !2426
  %2 = load i8** %data3, align 4, !dbg !2426, !tbaa !2155
  %bf.clear4 = and i32 %1, 268435455, !dbg !2426
  %call5 = tail call fastcc i32 @ngx_http_log_escape(i8* null, i8* %2, i32 %bf.clear4), !dbg !2426
  tail call void @llvm.dbg.value(metadata !{i32 %call5}, i64 0, metadata !1792), !dbg !2426
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2427
  %cond = zext i1 %tobool6 to i32, !dbg !2427
  %3 = shl nuw i32 %cond, 31, !dbg !2427
  %4 = load i32* %0, align 4, !dbg !2427
  %5 = and i32 %4, 2147483647, !dbg !2427
  %6 = or i32 %3, %5, !dbg !2427
  store i32 %6, i32* %0, align 4, !dbg !2427
  %bf.clear9 = and i32 %4, 268435455, !dbg !2428
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call5, i32 3), !dbg !2428
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !2428
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !2428
  br i1 %9, label %ioc_bb12, label %cont13, !dbg !2428

ioc_bb12:                                         ; preds = %if.end
  %10 = zext i32 %call5 to i64, !dbg !2428
  tail call void @__ioc_report_mul_overflow(i32 415, i32 29, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %10, i64 3, i8 5) nounwind, !dbg !2428
  br label %cont13, !dbg !2428

cont13:                                           ; preds = %if.end, %ioc_bb12
  %11 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %bf.clear9, i32 %8), !dbg !2428
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !2428
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !2428
  br i1 %13, label %ioc_bb14, label %return, !dbg !2428

ioc_bb14:                                         ; preds = %cont13
  %14 = zext i32 %8 to i64, !dbg !2428
  %15 = zext i32 %bf.clear9 to i64, !dbg !2428
  tail call void @__ioc_report_add_overflow(i32 415, i32 23, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %15, i64 %14, i8 5) nounwind, !dbg !2428
  br label %return, !dbg !2428

return:                                           ; preds = %ioc_bb14, %cont13, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 1, %entry ], [ 1, %lor.lhs.false ], [ %12, %cont13 ], [ %12, %ioc_bb14 ]
  ret i32 %retval.0, !dbg !2429
}

define internal i8* @ngx_http_log_variable(%struct.ngx_http_request_s* %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1772), !dbg !2430
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1773), !dbg !2430
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1774), !dbg !2430
  %data = getelementptr inbounds %struct.ngx_http_log_op_s* %op, i32 0, i32 3, !dbg !2431
  %0 = load i32* %data, align 4, !dbg !2431, !tbaa !2148
  %call = tail call %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s* %r, i32 %0) nounwind, !dbg !2431
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call}, i64 0, metadata !1775), !dbg !2431
  %cmp = icmp eq %struct.ngx_variable_value_t* %call, null, !dbg !2432
  br i1 %cmp, label %cont2, label %lor.lhs.false, !dbg !2432

lor.lhs.false:                                    ; preds = %entry
  %1 = bitcast %struct.ngx_variable_value_t* %call to i32*, !dbg !2432
  %2 = load i32* %1, align 4, !dbg !2432
  %bf.clear = and i32 %2, 1073741824, !dbg !2432
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2432
  br i1 %tobool, label %cont6, label %cont2, !dbg !2432

cont2:                                            ; preds = %entry, %lor.lhs.false
  store i8 45, i8* %buf, align 1, !dbg !2433, !tbaa !2149
  %add.ptr = getelementptr inbounds i8* %buf, i32 1, !dbg !2435
  br label %return, !dbg !2435

cont6:                                            ; preds = %lor.lhs.false
  %cmp7 = icmp sgt i32 %2, -1, !dbg !2436
  %data9 = getelementptr inbounds %struct.ngx_variable_value_t* %call, i32 0, i32 1, !dbg !2437
  %3 = load i8** %data9, align 4, !dbg !2437, !tbaa !2155
  %bf.clear10 = and i32 %2, 268435455, !dbg !2437
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !2436

if.then8:                                         ; preds = %cont6
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf, i8* %3, i32 %bf.clear10, i32 1, i1 false), !dbg !2437
  %4 = load i32* %1, align 4, !dbg !2437
  %bf.clear11 = and i32 %4, 268435455, !dbg !2437
  %add.ptr15 = getelementptr inbounds i8* %buf, i32 %bf.clear11, !dbg !2437
  br label %return, !dbg !2437

if.else:                                          ; preds = %cont6
  %call18 = tail call fastcc i32 @ngx_http_log_escape(i8* %buf, i8* %3, i32 %bf.clear10), !dbg !2439
  %5 = inttoptr i32 %call18 to i8*, !dbg !2439
  br label %return, !dbg !2439

return:                                           ; preds = %if.else, %if.then8, %cont2
  %retval.0 = phi i8* [ %add.ptr, %cont2 ], [ %add.ptr15, %if.then8 ], [ %5, %if.else ]
  ret i8* %retval.0, !dbg !2441
}

declare %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s*, i32)

define internal fastcc i32 @ngx_http_log_escape(i8* %dst, i8* nocapture %src, i32 %size) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %dst}, i64 0, metadata !1782), !dbg !2442
  tail call void @llvm.dbg.value(metadata !{i8* %src}, i64 0, metadata !1783), !dbg !2442
  tail call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !1784), !dbg !2442
  %cmp = icmp eq i8* %dst, null, !dbg !2443
  %tobool85 = icmp eq i32 %size, 0, !dbg !2444
  br i1 %cmp, label %while.cond.preheader, label %while.cond18.preheader, !dbg !2443

while.cond18.preheader:                           ; preds = %entry
  br i1 %tobool85, label %while.end63, label %cont23, !dbg !2446

while.cond.preheader:                             ; preds = %entry
  br i1 %tobool85, label %return, label %cont2, !dbg !2444

cont2:                                            ; preds = %while.cond.preheader, %while.cond.backedge
  %n.088 = phi i32 [ %n.1, %while.cond.backedge ], [ 0, %while.cond.preheader ]
  %size.addr.087 = phi i32 [ %12, %while.cond.backedge ], [ %size, %while.cond.preheader ]
  %src.addr.086 = phi i8* [ %incdec.ptr, %while.cond.backedge ], [ %src, %while.cond.preheader ]
  %0 = load i8* %src.addr.086, align 1, !dbg !2447, !tbaa !2149
  %conv = zext i8 %0 to i32, !dbg !2447
  %shr84 = lshr i32 %conv, 5, !dbg !2447
  %arrayidx = getelementptr inbounds [8 x i32]* @ngx_http_log_escape.escape, i32 0, i32 %shr84, !dbg !2447
  %1 = load i32* %arrayidx, align 4, !dbg !2447, !tbaa !2148
  %and = and i32 %conv, 31, !dbg !2447
  %2 = xor i32 %and, 31, !dbg !2447
  %shl.check = lshr i32 1, %2, !dbg !2447
  %3 = icmp eq i32 %shl.check, 0, !dbg !2447
  br i1 %3, label %cont7, label %ioc_bb6, !dbg !2447

ioc_bb6:                                          ; preds = %cont2
  %4 = zext i32 %and to i64, !dbg !2447
  tail call void @__ioc_report_shl_strict(i32 454, i32 37, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 1, i64 %4, i8 13) nounwind, !dbg !2447
  br label %cont7, !dbg !2447

cont7:                                            ; preds = %ioc_bb6, %cont2
  %shl = shl i32 1, %and, !dbg !2447
  %5 = icmp sgt i32 %shl, -1, !dbg !2447
  br i1 %5, label %cont9, label %ioc_bb8, !dbg !2447

ioc_bb8:                                          ; preds = %cont7
  %6 = sext i32 %shl to i64, !dbg !2447
  tail call void @__ioc_report_conversion(i32 454, i32 34, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !2447
  br label %cont9, !dbg !2447

cont9:                                            ; preds = %ioc_bb8, %cont7
  %and10 = and i32 %shl, %1, !dbg !2447
  %tobool11 = icmp eq i32 %and10, 0, !dbg !2447
  br i1 %tobool11, label %if.end, label %if.then12, !dbg !2447

if.then12:                                        ; preds = %cont9
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.088, i32 1), !dbg !2449
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !2449
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !2449
  br i1 %9, label %ioc_bb13, label %if.end, !dbg !2449

ioc_bb13:                                         ; preds = %if.then12
  %10 = zext i32 %n.088 to i64, !dbg !2449
  tail call void @__ioc_report_add_overflow(i32 455, i32 10, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind, !dbg !2449
  br label %if.end, !dbg !2449

if.end:                                           ; preds = %ioc_bb13, %if.then12, %cont9
  %n.1 = phi i32 [ %n.088, %cont9 ], [ %8, %if.then12 ], [ %8, %ioc_bb13 ]
  %incdec.ptr = getelementptr inbounds i8* %src.addr.086, i32 1, !dbg !2451
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1783), !dbg !2451
  %11 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size.addr.087, i32 1), !dbg !2452
  %12 = extractvalue { i32, i1 } %11, 0, !dbg !2452
  %13 = extractvalue { i32, i1 } %11, 1, !dbg !2452
  br i1 %13, label %ioc_bb15, label %while.cond.backedge, !dbg !2452

while.cond.backedge:                              ; preds = %if.end, %ioc_bb15
  %tobool = icmp eq i32 %12, 0, !dbg !2444
  br i1 %tobool, label %return, label %cont2, !dbg !2444

ioc_bb15:                                         ; preds = %if.end
  %14 = zext i32 %size.addr.087 to i64, !dbg !2452
  tail call void @__ioc_report_sub_overflow(i32 458, i32 11, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %14, i64 1, i8 5) nounwind, !dbg !2452
  br label %while.cond.backedge, !dbg !2452

cont23:                                           ; preds = %while.cond18.preheader, %while.cond18.backedge
  %size.addr.192 = phi i32 [ %28, %while.cond18.backedge ], [ %size, %while.cond18.preheader ]
  %src.addr.191 = phi i8* [ %src.addr.2, %while.cond18.backedge ], [ %src, %while.cond18.preheader ]
  %dst.addr.090 = phi i8* [ %dst.addr.1, %while.cond18.backedge ], [ %dst, %while.cond18.preheader ]
  %15 = load i8* %src.addr.191, align 1, !dbg !2453, !tbaa !2149
  %conv21 = zext i8 %15 to i32, !dbg !2453
  %shr2482 = lshr i32 %conv21, 5, !dbg !2453
  %arrayidx25 = getelementptr inbounds [8 x i32]* @ngx_http_log_escape.escape, i32 0, i32 %shr2482, !dbg !2453
  %16 = load i32* %arrayidx25, align 4, !dbg !2453, !tbaa !2148
  %and27 = and i32 %conv21, 31, !dbg !2453
  %17 = xor i32 %and27, 31, !dbg !2453
  %shl.check31 = lshr i32 1, %17, !dbg !2453
  %18 = icmp eq i32 %shl.check31, 0, !dbg !2453
  br i1 %18, label %cont33, label %ioc_bb32, !dbg !2453

ioc_bb32:                                         ; preds = %cont23
  %19 = zext i32 %and27 to i64, !dbg !2453
  tail call void @__ioc_report_shl_strict(i32 463, i32 35, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 1, i64 %19, i8 13) nounwind, !dbg !2453
  br label %cont33, !dbg !2453

cont33:                                           ; preds = %ioc_bb32, %cont23
  %shl34 = shl i32 1, %and27, !dbg !2453
  %20 = icmp sgt i32 %shl34, -1, !dbg !2453
  br i1 %20, label %cont37, label %ioc_bb36, !dbg !2453

ioc_bb36:                                         ; preds = %cont33
  %21 = sext i32 %shl34 to i64, !dbg !2453
  tail call void @__ioc_report_conversion(i32 463, i32 32, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %21, i8 1) nounwind, !dbg !2453
  br label %cont37, !dbg !2453

cont37:                                           ; preds = %ioc_bb36, %cont33
  %and38 = and i32 %shl34, %16, !dbg !2453
  %tobool39 = icmp eq i32 %and38, 0, !dbg !2453
  br i1 %tobool39, label %if.else, label %cont42, !dbg !2453

cont42:                                           ; preds = %cont37
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr43}, i64 0, metadata !1782), !dbg !2455
  store i8 92, i8* %dst.addr.090, align 1, !dbg !2455, !tbaa !2149
  %incdec.ptr43 = getelementptr inbounds i8* %dst.addr.090, i32 1, !dbg !2455
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr46}, i64 0, metadata !1782), !dbg !2457
  store i8 120, i8* %incdec.ptr43, align 1, !dbg !2457, !tbaa !2149
  %22 = load i8* %src.addr.191, align 1, !dbg !2458, !tbaa !2149
  %incdec.ptr46 = getelementptr inbounds i8* %dst.addr.090, i32 2, !dbg !2457
  %conv47 = zext i8 %22 to i32, !dbg !2458
  %shr5083 = lshr i32 %conv47, 4, !dbg !2458
  %arrayidx51 = getelementptr inbounds [17 x i8]* @ngx_http_log_escape.hex, i32 0, i32 %shr5083, !dbg !2458
  %23 = load i8* %arrayidx51, align 1, !dbg !2458, !tbaa !2149
  %incdec.ptr52 = getelementptr inbounds i8* %dst.addr.090, i32 3, !dbg !2458
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr52}, i64 0, metadata !1782), !dbg !2458
  store i8 %23, i8* %incdec.ptr46, align 1, !dbg !2458, !tbaa !2149
  %24 = load i8* %src.addr.191, align 1, !dbg !2459, !tbaa !2149
  %conv53 = zext i8 %24 to i32, !dbg !2459
  %and54 = and i32 %conv53, 15, !dbg !2459
  %arrayidx55 = getelementptr inbounds [17 x i8]* @ngx_http_log_escape.hex, i32 0, i32 %and54, !dbg !2459
  %25 = load i8* %arrayidx55, align 1, !dbg !2459, !tbaa !2149
  store i8 %25, i8* %incdec.ptr52, align 1, !dbg !2459, !tbaa !2149
  br label %if.end60, !dbg !2460

if.else:                                          ; preds = %cont37
  %26 = load i8* %src.addr.191, align 1, !dbg !2461, !tbaa !2149
  store i8 %26, i8* %dst.addr.090, align 1, !dbg !2461, !tbaa !2149
  br label %if.end60

if.end60:                                         ; preds = %if.else, %cont42
  %incdec.ptr52.pn = phi i8* [ %incdec.ptr52, %cont42 ], [ %dst.addr.090, %if.else ]
  %src.addr.2 = getelementptr inbounds i8* %src.addr.191, i32 1, !dbg !2463
  %dst.addr.1 = getelementptr inbounds i8* %incdec.ptr52.pn, i32 1, !dbg !2459
  %27 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %size.addr.192, i32 1), !dbg !2464
  %28 = extractvalue { i32, i1 } %27, 0, !dbg !2464
  %29 = extractvalue { i32, i1 } %27, 1, !dbg !2464
  br i1 %29, label %ioc_bb61, label %while.cond18.backedge, !dbg !2464

while.cond18.backedge:                            ; preds = %if.end60, %ioc_bb61
  %tobool19 = icmp eq i32 %28, 0, !dbg !2446
  br i1 %tobool19, label %while.end63, label %cont23, !dbg !2446

ioc_bb61:                                         ; preds = %if.end60
  %30 = zext i32 %size.addr.192 to i64, !dbg !2464
  tail call void @__ioc_report_sub_overflow(i32 473, i32 9, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %30, i64 1, i8 5) nounwind, !dbg !2464
  br label %while.cond18.backedge, !dbg !2464

while.end63:                                      ; preds = %while.cond18.backedge, %while.cond18.preheader
  %dst.addr.0.lcssa = phi i8* [ %dst, %while.cond18.preheader ], [ %dst.addr.1, %while.cond18.backedge ]
  %31 = ptrtoint i8* %dst.addr.0.lcssa to i32, !dbg !2465
  br label %return, !dbg !2465

return:                                           ; preds = %while.cond.preheader, %while.cond.backedge, %while.end63
  %retval.0 = phi i32 [ %31, %while.end63 ], [ 0, %while.cond.preheader ], [ %n.1, %while.cond.backedge ]
  ret i32 %retval.0, !dbg !2466
}

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal i8* @ngx_http_log_connection(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1877), !dbg !2467
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1878), !dbg !2467
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1879), !dbg !2467
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2468
  %0 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2468, !tbaa !2155
  %number = getelementptr inbounds %struct.ngx_connection_s* %0, i32 0, i32 18, !dbg !2468
  %1 = load i32* %number, align 4, !dbg !2468, !tbaa !2315
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([4 x i8]* @.str39, i32 0, i32 0), i32 %1) nounwind, !dbg !2468
  ret i8* %call, !dbg !2468
}

define internal i8* @ngx_http_log_connection_requests(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1871), !dbg !2470
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1872), !dbg !2470
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1873), !dbg !2470
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2471
  %0 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2471, !tbaa !2155
  %requests = getelementptr inbounds %struct.ngx_connection_s* %0, i32 0, i32 19, !dbg !2471
  %1 = load i32* %requests, align 4, !dbg !2471, !tbaa !2148
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([4 x i8]* @.str38, i32 0, i32 0), i32 %1) nounwind, !dbg !2471
  ret i8* %call, !dbg !2471
}

define internal i8* @ngx_http_log_pipe(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1865), !dbg !2473
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1866), !dbg !2473
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1867), !dbg !2473
  %0 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 53, !dbg !2474
  %1 = bitcast i8* %0 to i32*, !dbg !2474
  %2 = load i32* %1, align 4, !dbg !2474
  %bf.clear = and i32 %2, 536870912, !dbg !2474
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2474
  %storemerge = select i1 %tobool, i8 46, i8 112, !dbg !2474
  store i8 %storemerge, i8* %buf, align 1, !dbg !2476
  %add.ptr = getelementptr inbounds i8* %buf, i32 1, !dbg !2478
  ret i8* %add.ptr, !dbg !2478
}

define internal i8* @ngx_http_log_time(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1859), !dbg !2479
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1860), !dbg !2479
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1861), !dbg !2479
  %0 = load volatile i8** getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_time, i32 0, i32 1), align 4, !dbg !2480, !tbaa !2155
  %1 = load volatile i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_time, i32 0, i32 0), align 4, !dbg !2480, !tbaa !2148
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf, i8* %0, i32 %1, i32 1, i1 false), !dbg !2480
  %2 = load volatile i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_time, i32 0, i32 0), align 4, !dbg !2480, !tbaa !2148
  %add.ptr = getelementptr inbounds i8* %buf, i32 %2, !dbg !2480
  ret i8* %add.ptr, !dbg !2480
}

define internal i8* @ngx_http_log_iso8601(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1853), !dbg !2482
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1854), !dbg !2482
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1855), !dbg !2482
  %0 = load volatile i8** getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_iso8601, i32 0, i32 1), align 4, !dbg !2483, !tbaa !2155
  %1 = load volatile i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_iso8601, i32 0, i32 0), align 4, !dbg !2483, !tbaa !2148
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %buf, i8* %0, i32 %1, i32 1, i1 false), !dbg !2483
  %2 = load volatile i32* getelementptr inbounds (%struct.ngx_str_t* @ngx_cached_http_log_iso8601, i32 0, i32 0), align 4, !dbg !2483, !tbaa !2148
  %add.ptr = getelementptr inbounds i8* %buf, i32 %2, !dbg !2483
  ret i8* %add.ptr, !dbg !2483
}

define internal i8* @ngx_http_log_msec(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1845), !dbg !2485
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1846), !dbg !2485
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1847), !dbg !2485
  %0 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2486, !tbaa !2155
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_time_t* %0}, i64 0, metadata !1848), !dbg !2486
  %sec = getelementptr inbounds %struct.ngx_time_t* %0, i32 0, i32 0, !dbg !2487
  %1 = load i32* %sec, align 4, !dbg !2487, !tbaa !2315
  %msec = getelementptr inbounds %struct.ngx_time_t* %0, i32 0, i32 1, !dbg !2487
  %2 = load i32* %msec, align 4, !dbg !2487, !tbaa !2148
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([8 x i8]* @.str37, i32 0, i32 0), i32 %1, i32 %2) nounwind, !dbg !2487
  ret i8* %call, !dbg !2487
}

define internal i8* @ngx_http_log_request_time(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1826), !dbg !2488
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1827), !dbg !2488
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1828), !dbg !2488
  %0 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2489, !tbaa !2155
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_time_t* %0}, i64 0, metadata !1829), !dbg !2489
  %sec = getelementptr inbounds %struct.ngx_time_t* %0, i32 0, i32 0, !dbg !2490
  %1 = load i32* %sec, align 4, !dbg !2490, !tbaa !2315
  %start_sec = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 17, !dbg !2490
  %2 = load i32* %start_sec, align 4, !dbg !2490, !tbaa !2315
  %3 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %1, i32 %2), !dbg !2490
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !2490
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !2490
  br i1 %5, label %ioc_bb, label %cont, !dbg !2490

ioc_bb:                                           ; preds = %entry
  %6 = sext i32 %2 to i64, !dbg !2490
  %7 = sext i32 %1 to i64, !dbg !2490
  tail call void @__ioc_report_sub_overflow(i32 343, i32 39, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %7, i64 %6, i8 13) nounwind, !dbg !2490
  br label %cont, !dbg !2490

cont:                                             ; preds = %entry, %ioc_bb
  %8 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %4, i32 1000), !dbg !2490
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !2490
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !2490
  br i1 %10, label %ioc_bb1, label %cont2, !dbg !2490

ioc_bb1:                                          ; preds = %cont
  %11 = sext i32 %4 to i64, !dbg !2490
  tail call void @__ioc_report_mul_overflow(i32 343, i32 57, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %11, i64 1000, i8 13) nounwind, !dbg !2490
  br label %cont2, !dbg !2490

cont2:                                            ; preds = %cont, %ioc_bb1
  %12 = icmp sgt i32 %9, -1, !dbg !2490
  br i1 %12, label %cont4, label %ioc_bb3, !dbg !2490

ioc_bb3:                                          ; preds = %cont2
  %13 = sext i32 %9 to i64, !dbg !2490
  tail call void @__ioc_report_conversion(i32 343, i32 27, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @8, i32 0, i32 0), i64 %13, i8 1) nounwind, !dbg !2490
  br label %cont4, !dbg !2490

cont4:                                            ; preds = %ioc_bb3, %cont2
  %msec = getelementptr inbounds %struct.ngx_time_t* %0, i32 0, i32 1, !dbg !2490
  %14 = load i32* %msec, align 4, !dbg !2490, !tbaa !2148
  %start_msec = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 18, !dbg !2490
  %15 = load i32* %start_msec, align 4, !dbg !2490, !tbaa !2148
  %16 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %14, i32 %15), !dbg !2490
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !2490
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !2490
  br i1 %18, label %ioc_bb5, label %cont6, !dbg !2490

ioc_bb5:                                          ; preds = %cont4
  %19 = zext i32 %15 to i64, !dbg !2490
  %20 = zext i32 %14 to i64, !dbg !2490
  tail call void @__ioc_report_sub_overflow(i32 343, i32 79, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %20, i64 %19, i8 5) nounwind, !dbg !2490
  br label %cont6, !dbg !2490

cont6:                                            ; preds = %cont4, %ioc_bb5
  %21 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 %17), !dbg !2490
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !2490
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !2490
  br i1 %23, label %ioc_bb7, label %cont8, !dbg !2490

ioc_bb7:                                          ; preds = %cont6
  %24 = zext i32 %17 to i64, !dbg !2490
  %25 = zext i32 %9 to i64, !dbg !2490
  tail call void @__ioc_report_add_overflow(i32 343, i32 65, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %25, i64 %24, i8 5) nounwind, !dbg !2490
  br label %cont8, !dbg !2490

cont8:                                            ; preds = %cont6, %ioc_bb7
  %26 = icmp sgt i32 %22, -1, !dbg !2490
  br i1 %26, label %cont10, label %ioc_bb9, !dbg !2490

ioc_bb9:                                          ; preds = %cont8
  %27 = zext i32 %22 to i64, !dbg !2490
  tail call void @__ioc_report_conversion(i32 343, i32 26, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %27, i8 0) nounwind, !dbg !2490
  br label %cont10, !dbg !2490

cont10:                                           ; preds = %ioc_bb9, %cont8
  tail call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !1839), !dbg !2490
  %cmp = icmp slt i32 %22, 0, !dbg !2491
  %cond = select i1 %cmp, i32 0, i32 %22, !dbg !2491
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !1839), !dbg !2491
  %div = sdiv i32 %cond, 1000, !dbg !2492
  %rem = srem i32 %cond, 1000, !dbg !2492
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([8 x i8]* @.str37, i32 0, i32 0), i32 %div, i32 %rem) nounwind, !dbg !2492
  ret i8* %call, !dbg !2492
}

define internal i8* @ngx_http_log_status(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1818), !dbg !2493
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1819), !dbg !2493
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1820), !dbg !2493
  %err_status = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 45, !dbg !2494
  %0 = load i32* %err_status, align 4, !dbg !2494, !tbaa !2148
  %tobool = icmp eq i32 %0, 0, !dbg !2494
  br i1 %tobool, label %if.else, label %if.end15, !dbg !2494

if.else:                                          ; preds = %entry
  %status2 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 1, !dbg !2495
  %1 = load i32* %status2, align 4, !dbg !2495, !tbaa !2148
  %tobool3 = icmp eq i32 %1, 0, !dbg !2495
  br i1 %tobool3, label %cont, label %if.end15, !dbg !2495

cont:                                             ; preds = %if.else
  %http_version = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 20, !dbg !2496
  %2 = load i32* %http_version, align 4, !dbg !2496, !tbaa !2148
  %cmp = icmp eq i32 %2, 9, !dbg !2496
  %. = select i1 %cmp, i32 9, i32 0, !dbg !2496
  br label %if.end15, !dbg !2496

if.end15:                                         ; preds = %cont, %if.else, %entry
  %status.0 = phi i32 [ %0, %entry ], [ %1, %if.else ], [ %., %cont ]
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([6 x i8]* @.str36, i32 0, i32 0), i32 %status.0) nounwind, !dbg !2497
  ret i8* %call, !dbg !2497
}

define internal i8* @ngx_http_log_bytes_sent(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1812), !dbg !2498
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1813), !dbg !2498
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1814), !dbg !2498
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2499
  %0 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2499, !tbaa !2155
  %sent = getelementptr inbounds %struct.ngx_connection_s* %0, i32 0, i32 9, !dbg !2499
  %1 = load i64* %sent, align 4, !dbg !2499, !tbaa !2501
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), i64 %1) nounwind, !dbg !2499
  ret i8* %call, !dbg !2499
}

define internal i8* @ngx_http_log_body_bytes_sent(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1804), !dbg !2502
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1805), !dbg !2502
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1806), !dbg !2502
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2503
  %0 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2503, !tbaa !2155
  %sent = getelementptr inbounds %struct.ngx_connection_s* %0, i32 0, i32 9, !dbg !2503
  %1 = load i64* %sent, align 4, !dbg !2503, !tbaa !2501
  %header_size = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 43, !dbg !2503
  %2 = load i32* %header_size, align 4, !dbg !2503, !tbaa !2148
  %conv = zext i32 %2 to i64, !dbg !2503
  %3 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %1, i64 %conv), !dbg !2503
  %4 = extractvalue { i64, i1 } %3, 0, !dbg !2503
  %5 = extractvalue { i64, i1 } %3, 1, !dbg !2503
  br i1 %5, label %ioc_bb, label %cont, !dbg !2503

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_sub_overflow(i32 378, i32 36, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %1, i64 %conv, i8 14) nounwind, !dbg !2503
  br label %cont, !dbg !2503

cont:                                             ; preds = %entry, %ioc_bb
  tail call void @llvm.dbg.value(metadata !{i64 %4}, i64 0, metadata !1807), !dbg !2503
  %cmp = icmp sgt i64 %4, 0, !dbg !2504
  br i1 %cmp, label %if.then, label %cont3, !dbg !2504

if.then:                                          ; preds = %cont
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), i64 %4) nounwind, !dbg !2505
  br label %return, !dbg !2505

cont3:                                            ; preds = %cont
  store i8 48, i8* %buf, align 1, !dbg !2507, !tbaa !2149
  %add.ptr = getelementptr inbounds i8* %buf, i32 1, !dbg !2508
  br label %return, !dbg !2508

return:                                           ; preds = %cont3, %if.then
  %retval.0 = phi i8* [ %call, %if.then ], [ %add.ptr, %cont3 ]
  ret i8* %retval.0, !dbg !2509
}

define internal i8* @ngx_http_log_request_length(%struct.ngx_http_request_s* nocapture %r, i8* %buf, %struct.ngx_http_log_op_s* nocapture %op) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1798), !dbg !2510
  tail call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !1799), !dbg !2510
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %op}, i64 0, metadata !1800), !dbg !2510
  %request_length = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 44, !dbg !2511
  %0 = load i64* %request_length, align 4, !dbg !2511, !tbaa !2501
  %call = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %buf, i8* getelementptr inbounds ([3 x i8]* @.str35, i32 0, i32 0), i64 %0) nounwind, !dbg !2511
  ret i8* %call, !dbg !2511
}

declare i8* @ngx_sprintf(i8*, i8*, ...)

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

define internal i32 @ngx_http_log_init(%struct.ngx_conf_s* %cf) nounwind {
entry:
  %a = alloca %struct.ngx_array_s, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1923), !dbg !2513
  call void @llvm.dbg.declare(metadata !{%struct.ngx_array_s* %a}, metadata !1926), !dbg !2514
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_log_module, i32 0, i32 0), align 4, !dbg !2515, !tbaa !2148
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2515
  %1 = load i8** %ctx, align 4, !dbg !2515, !tbaa !2155
  %main_conf = bitcast i8* %1 to i8***, !dbg !2515
  %2 = load i8*** %main_conf, align 4, !dbg !2515, !tbaa !2155
  %arrayidx = getelementptr inbounds i8** %2, i32 %0, !dbg !2515
  %3 = load i8** %arrayidx, align 4, !dbg !2515, !tbaa !2155
  %combined_used = getelementptr inbounds i8* %3, i32 20, !dbg !2516
  %4 = bitcast i8* %combined_used to i32*, !dbg !2516
  %5 = load i32* %4, align 4, !dbg !2516, !tbaa !2148
  %tobool = icmp eq i32 %5, 0, !dbg !2516
  br i1 %tobool, label %if.end18, label %cont, !dbg !2516

cont:                                             ; preds = %entry
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2517
  %6 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2517, !tbaa !2155
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %a}, i64 0, metadata !2519) nounwind, !dbg !2520
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %6}, i64 0, metadata !2521) nounwind, !dbg !2520
  call void @llvm.dbg.value(metadata !2272, i64 0, metadata !2522) nounwind, !dbg !2520
  call void @llvm.dbg.value(metadata !2523, i64 0, metadata !2524) nounwind, !dbg !2520
  %nelts.i = getelementptr inbounds %struct.ngx_array_s* %a, i32 0, i32 1, !dbg !2525
  store i32 0, i32* %nelts.i, align 4, !dbg !2525, !tbaa !2148
  %size1.i = getelementptr inbounds %struct.ngx_array_s* %a, i32 0, i32 2, !dbg !2527
  store i32 8, i32* %size1.i, align 4, !dbg !2527, !tbaa !2148
  %nalloc.i = getelementptr inbounds %struct.ngx_array_s* %a, i32 0, i32 3, !dbg !2528
  store i32 1, i32* %nalloc.i, align 4, !dbg !2528, !tbaa !2148
  %pool2.i = getelementptr inbounds %struct.ngx_array_s* %a, i32 0, i32 4, !dbg !2529
  store %struct.ngx_pool_s* %6, %struct.ngx_pool_s** %pool2.i, align 4, !dbg !2529, !tbaa !2155
  %call.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %6, i32 8) nounwind, !dbg !2530
  %elts.i = getelementptr inbounds %struct.ngx_array_s* %a, i32 0, i32 0, !dbg !2530
  store i8* %call.i, i8** %elts.i, align 4, !dbg !2530, !tbaa !2155
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2531
  br i1 %cmp.i, label %return, label %if.end, !dbg !2517

if.end:                                           ; preds = %cont
  %call4 = call i8* @ngx_array_push(%struct.ngx_array_s* %a) nounwind, !dbg !2532
  %cmp5 = icmp eq i8* %call4, null, !dbg !2533
  br i1 %cmp5, label %return, label %if.end9, !dbg !2533

if.end9:                                          ; preds = %if.end
  %7 = bitcast i8* %call4 to i64*, !dbg !2534
  %8 = load i64* bitcast (%struct.ngx_str_t* @ngx_http_combined_fmt to i64*), align 8, !dbg !2534
  store i64 %8, i64* %7, align 4, !dbg !2534
  %elts = bitcast i8* %3 to i8**, !dbg !2535
  %9 = load i8** %elts, align 4, !dbg !2535, !tbaa !2155
  %ops = getelementptr inbounds i8* %9, i32 12, !dbg !2536
  %10 = bitcast i8* %ops to %struct.ngx_array_s**, !dbg !2536
  %11 = load %struct.ngx_array_s** %10, align 4, !dbg !2536, !tbaa !2155
  %call12 = call fastcc i8* @ngx_http_log_compile_format(%struct.ngx_conf_s* %cf, %struct.ngx_array_s* null, %struct.ngx_array_s* %11, %struct.ngx_array_s* %a, i32 0), !dbg !2536
  %cmp13 = icmp eq i8* %call12, null, !dbg !2536
  br i1 %cmp13, label %if.end9.if.end18_crit_edge, label %return, !dbg !2536

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  %.pre = load i8** %ctx, align 4, !dbg !2537, !tbaa !2155
  %main_conf20.phi.trans.insert = bitcast i8* %.pre to i8***
  %.pre35 = load i8*** %main_conf20.phi.trans.insert, align 4, !dbg !2537, !tbaa !2155
  br label %if.end18, !dbg !2536

if.end18:                                         ; preds = %if.end9.if.end18_crit_edge, %entry
  %12 = phi i8** [ %.pre35, %if.end9.if.end18_crit_edge ], [ %2, %entry ]
  %13 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2537, !tbaa !2148
  %arrayidx21 = getelementptr inbounds i8** %12, i32 %13, !dbg !2537
  %14 = load i8** %arrayidx21, align 4, !dbg !2537, !tbaa !2155
  %arrayidx22 = getelementptr inbounds i8* %14, i32 300, !dbg !2538
  %handlers = bitcast i8* %arrayidx22 to %struct.ngx_array_s*, !dbg !2538
  %call23 = call i8* @ngx_array_push(%struct.ngx_array_s* %handlers) nounwind, !dbg !2538
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_request_s*)** %15}, i64 0, metadata !1927), !dbg !2538
  %cmp24 = icmp eq i8* %call23, null, !dbg !2539
  br i1 %cmp24, label %return, label %if.end28, !dbg !2539

if.end28:                                         ; preds = %if.end18
  %15 = bitcast i8* %call23 to i32 (%struct.ngx_http_request_s*)**, !dbg !2538
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_log_handler, i32 (%struct.ngx_http_request_s*)** %15, align 4, !dbg !2540, !tbaa !2155
  br label %return, !dbg !2541

return:                                           ; preds = %cont, %if.end18, %if.end9, %if.end, %if.end28
  %retval.0 = phi i32 [ 0, %if.end28 ], [ -1, %cont ], [ -1, %if.end ], [ -1, %if.end9 ], [ -1, %if.end18 ]
  ret i32 %retval.0, !dbg !2542
}

define internal i8* @ngx_http_log_create_main_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1905), !dbg !2543
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2544
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2544, !tbaa !2155
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 24) nounwind, !dbg !2544
  %cmp = icmp eq i8* %call, null, !dbg !2545
  br i1 %cmp, label %return, label %if.end, !dbg !2545

if.end:                                           ; preds = %entry
  %1 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2546, !tbaa !2155
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %formats}, i64 0, metadata !2547) nounwind, !dbg !2548
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %1}, i64 0, metadata !2549) nounwind, !dbg !2548
  tail call void @llvm.dbg.value(metadata !2550, i64 0, metadata !2551) nounwind, !dbg !2548
  tail call void @llvm.dbg.value(metadata !2552, i64 0, metadata !2553) nounwind, !dbg !2548
  %nelts.i = getelementptr inbounds i8* %call, i32 4, !dbg !2554
  %2 = bitcast i8* %nelts.i to i32*, !dbg !2554
  store i32 0, i32* %2, align 4, !dbg !2554, !tbaa !2148
  %size1.i = getelementptr inbounds i8* %call, i32 8, !dbg !2555
  %3 = bitcast i8* %size1.i to i32*, !dbg !2555
  store i32 16, i32* %3, align 4, !dbg !2555, !tbaa !2148
  %nalloc.i = getelementptr inbounds i8* %call, i32 12, !dbg !2556
  %4 = bitcast i8* %nalloc.i to i32*, !dbg !2556
  store i32 4, i32* %4, align 4, !dbg !2556, !tbaa !2148
  %pool2.i = getelementptr inbounds i8* %call, i32 16, !dbg !2557
  %5 = bitcast i8* %pool2.i to %struct.ngx_pool_s**, !dbg !2557
  store %struct.ngx_pool_s* %1, %struct.ngx_pool_s** %5, align 4, !dbg !2557, !tbaa !2155
  %call.i = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %1, i32 64) nounwind, !dbg !2558
  %elts.i = bitcast i8* %call to i8**, !dbg !2558
  store i8* %call.i, i8** %elts.i, align 4, !dbg !2558, !tbaa !2155
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2559
  br i1 %cmp.i, label %return, label %if.end5, !dbg !2546

if.end5:                                          ; preds = %if.end
  %formats = bitcast i8* %call to %struct.ngx_array_s*, !dbg !2546
  %call7 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %formats) nounwind, !dbg !2560
  %cmp8 = icmp eq i8* %call7, null, !dbg !2561
  br i1 %cmp8, label %return, label %cont14, !dbg !2561

cont14:                                           ; preds = %if.end5
  %len = bitcast i8* %call7 to i32*, !dbg !2562
  store i32 8, i32* %len, align 4, !dbg !2562, !tbaa !2148
  %data = getelementptr inbounds i8* %call7, i32 4, !dbg !2563
  %6 = bitcast i8* %data to i8**, !dbg !2563
  store i8* getelementptr inbounds ([9 x i8]* @.str12, i32 0, i32 0), i8** %6, align 4, !dbg !2563, !tbaa !2155
  %flushes = getelementptr inbounds i8* %call7, i32 8, !dbg !2564
  %7 = bitcast i8* %flushes to %struct.ngx_array_s**, !dbg !2564
  store %struct.ngx_array_s* null, %struct.ngx_array_s** %7, align 4, !dbg !2564, !tbaa !2155
  %8 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2565, !tbaa !2155
  %call19 = tail call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %8, i32 16, i32 16) nounwind, !dbg !2565
  %ops = getelementptr inbounds i8* %call7, i32 12, !dbg !2565
  %9 = bitcast i8* %ops to %struct.ngx_array_s**, !dbg !2565
  store %struct.ngx_array_s* %call19, %struct.ngx_array_s** %9, align 4, !dbg !2565, !tbaa !2155
  %cmp21 = icmp eq %struct.ngx_array_s* %call19, null, !dbg !2566
  %.call = select i1 %cmp21, i8* null, i8* %call, !dbg !2566
  ret i8* %.call, !dbg !2566

return:                                           ; preds = %if.end, %if.end5, %entry
  ret i8* null, !dbg !2567
}

define internal i8* @ngx_http_log_create_loc_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1899), !dbg !2568
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2569
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2569, !tbaa !2155
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 20) nounwind, !dbg !2569
  %cmp = icmp eq i8* %call, null, !dbg !2570
  br i1 %cmp, label %return, label %cont, !dbg !2570

cont:                                             ; preds = %entry
  %open_file_cache = getelementptr inbounds i8* %call, i32 4, !dbg !2571
  %1 = bitcast i8* %open_file_cache to %struct.ngx_open_file_cache_t**, !dbg !2571
  store %struct.ngx_open_file_cache_t* inttoptr (i32 -1 to %struct.ngx_open_file_cache_t*), %struct.ngx_open_file_cache_t** %1, align 4, !dbg !2571, !tbaa !2155
  br label %return, !dbg !2572

return:                                           ; preds = %entry, %cont
  %retval.0 = phi i8* [ %call, %cont ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2573
}

define internal i8* @ngx_http_log_merge_loc_conf(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %parent, i8* nocapture %child) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1885), !dbg !2574
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !1886), !dbg !2574
  tail call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !1887), !dbg !2574
  %open_file_cache = getelementptr inbounds i8* %child, i32 4, !dbg !2575
  %0 = bitcast i8* %open_file_cache to %struct.ngx_open_file_cache_t**, !dbg !2575
  %1 = load %struct.ngx_open_file_cache_t** %0, align 4, !dbg !2575, !tbaa !2155
  %cmp = icmp eq %struct.ngx_open_file_cache_t* %1, inttoptr (i32 -1 to %struct.ngx_open_file_cache_t*), !dbg !2575
  br i1 %cmp, label %if.then, label %if.end11, !dbg !2575

if.then:                                          ; preds = %entry
  %open_file_cache1 = getelementptr inbounds i8* %parent, i32 4, !dbg !2576
  %2 = bitcast i8* %open_file_cache1 to %struct.ngx_open_file_cache_t**, !dbg !2576
  %3 = load %struct.ngx_open_file_cache_t** %2, align 4, !dbg !2576, !tbaa !2155
  store %struct.ngx_open_file_cache_t* %3, %struct.ngx_open_file_cache_t** %0, align 4, !dbg !2576, !tbaa !2155
  %open_file_cache_valid = getelementptr inbounds i8* %parent, i32 8, !dbg !2578
  %4 = bitcast i8* %open_file_cache_valid to i32*, !dbg !2578
  %5 = load i32* %4, align 4, !dbg !2578, !tbaa !2315
  %open_file_cache_valid3 = getelementptr inbounds i8* %child, i32 8, !dbg !2578
  %6 = bitcast i8* %open_file_cache_valid3 to i32*, !dbg !2578
  store i32 %5, i32* %6, align 4, !dbg !2578, !tbaa !2315
  %open_file_cache_min_uses = getelementptr inbounds i8* %parent, i32 12, !dbg !2579
  %7 = bitcast i8* %open_file_cache_min_uses to i32*, !dbg !2579
  %8 = load i32* %7, align 4, !dbg !2579, !tbaa !2148
  %open_file_cache_min_uses4 = getelementptr inbounds i8* %child, i32 12, !dbg !2579
  %9 = bitcast i8* %open_file_cache_min_uses4 to i32*, !dbg !2579
  store i32 %8, i32* %9, align 4, !dbg !2579, !tbaa !2148
  %cmp8 = icmp eq %struct.ngx_open_file_cache_t* %3, inttoptr (i32 -1 to %struct.ngx_open_file_cache_t*), !dbg !2580
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !2580

if.then9:                                         ; preds = %if.then
  store %struct.ngx_open_file_cache_t* null, %struct.ngx_open_file_cache_t** %0, align 4, !dbg !2581, !tbaa !2155
  br label %if.end11, !dbg !2583

if.end11:                                         ; preds = %if.then, %if.then9, %entry
  %logs = bitcast i8* %child to %struct.ngx_array_s**, !dbg !2584
  %10 = load %struct.ngx_array_s** %logs, align 4, !dbg !2584, !tbaa !2155
  %tobool = icmp eq %struct.ngx_array_s* %10, null, !dbg !2584
  br i1 %tobool, label %lor.lhs.false, label %return, !dbg !2584

lor.lhs.false:                                    ; preds = %if.end11
  %off = getelementptr inbounds i8* %child, i32 16, !dbg !2584
  %11 = bitcast i8* %off to i32*, !dbg !2584
  %12 = load i32* %11, align 4, !dbg !2584, !tbaa !2148
  %tobool12 = icmp eq i32 %12, 0, !dbg !2584
  br i1 %tobool12, label %if.end14, label %return, !dbg !2584

if.end14:                                         ; preds = %lor.lhs.false
  %logs15 = bitcast i8* %parent to %struct.ngx_array_s**, !dbg !2585
  %13 = load %struct.ngx_array_s** %logs15, align 4, !dbg !2585, !tbaa !2155
  store %struct.ngx_array_s* %13, %struct.ngx_array_s** %logs, align 4, !dbg !2585, !tbaa !2155
  %off17 = getelementptr inbounds i8* %parent, i32 16, !dbg !2586
  %14 = bitcast i8* %off17 to i32*, !dbg !2586
  %15 = load i32* %14, align 4, !dbg !2586, !tbaa !2148
  store i32 %15, i32* %11, align 4, !dbg !2586, !tbaa !2148
  %tobool20 = icmp eq %struct.ngx_array_s* %13, null, !dbg !2587
  %tobool23 = icmp eq i32 %15, 0, !dbg !2587
  %or.cond = and i1 %tobool20, %tobool23, !dbg !2587
  br i1 %or.cond, label %cont27, label %return, !dbg !2587

cont27:                                           ; preds = %if.end14
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2588
  %16 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2588, !tbaa !2155
  %call = tail call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %16, i32 2, i32 20) nounwind, !dbg !2588
  store %struct.ngx_array_s* %call, %struct.ngx_array_s** %logs, align 4, !dbg !2588, !tbaa !2155
  %cmp30 = icmp eq %struct.ngx_array_s* %call, null, !dbg !2589
  br i1 %cmp30, label %return, label %if.end34, !dbg !2589

if.end34:                                         ; preds = %cont27
  %call36 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %call) nounwind, !dbg !2590
  %cmp37 = icmp eq i8* %call36, null, !dbg !2591
  br i1 %cmp37, label %return, label %if.end41, !dbg !2591

if.end41:                                         ; preds = %if.end34
  %cycle = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 2, !dbg !2592
  %17 = load %struct.ngx_cycle_s** %cycle, align 4, !dbg !2592, !tbaa !2155
  %call42 = tail call %struct.ngx_open_file_s* @ngx_conf_open_file(%struct.ngx_cycle_s* %17, %struct.ngx_str_t* @ngx_http_access_log) nounwind, !dbg !2592
  %file = bitcast i8* %call36 to %struct.ngx_open_file_s**, !dbg !2592
  store %struct.ngx_open_file_s* %call42, %struct.ngx_open_file_s** %file, align 4, !dbg !2592, !tbaa !2155
  %cmp44 = icmp eq %struct.ngx_open_file_s* %call42, null, !dbg !2593
  br i1 %cmp44, label %return, label %if.end48, !dbg !2593

if.end48:                                         ; preds = %if.end41
  %script = getelementptr inbounds i8* %call36, i32 4, !dbg !2594
  %18 = bitcast i8* %script to %struct.ngx_http_log_script_t**, !dbg !2594
  store %struct.ngx_http_log_script_t* null, %struct.ngx_http_log_script_t** %18, align 4, !dbg !2594, !tbaa !2155
  %disk_full_time = getelementptr inbounds i8* %call36, i32 8, !dbg !2595
  %19 = bitcast i8* %disk_full_time to i32*, !dbg !2595
  store i32 0, i32* %19, align 4, !dbg !2595, !tbaa !2315
  %error_log_time = getelementptr inbounds i8* %call36, i32 12, !dbg !2596
  %20 = bitcast i8* %error_log_time to i32*, !dbg !2596
  store i32 0, i32* %20, align 4, !dbg !2596, !tbaa !2315
  %21 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_log_module, i32 0, i32 0), align 4, !dbg !2597, !tbaa !2148
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2597
  %22 = load i8** %ctx, align 4, !dbg !2597, !tbaa !2155
  %main_conf = bitcast i8* %22 to i8***, !dbg !2597
  %23 = load i8*** %main_conf, align 4, !dbg !2597, !tbaa !2155
  %arrayidx = getelementptr inbounds i8** %23, i32 %21, !dbg !2597
  %24 = load i8** %arrayidx, align 4, !dbg !2597, !tbaa !2155
  %elts = bitcast i8* %24 to i8**, !dbg !2598
  %25 = load i8** %elts, align 4, !dbg !2598, !tbaa !2155
  %26 = bitcast i8* %25 to %struct.ngx_http_log_fmt_t*, !dbg !2598
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_fmt_t* %26}, i64 0, metadata !1892), !dbg !2598
  %format = getelementptr inbounds i8* %call36, i32 16, !dbg !2599
  %27 = bitcast i8* %format to %struct.ngx_http_log_fmt_t**, !dbg !2599
  store %struct.ngx_http_log_fmt_t* %26, %struct.ngx_http_log_fmt_t** %27, align 4, !dbg !2599, !tbaa !2155
  %combined_used = getelementptr inbounds i8* %24, i32 20, !dbg !2600
  %28 = bitcast i8* %combined_used to i32*, !dbg !2600
  store i32 1, i32* %28, align 4, !dbg !2600, !tbaa !2148
  br label %return, !dbg !2601

return:                                           ; preds = %if.end41, %if.end34, %cont27, %if.end14, %if.end11, %lor.lhs.false, %if.end48
  %retval.0 = phi i8* [ null, %if.end48 ], [ null, %lor.lhs.false ], [ null, %if.end11 ], [ null, %if.end14 ], [ inttoptr (i32 -1 to i8*), %cont27 ], [ inttoptr (i32 -1 to i8*), %if.end34 ], [ inttoptr (i32 -1 to i8*), %if.end41 ]
  ret i8* %retval.0, !dbg !2602
}

define internal i32 @ngx_http_log_handler(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1990), !dbg !2603
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_log_module, i32 0, i32 0), align 4, !dbg !2604, !tbaa !2148
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2604
  %1 = load i8*** %loc_conf, align 4, !dbg !2604, !tbaa !2155
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2604
  %2 = load i8** %arrayidx, align 4, !dbg !2604, !tbaa !2155
  %off = getelementptr inbounds i8* %2, i32 16, !dbg !2605
  %3 = bitcast i8* %off to i32*, !dbg !2605
  %4 = load i32* %3, align 4, !dbg !2605, !tbaa !2148
  %tobool = icmp eq i32 %4, 0, !dbg !2605
  br i1 %tobool, label %if.end, label %return, !dbg !2605

if.end:                                           ; preds = %entry
  %logs = bitcast i8* %2 to %struct.ngx_array_s**, !dbg !2606
  %5 = load %struct.ngx_array_s** %logs, align 4, !dbg !2606, !tbaa !2155
  %elts = getelementptr inbounds %struct.ngx_array_s* %5, i32 0, i32 0, !dbg !2606
  %6 = load i8** %elts, align 4, !dbg !2606, !tbaa !2155
  %7 = bitcast i8* %6 to %struct.ngx_http_log_t*, !dbg !2606
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_t* %7}, i64 0, metadata !1997), !dbg !2606
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1996), !dbg !2607
  %nelts220 = getelementptr inbounds %struct.ngx_array_s* %5, i32 0, i32 1, !dbg !2607
  %8 = load i32* %nelts220, align 4, !dbg !2607, !tbaa !2148
  %cmp221 = icmp eq i32 %8, 0, !dbg !2607
  br i1 %cmp221, label %return, label %for.body.lr.ph, !dbg !2607

for.body.lr.ph:                                   ; preds = %if.end
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2609
  br label %for.body, !dbg !2607

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %l.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %85, %for.cond.backedge ]
  %9 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2611, !tbaa !2155
  %sec = getelementptr inbounds %struct.ngx_time_t* %9, i32 0, i32 0, !dbg !2611
  %10 = load volatile i32* %sec, align 4, !dbg !2611, !tbaa !2315
  %arrayidx2 = getelementptr inbounds %struct.ngx_http_log_t* %7, i32 %l.0222, !dbg !2611
  %disk_full_time = getelementptr inbounds %struct.ngx_http_log_t* %7, i32 %l.0222, i32 2, !dbg !2611
  %11 = load i32* %disk_full_time, align 4, !dbg !2611, !tbaa !2315
  %cmp3 = icmp eq i32 %10, %11, !dbg !2611
  br i1 %cmp3, label %for.inc129, label %if.end5, !dbg !2611

if.end5:                                          ; preds = %for.body
  %format = getelementptr inbounds %struct.ngx_http_log_t* %7, i32 %l.0222, i32 4, !dbg !2612
  %12 = load %struct.ngx_http_log_fmt_t** %format, align 4, !dbg !2612, !tbaa !2155
  %flushes = getelementptr inbounds %struct.ngx_http_log_fmt_t* %12, i32 0, i32 1, !dbg !2612
  %13 = load %struct.ngx_array_s** %flushes, align 4, !dbg !2612, !tbaa !2155
  tail call void @ngx_http_script_flush_no_cacheable_variables(%struct.ngx_http_request_s* %r, %struct.ngx_array_s* %13) nounwind, !dbg !2612
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1994), !dbg !2613
  %14 = load %struct.ngx_http_log_fmt_t** %format, align 4, !dbg !2614, !tbaa !2155
  %ops = getelementptr inbounds %struct.ngx_http_log_fmt_t* %14, i32 0, i32 2, !dbg !2614
  %15 = load %struct.ngx_array_s** %ops, align 4, !dbg !2614, !tbaa !2155
  %elts11 = getelementptr inbounds %struct.ngx_array_s* %15, i32 0, i32 0, !dbg !2614
  %16 = load i8** %elts11, align 4, !dbg !2614, !tbaa !2155
  %17 = bitcast i8* %16 to %struct.ngx_http_log_op_s*, !dbg !2614
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_op_s* %17}, i64 0, metadata !1999), !dbg !2614
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1995), !dbg !2615
  %nelts18204 = getelementptr inbounds %struct.ngx_array_s* %15, i32 0, i32 1, !dbg !2615
  %18 = load i32* %nelts18204, align 4, !dbg !2615, !tbaa !2148
  %cmp19205 = icmp eq i32 %18, 0, !dbg !2615
  br i1 %cmp19205, label %cont39, label %for.body20, !dbg !2615

for.body20:                                       ; preds = %if.end5, %for.cond14.backedge
  %len.0207 = phi i32 [ %len.1, %for.cond14.backedge ], [ 0, %if.end5 ]
  %i.0206 = phi i32 [ %33, %for.cond14.backedge ], [ 0, %if.end5 ]
  %len22 = getelementptr inbounds %struct.ngx_http_log_op_s* %17, i32 %i.0206, i32 0, !dbg !2617
  %19 = load i32* %len22, align 4, !dbg !2617, !tbaa !2148
  %cmp25 = icmp eq i32 %19, 0, !dbg !2617
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !2617

if.then26:                                        ; preds = %for.body20
  %getlen = getelementptr inbounds %struct.ngx_http_log_op_s* %17, i32 %i.0206, i32 1, !dbg !2619
  %20 = load i32 (%struct.ngx_http_request_s*, i32)** %getlen, align 4, !dbg !2619, !tbaa !2155
  %data = getelementptr inbounds %struct.ngx_http_log_op_s* %17, i32 %i.0206, i32 3, !dbg !2619
  %21 = load i32* %data, align 4, !dbg !2619, !tbaa !2148
  %call = tail call i32 %20(%struct.ngx_http_request_s* %r, i32 %21) nounwind, !dbg !2619
  %22 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0207, i32 %call), !dbg !2619
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !2619
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !2619
  br i1 %24, label %ioc_bb29, label %for.inc, !dbg !2619

ioc_bb29:                                         ; preds = %if.then26
  %25 = zext i32 %call to i64, !dbg !2619
  %26 = zext i32 %len.0207 to i64, !dbg !2619
  tail call void @__ioc_report_add_overflow(i32 133, i32 13, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %26, i64 %25, i8 5) nounwind, !dbg !2619
  br label %for.inc, !dbg !2619

if.else:                                          ; preds = %for.body20
  %27 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0207, i32 %19), !dbg !2621
  %28 = extractvalue { i32, i1 } %27, 0, !dbg !2621
  %29 = extractvalue { i32, i1 } %27, 1, !dbg !2621
  br i1 %29, label %ioc_bb33, label %for.inc, !dbg !2621

ioc_bb33:                                         ; preds = %if.else
  %30 = zext i32 %19 to i64, !dbg !2621
  %31 = zext i32 %len.0207 to i64, !dbg !2621
  tail call void @__ioc_report_add_overflow(i32 136, i32 13, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %31, i64 %30, i8 5) nounwind, !dbg !2621
  br label %for.inc, !dbg !2621

for.inc:                                          ; preds = %ioc_bb33, %if.else, %ioc_bb29, %if.then26
  %len.1 = phi i32 [ %23, %if.then26 ], [ %23, %ioc_bb29 ], [ %28, %if.else ], [ %28, %ioc_bb33 ]
  %32 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0206, i32 1), !dbg !2615
  %33 = extractvalue { i32, i1 } %32, 0, !dbg !2615
  %34 = extractvalue { i32, i1 } %32, 1, !dbg !2615
  br i1 %34, label %ioc_bb36, label %for.cond14.backedge, !dbg !2615

for.cond14.backedge:                              ; preds = %for.inc, %ioc_bb36
  %35 = load %struct.ngx_http_log_fmt_t** %format, align 4, !dbg !2615, !tbaa !2155
  %ops17 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %35, i32 0, i32 2, !dbg !2615
  %36 = load %struct.ngx_array_s** %ops17, align 4, !dbg !2615, !tbaa !2155
  %nelts18 = getelementptr inbounds %struct.ngx_array_s* %36, i32 0, i32 1, !dbg !2615
  %37 = load i32* %nelts18, align 4, !dbg !2615, !tbaa !2148
  %cmp19 = icmp ult i32 %33, %37, !dbg !2615
  br i1 %cmp19, label %for.body20, label %cont39, !dbg !2615

ioc_bb36:                                         ; preds = %for.inc
  %38 = zext i32 %i.0206 to i64, !dbg !2615
  tail call void @__ioc_report_add_overflow(i32 131, i32 53, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %38, i64 1, i8 5) nounwind, !dbg !2615
  br label %for.cond14.backedge, !dbg !2615

cont39:                                           ; preds = %for.cond14.backedge, %if.end5
  %len.0.lcssa = phi i32 [ 0, %if.end5 ], [ %len.1, %for.cond14.backedge ]
  %39 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0.lcssa, i32 1), !dbg !2623
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !2623
  %41 = extractvalue { i32, i1 } %39, 1, !dbg !2623
  br i1 %41, label %ioc_bb40, label %cont41, !dbg !2623

ioc_bb40:                                         ; preds = %cont39
  %42 = zext i32 %len.0.lcssa to i64, !dbg !2623
  tail call void @__ioc_report_add_overflow(i32 139, i32 9, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @10, i32 0, i32 0), i64 %42, i64 1, i8 5) nounwind, !dbg !2623
  br label %cont41, !dbg !2623

cont41:                                           ; preds = %cont39, %ioc_bb40
  tail call void @llvm.dbg.value(metadata !{i32 %40}, i64 0, metadata !1994), !dbg !2623
  %file43 = getelementptr inbounds %struct.ngx_http_log_t* %arrayidx2, i32 0, i32 0, !dbg !2624
  %43 = load %struct.ngx_open_file_s** %file43, align 4, !dbg !2624, !tbaa !2155
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_open_file_s* %43}, i64 0, metadata !1998), !dbg !2624
  %tobool44 = icmp eq %struct.ngx_open_file_s* %43, null, !dbg !2625
  br i1 %tobool44, label %if.end95, label %land.lhs.true, !dbg !2625

land.lhs.true:                                    ; preds = %cont41
  %buffer = getelementptr inbounds %struct.ngx_open_file_s* %43, i32 0, i32 2, !dbg !2625
  %44 = load i8** %buffer, align 4, !dbg !2625, !tbaa !2155
  %tobool45 = icmp eq i8* %44, null, !dbg !2625
  br i1 %tobool45, label %if.end95, label %if.then46, !dbg !2625

if.then46:                                        ; preds = %land.lhs.true
  %last = getelementptr inbounds %struct.ngx_open_file_s* %43, i32 0, i32 4, !dbg !2626
  %45 = load i8** %last, align 4, !dbg !2626, !tbaa !2155
  %pos = getelementptr inbounds %struct.ngx_open_file_s* %43, i32 0, i32 3, !dbg !2626
  %46 = load i8** %pos, align 4, !dbg !2626, !tbaa !2155
  %sub.ptr.lhs.cast = ptrtoint i8* %45 to i32, !dbg !2626
  %sub.ptr.rhs.cast = ptrtoint i8* %46 to i32, !dbg !2626
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2626
  %47 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2626
  br i1 %47, label %cont48, label %ioc_bb47, !dbg !2626

ioc_bb47:                                         ; preds = %if.then46
  %48 = sext i32 %sub.ptr.sub to i64, !dbg !2626
  tail call void @__ioc_report_conversion(i32 142, i32 27, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %48, i8 1) nounwind, !dbg !2626
  br label %cont48, !dbg !2626

cont48:                                           ; preds = %ioc_bb47, %if.then46
  %cmp49 = icmp ugt i32 %40, %sub.ptr.sub, !dbg !2626
  br i1 %cmp49, label %if.then50, label %cont48.if.end63_crit_edge, !dbg !2626

cont48.if.end63_crit_edge:                        ; preds = %cont48
  %.pre = load i8** %pos, align 4, !dbg !2628, !tbaa !2155
  br label %if.end63, !dbg !2626

if.then50:                                        ; preds = %cont48
  %49 = load i8** %buffer, align 4, !dbg !2629, !tbaa !2155
  %50 = load i8** %pos, align 4, !dbg !2629, !tbaa !2155
  %sub.ptr.lhs.cast55 = ptrtoint i8* %50 to i32, !dbg !2629
  %sub.ptr.rhs.cast56 = ptrtoint i8* %49 to i32, !dbg !2629
  %sub.ptr.sub57 = sub i32 %sub.ptr.lhs.cast55, %sub.ptr.rhs.cast56, !dbg !2629
  %51 = icmp sgt i32 %sub.ptr.sub57, -1, !dbg !2629
  br i1 %51, label %cont60, label %ioc_bb59, !dbg !2629

ioc_bb59:                                         ; preds = %if.then50
  %52 = sext i32 %sub.ptr.sub57 to i64, !dbg !2629
  tail call void @__ioc_report_conversion(i32 143, i32 53, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %52, i8 1) nounwind, !dbg !2629
  br label %cont60, !dbg !2629

cont60:                                           ; preds = %ioc_bb59, %if.then50
  tail call fastcc void @ngx_http_log_write(%struct.ngx_http_request_s* %r, %struct.ngx_http_log_t* %arrayidx2, i8* %49, i32 %sub.ptr.sub57), !dbg !2629
  %53 = load i8** %buffer, align 4, !dbg !2631, !tbaa !2155
  store i8* %53, i8** %pos, align 4, !dbg !2631, !tbaa !2155
  br label %if.end63, !dbg !2632

if.end63:                                         ; preds = %cont48.if.end63_crit_edge, %cont60
  %54 = phi i8* [ %.pre, %cont48.if.end63_crit_edge ], [ %53, %cont60 ]
  %55 = load i8** %last, align 4, !dbg !2628, !tbaa !2155
  %sub.ptr.lhs.cast66 = ptrtoint i8* %55 to i32, !dbg !2628
  %sub.ptr.rhs.cast67 = ptrtoint i8* %54 to i32, !dbg !2628
  %sub.ptr.sub68 = sub i32 %sub.ptr.lhs.cast66, %sub.ptr.rhs.cast67, !dbg !2628
  %56 = icmp sgt i32 %sub.ptr.sub68, -1, !dbg !2628
  br i1 %56, label %cont71, label %ioc_bb70, !dbg !2628

ioc_bb70:                                         ; preds = %if.end63
  %57 = sext i32 %sub.ptr.sub68 to i64, !dbg !2628
  tail call void @__ioc_report_conversion(i32 146, i32 28, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %57, i8 1) nounwind, !dbg !2628
  br label %cont71, !dbg !2628

cont71:                                           ; preds = %ioc_bb70, %if.end63
  %cmp72 = icmp ugt i32 %40, %sub.ptr.sub68, !dbg !2628
  br i1 %cmp72, label %if.end95, label %cont76, !dbg !2628

cont76:                                           ; preds = %cont71
  tail call void @llvm.dbg.value(metadata !{i8* %58}, i64 0, metadata !1993), !dbg !2633
  %58 = load i8** %pos, align 4, !dbg !2633, !tbaa !2155
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1995), !dbg !2635
  %59 = load %struct.ngx_http_log_fmt_t** %format, align 4, !dbg !2635, !tbaa !2155
  %ops80208 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %59, i32 0, i32 2, !dbg !2635
  %60 = load %struct.ngx_array_s** %ops80208, align 4, !dbg !2635, !tbaa !2155
  %nelts81209 = getelementptr inbounds %struct.ngx_array_s* %60, i32 0, i32 1, !dbg !2635
  %61 = load i32* %nelts81209, align 4, !dbg !2635, !tbaa !2148
  %cmp82210 = icmp eq i32 %61, 0, !dbg !2635
  br i1 %cmp82210, label %cont92, label %for.body83, !dbg !2635

for.body83:                                       ; preds = %cont76, %for.cond77.backedge
  %p.0212 = phi i8* [ %call86, %for.cond77.backedge ], [ %58, %cont76 ]
  %i.1211 = phi i32 [ %64, %for.cond77.backedge ], [ 0, %cont76 ]
  %arrayidx84 = getelementptr inbounds %struct.ngx_http_log_op_s* %17, i32 %i.1211, !dbg !2637
  %run = getelementptr inbounds %struct.ngx_http_log_op_s* %17, i32 %i.1211, i32 2, !dbg !2637
  %62 = load i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)** %run, align 4, !dbg !2637, !tbaa !2155
  %call86 = tail call i8* %62(%struct.ngx_http_request_s* %r, i8* %p.0212, %struct.ngx_http_log_op_s* %arrayidx84) nounwind, !dbg !2637
  tail call void @llvm.dbg.value(metadata !{i8* %call86}, i64 0, metadata !1993), !dbg !2637
  %63 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1211, i32 1), !dbg !2635
  %64 = extractvalue { i32, i1 } %63, 0, !dbg !2635
  %65 = extractvalue { i32, i1 } %63, 1, !dbg !2635
  br i1 %65, label %ioc_bb88, label %for.cond77.backedge, !dbg !2635

for.cond77.backedge:                              ; preds = %for.body83, %ioc_bb88
  %66 = load %struct.ngx_http_log_fmt_t** %format, align 4, !dbg !2635, !tbaa !2155
  %ops80 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %66, i32 0, i32 2, !dbg !2635
  %67 = load %struct.ngx_array_s** %ops80, align 4, !dbg !2635, !tbaa !2155
  %nelts81 = getelementptr inbounds %struct.ngx_array_s* %67, i32 0, i32 1, !dbg !2635
  %68 = load i32* %nelts81, align 4, !dbg !2635, !tbaa !2148
  %cmp82 = icmp ult i32 %64, %68, !dbg !2635
  br i1 %cmp82, label %for.body83, label %cont92, !dbg !2635

ioc_bb88:                                         ; preds = %for.body83
  %69 = zext i32 %i.1211 to i64, !dbg !2635
  tail call void @__ioc_report_add_overflow(i32 148, i32 57, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %69, i64 1, i8 5) nounwind, !dbg !2635
  br label %for.cond77.backedge, !dbg !2635

cont92:                                           ; preds = %for.cond77.backedge, %cont76
  %p.0.lcssa = phi i8* [ %58, %cont76 ], [ %call86, %for.cond77.backedge ]
  %incdec.ptr = getelementptr inbounds i8* %p.0.lcssa, i32 1, !dbg !2639
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1993), !dbg !2639
  store i8 10, i8* %p.0.lcssa, align 1, !dbg !2639, !tbaa !2149
  store i8* %incdec.ptr, i8** %pos, align 4, !dbg !2640, !tbaa !2155
  br label %for.inc129, !dbg !2641

if.end95:                                         ; preds = %cont71, %land.lhs.true, %cont41
  %70 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2609, !tbaa !2155
  %call96 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %70, i32 %40) nounwind, !dbg !2609
  tail call void @llvm.dbg.value(metadata !{i8* %call96}, i64 0, metadata !1991), !dbg !2609
  %cmp97 = icmp eq i8* %call96, null, !dbg !2642
  br i1 %cmp97, label %return, label %for.cond104.preheader, !dbg !2642

for.cond104.preheader:                            ; preds = %if.end95
  %71 = load %struct.ngx_http_log_fmt_t** %format, align 4, !dbg !2643, !tbaa !2155
  %ops107214 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %71, i32 0, i32 2, !dbg !2643
  %72 = load %struct.ngx_array_s** %ops107214, align 4, !dbg !2643, !tbaa !2155
  %nelts108215 = getelementptr inbounds %struct.ngx_array_s* %72, i32 0, i32 1, !dbg !2643
  %73 = load i32* %nelts108215, align 4, !dbg !2643, !tbaa !2148
  %cmp109216 = icmp eq i32 %73, 0, !dbg !2643
  br i1 %cmp109216, label %cont120, label %for.body110, !dbg !2643

for.body110:                                      ; preds = %for.cond104.preheader, %for.cond104.backedge
  %p.1218 = phi i8* [ %call114, %for.cond104.backedge ], [ %call96, %for.cond104.preheader ]
  %i.2217 = phi i32 [ %76, %for.cond104.backedge ], [ 0, %for.cond104.preheader ]
  %arrayidx111 = getelementptr inbounds %struct.ngx_http_log_op_s* %17, i32 %i.2217, !dbg !2645
  %run112 = getelementptr inbounds %struct.ngx_http_log_op_s* %17, i32 %i.2217, i32 2, !dbg !2645
  %74 = load i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)** %run112, align 4, !dbg !2645, !tbaa !2155
  %call114 = tail call i8* %74(%struct.ngx_http_request_s* %r, i8* %p.1218, %struct.ngx_http_log_op_s* %arrayidx111) nounwind, !dbg !2645
  tail call void @llvm.dbg.value(metadata !{i8* %call114}, i64 0, metadata !1993), !dbg !2645
  %75 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2217, i32 1), !dbg !2643
  %76 = extractvalue { i32, i1 } %75, 0, !dbg !2643
  %77 = extractvalue { i32, i1 } %75, 1, !dbg !2643
  br i1 %77, label %ioc_bb116, label %for.cond104.backedge, !dbg !2643

for.cond104.backedge:                             ; preds = %for.body110, %ioc_bb116
  %78 = load %struct.ngx_http_log_fmt_t** %format, align 4, !dbg !2643, !tbaa !2155
  %ops107 = getelementptr inbounds %struct.ngx_http_log_fmt_t* %78, i32 0, i32 2, !dbg !2643
  %79 = load %struct.ngx_array_s** %ops107, align 4, !dbg !2643, !tbaa !2155
  %nelts108 = getelementptr inbounds %struct.ngx_array_s* %79, i32 0, i32 1, !dbg !2643
  %80 = load i32* %nelts108, align 4, !dbg !2643, !tbaa !2148
  %cmp109 = icmp ult i32 %76, %80, !dbg !2643
  br i1 %cmp109, label %for.body110, label %cont120, !dbg !2643

ioc_bb116:                                        ; preds = %for.body110
  %81 = zext i32 %i.2217 to i64, !dbg !2643
  tail call void @__ioc_report_add_overflow(i32 162, i32 53, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %81, i64 1, i8 5) nounwind, !dbg !2643
  br label %for.cond104.backedge, !dbg !2643

cont120:                                          ; preds = %for.cond104.backedge, %for.cond104.preheader
  %p.1.lcssa = phi i8* [ %call96, %for.cond104.preheader ], [ %call114, %for.cond104.backedge ]
  %incdec.ptr121 = getelementptr inbounds i8* %p.1.lcssa, i32 1, !dbg !2647
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr121}, i64 0, metadata !1993), !dbg !2647
  store i8 10, i8* %p.1.lcssa, align 1, !dbg !2647, !tbaa !2149
  %sub.ptr.lhs.cast123 = ptrtoint i8* %incdec.ptr121 to i32, !dbg !2648
  %sub.ptr.rhs.cast124 = ptrtoint i8* %call96 to i32, !dbg !2648
  %sub.ptr.sub125 = sub i32 %sub.ptr.lhs.cast123, %sub.ptr.rhs.cast124, !dbg !2648
  %82 = icmp sgt i32 %sub.ptr.sub125, -1, !dbg !2648
  br i1 %82, label %cont128, label %ioc_bb127, !dbg !2648

ioc_bb127:                                        ; preds = %cont120
  %83 = sext i32 %sub.ptr.sub125 to i64, !dbg !2648
  tail call void @__ioc_report_conversion(i32 167, i32 39, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %83, i8 1) nounwind, !dbg !2648
  br label %cont128, !dbg !2648

cont128:                                          ; preds = %ioc_bb127, %cont120
  tail call fastcc void @ngx_http_log_write(%struct.ngx_http_request_s* %r, %struct.ngx_http_log_t* %arrayidx2, i8* %call96, i32 %sub.ptr.sub125), !dbg !2648
  br label %for.inc129, !dbg !2649

for.inc129:                                       ; preds = %for.body, %cont128, %cont92
  %84 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %l.0222, i32 1), !dbg !2607
  %85 = extractvalue { i32, i1 } %84, 0, !dbg !2607
  %86 = extractvalue { i32, i1 } %84, 1, !dbg !2607
  br i1 %86, label %ioc_bb130, label %for.cond.backedge, !dbg !2607

for.cond.backedge:                                ; preds = %for.inc129, %ioc_bb130
  %87 = load %struct.ngx_array_s** %logs, align 4, !dbg !2607, !tbaa !2155
  %nelts = getelementptr inbounds %struct.ngx_array_s* %87, i32 0, i32 1, !dbg !2607
  %88 = load i32* %nelts, align 4, !dbg !2607, !tbaa !2148
  %cmp = icmp ult i32 %85, %88, !dbg !2607
  br i1 %cmp, label %for.body, label %return, !dbg !2607

ioc_bb130:                                        ; preds = %for.inc129
  %89 = zext i32 %l.0222 to i64, !dbg !2607
  tail call void @__ioc_report_add_overflow(i32 119, i32 42, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %89, i64 1, i8 5) nounwind, !dbg !2607
  br label %for.cond.backedge, !dbg !2607

return:                                           ; preds = %if.end, %if.end95, %for.cond.backedge, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ -1, %if.end95 ], [ 0, %for.cond.backedge ]
  ret i32 %retval.0, !dbg !2650
}

declare void @ngx_http_script_flush_no_cacheable_variables(%struct.ngx_http_request_s*, %struct.ngx_array_s*)

define internal fastcc void @ngx_http_log_write(%struct.ngx_http_request_s* %r, %struct.ngx_http_log_t* nocapture %log, i8* nocapture %buf, i32 %len) nounwind {
entry:
  %root.i = alloca i32, align 4
  %log.i = alloca %struct.ngx_str_t, align 4
  %path.i = alloca %struct.ngx_str_t, align 4
  %of.i = alloca %struct.ngx_open_file_info_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2006), !dbg !2651
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_t* %log}, i64 0, metadata !2007), !dbg !2651
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !2008), !dbg !2651
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !2009), !dbg !2651
  %script = getelementptr inbounds %struct.ngx_http_log_t* %log, i32 0, i32 1, !dbg !2652
  %0 = load %struct.ngx_http_log_script_t** %script, align 4, !dbg !2652, !tbaa !2155
  %cmp = icmp eq %struct.ngx_http_log_script_t* %0, null, !dbg !2652
  br i1 %cmp, label %if.then, label %if.else, !dbg !2652

if.then:                                          ; preds = %entry
  %file = getelementptr inbounds %struct.ngx_http_log_t* %log, i32 0, i32 0, !dbg !2653
  %1 = load %struct.ngx_open_file_s** %file, align 4, !dbg !2653, !tbaa !2155
  %data = getelementptr inbounds %struct.ngx_open_file_s* %1, i32 0, i32 1, i32 1, !dbg !2653
  %2 = load i8** %data, align 4, !dbg !2653, !tbaa !2155
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !2010), !dbg !2653
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !2010), !dbg !2653
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !2655), !dbg !2658
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !2010), !dbg !2659
  call void @llvm.dbg.value(metadata !{i8* %2}, i64 0, metadata !2010), !dbg !2662
  %fd = getelementptr inbounds %struct.ngx_open_file_s* %1, i32 0, i32 0, !dbg !2664
  %3 = load i32* %fd, align 4, !dbg !2664, !tbaa !2148
  call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !2665) nounwind, !dbg !2666
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !2667) nounwind, !dbg !2666
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !2668) nounwind, !dbg !2666
  %call.i = call i32 @write(i32 %3, i8* %buf, i32 %len) nounwind, !dbg !2669
  call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !2013), !dbg !2664
  br label %if.end, !dbg !2671

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata !2672, i64 0, metadata !2010), !dbg !2673
  call void @llvm.dbg.value(metadata !2672, i64 0, metadata !2010), !dbg !2673
  call void @llvm.dbg.value(metadata !2672, i64 0, metadata !2655), !dbg !2658
  call void @llvm.dbg.value(metadata !2672, i64 0, metadata !2010), !dbg !2659
  call void @llvm.dbg.value(metadata !2672, i64 0, metadata !2010), !dbg !2662
  %4 = bitcast i32* %root.i to i8*, !dbg !2658
  call void @llvm.lifetime.start(i64 -1, i8* %4) nounwind, !dbg !2658
  %5 = bitcast %struct.ngx_str_t* %log.i to i8*, !dbg !2658
  call void @llvm.lifetime.start(i64 -1, i8* %5) nounwind, !dbg !2658
  %6 = bitcast %struct.ngx_str_t* %path.i to i8*, !dbg !2658
  call void @llvm.lifetime.start(i64 -1, i8* %6) nounwind, !dbg !2658
  %7 = bitcast %struct.ngx_open_file_info_t* %of.i to i8*, !dbg !2658
  call void @llvm.lifetime.start(i64 -1, i8* %7) nounwind, !dbg !2658
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2674) nounwind, !dbg !2658
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_log_script_t* %0}, i64 0, metadata !2675) nounwind, !dbg !2658
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !2676) nounwind, !dbg !2658
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !2677) nounwind, !dbg !2658
  call void @llvm.dbg.declare(metadata !{i32* %root.i}, metadata !2027) nounwind, !dbg !2678
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %log.i}, metadata !2030) nounwind, !dbg !2679
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %path.i}, metadata !2031) nounwind, !dbg !2680
  call void @llvm.dbg.declare(metadata !{%struct.ngx_open_file_info_t* %of.i}, metadata !2032) nounwind, !dbg !2681
  %8 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2682, !tbaa !2148
  %loc_conf.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2682
  %9 = load i8*** %loc_conf.i, align 4, !dbg !2682, !tbaa !2155
  %arrayidx.i = getelementptr inbounds i8** %9, i32 %8, !dbg !2682
  %10 = load i8** %arrayidx.i, align 4, !dbg !2682, !tbaa !2155
  %11 = bitcast i8* %10 to %struct.ngx_http_core_loc_conf_s*, !dbg !2682
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %11}, i64 0, metadata !2683) nounwind, !dbg !2682
  %12 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 57, !dbg !2684
  %13 = bitcast i8* %12 to i32*, !dbg !2684
  %14 = load i32* %13, align 4, !dbg !2684
  %bf.clear.i = and i32 %14, 8192, !dbg !2684
  %tobool.i = icmp eq i32 %bf.clear.i, 0, !dbg !2684
  br i1 %tobool.i, label %cont.i, label %cont76.i, !dbg !2684

cont.i:                                           ; preds = %if.else
  %call.i75 = call i8* @ngx_http_map_uri_to_path(%struct.ngx_http_request_s* %r, %struct.ngx_str_t* %path.i, i32* %root.i, i32 0) nounwind, !dbg !2685
  %cmp.i = icmp eq i8* %call.i75, null, !dbg !2685
  br i1 %cmp.i, label %if.then1.i, label %cont5.i, !dbg !2685

if.then1.i:                                       ; preds = %cont.i
  %15 = icmp sgt i32 %len, -1, !dbg !2687
  br i1 %15, label %if.end51, label %ioc_bb2.i, !dbg !2687

ioc_bb2.i:                                        ; preds = %if.then1.i
  %16 = zext i32 %len to i64, !dbg !2687
  call void @__ioc_report_conversion(i32 223, i32 14, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %16, i8 0) nounwind, !dbg !2687
  br label %if.end, !dbg !2687

cont5.i:                                          ; preds = %cont.i
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2689) nounwind, !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2689) nounwind, !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2689) nounwind, !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2689) nounwind, !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2689) nounwind, !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2027), !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2027), !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2027), !dbg !2690
  call void @llvm.dbg.value(metadata !{i32* %root.i}, i64 0, metadata !2027), !dbg !2690
  %17 = load i32* %root.i, align 4, !dbg !2690, !tbaa !2148
  %data.i = getelementptr inbounds %struct.ngx_str_t* %path.i, i32 0, i32 1, !dbg !2690
  %18 = load i8** %data.i, align 4, !dbg !2690, !tbaa !2155
  %arrayidx6.i = getelementptr inbounds i8* %18, i32 %17, !dbg !2690
  store i8 0, i8* %arrayidx6.i, align 1, !dbg !2690, !tbaa !2149
  call void @llvm.memset.p0i8.i32(i8* %7, i8 0, i32 68, i32 4, i1 false) nounwind, !dbg !2691
  %open_file_cache_valid.i = getelementptr inbounds i8* %10, i32 300, !dbg !2692
  %19 = bitcast i8* %open_file_cache_valid.i to i32*, !dbg !2692
  %20 = load i32* %19, align 4, !dbg !2692, !tbaa !2315
  %valid.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 9, !dbg !2692
  store i32 %20, i32* %valid.i, align 4, !dbg !2692, !tbaa !2315
  %open_file_cache_min_uses.i = getelementptr inbounds i8* %10, i32 304, !dbg !2693
  %21 = bitcast i8* %open_file_cache_min_uses.i to i32*, !dbg !2693
  %22 = load i32* %21, align 4, !dbg !2693, !tbaa !2148
  %min_uses.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 10, !dbg !2693
  store i32 %22, i32* %min_uses.i, align 4, !dbg !2693, !tbaa !2148
  %23 = getelementptr %struct.ngx_open_file_info_t* %of.i, i32 0, i32 12, !dbg !2694
  %24 = bitcast i8* %23 to i32*, !dbg !2694
  store i32 12, i32* %24, align 4, !dbg !2695
  %open_file_cache_errors.i = getelementptr inbounds i8* %10, i32 308, !dbg !2696
  %25 = bitcast i8* %open_file_cache_errors.i to i32*, !dbg !2696
  %26 = load i32* %25, align 4, !dbg !2696, !tbaa !2148
  %27 = icmp sgt i32 %26, -1, !dbg !2696
  br i1 %27, label %cont14.i, label %ioc_bb13.i, !dbg !2696

ioc_bb13.i:                                       ; preds = %cont5.i
  %28 = sext i32 %26 to i64, !dbg !2696
  call void @__ioc_report_conversion(i32 231, i32 17, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %28, i8 1) nounwind, !dbg !2696
  %.pre.i = load i32* %24, align 4, !dbg !2696
  %phitmp.i = and i32 %.pre.i, -33, !dbg !2696
  br label %cont14.i, !dbg !2696

cont14.i:                                         ; preds = %ioc_bb13.i, %cont5.i
  %29 = phi i32 [ %phitmp.i, %ioc_bb13.i ], [ 12, %cont5.i ]
  %bf.value.i = shl i32 %26, 5, !dbg !2696
  %30 = and i32 %bf.value.i, 32, !dbg !2696
  %31 = or i32 %29, %30, !dbg !2696
  store i32 %31, i32* %24, align 4, !dbg !2696
  %open_file_cache_events.i = getelementptr inbounds i8* %10, i32 312, !dbg !2697
  %32 = bitcast i8* %open_file_cache_events.i to i32*, !dbg !2697
  %33 = load i32* %32, align 4, !dbg !2697, !tbaa !2148
  %34 = icmp sgt i32 %33, -1, !dbg !2697
  br i1 %34, label %cont18.i, label %ioc_bb17.i, !dbg !2697

ioc_bb17.i:                                       ; preds = %cont14.i
  %35 = sext i32 %33 to i64, !dbg !2697
  call void @__ioc_report_conversion(i32 232, i32 17, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i64 %35, i8 1) nounwind, !dbg !2697
  %.pre166.i = load i32* %24, align 4, !dbg !2697
  br label %cont18.i, !dbg !2697

cont18.i:                                         ; preds = %ioc_bb17.i, %cont14.i
  %36 = phi i32 [ %.pre166.i, %ioc_bb17.i ], [ %31, %cont14.i ]
  %bf.value19.i = shl i32 %33, 6, !dbg !2697
  %37 = and i32 %bf.value19.i, 64, !dbg !2697
  %38 = and i32 %36, -65, !dbg !2697
  %39 = or i32 %38, %37, !dbg !2697
  store i32 %39, i32* %24, align 4, !dbg !2697
  %call21.i = call i32 @ngx_http_set_disable_symlinks(%struct.ngx_http_request_s* %r, %struct.ngx_http_core_loc_conf_s* %11, %struct.ngx_str_t* %path.i, %struct.ngx_open_file_info_t* %of.i) nounwind, !dbg !2698
  %cmp22.i = icmp eq i32 %call21.i, 0, !dbg !2698
  br i1 %cmp22.i, label %if.end27.i, label %if.then23.i, !dbg !2698

if.then23.i:                                      ; preds = %cont18.i
  %40 = icmp sgt i32 %len, -1, !dbg !2699
  br i1 %40, label %if.end51, label %ioc_bb25.i, !dbg !2699

ioc_bb25.i:                                       ; preds = %if.then23.i
  %41 = zext i32 %len to i64, !dbg !2699
  call void @__ioc_report_conversion(i32 235, i32 14, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %41, i8 0) nounwind, !dbg !2699
  br label %if.end, !dbg !2699

if.end27.i:                                       ; preds = %cont18.i
  %open_file_cache.i = getelementptr inbounds i8* %10, i32 296, !dbg !2701
  %42 = bitcast i8* %open_file_cache.i to %struct.ngx_open_file_cache_t**, !dbg !2701
  %43 = load %struct.ngx_open_file_cache_t** %42, align 4, !dbg !2701, !tbaa !2155
  %pool.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2701
  %44 = load %struct.ngx_pool_s** %pool.i, align 4, !dbg !2701, !tbaa !2155
  %call28.i = call i32 @ngx_open_cached_file(%struct.ngx_open_file_cache_t* %43, %struct.ngx_str_t* %path.i, %struct.ngx_open_file_info_t* %of.i, %struct.ngx_pool_s* %44) nounwind, !dbg !2701
  %cmp29.i = icmp eq i32 %call28.i, 0, !dbg !2701
  br i1 %cmp29.i, label %if.end52.i, label %if.then30.i, !dbg !2701

if.then30.i:                                      ; preds = %if.end27.i
  %err.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 7, !dbg !2702
  %45 = load i32* %err.i, align 4, !dbg !2702, !tbaa !2148
  %cmp31.i = icmp eq i32 %45, 0, !dbg !2702
  br i1 %cmp31.i, label %if.then32.i, label %if.end36.i, !dbg !2702

if.then32.i:                                      ; preds = %if.then30.i
  %46 = icmp sgt i32 %len, -1, !dbg !2704
  br i1 %46, label %if.end51, label %ioc_bb34.i, !dbg !2704

ioc_bb34.i:                                       ; preds = %if.then32.i
  %47 = zext i32 %len to i64, !dbg !2704
  call void @__ioc_report_conversion(i32 240, i32 16, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %47, i8 0) nounwind, !dbg !2704
  br label %if.end, !dbg !2704

if.end36.i:                                       ; preds = %if.then30.i
  %connection.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2706
  %48 = load %struct.ngx_connection_s** %connection.i, align 4, !dbg !2706, !tbaa !2155
  %log37.i = getelementptr inbounds %struct.ngx_connection_s* %48, i32 0, i32 10, !dbg !2706
  %49 = load %struct.ngx_log_s** %log37.i, align 4, !dbg !2706, !tbaa !2155
  %log_level.i = getelementptr inbounds %struct.ngx_log_s* %49, i32 0, i32 0, !dbg !2706
  %50 = load i32* %log_level.i, align 4, !dbg !2706, !tbaa !2148
  %cmp40.i = icmp ugt i32 %50, 3, !dbg !2706
  br i1 %cmp40.i, label %cont43.i, label %if.end48.i, !dbg !2706

cont43.i:                                         ; preds = %if.end36.i
  %51 = load i8** %data.i, align 4, !dbg !2707, !tbaa !2155
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %49, i32 %45, i8* getelementptr inbounds ([30 x i8]* @.str43, i32 0, i32 0), i8* %51) nounwind, !dbg !2707
  br label %if.end48.i, !dbg !2707

if.end48.i:                                       ; preds = %cont43.i, %if.end36.i
  %52 = icmp sgt i32 %len, -1, !dbg !2708
  br i1 %52, label %if.end51, label %ioc_bb50.i, !dbg !2708

ioc_bb50.i:                                       ; preds = %if.end48.i
  %53 = zext i32 %len to i64, !dbg !2708
  call void @__ioc_report_conversion(i32 245, i32 14, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %53, i8 0) nounwind, !dbg !2708
  br label %if.end, !dbg !2708

if.end52.i:                                       ; preds = %if.end27.i
  %54 = load i32* %24, align 4, !dbg !2709
  %bf.clear54.i = and i32 %54, 128, !dbg !2709
  %tobool55.i = icmp eq i32 %bf.clear54.i, 0, !dbg !2709
  br i1 %tobool55.i, label %if.then56.i, label %cont76.i, !dbg !2709

if.then56.i:                                      ; preds = %if.end52.i
  %connection57.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2710
  %55 = load %struct.ngx_connection_s** %connection57.i, align 4, !dbg !2710, !tbaa !2155
  %log58.i = getelementptr inbounds %struct.ngx_connection_s* %55, i32 0, i32 10, !dbg !2710
  %56 = load %struct.ngx_log_s** %log58.i, align 4, !dbg !2710, !tbaa !2155
  %log_level59.i = getelementptr inbounds %struct.ngx_log_s* %56, i32 0, i32 0, !dbg !2710
  %57 = load i32* %log_level59.i, align 4, !dbg !2710, !tbaa !2148
  %cmp62.i = icmp ugt i32 %57, 3, !dbg !2710
  br i1 %cmp62.i, label %cont65.i, label %if.end69.i, !dbg !2710

cont65.i:                                         ; preds = %if.then56.i
  %58 = load i8** %data.i, align 4, !dbg !2712, !tbaa !2155
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %56, i32 20, i8* getelementptr inbounds ([30 x i8]* @.str43, i32 0, i32 0), i8* %58) nounwind, !dbg !2712
  br label %if.end69.i, !dbg !2712

if.end69.i:                                       ; preds = %cont65.i, %if.then56.i
  %59 = icmp sgt i32 %len, -1, !dbg !2713
  br i1 %59, label %if.end51, label %ioc_bb71.i, !dbg !2713

ioc_bb71.i:                                       ; preds = %if.end69.i
  %60 = zext i32 %len to i64, !dbg !2713
  call void @__ioc_report_conversion(i32 251, i32 14, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %60, i8 0) nounwind, !dbg !2713
  br label %if.end, !dbg !2713

cont76.i:                                         ; preds = %if.end52.i, %if.else
  %lengths.i = getelementptr inbounds %struct.ngx_http_log_script_t* %0, i32 0, i32 0, !dbg !2714
  %61 = load %struct.ngx_array_s** %lengths.i, align 4, !dbg !2714, !tbaa !2155
  %elts.i = getelementptr inbounds %struct.ngx_array_s* %61, i32 0, i32 0, !dbg !2714
  %62 = load i8** %elts.i, align 4, !dbg !2714, !tbaa !2155
  %values.i = getelementptr inbounds %struct.ngx_http_log_script_t* %0, i32 0, i32 1, !dbg !2714
  %63 = load %struct.ngx_array_s** %values.i, align 4, !dbg !2714, !tbaa !2155
  %elts77.i = getelementptr inbounds %struct.ngx_array_s* %63, i32 0, i32 0, !dbg !2714
  %64 = load i8** %elts77.i, align 4, !dbg !2714, !tbaa !2155
  %call78.i = call i8* @ngx_http_script_run(%struct.ngx_http_request_s* %r, %struct.ngx_str_t* %log.i, i8* %62, i32 1, i8* %64) nounwind, !dbg !2714
  %cmp79.i = icmp eq i8* %call78.i, null, !dbg !2714
  br i1 %cmp79.i, label %if.then80.i, label %cont86.i, !dbg !2714

if.then80.i:                                      ; preds = %cont76.i
  %65 = icmp sgt i32 %len, -1, !dbg !2715
  br i1 %65, label %if.end51, label %ioc_bb82.i, !dbg !2715

ioc_bb82.i:                                       ; preds = %if.then80.i
  %66 = zext i32 %len to i64, !dbg !2715
  call void @__ioc_report_conversion(i32 256, i32 12, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %66, i8 0) nounwind, !dbg !2715
  br label %if.end, !dbg !2715

cont86.i:                                         ; preds = %cont76.i
  %len87.i = getelementptr inbounds %struct.ngx_str_t* %log.i, i32 0, i32 0, !dbg !2717
  %67 = load i32* %len87.i, align 4, !dbg !2717, !tbaa !2148
  %68 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %67, i32 1) nounwind, !dbg !2717
  %69 = extractvalue { i32, i1 } %68, 0, !dbg !2717
  %70 = extractvalue { i32, i1 } %68, 1, !dbg !2717
  br i1 %70, label %ioc_bb90.i, label %cont91.i, !dbg !2717

ioc_bb90.i:                                       ; preds = %cont86.i
  %71 = zext i32 %67 to i64, !dbg !2717
  call void @__ioc_report_sub_overflow(i32 258, i32 20, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %71, i64 1, i8 5) nounwind, !dbg !2717
  br label %cont91.i, !dbg !2717

cont91.i:                                         ; preds = %ioc_bb90.i, %cont86.i
  %data92.i = getelementptr inbounds %struct.ngx_str_t* %log.i, i32 0, i32 1, !dbg !2717
  %72 = load i8** %data92.i, align 4, !dbg !2717, !tbaa !2155
  %arrayidx93.i = getelementptr inbounds i8* %72, i32 %69, !dbg !2717
  store i8 0, i8* %arrayidx93.i, align 1, !dbg !2717, !tbaa !2149
  %73 = load i8** %data92.i, align 4, !dbg !2718, !tbaa !2155
  call void @llvm.dbg.value(metadata !{i8* %73}, i64 0, metadata !2010), !dbg !2718
  call void @llvm.dbg.value(metadata !{i8* %73}, i64 0, metadata !2655), !dbg !2658
  call void @llvm.dbg.value(metadata !{i8* %73}, i64 0, metadata !2010), !dbg !2659
  call void @llvm.dbg.value(metadata !{i8* %73}, i64 0, metadata !2010), !dbg !2662
  %74 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_log_module, i32 0, i32 0), align 4, !dbg !2719, !tbaa !2148
  %75 = load i8*** %loc_conf.i, align 4, !dbg !2719, !tbaa !2155
  %arrayidx96.i = getelementptr inbounds i8** %75, i32 %74, !dbg !2719
  %76 = load i8** %arrayidx96.i, align 4, !dbg !2719, !tbaa !2155
  call void @llvm.memset.p0i8.i32(i8* %7, i8 0, i32 64, i32 4, i1 false) nounwind, !dbg !2720
  %77 = getelementptr %struct.ngx_open_file_info_t* %of.i, i32 0, i32 12, !dbg !2721
  %78 = bitcast i8* %77 to i32*, !dbg !2721
  store i32 16, i32* %78, align 4, !dbg !2721
  %open_file_cache_valid100.i = getelementptr inbounds i8* %76, i32 8, !dbg !2722
  %79 = bitcast i8* %open_file_cache_valid100.i to i32*, !dbg !2722
  %80 = load i32* %79, align 4, !dbg !2722, !tbaa !2315
  %valid101.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 9, !dbg !2722
  store i32 %80, i32* %valid101.i, align 4, !dbg !2722, !tbaa !2315
  %open_file_cache_min_uses102.i = getelementptr inbounds i8* %76, i32 12, !dbg !2723
  %81 = bitcast i8* %open_file_cache_min_uses102.i to i32*, !dbg !2723
  %82 = load i32* %81, align 4, !dbg !2723, !tbaa !2148
  %min_uses103.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 10, !dbg !2723
  store i32 %82, i32* %min_uses103.i, align 4, !dbg !2723, !tbaa !2148
  %directio.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 5, !dbg !2724
  store i64 9223372036854775807, i64* %directio.i, align 4, !dbg !2724, !tbaa !2501
  %call104.i = call i32 @ngx_http_set_disable_symlinks(%struct.ngx_http_request_s* %r, %struct.ngx_http_core_loc_conf_s* %11, %struct.ngx_str_t* %log.i, %struct.ngx_open_file_info_t* %of.i) nounwind, !dbg !2725
  %cmp105.i = icmp eq i32 %call104.i, 0, !dbg !2725
  br i1 %cmp105.i, label %if.end110.i, label %if.then106.i, !dbg !2725

if.then106.i:                                     ; preds = %cont91.i
  %83 = icmp sgt i32 %len, -1, !dbg !2726
  br i1 %83, label %if.end51, label %ioc_bb108.i, !dbg !2726

ioc_bb108.i:                                      ; preds = %if.then106.i
  %84 = zext i32 %len to i64, !dbg !2726
  call void @__ioc_report_conversion(i32 269, i32 12, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %84, i8 0) nounwind, !dbg !2726
  br label %if.end, !dbg !2726

if.end110.i:                                      ; preds = %cont91.i
  %open_file_cache111.i = getelementptr inbounds i8* %76, i32 4, !dbg !2728
  %85 = bitcast i8* %open_file_cache111.i to %struct.ngx_open_file_cache_t**, !dbg !2728
  %86 = load %struct.ngx_open_file_cache_t** %85, align 4, !dbg !2728, !tbaa !2155
  %pool112.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2728
  %87 = load %struct.ngx_pool_s** %pool112.i, align 4, !dbg !2728, !tbaa !2155
  %call113.i = call i32 @ngx_open_cached_file(%struct.ngx_open_file_cache_t* %86, %struct.ngx_str_t* %log.i, %struct.ngx_open_file_info_t* %of.i, %struct.ngx_pool_s* %87) nounwind, !dbg !2728
  %cmp114.i = icmp eq i32 %call113.i, 0, !dbg !2728
  br i1 %cmp114.i, label %if.end133.i, label %if.then115.i, !dbg !2728

if.then115.i:                                     ; preds = %if.end110.i
  %connection116.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2729
  %88 = load %struct.ngx_connection_s** %connection116.i, align 4, !dbg !2729, !tbaa !2155
  %log117.i = getelementptr inbounds %struct.ngx_connection_s* %88, i32 0, i32 10, !dbg !2729
  %89 = load %struct.ngx_log_s** %log117.i, align 4, !dbg !2729, !tbaa !2155
  %log_level118.i = getelementptr inbounds %struct.ngx_log_s* %89, i32 0, i32 0, !dbg !2729
  %90 = load i32* %log_level118.i, align 4, !dbg !2729, !tbaa !2148
  %cmp121.i = icmp ugt i32 %90, 2, !dbg !2729
  br i1 %cmp121.i, label %cont124.i, label %if.end129.i, !dbg !2729

cont124.i:                                        ; preds = %if.then115.i
  %call127.i = call i32* @__errno_location() nounwind readnone, !dbg !2731
  %91 = load i32* %call127.i, align 4, !dbg !2731, !tbaa !2148
  %failed.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 8, !dbg !2731
  %92 = load i8** %failed.i, align 4, !dbg !2731, !tbaa !2155
  %93 = load i8** %data92.i, align 4, !dbg !2731, !tbaa !2155
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 3, %struct.ngx_log_s* %89, i32 %91, i8* getelementptr inbounds ([15 x i8]* @.str44, i32 0, i32 0), i8* %92, i8* %93) nounwind, !dbg !2731
  br label %if.end129.i, !dbg !2731

if.end129.i:                                      ; preds = %cont124.i, %if.then115.i
  %94 = icmp sgt i32 %len, -1, !dbg !2732
  br i1 %94, label %if.end51, label %ioc_bb131.i, !dbg !2732

ioc_bb131.i:                                      ; preds = %if.end129.i
  %95 = zext i32 %len to i64, !dbg !2732
  call void @__ioc_report_conversion(i32 275, i32 12, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %95, i8 0) nounwind, !dbg !2732
  br label %if.end, !dbg !2732

if.end133.i:                                      ; preds = %if.end110.i
  %fd.i = getelementptr inbounds %struct.ngx_open_file_info_t* %of.i, i32 0, i32 0, !dbg !2733
  %96 = load i32* %fd.i, align 4, !dbg !2733, !tbaa !2148
  call void @llvm.dbg.value(metadata !{i32 %96}, i64 0, metadata !2734) nounwind, !dbg !2735
  call void @llvm.dbg.value(metadata !{i8* %buf}, i64 0, metadata !2736) nounwind, !dbg !2735
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !2737) nounwind, !dbg !2735
  %call.i.i = call i32 @write(i32 %96, i8* %buf, i32 %len) nounwind, !dbg !2738
  call void @llvm.dbg.value(metadata !{i32 %call.i.i}, i64 0, metadata !2739) nounwind, !dbg !2733
  br label %if.end, !dbg !2740

if.end:                                           ; preds = %if.end133.i, %ioc_bb131.i, %ioc_bb108.i, %ioc_bb82.i, %ioc_bb71.i, %ioc_bb50.i, %ioc_bb34.i, %ioc_bb25.i, %ioc_bb2.i, %if.then
  %97 = phi i8* [ %2, %if.then ], [ %73, %if.end133.i ], [ null, %ioc_bb2.i ], [ null, %ioc_bb25.i ], [ null, %ioc_bb34.i ], [ null, %ioc_bb50.i ], [ null, %ioc_bb71.i ], [ null, %ioc_bb82.i ], [ %73, %ioc_bb108.i ], [ %73, %ioc_bb131.i ]
  %n.0 = phi i32 [ %call.i, %if.then ], [ %call.i.i, %if.end133.i ], [ %len, %ioc_bb2.i ], [ %len, %ioc_bb25.i ], [ %len, %ioc_bb34.i ], [ %len, %ioc_bb50.i ], [ %len, %ioc_bb71.i ], [ %len, %ioc_bb82.i ], [ %len, %ioc_bb108.i ], [ %len, %ioc_bb131.i ]
  %98 = icmp sgt i32 %len, -1, !dbg !2741
  br i1 %98, label %cont, label %ioc_bb, !dbg !2741

ioc_bb:                                           ; preds = %if.end
  %99 = zext i32 %len to i64, !dbg !2741
  call void @__ioc_report_conversion(i32 186, i32 23, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @17, i32 0, i32 0), i64 %99, i8 0) nounwind, !dbg !2741
  br label %cont, !dbg !2741

cont:                                             ; preds = %ioc_bb, %if.end
  %cmp5 = icmp eq i32 %n.0, %len, !dbg !2741
  br i1 %cmp5, label %if.end51, label %if.end7, !dbg !2741

if.end7:                                          ; preds = %cont
  %100 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2742, !tbaa !2155
  %sec = getelementptr inbounds %struct.ngx_time_t* %100, i32 0, i32 0, !dbg !2742
  %101 = load volatile i32* %sec, align 4, !dbg !2742, !tbaa !2315
  call void @llvm.dbg.value(metadata !{i32 %101}, i64 0, metadata !2012), !dbg !2742
  %cmp10 = icmp eq i32 %n.0, -1, !dbg !2743
  br i1 %cmp10, label %if.then11, label %if.end32, !dbg !2743

if.then11:                                        ; preds = %if.end7
  %call12 = call i32* @__errno_location() nounwind readnone, !dbg !2744
  %102 = load i32* %call12, align 4, !dbg !2744, !tbaa !2148
  call void @llvm.dbg.value(metadata !{i32 %102}, i64 0, metadata !2014), !dbg !2744
  %cmp13 = icmp eq i32 %102, 28, !dbg !2745
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !2745

if.then14:                                        ; preds = %if.then11
  %disk_full_time = getelementptr inbounds %struct.ngx_http_log_t* %log, i32 0, i32 2, !dbg !2746
  store i32 %101, i32* %disk_full_time, align 4, !dbg !2746, !tbaa !2315
  br label %if.end15, !dbg !2748

if.end15:                                         ; preds = %if.then14, %if.then11
  %error_log_time = getelementptr inbounds %struct.ngx_http_log_t* %log, i32 0, i32 3, !dbg !2749
  %103 = load i32* %error_log_time, align 4, !dbg !2749, !tbaa !2315
  %104 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %101, i32 %103), !dbg !2749
  %105 = extractvalue { i32, i1 } %104, 0, !dbg !2749
  %106 = extractvalue { i32, i1 } %104, 1, !dbg !2749
  br i1 %106, label %ioc_bb16, label %cont17, !dbg !2749

ioc_bb16:                                         ; preds = %if.end15
  %107 = sext i32 %103 to i64, !dbg !2749
  %108 = sext i32 %101 to i64, !dbg !2749
  call void @__ioc_report_sub_overflow(i32 195, i32 13, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %108, i64 %107, i8 13) nounwind, !dbg !2749
  br label %cont17, !dbg !2749

cont17:                                           ; preds = %if.end15, %ioc_bb16
  %cmp18 = icmp sgt i32 %105, 59, !dbg !2749
  br i1 %cmp18, label %if.then19, label %if.end51, !dbg !2749

if.then19:                                        ; preds = %cont17
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2750
  %109 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2750, !tbaa !2155
  %log20 = getelementptr inbounds %struct.ngx_connection_s* %109, i32 0, i32 10, !dbg !2750
  %110 = load %struct.ngx_log_s** %log20, align 4, !dbg !2750, !tbaa !2155
  %log_level = getelementptr inbounds %struct.ngx_log_s* %110, i32 0, i32 0, !dbg !2750
  %111 = load i32* %log_level, align 4, !dbg !2750, !tbaa !2148
  %cmp23 = icmp ugt i32 %111, 1, !dbg !2750
  br i1 %cmp23, label %cont26, label %if.end29, !dbg !2750

cont26:                                           ; preds = %if.then19
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %110, i32 %102, i8* getelementptr inbounds ([23 x i8]* @.str41, i32 0, i32 0), i8* %97) nounwind, !dbg !2659
  br label %if.end29, !dbg !2659

if.end29:                                         ; preds = %cont26, %if.then19
  store i32 %101, i32* %error_log_time, align 4, !dbg !2751, !tbaa !2315
  br label %if.end51, !dbg !2752

if.end32:                                         ; preds = %if.end7
  %error_log_time33 = getelementptr inbounds %struct.ngx_http_log_t* %log, i32 0, i32 3, !dbg !2753
  %112 = load i32* %error_log_time33, align 4, !dbg !2753, !tbaa !2315
  %113 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %101, i32 %112), !dbg !2753
  %114 = extractvalue { i32, i1 } %113, 0, !dbg !2753
  %115 = extractvalue { i32, i1 } %113, 1, !dbg !2753
  br i1 %115, label %ioc_bb34, label %cont35, !dbg !2753

ioc_bb34:                                         ; preds = %if.end32
  %116 = sext i32 %112 to i64, !dbg !2753
  %117 = sext i32 %101 to i64, !dbg !2753
  call void @__ioc_report_sub_overflow(i32 202, i32 11, i8* getelementptr inbounds ([39 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %117, i64 %116, i8 13) nounwind, !dbg !2753
  br label %cont35, !dbg !2753

cont35:                                           ; preds = %if.end32, %ioc_bb34
  %cmp36 = icmp sgt i32 %114, 59, !dbg !2753
  br i1 %cmp36, label %if.then37, label %if.end51, !dbg !2753

if.then37:                                        ; preds = %cont35
  %connection38 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2754
  %118 = load %struct.ngx_connection_s** %connection38, align 4, !dbg !2754, !tbaa !2155
  %log39 = getelementptr inbounds %struct.ngx_connection_s* %118, i32 0, i32 10, !dbg !2754
  %119 = load %struct.ngx_log_s** %log39, align 4, !dbg !2754, !tbaa !2155
  %log_level40 = getelementptr inbounds %struct.ngx_log_s* %119, i32 0, i32 0, !dbg !2754
  %120 = load i32* %log_level40, align 4, !dbg !2754, !tbaa !2148
  %cmp43 = icmp ugt i32 %120, 1, !dbg !2754
  br i1 %cmp43, label %cont46, label %if.end49, !dbg !2754

cont46:                                           ; preds = %if.then37
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %119, i32 0, i8* getelementptr inbounds ([42 x i8]* @.str42, i32 0, i32 0), i8* %97, i32 %n.0, i32 %len) nounwind, !dbg !2662
  br label %if.end49, !dbg !2662

if.end49:                                         ; preds = %cont46, %if.then37
  store i32 %101, i32* %error_log_time33, align 4, !dbg !2755, !tbaa !2315
  br label %if.end51, !dbg !2756

if.end51:                                         ; preds = %if.end129.i, %if.then106.i, %if.then80.i, %if.end69.i, %if.end48.i, %if.then32.i, %if.then23.i, %if.then1.i, %cont17, %if.end29, %cont, %if.end49, %cont35
  ret void, !dbg !2757
}

declare i32* @__errno_location() nounwind readnone

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i8* @ngx_http_map_uri_to_path(%struct.ngx_http_request_s*, %struct.ngx_str_t*, i32*, i32)

declare i32 @ngx_http_set_disable_symlinks(%struct.ngx_http_request_s*, %struct.ngx_http_core_loc_conf_s*, %struct.ngx_str_t*, %struct.ngx_open_file_info_t*)

declare i32 @ngx_open_cached_file(%struct.ngx_open_file_cache_t*, %struct.ngx_str_t*, %struct.ngx_open_file_info_t*, %struct.ngx_pool_s*)

declare i8* @ngx_http_script_run(%struct.ngx_http_request_s*, %struct.ngx_str_t*, i8*, i32, i8*)

declare i32 @write(i32, i8* nocapture, i32)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_log_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !2070} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !516, metadata !597, metadata !613, metadata !1744, metadata !1750, metadata !1759, metadata !1769, metadata !1777, metadata !1787, metadata !1795, metadata !1801, metadata !1809, metadata !1815, metadata !1823, metadata !1842, metadata !1850, metadata !1856, metadata !1862, metadata !1868, metadata !1874, metadata !1880, metadata !1894, metadata !1902, metadata !1909, metadata !1918, metadata !1987, metadata !2001, metadata !2016, metadata !2061}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_open_file_cache", metadata !"ngx_http_log_open_file_cache", metadata !"", metadata !6, i32 821, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_log_open_file_cache, null, null, metadata !457, i32 822} ; [ DW_TAG_subprogram ] [line 821] [local] [def] [scope 822] [ngx_http_log_open_file_cache]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_log_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
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
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !495, metadata !496, metadata !497, metadata !499, metadata !500, metadata !504, metadata !505, metadata !506, metadata !510, metadata !511, metadata !515}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16778037, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 821]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33555253, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 821]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50332469, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 821]
!462 = metadata !{i32 786688, metadata !463, metadata !"llcf", metadata !6, i32 823, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [llcf] [line 823]
!463 = metadata !{i32 786443, metadata !5, i32 822, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_log_loc_conf_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_http_log_loc_conf_t", metadata !6, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_http_log_loc_conf_t] [line 47, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 40, i64 160, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 40, size 160, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469, metadata !492, metadata !493, metadata !494}
!468 = metadata !{i32 786445, metadata !466, metadata !"logs", metadata !6, i32 42, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [logs] [line 42, size 32, align 32, offset 0] [from ]
!469 = metadata !{i32 786445, metadata !466, metadata !"open_file_cache", metadata !6, i32 43, i64 32, i64 32, i64 32, i32 0, metadata !470} ; [ DW_TAG_member ] [open_file_cache] [line 43, size 32, align 32, offset 32] [from ]
!470 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !471} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!471 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !6, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!472 = metadata !{i32 786451, null, metadata !"", metadata !473, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!473 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!474 = metadata !{metadata !475, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490}
!475 = metadata !{i32 786445, metadata !472, metadata !"rbtree", metadata !473, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !476} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!476 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !473, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !477} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!477 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!478 = metadata !{metadata !479, metadata !480, metadata !481}
!479 = metadata !{i32 786445, metadata !477, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!480 = metadata !{i32 786445, metadata !477, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!481 = metadata !{i32 786445, metadata !477, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !482} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!482 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !483} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!483 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !484} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!484 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !485, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!485 = metadata !{null, metadata !266, metadata !266, metadata !266}
!486 = metadata !{i32 786445, metadata !472, metadata !"sentinel", metadata !473, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!487 = metadata !{i32 786445, metadata !472, metadata !"expire_queue", metadata !473, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!488 = metadata !{i32 786445, metadata !472, metadata !"current", metadata !473, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!489 = metadata !{i32 786445, metadata !472, metadata !"max", metadata !473, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!490 = metadata !{i32 786445, metadata !472, metadata !"inactive", metadata !473, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !491} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!491 = metadata !{i32 786454, null, metadata !"time_t", metadata !473, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!492 = metadata !{i32 786445, metadata !466, metadata !"open_file_cache_valid", metadata !6, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !491} ; [ DW_TAG_member ] [open_file_cache_valid] [line 44, size 32, align 32, offset 64] [from time_t]
!493 = metadata !{i32 786445, metadata !466, metadata !"open_file_cache_min_uses", metadata !6, i32 45, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 45, size 32, align 32, offset 96] [from ngx_uint_t]
!494 = metadata !{i32 786445, metadata !466, metadata !"off", metadata !6, i32 47, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [off] [line 47, size 32, align 32, offset 128] [from ngx_uint_t]
!495 = metadata !{i32 786688, metadata !463, metadata !"inactive", metadata !6, i32 824, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inactive] [line 824]
!496 = metadata !{i32 786688, metadata !463, metadata !"valid", metadata !6, i32 825, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [valid] [line 825]
!497 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 826, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 826]
!498 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!499 = metadata !{i32 786688, metadata !463, metadata !"s", metadata !6, i32 827, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 827]
!500 = metadata !{i32 786688, metadata !463, metadata !"max", metadata !6, i32 828, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 828]
!501 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !502} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!502 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!503 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!504 = metadata !{i32 786688, metadata !463, metadata !"min_uses", metadata !6, i32 829, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_uses] [line 829]
!505 = metadata !{i32 786688, metadata !463, metadata !"i", metadata !6, i32 830, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 830]
!506 = metadata !{i32 786688, metadata !507, metadata !"__s1_len", metadata !6, i32 872, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 872]
!507 = metadata !{i32 786443, metadata !508, i32 872, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!508 = metadata !{i32 786443, metadata !509, i32 839, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!509 = metadata !{i32 786443, metadata !463, i32 839, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!510 = metadata !{i32 786688, metadata !507, metadata !"__s2_len", metadata !6, i32 872, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 872]
!511 = metadata !{i32 786688, metadata !512, metadata !"__s1", metadata !6, i32 872, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 872]
!512 = metadata !{i32 786443, metadata !507, i32 872, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!513 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !514} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!514 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!515 = metadata !{i32 786688, metadata !512, metadata !"__result", metadata !6, i32 872, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 872]
!516 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_set_log", metadata !"ngx_http_log_set_log", metadata !"", metadata !6, i32 560, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_log_set_log, null, null, metadata !517, i32 561} ; [ DW_TAG_subprogram ] [line 560] [local] [def] [scope 561] [ngx_http_log_set_log]
!517 = metadata !{metadata !518}
!518 = metadata !{metadata !519, metadata !520, metadata !521, metadata !522, metadata !524, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !552, metadata !553, metadata !560, metadata !584, metadata !586, metadata !587, metadata !589, metadata !590, metadata !593, metadata !594, metadata !596}
!519 = metadata !{i32 786689, metadata !516, metadata !"cf", metadata !6, i32 16777776, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 560]
!520 = metadata !{i32 786689, metadata !516, metadata !"cmd", metadata !6, i32 33554992, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 560]
!521 = metadata !{i32 786689, metadata !516, metadata !"conf", metadata !6, i32 50332208, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 560]
!522 = metadata !{i32 786688, metadata !523, metadata !"llcf", metadata !6, i32 562, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [llcf] [line 562]
!523 = metadata !{i32 786443, metadata !516, i32 561, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!524 = metadata !{i32 786688, metadata !523, metadata !"buf", metadata !6, i32 563, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 563]
!525 = metadata !{i32 786688, metadata !523, metadata !"i", metadata !6, i32 564, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 564]
!526 = metadata !{i32 786688, metadata !523, metadata !"n", metadata !6, i32 565, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 565]
!527 = metadata !{i32 786688, metadata !523, metadata !"value", metadata !6, i32 566, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 566]
!528 = metadata !{i32 786688, metadata !523, metadata !"name", metadata !6, i32 567, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 567]
!529 = metadata !{i32 786688, metadata !523, metadata !"log", metadata !6, i32 568, metadata !530, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log] [line 568]
!530 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !531} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_log_t]
!531 = metadata !{i32 786454, null, metadata !"ngx_http_log_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ] [ngx_http_log_t] [line 39, size 0, align 0, offset 0] [from ]
!532 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 34, i64 160, i64 32, i32 0, i32 0, null, metadata !533, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 160, align 32, offset 0] [from ]
!533 = metadata !{metadata !534, metadata !535, metadata !542, metadata !543, metadata !544}
!534 = metadata !{i32 786445, metadata !532, metadata !"file", metadata !6, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !144} ; [ DW_TAG_member ] [file] [line 35, size 32, align 32, offset 0] [from ]
!535 = metadata !{i32 786445, metadata !532, metadata !"script", metadata !6, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !536} ; [ DW_TAG_member ] [script] [line 36, size 32, align 32, offset 32] [from ]
!536 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !537} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_log_script_t]
!537 = metadata !{i32 786454, null, metadata !"ngx_http_log_script_t", metadata !6, i32 33, i64 0, i64 0, i64 0, i32 0, metadata !538} ; [ DW_TAG_typedef ] [ngx_http_log_script_t] [line 33, size 0, align 0, offset 0] [from ]
!538 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 31, i64 64, i64 32, i32 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 31, size 64, align 32, offset 0] [from ]
!539 = metadata !{metadata !540, metadata !541}
!540 = metadata !{i32 786445, metadata !538, metadata !"lengths", metadata !6, i32 32, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 32, size 32, align 32, offset 0] [from ]
!541 = metadata !{i32 786445, metadata !538, metadata !"values", metadata !6, i32 33, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 33, size 32, align 32, offset 32] [from ]
!542 = metadata !{i32 786445, metadata !532, metadata !"disk_full_time", metadata !6, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !491} ; [ DW_TAG_member ] [disk_full_time] [line 37, size 32, align 32, offset 64] [from time_t]
!543 = metadata !{i32 786445, metadata !532, metadata !"error_log_time", metadata !6, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !491} ; [ DW_TAG_member ] [error_log_time] [line 38, size 32, align 32, offset 96] [from time_t]
!544 = metadata !{i32 786445, metadata !532, metadata !"format", metadata !6, i32 39, i64 32, i64 32, i64 128, i32 0, metadata !545} ; [ DW_TAG_member ] [format] [line 39, size 32, align 32, offset 128] [from ]
!545 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !546} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_log_fmt_t]
!546 = metadata !{i32 786454, null, metadata !"ngx_http_log_fmt_t", metadata !6, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ] [ngx_http_log_fmt_t] [line 25, size 0, align 0, offset 0] [from ]
!547 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 21, i64 128, i64 32, i32 0, i32 0, null, metadata !548, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 21, size 128, align 32, offset 0] [from ]
!548 = metadata !{metadata !549, metadata !550, metadata !551}
!549 = metadata !{i32 786445, metadata !547, metadata !"name", metadata !6, i32 22, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 22, size 64, align 32, offset 0] [from ngx_str_t]
!550 = metadata !{i32 786445, metadata !547, metadata !"flushes", metadata !6, i32 23, i64 32, i64 32, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [flushes] [line 23, size 32, align 32, offset 64] [from ]
!551 = metadata !{i32 786445, metadata !547, metadata !"ops", metadata !6, i32 25, i64 32, i64 32, i64 96, i32 0, metadata !18} ; [ DW_TAG_member ] [ops] [line 25, size 32, align 32, offset 96] [from ]
!552 = metadata !{i32 786688, metadata !523, metadata !"fmt", metadata !6, i32 569, metadata !545, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 569]
!553 = metadata !{i32 786688, metadata !523, metadata !"lmcf", metadata !6, i32 570, metadata !554, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lmcf] [line 570]
!554 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !555} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_log_main_conf_t]
!555 = metadata !{i32 786454, null, metadata !"ngx_http_log_main_conf_t", metadata !6, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !556} ; [ DW_TAG_typedef ] [ngx_http_log_main_conf_t] [line 30, size 0, align 0, offset 0] [from ]
!556 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 26, i64 192, i64 32, i32 0, i32 0, null, metadata !557, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 26, size 192, align 32, offset 0] [from ]
!557 = metadata !{metadata !558, metadata !559}
!558 = metadata !{i32 786445, metadata !556, metadata !"formats", metadata !6, i32 28, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [formats] [line 28, size 160, align 32, offset 0] [from ngx_array_t]
!559 = metadata !{i32 786445, metadata !556, metadata !"combined_used", metadata !6, i32 30, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [combined_used] [line 30, size 32, align 32, offset 160] [from ngx_uint_t]
!560 = metadata !{i32 786688, metadata !523, metadata !"sc", metadata !6, i32 571, metadata !561, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 571]
!561 = metadata !{i32 786454, null, metadata !"ngx_http_script_compile_t", metadata !6, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !562} ; [ DW_TAG_typedef ] [ngx_http_script_compile_t] [line 63, size 0, align 0, offset 0] [from ]
!562 = metadata !{i32 786451, null, metadata !"", metadata !563, i32 39, i64 352, i64 32, i32 0, i32 0, null, metadata !564, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 39, size 352, align 32, offset 0] [from ]
!563 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!564 = metadata !{metadata !565, metadata !566, metadata !567, metadata !569, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583}
!565 = metadata !{i32 786445, metadata !562, metadata !"cf", metadata !563, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [cf] [line 40, size 32, align 32, offset 0] [from ]
!566 = metadata !{i32 786445, metadata !562, metadata !"source", metadata !563, i32 41, i64 32, i64 32, i64 32, i32 0, metadata !498} ; [ DW_TAG_member ] [source] [line 41, size 32, align 32, offset 32] [from ]
!567 = metadata !{i32 786445, metadata !562, metadata !"flushes", metadata !563, i32 43, i64 32, i64 32, i64 64, i32 0, metadata !568} ; [ DW_TAG_member ] [flushes] [line 43, size 32, align 32, offset 64] [from ]
!568 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!569 = metadata !{i32 786445, metadata !562, metadata !"lengths", metadata !563, i32 44, i64 32, i64 32, i64 96, i32 0, metadata !568} ; [ DW_TAG_member ] [lengths] [line 44, size 32, align 32, offset 96] [from ]
!570 = metadata !{i32 786445, metadata !562, metadata !"values", metadata !563, i32 45, i64 32, i64 32, i64 128, i32 0, metadata !568} ; [ DW_TAG_member ] [values] [line 45, size 32, align 32, offset 128] [from ]
!571 = metadata !{i32 786445, metadata !562, metadata !"variables", metadata !563, i32 47, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [variables] [line 47, size 32, align 32, offset 160] [from ngx_uint_t]
!572 = metadata !{i32 786445, metadata !562, metadata !"ncaptures", metadata !563, i32 48, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 48, size 32, align 32, offset 192] [from ngx_uint_t]
!573 = metadata !{i32 786445, metadata !562, metadata !"captures_mask", metadata !563, i32 49, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [captures_mask] [line 49, size 32, align 32, offset 224] [from ngx_uint_t]
!574 = metadata !{i32 786445, metadata !562, metadata !"size", metadata !563, i32 50, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 50, size 32, align 32, offset 256] [from ngx_uint_t]
!575 = metadata !{i32 786445, metadata !562, metadata !"main", metadata !563, i32 52, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [main] [line 52, size 32, align 32, offset 288] [from ]
!576 = metadata !{i32 786445, metadata !562, metadata !"compile_args", metadata !563, i32 54, i64 1, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [compile_args] [line 54, size 1, align 32, offset 320] [from unsigned int]
!577 = metadata !{i32 786445, metadata !562, metadata !"complete_lengths", metadata !563, i32 55, i64 1, i64 32, i64 321, i32 0, metadata !28} ; [ DW_TAG_member ] [complete_lengths] [line 55, size 1, align 32, offset 321] [from unsigned int]
!578 = metadata !{i32 786445, metadata !562, metadata !"complete_values", metadata !563, i32 56, i64 1, i64 32, i64 322, i32 0, metadata !28} ; [ DW_TAG_member ] [complete_values] [line 56, size 1, align 32, offset 322] [from unsigned int]
!579 = metadata !{i32 786445, metadata !562, metadata !"zero", metadata !563, i32 57, i64 1, i64 32, i64 323, i32 0, metadata !28} ; [ DW_TAG_member ] [zero] [line 57, size 1, align 32, offset 323] [from unsigned int]
!580 = metadata !{i32 786445, metadata !562, metadata !"conf_prefix", metadata !563, i32 58, i64 1, i64 32, i64 324, i32 0, metadata !28} ; [ DW_TAG_member ] [conf_prefix] [line 58, size 1, align 32, offset 324] [from unsigned int]
!581 = metadata !{i32 786445, metadata !562, metadata !"root_prefix", metadata !563, i32 59, i64 1, i64 32, i64 325, i32 0, metadata !28} ; [ DW_TAG_member ] [root_prefix] [line 59, size 1, align 32, offset 325] [from unsigned int]
!582 = metadata !{i32 786445, metadata !562, metadata !"dup_capture", metadata !563, i32 61, i64 1, i64 32, i64 326, i32 0, metadata !28} ; [ DW_TAG_member ] [dup_capture] [line 61, size 1, align 32, offset 326] [from unsigned int]
!583 = metadata !{i32 786445, metadata !562, metadata !"args", metadata !563, i32 62, i64 1, i64 32, i64 327, i32 0, metadata !28} ; [ DW_TAG_member ] [args] [line 62, size 1, align 32, offset 327] [from unsigned int]
!584 = metadata !{i32 786688, metadata !585, metadata !"__s1_len", metadata !6, i32 573, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 573]
!585 = metadata !{i32 786443, metadata !523, i32 573, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!586 = metadata !{i32 786688, metadata !585, metadata !"__s2_len", metadata !6, i32 573, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 573]
!587 = metadata !{i32 786688, metadata !588, metadata !"__s1", metadata !6, i32 573, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 573]
!588 = metadata !{i32 786443, metadata !585, i32 573, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!589 = metadata !{i32 786688, metadata !588, metadata !"__result", metadata !6, i32 573, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 573]
!590 = metadata !{i32 786688, metadata !591, metadata !"__s1_len", metadata !6, i32 622, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 622]
!591 = metadata !{i32 786443, metadata !592, i32 622, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!592 = metadata !{i32 786443, metadata !523, i32 620, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!593 = metadata !{i32 786688, metadata !591, metadata !"__s2_len", metadata !6, i32 622, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 622]
!594 = metadata !{i32 786688, metadata !595, metadata !"__s1", metadata !6, i32 622, metadata !513, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 622]
!595 = metadata !{i32 786443, metadata !591, i32 622, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!596 = metadata !{i32 786688, metadata !595, metadata !"__result", metadata !6, i32 622, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 622]
!597 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_set_format", metadata !"ngx_http_log_set_format", metadata !"", metadata !6, i32 671, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_log_set_format, null, null, metadata !598, i32 672} ; [ DW_TAG_subprogram ] [line 671] [local] [def] [scope 672] [ngx_http_log_set_format]
!598 = metadata !{metadata !599}
!599 = metadata !{metadata !600, metadata !601, metadata !602, metadata !603, metadata !605, metadata !606, metadata !607, metadata !608, metadata !612}
!600 = metadata !{i32 786689, metadata !597, metadata !"cf", metadata !6, i32 16777887, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 671]
!601 = metadata !{i32 786689, metadata !597, metadata !"cmd", metadata !6, i32 33555103, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 671]
!602 = metadata !{i32 786689, metadata !597, metadata !"conf", metadata !6, i32 50332319, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 671]
!603 = metadata !{i32 786688, metadata !604, metadata !"lmcf", metadata !6, i32 673, metadata !554, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lmcf] [line 673]
!604 = metadata !{i32 786443, metadata !597, i32 672, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!605 = metadata !{i32 786688, metadata !604, metadata !"value", metadata !6, i32 674, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 674]
!606 = metadata !{i32 786688, metadata !604, metadata !"i", metadata !6, i32 675, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 675]
!607 = metadata !{i32 786688, metadata !604, metadata !"fmt", metadata !6, i32 676, metadata !545, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 676]
!608 = metadata !{i32 786688, metadata !609, metadata !"__s1_len", metadata !6, i32 683, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 683]
!609 = metadata !{i32 786443, metadata !610, i32 683, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!610 = metadata !{i32 786443, metadata !611, i32 682, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!611 = metadata !{i32 786443, metadata !604, i32 682, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!612 = metadata !{i32 786688, metadata !609, metadata !"__s2_len", metadata !6, i32 683, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 683]
!613 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_compile_format", metadata !"ngx_http_log_compile_format", metadata !"", metadata !6, i32 704, metadata !614, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, i32)* @ngx_http_log_compile_format, null, null, metadata !616, i32 705} ; [ DW_TAG_subprogram ] [line 704] [local] [def] [scope 705] [ngx_http_log_compile_format]
!614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!615 = metadata !{metadata !9, metadata !11, metadata !18, metadata !18, metadata !18, metadata !26}
!616 = metadata !{metadata !617}
!617 = metadata !{metadata !618, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !631, metadata !633, metadata !634, metadata !1736}
!618 = metadata !{i32 786689, metadata !613, metadata !"cf", metadata !6, i32 16777920, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 704]
!619 = metadata !{i32 786689, metadata !613, metadata !"flushes", metadata !6, i32 33555136, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flushes] [line 704]
!620 = metadata !{i32 786689, metadata !613, metadata !"ops", metadata !6, i32 50332352, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ops] [line 704]
!621 = metadata !{i32 786689, metadata !613, metadata !"args", metadata !6, i32 67109568, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [args] [line 704]
!622 = metadata !{i32 786689, metadata !613, metadata !"s", metadata !6, i32 83886784, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 704]
!623 = metadata !{i32 786688, metadata !624, metadata !"data", metadata !6, i32 706, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 706]
!624 = metadata !{i32 786443, metadata !613, i32 705, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!625 = metadata !{i32 786688, metadata !624, metadata !"p", metadata !6, i32 707, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 707]
!626 = metadata !{i32 786688, metadata !624, metadata !"ch", metadata !6, i32 708, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 708]
!627 = metadata !{i32 786688, metadata !624, metadata !"i", metadata !6, i32 709, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 709]
!628 = metadata !{i32 786688, metadata !624, metadata !"len", metadata !6, i32 710, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 710]
!629 = metadata !{i32 786688, metadata !624, metadata !"value", metadata !6, i32 711, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 711]
!630 = metadata !{i32 786688, metadata !624, metadata !"var", metadata !6, i32 712, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 712]
!631 = metadata !{i32 786688, metadata !624, metadata !"flush", metadata !6, i32 713, metadata !632, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flush] [line 713]
!632 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !501} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_int_t]
!633 = metadata !{i32 786688, metadata !624, metadata !"bracket", metadata !6, i32 714, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bracket] [line 714]
!634 = metadata !{i32 786688, metadata !624, metadata !"op", metadata !6, i32 715, metadata !635, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 715]
!635 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !636} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_log_op_t]
!636 = metadata !{i32 786454, null, metadata !"ngx_http_log_op_t", metadata !6, i32 9, i64 0, i64 0, i64 0, i32 0, metadata !637} ; [ DW_TAG_typedef ] [ngx_http_log_op_t] [line 9, size 0, align 0, offset 0] [from ngx_http_log_op_s]
!637 = metadata !{i32 786451, null, metadata !"ngx_http_log_op_s", metadata !6, i32 13, i64 128, i64 32, i32 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_log_op_s] [line 13, size 128, align 32, offset 0] [from ]
!638 = metadata !{metadata !639, metadata !640, metadata !1730, metadata !1735}
!639 = metadata !{i32 786445, metadata !637, metadata !"len", metadata !6, i32 15, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 15, size 32, align 32, offset 0] [from size_t]
!640 = metadata !{i32 786445, metadata !637, metadata !"getlen", metadata !6, i32 16, i64 32, i64 32, i64 32, i32 0, metadata !641} ; [ DW_TAG_member ] [getlen] [line 16, size 32, align 32, offset 32] [from ngx_http_log_op_getlen_pt]
!641 = metadata !{i32 786454, null, metadata !"ngx_http_log_op_getlen_pt", metadata !6, i32 11, i64 0, i64 0, i64 0, i32 0, metadata !642} ; [ DW_TAG_typedef ] [ngx_http_log_op_getlen_pt] [line 11, size 0, align 0, offset 0] [from ]
!642 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !643} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!643 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !644, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!644 = metadata !{metadata !30, metadata !645, metadata !27}
!645 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !646} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!646 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !647} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!647 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !648, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !649, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!648 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!649 = metadata !{metadata !650, metadata !652, metadata !653, metadata !654, metadata !655, metadata !656, metadata !657, metadata !664, metadata !665, metadata !842, metadata !1267, metadata !1268, metadata !1269, metadata !1270, metadata !1306, metadata !1335, metadata !1347, metadata !1348, metadata !1349, metadata !1350, metadata !1351, metadata !1352, metadata !1353, metadata !1354, metadata !1355, metadata !1356, metadata !1357, metadata !1358, metadata !1359, metadata !1360, metadata !1361, metadata !1362, metadata !1370, metadata !1381, metadata !1388, metadata !1600, metadata !1601, metadata !1602, metadata !1603, metadata !1615, metadata !1616, metadata !1618, metadata !1619, metadata !1620, metadata !1621, metadata !1622, metadata !1623, metadata !1635, metadata !1640, metadata !1648, metadata !1649, metadata !1650, metadata !1651, metadata !1652, metadata !1653, metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1659, metadata !1660, metadata !1661, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1670, metadata !1671, metadata !1672, metadata !1673, metadata !1674, metadata !1675, metadata !1676, metadata !1677, metadata !1678, metadata !1679, metadata !1680, metadata !1681, metadata !1682, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1687, metadata !1688, metadata !1689, metadata !1690, metadata !1691, metadata !1692, metadata !1693, metadata !1694, metadata !1695, metadata !1696, metadata !1697, metadata !1698, metadata !1699, metadata !1700, metadata !1701, metadata !1702, metadata !1703, metadata !1704, metadata !1705, metadata !1706, metadata !1707, metadata !1711, metadata !1712, metadata !1713, metadata !1714, metadata !1715, metadata !1716, metadata !1717, metadata !1718, metadata !1719, metadata !1720, metadata !1721, metadata !1722, metadata !1723, metadata !1724, metadata !1725, metadata !1726, metadata !1727, metadata !1728, metadata !1729}
!650 = metadata !{i32 786445, metadata !647, metadata !"signature", metadata !648, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !651} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!651 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !648, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!652 = metadata !{i32 786445, metadata !647, metadata !"connection", metadata !648, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!653 = metadata !{i32 786445, metadata !647, metadata !"ctx", metadata !648, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!654 = metadata !{i32 786445, metadata !647, metadata !"main_conf", metadata !648, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!655 = metadata !{i32 786445, metadata !647, metadata !"srv_conf", metadata !648, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!656 = metadata !{i32 786445, metadata !647, metadata !"loc_conf", metadata !648, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!657 = metadata !{i32 786445, metadata !647, metadata !"read_event_handler", metadata !648, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !658} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!658 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !648, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !659} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!659 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !660} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!660 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !661, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!661 = metadata !{null, metadata !662}
!662 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !663} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!663 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !648, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !647} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!664 = metadata !{i32 786445, metadata !647, metadata !"write_event_handler", metadata !648, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !658} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!665 = metadata !{i32 786445, metadata !647, metadata !"cache", metadata !648, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !666} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!666 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !667} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!667 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !648, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !668} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!668 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !669, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !670, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!669 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!670 = metadata !{metadata !671, metadata !672, metadata !673, metadata !674, metadata !678, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !810, metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841}
!671 = metadata !{i32 786445, metadata !668, metadata !"file", metadata !669, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!672 = metadata !{i32 786445, metadata !668, metadata !"keys", metadata !669, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!673 = metadata !{i32 786445, metadata !668, metadata !"crc32", metadata !669, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !651} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!674 = metadata !{i32 786445, metadata !668, metadata !"key", metadata !669, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !675} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!675 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !676, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!676 = metadata !{metadata !677}
!677 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!678 = metadata !{i32 786445, metadata !668, metadata !"uniq", metadata !669, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !679} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!679 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !669, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !680} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!680 = metadata !{i32 786454, null, metadata !"ino_t", metadata !669, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!681 = metadata !{i32 786445, metadata !668, metadata !"valid_sec", metadata !669, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !491} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!682 = metadata !{i32 786445, metadata !668, metadata !"last_modified", metadata !669, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !491} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!683 = metadata !{i32 786445, metadata !668, metadata !"date", metadata !669, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !491} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!684 = metadata !{i32 786445, metadata !668, metadata !"header_start", metadata !669, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!685 = metadata !{i32 786445, metadata !668, metadata !"body_start", metadata !669, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!686 = metadata !{i32 786445, metadata !668, metadata !"length", metadata !669, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!687 = metadata !{i32 786445, metadata !668, metadata !"fs_size", metadata !669, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!688 = metadata !{i32 786445, metadata !668, metadata !"min_uses", metadata !669, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!689 = metadata !{i32 786445, metadata !668, metadata !"error", metadata !669, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!690 = metadata !{i32 786445, metadata !668, metadata !"valid_msec", metadata !669, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!691 = metadata !{i32 786445, metadata !668, metadata !"buf", metadata !669, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!692 = metadata !{i32 786445, metadata !668, metadata !"file_cache", metadata !669, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !693} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!693 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !694} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!694 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !669, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !695} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!695 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !669, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !696, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!696 = metadata !{metadata !697, metadata !710, metadata !757, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786}
!697 = metadata !{i32 786445, metadata !695, metadata !"sh", metadata !669, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !698} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!698 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !699} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!699 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !669, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !700} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!700 = metadata !{i32 786451, null, metadata !"", metadata !669, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !701, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!701 = metadata !{metadata !702, metadata !703, metadata !704, metadata !705, metadata !708, metadata !709}
!702 = metadata !{i32 786445, metadata !700, metadata !"rbtree", metadata !669, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !476} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!703 = metadata !{i32 786445, metadata !700, metadata !"sentinel", metadata !669, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!704 = metadata !{i32 786445, metadata !700, metadata !"queue", metadata !669, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!705 = metadata !{i32 786445, metadata !700, metadata !"cold", metadata !669, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !706} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!706 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !669, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !707} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!707 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!708 = metadata !{i32 786445, metadata !700, metadata !"loading", metadata !669, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !706} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!709 = metadata !{i32 786445, metadata !700, metadata !"size", metadata !669, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!710 = metadata !{i32 786445, metadata !695, metadata !"shpool", metadata !669, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !711} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!711 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !712} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!712 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !669, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !713} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!713 = metadata !{i32 786451, null, metadata !"", metadata !714, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !715, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!714 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!715 = metadata !{metadata !716, metadata !723, metadata !724, metadata !725, metadata !733, metadata !734, metadata !735, metadata !736, metadata !753, metadata !754, metadata !755, metadata !756}
!716 = metadata !{i32 786445, metadata !713, metadata !"lock", metadata !714, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !717} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!717 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !714, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !718} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!718 = metadata !{i32 786451, null, metadata !"", metadata !719, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!719 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!720 = metadata !{metadata !721, metadata !722}
!721 = metadata !{i32 786445, metadata !718, metadata !"lock", metadata !719, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !706} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!722 = metadata !{i32 786445, metadata !718, metadata !"wait", metadata !719, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !706} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!723 = metadata !{i32 786445, metadata !713, metadata !"min_size", metadata !714, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!724 = metadata !{i32 786445, metadata !713, metadata !"min_shift", metadata !714, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!725 = metadata !{i32 786445, metadata !713, metadata !"pages", metadata !714, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !726} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!726 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !727} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!727 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !714, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !728} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!728 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !714, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !729, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!729 = metadata !{metadata !730, metadata !731, metadata !732}
!730 = metadata !{i32 786445, metadata !728, metadata !"slab", metadata !714, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!731 = metadata !{i32 786445, metadata !728, metadata !"next", metadata !714, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !726} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!732 = metadata !{i32 786445, metadata !728, metadata !"prev", metadata !714, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!733 = metadata !{i32 786445, metadata !713, metadata !"free", metadata !714, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !727} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!734 = metadata !{i32 786445, metadata !713, metadata !"start", metadata !714, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!735 = metadata !{i32 786445, metadata !713, metadata !"end", metadata !714, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!736 = metadata !{i32 786445, metadata !713, metadata !"mutex", metadata !714, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !737} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!737 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !714, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !738} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!738 = metadata !{i32 786451, null, metadata !"", metadata !719, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !739, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!739 = metadata !{metadata !740, metadata !742, metadata !743, metadata !744, metadata !752}
!740 = metadata !{i32 786445, metadata !738, metadata !"lock", metadata !719, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !741} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!741 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !706} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!742 = metadata !{i32 786445, metadata !738, metadata !"wait", metadata !719, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !741} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!743 = metadata !{i32 786445, metadata !738, metadata !"semaphore", metadata !719, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!744 = metadata !{i32 786445, metadata !738, metadata !"sem", metadata !719, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !745} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!745 = metadata !{i32 786454, null, metadata !"sem_t", metadata !719, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !746} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!746 = metadata !{i32 786455, null, metadata !"", metadata !747, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !748, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!747 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!748 = metadata !{metadata !749, metadata !751}
!749 = metadata !{i32 786445, metadata !746, metadata !"__size", metadata !747, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !750} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!750 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !676, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!751 = metadata !{i32 786445, metadata !746, metadata !"__align", metadata !747, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!752 = metadata !{i32 786445, metadata !738, metadata !"spin", metadata !719, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!753 = metadata !{i32 786445, metadata !713, metadata !"log_ctx", metadata !714, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!754 = metadata !{i32 786445, metadata !713, metadata !"zero", metadata !714, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!755 = metadata !{i32 786445, metadata !713, metadata !"data", metadata !714, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!756 = metadata !{i32 786445, metadata !713, metadata !"addr", metadata !714, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!757 = metadata !{i32 786445, metadata !695, metadata !"path", metadata !669, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !758} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!758 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !759} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!759 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !669, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !760} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!760 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !761, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!761 = metadata !{metadata !762, metadata !763, metadata !764, metadata !768, metadata !773, metadata !775, metadata !776, metadata !777}
!762 = metadata !{i32 786445, metadata !760, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!763 = metadata !{i32 786445, metadata !760, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!764 = metadata !{i32 786445, metadata !760, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !765} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!765 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !766, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!766 = metadata !{metadata !767}
!767 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!768 = metadata !{i32 786445, metadata !760, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !769} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!769 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !770} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!770 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !771} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!771 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !772, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!772 = metadata !{metadata !491, metadata !24}
!773 = metadata !{i32 786445, metadata !760, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !774} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!774 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!775 = metadata !{i32 786445, metadata !760, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!776 = metadata !{i32 786445, metadata !760, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!777 = metadata !{i32 786445, metadata !760, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!778 = metadata !{i32 786445, metadata !695, metadata !"max_size", metadata !669, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!779 = metadata !{i32 786445, metadata !695, metadata !"bsize", metadata !669, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!780 = metadata !{i32 786445, metadata !695, metadata !"inactive", metadata !669, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !491} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!781 = metadata !{i32 786445, metadata !695, metadata !"files", metadata !669, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!782 = metadata !{i32 786445, metadata !695, metadata !"loader_files", metadata !669, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!783 = metadata !{i32 786445, metadata !695, metadata !"last", metadata !669, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!784 = metadata !{i32 786445, metadata !695, metadata !"loader_sleep", metadata !669, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!785 = metadata !{i32 786445, metadata !695, metadata !"loader_threshold", metadata !669, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!786 = metadata !{i32 786445, metadata !695, metadata !"shm_zone", metadata !669, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !787} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!787 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !788} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!788 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !669, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !789} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!789 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !790, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!790 = metadata !{metadata !791, metadata !792, metadata !802, metadata !809}
!791 = metadata !{i32 786445, metadata !789, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!792 = metadata !{i32 786445, metadata !789, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !793} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!793 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !794} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!794 = metadata !{i32 786451, null, metadata !"", metadata !795, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !796, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!795 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!796 = metadata !{metadata !797, metadata !798, metadata !799, metadata !800, metadata !801}
!797 = metadata !{i32 786445, metadata !794, metadata !"addr", metadata !795, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!798 = metadata !{i32 786445, metadata !794, metadata !"size", metadata !795, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!799 = metadata !{i32 786445, metadata !794, metadata !"name", metadata !795, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!800 = metadata !{i32 786445, metadata !794, metadata !"log", metadata !795, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!801 = metadata !{i32 786445, metadata !794, metadata !"exists", metadata !795, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!802 = metadata !{i32 786445, metadata !789, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !803} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!803 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !804} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!804 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !805} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!806 = metadata !{metadata !501, metadata !807, metadata !24}
!807 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !808} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!808 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !789} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!809 = metadata !{i32 786445, metadata !789, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!810 = metadata !{i32 786445, metadata !668, metadata !"node", metadata !669, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !811} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!811 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !812} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!812 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !669, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !813} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!813 = metadata !{i32 786451, null, metadata !"", metadata !669, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !814, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!814 = metadata !{metadata !815, metadata !816, metadata !817, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827, metadata !828, metadata !829, metadata !830, metadata !831, metadata !832}
!815 = metadata !{i32 786445, metadata !813, metadata !"node", metadata !669, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!816 = metadata !{i32 786445, metadata !813, metadata !"queue", metadata !669, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!817 = metadata !{i32 786445, metadata !813, metadata !"key", metadata !669, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !818} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!818 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !819, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!819 = metadata !{metadata !820}
!820 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!821 = metadata !{i32 786445, metadata !813, metadata !"count", metadata !669, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!822 = metadata !{i32 786445, metadata !813, metadata !"uses", metadata !669, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!823 = metadata !{i32 786445, metadata !813, metadata !"valid_msec", metadata !669, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!824 = metadata !{i32 786445, metadata !813, metadata !"error", metadata !669, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!825 = metadata !{i32 786445, metadata !813, metadata !"exists", metadata !669, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!826 = metadata !{i32 786445, metadata !813, metadata !"updating", metadata !669, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!827 = metadata !{i32 786445, metadata !813, metadata !"deleting", metadata !669, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!828 = metadata !{i32 786445, metadata !813, metadata !"uniq", metadata !669, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !679} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!829 = metadata !{i32 786445, metadata !813, metadata !"expire", metadata !669, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !491} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!830 = metadata !{i32 786445, metadata !813, metadata !"valid_sec", metadata !669, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !491} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!831 = metadata !{i32 786445, metadata !813, metadata !"body_start", metadata !669, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!832 = metadata !{i32 786445, metadata !813, metadata !"fs_size", metadata !669, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!833 = metadata !{i32 786445, metadata !668, metadata !"lock_timeout", metadata !669, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!834 = metadata !{i32 786445, metadata !668, metadata !"wait_time", metadata !669, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!835 = metadata !{i32 786445, metadata !668, metadata !"wait_event", metadata !669, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!836 = metadata !{i32 786445, metadata !668, metadata !"lock", metadata !669, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!837 = metadata !{i32 786445, metadata !668, metadata !"waiting", metadata !669, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!838 = metadata !{i32 786445, metadata !668, metadata !"updated", metadata !669, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!839 = metadata !{i32 786445, metadata !668, metadata !"updating", metadata !669, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!840 = metadata !{i32 786445, metadata !668, metadata !"exists", metadata !669, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!841 = metadata !{i32 786445, metadata !668, metadata !"temp_file", metadata !669, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!842 = metadata !{i32 786445, metadata !647, metadata !"upstream", metadata !648, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !843} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!843 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !844} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!844 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !648, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !845} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!845 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !846, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !847, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!846 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!847 = metadata !{metadata !848, metadata !855, metadata !856, metadata !892, metadata !968, metadata !969, metadata !990, metadata !999, metadata !1096, metadata !1132, metadata !1205, metadata !1206, metadata !1207, metadata !1208, metadata !1209, metadata !1210, metadata !1214, metadata !1218, metadata !1219, metadata !1223, metadata !1224, metadata !1225, metadata !1226, metadata !1227, metadata !1231, metadata !1235, metadata !1239, metadata !1240, metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1258, metadata !1259, metadata !1260, metadata !1261, metadata !1262, metadata !1263, metadata !1264, metadata !1265, metadata !1266}
!848 = metadata !{i32 786445, metadata !845, metadata !"read_event_handler", metadata !846, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !849} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!849 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !846, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !850} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!850 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !851} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!851 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !852, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!852 = metadata !{null, metadata !662, metadata !853}
!853 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !854} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!854 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !846, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !845} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!855 = metadata !{i32 786445, metadata !845, metadata !"write_event_handler", metadata !846, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !849} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!856 = metadata !{i32 786445, metadata !845, metadata !"peer", metadata !846, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !857} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!857 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !846, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !858} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!858 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !859, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !860, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!859 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!860 = metadata !{metadata !861, metadata !862, metadata !863, metadata !864, metadata !865, metadata !866, metadata !873, metadata !878, metadata !879, metadata !888, metadata !889, metadata !890, metadata !891}
!861 = metadata !{i32 786445, metadata !858, metadata !"connection", metadata !859, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!862 = metadata !{i32 786445, metadata !858, metadata !"sockaddr", metadata !859, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!863 = metadata !{i32 786445, metadata !858, metadata !"socklen", metadata !859, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!864 = metadata !{i32 786445, metadata !858, metadata !"name", metadata !859, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !498} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!865 = metadata !{i32 786445, metadata !858, metadata !"tries", metadata !859, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!866 = metadata !{i32 786445, metadata !858, metadata !"get", metadata !859, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !867} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!867 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !859, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !868} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!868 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !869} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!869 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !870, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!870 = metadata !{metadata !501, metadata !871, metadata !24}
!871 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !872} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!872 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !859, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !858} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!873 = metadata !{i32 786445, metadata !858, metadata !"free", metadata !859, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !874} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!874 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !859, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !875} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!875 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !876} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!876 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !877, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!877 = metadata !{null, metadata !871, metadata !24, metadata !26}
!878 = metadata !{i32 786445, metadata !858, metadata !"data", metadata !859, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!879 = metadata !{i32 786445, metadata !858, metadata !"local", metadata !859, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !880} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!880 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !881} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!881 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !859, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !882} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!882 = metadata !{i32 786451, null, metadata !"", metadata !883, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !884, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!883 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!884 = metadata !{metadata !885, metadata !886, metadata !887}
!885 = metadata !{i32 786445, metadata !882, metadata !"sockaddr", metadata !883, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!886 = metadata !{i32 786445, metadata !882, metadata !"socklen", metadata !883, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!887 = metadata !{i32 786445, metadata !882, metadata !"name", metadata !883, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!888 = metadata !{i32 786445, metadata !858, metadata !"rcvbuf", metadata !859, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!889 = metadata !{i32 786445, metadata !858, metadata !"log", metadata !859, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!890 = metadata !{i32 786445, metadata !858, metadata !"cached", metadata !859, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!891 = metadata !{i32 786445, metadata !858, metadata !"log_error", metadata !859, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!892 = metadata !{i32 786445, metadata !845, metadata !"pipe", metadata !846, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !893} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!893 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !894} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!894 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !846, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !895} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!895 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !896, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !897, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!896 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!897 = metadata !{metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !904, metadata !905, metadata !906, metadata !907, metadata !914, metadata !915, metadata !920, metadata !921, metadata !922, metadata !923, metadata !924, metadata !925, metadata !926, metadata !927, metadata !928, metadata !929, metadata !930, metadata !931, metadata !932, metadata !933, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !967}
!898 = metadata !{i32 786445, metadata !895, metadata !"upstream", metadata !896, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!899 = metadata !{i32 786445, metadata !895, metadata !"downstream", metadata !896, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!900 = metadata !{i32 786445, metadata !895, metadata !"free_raw_bufs", metadata !896, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!901 = metadata !{i32 786445, metadata !895, metadata !"in", metadata !896, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!902 = metadata !{i32 786445, metadata !895, metadata !"last_in", metadata !896, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !903} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!903 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!904 = metadata !{i32 786445, metadata !895, metadata !"out", metadata !896, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!905 = metadata !{i32 786445, metadata !895, metadata !"free", metadata !896, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!906 = metadata !{i32 786445, metadata !895, metadata !"busy", metadata !896, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!907 = metadata !{i32 786445, metadata !895, metadata !"input_filter", metadata !896, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !908} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!908 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !896, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !909} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!909 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !910} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!910 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !911, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!911 = metadata !{metadata !501, metadata !912, metadata !62}
!912 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !913} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!913 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !896, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !895} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!914 = metadata !{i32 786445, metadata !895, metadata !"input_ctx", metadata !896, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!915 = metadata !{i32 786445, metadata !895, metadata !"output_filter", metadata !896, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !916} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!916 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !896, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !917} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!917 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !918} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!918 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !919, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!919 = metadata !{metadata !501, metadata !24, metadata !56}
!920 = metadata !{i32 786445, metadata !895, metadata !"output_ctx", metadata !896, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!921 = metadata !{i32 786445, metadata !895, metadata !"read", metadata !896, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!922 = metadata !{i32 786445, metadata !895, metadata !"cacheable", metadata !896, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!923 = metadata !{i32 786445, metadata !895, metadata !"single_buf", metadata !896, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!924 = metadata !{i32 786445, metadata !895, metadata !"free_bufs", metadata !896, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!925 = metadata !{i32 786445, metadata !895, metadata !"upstream_done", metadata !896, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!926 = metadata !{i32 786445, metadata !895, metadata !"upstream_error", metadata !896, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!927 = metadata !{i32 786445, metadata !895, metadata !"upstream_eof", metadata !896, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!928 = metadata !{i32 786445, metadata !895, metadata !"upstream_blocked", metadata !896, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!929 = metadata !{i32 786445, metadata !895, metadata !"downstream_done", metadata !896, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!930 = metadata !{i32 786445, metadata !895, metadata !"downstream_error", metadata !896, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!931 = metadata !{i32 786445, metadata !895, metadata !"cyclic_temp_file", metadata !896, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!932 = metadata !{i32 786445, metadata !895, metadata !"allocated", metadata !896, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !501} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!933 = metadata !{i32 786445, metadata !895, metadata !"bufs", metadata !896, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !934} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!934 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !896, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !935} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!935 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !936, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!936 = metadata !{metadata !937, metadata !938}
!937 = metadata !{i32 786445, metadata !935, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !501} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!938 = metadata !{i32 786445, metadata !935, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!939 = metadata !{i32 786445, metadata !895, metadata !"tag", metadata !896, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!940 = metadata !{i32 786445, metadata !895, metadata !"busy_size", metadata !896, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!941 = metadata !{i32 786445, metadata !895, metadata !"read_length", metadata !896, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!942 = metadata !{i32 786445, metadata !895, metadata !"length", metadata !896, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!943 = metadata !{i32 786445, metadata !895, metadata !"max_temp_file_size", metadata !896, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!944 = metadata !{i32 786445, metadata !895, metadata !"temp_file_write_size", metadata !896, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!945 = metadata !{i32 786445, metadata !895, metadata !"read_timeout", metadata !896, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!946 = metadata !{i32 786445, metadata !895, metadata !"send_timeout", metadata !896, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!947 = metadata !{i32 786445, metadata !895, metadata !"send_lowat", metadata !896, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!948 = metadata !{i32 786445, metadata !895, metadata !"pool", metadata !896, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!949 = metadata !{i32 786445, metadata !895, metadata !"log", metadata !896, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!950 = metadata !{i32 786445, metadata !895, metadata !"preread_bufs", metadata !896, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!951 = metadata !{i32 786445, metadata !895, metadata !"preread_size", metadata !896, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!952 = metadata !{i32 786445, metadata !895, metadata !"buf_to_file", metadata !896, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!953 = metadata !{i32 786445, metadata !895, metadata !"temp_file", metadata !896, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !954} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!954 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !955} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!955 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !896, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !956} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!956 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !957, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!957 = metadata !{metadata !958, metadata !959, metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !966}
!958 = metadata !{i32 786445, metadata !956, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!959 = metadata !{i32 786445, metadata !956, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!960 = metadata !{i32 786445, metadata !956, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !758} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!961 = metadata !{i32 786445, metadata !956, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!962 = metadata !{i32 786445, metadata !956, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!963 = metadata !{i32 786445, metadata !956, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!964 = metadata !{i32 786445, metadata !956, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!965 = metadata !{i32 786445, metadata !956, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!966 = metadata !{i32 786445, metadata !956, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!967 = metadata !{i32 786445, metadata !895, metadata !"num", metadata !896, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!968 = metadata !{i32 786445, metadata !845, metadata !"request_bufs", metadata !846, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!969 = metadata !{i32 786445, metadata !845, metadata !"output", metadata !846, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !970} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!970 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !846, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !971} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!971 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !972, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!972 = metadata !{metadata !973, metadata !974, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980, metadata !981, metadata !982, metadata !983, metadata !984, metadata !985, metadata !986, metadata !987, metadata !989}
!973 = metadata !{i32 786445, metadata !971, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!974 = metadata !{i32 786445, metadata !971, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!975 = metadata !{i32 786445, metadata !971, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!976 = metadata !{i32 786445, metadata !971, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!977 = metadata !{i32 786445, metadata !971, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!978 = metadata !{i32 786445, metadata !971, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!979 = metadata !{i32 786445, metadata !971, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!980 = metadata !{i32 786445, metadata !971, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!981 = metadata !{i32 786445, metadata !971, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!982 = metadata !{i32 786445, metadata !971, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!983 = metadata !{i32 786445, metadata !971, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!984 = metadata !{i32 786445, metadata !971, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !501} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!985 = metadata !{i32 786445, metadata !971, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !934} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!986 = metadata !{i32 786445, metadata !971, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!987 = metadata !{i32 786445, metadata !971, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !988} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!988 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !917} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!989 = metadata !{i32 786445, metadata !971, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!990 = metadata !{i32 786445, metadata !845, metadata !"writer", metadata !846, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !991} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!991 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !846, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !992} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!992 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !993, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!993 = metadata !{metadata !994, metadata !995, metadata !996, metadata !997, metadata !998}
!994 = metadata !{i32 786445, metadata !992, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!995 = metadata !{i32 786445, metadata !992, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !903} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!996 = metadata !{i32 786445, metadata !992, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!997 = metadata !{i32 786445, metadata !992, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!998 = metadata !{i32 786445, metadata !992, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!999 = metadata !{i32 786445, metadata !845, metadata !"conf", metadata !846, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !1000} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!1000 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1001} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!1001 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !846, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !1002} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!1002 = metadata !{i32 786451, null, metadata !"", metadata !846, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !1003, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!1003 = metadata !{metadata !1004, metadata !1034, metadata !1035, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1058, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095}
!1004 = metadata !{i32 786445, metadata !1002, metadata !"upstream", metadata !846, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !1005} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!1005 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1006} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!1006 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !846, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !1007} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!1007 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !846, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !1008, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!1008 = metadata !{metadata !1009, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1033}
!1009 = metadata !{i32 786445, metadata !1007, metadata !"peer", metadata !846, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !1010} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!1010 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !846, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !1011} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!1011 = metadata !{i32 786451, null, metadata !"", metadata !846, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !1012, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!1012 = metadata !{metadata !1013, metadata !1018, metadata !1023}
!1013 = metadata !{i32 786445, metadata !1011, metadata !"init_upstream", metadata !846, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !1014} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!1014 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !846, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !1015} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!1015 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1016} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1016 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1017, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1017 = metadata !{metadata !501, metadata !11, metadata !1005}
!1018 = metadata !{i32 786445, metadata !1011, metadata !"init", metadata !846, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !1019} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!1019 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !846, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !1020} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!1020 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1021} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1021 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1022, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1022 = metadata !{metadata !501, metadata !662, metadata !1005}
!1023 = metadata !{i32 786445, metadata !1011, metadata !"data", metadata !846, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!1024 = metadata !{i32 786445, metadata !1007, metadata !"srv_conf", metadata !846, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!1025 = metadata !{i32 786445, metadata !1007, metadata !"servers", metadata !846, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!1026 = metadata !{i32 786445, metadata !1007, metadata !"flags", metadata !846, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!1027 = metadata !{i32 786445, metadata !1007, metadata !"host", metadata !846, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!1028 = metadata !{i32 786445, metadata !1007, metadata !"file_name", metadata !846, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!1029 = metadata !{i32 786445, metadata !1007, metadata !"line", metadata !846, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!1030 = metadata !{i32 786445, metadata !1007, metadata !"port", metadata !846, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !1031} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!1031 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !846, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1032} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!1032 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !846, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!1033 = metadata !{i32 786445, metadata !1007, metadata !"default_port", metadata !846, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !1031} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!1034 = metadata !{i32 786445, metadata !1002, metadata !"connect_timeout", metadata !846, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!1035 = metadata !{i32 786445, metadata !1002, metadata !"send_timeout", metadata !846, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!1036 = metadata !{i32 786445, metadata !1002, metadata !"read_timeout", metadata !846, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!1037 = metadata !{i32 786445, metadata !1002, metadata !"timeout", metadata !846, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!1038 = metadata !{i32 786445, metadata !1002, metadata !"send_lowat", metadata !846, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!1039 = metadata !{i32 786445, metadata !1002, metadata !"buffer_size", metadata !846, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!1040 = metadata !{i32 786445, metadata !1002, metadata !"busy_buffers_size", metadata !846, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!1041 = metadata !{i32 786445, metadata !1002, metadata !"max_temp_file_size", metadata !846, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!1042 = metadata !{i32 786445, metadata !1002, metadata !"temp_file_write_size", metadata !846, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!1043 = metadata !{i32 786445, metadata !1002, metadata !"busy_buffers_size_conf", metadata !846, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!1044 = metadata !{i32 786445, metadata !1002, metadata !"max_temp_file_size_conf", metadata !846, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!1045 = metadata !{i32 786445, metadata !1002, metadata !"temp_file_write_size_conf", metadata !846, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!1046 = metadata !{i32 786445, metadata !1002, metadata !"bufs", metadata !846, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !934} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!1047 = metadata !{i32 786445, metadata !1002, metadata !"ignore_headers", metadata !846, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!1048 = metadata !{i32 786445, metadata !1002, metadata !"next_upstream", metadata !846, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!1049 = metadata !{i32 786445, metadata !1002, metadata !"store_access", metadata !846, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!1050 = metadata !{i32 786445, metadata !1002, metadata !"buffering", metadata !846, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !1051} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!1051 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !846, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !502} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!1052 = metadata !{i32 786445, metadata !1002, metadata !"pass_request_headers", metadata !846, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !1051} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!1053 = metadata !{i32 786445, metadata !1002, metadata !"pass_request_body", metadata !846, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !1051} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!1054 = metadata !{i32 786445, metadata !1002, metadata !"ignore_client_abort", metadata !846, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !1051} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!1055 = metadata !{i32 786445, metadata !1002, metadata !"intercept_errors", metadata !846, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !1051} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!1056 = metadata !{i32 786445, metadata !1002, metadata !"cyclic_temp_file", metadata !846, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !1051} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!1057 = metadata !{i32 786445, metadata !1002, metadata !"temp_path", metadata !846, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !758} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!1058 = metadata !{i32 786445, metadata !1002, metadata !"hide_headers_hash", metadata !846, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !1059} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!1059 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !846, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1060} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!1060 = metadata !{i32 786451, null, metadata !"", metadata !1061, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1062, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1061 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1062 = metadata !{metadata !1063, metadata !1077}
!1063 = metadata !{i32 786445, metadata !1060, metadata !"buckets", metadata !1061, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1064} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!1064 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1065} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1065 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1066} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!1066 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !1061, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !1067} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!1067 = metadata !{i32 786451, null, metadata !"", metadata !1061, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !1068, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!1068 = metadata !{metadata !1069, metadata !1070, metadata !1073}
!1069 = metadata !{i32 786445, metadata !1067, metadata !"value", metadata !1061, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!1070 = metadata !{i32 786445, metadata !1067, metadata !"len", metadata !1061, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !1071} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!1071 = metadata !{i32 786454, null, metadata !"u_short", metadata !1061, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !1072} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!1072 = metadata !{i32 786454, null, metadata !"__u_short", metadata !1061, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!1073 = metadata !{i32 786445, metadata !1067, metadata !"name", metadata !1061, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !1074} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!1074 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !1075, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!1075 = metadata !{metadata !1076}
!1076 = metadata !{i32 786465, i64 0, i64 0}      ; [ DW_TAG_subrange_type ] [0, 0]
!1077 = metadata !{i32 786445, metadata !1060, metadata !"size", metadata !1061, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!1078 = metadata !{i32 786445, metadata !1002, metadata !"hide_headers", metadata !846, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!1079 = metadata !{i32 786445, metadata !1002, metadata !"pass_headers", metadata !846, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!1080 = metadata !{i32 786445, metadata !1002, metadata !"local", metadata !846, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !880} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!1081 = metadata !{i32 786445, metadata !1002, metadata !"cache", metadata !846, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !787} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!1082 = metadata !{i32 786445, metadata !1002, metadata !"cache_min_uses", metadata !846, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!1083 = metadata !{i32 786445, metadata !1002, metadata !"cache_use_stale", metadata !846, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!1084 = metadata !{i32 786445, metadata !1002, metadata !"cache_methods", metadata !846, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!1085 = metadata !{i32 786445, metadata !1002, metadata !"cache_lock", metadata !846, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !1051} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!1086 = metadata !{i32 786445, metadata !1002, metadata !"cache_lock_timeout", metadata !846, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!1087 = metadata !{i32 786445, metadata !1002, metadata !"cache_valid", metadata !846, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!1088 = metadata !{i32 786445, metadata !1002, metadata !"cache_bypass", metadata !846, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!1089 = metadata !{i32 786445, metadata !1002, metadata !"no_cache", metadata !846, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!1090 = metadata !{i32 786445, metadata !1002, metadata !"store_lengths", metadata !846, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!1091 = metadata !{i32 786445, metadata !1002, metadata !"store_values", metadata !846, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!1092 = metadata !{i32 786445, metadata !1002, metadata !"store", metadata !846, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!1093 = metadata !{i32 786445, metadata !1002, metadata !"intercept_404", metadata !846, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!1094 = metadata !{i32 786445, metadata !1002, metadata !"change_buffering", metadata !846, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!1095 = metadata !{i32 786445, metadata !1002, metadata !"module", metadata !846, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!1096 = metadata !{i32 786445, metadata !845, metadata !"headers_in", metadata !846, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !1097} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!1097 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !846, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1098} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1098 = metadata !{i32 786451, null, metadata !"", metadata !846, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !1099, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!1099 = metadata !{metadata !1100, metadata !1101, metadata !1102, metadata !1103, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1116, metadata !1117, metadata !1118, metadata !1119, metadata !1120, metadata !1121, metadata !1122, metadata !1123, metadata !1124, metadata !1125, metadata !1126, metadata !1127, metadata !1128, metadata !1129, metadata !1130, metadata !1131}
!1100 = metadata !{i32 786445, metadata !1098, metadata !"headers", metadata !846, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!1101 = metadata !{i32 786445, metadata !1098, metadata !"status_n", metadata !846, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!1102 = metadata !{i32 786445, metadata !1098, metadata !"status_line", metadata !846, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!1103 = metadata !{i32 786445, metadata !1098, metadata !"status", metadata !846, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !1104} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!1104 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1105} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!1105 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !846, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1106} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!1106 = metadata !{i32 786451, null, metadata !"", metadata !1061, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !1107, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!1107 = metadata !{metadata !1108, metadata !1109, metadata !1110, metadata !1111}
!1108 = metadata !{i32 786445, metadata !1106, metadata !"hash", metadata !1061, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!1109 = metadata !{i32 786445, metadata !1106, metadata !"key", metadata !1061, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!1110 = metadata !{i32 786445, metadata !1106, metadata !"value", metadata !1061, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!1111 = metadata !{i32 786445, metadata !1106, metadata !"lowcase_key", metadata !1061, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1112 = metadata !{i32 786445, metadata !1098, metadata !"date", metadata !846, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !1104} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1113 = metadata !{i32 786445, metadata !1098, metadata !"server", metadata !846, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !1104} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1114 = metadata !{i32 786445, metadata !1098, metadata !"connection", metadata !846, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !1104} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1115 = metadata !{i32 786445, metadata !1098, metadata !"expires", metadata !846, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !1104} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1116 = metadata !{i32 786445, metadata !1098, metadata !"etag", metadata !846, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !1104} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1117 = metadata !{i32 786445, metadata !1098, metadata !"x_accel_expires", metadata !846, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !1104} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1118 = metadata !{i32 786445, metadata !1098, metadata !"x_accel_redirect", metadata !846, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !1104} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1119 = metadata !{i32 786445, metadata !1098, metadata !"x_accel_limit_rate", metadata !846, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !1104} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1120 = metadata !{i32 786445, metadata !1098, metadata !"content_type", metadata !846, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1121 = metadata !{i32 786445, metadata !1098, metadata !"content_length", metadata !846, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1122 = metadata !{i32 786445, metadata !1098, metadata !"last_modified", metadata !846, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !1104} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1123 = metadata !{i32 786445, metadata !1098, metadata !"location", metadata !846, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !1104} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1124 = metadata !{i32 786445, metadata !1098, metadata !"accept_ranges", metadata !846, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !1104} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1125 = metadata !{i32 786445, metadata !1098, metadata !"www_authenticate", metadata !846, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !1104} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1126 = metadata !{i32 786445, metadata !1098, metadata !"transfer_encoding", metadata !846, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !1104} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1127 = metadata !{i32 786445, metadata !1098, metadata !"content_encoding", metadata !846, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1128 = metadata !{i32 786445, metadata !1098, metadata !"content_length_n", metadata !846, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1129 = metadata !{i32 786445, metadata !1098, metadata !"cache_control", metadata !846, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1130 = metadata !{i32 786445, metadata !1098, metadata !"connection_close", metadata !846, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1131 = metadata !{i32 786445, metadata !1098, metadata !"chunked", metadata !846, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1132 = metadata !{i32 786445, metadata !845, metadata !"resolved", metadata !846, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1133} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1133 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1134} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1134 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !846, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1135} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1135 = metadata !{i32 786451, null, metadata !"", metadata !846, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1136, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1136 = metadata !{metadata !1137, metadata !1138, metadata !1139, metadata !1140, metadata !1141, metadata !1144, metadata !1145, metadata !1146}
!1137 = metadata !{i32 786445, metadata !1135, metadata !"host", metadata !846, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1138 = metadata !{i32 786445, metadata !1135, metadata !"port", metadata !846, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !1031} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1139 = metadata !{i32 786445, metadata !1135, metadata !"no_port", metadata !846, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1140 = metadata !{i32 786445, metadata !1135, metadata !"naddrs", metadata !846, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1141 = metadata !{i32 786445, metadata !1135, metadata !"addrs", metadata !846, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1142} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1142 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1143} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1143 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !846, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1144 = metadata !{i32 786445, metadata !1135, metadata !"sockaddr", metadata !846, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1145 = metadata !{i32 786445, metadata !1135, metadata !"socklen", metadata !846, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1146 = metadata !{i32 786445, metadata !1135, metadata !"ctx", metadata !846, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1147} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1148} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1148 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !846, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1149} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1149 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1150, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1151, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1150 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1151 = metadata !{metadata !1152, metadata !1155, metadata !1178, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1192, metadata !1193, metadata !1194, metadata !1195, metadata !1200, metadata !1201, metadata !1202, metadata !1203, metadata !1204}
!1152 = metadata !{i32 786445, metadata !1149, metadata !"next", metadata !1150, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1153} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1153 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1154} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1154 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1150, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1149} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1155 = metadata !{i32 786445, metadata !1149, metadata !"resolver", metadata !1150, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1156} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1156 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1157} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1157 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1150, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1158} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1158 = metadata !{i32 786451, null, metadata !"", metadata !1150, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1159, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1159 = metadata !{metadata !1160, metadata !1161, metadata !1162, metadata !1163, metadata !1164, metadata !1165, metadata !1166, metadata !1167, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1172, metadata !1173, metadata !1174, metadata !1175, metadata !1176, metadata !1177}
!1160 = metadata !{i32 786445, metadata !1158, metadata !"event", metadata !1150, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1161 = metadata !{i32 786445, metadata !1158, metadata !"dummy", metadata !1150, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1162 = metadata !{i32 786445, metadata !1158, metadata !"log", metadata !1150, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1163 = metadata !{i32 786445, metadata !1158, metadata !"ident", metadata !1150, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !501} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1164 = metadata !{i32 786445, metadata !1158, metadata !"udp_connections", metadata !1150, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1165 = metadata !{i32 786445, metadata !1158, metadata !"last_connection", metadata !1150, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1166 = metadata !{i32 786445, metadata !1158, metadata !"name_rbtree", metadata !1150, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !476} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1167 = metadata !{i32 786445, metadata !1158, metadata !"name_sentinel", metadata !1150, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1168 = metadata !{i32 786445, metadata !1158, metadata !"addr_rbtree", metadata !1150, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !476} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1169 = metadata !{i32 786445, metadata !1158, metadata !"addr_sentinel", metadata !1150, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1170 = metadata !{i32 786445, metadata !1158, metadata !"name_resend_queue", metadata !1150, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1171 = metadata !{i32 786445, metadata !1158, metadata !"addr_resend_queue", metadata !1150, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1172 = metadata !{i32 786445, metadata !1158, metadata !"name_expire_queue", metadata !1150, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1173 = metadata !{i32 786445, metadata !1158, metadata !"addr_expire_queue", metadata !1150, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1174 = metadata !{i32 786445, metadata !1158, metadata !"resend_timeout", metadata !1150, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !491} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1175 = metadata !{i32 786445, metadata !1158, metadata !"expire", metadata !1150, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !491} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1176 = metadata !{i32 786445, metadata !1158, metadata !"valid", metadata !1150, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !491} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1177 = metadata !{i32 786445, metadata !1158, metadata !"log_level", metadata !1150, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1178 = metadata !{i32 786445, metadata !1149, metadata !"udp_connection", metadata !1150, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1179} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1180 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1150, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1181} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1181 = metadata !{i32 786451, null, metadata !"", metadata !1150, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1182, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1182 = metadata !{metadata !1183, metadata !1184, metadata !1185, metadata !1186, metadata !1187}
!1183 = metadata !{i32 786445, metadata !1181, metadata !"connection", metadata !1150, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1184 = metadata !{i32 786445, metadata !1181, metadata !"sockaddr", metadata !1150, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1185 = metadata !{i32 786445, metadata !1181, metadata !"socklen", metadata !1150, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1186 = metadata !{i32 786445, metadata !1181, metadata !"server", metadata !1150, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1187 = metadata !{i32 786445, metadata !1181, metadata !"log", metadata !1150, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1188 = metadata !{i32 786445, metadata !1149, metadata !"ident", metadata !1150, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !501} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1189 = metadata !{i32 786445, metadata !1149, metadata !"state", metadata !1150, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !501} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1190 = metadata !{i32 786445, metadata !1149, metadata !"type", metadata !1150, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !501} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1191 = metadata !{i32 786445, metadata !1149, metadata !"name", metadata !1150, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1192 = metadata !{i32 786445, metadata !1149, metadata !"naddrs", metadata !1150, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1193 = metadata !{i32 786445, metadata !1149, metadata !"addrs", metadata !1150, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !1142} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1194 = metadata !{i32 786445, metadata !1149, metadata !"addr", metadata !1150, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !1143} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1195 = metadata !{i32 786445, metadata !1149, metadata !"handler", metadata !1150, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1196} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1196 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1150, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1197} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1197 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1198} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1199 = metadata !{null, metadata !1153}
!1200 = metadata !{i32 786445, metadata !1149, metadata !"data", metadata !1150, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1201 = metadata !{i32 786445, metadata !1149, metadata !"timeout", metadata !1150, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1202 = metadata !{i32 786445, metadata !1149, metadata !"quick", metadata !1150, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1203 = metadata !{i32 786445, metadata !1149, metadata !"recursion", metadata !1150, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1204 = metadata !{i32 786445, metadata !1149, metadata !"event", metadata !1150, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1205 = metadata !{i32 786445, metadata !845, metadata !"buffer", metadata !846, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1206 = metadata !{i32 786445, metadata !845, metadata !"length", metadata !846, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1207 = metadata !{i32 786445, metadata !845, metadata !"out_bufs", metadata !846, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1208 = metadata !{i32 786445, metadata !845, metadata !"busy_bufs", metadata !846, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1209 = metadata !{i32 786445, metadata !845, metadata !"free_bufs", metadata !846, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1210 = metadata !{i32 786445, metadata !845, metadata !"input_filter_init", metadata !846, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1211} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1211 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1212} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1213 = metadata !{metadata !501, metadata !24}
!1214 = metadata !{i32 786445, metadata !845, metadata !"input_filter", metadata !846, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1215} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1215 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1216} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1217 = metadata !{metadata !501, metadata !24, metadata !286}
!1218 = metadata !{i32 786445, metadata !845, metadata !"input_filter_ctx", metadata !846, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1219 = metadata !{i32 786445, metadata !845, metadata !"create_key", metadata !846, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1220} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1220 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1221} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1222 = metadata !{metadata !501, metadata !662}
!1223 = metadata !{i32 786445, metadata !845, metadata !"create_request", metadata !846, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1220} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1224 = metadata !{i32 786445, metadata !845, metadata !"reinit_request", metadata !846, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1220} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1225 = metadata !{i32 786445, metadata !845, metadata !"process_header", metadata !846, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1220} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1226 = metadata !{i32 786445, metadata !845, metadata !"abort_request", metadata !846, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !659} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1227 = metadata !{i32 786445, metadata !845, metadata !"finalize_request", metadata !846, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1228} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1228 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1229} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1229 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1230, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1230 = metadata !{null, metadata !662, metadata !501}
!1231 = metadata !{i32 786445, metadata !845, metadata !"rewrite_redirect", metadata !846, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1232} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1232 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1233} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1233 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1234, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1234 = metadata !{metadata !501, metadata !662, metadata !1104, metadata !30}
!1235 = metadata !{i32 786445, metadata !845, metadata !"rewrite_cookie", metadata !846, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1236} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1236 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1237} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1238 = metadata !{metadata !501, metadata !662, metadata !1104}
!1239 = metadata !{i32 786445, metadata !845, metadata !"timeout", metadata !846, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1240 = metadata !{i32 786445, metadata !845, metadata !"state", metadata !846, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1241} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1241 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1242} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1242 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !846, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1243} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1243 = metadata !{i32 786451, null, metadata !"", metadata !846, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1244, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1244 = metadata !{metadata !1245, metadata !1246, metadata !1247, metadata !1248, metadata !1249, metadata !1250, metadata !1251}
!1245 = metadata !{i32 786445, metadata !1243, metadata !"bl_time", metadata !846, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1246 = metadata !{i32 786445, metadata !1243, metadata !"bl_state", metadata !846, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1247 = metadata !{i32 786445, metadata !1243, metadata !"status", metadata !846, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1248 = metadata !{i32 786445, metadata !1243, metadata !"response_sec", metadata !846, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !491} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1249 = metadata !{i32 786445, metadata !1243, metadata !"response_msec", metadata !846, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1250 = metadata !{i32 786445, metadata !1243, metadata !"response_length", metadata !846, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1251 = metadata !{i32 786445, metadata !1243, metadata !"peer", metadata !846, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !498} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1252 = metadata !{i32 786445, metadata !845, metadata !"method", metadata !846, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1253 = metadata !{i32 786445, metadata !845, metadata !"schema", metadata !846, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1254 = metadata !{i32 786445, metadata !845, metadata !"uri", metadata !846, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1255 = metadata !{i32 786445, metadata !845, metadata !"cleanup", metadata !846, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1256} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1256 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1257} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1257 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !846, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1258 = metadata !{i32 786445, metadata !845, metadata !"store", metadata !846, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1259 = metadata !{i32 786445, metadata !845, metadata !"cacheable", metadata !846, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1260 = metadata !{i32 786445, metadata !845, metadata !"accel", metadata !846, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1261 = metadata !{i32 786445, metadata !845, metadata !"ssl", metadata !846, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1262 = metadata !{i32 786445, metadata !845, metadata !"cache_status", metadata !846, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1263 = metadata !{i32 786445, metadata !845, metadata !"buffering", metadata !846, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1264 = metadata !{i32 786445, metadata !845, metadata !"keepalive", metadata !846, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1265 = metadata !{i32 786445, metadata !845, metadata !"request_sent", metadata !846, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1266 = metadata !{i32 786445, metadata !845, metadata !"header_sent", metadata !846, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1267 = metadata !{i32 786445, metadata !647, metadata !"upstream_states", metadata !648, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1268 = metadata !{i32 786445, metadata !647, metadata !"pool", metadata !648, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1269 = metadata !{i32 786445, metadata !647, metadata !"header_in", metadata !648, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1270 = metadata !{i32 786445, metadata !647, metadata !"headers_in", metadata !648, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1271} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1271 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !648, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1272} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1272 = metadata !{i32 786451, null, metadata !"", metadata !648, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1273, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1273 = metadata !{metadata !1274, metadata !1275, metadata !1276, metadata !1277, metadata !1278, metadata !1279, metadata !1280, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287, metadata !1288, metadata !1289, metadata !1290, metadata !1291, metadata !1292, metadata !1293, metadata !1294, metadata !1295, metadata !1296, metadata !1297, metadata !1298, metadata !1299, metadata !1300, metadata !1301, metadata !1302, metadata !1303, metadata !1304, metadata !1305}
!1274 = metadata !{i32 786445, metadata !1272, metadata !"headers", metadata !648, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1275 = metadata !{i32 786445, metadata !1272, metadata !"host", metadata !648, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !1104} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1276 = metadata !{i32 786445, metadata !1272, metadata !"connection", metadata !648, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !1104} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1277 = metadata !{i32 786445, metadata !1272, metadata !"if_modified_since", metadata !648, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !1104} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1278 = metadata !{i32 786445, metadata !1272, metadata !"if_unmodified_since", metadata !648, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !1104} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1279 = metadata !{i32 786445, metadata !1272, metadata !"user_agent", metadata !648, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !1104} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1280 = metadata !{i32 786445, metadata !1272, metadata !"referer", metadata !648, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !1104} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1281 = metadata !{i32 786445, metadata !1272, metadata !"content_length", metadata !648, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1282 = metadata !{i32 786445, metadata !1272, metadata !"content_type", metadata !648, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1283 = metadata !{i32 786445, metadata !1272, metadata !"range", metadata !648, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !1104} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1284 = metadata !{i32 786445, metadata !1272, metadata !"if_range", metadata !648, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !1104} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1285 = metadata !{i32 786445, metadata !1272, metadata !"transfer_encoding", metadata !648, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !1104} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1286 = metadata !{i32 786445, metadata !1272, metadata !"expect", metadata !648, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !1104} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1287 = metadata !{i32 786445, metadata !1272, metadata !"accept_encoding", metadata !648, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !1104} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1288 = metadata !{i32 786445, metadata !1272, metadata !"via", metadata !648, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !1104} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1289 = metadata !{i32 786445, metadata !1272, metadata !"authorization", metadata !648, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !1104} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1290 = metadata !{i32 786445, metadata !1272, metadata !"keep_alive", metadata !648, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !1104} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1291 = metadata !{i32 786445, metadata !1272, metadata !"x_forwarded_for", metadata !648, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !1104} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1292 = metadata !{i32 786445, metadata !1272, metadata !"user", metadata !648, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1293 = metadata !{i32 786445, metadata !1272, metadata !"passwd", metadata !648, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1294 = metadata !{i32 786445, metadata !1272, metadata !"cookies", metadata !648, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1295 = metadata !{i32 786445, metadata !1272, metadata !"server", metadata !648, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1296 = metadata !{i32 786445, metadata !1272, metadata !"content_length_n", metadata !648, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1297 = metadata !{i32 786445, metadata !1272, metadata !"keep_alive_n", metadata !648, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !491} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1298 = metadata !{i32 786445, metadata !1272, metadata !"connection_type", metadata !648, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1299 = metadata !{i32 786445, metadata !1272, metadata !"msie", metadata !648, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1300 = metadata !{i32 786445, metadata !1272, metadata !"msie6", metadata !648, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1301 = metadata !{i32 786445, metadata !1272, metadata !"opera", metadata !648, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1302 = metadata !{i32 786445, metadata !1272, metadata !"gecko", metadata !648, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1303 = metadata !{i32 786445, metadata !1272, metadata !"chrome", metadata !648, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1304 = metadata !{i32 786445, metadata !1272, metadata !"safari", metadata !648, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1305 = metadata !{i32 786445, metadata !1272, metadata !"konqueror", metadata !648, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1306 = metadata !{i32 786445, metadata !647, metadata !"headers_out", metadata !648, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1307} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1307 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !648, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1308} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1308 = metadata !{i32 786451, null, metadata !"", metadata !648, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1309, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1309 = metadata !{metadata !1310, metadata !1311, metadata !1312, metadata !1313, metadata !1314, metadata !1315, metadata !1316, metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1321, metadata !1322, metadata !1323, metadata !1324, metadata !1325, metadata !1326, metadata !1327, metadata !1328, metadata !1329, metadata !1330, metadata !1331, metadata !1332, metadata !1333, metadata !1334}
!1310 = metadata !{i32 786445, metadata !1308, metadata !"headers", metadata !648, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1311 = metadata !{i32 786445, metadata !1308, metadata !"status", metadata !648, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1312 = metadata !{i32 786445, metadata !1308, metadata !"status_line", metadata !648, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1313 = metadata !{i32 786445, metadata !1308, metadata !"server", metadata !648, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !1104} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1314 = metadata !{i32 786445, metadata !1308, metadata !"date", metadata !648, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !1104} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1315 = metadata !{i32 786445, metadata !1308, metadata !"content_length", metadata !648, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1316 = metadata !{i32 786445, metadata !1308, metadata !"content_encoding", metadata !648, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1317 = metadata !{i32 786445, metadata !1308, metadata !"location", metadata !648, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !1104} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1318 = metadata !{i32 786445, metadata !1308, metadata !"refresh", metadata !648, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !1104} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1319 = metadata !{i32 786445, metadata !1308, metadata !"last_modified", metadata !648, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !1104} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1320 = metadata !{i32 786445, metadata !1308, metadata !"content_range", metadata !648, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !1104} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1321 = metadata !{i32 786445, metadata !1308, metadata !"accept_ranges", metadata !648, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !1104} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1322 = metadata !{i32 786445, metadata !1308, metadata !"www_authenticate", metadata !648, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !1104} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1323 = metadata !{i32 786445, metadata !1308, metadata !"expires", metadata !648, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !1104} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1324 = metadata !{i32 786445, metadata !1308, metadata !"etag", metadata !648, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !1104} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1325 = metadata !{i32 786445, metadata !1308, metadata !"override_charset", metadata !648, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !498} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1326 = metadata !{i32 786445, metadata !1308, metadata !"content_type_len", metadata !648, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1327 = metadata !{i32 786445, metadata !1308, metadata !"content_type", metadata !648, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1328 = metadata !{i32 786445, metadata !1308, metadata !"charset", metadata !648, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1329 = metadata !{i32 786445, metadata !1308, metadata !"content_type_lowcase", metadata !648, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1330 = metadata !{i32 786445, metadata !1308, metadata !"content_type_hash", metadata !648, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1331 = metadata !{i32 786445, metadata !1308, metadata !"cache_control", metadata !648, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1332 = metadata !{i32 786445, metadata !1308, metadata !"content_length_n", metadata !648, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1333 = metadata !{i32 786445, metadata !1308, metadata !"date_time", metadata !648, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !491} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1334 = metadata !{i32 786445, metadata !1308, metadata !"last_modified_time", metadata !648, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !491} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1335 = metadata !{i32 786445, metadata !647, metadata !"request_body", metadata !648, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1336} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1336 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1337} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1337 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !648, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1338} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1338 = metadata !{i32 786451, null, metadata !"", metadata !648, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1339, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1339 = metadata !{metadata !1340, metadata !1341, metadata !1342, metadata !1343, metadata !1344, metadata !1345}
!1340 = metadata !{i32 786445, metadata !1338, metadata !"temp_file", metadata !648, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !954} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1341 = metadata !{i32 786445, metadata !1338, metadata !"bufs", metadata !648, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1342 = metadata !{i32 786445, metadata !1338, metadata !"buf", metadata !648, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1343 = metadata !{i32 786445, metadata !1338, metadata !"rest", metadata !648, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1344 = metadata !{i32 786445, metadata !1338, metadata !"to_write", metadata !648, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1345 = metadata !{i32 786445, metadata !1338, metadata !"post_handler", metadata !648, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1346} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1346 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !648, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !659} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1347 = metadata !{i32 786445, metadata !647, metadata !"lingering_time", metadata !648, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !491} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1348 = metadata !{i32 786445, metadata !647, metadata !"start_sec", metadata !648, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !491} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1349 = metadata !{i32 786445, metadata !647, metadata !"start_msec", metadata !648, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1350 = metadata !{i32 786445, metadata !647, metadata !"method", metadata !648, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1351 = metadata !{i32 786445, metadata !647, metadata !"http_version", metadata !648, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1352 = metadata !{i32 786445, metadata !647, metadata !"request_line", metadata !648, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1353 = metadata !{i32 786445, metadata !647, metadata !"uri", metadata !648, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1354 = metadata !{i32 786445, metadata !647, metadata !"args", metadata !648, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1355 = metadata !{i32 786445, metadata !647, metadata !"exten", metadata !648, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1356 = metadata !{i32 786445, metadata !647, metadata !"unparsed_uri", metadata !648, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1357 = metadata !{i32 786445, metadata !647, metadata !"method_name", metadata !648, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1358 = metadata !{i32 786445, metadata !647, metadata !"http_protocol", metadata !648, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1359 = metadata !{i32 786445, metadata !647, metadata !"out", metadata !648, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1360 = metadata !{i32 786445, metadata !647, metadata !"main", metadata !648, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !662} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1361 = metadata !{i32 786445, metadata !647, metadata !"parent", metadata !648, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !662} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1362 = metadata !{i32 786445, metadata !647, metadata !"postponed", metadata !648, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1363} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1363 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1364} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1364 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !648, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1365} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1365 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !648, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1366, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1366 = metadata !{metadata !1367, metadata !1368, metadata !1369}
!1367 = metadata !{i32 786445, metadata !1365, metadata !"request", metadata !648, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !662} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1368 = metadata !{i32 786445, metadata !1365, metadata !"out", metadata !648, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1369 = metadata !{i32 786445, metadata !1365, metadata !"next", metadata !648, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1363} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1370 = metadata !{i32 786445, metadata !647, metadata !"post_subrequest", metadata !648, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1371} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1371 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1372} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1372 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !648, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1373} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1373 = metadata !{i32 786451, null, metadata !"", metadata !648, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1374, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1374 = metadata !{metadata !1375, metadata !1380}
!1375 = metadata !{i32 786445, metadata !1373, metadata !"handler", metadata !648, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1376} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1376 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !648, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1377} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1377 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1378} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1379 = metadata !{metadata !501, metadata !662, metadata !24, metadata !501}
!1380 = metadata !{i32 786445, metadata !1373, metadata !"data", metadata !648, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1381 = metadata !{i32 786445, metadata !647, metadata !"posted_requests", metadata !648, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1382} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1382 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1383} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1383 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !648, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1384} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1384 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !648, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1385, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1385 = metadata !{metadata !1386, metadata !1387}
!1386 = metadata !{i32 786445, metadata !1384, metadata !"request", metadata !648, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !662} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1387 = metadata !{i32 786445, metadata !1384, metadata !"next", metadata !648, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1382} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1388 = metadata !{i32 786445, metadata !647, metadata !"virtual_names", metadata !648, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1389} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1389 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1390} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1390 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !648, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1391} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1391 = metadata !{i32 786451, null, metadata !"", metadata !648, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1392, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1392 = metadata !{metadata !1393, metadata !1406, metadata !1407}
!1393 = metadata !{i32 786445, metadata !1391, metadata !"names", metadata !648, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1394} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1394 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !648, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1395} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1395 = metadata !{i32 786451, null, metadata !"", metadata !1061, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1396, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1396 = metadata !{metadata !1397, metadata !1398, metadata !1405}
!1397 = metadata !{i32 786445, metadata !1395, metadata !"hash", metadata !1061, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !1059} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1398 = metadata !{i32 786445, metadata !1395, metadata !"wc_head", metadata !1061, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1399} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1399 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1400} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1400 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !1061, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1401} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1401 = metadata !{i32 786451, null, metadata !"", metadata !1061, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1402, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1402 = metadata !{metadata !1403, metadata !1404}
!1403 = metadata !{i32 786445, metadata !1401, metadata !"hash", metadata !1061, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !1059} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1404 = metadata !{i32 786445, metadata !1401, metadata !"value", metadata !1061, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1405 = metadata !{i32 786445, metadata !1395, metadata !"wc_tail", metadata !1061, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1399} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1406 = metadata !{i32 786445, metadata !1391, metadata !"nregex", metadata !648, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1407 = metadata !{i32 786445, metadata !1391, metadata !"regex", metadata !648, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1408} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1408 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1409} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1409 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !648, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1410} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1410 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1411, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1412, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1411 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1412 = metadata !{metadata !1413, metadata !1455, metadata !1599}
!1413 = metadata !{i32 786445, metadata !1410, metadata !"regex", metadata !1411, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1414} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1414 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1415} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1415 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1411, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1416} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1416 = metadata !{i32 786451, null, metadata !"", metadata !1417, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1418, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1417 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1418 = metadata !{metadata !1419, metadata !1445, metadata !1446, metadata !1453, metadata !1454}
!1419 = metadata !{i32 786445, metadata !1416, metadata !"regex", metadata !1417, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1420} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1420 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1421} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1421 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !1417, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1422} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1422 = metadata !{i32 786451, null, metadata !"", metadata !1423, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1424, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1423 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1424 = metadata !{metadata !1425, metadata !1430}
!1425 = metadata !{i32 786445, metadata !1422, metadata !"code", metadata !1423, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1426} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1426 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1427} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1427 = metadata !{i32 786454, null, metadata !"pcre", metadata !1423, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1428} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1428 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1429, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1429 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1430 = metadata !{i32 786445, metadata !1422, metadata !"extra", metadata !1423, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1431} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1431 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1432} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1432 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1423, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1433} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1433 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1429, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1434, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1434 = metadata !{metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1444}
!1435 = metadata !{i32 786445, metadata !1433, metadata !"flags", metadata !1429, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1436 = metadata !{i32 786445, metadata !1433, metadata !"study_data", metadata !1429, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1437 = metadata !{i32 786445, metadata !1433, metadata !"match_limit", metadata !1429, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1438 = metadata !{i32 786445, metadata !1433, metadata !"callout_data", metadata !1429, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1439 = metadata !{i32 786445, metadata !1433, metadata !"tables", metadata !1429, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !513} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1440 = metadata !{i32 786445, metadata !1433, metadata !"match_limit_recursion", metadata !1429, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1441 = metadata !{i32 786445, metadata !1433, metadata !"mark", metadata !1429, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1442} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1442 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1443} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1443 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1444 = metadata !{i32 786445, metadata !1433, metadata !"executable_jit", metadata !1429, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1445 = metadata !{i32 786445, metadata !1416, metadata !"ncaptures", metadata !1417, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1446 = metadata !{i32 786445, metadata !1416, metadata !"variables", metadata !1417, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1447} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1447 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1448} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1448 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !1417, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1449} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1449 = metadata !{i32 786451, null, metadata !"", metadata !1417, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1450, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1450 = metadata !{metadata !1451, metadata !1452}
!1451 = metadata !{i32 786445, metadata !1449, metadata !"capture", metadata !1417, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1452 = metadata !{i32 786445, metadata !1449, metadata !"index", metadata !1417, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !501} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1453 = metadata !{i32 786445, metadata !1416, metadata !"nvariables", metadata !1417, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1454 = metadata !{i32 786445, metadata !1416, metadata !"name", metadata !1417, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1455 = metadata !{i32 786445, metadata !1410, metadata !"server", metadata !1411, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1456} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1456 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1457} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1457 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1411, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1458} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1458 = metadata !{i32 786451, null, metadata !"", metadata !1411, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1459, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1459 = metadata !{metadata !1460, metadata !1461, metadata !1470, metadata !1471, metadata !1472, metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1477, metadata !1478, metadata !1479, metadata !1480, metadata !1481}
!1460 = metadata !{i32 786445, metadata !1458, metadata !"server_names", metadata !1411, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1461 = metadata !{i32 786445, metadata !1458, metadata !"ctx", metadata !1411, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1462} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1462 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1463} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1463 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1464, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1465} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1464 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1465 = metadata !{i32 786451, null, metadata !"", metadata !1464, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1466, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1466 = metadata !{metadata !1467, metadata !1468, metadata !1469}
!1467 = metadata !{i32 786445, metadata !1465, metadata !"main_conf", metadata !1464, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1468 = metadata !{i32 786445, metadata !1465, metadata !"srv_conf", metadata !1464, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1469 = metadata !{i32 786445, metadata !1465, metadata !"loc_conf", metadata !1464, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1470 = metadata !{i32 786445, metadata !1458, metadata !"server_name", metadata !1411, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1471 = metadata !{i32 786445, metadata !1458, metadata !"connection_pool_size", metadata !1411, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1472 = metadata !{i32 786445, metadata !1458, metadata !"request_pool_size", metadata !1411, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1473 = metadata !{i32 786445, metadata !1458, metadata !"client_header_buffer_size", metadata !1411, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1474 = metadata !{i32 786445, metadata !1458, metadata !"large_client_header_buffers", metadata !1411, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !934} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1475 = metadata !{i32 786445, metadata !1458, metadata !"client_header_timeout", metadata !1411, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1476 = metadata !{i32 786445, metadata !1458, metadata !"ignore_invalid_headers", metadata !1411, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !1051} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1477 = metadata !{i32 786445, metadata !1458, metadata !"merge_slashes", metadata !1411, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !1051} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1478 = metadata !{i32 786445, metadata !1458, metadata !"underscores_in_headers", metadata !1411, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !1051} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1479 = metadata !{i32 786445, metadata !1458, metadata !"listen", metadata !1411, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1480 = metadata !{i32 786445, metadata !1458, metadata !"captures", metadata !1411, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1481 = metadata !{i32 786445, metadata !1458, metadata !"named_locations", metadata !1411, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1482} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1482 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1483} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1483 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1484} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1484 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1411, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1485} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1485 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1411, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1486, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1486 = metadata !{metadata !1487, metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1493, metadata !1494, metadata !1495, metadata !1496, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1513, metadata !1515, metadata !1516, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1531, metadata !1532, metadata !1533, metadata !1534, metadata !1535, metadata !1536, metadata !1537, metadata !1538, metadata !1539, metadata !1540, metadata !1541, metadata !1542, metadata !1543, metadata !1544, metadata !1545, metadata !1546, metadata !1547, metadata !1548, metadata !1549, metadata !1550, metadata !1551, metadata !1552, metadata !1553, metadata !1554, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568, metadata !1578, metadata !1579, metadata !1589, metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597, metadata !1598}
!1487 = metadata !{i32 786445, metadata !1485, metadata !"name", metadata !1411, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1488 = metadata !{i32 786445, metadata !1485, metadata !"regex", metadata !1411, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1414} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1489 = metadata !{i32 786445, metadata !1485, metadata !"noname", metadata !1411, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1490 = metadata !{i32 786445, metadata !1485, metadata !"lmt_excpt", metadata !1411, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1491 = metadata !{i32 786445, metadata !1485, metadata !"named", metadata !1411, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1492 = metadata !{i32 786445, metadata !1485, metadata !"exact_match", metadata !1411, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1493 = metadata !{i32 786445, metadata !1485, metadata !"noregex", metadata !1411, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1494 = metadata !{i32 786445, metadata !1485, metadata !"auto_redirect", metadata !1411, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1495 = metadata !{i32 786445, metadata !1485, metadata !"gzip_disable_msie6", metadata !1411, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1496 = metadata !{i32 786445, metadata !1485, metadata !"static_locations", metadata !1411, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1497} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1497 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1498} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1498 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1411, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1499} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1499 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1411, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1500, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1500 = metadata !{metadata !1501, metadata !1502, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508}
!1501 = metadata !{i32 786445, metadata !1499, metadata !"left", metadata !1411, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1497} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1502 = metadata !{i32 786445, metadata !1499, metadata !"right", metadata !1411, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1497} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1503 = metadata !{i32 786445, metadata !1499, metadata !"tree", metadata !1411, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1497} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1504 = metadata !{i32 786445, metadata !1499, metadata !"exact", metadata !1411, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1483} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1505 = metadata !{i32 786445, metadata !1499, metadata !"inclusive", metadata !1411, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1483} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1506 = metadata !{i32 786445, metadata !1499, metadata !"auto_redirect", metadata !1411, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1507 = metadata !{i32 786445, metadata !1499, metadata !"len", metadata !1411, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1508 = metadata !{i32 786445, metadata !1499, metadata !"name", metadata !1411, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !1074} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1509 = metadata !{i32 786445, metadata !1485, metadata !"regex_locations", metadata !1411, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1482} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1510 = metadata !{i32 786445, metadata !1485, metadata !"loc_conf", metadata !1411, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1511 = metadata !{i32 786445, metadata !1485, metadata !"limit_except", metadata !1411, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !651} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1512 = metadata !{i32 786445, metadata !1485, metadata !"limit_except_loc_conf", metadata !1411, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1513 = metadata !{i32 786445, metadata !1485, metadata !"handler", metadata !1411, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1514} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1514 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1411, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1220} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1515 = metadata !{i32 786445, metadata !1485, metadata !"alias", metadata !1411, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1516 = metadata !{i32 786445, metadata !1485, metadata !"root", metadata !1411, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1517 = metadata !{i32 786445, metadata !1485, metadata !"post_action", metadata !1411, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1518 = metadata !{i32 786445, metadata !1485, metadata !"root_lengths", metadata !1411, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1519 = metadata !{i32 786445, metadata !1485, metadata !"root_values", metadata !1411, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1520 = metadata !{i32 786445, metadata !1485, metadata !"types", metadata !1411, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1521 = metadata !{i32 786445, metadata !1485, metadata !"types_hash", metadata !1411, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !1059} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1522 = metadata !{i32 786445, metadata !1485, metadata !"default_type", metadata !1411, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1523 = metadata !{i32 786445, metadata !1485, metadata !"client_max_body_size", metadata !1411, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1524 = metadata !{i32 786445, metadata !1485, metadata !"directio", metadata !1411, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1525 = metadata !{i32 786445, metadata !1485, metadata !"directio_alignment", metadata !1411, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1526 = metadata !{i32 786445, metadata !1485, metadata !"client_body_buffer_size", metadata !1411, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1527 = metadata !{i32 786445, metadata !1485, metadata !"send_lowat", metadata !1411, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1528 = metadata !{i32 786445, metadata !1485, metadata !"postpone_output", metadata !1411, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1529 = metadata !{i32 786445, metadata !1485, metadata !"limit_rate", metadata !1411, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1530 = metadata !{i32 786445, metadata !1485, metadata !"limit_rate_after", metadata !1411, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1531 = metadata !{i32 786445, metadata !1485, metadata !"sendfile_max_chunk", metadata !1411, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1532 = metadata !{i32 786445, metadata !1485, metadata !"read_ahead", metadata !1411, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1533 = metadata !{i32 786445, metadata !1485, metadata !"client_body_timeout", metadata !1411, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1534 = metadata !{i32 786445, metadata !1485, metadata !"send_timeout", metadata !1411, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1535 = metadata !{i32 786445, metadata !1485, metadata !"keepalive_timeout", metadata !1411, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1536 = metadata !{i32 786445, metadata !1485, metadata !"lingering_time", metadata !1411, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1537 = metadata !{i32 786445, metadata !1485, metadata !"lingering_timeout", metadata !1411, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1538 = metadata !{i32 786445, metadata !1485, metadata !"resolver_timeout", metadata !1411, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1539 = metadata !{i32 786445, metadata !1485, metadata !"resolver", metadata !1411, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1156} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1540 = metadata !{i32 786445, metadata !1485, metadata !"keepalive_header", metadata !1411, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !491} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1541 = metadata !{i32 786445, metadata !1485, metadata !"keepalive_requests", metadata !1411, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1542 = metadata !{i32 786445, metadata !1485, metadata !"keepalive_disable", metadata !1411, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1543 = metadata !{i32 786445, metadata !1485, metadata !"satisfy", metadata !1411, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1544 = metadata !{i32 786445, metadata !1485, metadata !"lingering_close", metadata !1411, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1545 = metadata !{i32 786445, metadata !1485, metadata !"if_modified_since", metadata !1411, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1546 = metadata !{i32 786445, metadata !1485, metadata !"max_ranges", metadata !1411, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1547 = metadata !{i32 786445, metadata !1485, metadata !"client_body_in_file_only", metadata !1411, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1548 = metadata !{i32 786445, metadata !1485, metadata !"client_body_in_single_buffer", metadata !1411, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !1051} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1549 = metadata !{i32 786445, metadata !1485, metadata !"internal", metadata !1411, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !1051} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1550 = metadata !{i32 786445, metadata !1485, metadata !"sendfile", metadata !1411, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !1051} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1551 = metadata !{i32 786445, metadata !1485, metadata !"tcp_nopush", metadata !1411, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !1051} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1552 = metadata !{i32 786445, metadata !1485, metadata !"tcp_nodelay", metadata !1411, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !1051} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1553 = metadata !{i32 786445, metadata !1485, metadata !"reset_timedout_connection", metadata !1411, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !1051} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1554 = metadata !{i32 786445, metadata !1485, metadata !"server_name_in_redirect", metadata !1411, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !1051} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1555 = metadata !{i32 786445, metadata !1485, metadata !"port_in_redirect", metadata !1411, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !1051} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1556 = metadata !{i32 786445, metadata !1485, metadata !"msie_padding", metadata !1411, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !1051} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1557 = metadata !{i32 786445, metadata !1485, metadata !"msie_refresh", metadata !1411, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !1051} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1558 = metadata !{i32 786445, metadata !1485, metadata !"log_not_found", metadata !1411, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !1051} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1559 = metadata !{i32 786445, metadata !1485, metadata !"log_subrequest", metadata !1411, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !1051} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1560 = metadata !{i32 786445, metadata !1485, metadata !"recursive_error_pages", metadata !1411, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !1051} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1561 = metadata !{i32 786445, metadata !1485, metadata !"server_tokens", metadata !1411, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !1051} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1562 = metadata !{i32 786445, metadata !1485, metadata !"chunked_transfer_encoding", metadata !1411, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !1051} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1563 = metadata !{i32 786445, metadata !1485, metadata !"gzip_vary", metadata !1411, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !1051} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1564 = metadata !{i32 786445, metadata !1485, metadata !"gzip_http_version", metadata !1411, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1565 = metadata !{i32 786445, metadata !1485, metadata !"gzip_proxied", metadata !1411, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1566 = metadata !{i32 786445, metadata !1485, metadata !"gzip_disable", metadata !1411, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1567 = metadata !{i32 786445, metadata !1485, metadata !"disable_symlinks", metadata !1411, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1568 = metadata !{i32 786445, metadata !1485, metadata !"disable_symlinks_from", metadata !1411, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1569} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1569 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1570} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1570 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1411, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1571} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1571 = metadata !{i32 786451, null, metadata !"", metadata !563, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1572, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1572 = metadata !{metadata !1573, metadata !1574, metadata !1576, metadata !1577}
!1573 = metadata !{i32 786445, metadata !1571, metadata !"value", metadata !563, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1574 = metadata !{i32 786445, metadata !1571, metadata !"flushes", metadata !563, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1575} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1575 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1576 = metadata !{i32 786445, metadata !1571, metadata !"lengths", metadata !563, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1577 = metadata !{i32 786445, metadata !1571, metadata !"values", metadata !563, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1578 = metadata !{i32 786445, metadata !1485, metadata !"error_pages", metadata !1411, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1579 = metadata !{i32 786445, metadata !1485, metadata !"try_files", metadata !1411, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1580} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1580 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1581} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1581 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1411, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1582} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1582 = metadata !{i32 786451, null, metadata !"", metadata !1411, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1583, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1583 = metadata !{metadata !1584, metadata !1585, metadata !1586, metadata !1587, metadata !1588}
!1584 = metadata !{i32 786445, metadata !1582, metadata !"lengths", metadata !1411, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1585 = metadata !{i32 786445, metadata !1582, metadata !"values", metadata !1411, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1586 = metadata !{i32 786445, metadata !1582, metadata !"name", metadata !1411, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1587 = metadata !{i32 786445, metadata !1582, metadata !"code", metadata !1411, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1588 = metadata !{i32 786445, metadata !1582, metadata !"test_dir", metadata !1411, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1589 = metadata !{i32 786445, metadata !1485, metadata !"client_body_temp_path", metadata !1411, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !758} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1590 = metadata !{i32 786445, metadata !1485, metadata !"open_file_cache", metadata !1411, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !470} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1591 = metadata !{i32 786445, metadata !1485, metadata !"open_file_cache_valid", metadata !1411, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !491} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1592 = metadata !{i32 786445, metadata !1485, metadata !"open_file_cache_min_uses", metadata !1411, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1593 = metadata !{i32 786445, metadata !1485, metadata !"open_file_cache_errors", metadata !1411, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !1051} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1594 = metadata !{i32 786445, metadata !1485, metadata !"open_file_cache_events", metadata !1411, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !1051} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1595 = metadata !{i32 786445, metadata !1485, metadata !"error_log", metadata !1411, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1596 = metadata !{i32 786445, metadata !1485, metadata !"types_hash_max_size", metadata !1411, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1597 = metadata !{i32 786445, metadata !1485, metadata !"types_hash_bucket_size", metadata !1411, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1598 = metadata !{i32 786445, metadata !1485, metadata !"locations", metadata !1411, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1599 = metadata !{i32 786445, metadata !1410, metadata !"name", metadata !1411, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1600 = metadata !{i32 786445, metadata !647, metadata !"phase_handler", metadata !648, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !501} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1601 = metadata !{i32 786445, metadata !647, metadata !"content_handler", metadata !648, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1514} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1602 = metadata !{i32 786445, metadata !647, metadata !"access_code", metadata !648, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1603 = metadata !{i32 786445, metadata !647, metadata !"variables", metadata !648, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1604} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1604 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1605} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1605 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !648, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1606} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1606 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !648, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1607} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1607 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1608, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1608 = metadata !{metadata !1609, metadata !1610, metadata !1611, metadata !1612, metadata !1613, metadata !1614}
!1609 = metadata !{i32 786445, metadata !1607, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1610 = metadata !{i32 786445, metadata !1607, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1611 = metadata !{i32 786445, metadata !1607, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1612 = metadata !{i32 786445, metadata !1607, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1613 = metadata !{i32 786445, metadata !1607, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1614 = metadata !{i32 786445, metadata !1607, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1615 = metadata !{i32 786445, metadata !647, metadata !"ncaptures", metadata !648, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1616 = metadata !{i32 786445, metadata !647, metadata !"captures", metadata !648, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1617} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1617 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1618 = metadata !{i32 786445, metadata !647, metadata !"captures_data", metadata !648, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1619 = metadata !{i32 786445, metadata !647, metadata !"limit_rate", metadata !648, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1620 = metadata !{i32 786445, metadata !647, metadata !"header_size", metadata !648, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1621 = metadata !{i32 786445, metadata !647, metadata !"request_length", metadata !648, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1622 = metadata !{i32 786445, metadata !647, metadata !"err_status", metadata !648, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1623 = metadata !{i32 786445, metadata !647, metadata !"http_connection", metadata !648, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1624} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1624 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1625} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1625 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !648, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1626} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1626 = metadata !{i32 786451, null, metadata !"", metadata !648, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1627, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1627 = metadata !{metadata !1628, metadata !1629, metadata !1631, metadata !1632, metadata !1633, metadata !1634}
!1628 = metadata !{i32 786445, metadata !1626, metadata !"request", metadata !648, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !662} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1629 = metadata !{i32 786445, metadata !1626, metadata !"busy", metadata !648, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1630} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1630 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1631 = metadata !{i32 786445, metadata !1626, metadata !"nbusy", metadata !648, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !501} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1632 = metadata !{i32 786445, metadata !1626, metadata !"free", metadata !648, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1630} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1633 = metadata !{i32 786445, metadata !1626, metadata !"nfree", metadata !648, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !501} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1634 = metadata !{i32 786445, metadata !1626, metadata !"pipeline", metadata !648, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1635 = metadata !{i32 786445, metadata !647, metadata !"log_handler", metadata !648, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1636} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1636 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !648, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1637} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1637 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1638} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1638 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1639 = metadata !{metadata !44, metadata !662, metadata !662, metadata !44, metadata !30}
!1640 = metadata !{i32 786445, metadata !647, metadata !"cleanup", metadata !648, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1641} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1641 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1642} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1642 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !648, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1643} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1643 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !648, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1644, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1644 = metadata !{metadata !1645, metadata !1646, metadata !1647}
!1645 = metadata !{i32 786445, metadata !1643, metadata !"handler", metadata !648, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1257} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1646 = metadata !{i32 786445, metadata !1643, metadata !"data", metadata !648, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1647 = metadata !{i32 786445, metadata !1643, metadata !"next", metadata !648, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1641} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1648 = metadata !{i32 786445, metadata !647, metadata !"subrequests", metadata !648, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1649 = metadata !{i32 786445, metadata !647, metadata !"count", metadata !648, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1650 = metadata !{i32 786445, metadata !647, metadata !"blocked", metadata !648, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1651 = metadata !{i32 786445, metadata !647, metadata !"aio", metadata !648, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1652 = metadata !{i32 786445, metadata !647, metadata !"http_state", metadata !648, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1653 = metadata !{i32 786445, metadata !647, metadata !"complex_uri", metadata !648, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1654 = metadata !{i32 786445, metadata !647, metadata !"quoted_uri", metadata !648, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1655 = metadata !{i32 786445, metadata !647, metadata !"plus_in_uri", metadata !648, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1656 = metadata !{i32 786445, metadata !647, metadata !"space_in_uri", metadata !648, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1657 = metadata !{i32 786445, metadata !647, metadata !"invalid_header", metadata !648, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1658 = metadata !{i32 786445, metadata !647, metadata !"add_uri_to_alias", metadata !648, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1659 = metadata !{i32 786445, metadata !647, metadata !"valid_location", metadata !648, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1660 = metadata !{i32 786445, metadata !647, metadata !"valid_unparsed_uri", metadata !648, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1661 = metadata !{i32 786445, metadata !647, metadata !"uri_changed", metadata !648, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1662 = metadata !{i32 786445, metadata !647, metadata !"uri_changes", metadata !648, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1663 = metadata !{i32 786445, metadata !647, metadata !"request_body_in_single_buf", metadata !648, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1664 = metadata !{i32 786445, metadata !647, metadata !"request_body_in_file_only", metadata !648, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1665 = metadata !{i32 786445, metadata !647, metadata !"request_body_in_persistent_file", metadata !648, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1666 = metadata !{i32 786445, metadata !647, metadata !"request_body_in_clean_file", metadata !648, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1667 = metadata !{i32 786445, metadata !647, metadata !"request_body_file_group_access", metadata !648, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1668 = metadata !{i32 786445, metadata !647, metadata !"request_body_file_log_level", metadata !648, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1669 = metadata !{i32 786445, metadata !647, metadata !"subrequest_in_memory", metadata !648, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1670 = metadata !{i32 786445, metadata !647, metadata !"waited", metadata !648, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1671 = metadata !{i32 786445, metadata !647, metadata !"cached", metadata !648, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1672 = metadata !{i32 786445, metadata !647, metadata !"gzip_tested", metadata !648, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1673 = metadata !{i32 786445, metadata !647, metadata !"gzip_ok", metadata !648, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1674 = metadata !{i32 786445, metadata !647, metadata !"gzip_vary", metadata !648, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1675 = metadata !{i32 786445, metadata !647, metadata !"proxy", metadata !648, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1676 = metadata !{i32 786445, metadata !647, metadata !"bypass_cache", metadata !648, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1677 = metadata !{i32 786445, metadata !647, metadata !"no_cache", metadata !648, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1678 = metadata !{i32 786445, metadata !647, metadata !"limit_conn_set", metadata !648, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1679 = metadata !{i32 786445, metadata !647, metadata !"limit_req_set", metadata !648, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1680 = metadata !{i32 786445, metadata !647, metadata !"pipeline", metadata !648, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1681 = metadata !{i32 786445, metadata !647, metadata !"plain_http", metadata !648, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1682 = metadata !{i32 786445, metadata !647, metadata !"chunked", metadata !648, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1683 = metadata !{i32 786445, metadata !647, metadata !"header_only", metadata !648, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1684 = metadata !{i32 786445, metadata !647, metadata !"keepalive", metadata !648, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1685 = metadata !{i32 786445, metadata !647, metadata !"lingering_close", metadata !648, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1686 = metadata !{i32 786445, metadata !647, metadata !"discard_body", metadata !648, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1687 = metadata !{i32 786445, metadata !647, metadata !"internal", metadata !648, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1688 = metadata !{i32 786445, metadata !647, metadata !"error_page", metadata !648, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1689 = metadata !{i32 786445, metadata !647, metadata !"ignore_content_encoding", metadata !648, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1690 = metadata !{i32 786445, metadata !647, metadata !"filter_finalize", metadata !648, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1691 = metadata !{i32 786445, metadata !647, metadata !"post_action", metadata !648, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1692 = metadata !{i32 786445, metadata !647, metadata !"request_complete", metadata !648, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1693 = metadata !{i32 786445, metadata !647, metadata !"request_output", metadata !648, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1694 = metadata !{i32 786445, metadata !647, metadata !"header_sent", metadata !648, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1695 = metadata !{i32 786445, metadata !647, metadata !"expect_tested", metadata !648, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1696 = metadata !{i32 786445, metadata !647, metadata !"root_tested", metadata !648, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1697 = metadata !{i32 786445, metadata !647, metadata !"done", metadata !648, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1698 = metadata !{i32 786445, metadata !647, metadata !"logged", metadata !648, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1699 = metadata !{i32 786445, metadata !647, metadata !"buffered", metadata !648, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1700 = metadata !{i32 786445, metadata !647, metadata !"main_filter_need_in_memory", metadata !648, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1701 = metadata !{i32 786445, metadata !647, metadata !"filter_need_in_memory", metadata !648, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1702 = metadata !{i32 786445, metadata !647, metadata !"filter_need_temporary", metadata !648, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1703 = metadata !{i32 786445, metadata !647, metadata !"allow_ranges", metadata !648, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1704 = metadata !{i32 786445, metadata !647, metadata !"state", metadata !648, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1705 = metadata !{i32 786445, metadata !647, metadata !"header_hash", metadata !648, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1706 = metadata !{i32 786445, metadata !647, metadata !"lowcase_index", metadata !648, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1707 = metadata !{i32 786445, metadata !647, metadata !"lowcase_header", metadata !648, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1708} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1708 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1709, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1709 = metadata !{metadata !1710}
!1710 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1711 = metadata !{i32 786445, metadata !647, metadata !"header_name_start", metadata !648, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1712 = metadata !{i32 786445, metadata !647, metadata !"header_name_end", metadata !648, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1713 = metadata !{i32 786445, metadata !647, metadata !"header_start", metadata !648, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1714 = metadata !{i32 786445, metadata !647, metadata !"header_end", metadata !648, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1715 = metadata !{i32 786445, metadata !647, metadata !"uri_start", metadata !648, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1716 = metadata !{i32 786445, metadata !647, metadata !"uri_end", metadata !648, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1717 = metadata !{i32 786445, metadata !647, metadata !"uri_ext", metadata !648, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1718 = metadata !{i32 786445, metadata !647, metadata !"args_start", metadata !648, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1719 = metadata !{i32 786445, metadata !647, metadata !"request_start", metadata !648, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1720 = metadata !{i32 786445, metadata !647, metadata !"request_end", metadata !648, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1721 = metadata !{i32 786445, metadata !647, metadata !"method_end", metadata !648, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1722 = metadata !{i32 786445, metadata !647, metadata !"schema_start", metadata !648, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1723 = metadata !{i32 786445, metadata !647, metadata !"schema_end", metadata !648, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1724 = metadata !{i32 786445, metadata !647, metadata !"host_start", metadata !648, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1725 = metadata !{i32 786445, metadata !647, metadata !"host_end", metadata !648, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1726 = metadata !{i32 786445, metadata !647, metadata !"port_start", metadata !648, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1727 = metadata !{i32 786445, metadata !647, metadata !"port_end", metadata !648, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1728 = metadata !{i32 786445, metadata !647, metadata !"http_minor", metadata !648, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1729 = metadata !{i32 786445, metadata !647, metadata !"http_major", metadata !648, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1730 = metadata !{i32 786445, metadata !637, metadata !"run", metadata !6, i32 17, i64 32, i64 32, i64 64, i32 0, metadata !1731} ; [ DW_TAG_member ] [run] [line 17, size 32, align 32, offset 64] [from ngx_http_log_op_run_pt]
!1731 = metadata !{i32 786454, null, metadata !"ngx_http_log_op_run_pt", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !1732} ; [ DW_TAG_typedef ] [ngx_http_log_op_run_pt] [line 10, size 0, align 0, offset 0] [from ]
!1732 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1733} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1734 = metadata !{metadata !44, metadata !645, metadata !44, metadata !635}
!1735 = metadata !{i32 786445, metadata !637, metadata !"data", metadata !6, i32 18, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 96] [from uintptr_t]
!1736 = metadata !{i32 786688, metadata !624, metadata !"v", metadata !6, i32 716, metadata !1737, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 716]
!1737 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1738} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_log_var_t]
!1738 = metadata !{i32 786454, null, metadata !"ngx_http_log_var_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !1739} ; [ DW_TAG_typedef ] [ngx_http_log_var_t] [line 51, size 0, align 0, offset 0] [from ]
!1739 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 48, i64 128, i64 32, i32 0, i32 0, null, metadata !1740, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 48, size 128, align 32, offset 0] [from ]
!1740 = metadata !{metadata !1741, metadata !1742, metadata !1743}
!1741 = metadata !{i32 786445, metadata !1739, metadata !"name", metadata !6, i32 49, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 49, size 64, align 32, offset 0] [from ngx_str_t]
!1742 = metadata !{i32 786445, metadata !1739, metadata !"len", metadata !6, i32 50, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 50, size 32, align 32, offset 64] [from size_t]
!1743 = metadata !{i32 786445, metadata !1739, metadata !"run", metadata !6, i32 51, i64 32, i64 32, i64 96, i32 0, metadata !1731} ; [ DW_TAG_member ] [run] [line 51, size 32, align 32, offset 96] [from ngx_http_log_op_run_pt]
!1744 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_copy_long", metadata !"ngx_http_log_copy_long", metadata !"", metadata !6, i32 295, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_copy_long, null, null, metadata !1745, i32 296} ; [ DW_TAG_subprogram ] [line 295] [local] [def] [scope 296] [ngx_http_log_copy_long]
!1745 = metadata !{metadata !1746}
!1746 = metadata !{metadata !1747, metadata !1748, metadata !1749}
!1747 = metadata !{i32 786689, metadata !1744, metadata !"r", metadata !6, i32 16777511, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 295]
!1748 = metadata !{i32 786689, metadata !1744, metadata !"buf", metadata !6, i32 33554727, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 295]
!1749 = metadata !{i32 786689, metadata !1744, metadata !"op", metadata !6, i32 50331943, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 295]
!1750 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_copy_short", metadata !"ngx_http_log_copy_short", metadata !"", metadata !6, i32 282, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_copy_short, null, null, metadata !1751, i32 283} ; [ DW_TAG_subprogram ] [line 282] [local] [def] [scope 283] [ngx_http_log_copy_short]
!1751 = metadata !{metadata !1752}
!1752 = metadata !{metadata !1753, metadata !1754, metadata !1755, metadata !1756, metadata !1758}
!1753 = metadata !{i32 786689, metadata !1750, metadata !"r", metadata !6, i32 16777498, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 282]
!1754 = metadata !{i32 786689, metadata !1750, metadata !"buf", metadata !6, i32 33554714, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 282]
!1755 = metadata !{i32 786689, metadata !1750, metadata !"op", metadata !6, i32 50331930, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 282]
!1756 = metadata !{i32 786688, metadata !1757, metadata !"len", metadata !6, i32 284, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 284]
!1757 = metadata !{i32 786443, metadata !1750, i32 283, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1758 = metadata !{i32 786688, metadata !1757, metadata !"data", metadata !6, i32 285, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [data] [line 285]
!1759 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_variable_compile", metadata !"ngx_http_log_variable_compile", metadata !"", metadata !6, i32 391, metadata !1760, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1762, i32 392} ; [ DW_TAG_subprogram ] [line 391] [local] [def] [scope 392] [ngx_http_log_variable_compile]
!1760 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1761, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1761 = metadata !{metadata !501, metadata !11, metadata !635, metadata !498}
!1762 = metadata !{metadata !1763}
!1763 = metadata !{metadata !1764, metadata !1765, metadata !1766, metadata !1767}
!1764 = metadata !{i32 786689, metadata !1759, metadata !"cf", metadata !6, i32 16777607, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 391]
!1765 = metadata !{i32 786689, metadata !1759, metadata !"op", metadata !6, i32 33554823, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 391]
!1766 = metadata !{i32 786689, metadata !1759, metadata !"value", metadata !6, i32 50332039, metadata !498, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 391]
!1767 = metadata !{i32 786688, metadata !1768, metadata !"index", metadata !6, i32 393, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 393]
!1768 = metadata !{i32 786443, metadata !1759, i32 392, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1769 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_variable", metadata !"ngx_http_log_variable", metadata !"", metadata !6, i32 418, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_variable, null, null, metadata !1770, i32 419} ; [ DW_TAG_subprogram ] [line 418] [local] [def] [scope 419] [ngx_http_log_variable]
!1770 = metadata !{metadata !1771}
!1771 = metadata !{metadata !1772, metadata !1773, metadata !1774, metadata !1775}
!1772 = metadata !{i32 786689, metadata !1769, metadata !"r", metadata !6, i32 16777634, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 418]
!1773 = metadata !{i32 786689, metadata !1769, metadata !"buf", metadata !6, i32 33554850, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 418]
!1774 = metadata !{i32 786689, metadata !1769, metadata !"op", metadata !6, i32 50332066, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 418]
!1775 = metadata !{i32 786688, metadata !1776, metadata !"value", metadata !6, i32 420, metadata !1604, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 420]
!1776 = metadata !{i32 786443, metadata !1769, i32 419, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1777 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_escape", metadata !"ngx_http_log_escape", metadata !"", metadata !6, i32 434, metadata !1778, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*, i32)* @ngx_http_log_escape, null, null, metadata !1780, i32 435} ; [ DW_TAG_subprogram ] [line 434] [local] [def] [scope 435] [ngx_http_log_escape]
!1778 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1779, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1779 = metadata !{metadata !27, metadata !44, metadata !44, metadata !30}
!1780 = metadata !{metadata !1781}
!1781 = metadata !{metadata !1782, metadata !1783, metadata !1784, metadata !1785}
!1782 = metadata !{i32 786689, metadata !1777, metadata !"dst", metadata !6, i32 16777650, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 434]
!1783 = metadata !{i32 786689, metadata !1777, metadata !"src", metadata !6, i32 33554866, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 434]
!1784 = metadata !{i32 786689, metadata !1777, metadata !"size", metadata !6, i32 50332082, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 434]
!1785 = metadata !{i32 786688, metadata !1786, metadata !"n", metadata !6, i32 436, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 436]
!1786 = metadata !{i32 786443, metadata !1777, i32 435, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1787 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_variable_getlen", metadata !"ngx_http_log_variable_getlen", metadata !"", metadata !6, i32 405, metadata !643, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, i32)* @ngx_http_log_variable_getlen, null, null, metadata !1788, i32 406} ; [ DW_TAG_subprogram ] [line 405] [local] [def] [scope 406] [ngx_http_log_variable_getlen]
!1788 = metadata !{metadata !1789}
!1789 = metadata !{metadata !1790, metadata !1791, metadata !1792, metadata !1794}
!1790 = metadata !{i32 786689, metadata !1787, metadata !"r", metadata !6, i32 16777621, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 405]
!1791 = metadata !{i32 786689, metadata !1787, metadata !"data", metadata !6, i32 33554837, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 405]
!1792 = metadata !{i32 786688, metadata !1793, metadata !"len", metadata !6, i32 407, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 407]
!1793 = metadata !{i32 786443, metadata !1787, i32 406, i32 0, metadata !6, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1794 = metadata !{i32 786688, metadata !1793, metadata !"value", metadata !6, i32 408, metadata !1604, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 408]
!1795 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_request_length", metadata !"ngx_http_log_request_length", metadata !"", metadata !6, i32 386, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_request_length, null, null, metadata !1796, i32 387} ; [ DW_TAG_subprogram ] [line 386] [local] [def] [scope 387] [ngx_http_log_request_length]
!1796 = metadata !{metadata !1797}
!1797 = metadata !{metadata !1798, metadata !1799, metadata !1800}
!1798 = metadata !{i32 786689, metadata !1795, metadata !"r", metadata !6, i32 16777602, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 386]
!1799 = metadata !{i32 786689, metadata !1795, metadata !"buf", metadata !6, i32 33554818, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 386]
!1800 = metadata !{i32 786689, metadata !1795, metadata !"op", metadata !6, i32 50332034, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 386]
!1801 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_body_bytes_sent", metadata !"ngx_http_log_body_bytes_sent", metadata !"", metadata !6, i32 375, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_body_bytes_sent, null, null, metadata !1802, i32 376} ; [ DW_TAG_subprogram ] [line 375] [local] [def] [scope 376] [ngx_http_log_body_bytes_sent]
!1802 = metadata !{metadata !1803}
!1803 = metadata !{metadata !1804, metadata !1805, metadata !1806, metadata !1807}
!1804 = metadata !{i32 786689, metadata !1801, metadata !"r", metadata !6, i32 16777591, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 375]
!1805 = metadata !{i32 786689, metadata !1801, metadata !"buf", metadata !6, i32 33554807, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 375]
!1806 = metadata !{i32 786689, metadata !1801, metadata !"op", metadata !6, i32 50332023, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 375]
!1807 = metadata !{i32 786688, metadata !1808, metadata !"length", metadata !6, i32 377, metadata !69, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 377]
!1808 = metadata !{i32 786443, metadata !1801, i32 376, i32 0, metadata !6, i32 109} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1809 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_bytes_sent", metadata !"ngx_http_log_bytes_sent", metadata !"", metadata !6, i32 366, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_bytes_sent, null, null, metadata !1810, i32 367} ; [ DW_TAG_subprogram ] [line 366] [local] [def] [scope 367] [ngx_http_log_bytes_sent]
!1810 = metadata !{metadata !1811}
!1811 = metadata !{metadata !1812, metadata !1813, metadata !1814}
!1812 = metadata !{i32 786689, metadata !1809, metadata !"r", metadata !6, i32 16777582, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 366]
!1813 = metadata !{i32 786689, metadata !1809, metadata !"buf", metadata !6, i32 33554798, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 366]
!1814 = metadata !{i32 786689, metadata !1809, metadata !"op", metadata !6, i32 50332014, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 366]
!1815 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_status", metadata !"ngx_http_log_status", metadata !"", metadata !6, i32 348, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_status, null, null, metadata !1816, i32 349} ; [ DW_TAG_subprogram ] [line 348] [local] [def] [scope 349] [ngx_http_log_status]
!1816 = metadata !{metadata !1817}
!1817 = metadata !{metadata !1818, metadata !1819, metadata !1820, metadata !1821}
!1818 = metadata !{i32 786689, metadata !1815, metadata !"r", metadata !6, i32 16777564, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 348]
!1819 = metadata !{i32 786689, metadata !1815, metadata !"buf", metadata !6, i32 33554780, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 348]
!1820 = metadata !{i32 786689, metadata !1815, metadata !"op", metadata !6, i32 50331996, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 348]
!1821 = metadata !{i32 786688, metadata !1822, metadata !"status", metadata !6, i32 350, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 350]
!1822 = metadata !{i32 786443, metadata !1815, i32 349, i32 0, metadata !6, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1823 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_request_time", metadata !"ngx_http_log_request_time", metadata !"", metadata !6, i32 338, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_request_time, null, null, metadata !1824, i32 339} ; [ DW_TAG_subprogram ] [line 338] [local] [def] [scope 339] [ngx_http_log_request_time]
!1824 = metadata !{metadata !1825}
!1825 = metadata !{metadata !1826, metadata !1827, metadata !1828, metadata !1829, metadata !1839}
!1826 = metadata !{i32 786689, metadata !1823, metadata !"r", metadata !6, i32 16777554, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 338]
!1827 = metadata !{i32 786689, metadata !1823, metadata !"buf", metadata !6, i32 33554770, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 338]
!1828 = metadata !{i32 786689, metadata !1823, metadata !"op", metadata !6, i32 50331986, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 338]
!1829 = metadata !{i32 786688, metadata !1830, metadata !"tp", metadata !6, i32 340, metadata !1831, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 340]
!1830 = metadata !{i32 786443, metadata !1823, i32 339, i32 0, metadata !6, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1831 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1832} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_time_t]
!1832 = metadata !{i32 786454, null, metadata !"ngx_time_t", metadata !6, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !1833} ; [ DW_TAG_typedef ] [ngx_time_t] [line 20, size 0, align 0, offset 0] [from ]
!1833 = metadata !{i32 786451, null, metadata !"", metadata !1834, i32 16, i64 96, i64 32, i32 0, i32 0, null, metadata !1835, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 96, align 32, offset 0] [from ]
!1834 = metadata !{i32 786473, metadata !"src/core/ngx_times.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1835 = metadata !{metadata !1836, metadata !1837, metadata !1838}
!1836 = metadata !{i32 786445, metadata !1833, metadata !"sec", metadata !1834, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !491} ; [ DW_TAG_member ] [sec] [line 17, size 32, align 32, offset 0] [from time_t]
!1837 = metadata !{i32 786445, metadata !1833, metadata !"msec", metadata !1834, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [msec] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!1838 = metadata !{i32 786445, metadata !1833, metadata !"gmtoff", metadata !1834, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !501} ; [ DW_TAG_member ] [gmtoff] [line 19, size 32, align 32, offset 64] [from ngx_int_t]
!1839 = metadata !{i32 786688, metadata !1830, metadata !"ms", metadata !6, i32 341, metadata !1840, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 341]
!1840 = metadata !{i32 786454, null, metadata !"ngx_msec_int_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1841} ; [ DW_TAG_typedef ] [ngx_msec_int_t] [line 17, size 0, align 0, offset 0] [from ngx_rbtree_key_int_t]
!1841 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_int_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !501} ; [ DW_TAG_typedef ] [ngx_rbtree_key_int_t] [line 17, size 0, align 0, offset 0] [from ngx_int_t]
!1842 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_msec", metadata !"ngx_http_log_msec", metadata !"", metadata !6, i32 331, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_msec, null, null, metadata !1843, i32 332} ; [ DW_TAG_subprogram ] [line 331] [local] [def] [scope 332] [ngx_http_log_msec]
!1843 = metadata !{metadata !1844}
!1844 = metadata !{metadata !1845, metadata !1846, metadata !1847, metadata !1848}
!1845 = metadata !{i32 786689, metadata !1842, metadata !"r", metadata !6, i32 16777547, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 331]
!1846 = metadata !{i32 786689, metadata !1842, metadata !"buf", metadata !6, i32 33554763, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 331]
!1847 = metadata !{i32 786689, metadata !1842, metadata !"op", metadata !6, i32 50331979, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 331]
!1848 = metadata !{i32 786688, metadata !1849, metadata !"tp", metadata !6, i32 333, metadata !1831, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 333]
!1849 = metadata !{i32 786443, metadata !1842, i32 332, i32 0, metadata !6, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1850 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_iso8601", metadata !"ngx_http_log_iso8601", metadata !"", metadata !6, i32 326, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_iso8601, null, null, metadata !1851, i32 327} ; [ DW_TAG_subprogram ] [line 326] [local] [def] [scope 327] [ngx_http_log_iso8601]
!1851 = metadata !{metadata !1852}
!1852 = metadata !{metadata !1853, metadata !1854, metadata !1855}
!1853 = metadata !{i32 786689, metadata !1850, metadata !"r", metadata !6, i32 16777542, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 326]
!1854 = metadata !{i32 786689, metadata !1850, metadata !"buf", metadata !6, i32 33554758, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 326]
!1855 = metadata !{i32 786689, metadata !1850, metadata !"op", metadata !6, i32 50331974, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 326]
!1856 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_time", metadata !"ngx_http_log_time", metadata !"", metadata !6, i32 321, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_time, null, null, metadata !1857, i32 322} ; [ DW_TAG_subprogram ] [line 321] [local] [def] [scope 322] [ngx_http_log_time]
!1857 = metadata !{metadata !1858}
!1858 = metadata !{metadata !1859, metadata !1860, metadata !1861}
!1859 = metadata !{i32 786689, metadata !1856, metadata !"r", metadata !6, i32 16777537, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 321]
!1860 = metadata !{i32 786689, metadata !1856, metadata !"buf", metadata !6, i32 33554753, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 321]
!1861 = metadata !{i32 786689, metadata !1856, metadata !"op", metadata !6, i32 50331969, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 321]
!1862 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_pipe", metadata !"ngx_http_log_pipe", metadata !"", metadata !6, i32 310, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_pipe, null, null, metadata !1863, i32 311} ; [ DW_TAG_subprogram ] [line 310] [local] [def] [scope 311] [ngx_http_log_pipe]
!1863 = metadata !{metadata !1864}
!1864 = metadata !{metadata !1865, metadata !1866, metadata !1867}
!1865 = metadata !{i32 786689, metadata !1862, metadata !"r", metadata !6, i32 16777526, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 310]
!1866 = metadata !{i32 786689, metadata !1862, metadata !"buf", metadata !6, i32 33554742, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 310]
!1867 = metadata !{i32 786689, metadata !1862, metadata !"op", metadata !6, i32 50331958, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 310]
!1868 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_connection_requests", metadata !"ngx_http_log_connection_requests", metadata !"", metadata !6, i32 305, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_connection_requests, null, null, metadata !1869, i32 306} ; [ DW_TAG_subprogram ] [line 305] [local] [def] [scope 306] [ngx_http_log_connection_requests]
!1869 = metadata !{metadata !1870}
!1870 = metadata !{metadata !1871, metadata !1872, metadata !1873}
!1871 = metadata !{i32 786689, metadata !1868, metadata !"r", metadata !6, i32 16777521, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 305]
!1872 = metadata !{i32 786689, metadata !1868, metadata !"buf", metadata !6, i32 33554737, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 305]
!1873 = metadata !{i32 786689, metadata !1868, metadata !"op", metadata !6, i32 50331953, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 305]
!1874 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_connection", metadata !"ngx_http_log_connection", metadata !"", metadata !6, i32 300, metadata !1733, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_http_request_s*, i8*, %struct.ngx_http_log_op_s*)* @ngx_http_log_connection, null, null, metadata !1875, i32 301} ; [ DW_TAG_subprogram ] [line 300] [local] [def] [scope 301] [ngx_http_log_connection]
!1875 = metadata !{metadata !1876}
!1876 = metadata !{metadata !1877, metadata !1878, metadata !1879}
!1877 = metadata !{i32 786689, metadata !1874, metadata !"r", metadata !6, i32 16777516, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 300]
!1878 = metadata !{i32 786689, metadata !1874, metadata !"buf", metadata !6, i32 33554732, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 300]
!1879 = metadata !{i32 786689, metadata !1874, metadata !"op", metadata !6, i32 50331948, metadata !635, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [op] [line 300]
!1880 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_merge_loc_conf", metadata !"ngx_http_log_merge_loc_conf", metadata !"", metadata !6, i32 514, metadata !1881, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_log_merge_loc_conf, null, null, metadata !1883, i32 515} ; [ DW_TAG_subprogram ] [line 514] [local] [def] [scope 515] [ngx_http_log_merge_loc_conf]
!1881 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1882, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1882 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!1883 = metadata !{metadata !1884}
!1884 = metadata !{metadata !1885, metadata !1886, metadata !1887, metadata !1888, metadata !1890, metadata !1891, metadata !1892, metadata !1893}
!1885 = metadata !{i32 786689, metadata !1880, metadata !"cf", metadata !6, i32 16777730, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 514]
!1886 = metadata !{i32 786689, metadata !1880, metadata !"parent", metadata !6, i32 33554946, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 514]
!1887 = metadata !{i32 786689, metadata !1880, metadata !"child", metadata !6, i32 50332162, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 514]
!1888 = metadata !{i32 786688, metadata !1889, metadata !"prev", metadata !6, i32 516, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 516]
!1889 = metadata !{i32 786443, metadata !1880, i32 515, i32 0, metadata !6, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1890 = metadata !{i32 786688, metadata !1889, metadata !"conf", metadata !6, i32 517, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 517]
!1891 = metadata !{i32 786688, metadata !1889, metadata !"log", metadata !6, i32 518, metadata !530, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log] [line 518]
!1892 = metadata !{i32 786688, metadata !1889, metadata !"fmt", metadata !6, i32 519, metadata !545, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 519]
!1893 = metadata !{i32 786688, metadata !1889, metadata !"lmcf", metadata !6, i32 520, metadata !554, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lmcf] [line 520]
!1894 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_create_loc_conf", metadata !"ngx_http_log_create_loc_conf", metadata !"", metadata !6, i32 503, metadata !1895, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_log_create_loc_conf, null, null, metadata !1897, i32 504} ; [ DW_TAG_subprogram ] [line 503] [local] [def] [scope 504] [ngx_http_log_create_loc_conf]
!1895 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1896, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1896 = metadata !{metadata !24, metadata !11}
!1897 = metadata !{metadata !1898}
!1898 = metadata !{metadata !1899, metadata !1900}
!1899 = metadata !{i32 786689, metadata !1894, metadata !"cf", metadata !6, i32 16777719, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 503]
!1900 = metadata !{i32 786688, metadata !1901, metadata !"conf", metadata !6, i32 505, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 505]
!1901 = metadata !{i32 786443, metadata !1894, i32 504, i32 0, metadata !6, i32 134} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1902 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_create_main_conf", metadata !"ngx_http_log_create_main_conf", metadata !"", metadata !6, i32 478, metadata !1895, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_log_create_main_conf, null, null, metadata !1903, i32 479} ; [ DW_TAG_subprogram ] [line 478] [local] [def] [scope 479] [ngx_http_log_create_main_conf]
!1903 = metadata !{metadata !1904}
!1904 = metadata !{metadata !1905, metadata !1906, metadata !1908}
!1905 = metadata !{i32 786689, metadata !1902, metadata !"cf", metadata !6, i32 16777694, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 478]
!1906 = metadata !{i32 786688, metadata !1907, metadata !"conf", metadata !6, i32 480, metadata !554, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 480]
!1907 = metadata !{i32 786443, metadata !1902, i32 479, i32 0, metadata !6, i32 136} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1908 = metadata !{i32 786688, metadata !1907, metadata !"fmt", metadata !6, i32 481, metadata !545, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 481]
!1909 = metadata !{i32 786478, i32 0, metadata !21, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !21, i32 32, metadata !1910, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1912, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!1910 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1911, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1911 = metadata !{metadata !501, metadata !18, metadata !34, metadata !26, metadata !30}
!1912 = metadata !{metadata !1913}
!1913 = metadata !{metadata !1914, metadata !1915, metadata !1916, metadata !1917}
!1914 = metadata !{i32 786689, metadata !1909, metadata !"array", metadata !21, i32 16777248, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!1915 = metadata !{i32 786689, metadata !1909, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!1916 = metadata !{i32 786689, metadata !1909, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1917 = metadata !{i32 786689, metadata !1909, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1918 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_init", metadata !"ngx_http_log_init", metadata !"", metadata !6, i32 896, metadata !1919, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_log_init, null, null, metadata !1921, i32 897} ; [ DW_TAG_subprogram ] [line 896] [local] [def] [scope 897] [ngx_http_log_init]
!1919 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1920, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1920 = metadata !{metadata !501, metadata !11}
!1921 = metadata !{metadata !1922}
!1922 = metadata !{metadata !1923, metadata !1924, metadata !1926, metadata !1927, metadata !1929, metadata !1930, metadata !1931}
!1923 = metadata !{i32 786689, metadata !1918, metadata !"cf", metadata !6, i32 16778112, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 896]
!1924 = metadata !{i32 786688, metadata !1925, metadata !"value", metadata !6, i32 898, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 898]
!1925 = metadata !{i32 786443, metadata !1918, i32 897, i32 0, metadata !6, i32 143} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1926 = metadata !{i32 786688, metadata !1925, metadata !"a", metadata !6, i32 899, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 899]
!1927 = metadata !{i32 786688, metadata !1925, metadata !"h", metadata !6, i32 900, metadata !1928, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 900]
!1928 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1514} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_handler_pt]
!1929 = metadata !{i32 786688, metadata !1925, metadata !"fmt", metadata !6, i32 901, metadata !545, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fmt] [line 901]
!1930 = metadata !{i32 786688, metadata !1925, metadata !"lmcf", metadata !6, i32 902, metadata !554, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lmcf] [line 902]
!1931 = metadata !{i32 786688, metadata !1925, metadata !"cmcf", metadata !6, i32 903, metadata !1932, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 903]
!1932 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1933} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_main_conf_t]
!1933 = metadata !{i32 786454, null, metadata !"ngx_http_core_main_conf_t", metadata !6, i32 175, i64 0, i64 0, i64 0, i32 0, metadata !1934} ; [ DW_TAG_typedef ] [ngx_http_core_main_conf_t] [line 175, size 0, align 0, offset 0] [from ]
!1934 = metadata !{i32 786451, null, metadata !"", metadata !1411, i32 150, i64 2560, i64 32, i32 0, i32 0, null, metadata !1935, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 150, size 2560, align 32, offset 0] [from ]
!1935 = metadata !{metadata !1936, metadata !1937, metadata !1955, metadata !1956, metadata !1957, metadata !1958, metadata !1959, metadata !1960, metadata !1961, metadata !1962, metadata !1963, metadata !1977, metadata !1978, metadata !1979}
!1936 = metadata !{i32 786445, metadata !1934, metadata !"servers", metadata !1411, i32 151, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [servers] [line 151, size 160, align 32, offset 0] [from ngx_array_t]
!1937 = metadata !{i32 786445, metadata !1934, metadata !"phase_engine", metadata !1411, i32 153, i64 96, i64 32, i64 160, i32 0, metadata !1938} ; [ DW_TAG_member ] [phase_engine] [line 153, size 96, align 32, offset 160] [from ngx_http_phase_engine_t]
!1938 = metadata !{i32 786454, null, metadata !"ngx_http_phase_engine_t", metadata !1411, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !1939} ; [ DW_TAG_typedef ] [ngx_http_phase_engine_t] [line 142, size 0, align 0, offset 0] [from ]
!1939 = metadata !{i32 786451, null, metadata !"", metadata !1411, i32 138, i64 96, i64 32, i32 0, i32 0, null, metadata !1940, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 138, size 96, align 32, offset 0] [from ]
!1940 = metadata !{metadata !1941, metadata !1953, metadata !1954}
!1941 = metadata !{i32 786445, metadata !1939, metadata !"handlers", metadata !1411, i32 139, i64 32, i64 32, i64 0, i32 0, metadata !1942} ; [ DW_TAG_member ] [handlers] [line 139, size 32, align 32, offset 0] [from ]
!1942 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1943} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_phase_handler_t]
!1943 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_t", metadata !1411, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !1944} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_t] [line 126, size 0, align 0, offset 0] [from ngx_http_phase_handler_s]
!1944 = metadata !{i32 786451, null, metadata !"ngx_http_phase_handler_s", metadata !1411, i32 131, i64 96, i64 32, i32 0, i32 0, null, metadata !1945, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_phase_handler_s] [line 131, size 96, align 32, offset 0] [from ]
!1945 = metadata !{metadata !1946, metadata !1951, metadata !1952}
!1946 = metadata !{i32 786445, metadata !1944, metadata !"checker", metadata !1411, i32 132, i64 32, i64 32, i64 0, i32 0, metadata !1947} ; [ DW_TAG_member ] [checker] [line 132, size 32, align 32, offset 0] [from ngx_http_phase_handler_pt]
!1947 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_pt", metadata !1411, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !1948} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_pt] [line 128, size 0, align 0, offset 0] [from ]
!1948 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1949} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1949 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1950, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1950 = metadata !{metadata !501, metadata !645, metadata !1942}
!1951 = metadata !{i32 786445, metadata !1944, metadata !"handler", metadata !1411, i32 133, i64 32, i64 32, i64 32, i32 0, metadata !1514} ; [ DW_TAG_member ] [handler] [line 133, size 32, align 32, offset 32] [from ngx_http_handler_pt]
!1952 = metadata !{i32 786445, metadata !1944, metadata !"next", metadata !1411, i32 134, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [next] [line 134, size 32, align 32, offset 64] [from ngx_uint_t]
!1953 = metadata !{i32 786445, metadata !1939, metadata !"server_rewrite_index", metadata !1411, i32 140, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [server_rewrite_index] [line 140, size 32, align 32, offset 32] [from ngx_uint_t]
!1954 = metadata !{i32 786445, metadata !1939, metadata !"location_rewrite_index", metadata !1411, i32 141, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [location_rewrite_index] [line 141, size 32, align 32, offset 64] [from ngx_uint_t]
!1955 = metadata !{i32 786445, metadata !1934, metadata !"headers_in_hash", metadata !1411, i32 155, i64 64, i64 32, i64 256, i32 0, metadata !1059} ; [ DW_TAG_member ] [headers_in_hash] [line 155, size 64, align 32, offset 256] [from ngx_hash_t]
!1956 = metadata !{i32 786445, metadata !1934, metadata !"variables_hash", metadata !1411, i32 157, i64 64, i64 32, i64 320, i32 0, metadata !1059} ; [ DW_TAG_member ] [variables_hash] [line 157, size 64, align 32, offset 320] [from ngx_hash_t]
!1957 = metadata !{i32 786445, metadata !1934, metadata !"variables", metadata !1411, i32 159, i64 160, i64 32, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [variables] [line 159, size 160, align 32, offset 384] [from ngx_array_t]
!1958 = metadata !{i32 786445, metadata !1934, metadata !"ncaptures", metadata !1411, i32 160, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 160, size 32, align 32, offset 544] [from ngx_uint_t]
!1959 = metadata !{i32 786445, metadata !1934, metadata !"server_names_hash_max_size", metadata !1411, i32 162, i64 32, i64 32, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_max_size] [line 162, size 32, align 32, offset 576] [from ngx_uint_t]
!1960 = metadata !{i32 786445, metadata !1934, metadata !"server_names_hash_bucket_size", metadata !1411, i32 163, i64 32, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_bucket_size] [line 163, size 32, align 32, offset 608] [from ngx_uint_t]
!1961 = metadata !{i32 786445, metadata !1934, metadata !"variables_hash_max_size", metadata !1411, i32 165, i64 32, i64 32, i64 640, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_max_size] [line 165, size 32, align 32, offset 640] [from ngx_uint_t]
!1962 = metadata !{i32 786445, metadata !1934, metadata !"variables_hash_bucket_size", metadata !1411, i32 166, i64 32, i64 32, i64 672, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_bucket_size] [line 166, size 32, align 32, offset 672] [from ngx_uint_t]
!1963 = metadata !{i32 786445, metadata !1934, metadata !"variables_keys", metadata !1411, i32 168, i64 32, i64 32, i64 704, i32 0, metadata !1964} ; [ DW_TAG_member ] [variables_keys] [line 168, size 32, align 32, offset 704] [from ]
!1964 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1965} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!1965 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !1411, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !1966} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!1966 = metadata !{i32 786451, null, metadata !"", metadata !1061, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !1967, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!1967 = metadata !{metadata !1968, metadata !1969, metadata !1970, metadata !1971, metadata !1972, metadata !1973, metadata !1974, metadata !1975, metadata !1976}
!1968 = metadata !{i32 786445, metadata !1966, metadata !"hsize", metadata !1061, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!1969 = metadata !{i32 786445, metadata !1966, metadata !"pool", metadata !1061, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!1970 = metadata !{i32 786445, metadata !1966, metadata !"temp_pool", metadata !1061, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!1971 = metadata !{i32 786445, metadata !1966, metadata !"keys", metadata !1061, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!1972 = metadata !{i32 786445, metadata !1966, metadata !"keys_hash", metadata !1061, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!1973 = metadata !{i32 786445, metadata !1966, metadata !"dns_wc_head", metadata !1061, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!1974 = metadata !{i32 786445, metadata !1966, metadata !"dns_wc_head_hash", metadata !1061, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!1975 = metadata !{i32 786445, metadata !1966, metadata !"dns_wc_tail", metadata !1061, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!1976 = metadata !{i32 786445, metadata !1966, metadata !"dns_wc_tail_hash", metadata !1061, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!1977 = metadata !{i32 786445, metadata !1934, metadata !"ports", metadata !1411, i32 170, i64 32, i64 32, i64 736, i32 0, metadata !18} ; [ DW_TAG_member ] [ports] [line 170, size 32, align 32, offset 736] [from ]
!1978 = metadata !{i32 786445, metadata !1934, metadata !"try_files", metadata !1411, i32 172, i64 32, i64 32, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [try_files] [line 172, size 32, align 32, offset 768] [from ngx_uint_t]
!1979 = metadata !{i32 786445, metadata !1934, metadata !"phases", metadata !1411, i32 174, i64 1760, i64 32, i64 800, i32 0, metadata !1980} ; [ DW_TAG_member ] [phases] [line 174, size 1760, align 32, offset 800] [from ]
!1980 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1760, i64 32, i32 0, i32 0, metadata !1981, metadata !1985, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1760, align 32, offset 0] [from ngx_http_phase_t]
!1981 = metadata !{i32 786454, null, metadata !"ngx_http_phase_t", metadata !1411, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !1982} ; [ DW_TAG_typedef ] [ngx_http_phase_t] [line 147, size 0, align 0, offset 0] [from ]
!1982 = metadata !{i32 786451, null, metadata !"", metadata !1411, i32 145, i64 160, i64 32, i32 0, i32 0, null, metadata !1983, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 145, size 160, align 32, offset 0] [from ]
!1983 = metadata !{metadata !1984}
!1984 = metadata !{i32 786445, metadata !1982, metadata !"handlers", metadata !1411, i32 146, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [handlers] [line 146, size 160, align 32, offset 0] [from ngx_array_t]
!1985 = metadata !{metadata !1986}
!1986 = metadata !{i32 786465, i64 0, i64 10}     ; [ DW_TAG_subrange_type ] [0, 10]
!1987 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_handler", metadata !"ngx_http_log_handler", metadata !"", metadata !6, i32 102, metadata !1221, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_log_handler, null, null, metadata !1988, i32 103} ; [ DW_TAG_subprogram ] [line 102] [local] [def] [scope 103] [ngx_http_log_handler]
!1988 = metadata !{metadata !1989}
!1989 = metadata !{metadata !1990, metadata !1991, metadata !1993, metadata !1994, metadata !1995, metadata !1996, metadata !1997, metadata !1998, metadata !1999, metadata !2000}
!1990 = metadata !{i32 786689, metadata !1987, metadata !"r", metadata !6, i32 16777318, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 102]
!1991 = metadata !{i32 786688, metadata !1992, metadata !"line", metadata !6, i32 104, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 104]
!1992 = metadata !{i32 786443, metadata !1987, i32 103, i32 0, metadata !6, i32 149} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!1993 = metadata !{i32 786688, metadata !1992, metadata !"p", metadata !6, i32 105, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 105]
!1994 = metadata !{i32 786688, metadata !1992, metadata !"len", metadata !6, i32 106, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 106]
!1995 = metadata !{i32 786688, metadata !1992, metadata !"i", metadata !6, i32 107, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 107]
!1996 = metadata !{i32 786688, metadata !1992, metadata !"l", metadata !6, i32 108, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 108]
!1997 = metadata !{i32 786688, metadata !1992, metadata !"log", metadata !6, i32 109, metadata !530, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log] [line 109]
!1998 = metadata !{i32 786688, metadata !1992, metadata !"file", metadata !6, i32 110, metadata !144, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [file] [line 110]
!1999 = metadata !{i32 786688, metadata !1992, metadata !"op", metadata !6, i32 111, metadata !635, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [op] [line 111]
!2000 = metadata !{i32 786688, metadata !1992, metadata !"lcf", metadata !6, i32 112, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcf] [line 112]
!2001 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_write", metadata !"ngx_http_log_write", metadata !"", metadata !6, i32 172, metadata !2002, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_request_s*, %struct.ngx_http_log_t*, i8*, i32)* @ngx_http_log_write, null, null, metadata !2004, i32 173} ; [ DW_TAG_subprogram ] [line 172] [local] [def] [scope 173] [ngx_http_log_write]
!2002 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2003, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2003 = metadata !{null, metadata !645, metadata !530, metadata !44, metadata !30}
!2004 = metadata !{metadata !2005}
!2005 = metadata !{metadata !2006, metadata !2007, metadata !2008, metadata !2009, metadata !2010, metadata !2012, metadata !2013, metadata !2014}
!2006 = metadata !{i32 786689, metadata !2001, metadata !"r", metadata !6, i32 16777388, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 172]
!2007 = metadata !{i32 786689, metadata !2001, metadata !"log", metadata !6, i32 33554604, metadata !530, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [log] [line 172]
!2008 = metadata !{i32 786689, metadata !2001, metadata !"buf", metadata !6, i32 50331820, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 172]
!2009 = metadata !{i32 786689, metadata !2001, metadata !"len", metadata !6, i32 67109036, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 172]
!2010 = metadata !{i32 786688, metadata !2011, metadata !"name", metadata !6, i32 174, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 174]
!2011 = metadata !{i32 786443, metadata !2001, i32 173, i32 0, metadata !6, i32 166} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2012 = metadata !{i32 786688, metadata !2011, metadata !"now", metadata !6, i32 175, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 175]
!2013 = metadata !{i32 786688, metadata !2011, metadata !"n", metadata !6, i32 176, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 176]
!2014 = metadata !{i32 786688, metadata !2011, metadata !"err", metadata !6, i32 177, metadata !2015, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [err] [line 177]
!2015 = metadata !{i32 786454, null, metadata !"ngx_err_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [ngx_err_t] [line 16, size 0, align 0, offset 0] [from int]
!2016 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_log_script_write", metadata !"ngx_http_log_script_write", metadata !"", metadata !6, i32 209, metadata !2017, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !2020, i32 210} ; [ DW_TAG_subprogram ] [line 209] [local] [def] [scope 210] [ngx_http_log_script_write]
!2017 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2018, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2018 = metadata !{metadata !286, metadata !645, metadata !536, metadata !2019, metadata !44, metadata !30}
!2019 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2020 = metadata !{metadata !2021}
!2021 = metadata !{metadata !2022, metadata !2023, metadata !2024, metadata !2025, metadata !2026, metadata !2027, metadata !2029, metadata !2030, metadata !2031, metadata !2032, metadata !2059, metadata !2060}
!2022 = metadata !{i32 786689, metadata !2016, metadata !"r", metadata !6, i32 16777425, metadata !645, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 209]
!2023 = metadata !{i32 786689, metadata !2016, metadata !"script", metadata !6, i32 33554641, metadata !536, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [script] [line 209]
!2024 = metadata !{i32 786689, metadata !2016, metadata !"name", metadata !6, i32 50331857, metadata !2019, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 209]
!2025 = metadata !{i32 786689, metadata !2016, metadata !"buf", metadata !6, i32 67109073, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 209]
!2026 = metadata !{i32 786689, metadata !2016, metadata !"len", metadata !6, i32 83886289, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 209]
!2027 = metadata !{i32 786688, metadata !2028, metadata !"root", metadata !6, i32 211, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [root] [line 211]
!2028 = metadata !{i32 786443, metadata !2016, i32 210, i32 0, metadata !6, i32 174} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2029 = metadata !{i32 786688, metadata !2028, metadata !"n", metadata !6, i32 212, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 212]
!2030 = metadata !{i32 786688, metadata !2028, metadata !"log", metadata !6, i32 213, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [log] [line 213]
!2031 = metadata !{i32 786688, metadata !2028, metadata !"path", metadata !6, i32 214, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 214]
!2032 = metadata !{i32 786688, metadata !2028, metadata !"of", metadata !6, i32 215, metadata !2033, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [of] [line 215]
!2033 = metadata !{i32 786454, null, metadata !"ngx_open_file_info_t", metadata !6, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !2034} ; [ DW_TAG_typedef ] [ngx_open_file_info_t] [line 51, size 0, align 0, offset 0] [from ]
!2034 = metadata !{i32 786451, null, metadata !"", metadata !473, i32 19, i64 544, i64 32, i32 0, i32 0, null, metadata !2035, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 19, size 544, align 32, offset 0] [from ]
!2035 = metadata !{metadata !2036, metadata !2037, metadata !2038, metadata !2039, metadata !2040, metadata !2041, metadata !2042, metadata !2043, metadata !2044, metadata !2045, metadata !2046, metadata !2047, metadata !2048, metadata !2049, metadata !2050, metadata !2051, metadata !2052, metadata !2053, metadata !2054, metadata !2055, metadata !2056, metadata !2057, metadata !2058}
!2036 = metadata !{i32 786445, metadata !2034, metadata !"fd", metadata !473, i32 20, i64 32, i64 32, i64 0, i32 0, metadata !85} ; [ DW_TAG_member ] [fd] [line 20, size 32, align 32, offset 0] [from ngx_fd_t]
!2037 = metadata !{i32 786445, metadata !2034, metadata !"uniq", metadata !473, i32 21, i64 64, i64 32, i64 32, i32 0, metadata !679} ; [ DW_TAG_member ] [uniq] [line 21, size 64, align 32, offset 32] [from ngx_file_uniq_t]
!2038 = metadata !{i32 786445, metadata !2034, metadata !"mtime", metadata !473, i32 22, i64 32, i64 32, i64 96, i32 0, metadata !491} ; [ DW_TAG_member ] [mtime] [line 22, size 32, align 32, offset 96] [from time_t]
!2039 = metadata !{i32 786445, metadata !2034, metadata !"size", metadata !473, i32 23, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 23, size 64, align 32, offset 128] [from off_t]
!2040 = metadata !{i32 786445, metadata !2034, metadata !"fs_size", metadata !473, i32 24, i64 64, i64 32, i64 192, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 24, size 64, align 32, offset 192] [from off_t]
!2041 = metadata !{i32 786445, metadata !2034, metadata !"directio", metadata !473, i32 25, i64 64, i64 32, i64 256, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 25, size 64, align 32, offset 256] [from off_t]
!2042 = metadata !{i32 786445, metadata !2034, metadata !"read_ahead", metadata !473, i32 26, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 26, size 32, align 32, offset 320] [from size_t]
!2043 = metadata !{i32 786445, metadata !2034, metadata !"err", metadata !473, i32 28, i64 32, i64 32, i64 352, i32 0, metadata !2015} ; [ DW_TAG_member ] [err] [line 28, size 32, align 32, offset 352] [from ngx_err_t]
!2044 = metadata !{i32 786445, metadata !2034, metadata !"failed", metadata !473, i32 29, i64 32, i64 32, i64 384, i32 0, metadata !9} ; [ DW_TAG_member ] [failed] [line 29, size 32, align 32, offset 384] [from ]
!2045 = metadata !{i32 786445, metadata !2034, metadata !"valid", metadata !473, i32 31, i64 32, i64 32, i64 416, i32 0, metadata !491} ; [ DW_TAG_member ] [valid] [line 31, size 32, align 32, offset 416] [from time_t]
!2046 = metadata !{i32 786445, metadata !2034, metadata !"min_uses", metadata !473, i32 33, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 33, size 32, align 32, offset 448] [from ngx_uint_t]
!2047 = metadata !{i32 786445, metadata !2034, metadata !"disable_symlinks_from", metadata !473, i32 36, i64 32, i64 32, i64 480, i32 0, metadata !30} ; [ DW_TAG_member ] [disable_symlinks_from] [line 36, size 32, align 32, offset 480] [from size_t]
!2048 = metadata !{i32 786445, metadata !2034, metadata !"disable_symlinks", metadata !473, i32 37, i64 2, i64 32, i64 512, i32 0, metadata !28} ; [ DW_TAG_member ] [disable_symlinks] [line 37, size 2, align 32, offset 512] [from unsigned int]
!2049 = metadata !{i32 786445, metadata !2034, metadata !"test_dir", metadata !473, i32 40, i64 1, i64 32, i64 514, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 40, size 1, align 32, offset 514] [from unsigned int]
!2050 = metadata !{i32 786445, metadata !2034, metadata !"test_only", metadata !473, i32 41, i64 1, i64 32, i64 515, i32 0, metadata !28} ; [ DW_TAG_member ] [test_only] [line 41, size 1, align 32, offset 515] [from unsigned int]
!2051 = metadata !{i32 786445, metadata !2034, metadata !"log", metadata !473, i32 42, i64 1, i64 32, i64 516, i32 0, metadata !28} ; [ DW_TAG_member ] [log] [line 42, size 1, align 32, offset 516] [from unsigned int]
!2052 = metadata !{i32 786445, metadata !2034, metadata !"errors", metadata !473, i32 43, i64 1, i64 32, i64 517, i32 0, metadata !28} ; [ DW_TAG_member ] [errors] [line 43, size 1, align 32, offset 517] [from unsigned int]
!2053 = metadata !{i32 786445, metadata !2034, metadata !"events", metadata !473, i32 44, i64 1, i64 32, i64 518, i32 0, metadata !28} ; [ DW_TAG_member ] [events] [line 44, size 1, align 32, offset 518] [from unsigned int]
!2054 = metadata !{i32 786445, metadata !2034, metadata !"is_dir", metadata !473, i32 46, i64 1, i64 32, i64 519, i32 0, metadata !28} ; [ DW_TAG_member ] [is_dir] [line 46, size 1, align 32, offset 519] [from unsigned int]
!2055 = metadata !{i32 786445, metadata !2034, metadata !"is_file", metadata !473, i32 47, i64 1, i64 32, i64 520, i32 0, metadata !28} ; [ DW_TAG_member ] [is_file] [line 47, size 1, align 32, offset 520] [from unsigned int]
!2056 = metadata !{i32 786445, metadata !2034, metadata !"is_link", metadata !473, i32 48, i64 1, i64 32, i64 521, i32 0, metadata !28} ; [ DW_TAG_member ] [is_link] [line 48, size 1, align 32, offset 521] [from unsigned int]
!2057 = metadata !{i32 786445, metadata !2034, metadata !"is_exec", metadata !473, i32 49, i64 1, i64 32, i64 522, i32 0, metadata !28} ; [ DW_TAG_member ] [is_exec] [line 49, size 1, align 32, offset 522] [from unsigned int]
!2058 = metadata !{i32 786445, metadata !2034, metadata !"is_directio", metadata !473, i32 50, i64 1, i64 32, i64 523, i32 0, metadata !28} ; [ DW_TAG_member ] [is_directio] [line 50, size 1, align 32, offset 523] [from unsigned int]
!2059 = metadata !{i32 786688, metadata !2028, metadata !"llcf", metadata !6, i32 216, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [llcf] [line 216]
!2060 = metadata !{i32 786688, metadata !2028, metadata !"clcf", metadata !6, i32 217, metadata !1483, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 217]
!2061 = metadata !{i32 786478, i32 0, metadata !2062, metadata !"ngx_write_fd", metadata !"ngx_write_fd", metadata !"", metadata !2062, i32 140, metadata !2063, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !2065, i32 141} ; [ DW_TAG_subprogram ] [line 140] [local] [def] [scope 141] [ngx_write_fd]
!2062 = metadata !{i32 786473, metadata !"src/os/unix/ngx_files.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!2063 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2064, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2064 = metadata !{metadata !286, metadata !85, metadata !24, metadata !30}
!2065 = metadata !{metadata !2066}
!2066 = metadata !{metadata !2067, metadata !2068, metadata !2069}
!2067 = metadata !{i32 786689, metadata !2061, metadata !"fd", metadata !2062, i32 16777356, metadata !85, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!2068 = metadata !{i32 786689, metadata !2061, metadata !"buf", metadata !2062, i32 33554572, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [buf] [line 140]
!2069 = metadata !{i32 786689, metadata !2061, metadata !"n", metadata !2062, i32 50331788, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 140]
!2070 = metadata !{metadata !2071}
!2071 = metadata !{metadata !2072, metadata !2110, metadata !2114, metadata !2118, metadata !2122, metadata !2126, metadata !2144, metadata !2145}
!2072 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_log_module", metadata !"ngx_http_log_module", metadata !"", metadata !6, i32 87, metadata !2073, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_log_module} ; [ DW_TAG_variable ] [ngx_http_log_module] [line 87] [def]
!2073 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !2074} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!2074 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !2075, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!2075 = metadata !{metadata !2076, metadata !2077, metadata !2078, metadata !2079, metadata !2080, metadata !2081, metadata !2082, metadata !2083, metadata !2084, metadata !2085, metadata !2086, metadata !2090, metadata !2094, metadata !2095, metadata !2096, metadata !2100, metadata !2101, metadata !2102, metadata !2103, metadata !2104, metadata !2105, metadata !2106, metadata !2107, metadata !2108, metadata !2109}
!2076 = metadata !{i32 786445, metadata !2074, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!2077 = metadata !{i32 786445, metadata !2074, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!2078 = metadata !{i32 786445, metadata !2074, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!2079 = metadata !{i32 786445, metadata !2074, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!2080 = metadata !{i32 786445, metadata !2074, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!2081 = metadata !{i32 786445, metadata !2074, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!2082 = metadata !{i32 786445, metadata !2074, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!2083 = metadata !{i32 786445, metadata !2074, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!2084 = metadata !{i32 786445, metadata !2074, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!2085 = metadata !{i32 786445, metadata !2074, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!2086 = metadata !{i32 786445, metadata !2074, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !2087} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!2087 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2088} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2088 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2089, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2089 = metadata !{metadata !501, metadata !137}
!2090 = metadata !{i32 786445, metadata !2074, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !2091} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!2091 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2092} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2092 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2093, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2093 = metadata !{metadata !501, metadata !203}
!2094 = metadata !{i32 786445, metadata !2074, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !2091} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!2095 = metadata !{i32 786445, metadata !2074, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !2091} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!2096 = metadata !{i32 786445, metadata !2074, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !2097} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!2097 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2098} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2098 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2099, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2099 = metadata !{null, metadata !203}
!2100 = metadata !{i32 786445, metadata !2074, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !2097} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!2101 = metadata !{i32 786445, metadata !2074, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !2097} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!2102 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!2103 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!2104 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!2105 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!2106 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!2107 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!2108 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!2109 = metadata !{i32 786445, metadata !2074, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!2110 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_log_commands", metadata !"ngx_http_log_commands", metadata !"", metadata !6, i32 77, metadata !2111, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_log_commands} ; [ DW_TAG_variable ] [ngx_http_log_commands] [line 77] [local] [def]
!2111 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !448, metadata !2112, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 896, align 32, offset 0] [from ngx_command_t]
!2112 = metadata !{metadata !2113}
!2113 = metadata !{i32 786465, i64 0, i64 3}      ; [ DW_TAG_subrange_type ] [0, 3]
!2114 = metadata !{i32 786484, i32 0, metadata !1777, metadata !"hex", metadata !"hex", metadata !"", metadata !6, i32 437, metadata !2115, i32 1, i32 1, [17 x i8]* @ngx_http_log_escape.hex} ; [ DW_TAG_variable ] [hex] [line 437] [local] [def]
!2115 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 136, i64 8, i32 0, i32 0, metadata !45, metadata !2116, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 136, align 8, offset 0] [from u_char]
!2116 = metadata !{metadata !2117}
!2117 = metadata !{i32 786465, i64 0, i64 16}     ; [ DW_TAG_subrange_type ] [0, 16]
!2118 = metadata !{i32 786484, i32 0, metadata !1777, metadata !"escape", metadata !"escape", metadata !"", metadata !6, i32 438, metadata !2119, i32 1, i32 1, [8 x i32]* @ngx_http_log_escape.escape} ; [ DW_TAG_variable ] [escape] [line 438] [local] [def]
!2119 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 32, i32 0, i32 0, metadata !651, metadata !2120, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 32, offset 0] [from uint32_t]
!2120 = metadata !{metadata !2121}
!2121 = metadata !{i32 786465, i64 0, i64 7}      ; [ DW_TAG_subrange_type ] [0, 7]
!2122 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_log_vars", metadata !"ngx_http_log_vars", metadata !"", metadata !6, i32 100, metadata !2123, i32 1, i32 1, [13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars} ; [ DW_TAG_variable ] [ngx_http_log_vars] [line 100] [local] [def]
!2123 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1664, i64 32, i32 0, i32 0, metadata !1738, metadata !2124, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1664, align 32, offset 0] [from ngx_http_log_var_t]
!2124 = metadata !{metadata !2125}
!2125 = metadata !{i32 786465, i64 0, i64 12}     ; [ DW_TAG_subrange_type ] [0, 12]
!2126 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_log_module_ctx", metadata !"ngx_http_log_module_ctx", metadata !"", metadata !6, i32 78, metadata !2127, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_log_module_ctx} ; [ DW_TAG_variable ] [ngx_http_log_module_ctx] [line 78] [local] [def]
!2127 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !2128} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!2128 = metadata !{i32 786451, null, metadata !"", metadata !1464, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !2129, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!2129 = metadata !{metadata !2130, metadata !2132, metadata !2133, metadata !2135, metadata !2139, metadata !2140, metadata !2142, metadata !2143}
!2130 = metadata !{i32 786445, metadata !2128, metadata !"preconfiguration", metadata !1464, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !2131} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!2131 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1919} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2132 = metadata !{i32 786445, metadata !2128, metadata !"postconfiguration", metadata !1464, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !2131} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!2133 = metadata !{i32 786445, metadata !2128, metadata !"create_main_conf", metadata !1464, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !2134} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!2134 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1895} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2135 = metadata !{i32 786445, metadata !2128, metadata !"init_main_conf", metadata !1464, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !2136} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!2136 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2137} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2138 = metadata !{metadata !9, metadata !11, metadata !24}
!2139 = metadata !{i32 786445, metadata !2128, metadata !"create_srv_conf", metadata !1464, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !2134} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!2140 = metadata !{i32 786445, metadata !2128, metadata !"merge_srv_conf", metadata !1464, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !2141} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!2141 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1881} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2142 = metadata !{i32 786445, metadata !2128, metadata !"create_loc_conf", metadata !1464, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !2134} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!2143 = metadata !{i32 786445, metadata !2128, metadata !"merge_loc_conf", metadata !1464, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !2141} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!2144 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_access_log", metadata !"ngx_http_access_log", metadata !"", metadata !6, i32 98, metadata !88, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_access_log} ; [ DW_TAG_variable ] [ngx_http_access_log] [line 98] [local] [def]
!2145 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_combined_fmt", metadata !"ngx_http_combined_fmt", metadata !"", metadata !6, i32 99, metadata !88, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_combined_fmt} ; [ DW_TAG_variable ] [ngx_http_combined_fmt] [line 99] [local] [def]
!2146 = metadata !{i32 671, i32 0, metadata !597, null}
!2147 = metadata !{i32 677, i32 0, metadata !604, null}
!2148 = metadata !{metadata !"int", metadata !2149}
!2149 = metadata !{metadata !"omnipotent char", metadata !2150}
!2150 = metadata !{metadata !"Simple C/C++ TBAA"}
!2151 = metadata !{i32 678, i32 0, metadata !2152, null}
!2152 = metadata !{i32 786443, metadata !604, i32 677, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2153 = metadata !{i32 679, i32 0, metadata !2152, null}
!2154 = metadata !{i32 680, i32 0, metadata !604, null}
!2155 = metadata !{metadata !"any pointer", metadata !2149}
!2156 = metadata !{i32 681, i32 0, metadata !604, null}
!2157 = metadata !{i32 682, i32 0, metadata !611, null}
!2158 = metadata !{i32 683, i32 0, metadata !610, null}
!2159 = metadata !{i32 683, i32 0, metadata !609, null}
!2160 = metadata !{i32 684, i32 0, metadata !2161, null}
!2161 = metadata !{i32 786443, metadata !610, i32 683, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2162 = metadata !{i32 685, i32 0, metadata !2161, null}
!2163 = metadata !{i32 688, i32 0, metadata !604, null}
!2164 = metadata !{i32 689, i32 0, metadata !604, null}
!2165 = metadata !{i32 692, i32 0, metadata !604, null}
!2166 = metadata !{i32 693, i32 0, metadata !604, null}
!2167 = metadata !{i32 694, i32 0, metadata !604, null}
!2168 = metadata !{i32 697, i32 0, metadata !604, null}
!2169 = metadata !{i32 698, i32 0, metadata !604, null}
!2170 = metadata !{i32 701, i32 0, metadata !604, null}
!2171 = metadata !{i32 702, i32 0, metadata !604, null}
!2172 = metadata !{i32 560, i32 0, metadata !516, null}
!2173 = metadata !{i32 567, i32 0, metadata !523, null}
!2174 = metadata !{i32 571, i32 0, metadata !523, null}
!2175 = metadata !{i32 572, i32 0, metadata !523, null}
!2176 = metadata !{i32 573, i32 0, metadata !585, null}
!2177 = metadata !{i32 573, i32 0, metadata !588, null}
!2178 = metadata !{i32 3}
!2179 = metadata !{i32 573, i32 0, metadata !2180, null}
!2180 = metadata !{i32 786443, metadata !588, i32 573, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2181 = metadata !{i32 573, i32 0, metadata !2182, null}
!2182 = metadata !{i32 786443, metadata !2180, i32 573, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2183 = metadata !{i32 574, i32 0, metadata !2184, null}
!2184 = metadata !{i32 786443, metadata !523, i32 573, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2185 = metadata !{i32 575, i32 0, metadata !2184, null}
!2186 = metadata !{i32 578, i32 0, metadata !2184, null}
!2187 = metadata !{i32 579, i32 0, metadata !2184, null}
!2188 = metadata !{i32 581, i32 0, metadata !523, null}
!2189 = metadata !{i32 582, i32 0, metadata !2190, null}
!2190 = metadata !{i32 786443, metadata !523, i32 581, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2191 = metadata !{i32 583, i32 0, metadata !2190, null}
!2192 = metadata !{i32 587, i32 0, metadata !523, null}
!2193 = metadata !{i32 588, i32 0, metadata !523, null}
!2194 = metadata !{i32 589, i32 0, metadata !523, null}
!2195 = metadata !{i32 592, i32 0, metadata !523, null}
!2196 = metadata !{i32 593, i32 0, metadata !523, null}
!2197 = metadata !{i32 594, i32 0, metadata !523, null}
!2198 = metadata !{i32 595, i32 0, metadata !2199, null}
!2199 = metadata !{i32 786443, metadata !523, i32 594, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2200 = metadata !{i32 596, i32 0, metadata !2199, null}
!2201 = metadata !{i32 601, i32 0, metadata !2202, null}
!2202 = metadata !{i32 786443, metadata !523, i32 600, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2203 = metadata !{i32 604, i32 0, metadata !2202, null}
!2204 = metadata !{i32 605, i32 0, metadata !2202, null}
!2205 = metadata !{i32 608, i32 0, metadata !2202, null}
!2206 = metadata !{i32 609, i32 0, metadata !2202, null}
!2207 = metadata !{i32 610, i32 0, metadata !2202, null}
!2208 = metadata !{i32 611, i32 0, metadata !2202, null}
!2209 = metadata !{i32 612, i32 0, metadata !2202, null}
!2210 = metadata !{i32 613, i32 0, metadata !2202, null}
!2211 = metadata !{i32 614, i32 0, metadata !2202, null}
!2212 = metadata !{i32 615, i32 0, metadata !2202, null}
!2213 = metadata !{i32 616, i32 0, metadata !2202, null}
!2214 = metadata !{i32 620, i32 0, metadata !523, null}
!2215 = metadata !{i32 621, i32 0, metadata !592, null}
!2216 = metadata !{i32 622, i32 0, metadata !591, null}
!2217 = metadata !{i32 622, i32 0, metadata !2218, null}
!2218 = metadata !{i32 786443, metadata !2219, i32 622, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2219 = metadata !{i32 786443, metadata !595, i32 622, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2220 = metadata !{i32 623, i32 0, metadata !2221, null}
!2221 = metadata !{i32 786443, metadata !592, i32 622, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2222 = metadata !{i32 624, i32 0, metadata !2221, null}
!2223 = metadata !{i32 627, i32 0, metadata !2224, null}
!2224 = metadata !{i32 786443, metadata !523, i32 626, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2225 = metadata !{i32 628, i32 0, metadata !2224, null}
!2226 = metadata !{i32 629, i32 0, metadata !2224, null}
!2227 = metadata !{i32 631, i32 0, metadata !523, null}
!2228 = metadata !{i32 632, i32 0, metadata !2229, null}
!2229 = metadata !{i32 786443, metadata !523, i32 632, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2230 = metadata !{i32 633, i32 0, metadata !2231, null}
!2231 = metadata !{i32 786443, metadata !2229, i32 632, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2232 = metadata !{i32 634, i32 0, metadata !2233, null}
!2233 = metadata !{i32 786443, metadata !2231, i32 633, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2234 = metadata !{i32 641, i32 0, metadata !523, null}
!2235 = metadata !{i32 638, i32 0, metadata !523, null}
!2236 = metadata !{i32 639, i32 0, metadata !523, null}
!2237 = metadata !{i32 642, i32 0, metadata !2238, null}
!2238 = metadata !{i32 786443, metadata !523, i32 641, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2239 = metadata !{i32 643, i32 0, metadata !2240, null}
!2240 = metadata !{i32 786443, metadata !2238, i32 642, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2241 = metadata !{i32 644, i32 0, metadata !2240, null}
!2242 = metadata !{i32 646, i32 0, metadata !2238, null}
!2243 = metadata !{i32 647, i32 0, metadata !2244, null}
!2244 = metadata !{i32 786443, metadata !2238, i32 646, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2245 = metadata !{i32 648, i32 0, metadata !2244, null}
!2246 = metadata !{i32 650, i32 0, metadata !2238, null}
!2247 = metadata !{i32 651, i32 0, metadata !2238, null}
!2248 = metadata !{i32 652, i32 0, metadata !2238, null}
!2249 = metadata !{i32 653, i32 0, metadata !2238, null}
!2250 = metadata !{i32 654, i32 0, metadata !2251, null}
!2251 = metadata !{i32 786443, metadata !2238, i32 653, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2252 = metadata !{i32 655, i32 0, metadata !2251, null}
!2253 = metadata !{i32 657, i32 0, metadata !2238, null}
!2254 = metadata !{i32 658, i32 0, metadata !2255, null}
!2255 = metadata !{i32 786443, metadata !2238, i32 657, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2256 = metadata !{i32 659, i32 0, metadata !2255, null}
!2257 = metadata !{i32 661, i32 0, metadata !2238, null}
!2258 = metadata !{i32 662, i32 0, metadata !2238, null}
!2259 = metadata !{i32 665, i32 0, metadata !2238, null}
!2260 = metadata !{i32 666, i32 0, metadata !2238, null}
!2261 = metadata !{i32 667, i32 0, metadata !2238, null}
!2262 = metadata !{i32 669, i32 0, metadata !523, null}
!2263 = metadata !{i32 821, i32 0, metadata !5, null}
!2264 = metadata !{i32 827, i32 0, metadata !463, null}
!2265 = metadata !{i32 831, i32 0, metadata !463, null}
!2266 = metadata !{i32 834, i32 0, metadata !463, null}
!2267 = metadata !{i32 835, i32 0, metadata !463, null}
!2268 = metadata !{i32 10}
!2269 = metadata !{i32 836, i32 0, metadata !463, null}
!2270 = metadata !{i32 60}
!2271 = metadata !{i32 837, i32 0, metadata !463, null}
!2272 = metadata !{i32 1}
!2273 = metadata !{i32 838, i32 0, metadata !463, null}
!2274 = metadata !{i32 839, i32 0, metadata !509, null}
!2275 = metadata !{i32 848, i32 0, metadata !2276, null}
!2276 = metadata !{i32 786443, metadata !508, i32 847, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2277 = metadata !{i32 849, i32 0, metadata !2276, null}
!2278 = metadata !{i32 872, i32 0, metadata !507, null}
!2279 = metadata !{i32 840, i32 0, metadata !508, null}
!2280 = metadata !{i32 841, i32 0, metadata !2281, null}
!2281 = metadata !{i32 786443, metadata !508, i32 840, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2282 = metadata !{i32 842, i32 0, metadata !2281, null}
!2283 = metadata !{i32 847, i32 0, metadata !508, null}
!2284 = metadata !{i32 850, i32 0, metadata !2276, null}
!2285 = metadata !{i32 851, i32 0, metadata !2276, null}
!2286 = metadata !{i32 856, i32 0, metadata !508, null}
!2287 = metadata !{i32 857, i32 0, metadata !2288, null}
!2288 = metadata !{i32 786443, metadata !508, i32 856, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2289 = metadata !{i32 858, i32 0, metadata !2288, null}
!2290 = metadata !{i32 863, i32 0, metadata !508, null}
!2291 = metadata !{i32 864, i32 0, metadata !2292, null}
!2292 = metadata !{i32 786443, metadata !508, i32 863, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2293 = metadata !{i32 865, i32 0, metadata !2292, null}
!2294 = metadata !{i32 866, i32 0, metadata !2292, null}
!2295 = metadata !{i32 867, i32 0, metadata !2292, null}
!2296 = metadata !{i32 872, i32 0, metadata !512, null}
!2297 = metadata !{i32 872, i32 0, metadata !2298, null}
!2298 = metadata !{i32 786443, metadata !512, i32 872, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2299 = metadata !{i32 872, i32 0, metadata !2300, null}
!2300 = metadata !{i32 786443, metadata !2298, i32 872, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2301 = metadata !{i32 873, i32 0, metadata !2302, null}
!2302 = metadata !{i32 786443, metadata !508, i32 872, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2303 = metadata !{i32 874, i32 0, metadata !2302, null}
!2304 = metadata !{i32 877, i32 0, metadata !508, null}
!2305 = metadata !{i32 878, i32 0, metadata !508, null}
!2306 = metadata !{i32 880, i32 0, metadata !463, null}
!2307 = metadata !{i32 883, i32 0, metadata !463, null}
!2308 = metadata !{i32 884, i32 0, metadata !2309, null}
!2309 = metadata !{i32 786443, metadata !463, i32 883, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2310 = metadata !{i32 885, i32 0, metadata !2309, null}
!2311 = metadata !{i32 887, i32 0, metadata !463, null}
!2312 = metadata !{i32 888, i32 0, metadata !463, null}
!2313 = metadata !{i32 889, i32 0, metadata !2314, null}
!2314 = metadata !{i32 786443, metadata !463, i32 888, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2315 = metadata !{metadata !"long", metadata !2149}
!2316 = metadata !{i32 890, i32 0, metadata !2314, null}
!2317 = metadata !{i32 891, i32 0, metadata !2314, null}
!2318 = metadata !{i32 894, i32 0, metadata !463, null}
!2319 = metadata !{i32 704, i32 0, metadata !613, null}
!2320 = metadata !{i32 712, i32 0, metadata !624, null}
!2321 = metadata !{i32 717, i32 0, metadata !624, null}
!2322 = metadata !{i32 719, i32 0, metadata !2323, null}
!2323 = metadata !{i32 786443, metadata !624, i32 719, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2324 = metadata !{i32 736, i32 0, metadata !2325, null}
!2325 = metadata !{i32 786443, metadata !2326, i32 731, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2326 = metadata !{i32 786443, metadata !2327, i32 727, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2327 = metadata !{i32 786443, metadata !2328, i32 721, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2328 = metadata !{i32 786443, metadata !2323, i32 719, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2329 = metadata !{i32 742, i32 0, metadata !2330, null}
!2330 = metadata !{i32 786443, metadata !2326, i32 742, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2331 = metadata !{i32 776, i32 0, metadata !2326, null}
!2332 = metadata !{i32 805, i32 0, metadata !2333, null}
!2333 = metadata !{i32 786443, metadata !2334, i32 803, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2334 = metadata !{i32 786443, metadata !2327, i32 792, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2335 = metadata !{i32 721, i32 0, metadata !2328, null}
!2336 = metadata !{i32 726, i32 0, metadata !2327, null}
!2337 = metadata !{i32 722, i32 0, metadata !2327, null}
!2338 = metadata !{i32 723, i32 0, metadata !2327, null}
!2339 = metadata !{i32 727, i32 0, metadata !2327, null}
!2340 = metadata !{i32 728, i32 0, metadata !2326, null}
!2341 = metadata !{i32 731, i32 0, metadata !2326, null}
!2342 = metadata !{i32 732, i32 0, metadata !2325, null}
!2343 = metadata !{i32 733, i32 0, metadata !2325, null}
!2344 = metadata !{i32 737, i32 0, metadata !2325, null}
!2345 = metadata !{i32 744, i32 0, metadata !2346, null}
!2346 = metadata !{i32 786443, metadata !2330, i32 742, i32 0, metadata !6, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2347 = metadata !{i32 743, i32 0, metadata !2346, null}
!2348 = metadata !{i32 745, i32 0, metadata !2349, null}
!2349 = metadata !{i32 786443, metadata !2346, i32 744, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2350 = metadata !{i32 758, i32 0, metadata !2326, null}
!2351 = metadata !{i32 749, i32 0, metadata !2346, null}
!2352 = metadata !{i32 754, i32 0, metadata !2326, null}
!2353 = metadata !{i32 755, i32 0, metadata !2354, null}
!2354 = metadata !{i32 786443, metadata !2326, i32 754, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2355 = metadata !{i32 756, i32 0, metadata !2354, null}
!2356 = metadata !{i32 761, i32 0, metadata !2326, null}
!2357 = metadata !{i32 762, i32 0, metadata !2358, null}
!2358 = metadata !{i32 786443, metadata !2326, i32 761, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2359 = metadata !{i32 765, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !2361, i32 764, i32 0, metadata !6, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2361 = metadata !{i32 786443, metadata !2326, i32 764, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2362 = metadata !{i32 763, i32 0, metadata !2358, null}
!2363 = metadata !{i32 766, i32 0, metadata !2364, null}
!2364 = metadata !{i32 786443, metadata !2360, i32 765, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2365 = metadata !{i32 767, i32 0, metadata !2364, null}
!2366 = metadata !{i32 768, i32 0, metadata !2364, null}
!2367 = metadata !{i32 769, i32 0, metadata !2364, null}
!2368 = metadata !{i32 770, i32 0, metadata !2364, null}
!2369 = metadata !{%struct.ngx_http_log_var_t* getelementptr inbounds ([13 x %struct.ngx_http_log_var_t]* @ngx_http_log_vars, i32 0, i32 1)}
!2370 = metadata !{i32 764, i32 0, metadata !2361, null}
!2371 = metadata !{i32 398, i32 0, metadata !1768, metadata !2372}
!2372 = metadata !{i32 773, i32 0, metadata !2326, null}
!2373 = metadata !{i32 399, i32 0, metadata !1768, metadata !2372}
!2374 = metadata !{i32 400, i32 0, metadata !1768, metadata !2372}
!2375 = metadata !{i32 401, i32 0, metadata !1768, metadata !2372}
!2376 = metadata !{i32 777, i32 0, metadata !2377, null}
!2377 = metadata !{i32 786443, metadata !2326, i32 776, i32 0, metadata !6, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2378 = metadata !{i32 778, i32 0, metadata !2377, null}
!2379 = metadata !{i32 782, i32 0, metadata !2377, null}
!2380 = metadata !{i32 783, i32 0, metadata !2377, null}
!2381 = metadata !{i32 787, i32 0, metadata !2327, null}
!2382 = metadata !{i32 788, i32 0, metadata !2327, null}
!2383 = metadata !{i32 789, i32 0, metadata !2384, null}
!2384 = metadata !{i32 786443, metadata !2327, i32 788, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2385 = metadata !{i32 791, i32 0, metadata !2327, null}
!2386 = metadata !{i32 792, i32 0, metadata !2327, null}
!2387 = metadata !{i32 793, i32 0, metadata !2334, null}
!2388 = metadata !{i32 794, i32 0, metadata !2334, null}
!2389 = metadata !{i32 795, i32 0, metadata !2334, null}
!2390 = metadata !{i32 796, i32 0, metadata !2391, null}
!2391 = metadata !{i32 786443, metadata !2334, i32 795, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2392 = metadata !{i32 797, i32 0, metadata !2391, null}
!2393 = metadata !{i32 798, i32 0, metadata !2391, null}
!2394 = metadata !{i32 800, i32 0, metadata !2395, null}
!2395 = metadata !{i32 786443, metadata !2391, i32 798, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2396 = metadata !{i32 799, i32 0, metadata !2395, null}
!2397 = metadata !{i32 801, i32 0, metadata !2395, null}
!2398 = metadata !{i32 804, i32 0, metadata !2333, null}
!2399 = metadata !{i32 806, i32 0, metadata !2333, null}
!2400 = metadata !{i32 809, i32 0, metadata !2333, null}
!2401 = metadata !{i32 810, i32 0, metadata !2333, null}
!2402 = metadata !{i32 817, i32 0, metadata !624, null}
!2403 = metadata !{i32 818, i32 0, metadata !624, null}
!2404 = metadata !{i32 819, i32 0, metadata !624, null}
!2405 = metadata !{i32 786689, metadata !1759, metadata !"cf", metadata !6, i32 16777607, metadata !11, i32 0, metadata !2372} ; [ DW_TAG_arg_variable ] [cf] [line 391]
!2406 = metadata !{i32 391, i32 0, metadata !1759, metadata !2372}
!2407 = metadata !{i32 786689, metadata !1759, metadata !"value", metadata !6, i32 50332039, metadata !498, i32 0, metadata !2372} ; [ DW_TAG_arg_variable ] [value] [line 391]
!2408 = metadata !{i32 394, i32 0, metadata !1768, metadata !2372}
!2409 = metadata !{i32 786688, metadata !1768, metadata !"index", metadata !6, i32 393, metadata !501, i32 0, metadata !2372} ; [ DW_TAG_auto_variable ] [index] [line 393]
!2410 = metadata !{i32 395, i32 0, metadata !1768, metadata !2372}
!2411 = metadata !{i32 282, i32 0, metadata !1750, null}
!2412 = metadata !{i32 286, i32 0, metadata !1757, null}
!2413 = metadata !{i32 287, i32 0, metadata !1757, null}
!2414 = metadata !{i32 288, i32 0, metadata !1757, null}
!2415 = metadata !{i32 289, i32 0, metadata !2416, null}
!2416 = metadata !{i32 786443, metadata !1757, i32 288, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2417 = metadata !{i32 290, i32 0, metadata !2416, null}
!2418 = metadata !{i32 291, i32 0, metadata !2416, null}
!2419 = metadata !{i32 292, i32 0, metadata !1757, null}
!2420 = metadata !{i32 295, i32 0, metadata !1744, null}
!2421 = metadata !{i32 297, i32 0, metadata !2422, null}
!2422 = metadata !{i32 786443, metadata !1744, i32 296, i32 0, metadata !6, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2423 = metadata !{i32 405, i32 0, metadata !1787, null}
!2424 = metadata !{i32 409, i32 0, metadata !1793, null}
!2425 = metadata !{i32 410, i32 0, metadata !1793, null}
!2426 = metadata !{i32 413, i32 0, metadata !1793, null}
!2427 = metadata !{i32 414, i32 0, metadata !1793, null}
!2428 = metadata !{i32 415, i32 0, metadata !1793, null}
!2429 = metadata !{i32 416, i32 0, metadata !1793, null}
!2430 = metadata !{i32 418, i32 0, metadata !1769, null}
!2431 = metadata !{i32 421, i32 0, metadata !1776, null}
!2432 = metadata !{i32 422, i32 0, metadata !1776, null}
!2433 = metadata !{i32 423, i32 0, metadata !2434, null}
!2434 = metadata !{i32 786443, metadata !1776, i32 422, i32 0, metadata !6, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2435 = metadata !{i32 424, i32 0, metadata !2434, null}
!2436 = metadata !{i32 426, i32 0, metadata !1776, null}
!2437 = metadata !{i32 427, i32 0, metadata !2438, null}
!2438 = metadata !{i32 786443, metadata !1776, i32 426, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2439 = metadata !{i32 430, i32 0, metadata !2440, null}
!2440 = metadata !{i32 786443, metadata !1776, i32 429, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2441 = metadata !{i32 432, i32 0, metadata !1776, null}
!2442 = metadata !{i32 434, i32 0, metadata !1777, null}
!2443 = metadata !{i32 450, i32 0, metadata !1786, null}
!2444 = metadata !{i32 453, i32 0, metadata !2445, null}
!2445 = metadata !{i32 786443, metadata !1786, i32 450, i32 0, metadata !6, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2446 = metadata !{i32 462, i32 0, metadata !1786, null}
!2447 = metadata !{i32 454, i32 0, metadata !2448, null}
!2448 = metadata !{i32 786443, metadata !2445, i32 453, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2449 = metadata !{i32 455, i32 0, metadata !2450, null}
!2450 = metadata !{i32 786443, metadata !2448, i32 454, i32 0, metadata !6, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2451 = metadata !{i32 457, i32 0, metadata !2448, null}
!2452 = metadata !{i32 458, i32 0, metadata !2448, null}
!2453 = metadata !{i32 463, i32 0, metadata !2454, null}
!2454 = metadata !{i32 786443, metadata !1786, i32 462, i32 0, metadata !6, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2455 = metadata !{i32 464, i32 0, metadata !2456, null}
!2456 = metadata !{i32 786443, metadata !2454, i32 463, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2457 = metadata !{i32 465, i32 0, metadata !2456, null}
!2458 = metadata !{i32 466, i32 0, metadata !2456, null}
!2459 = metadata !{i32 467, i32 0, metadata !2456, null}
!2460 = metadata !{i32 469, i32 0, metadata !2456, null}
!2461 = metadata !{i32 471, i32 0, metadata !2462, null}
!2462 = metadata !{i32 786443, metadata !2454, i32 470, i32 0, metadata !6, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2463 = metadata !{i32 468, i32 0, metadata !2456, null}
!2464 = metadata !{i32 473, i32 0, metadata !2454, null}
!2465 = metadata !{i32 475, i32 0, metadata !1786, null}
!2466 = metadata !{i32 476, i32 0, metadata !1786, null}
!2467 = metadata !{i32 300, i32 0, metadata !1874, null}
!2468 = metadata !{i32 302, i32 0, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !1874, i32 301, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2470 = metadata !{i32 305, i32 0, metadata !1868, null}
!2471 = metadata !{i32 307, i32 0, metadata !2472, null}
!2472 = metadata !{i32 786443, metadata !1868, i32 306, i32 0, metadata !6, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2473 = metadata !{i32 310, i32 0, metadata !1862, null}
!2474 = metadata !{i32 312, i32 0, metadata !2475, null}
!2475 = metadata !{i32 786443, metadata !1862, i32 311, i32 0, metadata !6, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2476 = metadata !{i32 313, i32 0, metadata !2477, null}
!2477 = metadata !{i32 786443, metadata !2475, i32 312, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2478 = metadata !{i32 318, i32 0, metadata !2475, null}
!2479 = metadata !{i32 321, i32 0, metadata !1856, null}
!2480 = metadata !{i32 323, i32 0, metadata !2481, null}
!2481 = metadata !{i32 786443, metadata !1856, i32 322, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2482 = metadata !{i32 326, i32 0, metadata !1850, null}
!2483 = metadata !{i32 328, i32 0, metadata !2484, null}
!2484 = metadata !{i32 786443, metadata !1850, i32 327, i32 0, metadata !6, i32 119} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2485 = metadata !{i32 331, i32 0, metadata !1842, null}
!2486 = metadata !{i32 334, i32 0, metadata !1849, null}
!2487 = metadata !{i32 335, i32 0, metadata !1849, null}
!2488 = metadata !{i32 338, i32 0, metadata !1823, null}
!2489 = metadata !{i32 342, i32 0, metadata !1830, null}
!2490 = metadata !{i32 343, i32 0, metadata !1830, null}
!2491 = metadata !{i32 344, i32 0, metadata !1830, null}
!2492 = metadata !{i32 345, i32 0, metadata !1830, null}
!2493 = metadata !{i32 348, i32 0, metadata !1815, null}
!2494 = metadata !{i32 351, i32 0, metadata !1822, null}
!2495 = metadata !{i32 354, i32 0, metadata !1822, null}
!2496 = metadata !{i32 357, i32 0, metadata !1822, null}
!2497 = metadata !{i32 363, i32 0, metadata !1822, null}
!2498 = metadata !{i32 366, i32 0, metadata !1809, null}
!2499 = metadata !{i32 368, i32 0, metadata !2500, null}
!2500 = metadata !{i32 786443, metadata !1809, i32 367, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2501 = metadata !{metadata !"long long", metadata !2149}
!2502 = metadata !{i32 375, i32 0, metadata !1801, null}
!2503 = metadata !{i32 378, i32 0, metadata !1808, null}
!2504 = metadata !{i32 379, i32 0, metadata !1808, null}
!2505 = metadata !{i32 380, i32 0, metadata !2506, null}
!2506 = metadata !{i32 786443, metadata !1808, i32 379, i32 0, metadata !6, i32 110} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2507 = metadata !{i32 382, i32 0, metadata !1808, null}
!2508 = metadata !{i32 383, i32 0, metadata !1808, null}
!2509 = metadata !{i32 384, i32 0, metadata !1808, null}
!2510 = metadata !{i32 386, i32 0, metadata !1795, null}
!2511 = metadata !{i32 388, i32 0, metadata !2512, null}
!2512 = metadata !{i32 786443, metadata !1795, i32 387, i32 0, metadata !6, i32 108} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2513 = metadata !{i32 896, i32 0, metadata !1918, null}
!2514 = metadata !{i32 899, i32 0, metadata !1925, null}
!2515 = metadata !{i32 904, i32 0, metadata !1925, null}
!2516 = metadata !{i32 905, i32 0, metadata !1925, null}
!2517 = metadata !{i32 906, i32 0, metadata !2518, null}
!2518 = metadata !{i32 786443, metadata !1925, i32 905, i32 0, metadata !6, i32 144} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2519 = metadata !{i32 786689, metadata !1909, metadata !"array", metadata !21, i32 16777248, metadata !18, i32 0, metadata !2517} ; [ DW_TAG_arg_variable ] [array] [line 32]
!2520 = metadata !{i32 32, i32 0, metadata !1909, metadata !2517}
!2521 = metadata !{i32 786689, metadata !1909, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, metadata !2517} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2522 = metadata !{i32 786689, metadata !1909, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !2517} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2523 = metadata !{i32 8}
!2524 = metadata !{i32 786689, metadata !1909, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, metadata !2517} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2525 = metadata !{i32 39, i32 0, metadata !2526, metadata !2517}
!2526 = metadata !{i32 786443, metadata !1909, i32 33, i32 0, metadata !21, i32 141} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!2527 = metadata !{i32 40, i32 0, metadata !2526, metadata !2517}
!2528 = metadata !{i32 41, i32 0, metadata !2526, metadata !2517}
!2529 = metadata !{i32 42, i32 0, metadata !2526, metadata !2517}
!2530 = metadata !{i32 44, i32 0, metadata !2526, metadata !2517}
!2531 = metadata !{i32 45, i32 0, metadata !2526, metadata !2517}
!2532 = metadata !{i32 909, i32 0, metadata !2518, null}
!2533 = metadata !{i32 910, i32 0, metadata !2518, null}
!2534 = metadata !{i32 913, i32 0, metadata !2518, null}
!2535 = metadata !{i32 914, i32 0, metadata !2518, null}
!2536 = metadata !{i32 915, i32 0, metadata !2518, null}
!2537 = metadata !{i32 919, i32 0, metadata !1925, null}
!2538 = metadata !{i32 920, i32 0, metadata !1925, null}
!2539 = metadata !{i32 921, i32 0, metadata !1925, null}
!2540 = metadata !{i32 924, i32 0, metadata !1925, null}
!2541 = metadata !{i32 925, i32 0, metadata !1925, null}
!2542 = metadata !{i32 926, i32 0, metadata !1925, null}
!2543 = metadata !{i32 478, i32 0, metadata !1902, null}
!2544 = metadata !{i32 482, i32 0, metadata !1907, null}
!2545 = metadata !{i32 483, i32 0, metadata !1907, null}
!2546 = metadata !{i32 486, i32 0, metadata !1907, null}
!2547 = metadata !{i32 786689, metadata !1909, metadata !"array", metadata !21, i32 16777248, metadata !18, i32 0, metadata !2546} ; [ DW_TAG_arg_variable ] [array] [line 32]
!2548 = metadata !{i32 32, i32 0, metadata !1909, metadata !2546}
!2549 = metadata !{i32 786689, metadata !1909, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, metadata !2546} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2550 = metadata !{i32 4}
!2551 = metadata !{i32 786689, metadata !1909, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !2546} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2552 = metadata !{i32 16}
!2553 = metadata !{i32 786689, metadata !1909, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, metadata !2546} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2554 = metadata !{i32 39, i32 0, metadata !2526, metadata !2546}
!2555 = metadata !{i32 40, i32 0, metadata !2526, metadata !2546}
!2556 = metadata !{i32 41, i32 0, metadata !2526, metadata !2546}
!2557 = metadata !{i32 42, i32 0, metadata !2526, metadata !2546}
!2558 = metadata !{i32 44, i32 0, metadata !2526, metadata !2546}
!2559 = metadata !{i32 45, i32 0, metadata !2526, metadata !2546}
!2560 = metadata !{i32 489, i32 0, metadata !1907, null}
!2561 = metadata !{i32 490, i32 0, metadata !1907, null}
!2562 = metadata !{i32 493, i32 0, metadata !1907, null}
!2563 = metadata !{i32 494, i32 0, metadata !1907, null}
!2564 = metadata !{i32 495, i32 0, metadata !1907, null}
!2565 = metadata !{i32 496, i32 0, metadata !1907, null}
!2566 = metadata !{i32 497, i32 0, metadata !1907, null}
!2567 = metadata !{i32 501, i32 0, metadata !1907, null}
!2568 = metadata !{i32 503, i32 0, metadata !1894, null}
!2569 = metadata !{i32 506, i32 0, metadata !1901, null}
!2570 = metadata !{i32 507, i32 0, metadata !1901, null}
!2571 = metadata !{i32 510, i32 0, metadata !1901, null}
!2572 = metadata !{i32 511, i32 0, metadata !1901, null}
!2573 = metadata !{i32 512, i32 0, metadata !1901, null}
!2574 = metadata !{i32 514, i32 0, metadata !1880, null}
!2575 = metadata !{i32 521, i32 0, metadata !1889, null}
!2576 = metadata !{i32 522, i32 0, metadata !2577, null}
!2577 = metadata !{i32 786443, metadata !1889, i32 521, i32 0, metadata !6, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2578 = metadata !{i32 523, i32 0, metadata !2577, null}
!2579 = metadata !{i32 524, i32 0, metadata !2577, null}
!2580 = metadata !{i32 525, i32 0, metadata !2577, null}
!2581 = metadata !{i32 526, i32 0, metadata !2582, null}
!2582 = metadata !{i32 786443, metadata !2577, i32 525, i32 0, metadata !6, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2583 = metadata !{i32 527, i32 0, metadata !2582, null}
!2584 = metadata !{i32 529, i32 0, metadata !1889, null}
!2585 = metadata !{i32 532, i32 0, metadata !1889, null}
!2586 = metadata !{i32 533, i32 0, metadata !1889, null}
!2587 = metadata !{i32 534, i32 0, metadata !1889, null}
!2588 = metadata !{i32 537, i32 0, metadata !1889, null}
!2589 = metadata !{i32 538, i32 0, metadata !1889, null}
!2590 = metadata !{i32 541, i32 0, metadata !1889, null}
!2591 = metadata !{i32 542, i32 0, metadata !1889, null}
!2592 = metadata !{i32 545, i32 0, metadata !1889, null}
!2593 = metadata !{i32 546, i32 0, metadata !1889, null}
!2594 = metadata !{i32 549, i32 0, metadata !1889, null}
!2595 = metadata !{i32 550, i32 0, metadata !1889, null}
!2596 = metadata !{i32 551, i32 0, metadata !1889, null}
!2597 = metadata !{i32 552, i32 0, metadata !1889, null}
!2598 = metadata !{i32 553, i32 0, metadata !1889, null}
!2599 = metadata !{i32 555, i32 0, metadata !1889, null}
!2600 = metadata !{i32 556, i32 0, metadata !1889, null}
!2601 = metadata !{i32 557, i32 0, metadata !1889, null}
!2602 = metadata !{i32 558, i32 0, metadata !1889, null}
!2603 = metadata !{i32 102, i32 0, metadata !1987, null}
!2604 = metadata !{i32 114, i32 0, metadata !1992, null}
!2605 = metadata !{i32 115, i32 0, metadata !1992, null}
!2606 = metadata !{i32 118, i32 0, metadata !1992, null}
!2607 = metadata !{i32 119, i32 0, metadata !2608, null}
!2608 = metadata !{i32 786443, metadata !1992, i32 119, i32 0, metadata !6, i32 151} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2609 = metadata !{i32 157, i32 0, metadata !2610, null}
!2610 = metadata !{i32 786443, metadata !2608, i32 119, i32 0, metadata !6, i32 152} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2611 = metadata !{i32 120, i32 0, metadata !2610, null}
!2612 = metadata !{i32 128, i32 0, metadata !2610, null}
!2613 = metadata !{i32 129, i32 0, metadata !2610, null}
!2614 = metadata !{i32 130, i32 0, metadata !2610, null}
!2615 = metadata !{i32 131, i32 0, metadata !2616, null}
!2616 = metadata !{i32 786443, metadata !2610, i32 131, i32 0, metadata !6, i32 154} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2617 = metadata !{i32 132, i32 0, metadata !2618, null}
!2618 = metadata !{i32 786443, metadata !2616, i32 131, i32 0, metadata !6, i32 155} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2619 = metadata !{i32 133, i32 0, metadata !2620, null}
!2620 = metadata !{i32 786443, metadata !2618, i32 132, i32 0, metadata !6, i32 156} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2621 = metadata !{i32 136, i32 0, metadata !2622, null}
!2622 = metadata !{i32 786443, metadata !2618, i32 135, i32 0, metadata !6, i32 157} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2623 = metadata !{i32 139, i32 0, metadata !2610, null}
!2624 = metadata !{i32 140, i32 0, metadata !2610, null}
!2625 = metadata !{i32 141, i32 0, metadata !2610, null}
!2626 = metadata !{i32 142, i32 0, metadata !2627, null}
!2627 = metadata !{i32 786443, metadata !2610, i32 141, i32 0, metadata !6, i32 158} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2628 = metadata !{i32 146, i32 0, metadata !2627, null}
!2629 = metadata !{i32 143, i32 0, metadata !2630, null}
!2630 = metadata !{i32 786443, metadata !2627, i32 142, i32 0, metadata !6, i32 159} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2631 = metadata !{i32 144, i32 0, metadata !2630, null}
!2632 = metadata !{i32 145, i32 0, metadata !2630, null}
!2633 = metadata !{i32 147, i32 0, metadata !2634, null}
!2634 = metadata !{i32 786443, metadata !2627, i32 146, i32 0, metadata !6, i32 160} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2635 = metadata !{i32 148, i32 0, metadata !2636, null}
!2636 = metadata !{i32 786443, metadata !2634, i32 148, i32 0, metadata !6, i32 161} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2637 = metadata !{i32 149, i32 0, metadata !2638, null}
!2638 = metadata !{i32 786443, metadata !2636, i32 148, i32 0, metadata !6, i32 162} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2639 = metadata !{i32 151, i32 0, metadata !2634, null}
!2640 = metadata !{i32 153, i32 0, metadata !2634, null}
!2641 = metadata !{i32 154, i32 0, metadata !2634, null}
!2642 = metadata !{i32 158, i32 0, metadata !2610, null}
!2643 = metadata !{i32 162, i32 0, metadata !2644, null}
!2644 = metadata !{i32 786443, metadata !2610, i32 162, i32 0, metadata !6, i32 164} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2645 = metadata !{i32 163, i32 0, metadata !2646, null}
!2646 = metadata !{i32 786443, metadata !2644, i32 162, i32 0, metadata !6, i32 165} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2647 = metadata !{i32 165, i32 0, metadata !2610, null}
!2648 = metadata !{i32 167, i32 0, metadata !2610, null}
!2649 = metadata !{i32 168, i32 0, metadata !2610, null}
!2650 = metadata !{i32 170, i32 0, metadata !1992, null}
!2651 = metadata !{i32 172, i32 0, metadata !2001, null}
!2652 = metadata !{i32 178, i32 0, metadata !2011, null}
!2653 = metadata !{i32 179, i32 0, metadata !2654, null}
!2654 = metadata !{i32 786443, metadata !2011, i32 178, i32 0, metadata !6, i32 167} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2655 = metadata !{i32 786689, metadata !2016, metadata !"name", metadata !6, i32 50331857, metadata !2019, i32 0, metadata !2656} ; [ DW_TAG_arg_variable ] [name] [line 209]
!2656 = metadata !{i32 184, i32 0, metadata !2657, null}
!2657 = metadata !{i32 786443, metadata !2011, i32 182, i32 0, metadata !6, i32 168} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2658 = metadata !{i32 209, i32 0, metadata !2016, metadata !2656}
!2659 = metadata !{i32 197, i32 0, metadata !2660, null}
!2660 = metadata !{i32 786443, metadata !2661, i32 195, i32 0, metadata !6, i32 172} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2661 = metadata !{i32 786443, metadata !2011, i32 190, i32 0, metadata !6, i32 170} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2662 = metadata !{i32 204, i32 0, metadata !2663, null}
!2663 = metadata !{i32 786443, metadata !2011, i32 202, i32 0, metadata !6, i32 173} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2664 = metadata !{i32 180, i32 0, metadata !2654, null}
!2665 = metadata !{i32 786689, metadata !2061, metadata !"fd", metadata !2062, i32 16777356, metadata !85, i32 0, metadata !2664} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!2666 = metadata !{i32 140, i32 0, metadata !2061, metadata !2664}
!2667 = metadata !{i32 786689, metadata !2061, metadata !"buf", metadata !2062, i32 33554572, metadata !24, i32 0, metadata !2664} ; [ DW_TAG_arg_variable ] [buf] [line 140]
!2668 = metadata !{i32 786689, metadata !2061, metadata !"n", metadata !2062, i32 50331788, metadata !30, i32 0, metadata !2664} ; [ DW_TAG_arg_variable ] [n] [line 140]
!2669 = metadata !{i32 142, i32 0, metadata !2670, metadata !2664}
!2670 = metadata !{i32 786443, metadata !2061, i32 141, i32 0, metadata !2062, i32 184} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/os/unix/ngx_files.h]
!2671 = metadata !{i32 181, i32 0, metadata !2654, null}
!2672 = metadata !{i8* null}
!2673 = metadata !{i32 183, i32 0, metadata !2657, null}
!2674 = metadata !{i32 786689, metadata !2016, metadata !"r", metadata !6, i32 16777425, metadata !645, i32 0, metadata !2656} ; [ DW_TAG_arg_variable ] [r] [line 209]
!2675 = metadata !{i32 786689, metadata !2016, metadata !"script", metadata !6, i32 33554641, metadata !536, i32 0, metadata !2656} ; [ DW_TAG_arg_variable ] [script] [line 209]
!2676 = metadata !{i32 786689, metadata !2016, metadata !"buf", metadata !6, i32 67109073, metadata !44, i32 0, metadata !2656} ; [ DW_TAG_arg_variable ] [buf] [line 209]
!2677 = metadata !{i32 786689, metadata !2016, metadata !"len", metadata !6, i32 83886289, metadata !30, i32 0, metadata !2656} ; [ DW_TAG_arg_variable ] [len] [line 209]
!2678 = metadata !{i32 211, i32 0, metadata !2028, metadata !2656}
!2679 = metadata !{i32 213, i32 0, metadata !2028, metadata !2656}
!2680 = metadata !{i32 214, i32 0, metadata !2028, metadata !2656}
!2681 = metadata !{i32 215, i32 0, metadata !2028, metadata !2656}
!2682 = metadata !{i32 218, i32 0, metadata !2028, metadata !2656}
!2683 = metadata !{i32 786688, metadata !2028, metadata !"clcf", metadata !6, i32 217, metadata !1483, i32 0, metadata !2656} ; [ DW_TAG_auto_variable ] [clcf] [line 217]
!2684 = metadata !{i32 219, i32 0, metadata !2028, metadata !2656}
!2685 = metadata !{i32 221, i32 0, metadata !2686, metadata !2656}
!2686 = metadata !{i32 786443, metadata !2028, i32 219, i32 0, metadata !6, i32 175} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2687 = metadata !{i32 223, i32 0, metadata !2688, metadata !2656}
!2688 = metadata !{i32 786443, metadata !2686, i32 221, i32 0, metadata !6, i32 176} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2689 = metadata !{i32 786688, metadata !2028, metadata !"root", metadata !6, i32 211, metadata !30, i32 0, metadata !2656} ; [ DW_TAG_auto_variable ] [root] [line 211]
!2690 = metadata !{i32 225, i32 0, metadata !2686, metadata !2656}
!2691 = metadata !{i32 226, i32 0, metadata !2686, metadata !2656}
!2692 = metadata !{i32 227, i32 0, metadata !2686, metadata !2656}
!2693 = metadata !{i32 228, i32 0, metadata !2686, metadata !2656}
!2694 = metadata !{i32 229, i32 0, metadata !2686, metadata !2656}
!2695 = metadata !{i32 230, i32 0, metadata !2686, metadata !2656}
!2696 = metadata !{i32 231, i32 0, metadata !2686, metadata !2656}
!2697 = metadata !{i32 232, i32 0, metadata !2686, metadata !2656}
!2698 = metadata !{i32 233, i32 0, metadata !2686, metadata !2656}
!2699 = metadata !{i32 235, i32 0, metadata !2700, metadata !2656}
!2700 = metadata !{i32 786443, metadata !2686, i32 233, i32 0, metadata !6, i32 177} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2701 = metadata !{i32 237, i32 0, metadata !2686, metadata !2656}
!2702 = metadata !{i32 238, i32 0, metadata !2703, metadata !2656}
!2703 = metadata !{i32 786443, metadata !2686, i32 237, i32 0, metadata !6, i32 178} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2704 = metadata !{i32 240, i32 0, metadata !2705, metadata !2656}
!2705 = metadata !{i32 786443, metadata !2703, i32 238, i32 0, metadata !6, i32 179} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2706 = metadata !{i32 242, i32 0, metadata !2703, metadata !2656}
!2707 = metadata !{i32 243, i32 0, metadata !2703, metadata !2656}
!2708 = metadata !{i32 245, i32 0, metadata !2703, metadata !2656}
!2709 = metadata !{i32 247, i32 0, metadata !2686, metadata !2656}
!2710 = metadata !{i32 248, i32 0, metadata !2711, metadata !2656}
!2711 = metadata !{i32 786443, metadata !2686, i32 247, i32 0, metadata !6, i32 180} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2712 = metadata !{i32 249, i32 0, metadata !2711, metadata !2656}
!2713 = metadata !{i32 251, i32 0, metadata !2711, metadata !2656}
!2714 = metadata !{i32 254, i32 0, metadata !2028, metadata !2656}
!2715 = metadata !{i32 256, i32 0, metadata !2716, metadata !2656}
!2716 = metadata !{i32 786443, metadata !2028, i32 254, i32 0, metadata !6, i32 181} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2717 = metadata !{i32 258, i32 0, metadata !2028, metadata !2656}
!2718 = metadata !{i32 259, i32 0, metadata !2028, metadata !2656}
!2719 = metadata !{i32 261, i32 0, metadata !2028, metadata !2656}
!2720 = metadata !{i32 262, i32 0, metadata !2028, metadata !2656}
!2721 = metadata !{i32 263, i32 0, metadata !2028, metadata !2656}
!2722 = metadata !{i32 264, i32 0, metadata !2028, metadata !2656}
!2723 = metadata !{i32 265, i32 0, metadata !2028, metadata !2656}
!2724 = metadata !{i32 266, i32 0, metadata !2028, metadata !2656}
!2725 = metadata !{i32 267, i32 0, metadata !2028, metadata !2656}
!2726 = metadata !{i32 269, i32 0, metadata !2727, metadata !2656}
!2727 = metadata !{i32 786443, metadata !2028, i32 267, i32 0, metadata !6, i32 182} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2728 = metadata !{i32 271, i32 0, metadata !2028, metadata !2656}
!2729 = metadata !{i32 272, i32 0, metadata !2730, metadata !2656}
!2730 = metadata !{i32 786443, metadata !2028, i32 271, i32 0, metadata !6, i32 183} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2731 = metadata !{i32 273, i32 0, metadata !2730, metadata !2656}
!2732 = metadata !{i32 275, i32 0, metadata !2730, metadata !2656}
!2733 = metadata !{i32 278, i32 0, metadata !2028, metadata !2656}
!2734 = metadata !{i32 786689, metadata !2061, metadata !"fd", metadata !2062, i32 16777356, metadata !85, i32 0, metadata !2733} ; [ DW_TAG_arg_variable ] [fd] [line 140]
!2735 = metadata !{i32 140, i32 0, metadata !2061, metadata !2733}
!2736 = metadata !{i32 786689, metadata !2061, metadata !"buf", metadata !2062, i32 33554572, metadata !24, i32 0, metadata !2733} ; [ DW_TAG_arg_variable ] [buf] [line 140]
!2737 = metadata !{i32 786689, metadata !2061, metadata !"n", metadata !2062, i32 50331788, metadata !30, i32 0, metadata !2733} ; [ DW_TAG_arg_variable ] [n] [line 140]
!2738 = metadata !{i32 142, i32 0, metadata !2670, metadata !2733}
!2739 = metadata !{i32 786688, metadata !2028, metadata !"n", metadata !6, i32 212, metadata !286, i32 0, metadata !2656} ; [ DW_TAG_auto_variable ] [n] [line 212]
!2740 = metadata !{i32 279, i32 0, metadata !2028, metadata !2656}
!2741 = metadata !{i32 186, i32 0, metadata !2011, null}
!2742 = metadata !{i32 189, i32 0, metadata !2011, null}
!2743 = metadata !{i32 190, i32 0, metadata !2011, null}
!2744 = metadata !{i32 191, i32 0, metadata !2661, null}
!2745 = metadata !{i32 192, i32 0, metadata !2661, null}
!2746 = metadata !{i32 193, i32 0, metadata !2747, null}
!2747 = metadata !{i32 786443, metadata !2661, i32 192, i32 0, metadata !6, i32 171} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_log_module.c]
!2748 = metadata !{i32 194, i32 0, metadata !2747, null}
!2749 = metadata !{i32 195, i32 0, metadata !2661, null}
!2750 = metadata !{i32 196, i32 0, metadata !2660, null}
!2751 = metadata !{i32 198, i32 0, metadata !2660, null}
!2752 = metadata !{i32 199, i32 0, metadata !2660, null}
!2753 = metadata !{i32 202, i32 0, metadata !2011, null}
!2754 = metadata !{i32 203, i32 0, metadata !2663, null}
!2755 = metadata !{i32 205, i32 0, metadata !2663, null}
!2756 = metadata !{i32 206, i32 0, metadata !2663, null}
!2757 = metadata !{i32 207, i32 0, metadata !2011, null}
