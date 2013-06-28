; ModuleID = 'src/http/modules/ngx_http_rewrite_module.c'
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
%struct.ngx_regex_compile_t = type { %struct.ngx_str_t, %struct.ngx_pool_s*, i32, %struct.ngx_regex_t*, i32, i32, i32, i8*, %struct.ngx_str_t }
%struct.ngx_regex_t = type { %struct.real_pcre*, %struct.pcre_extra* }
%struct.real_pcre = type opaque
%struct.pcre_extra = type { i32, i8*, i32, i8*, i8*, i32, i8**, i8* }
%struct.ngx_http_script_compile_t = type { %struct.ngx_conf_s*, %struct.ngx_str_t*, %struct.ngx_array_s**, %struct.ngx_array_s**, %struct.ngx_array_s**, i32, i32, i32, i32, i8*, i8 }
%struct.ngx_http_script_regex_code_t = type { void (%struct.ngx_http_script_engine_t*)*, %struct.ngx_http_regex_t*, %struct.ngx_array_s*, i32, i32, i32, i8, %struct.ngx_str_t }
%struct.ngx_http_script_engine_t = type { i8*, i8*, %struct.ngx_variable_value_t*, %struct.ngx_str_t, %struct.ngx_str_t, i8*, i8, i32, %struct.ngx_http_request_s* }
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
%struct.ngx_http_regex_variable_t = type { i32, i32 }
%struct.ngx_http_core_srv_conf_t = type { %struct.ngx_array_s, %struct.ngx_http_conf_ctx_t*, %struct.ngx_str_t, i32, i32, i32, %struct.ngx_bufs_t, i32, i32, i32, i32, i8, %struct.ngx_http_core_loc_conf_s** }
%struct.ngx_http_conf_ctx_t = type { i8**, i8**, i8** }
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, %struct.ngx_http_regex_t*, i8, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s**, i8**, i32, i8**, i32 (%struct.ngx_http_request_s*)*, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_resolver_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_array_s*, i32, %struct.ngx_http_complex_value_t*, %struct.ngx_array_s*, %struct.ngx_http_try_file_t*, %struct.ngx_path_t*, %struct.ngx_open_file_cache_t*, i32, i32, i32, i32, %struct.ngx_log_s*, i32, i32, %struct.ngx_queue_s* }
%struct.ngx_http_location_tree_node_s = type { %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s*, %struct.ngx_http_core_loc_conf_s*, i8, i8, [1 x i8] }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, i32*, i8*, i8* }
%struct.ngx_http_try_file_t = type { %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_str_t, [2 x i8] }
%struct.ngx_open_file_cache_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, i32, i32, i32 }
%struct.ngx_http_connection_t = type { %struct.ngx_http_request_s*, %struct.ngx_buf_s**, i32, %struct.ngx_buf_s**, i32, i32 }
%struct.ngx_http_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_http_cleanup_s* }
%struct.ngx_http_compile_complex_value_t = type { %struct.ngx_conf_s*, %struct.ngx_str_t*, %struct.ngx_http_complex_value_t*, i8 }
%struct.ngx_http_rewrite_loc_conf_t = type { %struct.ngx_array_s*, i32, i32, i32 }
%struct.ngx_http_variable_s = type { %struct.ngx_str_t, void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32, i32, i32 }

@ngx_http_rewrite_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* @ngx_http_rewrite_init, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_rewrite_create_loc_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_rewrite_merge_loc_conf }, align 4
@ngx_http_rewrite_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_rewrite_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([8 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_rewrite_commands to [8 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"rewrite\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str2 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str3 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str5 = private unnamed_addr constant [12 x i8] c"rewrite_log\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"uninitialized_variable_warn\00", align 1
@ngx_http_rewrite_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 7, i8* getelementptr inbounds ([8 x i8]* @.str, i32 0, i32 0) }, i32 1811939340, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0) }, i32 1811939334, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_return, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0) }, i32 1811939329, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_break, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 2, i8* getelementptr inbounds ([3 x i8]* @.str3, i32 0, i32 0) }, i32 201328896, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_if, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str4, i32 0, i32 0) }, i32 1811939332, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_set, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 11, i8* getelementptr inbounds ([12 x i8]* @.str5, i32 0, i32 0) }, i32 1845494272, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 8, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 27, i8* getelementptr inbounds ([28 x i8]* @.str6, i32 0, i32 0) }, i32 1845494272, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 12, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str7 = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@.str8 = private unnamed_addr constant [6 x i8] c"http_\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"sent_http_\00", align 1
@.str10 = private unnamed_addr constant [15 x i8] c"upstream_http_\00", align 1
@ngx_http_variable_null_value = external global %struct.ngx_variable_value_t
@ngx_http_core_module = external global %struct.ngx_module_s
@.str11 = private unnamed_addr constant [34 x i8] c"using uninitialized \22%V\22 variable\00", align 1
@ngx_http_max_module = external global i32
@ngx_modules = external global [0 x %struct.ngx_module_s*]
@.str12 = private unnamed_addr constant [23 x i8] c"invalid condition \22%V\22\00", align 1
@.str13 = private unnamed_addr constant [29 x i8] c"unexpected \22%V\22 in condition\00", align 1
@0 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str14 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str15 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@.str16 = private unnamed_addr constant [8 x i8] c"$scheme\00", align 1
@.str17 = private unnamed_addr constant [25 x i8] c"invalid return code \22%V\22\00", align 1
@1 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str18 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str19 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"permanent\00", align 1
@2 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str21 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@3 = internal unnamed_addr constant [10 x i8] c"uintptr_t\00"
@4 = internal unnamed_addr constant [2 x i8] c"*\00"
@5 = internal unnamed_addr constant [11 x i8] c"ngx_flag_t\00"
@6 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@7 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@8 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@9 = internal unnamed_addr constant [4 x i8] c"int\00"
@10 = internal unnamed_addr constant [43 x i8] c"src/http/modules/ngx_http_rewrite_module.c\00"

define internal i8* @ngx_http_rewrite(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  %rc = alloca %struct.ngx_regex_compile_t, align 8
  %sc = alloca %struct.ngx_http_script_compile_t, align 4
  %regex = alloca %struct.ngx_http_script_regex_code_t*, align 4
  %errstr = alloca [1024 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1916), !dbg !2044
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1917), !dbg !2044
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1918), !dbg !2044
  call void @llvm.dbg.declare(metadata !{%struct.ngx_regex_compile_t* %rc}, metadata !1923), !dbg !2045
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_compile_t* %sc}, metadata !1925), !dbg !2046
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, metadata !1926), !dbg !2047
  call void @llvm.dbg.declare(metadata !{[1024 x i8]* %errstr}, metadata !1937), !dbg !2048
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2049
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2049, !tbaa !2050
  %codes = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2049
  %call = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %0, %struct.ngx_array_s** %codes, i32 36) nounwind, !dbg !2049
  %1 = bitcast i8* %call to %struct.ngx_http_script_regex_code_t*, !dbg !2049
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %1}, i64 0, metadata !1926), !dbg !2049
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %1}, i64 0, metadata !1926), !dbg !2049
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %1}, i64 0, metadata !1926), !dbg !2049
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %1}, i64 0, metadata !1926), !dbg !2049
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %1}, i64 0, metadata !1926), !dbg !2049
  store %struct.ngx_http_script_regex_code_t* %1, %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2049, !tbaa !2050
  %cmp = icmp eq i8* %call, null, !dbg !2053
  br i1 %cmp, label %return, label %if.end, !dbg !2053

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0i8.i32(i8* %call, i8 0, i32 36, i32 4, i1 false), !dbg !2054
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2055
  %2 = load %struct.ngx_array_s** %args, align 4, !dbg !2055, !tbaa !2050
  %elts = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 0, !dbg !2055
  %3 = load i8** %elts, align 4, !dbg !2055, !tbaa !2050
  %4 = bitcast %struct.ngx_regex_compile_t* %rc to i8*, !dbg !2056
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 44, i32 8, i1 false), !dbg !2056
  %arrayidx = getelementptr inbounds i8* %3, i32 8, !dbg !2057
  %5 = bitcast i8* %arrayidx to i64*, !dbg !2057
  %6 = bitcast %struct.ngx_regex_compile_t* %rc to i64*, !dbg !2057
  %7 = load i64* %5, align 4, !dbg !2057
  store i64 %7, i64* %6, align 8, !dbg !2057
  %len = getelementptr inbounds %struct.ngx_regex_compile_t* %rc, i32 0, i32 8, i32 0, !dbg !2058
  store i32 1024, i32* %len, align 4, !dbg !2058, !tbaa !2059
  %arraydecay = getelementptr inbounds [1024 x i8]* %errstr, i32 0, i32 0, !dbg !2060
  %data = getelementptr inbounds %struct.ngx_regex_compile_t* %rc, i32 0, i32 8, i32 1, !dbg !2060
  store i8* %arraydecay, i8** %data, align 4, !dbg !2060, !tbaa !2050
  %call4 = call %struct.ngx_http_regex_t* @ngx_http_regex_compile(%struct.ngx_conf_s* %cf, %struct.ngx_regex_compile_t* %rc) nounwind, !dbg !2061
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2061
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2061
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2061
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2061
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2061
  %8 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2061, !tbaa !2050
  %regex5 = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %8, i32 0, i32 1, !dbg !2061
  store %struct.ngx_http_regex_t* %call4, %struct.ngx_http_regex_t** %regex5, align 4, !dbg !2061, !tbaa !2050
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2062
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2062
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2062
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2062
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2062
  %9 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2062, !tbaa !2050
  %regex6 = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %9, i32 0, i32 1, !dbg !2062
  %10 = load %struct.ngx_http_regex_t** %regex6, align 4, !dbg !2062, !tbaa !2050
  %cmp7 = icmp eq %struct.ngx_http_regex_t* %10, null, !dbg !2062
  br i1 %cmp7, label %return, label %if.end11, !dbg !2062

if.end11:                                         ; preds = %if.end
  %code12 = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %9, i32 0, i32 0, !dbg !2063
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_regex_start_code, void (%struct.ngx_http_script_engine_t*)** %code12, align 4, !dbg !2063, !tbaa !2050
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2064
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2064
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2064
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2064
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2064
  %11 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2064, !tbaa !2050
  %12 = getelementptr %struct.ngx_http_script_regex_code_t* %11, i32 0, i32 6, !dbg !2064
  %13 = bitcast i8* %12 to i32*, !dbg !2064
  %14 = load i32* %13, align 4, !dbg !2064
  %15 = or i32 %14, 4, !dbg !2064
  store i32 %15, i32* %13, align 4, !dbg !2064
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2065
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2065
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2065
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2065
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2065
  %16 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2065, !tbaa !2050
  %name = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %16, i32 0, i32 7, !dbg !2065
  %17 = bitcast %struct.ngx_str_t* %name to i64*, !dbg !2065
  %18 = load i64* %5, align 4, !dbg !2065
  store i64 %18, i64* %17, align 4, !dbg !2065
  %arrayidx16 = getelementptr inbounds i8* %3, i32 16, !dbg !2066
  %19 = bitcast i8* %arrayidx16 to %struct.ngx_str_t*, !dbg !2066
  %len17 = bitcast i8* %arrayidx16 to i32*, !dbg !2066
  %20 = load i32* %len17, align 4, !dbg !2066, !tbaa !2059
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %20, i32 1), !dbg !2066
  %22 = extractvalue { i32, i1 } %21, 0, !dbg !2066
  %23 = extractvalue { i32, i1 } %21, 1, !dbg !2066
  br i1 %23, label %ioc_bb20, label %cont21, !dbg !2066

ioc_bb20:                                         ; preds = %if.end11
  %24 = zext i32 %20 to i64, !dbg !2066
  call void @__ioc_report_sub_overflow(i32 206, i32 34, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %24, i64 1, i8 5) nounwind, !dbg !2066
  br label %cont21, !dbg !2066

cont21:                                           ; preds = %if.end11, %ioc_bb20
  %data23 = getelementptr inbounds i8* %3, i32 20, !dbg !2066
  %25 = bitcast i8* %data23 to i8**, !dbg !2066
  %26 = load i8** %25, align 4, !dbg !2066, !tbaa !2050
  %arrayidx24 = getelementptr inbounds i8* %26, i32 %22, !dbg !2066
  %27 = load i8* %arrayidx24, align 1, !dbg !2066, !tbaa !2051
  %cmp25 = icmp eq i8 %27, 63, !dbg !2066
  br i1 %cmp25, label %if.then27, label %cont33, !dbg !2066

if.then27:                                        ; preds = %cont21
  %28 = load i32* %len17, align 4, !dbg !2067, !tbaa !2059
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %28, i32 1), !dbg !2067
  %30 = extractvalue { i32, i1 } %29, 0, !dbg !2067
  %31 = extractvalue { i32, i1 } %29, 1, !dbg !2067
  br i1 %31, label %ioc_bb30, label %cont31, !dbg !2067

ioc_bb30:                                         ; preds = %if.then27
  %32 = zext i32 %28 to i64, !dbg !2067
  call void @__ioc_report_sub_overflow(i32 208, i32 17, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i64 %32, i64 1, i8 5) nounwind, !dbg !2067
  br label %cont31, !dbg !2067

cont31:                                           ; preds = %if.then27, %ioc_bb30
  store i32 %30, i32* %len17, align 4, !dbg !2067, !tbaa !2059
  br label %cont37, !dbg !2069

cont33:                                           ; preds = %cont21
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2070
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2070
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2070
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2070
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2070
  %33 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2070, !tbaa !2050
  %34 = getelementptr %struct.ngx_http_script_regex_code_t* %33, i32 0, i32 6, !dbg !2070
  %35 = bitcast i8* %34 to i32*, !dbg !2070
  %36 = load i32* %35, align 4, !dbg !2070
  %37 = or i32 %36, 16, !dbg !2070
  store i32 %37, i32* %35, align 4, !dbg !2070
  br label %cont37

cont37:                                           ; preds = %cont31, %cont33
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1922), !dbg !2072
  %38 = load i8** %25, align 4, !dbg !2073, !tbaa !2050
  %call44 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([8 x i8]* @.str14, i32 0, i32 0), i32 7) nounwind readonly, !dbg !2073
  %cmp45 = icmp eq i32 %call44, 0, !dbg !2073
  br i1 %cmp45, label %cont68, label %lor.lhs.false, !dbg !2073

lor.lhs.false:                                    ; preds = %cont37
  %call53 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0), i32 8) nounwind readonly, !dbg !2073
  %cmp54 = icmp eq i32 %call53, 0, !dbg !2073
  br i1 %cmp54, label %cont68, label %lor.lhs.false56, !dbg !2073

lor.lhs.false56:                                  ; preds = %lor.lhs.false
  %call63 = call i32 @strncmp(i8* %38, i8* getelementptr inbounds ([8 x i8]* @.str16, i32 0, i32 0), i32 7) nounwind readonly, !dbg !2073
  %cmp64 = icmp eq i32 %call63, 0, !dbg !2073
  br i1 %cmp64, label %cont68, label %cont77, !dbg !2073

cont68:                                           ; preds = %lor.lhs.false56, %lor.lhs.false, %cont37
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2074
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2074
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2074
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2074
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2074
  %39 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2074, !tbaa !2050
  %status = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %39, i32 0, i32 4, !dbg !2074
  store i32 302, i32* %status, align 4, !dbg !2074, !tbaa !2059
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2076
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2076
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2076
  %40 = getelementptr %struct.ngx_http_script_regex_code_t* %39, i32 0, i32 6, !dbg !2076
  %41 = bitcast i8* %40 to i32*, !dbg !2076
  %42 = load i32* %41, align 4, !dbg !2076
  %43 = or i32 %42, 32, !dbg !2076
  store i32 %43, i32* %41, align 4, !dbg !2076
  call void @llvm.dbg.value(metadata !2077, i64 0, metadata !1922), !dbg !2078
  br label %cont77, !dbg !2079

cont77:                                           ; preds = %lor.lhs.false56, %cont68
  %last.0 = phi i32 [ 1, %cont68 ], [ 0, %lor.lhs.false56 ]
  %44 = load %struct.ngx_array_s** %args, align 4, !dbg !2080, !tbaa !2050
  %nelts = getelementptr inbounds %struct.ngx_array_s* %44, i32 0, i32 1, !dbg !2080
  %45 = load i32* %nelts, align 4, !dbg !2080, !tbaa !2059
  %cmp78 = icmp eq i32 %45, 4, !dbg !2080
  br i1 %cmp78, label %if.then80, label %if.end404, !dbg !2080

if.then80:                                        ; preds = %cont77
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str18 to i32)), !dbg !2081
  %47 = extractvalue { i32, i1 } %46, 1, !dbg !2081
  br i1 %47, label %ioc_bb81, label %cont84, !dbg !2081

ioc_bb81:                                         ; preds = %if.then80
  call void @__ioc_report_sub_overflow(i32 220, i32 9, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str18 to i32) to i64), i8 5) nounwind, !dbg !2081
  br label %cont84, !dbg !2081

cont84:                                           ; preds = %ioc_bb81, %if.then80
  %data141 = getelementptr inbounds i8* %3, i32 28, !dbg !2082
  %48 = bitcast i8* %data141 to i8**, !dbg !2082
  %49 = load i8** %48, align 4, !dbg !2082, !tbaa !2050
  %call142 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([5 x i8]* @.str18, i32 0, i32 0)) nounwind, !dbg !2082
  %cmp143 = icmp eq i32 %call142, 0, !dbg !2082
  br i1 %cmp143, label %if.end404, label %if.else148, !dbg !2082

if.else148:                                       ; preds = %cont84
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 1) to i32), i32 ptrtoint ([6 x i8]* @.str2 to i32)), !dbg !2085
  %51 = extractvalue { i32, i1 } %50, 1, !dbg !2085
  br i1 %51, label %ioc_bb151, label %cont154, !dbg !2085

ioc_bb151:                                        ; preds = %if.else148
  call void @__ioc_report_sub_overflow(i32 223, i32 14, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([6 x i8]* @.str2 to i32) to i64), i8 5) nounwind, !dbg !2085
  %.pre = load i8** %48, align 4, !dbg !2086, !tbaa !2050
  br label %cont154, !dbg !2085

cont154:                                          ; preds = %ioc_bb151, %if.else148
  %52 = phi i8* [ %.pre, %ioc_bb151 ], [ %49, %if.else148 ]
  %call217 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([6 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !2086
  %cmp220 = icmp eq i32 %call217, 0, !dbg !2086
  br i1 %cmp220, label %cont224, label %if.else228, !dbg !2086

cont224:                                          ; preds = %cont154
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2089
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2089
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2089
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2089
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2089
  %53 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2089, !tbaa !2050
  %54 = getelementptr %struct.ngx_http_script_regex_code_t* %53, i32 0, i32 6, !dbg !2089
  %55 = bitcast i8* %54 to i32*, !dbg !2089
  %56 = load i32* %55, align 4, !dbg !2089
  %57 = or i32 %56, 64, !dbg !2089
  store i32 %57, i32* %55, align 4, !dbg !2089
  call void @llvm.dbg.value(metadata !2077, i64 0, metadata !1922), !dbg !2091
  br label %if.end404, !dbg !2092

if.else228:                                       ; preds = %cont154
  %58 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([9 x i8]* @.str19, i32 0, i32 1) to i32), i32 ptrtoint ([9 x i8]* @.str19 to i32)), !dbg !2093
  %59 = extractvalue { i32, i1 } %58, 1, !dbg !2093
  br i1 %59, label %ioc_bb231, label %cont234, !dbg !2093

ioc_bb231:                                        ; preds = %if.else228
  call void @__ioc_report_sub_overflow(i32 227, i32 14, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([9 x i8]* @.str19, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([9 x i8]* @.str19 to i32) to i64), i8 5) nounwind, !dbg !2093
  %.pre556 = load i8** %48, align 4, !dbg !2094, !tbaa !2050
  br label %cont234, !dbg !2093

cont234:                                          ; preds = %ioc_bb231, %if.else228
  %60 = phi i8* [ %.pre556, %ioc_bb231 ], [ %52, %if.else228 ]
  %call297 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([9 x i8]* @.str19, i32 0, i32 0)) nounwind, !dbg !2094
  %cmp300 = icmp eq i32 %call297, 0, !dbg !2094
  br i1 %cmp300, label %cont304, label %if.else311, !dbg !2094

cont304:                                          ; preds = %cont234
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2097
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2097
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2097
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2097
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2097
  %61 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2097, !tbaa !2050
  %status305 = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %61, i32 0, i32 4, !dbg !2097
  store i32 302, i32* %status305, align 4, !dbg !2097, !tbaa !2059
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2099
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2099
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2099
  %62 = getelementptr %struct.ngx_http_script_regex_code_t* %61, i32 0, i32 6, !dbg !2099
  %63 = bitcast i8* %62 to i32*, !dbg !2099
  %64 = load i32* %63, align 4, !dbg !2099
  %65 = or i32 %64, 32, !dbg !2099
  store i32 %65, i32* %63, align 4, !dbg !2099
  call void @llvm.dbg.value(metadata !2077, i64 0, metadata !1922), !dbg !2100
  br label %if.end404, !dbg !2101

if.else311:                                       ; preds = %cont234
  %66 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 1) to i32), i32 ptrtoint ([10 x i8]* @.str20 to i32)), !dbg !2102
  %67 = extractvalue { i32, i1 } %66, 1, !dbg !2102
  br i1 %67, label %ioc_bb314, label %cont317, !dbg !2102

ioc_bb314:                                        ; preds = %if.else311
  call void @__ioc_report_sub_overflow(i32 232, i32 14, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([10 x i8]* @.str20 to i32) to i64), i8 5) nounwind, !dbg !2102
  %.pre557 = load i8** %48, align 4, !dbg !2103, !tbaa !2050
  br label %cont317, !dbg !2102

cont317:                                          ; preds = %ioc_bb314, %if.else311
  %68 = phi i8* [ %.pre557, %ioc_bb314 ], [ %60, %if.else311 ]
  %call380 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([10 x i8]* @.str20, i32 0, i32 0)) nounwind, !dbg !2103
  %cmp383 = icmp eq i32 %call380, 0, !dbg !2103
  br i1 %cmp383, label %cont387, label %cont396, !dbg !2103

cont387:                                          ; preds = %cont317
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2106
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2106
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2106
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2106
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2106
  %69 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2106, !tbaa !2050
  %status388 = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %69, i32 0, i32 4, !dbg !2106
  store i32 301, i32* %status388, align 4, !dbg !2106, !tbaa !2059
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2108
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2108
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2108
  %70 = getelementptr %struct.ngx_http_script_regex_code_t* %69, i32 0, i32 6, !dbg !2108
  %71 = bitcast i8* %70 to i32*, !dbg !2108
  %72 = load i32* %71, align 4, !dbg !2108
  %73 = or i32 %72, 32, !dbg !2108
  store i32 %73, i32* %71, align 4, !dbg !2108
  call void @llvm.dbg.value(metadata !2077, i64 0, metadata !1922), !dbg !2109
  br label %if.end404

cont396:                                          ; preds = %cont317
  %arrayidx397 = getelementptr inbounds i8* %3, i32 24, !dbg !2110
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str21, i32 0, i32 0), i8* %arrayidx397) nounwind, !dbg !2110
  br label %return, !dbg !2112

if.end404:                                        ; preds = %cont84, %cont77, %cont304, %cont387, %cont224
  %last.1 = phi i32 [ 1, %cont224 ], [ 1, %cont304 ], [ 1, %cont387 ], [ %last.0, %cont77 ], [ 1, %cont84 ]
  %74 = bitcast %struct.ngx_http_script_compile_t* %sc to i8*, !dbg !2113
  call void @llvm.memset.p0i8.i32(i8* %74, i8 0, i32 40, i32 4, i1 false), !dbg !2113
  %cf405 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 0, !dbg !2114
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf405, align 4, !dbg !2114, !tbaa !2050
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 1, !dbg !2115
  store %struct.ngx_str_t* %19, %struct.ngx_str_t** %source, align 4, !dbg !2115, !tbaa !2050
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2116
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2116
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2116
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2116
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2116
  %75 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2116, !tbaa !2050
  %lengths = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %75, i32 0, i32 2, !dbg !2116
  %lengths407 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 3, !dbg !2116
  store %struct.ngx_array_s** %lengths, %struct.ngx_array_s*** %lengths407, align 4, !dbg !2116, !tbaa !2050
  %values = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 4, !dbg !2117
  store %struct.ngx_array_s** %codes, %struct.ngx_array_s*** %values, align 4, !dbg !2117, !tbaa !2050
  %call410 = call i32 @ngx_http_script_variables_count(%struct.ngx_str_t* %19) nounwind, !dbg !2118
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 5, !dbg !2118
  store i32 %call410, i32* %variables, align 4, !dbg !2118, !tbaa !2059
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2119
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2119
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2119
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2119
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2119
  %76 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2119, !tbaa !2050
  %77 = bitcast %struct.ngx_http_script_regex_code_t* %76 to i8*, !dbg !2119
  %main = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 9, !dbg !2119
  store i8* %77, i8** %main, align 4, !dbg !2119, !tbaa !2050
  %78 = getelementptr %struct.ngx_http_script_compile_t* %sc, i32 0, i32 10, !dbg !2120
  %79 = bitcast i8* %78 to i32*, !dbg !2120
  store i32 2, i32* %79, align 4, !dbg !2120
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2121
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2121
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2121
  %80 = getelementptr %struct.ngx_http_script_regex_code_t* %76, i32 0, i32 6, !dbg !2121
  %81 = bitcast i8* %80 to i32*, !dbg !2121
  %82 = load i32* %81, align 4, !dbg !2121
  %bf.clear = lshr i32 %82, 5, !dbg !2121
  %bf.clear.lobit = and i32 %bf.clear, 1, !dbg !2121
  %83 = xor i32 %bf.clear.lobit, 3, !dbg !2121
  store i32 %83, i32* %79, align 4, !dbg !2121
  %call418 = call i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t* %sc) nounwind, !dbg !2122
  %cmp419 = icmp eq i32 %call418, 0, !dbg !2122
  br i1 %cmp419, label %if.end424, label %return, !dbg !2122

if.end424:                                        ; preds = %if.end404
  %84 = load i8** %main, align 4, !dbg !2123, !tbaa !2050
  %85 = bitcast i8* %84 to %struct.ngx_http_script_regex_code_t*, !dbg !2123
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %85}, i64 0, metadata !1926), !dbg !2123
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %85}, i64 0, metadata !1926), !dbg !2123
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %85}, i64 0, metadata !1926), !dbg !2123
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %85}, i64 0, metadata !1926), !dbg !2123
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t* %85}, i64 0, metadata !1926), !dbg !2123
  store %struct.ngx_http_script_regex_code_t* %85, %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2123, !tbaa !2050
  %size = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 8, !dbg !2124
  %86 = load i32* %size, align 4, !dbg !2124, !tbaa !2059
  %size426 = getelementptr inbounds i8* %84, i32 12, !dbg !2124
  %87 = bitcast i8* %size426 to i32*, !dbg !2124
  store i32 %86, i32* %87, align 4, !dbg !2124, !tbaa !2059
  %88 = load i32* %79, align 4, !dbg !2125
  %89 = lshr i32 %88, 7, !dbg !2125
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2125
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2125
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2125
  %90 = getelementptr i8* %84, i32 24, !dbg !2125
  %91 = bitcast i8* %90 to i32*, !dbg !2125
  %bf.clear428 = shl nuw nsw i32 %89, 3, !dbg !2125
  %92 = and i32 %bf.clear428, 8, !dbg !2125
  %93 = load i32* %91, align 4, !dbg !2125
  %94 = and i32 %93, -9, !dbg !2125
  %95 = or i32 %94, %92, !dbg !2125
  store i32 %95, i32* %91, align 4, !dbg !2125
  %96 = load i32* %variables, align 4, !dbg !2126, !tbaa !2059
  %cmp434 = icmp eq i32 %96, 0, !dbg !2126
  br i1 %cmp434, label %land.lhs.true436, label %if.end442, !dbg !2126

land.lhs.true436:                                 ; preds = %if.end424
  %97 = load i32* %79, align 4, !dbg !2126
  %bf.clear438 = and i32 %97, 64, !dbg !2126
  %tobool439 = icmp eq i32 %bf.clear438, 0, !dbg !2126
  br i1 %tobool439, label %if.then440, label %if.end442, !dbg !2126

if.then440:                                       ; preds = %land.lhs.true436
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2127
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2127
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2127
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2127
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2127
  %98 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2127, !tbaa !2050
  %lengths441 = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %98, i32 0, i32 2, !dbg !2127
  store %struct.ngx_array_s* null, %struct.ngx_array_s** %lengths441, align 4, !dbg !2127, !tbaa !2050
  br label %if.end442, !dbg !2129

if.end442:                                        ; preds = %land.lhs.true436, %if.then440, %if.end424
  %99 = load %struct.ngx_array_s** %codes, align 4, !dbg !2130, !tbaa !2050
  %100 = bitcast %struct.ngx_http_script_regex_code_t** %regex to i8*, !dbg !2130
  %call444 = call i8* @ngx_http_script_add_code(%struct.ngx_array_s* %99, i32 8, i8* %100) nounwind, !dbg !2130
  %cmp445 = icmp eq i8* %call444, null, !dbg !2131
  br i1 %cmp445, label %return, label %if.end450, !dbg !2131

if.end450:                                        ; preds = %if.end442
  %code451 = bitcast i8* %call444 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2132
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_regex_end_code, void (%struct.ngx_http_script_engine_t*)** %code451, align 4, !dbg !2132, !tbaa !2050
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2133
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2133
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2133
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2133
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2133
  %101 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2133, !tbaa !2050
  %102 = getelementptr %struct.ngx_http_script_regex_code_t* %101, i32 0, i32 6, !dbg !2133
  %103 = bitcast i8* %102 to i32*, !dbg !2133
  %104 = load i32* %103, align 4, !dbg !2133
  %105 = lshr i32 %104, 2, !dbg !2133
  %bf.clear453 = and i32 %105, 1, !dbg !2133
  %bf.field.offs455 = getelementptr i8* %call444, i32 4, !dbg !2133
  %106 = bitcast i8* %bf.field.offs455 to i32*, !dbg !2133
  %107 = load i32* %106, align 4, !dbg !2133
  %108 = and i32 %107, -2, !dbg !2133
  %109 = or i32 %108, %bf.clear453, !dbg !2133
  store i32 %109, i32* %106, align 4, !dbg !2133
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2134
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2134
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2134
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2134
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2134
  %110 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2134, !tbaa !2050
  %111 = getelementptr %struct.ngx_http_script_regex_code_t* %110, i32 0, i32 6, !dbg !2134
  %112 = bitcast i8* %111 to i32*, !dbg !2134
  %113 = load i32* %112, align 4, !dbg !2134
  %114 = lshr i32 %113, 3, !dbg !2134
  %bf.clear457 = shl nuw nsw i32 %114, 1, !dbg !2134
  %115 = and i32 %bf.clear457, 2, !dbg !2134
  %116 = and i32 %109, -3, !dbg !2134
  %117 = or i32 %115, %116, !dbg !2134
  store i32 %117, i32* %106, align 4, !dbg !2134
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2135
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2135
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2135
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2135
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2135
  %118 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2135, !tbaa !2050
  %119 = getelementptr %struct.ngx_http_script_regex_code_t* %118, i32 0, i32 6, !dbg !2135
  %120 = bitcast i8* %119 to i32*, !dbg !2135
  %121 = load i32* %120, align 4, !dbg !2135
  %122 = lshr i32 %121, 4, !dbg !2135
  %bf.clear461 = shl nuw nsw i32 %122, 2, !dbg !2135
  %123 = and i32 %bf.clear461, 4, !dbg !2135
  %124 = and i32 %117, -5, !dbg !2135
  %125 = or i32 %124, %123, !dbg !2135
  store i32 %125, i32* %106, align 4, !dbg !2135
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2136
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2136
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2136
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2136
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2136
  %126 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2136, !tbaa !2050
  %127 = getelementptr %struct.ngx_http_script_regex_code_t* %126, i32 0, i32 6, !dbg !2136
  %128 = bitcast i8* %127 to i32*, !dbg !2136
  %129 = load i32* %128, align 4, !dbg !2136
  %130 = lshr i32 %129, 5, !dbg !2136
  %bf.clear465 = shl nuw nsw i32 %130, 3, !dbg !2136
  %131 = and i32 %bf.clear465, 8, !dbg !2136
  %132 = and i32 %125, -9, !dbg !2136
  %133 = or i32 %132, %131, !dbg !2136
  store i32 %133, i32* %106, align 4, !dbg !2136
  %tobool468 = icmp eq i32 %last.1, 0, !dbg !2137
  br i1 %tobool468, label %if.end478, label %if.then469, !dbg !2137

if.then469:                                       ; preds = %if.end450
  %134 = load %struct.ngx_array_s** %codes, align 4, !dbg !2138, !tbaa !2050
  %call471 = call i8* @ngx_http_script_add_code(%struct.ngx_array_s* %134, i32 4, i8* %100) nounwind, !dbg !2138
  call void @llvm.dbg.value(metadata !{void (%struct.ngx_http_script_engine_t*)** %135}, i64 0, metadata !1924), !dbg !2138
  %cmp472 = icmp eq i8* %call471, null, !dbg !2140
  br i1 %cmp472, label %return, label %if.end477, !dbg !2140

if.end477:                                        ; preds = %if.then469
  %135 = bitcast i8* %call471 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2138
  store void (%struct.ngx_http_script_engine_t*)* null, void (%struct.ngx_http_script_engine_t*)** %135, align 4, !dbg !2141, !tbaa !2050
  br label %if.end478, !dbg !2142

if.end478:                                        ; preds = %if.end450, %if.end477
  %136 = load %struct.ngx_array_s** %codes, align 4, !dbg !2143, !tbaa !2050
  %elts480 = getelementptr inbounds %struct.ngx_array_s* %136, i32 0, i32 0, !dbg !2143
  %137 = load i8** %elts480, align 4, !dbg !2143, !tbaa !2050
  %nelts482 = getelementptr inbounds %struct.ngx_array_s* %136, i32 0, i32 1, !dbg !2143
  %138 = load i32* %nelts482, align 4, !dbg !2143, !tbaa !2059
  %add.ptr = getelementptr inbounds i8* %137, i32 %138, !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  %139 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2143, !tbaa !2050
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i32, !dbg !2143
  %sub.ptr.rhs.cast = ptrtoint %struct.ngx_http_script_regex_code_t* %139 to i32, !dbg !2143
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2143
  %140 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2143
  br i1 %140, label %cont485, label %ioc_bb484, !dbg !2143

ioc_bb484:                                        ; preds = %if.end478
  %141 = sext i32 %sub.ptr.sub to i64, !dbg !2143
  call void @__ioc_report_conversion(i32 276, i32 19, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %141, i8 1) nounwind, !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  %.pre558 = load %struct.ngx_http_script_regex_code_t** %regex, align 4, !dbg !2143, !tbaa !2050
  br label %cont485, !dbg !2143

cont485:                                          ; preds = %ioc_bb484, %if.end478
  %142 = phi %struct.ngx_http_script_regex_code_t* [ %.pre558, %ioc_bb484 ], [ %139, %if.end478 ]
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_regex_code_t** %regex}, i64 0, metadata !1926), !dbg !2143
  %next = getelementptr inbounds %struct.ngx_http_script_regex_code_t* %142, i32 0, i32 5, !dbg !2143
  store i32 %sub.ptr.sub, i32* %next, align 4, !dbg !2143, !tbaa !2059
  br label %return, !dbg !2144

return:                                           ; preds = %if.then469, %if.end442, %if.end404, %if.end, %entry, %cont485, %cont396
  %retval.0 = phi i8* [ null, %cont485 ], [ inttoptr (i32 -1 to i8*), %cont396 ], [ inttoptr (i32 -1 to i8*), %entry ], [ inttoptr (i32 -1 to i8*), %if.end ], [ inttoptr (i32 -1 to i8*), %if.end404 ], [ inttoptr (i32 -1 to i8*), %if.end442 ], [ inttoptr (i32 -1 to i8*), %if.then469 ]
  ret i8* %retval.0, !dbg !2145
}

define internal i8* @ngx_http_rewrite_return(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  %ccv = alloca %struct.ngx_http_compile_complex_value_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1887), !dbg !2146
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1888), !dbg !2146
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1889), !dbg !2146
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_compile_complex_value_t* %ccv}, metadata !1903), !dbg !2147
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2148
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2148, !tbaa !2050
  %codes = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2148
  %call = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %0, %struct.ngx_array_s** %codes, i32 28) nounwind, !dbg !2148
  %cmp = icmp eq i8* %call, null, !dbg !2149
  br i1 %cmp, label %return, label %if.end, !dbg !2149

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2150
  %1 = load %struct.ngx_array_s** %args, align 4, !dbg !2150, !tbaa !2050
  %elts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 0, !dbg !2150
  %2 = load i8** %elts, align 4, !dbg !2150, !tbaa !2050
  call void @llvm.memset.p0i8.i32(i8* %call, i8 0, i32 28, i32 4, i1 false), !dbg !2151
  %code = bitcast i8* %call to void (%struct.ngx_http_script_engine_t*)**, !dbg !2152
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_return_code, void (%struct.ngx_http_script_engine_t*)** %code, align 4, !dbg !2152, !tbaa !2050
  %arrayidx = getelementptr inbounds i8* %2, i32 8, !dbg !2153
  %data = getelementptr inbounds i8* %2, i32 12, !dbg !2153
  %3 = bitcast i8* %data to i8**, !dbg !2153
  %4 = load i8** %3, align 4, !dbg !2153, !tbaa !2050
  call void @llvm.dbg.value(metadata !{i8* %4}, i64 0, metadata !1892), !dbg !2153
  %len = bitcast i8* %arrayidx to i32*, !dbg !2154
  %5 = load i32* %len, align 4, !dbg !2154, !tbaa !2059
  %call2 = call i32 @ngx_atoi(i8* %4, i32 %5) nounwind, !dbg !2154
  %6 = icmp sgt i32 %call2, -1, !dbg !2154
  br i1 %6, label %cont4, label %ioc_bb3, !dbg !2154

ioc_bb3:                                          ; preds = %if.end
  %7 = sext i32 %call2 to i64, !dbg !2154
  call void @__ioc_report_conversion(i32 296, i32 19, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %7, i8 1) nounwind, !dbg !2154
  br label %cont4, !dbg !2154

cont4:                                            ; preds = %ioc_bb3, %if.end
  %status = getelementptr inbounds i8* %call, i32 4, !dbg !2154
  %8 = bitcast i8* %status to i32*, !dbg !2154
  store i32 %call2, i32* %8, align 4, !dbg !2154, !tbaa !2059
  call void @__ioc_report_conversion(i32 297, i32 37, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2155
  %cmp11 = icmp eq i32 %call2, -1, !dbg !2155
  br i1 %cmp11, label %cont15, label %cont50, !dbg !2155

cont15:                                           ; preds = %cont4
  %9 = load %struct.ngx_array_s** %args, align 4, !dbg !2156, !tbaa !2050
  %nelts = getelementptr inbounds %struct.ngx_array_s* %9, i32 0, i32 1, !dbg !2156
  %10 = load i32* %nelts, align 4, !dbg !2156, !tbaa !2059
  %cmp16 = icmp eq i32 %10, 2, !dbg !2156
  br i1 %cmp16, label %cont20, label %cont42, !dbg !2156

cont20:                                           ; preds = %cont15
  %call21 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str14, i32 0, i32 0), i32 7) nounwind readonly, !dbg !2156
  %cmp22 = icmp eq i32 %call21, 0, !dbg !2156
  br i1 %cmp22, label %cont38, label %cont26, !dbg !2156

cont26:                                           ; preds = %cont20
  %call27 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([9 x i8]* @.str15, i32 0, i32 0), i32 8) nounwind readonly, !dbg !2156
  %cmp28 = icmp eq i32 %call27, 0, !dbg !2156
  br i1 %cmp28, label %cont38, label %cont33, !dbg !2156

cont33:                                           ; preds = %cont26
  %call34 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str16, i32 0, i32 0), i32 7) nounwind readonly, !dbg !2156
  %cmp35 = icmp eq i32 %call34, 0, !dbg !2156
  br i1 %cmp35, label %cont38, label %cont42, !dbg !2156

cont38:                                           ; preds = %cont20, %cont26, %cont33
  store i32 302, i32* %8, align 4, !dbg !2158, !tbaa !2059
  br label %if.end67, !dbg !2160

cont42:                                           ; preds = %cont15, %cont33
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0), i8* %arrayidx) nounwind, !dbg !2161
  br label %return, !dbg !2163

cont50:                                           ; preds = %cont4
  %11 = load i32* %8, align 4, !dbg !2164, !tbaa !2059
  %cmp51 = icmp ugt i32 %11, 999, !dbg !2164
  br i1 %cmp51, label %cont54, label %cont62, !dbg !2164

cont54:                                           ; preds = %cont50
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str17, i32 0, i32 0), i8* %arrayidx) nounwind, !dbg !2166
  br label %return, !dbg !2168

cont62:                                           ; preds = %cont50
  %12 = load %struct.ngx_array_s** %args, align 4, !dbg !2169, !tbaa !2050
  %nelts60 = getelementptr inbounds %struct.ngx_array_s* %12, i32 0, i32 1, !dbg !2169
  %13 = load i32* %nelts60, align 4, !dbg !2169, !tbaa !2059
  %cmp63 = icmp eq i32 %13, 2, !dbg !2169
  br i1 %cmp63, label %return, label %if.end65, !dbg !2169

if.end65:                                         ; preds = %cont62
  %arrayidx66 = getelementptr inbounds i8* %2, i32 16, !dbg !2170
  br label %if.end67

if.end67:                                         ; preds = %if.end65, %cont38
  %v.0.in = phi i8* [ %arrayidx, %cont38 ], [ %arrayidx66, %if.end65 ]
  %v.0 = bitcast i8* %v.0.in to %struct.ngx_str_t*, !dbg !2153
  %14 = bitcast %struct.ngx_http_compile_complex_value_t* %ccv to i8*, !dbg !2171
  call void @llvm.memset.p0i8.i32(i8* %14, i8 0, i32 16, i32 4, i1 false), !dbg !2171
  %cf68 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 0, !dbg !2172
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf68, align 4, !dbg !2172, !tbaa !2050
  %value69 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 1, !dbg !2173
  store %struct.ngx_str_t* %v.0, %struct.ngx_str_t** %value69, align 4, !dbg !2173, !tbaa !2050
  %text = getelementptr inbounds i8* %call, i32 8, !dbg !2174
  %15 = bitcast i8* %text to %struct.ngx_http_complex_value_t*, !dbg !2174
  %complex_value = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 2, !dbg !2174
  store %struct.ngx_http_complex_value_t* %15, %struct.ngx_http_complex_value_t** %complex_value, align 4, !dbg !2174, !tbaa !2050
  %call70 = call i32 @ngx_http_compile_complex_value(%struct.ngx_http_compile_complex_value_t* %ccv) nounwind, !dbg !2175
  %cmp71 = icmp eq i32 %call70, 0, !dbg !2175
  %. = select i1 %cmp71, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2175
  ret i8* %., !dbg !2175

return:                                           ; preds = %cont62, %entry, %cont54, %cont42
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont42 ], [ inttoptr (i32 -1 to i8*), %cont54 ], [ inttoptr (i32 -1 to i8*), %entry ], [ null, %cont62 ]
  ret i8* %retval.0, !dbg !2176
}

define internal i8* @ngx_http_rewrite_break(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1878), !dbg !2177
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1879), !dbg !2177
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1880), !dbg !2177
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2178
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2178, !tbaa !2050
  %codes = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2178
  %call = tail call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %0, %struct.ngx_array_s** %codes, i32 4) nounwind, !dbg !2178
  tail call void @llvm.dbg.value(metadata !{void (%struct.ngx_http_script_engine_t*)** %1}, i64 0, metadata !1883), !dbg !2178
  %cmp = icmp eq i8* %call, null, !dbg !2179
  br i1 %cmp, label %return, label %if.end, !dbg !2179

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to void (%struct.ngx_http_script_engine_t*)**, !dbg !2178
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_break_code, void (%struct.ngx_http_script_engine_t*)** %1, align 4, !dbg !2180, !tbaa !2050
  br label %return, !dbg !2181

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8* [ null, %if.end ], [ inttoptr (i32 -1 to i8*), %entry ]
  ret i8* %retval.0, !dbg !2182
}

define internal i8* @ngx_http_rewrite_if(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  %rc.i = alloca %struct.ngx_regex_compile_t, align 8
  %errstr.i = alloca [1024 x i8], align 1
  %save = alloca %struct.ngx_conf_s, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1760), !dbg !2183
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1761), !dbg !2183
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1762), !dbg !2183
  %0 = bitcast i8* %conf to %struct.ngx_http_rewrite_loc_conf_t*, !dbg !2184
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_rewrite_loc_conf_t* %0}, i64 0, metadata !1763), !dbg !2184
  call void @llvm.dbg.declare(metadata !{%struct.ngx_conf_s* %save}, metadata !1769), !dbg !2185
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2186
  %1 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2186, !tbaa !2050
  %call = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %1, i32 12) nounwind, !dbg !2186
  %cmp = icmp eq i8* %call, null, !dbg !2187
  br i1 %cmp, label %return, label %if.end, !dbg !2187

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2188
  %2 = load i8** %ctx1, align 4, !dbg !2188, !tbaa !2050
  %main_conf = bitcast i8* %2 to i8***, !dbg !2189
  %3 = load i8*** %main_conf, align 4, !dbg !2189, !tbaa !2050
  %main_conf2 = bitcast i8* %call to i8***, !dbg !2189
  store i8** %3, i8*** %main_conf2, align 4, !dbg !2189, !tbaa !2050
  %srv_conf = getelementptr inbounds i8* %2, i32 4, !dbg !2190
  %4 = bitcast i8* %srv_conf to i8***, !dbg !2190
  %5 = load i8*** %4, align 4, !dbg !2190, !tbaa !2050
  %srv_conf3 = getelementptr inbounds i8* %call, i32 4, !dbg !2190
  %6 = bitcast i8* %srv_conf3 to i8***, !dbg !2190
  store i8** %5, i8*** %6, align 4, !dbg !2190, !tbaa !2050
  %7 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2191, !tbaa !2050
  %8 = load i32* @ngx_http_max_module, align 4, !dbg !2191, !tbaa !2059
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4), !dbg !2191
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !2191
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !2191
  br i1 %11, label %ioc_bb5, label %cont6, !dbg !2191

ioc_bb5:                                          ; preds = %if.end
  %12 = zext i32 %8 to i64, !dbg !2191
  call void @__ioc_report_mul_overflow(i32 361, i32 60, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 4, i64 %12, i8 5) nounwind, !dbg !2191
  br label %cont6, !dbg !2191

cont6:                                            ; preds = %if.end, %ioc_bb5
  %call7 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %7, i32 %10) nounwind, !dbg !2191
  %13 = bitcast i8* %call7 to i8**, !dbg !2191
  %loc_conf = getelementptr inbounds i8* %call, i32 8, !dbg !2191
  %14 = bitcast i8* %loc_conf to i8***, !dbg !2191
  store i8** %13, i8*** %14, align 4, !dbg !2191, !tbaa !2050
  %cmp9 = icmp eq i8* %call7, null, !dbg !2192
  br i1 %cmp9, label %return, label %for.cond.preheader, !dbg !2192

for.cond.preheader:                               ; preds = %cont6
  %15 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !2193, !tbaa !2050
  %tobool164 = icmp eq %struct.ngx_module_s* %15, null, !dbg !2193
  br i1 %tobool164, label %for.end, label %cont18, !dbg !2193

cont18:                                           ; preds = %for.cond.preheader, %for.cond.backedge
  %16 = phi %struct.ngx_module_s* [ %27, %for.cond.backedge ], [ %15, %for.cond.preheader ]
  %arrayidx166 = phi %struct.ngx_module_s** [ %arrayidx, %for.cond.backedge ], [ getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), %for.cond.preheader ]
  %i.0165 = phi i32 [ %25, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %type = getelementptr inbounds %struct.ngx_module_s* %16, i32 0, i32 9, !dbg !2195
  %17 = load i32* %type, align 4, !dbg !2195, !tbaa !2059
  %cmp19 = icmp eq i32 %17, 1347703880, !dbg !2195
  br i1 %cmp19, label %if.end21, label %for.inc, !dbg !2195

if.end21:                                         ; preds = %cont18
  %ctx23 = getelementptr inbounds %struct.ngx_module_s* %16, i32 0, i32 7, !dbg !2197
  %18 = load i8** %ctx23, align 4, !dbg !2197, !tbaa !2050
  %create_loc_conf = getelementptr inbounds i8* %18, i32 24, !dbg !2198
  %19 = bitcast i8* %create_loc_conf to i8* (%struct.ngx_conf_s*)**, !dbg !2198
  %20 = load i8* (%struct.ngx_conf_s*)** %19, align 4, !dbg !2198, !tbaa !2050
  %tobool24 = icmp eq i8* (%struct.ngx_conf_s*)* %20, null, !dbg !2198
  br i1 %tobool24, label %for.inc, label %if.then25, !dbg !2198

if.then25:                                        ; preds = %if.end21
  %call27 = call i8* %20(%struct.ngx_conf_s* %cf) nounwind, !dbg !2199
  call void @llvm.dbg.value(metadata !{i8* %call27}, i64 0, metadata !1765), !dbg !2199
  %cmp28 = icmp eq i8* %call27, null, !dbg !2201
  br i1 %cmp28, label %return, label %if.end32, !dbg !2201

if.end32:                                         ; preds = %if.then25
  %21 = load %struct.ngx_module_s** %arrayidx166, align 4, !dbg !2202, !tbaa !2050
  %ctx_index = getelementptr inbounds %struct.ngx_module_s* %21, i32 0, i32 0, !dbg !2202
  %22 = load i32* %ctx_index, align 4, !dbg !2202, !tbaa !2059
  %23 = load i8*** %14, align 4, !dbg !2202, !tbaa !2050
  %arrayidx35 = getelementptr inbounds i8** %23, i32 %22, !dbg !2202
  store i8* %call27, i8** %arrayidx35, align 4, !dbg !2202, !tbaa !2050
  br label %for.inc, !dbg !2203

for.inc:                                          ; preds = %if.end21, %cont18, %if.end32
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0165, i32 1), !dbg !2193
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !2193
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !2193
  br i1 %26, label %ioc_bb37, label %for.cond.backedge, !dbg !2193

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb37
  %arrayidx = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %25, !dbg !2193
  %27 = load %struct.ngx_module_s** %arrayidx, align 4, !dbg !2193, !tbaa !2050
  %tobool = icmp eq %struct.ngx_module_s* %27, null, !dbg !2193
  br i1 %tobool, label %for.cond.for.end_crit_edge, label %cont18, !dbg !2193

ioc_bb37:                                         ; preds = %for.inc
  %28 = zext i32 %i.0165 to i64, !dbg !2193
  call void @__ioc_report_add_overflow(i32 365, i32 32, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %28, i64 1, i8 5) nounwind, !dbg !2193
  br label %for.cond.backedge, !dbg !2193

for.cond.for.end_crit_edge:                       ; preds = %for.cond.backedge
  %.pre = load i8*** %14, align 4, !dbg !2204, !tbaa !2050
  br label %for.end, !dbg !2193

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader
  %29 = phi i8** [ %.pre, %for.cond.for.end_crit_edge ], [ %13, %for.cond.preheader ]
  %30 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2205, !tbaa !2059
  %loc_conf39 = getelementptr inbounds i8* %2, i32 8, !dbg !2205
  %31 = bitcast i8* %loc_conf39 to i8***, !dbg !2205
  %32 = load i8*** %31, align 4, !dbg !2205, !tbaa !2050
  %arrayidx40 = getelementptr inbounds i8** %32, i32 %30, !dbg !2205
  %33 = load i8** %arrayidx40, align 4, !dbg !2205, !tbaa !2050
  %arrayidx42 = getelementptr inbounds i8** %29, i32 %30, !dbg !2204
  %34 = load i8** %arrayidx42, align 4, !dbg !2204, !tbaa !2050
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %39}, i64 0, metadata !1797), !dbg !2204
  %loc_conf44 = getelementptr inbounds i8* %34, i32 24, !dbg !2206
  %35 = bitcast i8* %loc_conf44 to i8***, !dbg !2206
  store i8** %29, i8*** %35, align 4, !dbg !2206, !tbaa !2050
  %36 = bitcast i8* %33 to i64*, !dbg !2207
  %37 = bitcast i8* %34 to i64*, !dbg !2207
  %38 = load i64* %36, align 4, !dbg !2207
  store i64 %38, i64* %37, align 4, !dbg !2207
  %39 = bitcast i8* %34 to %struct.ngx_http_core_loc_conf_s*, !dbg !2204
  %bf.field.offs = getelementptr i8* %34, i32 12, !dbg !2208
  %40 = bitcast i8* %bf.field.offs to i32*, !dbg !2208
  %41 = load i32* %40, align 4, !dbg !2208
  %42 = or i32 %41, 1, !dbg !2208
  store i32 %42, i32* %40, align 4, !dbg !2208
  %locations = getelementptr inbounds i8* %33, i32 328, !dbg !2209
  %43 = bitcast i8* %locations to %struct.ngx_queue_s**, !dbg !2209
  %call48 = call i32 @ngx_http_add_location(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s** %43, %struct.ngx_http_core_loc_conf_s* %39) nounwind, !dbg !2209
  %cmp49 = icmp eq i32 %call48, 0, !dbg !2209
  br i1 %cmp49, label %if.end53, label %return, !dbg !2209

if.end53:                                         ; preds = %for.end
  %44 = bitcast %struct.ngx_regex_compile_t* %rc.i to i8*, !dbg !2210
  call void @llvm.lifetime.start(i64 -1, i8* %44) nounwind, !dbg !2210
  %45 = getelementptr inbounds [1024 x i8]* %errstr.i, i32 0, i32 0, !dbg !2210
  call void @llvm.lifetime.start(i64 -1, i8* %45) nounwind, !dbg !2210
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2212) nounwind, !dbg !2210
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_rewrite_loc_conf_t* %0}, i64 0, metadata !2213) nounwind, !dbg !2210
  call void @llvm.dbg.declare(metadata !{%struct.ngx_regex_compile_t* %rc.i}, metadata !1821) nounwind, !dbg !2214
  call void @llvm.dbg.declare(metadata !{[1024 x i8]* %errstr.i}, metadata !1862) nounwind, !dbg !2215
  %args.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2216
  %46 = load %struct.ngx_array_s** %args.i, align 4, !dbg !2216, !tbaa !2050
  %elts.i = getelementptr inbounds %struct.ngx_array_s* %46, i32 0, i32 0, !dbg !2216
  %47 = load i8** %elts.i, align 4, !dbg !2216, !tbaa !2050
  %48 = bitcast i8* %47 to %struct.ngx_str_t*, !dbg !2216
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %48}, i64 0, metadata !2217) nounwind, !dbg !2216
  %nelts.i = getelementptr inbounds %struct.ngx_array_s* %46, i32 0, i32 1, !dbg !2218
  %49 = load i32* %nelts.i, align 4, !dbg !2218, !tbaa !2059
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %49, i32 1) nounwind, !dbg !2218
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !2218
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !2218
  br i1 %52, label %ioc_bb2.i, label %cont3.i, !dbg !2218

ioc_bb2.i:                                        ; preds = %if.end53
  %53 = zext i32 %49 to i64, !dbg !2218
  call void @__ioc_report_sub_overflow(i32 435, i32 30, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %53, i64 1, i8 5) nounwind, !dbg !2218
  br label %cont3.i, !dbg !2218

cont3.i:                                          ; preds = %ioc_bb2.i, %if.end53
  call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !2219) nounwind, !dbg !2218
  %arrayidx.i = getelementptr inbounds i8* %47, i32 8, !dbg !2220
  %len4.i = bitcast i8* %arrayidx.i to i32*, !dbg !2220
  %54 = load i32* %len4.i, align 4, !dbg !2220, !tbaa !2059
  %cmp.i = icmp eq i32 %54, 0, !dbg !2220
  br i1 %cmp.i, label %cont12.i, label %lor.lhs.false.i, !dbg !2220

lor.lhs.false.i:                                  ; preds = %cont3.i
  %data.i = getelementptr inbounds i8* %47, i32 12, !dbg !2220
  %55 = bitcast i8* %data.i to i8**, !dbg !2220
  %56 = load i8** %55, align 4, !dbg !2220, !tbaa !2050
  %57 = load i8* %56, align 1, !dbg !2220, !tbaa !2051
  %cmp9.i = icmp eq i8 %57, 40, !dbg !2220
  br i1 %cmp9.i, label %cont19.i, label %cont12.i, !dbg !2220

cont12.i:                                         ; preds = %lor.lhs.false.i, %cont3.i
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i32 0, i32 0), i8* %arrayidx.i) nounwind, !dbg !2221
  br label %return, !dbg !2223

cont19.i:                                         ; preds = %lor.lhs.false.i
  %cmp20.i = icmp eq i32 %54, 1, !dbg !2224
  br i1 %cmp20.i, label %if.end33.i, label %cont26.i, !dbg !2224

cont26.i:                                         ; preds = %cont19.i
  call void @llvm.dbg.value(metadata !2077, i64 0, metadata !2225) nounwind, !dbg !2226
  %58 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1) nounwind, !dbg !2228
  %59 = extractvalue { i32, i1 } %58, 0, !dbg !2228
  %60 = extractvalue { i32, i1 } %58, 1, !dbg !2228
  br i1 %60, label %ioc_bb29.i, label %cont30.i, !dbg !2228

ioc_bb29.i:                                       ; preds = %cont26.i
  %61 = zext i32 %54 to i64, !dbg !2228
  call void @__ioc_report_sub_overflow(i32 445, i32 17, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i64 %61, i64 1, i8 5) nounwind, !dbg !2228
  %.pre604.i = load i8** %55, align 4, !dbg !2229, !tbaa !2050
  br label %cont30.i, !dbg !2228

cont30.i:                                         ; preds = %ioc_bb29.i, %cont26.i
  %62 = phi i8* [ %56, %cont26.i ], [ %.pre604.i, %ioc_bb29.i ]
  store i32 %59, i32* %len4.i, align 4, !dbg !2228, !tbaa !2059
  %incdec.ptr.i = getelementptr inbounds i8* %62, i32 1, !dbg !2229
  store i8* %incdec.ptr.i, i8** %55, align 4, !dbg !2229, !tbaa !2050
  br label %if.end33.i

if.end33.i:                                       ; preds = %cont30.i, %cont19.i
  %cur.0.i = phi i32 [ 1, %cont30.i ], [ 2, %cont19.i ]
  %arrayidx34.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %51, !dbg !2230
  %len35.i = getelementptr inbounds %struct.ngx_str_t* %arrayidx34.i, i32 0, i32 0, !dbg !2230
  %63 = load i32* %len35.i, align 4, !dbg !2230, !tbaa !2059
  %cmp38.i = icmp eq i32 %63, 0, !dbg !2230
  br i1 %cmp38.i, label %cont55.i, label %lor.lhs.false40.i, !dbg !2230

lor.lhs.false40.i:                                ; preds = %if.end33.i
  %64 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %63, i32 1) nounwind, !dbg !2230
  %65 = extractvalue { i32, i1 } %64, 0, !dbg !2230
  %66 = extractvalue { i32, i1 } %64, 1, !dbg !2230
  br i1 %66, label %ioc_bb45.i, label %cont46.i, !dbg !2230

ioc_bb45.i:                                       ; preds = %lor.lhs.false40.i
  %67 = zext i32 %63 to i64, !dbg !2230
  call void @__ioc_report_sub_overflow(i32 448, i32 63, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %67, i64 1, i8 5) nounwind, !dbg !2230
  br label %cont46.i, !dbg !2230

cont46.i:                                         ; preds = %ioc_bb45.i, %lor.lhs.false40.i
  %data48.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %51, i32 1, !dbg !2230
  %68 = load i8** %data48.i, align 4, !dbg !2230, !tbaa !2050
  %arrayidx49.i = getelementptr inbounds i8* %68, i32 %65, !dbg !2230
  %69 = load i8* %arrayidx49.i, align 1, !dbg !2230, !tbaa !2051
  %cmp51.i = icmp eq i8 %69, 41, !dbg !2230
  br i1 %cmp51.i, label %cont63.i, label %cont55.i, !dbg !2230

cont55.i:                                         ; preds = %cont46.i, %if.end33.i
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %arrayidx34.i) nounwind, !dbg !2231
  br label %return, !dbg !2233

cont63.i:                                         ; preds = %cont46.i
  %70 = load i32* %len35.i, align 4, !dbg !2234, !tbaa !2059
  %cmp64.i = icmp eq i32 %70, 1, !dbg !2234
  br i1 %cmp64.i, label %if.then66.i, label %if.else69.i, !dbg !2234

if.then66.i:                                      ; preds = %cont63.i
  %71 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %51, i32 1) nounwind, !dbg !2235
  %72 = extractvalue { i32, i1 } %71, 0, !dbg !2235
  %73 = extractvalue { i32, i1 } %71, 1, !dbg !2235
  br i1 %73, label %ioc_bb67.i, label %if.end81.i, !dbg !2235

ioc_bb67.i:                                       ; preds = %if.then66.i
  %74 = zext i32 %51 to i64, !dbg !2235
  call void @__ioc_report_sub_overflow(i32 453, i32 9, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i64 %74, i64 1, i8 5) nounwind, !dbg !2235
  br label %if.end81.i, !dbg !2235

if.else69.i:                                      ; preds = %cont63.i
  %75 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %70, i32 1) nounwind, !dbg !2237
  %76 = extractvalue { i32, i1 } %75, 0, !dbg !2237
  %77 = extractvalue { i32, i1 } %75, 1, !dbg !2237
  br i1 %77, label %ioc_bb72.i, label %cont73.i, !dbg !2237

ioc_bb72.i:                                       ; preds = %if.else69.i
  %78 = zext i32 %70 to i64, !dbg !2237
  call void @__ioc_report_sub_overflow(i32 456, i32 20, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i64 %78, i64 1, i8 5) nounwind, !dbg !2237
  %.pre603.i = load i8** %data48.i, align 4, !dbg !2239, !tbaa !2050
  br label %cont73.i, !dbg !2237

cont73.i:                                         ; preds = %ioc_bb72.i, %if.else69.i
  %79 = phi i8* [ %68, %if.else69.i ], [ %.pre603.i, %ioc_bb72.i ]
  store i32 %76, i32* %len35.i, align 4, !dbg !2237, !tbaa !2059
  %arrayidx80.i = getelementptr inbounds i8* %79, i32 %76, !dbg !2239
  store i8 0, i8* %arrayidx80.i, align 1, !dbg !2239, !tbaa !2051
  br label %if.end81.i

if.end81.i:                                       ; preds = %cont73.i, %ioc_bb67.i, %if.then66.i
  %last.0.i = phi i32 [ %51, %cont73.i ], [ %72, %if.then66.i ], [ %72, %ioc_bb67.i ]
  %arrayidx82.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %cur.0.i, !dbg !2240
  %len83.i = getelementptr inbounds %struct.ngx_str_t* %arrayidx82.i, i32 0, i32 0, !dbg !2240
  %80 = load i32* %len83.i, align 4, !dbg !2240, !tbaa !2059
  call void @llvm.dbg.value(metadata !{i32 %80}, i64 0, metadata !2241) nounwind, !dbg !2240
  %data85.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %cur.0.i, i32 1, !dbg !2242
  %81 = load i8** %data85.i, align 4, !dbg !2242, !tbaa !2050
  call void @llvm.dbg.value(metadata !{i8* %81}, i64 0, metadata !2243) nounwind, !dbg !2242
  %cmp88.i = icmp ugt i32 %80, 1, !dbg !2244
  br i1 %cmp88.i, label %land.lhs.true.i, label %cont300.i, !dbg !2244

land.lhs.true.i:                                  ; preds = %if.end81.i
  %82 = load i8* %81, align 1, !dbg !2244, !tbaa !2051
  %cmp92.i = icmp eq i8 %82, 36, !dbg !2244
  br i1 %cmp92.i, label %if.then94.i, label %cont300.i, !dbg !2244

if.then94.i:                                      ; preds = %land.lhs.true.i
  %cmp95.i = icmp eq i32 %cur.0.i, %last.0.i, !dbg !2245
  %83 = add nuw i32 %cur.0.i, 2, !dbg !2245
  %cmp102.i = icmp eq i32 %83, %last.0.i, !dbg !2245
  %or.cond.i = or i1 %cmp95.i, %cmp102.i, !dbg !2245
  br i1 %or.cond.i, label %if.end110.i, label %cont106.i, !dbg !2245

cont106.i:                                        ; preds = %if.then94.i
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %arrayidx82.i) nounwind, !dbg !2247
  br label %return, !dbg !2249

if.end110.i:                                      ; preds = %if.then94.i
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2250) nounwind, !dbg !2252
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_rewrite_loc_conf_t* %0}, i64 0, metadata !2253) nounwind, !dbg !2252
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %arrayidx82.i}, i64 0, metadata !2254) nounwind, !dbg !2252
  %84 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %80, i32 1) nounwind, !dbg !2255
  %85 = extractvalue { i32, i1 } %84, 0, !dbg !2255
  %86 = extractvalue { i32, i1 } %84, 1, !dbg !2255
  br i1 %86, label %ioc_bb.i.i, label %cont.i.i, !dbg !2255

ioc_bb.i.i:                                       ; preds = %if.end110.i
  %87 = zext i32 %80 to i64, !dbg !2255
  call void @__ioc_report_sub_overflow(i32 584, i32 15, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i64 %87, i64 1, i8 5) nounwind, !dbg !2255
  %.pre.i = load i8** %data85.i, align 4, !dbg !2256, !tbaa !2050
  br label %cont.i.i, !dbg !2255

cont.i.i:                                         ; preds = %ioc_bb.i.i, %if.end110.i
  %88 = phi i8* [ %.pre.i, %ioc_bb.i.i ], [ %81, %if.end110.i ]
  store i32 %85, i32* %len83.i, align 4, !dbg !2255, !tbaa !2059
  %incdec.ptr.i.i = getelementptr inbounds i8* %88, i32 1, !dbg !2256
  store i8* %incdec.ptr.i.i, i8** %data85.i, align 4, !dbg !2256, !tbaa !2050
  %call.i.i = call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %arrayidx82.i) nounwind, !dbg !2257
  call void @llvm.dbg.value(metadata !{i32 %call.i.i}, i64 0, metadata !2258) nounwind, !dbg !2257
  %cmp.i.i = icmp eq i32 %call.i.i, -1, !dbg !2259
  br i1 %cmp.i.i, label %return, label %if.end.i.i, !dbg !2259

if.end.i.i:                                       ; preds = %cont.i.i
  %89 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2260, !tbaa !2050
  %codes.i.i = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2260
  %call5.i.i = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %89, %struct.ngx_array_s** %codes.i.i, i32 8) nounwind, !dbg !2260
  %cmp6.i.i = icmp eq i8* %call5.i.i, null, !dbg !2261
  br i1 %cmp6.i.i, label %return, label %if.end10.i.i, !dbg !2261

if.end10.i.i:                                     ; preds = %if.end.i.i
  %code.i.i = bitcast i8* %call5.i.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2262
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_var_code, void (%struct.ngx_http_script_engine_t*)** %code.i.i, align 4, !dbg !2262, !tbaa !2050
  %90 = icmp sgt i32 %call.i.i, -1, !dbg !2263
  br i1 %90, label %if.end117.i, label %ioc_bb11.i.i, !dbg !2263

ioc_bb11.i.i:                                     ; preds = %if.end10.i.i
  %91 = sext i32 %call.i.i to i64, !dbg !2263
  call void @__ioc_report_conversion(i32 595, i32 23, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %91, i8 1) nounwind, !dbg !2263
  br label %if.end117.i, !dbg !2263

if.end117.i:                                      ; preds = %ioc_bb11.i.i, %if.end10.i.i
  %index13.i.i = getelementptr inbounds i8* %call5.i.i, i32 4, !dbg !2263
  %92 = bitcast i8* %index13.i.i to i32*, !dbg !2263
  store i32 %call.i.i, i32* %92, align 4, !dbg !2263, !tbaa !2059
  br i1 %cmp95.i, label %if.end59, label %if.end121.i, !dbg !2264

if.end121.i:                                      ; preds = %if.end117.i
  %93 = add nuw i32 %cur.0.i, 1, !dbg !2265
  call void @llvm.dbg.value(metadata !{i32 %93}, i64 0, metadata !2225) nounwind, !dbg !2265
  %arrayidx124.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %93, !dbg !2266
  %len125.i = getelementptr inbounds %struct.ngx_str_t* %arrayidx124.i, i32 0, i32 0, !dbg !2266
  %94 = load i32* %len125.i, align 4, !dbg !2266, !tbaa !2059
  call void @llvm.dbg.value(metadata !{i32 %94}, i64 0, metadata !2241) nounwind, !dbg !2266
  %data127.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %93, i32 1, !dbg !2267
  %95 = load i8** %data127.i, align 4, !dbg !2267, !tbaa !2050
  call void @llvm.dbg.value(metadata !{i8* %95}, i64 0, metadata !2243) nounwind, !dbg !2267
  switch i32 %94, label %cont294.i [
    i32 1, label %land.lhs.true132.i
    i32 2, label %land.lhs.true158.i
    i32 3, label %land.lhs.true231.i
  ], !dbg !2268

land.lhs.true132.i:                               ; preds = %if.end121.i
  %96 = load i8* %95, align 1, !dbg !2268, !tbaa !2051
  switch i8 %96, label %cont294.i [
    i8 61, label %if.then137.i
    i8 126, label %if.then246.i
  ], !dbg !2268

if.then137.i:                                     ; preds = %land.lhs.true132.i
  %arrayidx138.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %last.0.i, !dbg !2269
  %call139.i = call fastcc i8* @ngx_http_rewrite_value(%struct.ngx_conf_s* %cf, %struct.ngx_http_rewrite_loc_conf_t* %0, %struct.ngx_str_t* %arrayidx138.i) nounwind, !dbg !2269
  %cmp140.i = icmp eq i8* %call139.i, null, !dbg !2269
  br i1 %cmp140.i, label %if.end145.i, label %return, !dbg !2269

if.end145.i:                                      ; preds = %if.then137.i
  %97 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2271, !tbaa !2050
  %call146.i = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %97, %struct.ngx_array_s** %codes.i.i, i32 4) nounwind, !dbg !2271
  %cmp147.i = icmp eq i8* %call146.i, null, !dbg !2272
  br i1 %cmp147.i, label %return, label %if.end152.i, !dbg !2272

if.end152.i:                                      ; preds = %if.end145.i
  %98 = bitcast i8* %call146.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2271
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_equal_code, void (%struct.ngx_http_script_engine_t*)** %98, align 4, !dbg !2273, !tbaa !2050
  br label %if.end59, !dbg !2274

land.lhs.true158.i:                               ; preds = %if.end121.i
  %99 = load i8* %95, align 1, !dbg !2275, !tbaa !2051
  switch i8 %99, label %cont294.i [
    i8 33, label %land.lhs.true163.i
    i8 126, label %land.lhs.true206.i
  ], !dbg !2275

land.lhs.true163.i:                               ; preds = %land.lhs.true158.i
  %arrayidx164.i = getelementptr inbounds i8* %95, i32 1, !dbg !2275
  %100 = load i8* %arrayidx164.i, align 1, !dbg !2275, !tbaa !2051
  switch i8 %100, label %cont294.i [
    i8 61, label %if.then168.i
    i8 126, label %if.then246.i
  ], !dbg !2275

if.then168.i:                                     ; preds = %land.lhs.true163.i
  %arrayidx169.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %last.0.i, !dbg !2276
  %call170.i = call fastcc i8* @ngx_http_rewrite_value(%struct.ngx_conf_s* %cf, %struct.ngx_http_rewrite_loc_conf_t* %0, %struct.ngx_str_t* %arrayidx169.i) nounwind, !dbg !2276
  %cmp171.i = icmp eq i8* %call170.i, null, !dbg !2276
  br i1 %cmp171.i, label %if.end176.i, label %return, !dbg !2276

if.end176.i:                                      ; preds = %if.then168.i
  %101 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2278, !tbaa !2050
  %call179.i = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %101, %struct.ngx_array_s** %codes.i.i, i32 4) nounwind, !dbg !2278
  %cmp180.i = icmp eq i8* %call179.i, null, !dbg !2279
  br i1 %cmp180.i, label %return, label %if.end185.i, !dbg !2279

if.end185.i:                                      ; preds = %if.end176.i
  %102 = bitcast i8* %call179.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2278
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_not_equal_code, void (%struct.ngx_http_script_engine_t*)** %102, align 4, !dbg !2280, !tbaa !2050
  br label %if.end59, !dbg !2281

land.lhs.true206.i:                               ; preds = %land.lhs.true158.i
  %arrayidx207.i = getelementptr inbounds i8* %95, i32 1, !dbg !2282
  %103 = load i8* %arrayidx207.i, align 1, !dbg !2282, !tbaa !2051
  %cmp209.i = icmp eq i8 %103, 42, !dbg !2282
  br i1 %cmp209.i, label %if.then246.i, label %cont294.i, !dbg !2282

land.lhs.true231.i:                               ; preds = %if.end121.i
  %.pre605.i = load i8* %95, align 1, !dbg !2282, !tbaa !2051
  %cmp234.i = icmp eq i8 %.pre605.i, 33, !dbg !2282
  br i1 %cmp234.i, label %land.lhs.true236.i, label %cont294.i, !dbg !2282

land.lhs.true236.i:                               ; preds = %land.lhs.true231.i
  %arrayidx237.i.phi.trans.insert = getelementptr inbounds i8* %95, i32 1
  %.pre167 = load i8* %arrayidx237.i.phi.trans.insert, align 1, !dbg !2282, !tbaa !2051
  %cmp239.i = icmp eq i8 %.pre167, 126, !dbg !2282
  br i1 %cmp239.i, label %land.lhs.true241.i, label %cont294.i, !dbg !2282

land.lhs.true241.i:                               ; preds = %land.lhs.true236.i
  %arrayidx242.i = getelementptr inbounds i8* %95, i32 2, !dbg !2282
  %104 = load i8* %arrayidx242.i, align 1, !dbg !2282, !tbaa !2051
  %cmp244.i = icmp eq i8 %104, 42, !dbg !2282
  br i1 %cmp244.i, label %if.then246.i, label %cont294.i, !dbg !2282

if.then246.i:                                     ; preds = %land.lhs.true163.i, %land.lhs.true241.i, %land.lhs.true206.i, %land.lhs.true132.i
  %105 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2283, !tbaa !2050
  %call249.i = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %105, %struct.ngx_array_s** %codes.i.i, i32 36) nounwind, !dbg !2283
  %cmp250.i = icmp eq i8* %call249.i, null, !dbg !2285
  br i1 %cmp250.i, label %return, label %if.end255.i, !dbg !2285

if.end255.i:                                      ; preds = %if.then246.i
  call void @llvm.memset.p0i8.i32(i8* %call249.i, i8 0, i32 36, i32 4, i1 false) nounwind, !dbg !2286
  call void @llvm.memset.p0i8.i32(i8* %44, i8 0, i32 44, i32 8, i1 false) nounwind, !dbg !2287
  %arrayidx256.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %last.0.i, !dbg !2288
  %106 = bitcast %struct.ngx_str_t* %arrayidx256.i to i64*, !dbg !2288
  %107 = bitcast %struct.ngx_regex_compile_t* %rc.i to i64*, !dbg !2288
  %108 = load i64* %106, align 4, !dbg !2288
  store i64 %108, i64* %107, align 8, !dbg !2288
  %109 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %94, i32 1) nounwind, !dbg !2289
  %110 = extractvalue { i32, i1 } %109, 0, !dbg !2289
  %111 = extractvalue { i32, i1 } %109, 1, !dbg !2289
  br i1 %111, label %ioc_bb259.i, label %cont260.i, !dbg !2289

ioc_bb259.i:                                      ; preds = %if.end255.i
  %112 = zext i32 %94 to i64, !dbg !2289
  call void @__ioc_report_sub_overflow(i32 505, i32 27, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @2, i32 0, i32 0), i64 %112, i64 1, i8 5) nounwind, !dbg !2289
  br label %cont260.i, !dbg !2289

cont260.i:                                        ; preds = %ioc_bb259.i, %if.end255.i
  %arrayidx261.i = getelementptr inbounds i8* %95, i32 %110, !dbg !2289
  %113 = load i8* %arrayidx261.i, align 1, !dbg !2289, !tbaa !2051
  %cmp263.i = icmp eq i8 %113, 42, !dbg !2289
  %cond.i = zext i1 %cmp263.i to i32, !dbg !2289
  %options.i = getelementptr inbounds %struct.ngx_regex_compile_t* %rc.i, i32 0, i32 2, !dbg !2289
  store i32 %cond.i, i32* %options.i, align 4, !dbg !2289, !tbaa !2059
  %len267.i = getelementptr inbounds %struct.ngx_regex_compile_t* %rc.i, i32 0, i32 8, i32 0, !dbg !2290
  store i32 1024, i32* %len267.i, align 4, !dbg !2290, !tbaa !2059
  %data269.i = getelementptr inbounds %struct.ngx_regex_compile_t* %rc.i, i32 0, i32 8, i32 1, !dbg !2291
  store i8* %45, i8** %data269.i, align 4, !dbg !2291, !tbaa !2050
  %call270.i = call %struct.ngx_http_regex_t* @ngx_http_regex_compile(%struct.ngx_conf_s* %cf, %struct.ngx_regex_compile_t* %rc.i) nounwind, !dbg !2292
  %regex271.i = getelementptr inbounds i8* %call249.i, i32 4, !dbg !2292
  %114 = bitcast i8* %regex271.i to %struct.ngx_http_regex_t**, !dbg !2292
  store %struct.ngx_http_regex_t* %call270.i, %struct.ngx_http_regex_t** %114, align 4, !dbg !2292, !tbaa !2050
  %cmp273.i = icmp eq %struct.ngx_http_regex_t* %call270.i, null, !dbg !2293
  br i1 %cmp273.i, label %return, label %if.end278.i, !dbg !2293

if.end278.i:                                      ; preds = %cont260.i
  %code279.i = bitcast i8* %call249.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2294
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_regex_start_code, void (%struct.ngx_http_script_engine_t*)** %code279.i, align 4, !dbg !2294, !tbaa !2050
  %next.i = getelementptr inbounds i8* %call249.i, i32 20, !dbg !2295
  %115 = bitcast i8* %next.i to i32*, !dbg !2295
  store i32 36, i32* %115, align 4, !dbg !2295, !tbaa !2059
  %bf.field.offs.i = getelementptr i8* %call249.i, i32 24, !dbg !2296
  %116 = bitcast i8* %bf.field.offs.i to i32*, !dbg !2296
  %117 = load i32* %116, align 4, !dbg !2296
  %118 = or i32 %117, 1, !dbg !2296
  store i32 %118, i32* %116, align 4, !dbg !2296
  %119 = load i8* %95, align 1, !dbg !2297, !tbaa !2051
  %cmp284.i = icmp eq i8 %119, 33, !dbg !2297
  br i1 %cmp284.i, label %cont288.i, label %if.end290.i, !dbg !2297

cont288.i:                                        ; preds = %if.end278.i
  %120 = or i32 %117, 3, !dbg !2298
  store i32 %120, i32* %116, align 4, !dbg !2298
  br label %if.end290.i, !dbg !2300

if.end290.i:                                      ; preds = %cont288.i, %if.end278.i
  %name.i = getelementptr inbounds i8* %call249.i, i32 28, !dbg !2301
  %121 = bitcast i8* %name.i to i64*, !dbg !2301
  %122 = load i64* %106, align 4, !dbg !2301
  store i64 %122, i64* %121, align 4, !dbg !2301
  br label %if.end59, !dbg !2302

cont294.i:                                        ; preds = %land.lhs.true163.i, %land.lhs.true132.i, %land.lhs.true158.i, %land.lhs.true206.i, %land.lhs.true241.i, %land.lhs.true236.i, %land.lhs.true231.i, %if.end121.i
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([29 x i8]* @.str13, i32 0, i32 0), %struct.ngx_str_t* %arrayidx124.i) nounwind, !dbg !2303
  br label %return, !dbg !2304

cont300.i:                                        ; preds = %land.lhs.true.i, %if.end81.i
  switch i32 %80, label %cont451.i [
    i32 2, label %land.lhs.true303.i
    i32 3, label %land.lhs.true313.i
  ], !dbg !2305

land.lhs.true303.i:                               ; preds = %cont300.i
  %123 = load i8* %81, align 1, !dbg !2305, !tbaa !2051
  %cmp306.i = icmp eq i8 %123, 45, !dbg !2305
  br i1 %cmp306.i, label %cont325.i, label %cont451.i, !dbg !2305

land.lhs.true313.i:                               ; preds = %cont300.i
  %124 = load i8* %81, align 1, !dbg !2305, !tbaa !2051
  %cmp316.i = icmp eq i8 %124, 33, !dbg !2305
  br i1 %cmp316.i, label %land.lhs.true318.i, label %cont451.i, !dbg !2305

land.lhs.true318.i:                               ; preds = %land.lhs.true313.i
  %arrayidx319.i = getelementptr inbounds i8* %81, i32 1, !dbg !2305
  %125 = load i8* %arrayidx319.i, align 1, !dbg !2305, !tbaa !2051
  %cmp321.i = icmp eq i8 %125, 45, !dbg !2305
  br i1 %cmp321.i, label %cont325.i, label %cont451.i, !dbg !2305

cont325.i:                                        ; preds = %land.lhs.true318.i, %land.lhs.true303.i
  %126 = add nuw i32 %cur.0.i, 1, !dbg !2306
  %cmp328.i = icmp eq i32 %126, %last.0.i, !dbg !2306
  br i1 %cmp328.i, label %cont338.i, label %cont332.i, !dbg !2306

cont332.i:                                        ; preds = %cont325.i
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %arrayidx82.i) nounwind, !dbg !2308
  br label %return, !dbg !2310

cont338.i:                                        ; preds = %cont325.i
  %arrayidx339.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %last.0.i, !dbg !2311
  %len340.i = getelementptr inbounds %struct.ngx_str_t* %arrayidx339.i, i32 0, i32 0, !dbg !2311
  %127 = load i32* %len340.i, align 4, !dbg !2311, !tbaa !2059
  %data342.i = getelementptr inbounds %struct.ngx_str_t* %48, i32 %last.0.i, i32 1, !dbg !2311
  %128 = load i8** %data342.i, align 4, !dbg !2311, !tbaa !2050
  %arrayidx343.i = getelementptr inbounds i8* %128, i32 %127, !dbg !2311
  store i8 0, i8* %arrayidx343.i, align 1, !dbg !2311, !tbaa !2051
  %129 = load i32* %len340.i, align 4, !dbg !2312, !tbaa !2059
  %130 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %129, i32 1) nounwind, !dbg !2312
  %131 = extractvalue { i32, i1 } %130, 0, !dbg !2312
  %132 = extractvalue { i32, i1 } %130, 1, !dbg !2312
  br i1 %132, label %ioc_bb346.i, label %cont347.i, !dbg !2312

ioc_bb346.i:                                      ; preds = %cont338.i
  %133 = zext i32 %129 to i64, !dbg !2312
  call void @__ioc_report_add_overflow(i32 530, i32 20, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %133, i64 1, i8 5) nounwind, !dbg !2312
  br label %cont347.i, !dbg !2312

cont347.i:                                        ; preds = %ioc_bb346.i, %cont338.i
  store i32 %131, i32* %len340.i, align 4, !dbg !2312, !tbaa !2059
  %call349.i = call fastcc i8* @ngx_http_rewrite_value(%struct.ngx_conf_s* %cf, %struct.ngx_http_rewrite_loc_conf_t* %0, %struct.ngx_str_t* %arrayidx339.i) nounwind, !dbg !2313
  %cmp350.i = icmp eq i8* %call349.i, null, !dbg !2313
  br i1 %cmp350.i, label %if.end355.i, label %return, !dbg !2313

if.end355.i:                                      ; preds = %cont347.i
  %134 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2314, !tbaa !2050
  %codes357.i = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2314
  %call358.i = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %134, %struct.ngx_array_s** %codes357.i, i32 8) nounwind, !dbg !2314
  %cmp359.i = icmp eq i8* %call358.i, null, !dbg !2315
  br i1 %cmp359.i, label %return, label %if.end364.i, !dbg !2315

if.end364.i:                                      ; preds = %if.end355.i
  %code365.i = bitcast i8* %call358.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2316
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_file_code, void (%struct.ngx_http_script_engine_t*)** %code365.i, align 4, !dbg !2316, !tbaa !2050
  %arrayidx366.i = getelementptr inbounds i8* %81, i32 1, !dbg !2317
  %135 = load i8* %arrayidx366.i, align 1, !dbg !2317, !tbaa !2051
  switch i8 %135, label %if.end400.i [
    i8 102, label %cont372.i
    i8 100, label %cont380.i
    i8 101, label %cont389.i
    i8 120, label %cont398.i
  ], !dbg !2317

cont372.i:                                        ; preds = %if.end364.i
  %op.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2318
  %136 = bitcast i8* %op.i to i32*, !dbg !2318
  store i32 0, i32* %136, align 4, !dbg !2318, !tbaa !2059
  br label %if.end59, !dbg !2320

cont380.i:                                        ; preds = %if.end364.i
  %op381.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2321
  %137 = bitcast i8* %op381.i to i32*, !dbg !2321
  store i32 2, i32* %137, align 4, !dbg !2321, !tbaa !2059
  br label %if.end59, !dbg !2323

cont389.i:                                        ; preds = %if.end364.i
  %op390.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2324
  %138 = bitcast i8* %op390.i to i32*, !dbg !2324
  store i32 4, i32* %138, align 4, !dbg !2324, !tbaa !2059
  br label %if.end59, !dbg !2326

cont398.i:                                        ; preds = %if.end364.i
  %op399.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2327
  %139 = bitcast i8* %op399.i to i32*, !dbg !2327
  store i32 6, i32* %139, align 4, !dbg !2327, !tbaa !2059
  br label %if.end59, !dbg !2329

if.end400.i:                                      ; preds = %if.end364.i
  %140 = load i8* %81, align 1, !dbg !2330, !tbaa !2051
  %cmp403.i = icmp eq i8 %140, 33, !dbg !2330
  br i1 %cmp403.i, label %if.then405.i, label %cont444.i, !dbg !2330

if.then405.i:                                     ; preds = %if.end400.i
  %arrayidx406.i = getelementptr inbounds i8* %81, i32 2, !dbg !2331
  %141 = load i8* %arrayidx406.i, align 1, !dbg !2331, !tbaa !2051
  switch i8 %141, label %cont444.i [
    i8 102, label %cont412.i
    i8 100, label %cont421.i
    i8 101, label %cont430.i
    i8 120, label %cont439.i
  ], !dbg !2331

cont412.i:                                        ; preds = %if.then405.i
  %op413.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2333
  %142 = bitcast i8* %op413.i to i32*, !dbg !2333
  store i32 1, i32* %142, align 4, !dbg !2333, !tbaa !2059
  br label %if.end59, !dbg !2335

cont421.i:                                        ; preds = %if.then405.i
  %op422.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2336
  %143 = bitcast i8* %op422.i to i32*, !dbg !2336
  store i32 3, i32* %143, align 4, !dbg !2336, !tbaa !2059
  br label %if.end59, !dbg !2338

cont430.i:                                        ; preds = %if.then405.i
  %op431.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2339
  %144 = bitcast i8* %op431.i to i32*, !dbg !2339
  store i32 5, i32* %144, align 4, !dbg !2339, !tbaa !2059
  br label %if.end59, !dbg !2341

cont439.i:                                        ; preds = %if.then405.i
  %op440.i = getelementptr inbounds i8* %call358.i, i32 4, !dbg !2342
  %145 = bitcast i8* %op440.i to i32*, !dbg !2342
  store i32 7, i32* %145, align 4, !dbg !2342, !tbaa !2059
  br label %if.end59, !dbg !2344

cont444.i:                                        ; preds = %if.then405.i, %if.end400.i
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %arrayidx82.i) nounwind, !dbg !2345
  br label %return, !dbg !2346

cont451.i:                                        ; preds = %land.lhs.true318.i, %land.lhs.true313.i, %land.lhs.true303.i, %cont300.i
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %arrayidx82.i) nounwind, !dbg !2347
  br label %return, !dbg !2348

if.end59:                                         ; preds = %if.end152.i, %if.end185.i, %if.end290.i, %cont372.i, %cont380.i, %cont389.i, %cont398.i, %cont412.i, %cont421.i, %cont430.i, %cont439.i, %if.end117.i
  call void @llvm.lifetime.end(i64 -1, i8* %44) nounwind, !dbg !2349
  call void @llvm.lifetime.end(i64 -1, i8* %45) nounwind, !dbg !2349
  %codes = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2350
  %146 = load %struct.ngx_array_s** %codes, align 4, !dbg !2350, !tbaa !2050
  %call60 = call i8* @ngx_array_push_n(%struct.ngx_array_s* %146, i32 12) nounwind, !dbg !2350
  %cmp61 = icmp eq i8* %call60, null, !dbg !2351
  br i1 %cmp61, label %return, label %if.end65, !dbg !2351

if.end65:                                         ; preds = %if.end59
  %code = bitcast i8* %call60 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2352
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_if_code, void (%struct.ngx_http_script_engine_t*)** %code, align 4, !dbg !2352, !tbaa !2050
  %147 = load %struct.ngx_array_s** %codes, align 4, !dbg !2353, !tbaa !2050
  %elts67 = getelementptr inbounds %struct.ngx_array_s* %147, i32 0, i32 0, !dbg !2353
  %148 = load i8** %elts67, align 4, !dbg !2353, !tbaa !2050
  call void @llvm.dbg.value(metadata !{i8* %148}, i64 0, metadata !1767), !dbg !2353
  %149 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_rewrite_module, i32 0, i32 0), align 4, !dbg !2354, !tbaa !2059
  %150 = load i8*** %14, align 4, !dbg !2354, !tbaa !2050
  %arrayidx69 = getelementptr inbounds i8** %150, i32 %149, !dbg !2354
  %151 = load i8** %arrayidx69, align 4, !dbg !2354, !tbaa !2050
  %codes71 = bitcast i8* %151 to %struct.ngx_array_s**, !dbg !2355
  store %struct.ngx_array_s* %147, %struct.ngx_array_s** %codes71, align 4, !dbg !2355, !tbaa !2050
  %152 = bitcast %struct.ngx_conf_s* %save to i8*, !dbg !2356
  %153 = bitcast %struct.ngx_conf_s* %cf to i8*, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %152, i8* %153, i32 48, i32 4, i1 false), !dbg !2356, !tbaa.struct !2357
  store i8* %call, i8** %ctx1, align 4, !dbg !2358, !tbaa !2050
  %len = bitcast i8* %33 to i32*, !dbg !2359
  %154 = load i32* %len, align 4, !dbg !2359, !tbaa !2059
  %cmp76 = icmp eq i32 %154, 0, !dbg !2359
  br i1 %cmp76, label %if.then77, label %if.else, !dbg !2359

if.then77:                                        ; preds = %if.end65
  %loc_conf78 = getelementptr inbounds i8* %call60, i32 8, !dbg !2360
  %155 = bitcast i8* %loc_conf78 to i8***, !dbg !2360
  store i8** null, i8*** %155, align 4, !dbg !2360, !tbaa !2050
  %cmd_type = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 9, !dbg !2362
  store i32 536870912, i32* %cmd_type, align 4, !dbg !2362, !tbaa !2059
  br label %if.end86, !dbg !2363

if.else:                                          ; preds = %if.end65
  %156 = load i8*** %14, align 4, !dbg !2364, !tbaa !2050
  %loc_conf82 = getelementptr inbounds i8* %call60, i32 8, !dbg !2364
  %157 = bitcast i8* %loc_conf82 to i8***, !dbg !2364
  store i8** %156, i8*** %157, align 4, !dbg !2364, !tbaa !2050
  %cmd_type85 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 9, !dbg !2366
  store i32 1073741824, i32* %cmd_type85, align 4, !dbg !2366, !tbaa !2059
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then77
  %call87 = call i8* @ngx_conf_parse(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* null) nounwind, !dbg !2367
  call void @llvm.dbg.value(metadata !{i8* %call87}, i64 0, metadata !1766), !dbg !2367
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %153, i8* %152, i32 48, i32 4, i1 false), !dbg !2368, !tbaa.struct !2357
  %cmp88 = icmp eq i8* %call87, null, !dbg !2369
  br i1 %cmp88, label %if.end90, label %return, !dbg !2369

if.end90:                                         ; preds = %if.end86
  %158 = load %struct.ngx_array_s** %codes, align 4, !dbg !2370, !tbaa !2050
  %elts92 = getelementptr inbounds %struct.ngx_array_s* %158, i32 0, i32 0, !dbg !2370
  %159 = load i8** %elts92, align 4, !dbg !2370, !tbaa !2050
  %cmp93 = icmp eq i8* %148, %159, !dbg !2370
  br i1 %cmp93, label %if.end97, label %if.then94, !dbg !2370

if.then94:                                        ; preds = %if.end90
  %sub.ptr.lhs.cast = ptrtoint i8* %159 to i32, !dbg !2371
  %sub.ptr.rhs.cast = ptrtoint i8* %148 to i32, !dbg !2371
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2371
  %add.ptr = getelementptr inbounds i8* %call60, i32 %sub.ptr.sub, !dbg !2371
  br label %if.end97, !dbg !2373

if.end97:                                         ; preds = %if.end90, %if.then94
  %if_code.0.in = phi i8* [ %add.ptr, %if.then94 ], [ %call60, %if.end90 ]
  %nelts = getelementptr inbounds %struct.ngx_array_s* %158, i32 0, i32 1, !dbg !2374
  %160 = load i32* %nelts, align 4, !dbg !2374, !tbaa !2059
  %add.ptr101 = getelementptr inbounds i8* %159, i32 %160, !dbg !2374
  %sub.ptr.lhs.cast102 = ptrtoint i8* %add.ptr101 to i32, !dbg !2374
  %sub.ptr.rhs.cast103 = ptrtoint i8* %if_code.0.in to i32, !dbg !2374
  %sub.ptr.sub104 = sub i32 %sub.ptr.lhs.cast102, %sub.ptr.rhs.cast103, !dbg !2374
  %161 = icmp sgt i32 %sub.ptr.sub104, -1, !dbg !2374
  br i1 %161, label %cont106, label %ioc_bb105, !dbg !2374

ioc_bb105:                                        ; preds = %if.end97
  %162 = sext i32 %sub.ptr.sub104 to i64, !dbg !2374
  call void @__ioc_report_conversion(i32 416, i32 21, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %162, i8 1) nounwind, !dbg !2374
  br label %cont106, !dbg !2374

cont106:                                          ; preds = %ioc_bb105, %if.end97
  %next = getelementptr inbounds i8* %if_code.0.in, i32 4, !dbg !2374
  %163 = bitcast i8* %next to i32*, !dbg !2374
  store i32 %sub.ptr.sub104, i32* %163, align 4, !dbg !2374, !tbaa !2059
  store %struct.ngx_array_s* null, %struct.ngx_array_s** %codes71, align 4, !dbg !2375, !tbaa !2050
  br label %return, !dbg !2376

return:                                           ; preds = %if.then25, %if.end.i.i, %cont.i.i, %if.end355.i, %cont347.i, %cont260.i, %if.then246.i, %if.end176.i, %if.then168.i, %if.end145.i, %if.then137.i, %cont451.i, %cont444.i, %cont332.i, %cont294.i, %cont106.i, %cont55.i, %cont12.i, %if.end86, %if.end59, %for.end, %cont6, %entry, %cont106
  %retval.0 = phi i8* [ null, %cont106 ], [ inttoptr (i32 -1 to i8*), %entry ], [ inttoptr (i32 -1 to i8*), %cont6 ], [ inttoptr (i32 -1 to i8*), %for.end ], [ inttoptr (i32 -1 to i8*), %if.end59 ], [ %call87, %if.end86 ], [ inttoptr (i32 -1 to i8*), %cont12.i ], [ inttoptr (i32 -1 to i8*), %cont55.i ], [ inttoptr (i32 -1 to i8*), %cont106.i ], [ inttoptr (i32 -1 to i8*), %cont294.i ], [ inttoptr (i32 -1 to i8*), %cont332.i ], [ inttoptr (i32 -1 to i8*), %cont444.i ], [ inttoptr (i32 -1 to i8*), %cont451.i ], [ inttoptr (i32 -1 to i8*), %if.then137.i ], [ inttoptr (i32 -1 to i8*), %if.end145.i ], [ inttoptr (i32 -1 to i8*), %if.then168.i ], [ inttoptr (i32 -1 to i8*), %if.end176.i ], [ inttoptr (i32 -1 to i8*), %if.then246.i ], [ inttoptr (i32 -1 to i8*), %cont260.i ], [ inttoptr (i32 -1 to i8*), %cont347.i ], [ inttoptr (i32 -1 to i8*), %if.end355.i ], [ inttoptr (i32 -1 to i8*), %cont.i.i ], [ inttoptr (i32 -1 to i8*), %if.end.i.i ], [ inttoptr (i32 -1 to i8*), %if.then25 ]
  ret i8* %retval.0, !dbg !2377
}

define internal i8* @ngx_http_rewrite_set(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !2378
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !2378
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !2378
  %0 = bitcast i8* %conf to %struct.ngx_http_rewrite_loc_conf_t*, !dbg !2379
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_rewrite_loc_conf_t* %0}, i64 0, metadata !462), !dbg !2379
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2380
  %1 = load %struct.ngx_array_s** %args, align 4, !dbg !2380, !tbaa !2050
  %elts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 0, !dbg !2380
  %2 = load i8** %elts, align 4, !dbg !2380, !tbaa !2050
  %arrayidx = getelementptr inbounds i8* %2, i32 8, !dbg !2381
  %3 = bitcast i8* %arrayidx to %struct.ngx_str_t*, !dbg !2381
  %data = getelementptr inbounds i8* %2, i32 12, !dbg !2381
  %4 = bitcast i8* %data to i8**, !dbg !2381
  %5 = load i8** %4, align 4, !dbg !2381, !tbaa !2050
  %6 = load i8* %5, align 1, !dbg !2381, !tbaa !2051
  %cmp = icmp eq i8 %6, 36, !dbg !2381
  br i1 %cmp, label %if.end, label %cont, !dbg !2381

cont:                                             ; preds = %entry
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str7, i32 0, i32 0), i8* %arrayidx) nounwind, !dbg !2382
  br label %return, !dbg !2384

if.end:                                           ; preds = %entry
  %len = bitcast i8* %arrayidx to i32*, !dbg !2385
  %7 = load i32* %len, align 4, !dbg !2385, !tbaa !2059
  %8 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %7, i32 1), !dbg !2385
  %9 = extractvalue { i32, i1 } %8, 0, !dbg !2385
  %10 = extractvalue { i32, i1 } %8, 1, !dbg !2385
  br i1 %10, label %ioc_bb7, label %cont8, !dbg !2385

ioc_bb7:                                          ; preds = %if.end
  %11 = zext i32 %7 to i64, !dbg !2385
  tail call void @__ioc_report_sub_overflow(i32 612, i32 15, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @1, i32 0, i32 0), i64 %11, i64 1, i8 5) nounwind, !dbg !2385
  %.pre = load i8** %4, align 4, !dbg !2386, !tbaa !2050
  br label %cont8, !dbg !2385

cont8:                                            ; preds = %if.end, %ioc_bb7
  %12 = phi i8* [ %5, %if.end ], [ %.pre, %ioc_bb7 ]
  store i32 %9, i32* %len, align 4, !dbg !2385, !tbaa !2059
  %incdec.ptr = getelementptr inbounds i8* %12, i32 1, !dbg !2386
  store i8* %incdec.ptr, i8** %4, align 4, !dbg !2386, !tbaa !2050
  %call = tail call %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %3, i32 1) nounwind, !dbg !2387
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %call}, i64 0, metadata !479), !dbg !2387
  %cmp14 = icmp eq %struct.ngx_http_variable_s* %call, null, !dbg !2388
  br i1 %cmp14, label %return, label %if.end19, !dbg !2388

if.end19:                                         ; preds = %cont8
  %call21 = tail call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %3) nounwind, !dbg !2389
  tail call void @llvm.dbg.value(metadata !{i32 %call21}, i64 0, metadata !475), !dbg !2389
  %cmp24 = icmp eq i32 %call21, -1, !dbg !2390
  br i1 %cmp24, label %return, label %if.end29, !dbg !2390

if.end29:                                         ; preds = %if.end19
  %get_handler = getelementptr inbounds %struct.ngx_http_variable_s* %call, i32 0, i32 2, !dbg !2391
  %13 = load i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler, align 4, !dbg !2391, !tbaa !2050
  %cmp30 = icmp eq i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* %13, null, !dbg !2391
  br i1 %cmp30, label %cont35, label %if.end60, !dbg !2391

cont35:                                           ; preds = %if.end29
  %14 = load i8** %4, align 4, !dbg !2391, !tbaa !2050
  %call36 = tail call i32 @ngx_strncasecmp(i8* %14, i8* getelementptr inbounds ([6 x i8]* @.str8, i32 0, i32 0), i32 5) nounwind, !dbg !2391
  %cmp37 = icmp eq i32 %call36, 0, !dbg !2391
  br i1 %cmp37, label %if.end60, label %cont43, !dbg !2391

cont43:                                           ; preds = %cont35
  %15 = load i8** %4, align 4, !dbg !2391, !tbaa !2050
  %call44 = tail call i32 @ngx_strncasecmp(i8* %15, i8* getelementptr inbounds ([11 x i8]* @.str9, i32 0, i32 0), i32 10) nounwind, !dbg !2391
  %cmp45 = icmp eq i32 %call44, 0, !dbg !2391
  br i1 %cmp45, label %if.end60, label %cont51, !dbg !2391

cont51:                                           ; preds = %cont43
  %16 = load i8** %4, align 4, !dbg !2391, !tbaa !2050
  %call52 = tail call i32 @ngx_strncasecmp(i8* %16, i8* getelementptr inbounds ([15 x i8]* @.str10, i32 0, i32 0), i32 14) nounwind, !dbg !2391
  %cmp53 = icmp eq i32 %call52, 0, !dbg !2391
  br i1 %cmp53, label %if.end60, label %if.then55, !dbg !2391

if.then55:                                        ; preds = %cont51
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_rewrite_var, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler, align 4, !dbg !2392, !tbaa !2050
  %17 = icmp sgt i32 %call21, -1, !dbg !2394
  br i1 %17, label %cont58, label %ioc_bb57, !dbg !2394

ioc_bb57:                                         ; preds = %if.then55
  %18 = sext i32 %call21 to i64, !dbg !2394
  tail call void @__ioc_report_conversion(i32 624, i32 17, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %18, i8 1) nounwind, !dbg !2394
  br label %cont58, !dbg !2394

cont58:                                           ; preds = %ioc_bb57, %if.then55
  %data59 = getelementptr inbounds %struct.ngx_http_variable_s* %call, i32 0, i32 3, !dbg !2394
  store i32 %call21, i32* %data59, align 4, !dbg !2394, !tbaa !2059
  br label %if.end60, !dbg !2395

if.end60:                                         ; preds = %cont51, %cont43, %cont35, %cont58, %if.end29
  %arrayidx61 = getelementptr inbounds i8* %2, i32 16, !dbg !2396
  %19 = bitcast i8* %arrayidx61 to %struct.ngx_str_t*, !dbg !2396
  %call62 = tail call fastcc i8* @ngx_http_rewrite_value(%struct.ngx_conf_s* %cf, %struct.ngx_http_rewrite_loc_conf_t* %0, %struct.ngx_str_t* %19), !dbg !2396
  %cmp63 = icmp eq i8* %call62, null, !dbg !2396
  br i1 %cmp63, label %if.end68, label %return, !dbg !2396

if.end68:                                         ; preds = %if.end60
  %set_handler = getelementptr inbounds %struct.ngx_http_variable_s* %call, i32 0, i32 1, !dbg !2397
  %20 = load void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %set_handler, align 4, !dbg !2397, !tbaa !2050
  %tobool = icmp eq void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* %20, null, !dbg !2397
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2398
  %21 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2398, !tbaa !2050
  %codes = bitcast i8* %conf to %struct.ngx_array_s**, !dbg !2398
  br i1 %tobool, label %if.end80, label %if.then69, !dbg !2397

if.then69:                                        ; preds = %if.end68
  %call70 = tail call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %21, %struct.ngx_array_s** %codes, i32 12) nounwind, !dbg !2398
  %cmp71 = icmp eq i8* %call70, null, !dbg !2400
  br i1 %cmp71, label %return, label %if.end76, !dbg !2400

if.end76:                                         ; preds = %if.then69
  %code = bitcast i8* %call70 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2401
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_var_set_handler_code, void (%struct.ngx_http_script_engine_t*)** %code, align 4, !dbg !2401, !tbaa !2050
  %22 = load void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %set_handler, align 4, !dbg !2402, !tbaa !2050
  %handler = getelementptr inbounds i8* %call70, i32 4, !dbg !2402
  %23 = bitcast i8* %handler to void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)**, !dbg !2402
  store void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* %22, void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %23, align 4, !dbg !2402, !tbaa !2050
  %data78 = getelementptr inbounds %struct.ngx_http_variable_s* %call, i32 0, i32 3, !dbg !2403
  %24 = load i32* %data78, align 4, !dbg !2403, !tbaa !2059
  %data79 = getelementptr inbounds i8* %call70, i32 8, !dbg !2403
  %25 = bitcast i8* %data79 to i32*, !dbg !2403
  store i32 %24, i32* %25, align 4, !dbg !2403, !tbaa !2059
  br label %return, !dbg !2404

if.end80:                                         ; preds = %if.end68
  %call83 = tail call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %21, %struct.ngx_array_s** %codes, i32 8) nounwind, !dbg !2405
  %cmp84 = icmp eq i8* %call83, null, !dbg !2406
  br i1 %cmp84, label %return, label %if.end89, !dbg !2406

if.end89:                                         ; preds = %if.end80
  %code90 = bitcast i8* %call83 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2407
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_set_var_code, void (%struct.ngx_http_script_engine_t*)** %code90, align 4, !dbg !2407, !tbaa !2050
  %26 = icmp sgt i32 %call21, -1, !dbg !2408
  br i1 %26, label %cont93, label %ioc_bb92, !dbg !2408

ioc_bb92:                                         ; preds = %if.end89
  %27 = sext i32 %call21 to i64, !dbg !2408
  tail call void @__ioc_report_conversion(i32 644, i32 33, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %27, i8 1) nounwind, !dbg !2408
  br label %cont93, !dbg !2408

cont93:                                           ; preds = %ioc_bb92, %if.end89
  %index94 = getelementptr inbounds i8* %call83, i32 4, !dbg !2408
  %28 = bitcast i8* %index94 to i32*, !dbg !2408
  store i32 %call21, i32* %28, align 4, !dbg !2408, !tbaa !2059
  br label %return, !dbg !2409

return:                                           ; preds = %if.end80, %if.then69, %if.end60, %if.end19, %cont8, %cont93, %if.end76, %cont
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont ], [ null, %if.end76 ], [ null, %cont93 ], [ inttoptr (i32 -1 to i8*), %cont8 ], [ inttoptr (i32 -1 to i8*), %if.end19 ], [ inttoptr (i32 -1 to i8*), %if.end60 ], [ inttoptr (i32 -1 to i8*), %if.then69 ], [ inttoptr (i32 -1 to i8*), %if.end80 ]
  ret i8* %retval.0, !dbg !2410
}

declare i8* @ngx_conf_set_flag_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32)

declare i32 @ngx_http_get_variable_index(%struct.ngx_conf_s*, %struct.ngx_str_t*)

declare i32 @ngx_strncasecmp(i8*, i8*, i32)

define internal i32 @ngx_http_rewrite_var(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_variable_value_t* nocapture %v, i32 %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1695), !dbg !2411
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1696), !dbg !2411
  tail call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1697), !dbg !2411
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_rewrite_module, i32 0, i32 0), align 4, !dbg !2412, !tbaa !2059
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2412
  %1 = load i8*** %loc_conf, align 4, !dbg !2412, !tbaa !2050
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2412
  %2 = load i8** %arrayidx, align 4, !dbg !2412, !tbaa !2050
  %uninitialized_variable_warn = getelementptr inbounds i8* %2, i32 12, !dbg !2413
  %3 = bitcast i8* %uninitialized_variable_warn to i32*, !dbg !2413
  %4 = load i32* %3, align 4, !dbg !2413, !tbaa !2059
  %cmp = icmp eq i32 %4, 0, !dbg !2413
  br i1 %cmp, label %if.then, label %if.end, !dbg !2413

if.then:                                          ; preds = %entry
  %5 = bitcast %struct.ngx_variable_value_t* %v to i64*, !dbg !2414
  %6 = load i64* bitcast (%struct.ngx_variable_value_t* @ngx_http_variable_null_value to i64*), align 4, !dbg !2414
  store i64 %6, i64* %5, align 4, !dbg !2414
  br label %return, !dbg !2416

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %14}, i64 0, metadata !1698), !dbg !2417
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2418
  %7 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2418, !tbaa !2050
  %log = getelementptr inbounds %struct.ngx_connection_s* %7, i32 0, i32 10, !dbg !2418
  %8 = load %struct.ngx_log_s** %log, align 4, !dbg !2418, !tbaa !2050
  %log_level = getelementptr inbounds %struct.ngx_log_s* %8, i32 0, i32 0, !dbg !2418
  %9 = load i32* %log_level, align 4, !dbg !2418, !tbaa !2059
  %cmp2 = icmp ugt i32 %9, 4, !dbg !2418
  br i1 %cmp2, label %cont5, label %if.end9, !dbg !2418

cont5:                                            ; preds = %if.end
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 3, !dbg !2419
  %10 = load i8*** %main_conf, align 4, !dbg !2419, !tbaa !2050
  %11 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2419, !tbaa !2059
  %arrayidx1 = getelementptr inbounds i8** %10, i32 %11, !dbg !2419
  %12 = load i8** %arrayidx1, align 4, !dbg !2419, !tbaa !2050
  %variables = getelementptr inbounds i8* %12, i32 48, !dbg !2417
  %elts = bitcast i8* %variables to i8**, !dbg !2417
  %13 = load i8** %elts, align 4, !dbg !2417, !tbaa !2050
  %14 = bitcast i8* %13 to %struct.ngx_http_variable_s*, !dbg !2417
  %name = getelementptr inbounds %struct.ngx_http_variable_s* %14, i32 %data, i32 0, !dbg !2420
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 5, %struct.ngx_log_s* %8, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str11, i32 0, i32 0), %struct.ngx_str_t* %name) nounwind, !dbg !2420
  br label %if.end9, !dbg !2420

if.end9:                                          ; preds = %cont5, %if.end
  %15 = bitcast %struct.ngx_variable_value_t* %v to i64*, !dbg !2421
  %16 = load i64* bitcast (%struct.ngx_variable_value_t* @ngx_http_variable_null_value to i64*), align 4, !dbg !2421
  store i64 %16, i64* %15, align 4, !dbg !2421
  br label %return, !dbg !2422

return:                                           ; preds = %if.end9, %if.then
  ret i32 0, !dbg !2423
}

define internal fastcc i8* @ngx_http_rewrite_value(%struct.ngx_conf_s* %cf, %struct.ngx_http_rewrite_loc_conf_t* %lcf, %struct.ngx_str_t* %value) nounwind {
entry:
  %sc = alloca %struct.ngx_http_script_compile_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1648), !dbg !2424
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_rewrite_loc_conf_t* %lcf}, i64 0, metadata !1649), !dbg !2424
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %value}, i64 0, metadata !1650), !dbg !2424
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_compile_t* %sc}, metadata !1653), !dbg !2425
  %call = call i32 @ngx_http_script_variables_count(%struct.ngx_str_t* %value) nounwind, !dbg !2426
  %0 = icmp sgt i32 %call, -1, !dbg !2426
  br i1 %0, label %cont, label %cont.thread, !dbg !2426

cont.thread:                                      ; preds = %entry
  %1 = zext i32 %call to i64, !dbg !2426
  call void @__ioc_report_conversion(i32 654, i32 7, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i64 %1, i8 0) nounwind, !dbg !2426
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1651), !dbg !2426
  %pool60 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2427
  %2 = load %struct.ngx_pool_s** %pool60, align 4, !dbg !2427, !tbaa !2050
  %codes61 = getelementptr inbounds %struct.ngx_http_rewrite_loc_conf_t* %lcf, i32 0, i32 0, !dbg !2427
  br label %if.end17, !dbg !2429

cont:                                             ; preds = %entry
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1651), !dbg !2426
  %cmp = icmp eq i32 %call, 0, !dbg !2429
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2427
  %3 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2427, !tbaa !2050
  %codes = getelementptr inbounds %struct.ngx_http_rewrite_loc_conf_t* %lcf, i32 0, i32 0, !dbg !2427
  br i1 %cmp, label %if.then, label %if.end17, !dbg !2429

if.then:                                          ; preds = %cont
  %call1 = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %3, %struct.ngx_array_s** %codes, i32 16) nounwind, !dbg !2427
  %cmp2 = icmp eq i8* %call1, null, !dbg !2430
  br i1 %cmp2, label %return, label %if.end, !dbg !2430

if.end:                                           ; preds = %if.then
  %data = getelementptr inbounds %struct.ngx_str_t* %value, i32 0, i32 1, !dbg !2431
  %4 = load i8** %data, align 4, !dbg !2431, !tbaa !2050
  %len = getelementptr inbounds %struct.ngx_str_t* %value, i32 0, i32 0, !dbg !2431
  %5 = load i32* %len, align 4, !dbg !2431, !tbaa !2059
  %call6 = call i32 @ngx_atoi(i8* %4, i32 %5) nounwind, !dbg !2431
  call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !1651), !dbg !2431
  %cmp9 = icmp eq i32 %call6, -1, !dbg !2432
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1651), !dbg !2433
  %n.0 = select i1 %cmp9, i32 0, i32 %call6, !dbg !2432
  %code = bitcast i8* %call1 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2435
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_value_code, void (%struct.ngx_http_script_engine_t*)** %code, align 4, !dbg !2435, !tbaa !2050
  %6 = icmp sgt i32 %n.0, -1, !dbg !2436
  br i1 %6, label %cont13, label %ioc_bb12, !dbg !2436

ioc_bb12:                                         ; preds = %if.end
  %7 = sext i32 %n.0 to i64, !dbg !2436
  call void @__ioc_report_conversion(i32 665, i32 33, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %7, i8 1) nounwind, !dbg !2436
  br label %cont13, !dbg !2436

cont13:                                           ; preds = %ioc_bb12, %if.end
  %value14 = getelementptr inbounds i8* %call1, i32 4, !dbg !2436
  %8 = bitcast i8* %value14 to i32*, !dbg !2436
  store i32 %n.0, i32* %8, align 4, !dbg !2436, !tbaa !2059
  %9 = load i32* %len, align 4, !dbg !2437, !tbaa !2059
  %text_len = getelementptr inbounds i8* %call1, i32 8, !dbg !2437
  %10 = bitcast i8* %text_len to i32*, !dbg !2437
  store i32 %9, i32* %10, align 4, !dbg !2437, !tbaa !2059
  %11 = load i8** %data, align 4, !dbg !2438, !tbaa !2050
  %12 = ptrtoint i8* %11 to i32, !dbg !2438
  %text_data = getelementptr inbounds i8* %call1, i32 12, !dbg !2438
  %13 = bitcast i8* %text_data to i32*, !dbg !2438
  store i32 %12, i32* %13, align 4, !dbg !2438, !tbaa !2059
  br label %return, !dbg !2439

if.end17:                                         ; preds = %cont.thread, %cont
  %codes62 = phi %struct.ngx_array_s** [ %codes61, %cont.thread ], [ %codes, %cont ]
  %14 = phi %struct.ngx_pool_s* [ %2, %cont.thread ], [ %3, %cont ]
  %call20 = call i8* @ngx_http_script_start_code(%struct.ngx_pool_s* %14, %struct.ngx_array_s** %codes62, i32 8) nounwind, !dbg !2440
  %cmp21 = icmp eq i8* %call20, null, !dbg !2441
  br i1 %cmp21, label %return, label %if.end25, !dbg !2441

if.end25:                                         ; preds = %if.end17
  %code26 = bitcast i8* %call20 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2442
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_complex_value_code, void (%struct.ngx_http_script_engine_t*)** %code26, align 4, !dbg !2442, !tbaa !2050
  %lengths = getelementptr inbounds i8* %call20, i32 4, !dbg !2443
  %15 = bitcast i8* %lengths to %struct.ngx_array_s**, !dbg !2443
  store %struct.ngx_array_s* null, %struct.ngx_array_s** %15, align 4, !dbg !2443, !tbaa !2050
  %16 = bitcast %struct.ngx_http_script_compile_t* %sc to i8*, !dbg !2444
  call void @llvm.memset.p0i8.i32(i8* %16, i8 0, i32 44, i32 4, i1 false), !dbg !2444
  %cf27 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 0, !dbg !2445
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf27, align 4, !dbg !2445, !tbaa !2050
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 1, !dbg !2446
  store %struct.ngx_str_t* %value, %struct.ngx_str_t** %source, align 4, !dbg !2446, !tbaa !2050
  %lengths29 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 3, !dbg !2447
  store %struct.ngx_array_s** %15, %struct.ngx_array_s*** %lengths29, align 4, !dbg !2447, !tbaa !2050
  %values = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 4, !dbg !2448
  store %struct.ngx_array_s** %codes62, %struct.ngx_array_s*** %values, align 4, !dbg !2448, !tbaa !2050
  br i1 %0, label %if.end25.cont33_crit_edge, label %ioc_bb32, !dbg !2449

if.end25.cont33_crit_edge:                        ; preds = %if.end25
  %.pre64 = getelementptr %struct.ngx_http_script_compile_t* %sc, i32 0, i32 10, !dbg !2450
  %.pre65 = bitcast i8* %.pre64 to i32*, !dbg !2450
  br label %cont33, !dbg !2449

ioc_bb32:                                         ; preds = %if.end25
  %17 = sext i32 %call to i64, !dbg !2449
  call void @__ioc_report_conversion(i32 681, i32 18, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %17, i8 1) nounwind, !dbg !2449
  %.phi.trans.insert = getelementptr %struct.ngx_http_script_compile_t* %sc, i32 0, i32 10
  %.phi.trans.insert63 = bitcast i8* %.phi.trans.insert to i32*
  %.pre = load i32* %.phi.trans.insert63, align 4, !dbg !2450
  %phitmp = or i32 %.pre, 2, !dbg !2449
  br label %cont33, !dbg !2449

cont33:                                           ; preds = %if.end25.cont33_crit_edge, %ioc_bb32
  %.pre-phi66 = phi i32* [ %.pre65, %if.end25.cont33_crit_edge ], [ %.phi.trans.insert63, %ioc_bb32 ], !dbg !2450
  %18 = phi i32 [ 2, %if.end25.cont33_crit_edge ], [ %phitmp, %ioc_bb32 ]
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 5, !dbg !2449
  store i32 %call, i32* %variables, align 4, !dbg !2449, !tbaa !2059
  store i32 %18, i32* %.pre-phi66, align 4, !dbg !2450
  %call36 = call i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t* %sc) nounwind, !dbg !2451
  %cmp37 = icmp eq i32 %call36, 0, !dbg !2451
  %. = select i1 %cmp37, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2451
  ret i8* %., !dbg !2451

return:                                           ; preds = %if.end17, %if.then, %cont13
  %retval.0 = phi i8* [ null, %cont13 ], [ inttoptr (i32 -1 to i8*), %if.then ], [ inttoptr (i32 -1 to i8*), %if.end17 ]
  ret i8* %retval.0, !dbg !2452
}

declare i8* @ngx_http_script_start_code(%struct.ngx_pool_s*, %struct.ngx_array_s**, i32)

declare void @ngx_http_script_var_set_handler_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_set_var_code(%struct.ngx_http_script_engine_t*)

declare i32 @ngx_http_script_variables_count(%struct.ngx_str_t*)

declare i32 @ngx_atoi(i8*, i32)

declare void @ngx_http_script_value_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_complex_value_code(%struct.ngx_http_script_engine_t*)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @ngx_http_add_location(%struct.ngx_conf_s*, %struct.ngx_queue_s**, %struct.ngx_http_core_loc_conf_s*)

declare i8* @ngx_array_push_n(%struct.ngx_array_s*, i32)

declare void @ngx_http_script_if_code(%struct.ngx_http_script_engine_t*)

declare i8* @ngx_conf_parse(%struct.ngx_conf_s*, %struct.ngx_str_t*)

declare void @ngx_http_script_equal_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_not_equal_code(%struct.ngx_http_script_engine_t*)

declare %struct.ngx_http_regex_t* @ngx_http_regex_compile(%struct.ngx_conf_s*, %struct.ngx_regex_compile_t*)

declare void @ngx_http_script_regex_start_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_file_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_var_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_break_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_return_code(%struct.ngx_http_script_engine_t*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @ngx_http_compile_complex_value(%struct.ngx_http_compile_complex_value_t*)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i8* @ngx_http_script_add_code(%struct.ngx_array_s*, i32, i8*)

declare void @ngx_http_script_regex_end_code(%struct.ngx_http_script_engine_t*)

define internal i32 @ngx_http_rewrite_init(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1983), !dbg !2453
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2454, !tbaa !2059
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2454
  %1 = load i8** %ctx, align 4, !dbg !2454, !tbaa !2050
  %main_conf = bitcast i8* %1 to i8***, !dbg !2454
  %2 = load i8*** %main_conf, align 4, !dbg !2454, !tbaa !2050
  %arrayidx = getelementptr inbounds i8** %2, i32 %0, !dbg !2454
  %3 = load i8** %arrayidx, align 4, !dbg !2454, !tbaa !2050
  %arrayidx1 = getelementptr inbounds i8* %3, i32 120, !dbg !2455
  %handlers = bitcast i8* %arrayidx1 to %struct.ngx_array_s*, !dbg !2455
  %call = tail call i8* @ngx_array_push(%struct.ngx_array_s* %handlers) nounwind, !dbg !2455
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_request_s*)** %4}, i64 0, metadata !1984), !dbg !2455
  %cmp = icmp eq i8* %call, null, !dbg !2456
  br i1 %cmp, label %return, label %if.end, !dbg !2456

if.end:                                           ; preds = %entry
  %4 = bitcast i8* %call to i32 (%struct.ngx_http_request_s*)**, !dbg !2455
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_rewrite_handler, i32 (%struct.ngx_http_request_s*)** %4, align 4, !dbg !2457, !tbaa !2050
  %arrayidx3 = getelementptr inbounds i8* %3, i32 160, !dbg !2458
  %handlers4 = bitcast i8* %arrayidx3 to %struct.ngx_array_s*, !dbg !2458
  %call5 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %handlers4) nounwind, !dbg !2458
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_request_s*)** %5}, i64 0, metadata !1984), !dbg !2458
  %cmp6 = icmp eq i8* %call5, null, !dbg !2459
  br i1 %cmp6, label %return, label %if.end10, !dbg !2459

if.end10:                                         ; preds = %if.end
  %5 = bitcast i8* %call5 to i32 (%struct.ngx_http_request_s*)**, !dbg !2458
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_rewrite_handler, i32 (%struct.ngx_http_request_s*)** %5, align 4, !dbg !2460, !tbaa !2050
  br label %return, !dbg !2461

return:                                           ; preds = %if.end, %entry, %if.end10
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2462
}

define internal i8* @ngx_http_rewrite_create_loc_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1977), !dbg !2463
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2464
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2464, !tbaa !2050
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 16) nounwind, !dbg !2464
  %cmp = icmp eq i8* %call, null, !dbg !2465
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !2465

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 122, i32 38, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2466
  %stack_size = getelementptr inbounds i8* %call, i32 4, !dbg !2466
  %1 = bitcast i8* %stack_size to i32*, !dbg !2466
  store i32 -1, i32* %1, align 4, !dbg !2466, !tbaa !2059
  %log = getelementptr inbounds i8* %call, i32 8, !dbg !2467
  %2 = bitcast i8* %log to i32*, !dbg !2467
  store i32 -1, i32* %2, align 4, !dbg !2467, !tbaa !2059
  %uninitialized_variable_warn = getelementptr inbounds i8* %call, i32 12, !dbg !2468
  %3 = bitcast i8* %uninitialized_variable_warn to i32*, !dbg !2468
  store i32 -1, i32* %3, align 4, !dbg !2468, !tbaa !2059
  br label %return, !dbg !2469

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2470
}

define internal i8* @ngx_http_rewrite_merge_loc_conf(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %parent, i8* nocapture %child) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1966), !dbg !2471
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !1967), !dbg !2471
  tail call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !1968), !dbg !2471
  %log = getelementptr inbounds i8* %child, i32 8, !dbg !2472
  %0 = bitcast i8* %log to i32*, !dbg !2472
  %1 = load i32* %0, align 4, !dbg !2472, !tbaa !2059
  %cmp = icmp eq i32 %1, -1, !dbg !2472
  br i1 %cmp, label %if.then, label %if.end, !dbg !2472

if.then:                                          ; preds = %entry
  %log1 = getelementptr inbounds i8* %parent, i32 8, !dbg !2473
  %2 = bitcast i8* %log1 to i32*, !dbg !2473
  %3 = load i32* %2, align 4, !dbg !2473, !tbaa !2059
  %cmp4 = icmp eq i32 %3, -1, !dbg !2473
  %. = select i1 %cmp4, i32 0, i32 %3, !dbg !2473
  store i32 %., i32* %0, align 4, !dbg !2473, !tbaa !2059
  br label %if.end, !dbg !2475

if.end:                                           ; preds = %if.then, %entry
  %uninitialized_variable_warn = getelementptr inbounds i8* %child, i32 12, !dbg !2476
  %4 = bitcast i8* %uninitialized_variable_warn to i32*, !dbg !2476
  %5 = load i32* %4, align 4, !dbg !2476, !tbaa !2059
  %cmp9 = icmp eq i32 %5, -1, !dbg !2476
  br i1 %cmp9, label %if.then10, label %if.end21, !dbg !2476

if.then10:                                        ; preds = %if.end
  %uninitialized_variable_warn11 = getelementptr inbounds i8* %parent, i32 12, !dbg !2477
  %6 = bitcast i8* %uninitialized_variable_warn11 to i32*, !dbg !2477
  %7 = load i32* %6, align 4, !dbg !2477, !tbaa !2059
  %cmp14 = icmp eq i32 %7, -1, !dbg !2477
  %.73 = select i1 %cmp14, i32 1, i32 %7, !dbg !2477
  store i32 %.73, i32* %4, align 4, !dbg !2477, !tbaa !2059
  br label %if.end21, !dbg !2479

if.end21:                                         ; preds = %if.then10, %if.end
  %stack_size = getelementptr inbounds i8* %child, i32 4, !dbg !2480
  %8 = bitcast i8* %stack_size to i32*, !dbg !2480
  %9 = load i32* %8, align 4, !dbg !2480, !tbaa !2059
  tail call void @__ioc_report_conversion(i32 141, i32 43, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2480
  %cmp26 = icmp eq i32 %9, -1, !dbg !2480
  br i1 %cmp26, label %if.then27, label %if.end43, !dbg !2480

if.then27:                                        ; preds = %if.end21
  %stack_size28 = getelementptr inbounds i8* %parent, i32 4, !dbg !2481
  %10 = bitcast i8* %stack_size28 to i32*, !dbg !2481
  %11 = load i32* %10, align 4, !dbg !2481, !tbaa !2059
  tail call void @__ioc_report_conversion(i32 142, i32 63, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2481
  %cmp34 = icmp eq i32 %11, -1, !dbg !2481
  br i1 %cmp34, label %cond.end40, label %cond.false38, !dbg !2481

cond.false38:                                     ; preds = %if.then27
  %12 = load i32* %10, align 4, !dbg !2481, !tbaa !2059
  br label %cond.end40, !dbg !2481

cond.end40:                                       ; preds = %if.then27, %cond.false38
  %cond41 = phi i32 [ %12, %cond.false38 ], [ 10, %if.then27 ], !dbg !2481
  store i32 %cond41, i32* %8, align 4, !dbg !2481, !tbaa !2059
  br label %if.end43, !dbg !2483

if.end43:                                         ; preds = %cond.end40, %if.end21
  %codes = bitcast i8* %child to %struct.ngx_array_s**, !dbg !2484
  %13 = load %struct.ngx_array_s** %codes, align 4, !dbg !2484, !tbaa !2050
  %cmp44 = icmp eq %struct.ngx_array_s* %13, null, !dbg !2484
  br i1 %cmp44, label %return, label %if.end46, !dbg !2484

if.end46:                                         ; preds = %if.end43
  %codes48 = bitcast i8* %parent to %struct.ngx_array_s**, !dbg !2485
  %14 = load %struct.ngx_array_s** %codes48, align 4, !dbg !2485, !tbaa !2050
  %cmp49 = icmp eq %struct.ngx_array_s* %13, %14, !dbg !2485
  br i1 %cmp49, label %return, label %if.end51, !dbg !2485

if.end51:                                         ; preds = %if.end46
  %call = tail call i8* @ngx_array_push_n(%struct.ngx_array_s* %13, i32 4) nounwind, !dbg !2486
  tail call void @llvm.dbg.value(metadata !{i32* %15}, i64 0, metadata !1972), !dbg !2486
  %cmp53 = icmp eq i8* %call, null, !dbg !2487
  br i1 %cmp53, label %return, label %if.end57, !dbg !2487

if.end57:                                         ; preds = %if.end51
  %15 = bitcast i8* %call to i32*, !dbg !2486
  store i32 0, i32* %15, align 4, !dbg !2488, !tbaa !2059
  br label %return, !dbg !2489

return:                                           ; preds = %if.end51, %if.end46, %if.end43, %if.end57
  %retval.0 = phi i8* [ null, %if.end57 ], [ null, %if.end43 ], [ null, %if.end46 ], [ inttoptr (i32 -1 to i8*), %if.end51 ]
  ret i8* %retval.0, !dbg !2490
}

declare i8* @ngx_array_push(%struct.ngx_array_s*)

define internal i32 @ngx_http_rewrite_handler(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1991), !dbg !2491
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2492, !tbaa !2059
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 3, !dbg !2492
  %1 = load i8*** %main_conf, align 4, !dbg !2492, !tbaa !2050
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2492
  %2 = load i8** %arrayidx, align 4, !dbg !2492, !tbaa !2050
  %srv_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 4, !dbg !2493
  %3 = load i8*** %srv_conf, align 4, !dbg !2493, !tbaa !2050
  %arrayidx1 = getelementptr inbounds i8** %3, i32 %0, !dbg !2493
  %4 = load i8** %arrayidx1, align 4, !dbg !2493, !tbaa !2050
  %location_rewrite_index = getelementptr inbounds i8* %2, i32 28, !dbg !2494
  %5 = bitcast i8* %location_rewrite_index to i32*, !dbg !2494
  %6 = load i32* %5, align 4, !dbg !2494, !tbaa !2059
  %7 = icmp sgt i32 %6, -1, !dbg !2494
  br i1 %7, label %cont, label %ioc_bb, !dbg !2494

ioc_bb:                                           ; preds = %entry
  %8 = zext i32 %6 to i64, !dbg !2494
  tail call void @__ioc_report_conversion(i32 57, i32 11, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i64 %8, i8 0) nounwind, !dbg !2494
  br label %cont, !dbg !2494

cont:                                             ; preds = %ioc_bb, %entry
  tail call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !1992), !dbg !2494
  %phase_handler = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 35, !dbg !2495
  %9 = load i32* %phase_handler, align 4, !dbg !2495, !tbaa !2059
  %cmp = icmp eq i32 %9, %6, !dbg !2495
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2495
  %10 = load i8*** %loc_conf, align 4, !dbg !2495, !tbaa !2050
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2495

land.lhs.true:                                    ; preds = %cont
  %ctx = getelementptr inbounds i8* %4, i32 20, !dbg !2495
  %11 = bitcast i8* %ctx to %struct.ngx_http_conf_ctx_t**, !dbg !2495
  %12 = load %struct.ngx_http_conf_ctx_t** %11, align 4, !dbg !2495, !tbaa !2050
  %loc_conf2 = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %12, i32 0, i32 2, !dbg !2495
  %13 = load i8*** %loc_conf2, align 4, !dbg !2495, !tbaa !2050
  %cmp3 = icmp eq i8** %10, %13, !dbg !2495
  br i1 %cmp3, label %return, label %if.end, !dbg !2495

if.end:                                           ; preds = %cont, %land.lhs.true
  %14 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_rewrite_module, i32 0, i32 0), align 4, !dbg !2496, !tbaa !2059
  %arrayidx7 = getelementptr inbounds i8** %10, i32 %14, !dbg !2496
  %15 = load i8** %arrayidx7, align 4, !dbg !2496, !tbaa !2050
  %codes = bitcast i8* %15 to %struct.ngx_array_s**, !dbg !2497
  %16 = load %struct.ngx_array_s** %codes, align 4, !dbg !2497, !tbaa !2050
  %cmp8 = icmp eq %struct.ngx_array_s* %16, null, !dbg !2497
  br i1 %cmp8, label %return, label %if.end12, !dbg !2497

if.end12:                                         ; preds = %if.end
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2498
  %17 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2498, !tbaa !2050
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %17, i32 44) nounwind, !dbg !2498
  %18 = bitcast i8* %call to %struct.ngx_http_script_engine_t*, !dbg !2498
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_script_engine_t* %18}, i64 0, metadata !1995), !dbg !2498
  %cmp13 = icmp eq i8* %call, null, !dbg !2499
  br i1 %cmp13, label %return, label %if.end15, !dbg !2499

if.end15:                                         ; preds = %if.end12
  %19 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2500, !tbaa !2050
  %stack_size = getelementptr inbounds i8* %15, i32 4, !dbg !2500
  %20 = bitcast i8* %stack_size to i32*, !dbg !2500
  %21 = load i32* %20, align 4, !dbg !2500, !tbaa !2059
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 8), !dbg !2500
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !2500
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !2500
  br i1 %24, label %ioc_bb17, label %cont18, !dbg !2500

ioc_bb17:                                         ; preds = %if.end15
  %25 = zext i32 %21 to i64, !dbg !2500
  tail call void @__ioc_report_mul_overflow(i32 70, i32 55, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %25, i64 8, i8 5) nounwind, !dbg !2500
  br label %cont18, !dbg !2500

cont18:                                           ; preds = %if.end15, %ioc_bb17
  %call19 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %19, i32 %23) nounwind, !dbg !2500
  %26 = bitcast i8* %call19 to %struct.ngx_variable_value_t*, !dbg !2500
  %sp = getelementptr inbounds i8* %call, i32 8, !dbg !2500
  %27 = bitcast i8* %sp to %struct.ngx_variable_value_t**, !dbg !2500
  store %struct.ngx_variable_value_t* %26, %struct.ngx_variable_value_t** %27, align 4, !dbg !2500, !tbaa !2050
  %cmp21 = icmp eq i8* %call19, null, !dbg !2501
  br i1 %cmp21, label %return, label %if.end23, !dbg !2501

if.end23:                                         ; preds = %cont18
  %28 = load %struct.ngx_array_s** %codes, align 4, !dbg !2502, !tbaa !2050
  %elts = getelementptr inbounds %struct.ngx_array_s* %28, i32 0, i32 0, !dbg !2502
  %29 = load i8** %elts, align 4, !dbg !2502, !tbaa !2050
  %ip = bitcast i8* %call to i8**, !dbg !2502
  store i8* %29, i8** %ip, align 4, !dbg !2502, !tbaa !2050
  %request = getelementptr inbounds i8* %call, i32 40, !dbg !2503
  %30 = bitcast i8* %request to %struct.ngx_http_request_s**, !dbg !2503
  store %struct.ngx_http_request_s* %r, %struct.ngx_http_request_s** %30, align 4, !dbg !2503, !tbaa !2050
  %bf.field.offs = getelementptr i8* %call, i32 32, !dbg !2504
  %31 = bitcast i8* %bf.field.offs to i32*, !dbg !2504
  %32 = load i32* %31, align 4, !dbg !2504
  %33 = or i32 %32, 4, !dbg !2504
  store i32 %33, i32* %31, align 4, !dbg !2504
  %log = getelementptr inbounds i8* %15, i32 8, !dbg !2505
  %34 = bitcast i8* %log to i32*, !dbg !2505
  %35 = load i32* %34, align 4, !dbg !2505, !tbaa !2059
  %36 = icmp sgt i32 %35, -1, !dbg !2505
  br i1 %36, label %cont28, label %ioc_bb27, !dbg !2505

ioc_bb27:                                         ; preds = %if.end23
  %37 = sext i32 %35 to i64, !dbg !2505
  tail call void @__ioc_report_conversion(i32 77, i32 14, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %37, i8 1) nounwind, !dbg !2505
  %.pre = load i32* %31, align 4, !dbg !2505
  %.pre74 = load i8** %ip, align 4, !dbg !2506, !tbaa !2050
  br label %cont28, !dbg !2505

cont28:                                           ; preds = %ioc_bb27, %if.end23
  %38 = phi i8* [ %.pre74, %ioc_bb27 ], [ %29, %if.end23 ]
  %39 = phi i32 [ %.pre, %ioc_bb27 ], [ %33, %if.end23 ]
  %bf.value = shl i32 %35, 4, !dbg !2505
  %40 = and i32 %bf.value, 16, !dbg !2505
  %41 = and i32 %39, -17, !dbg !2505
  %42 = or i32 %41, %40, !dbg !2505
  store i32 %42, i32* %31, align 4, !dbg !2505
  %status = getelementptr inbounds i8* %call, i32 36, !dbg !2507
  %43 = bitcast i8* %status to i32*, !dbg !2507
  store i32 -5, i32* %43, align 4, !dbg !2507, !tbaa !2059
  %44 = bitcast i8* %38 to i32*, !dbg !2506
  %45 = load i32* %44, align 4, !dbg !2506, !tbaa !2059
  %tobool73 = icmp eq i32 %45, 0, !dbg !2506
  br i1 %tobool73, label %return, label %while.body, !dbg !2506

while.body:                                       ; preds = %cont28, %while.body
  %46 = phi i8* [ %49, %while.body ], [ %38, %cont28 ]
  %47 = bitcast i8* %46 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2508
  %48 = load void (%struct.ngx_http_script_engine_t*)** %47, align 4, !dbg !2508, !tbaa !2050
  tail call void @llvm.dbg.value(metadata !{void (%struct.ngx_http_script_engine_t*)* %48}, i64 0, metadata !1994), !dbg !2508
  tail call void %48(%struct.ngx_http_script_engine_t* %18) nounwind, !dbg !2510
  %49 = load i8** %ip, align 4, !dbg !2506, !tbaa !2050
  %50 = bitcast i8* %49 to i32*, !dbg !2506
  %51 = load i32* %50, align 4, !dbg !2506, !tbaa !2059
  %tobool = icmp eq i32 %51, 0, !dbg !2506
  br i1 %tobool, label %while.end, label %while.body, !dbg !2506

while.end:                                        ; preds = %while.body
  %.pre75 = load i32* %43, align 4, !dbg !2511, !tbaa !2059
  %cmp35 = icmp slt i32 %.pre75, 400, !dbg !2511
  br i1 %cmp35, label %return, label %if.end38, !dbg !2511

if.end38:                                         ; preds = %while.end
  %err_status = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 45, !dbg !2512
  %52 = load i32* %err_status, align 4, !dbg !2512, !tbaa !2059
  %cmp41 = icmp eq i32 %52, 0, !dbg !2512
  br i1 %cmp41, label %return, label %if.end44, !dbg !2512

if.end44:                                         ; preds = %if.end38
  %53 = icmp sgt i32 %52, -1, !dbg !2513
  br i1 %53, label %return, label %ioc_bb47, !dbg !2513

ioc_bb47:                                         ; preds = %if.end44
  %54 = zext i32 %52 to i64, !dbg !2513
  tail call void @__ioc_report_conversion(i32 89, i32 10, i8* getelementptr inbounds ([43 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i64 %54, i8 0) nounwind, !dbg !2513
  br label %return, !dbg !2513

return:                                           ; preds = %cont28, %if.end38, %if.end44, %ioc_bb47, %while.end, %cont18, %if.end12, %if.end, %land.lhs.true
  %retval.0 = phi i32 [ -5, %land.lhs.true ], [ -5, %if.end ], [ 500, %if.end12 ], [ 500, %cont18 ], [ %.pre75, %while.end ], [ %52, %ioc_bb47 ], [ %52, %if.end44 ], [ %.pre75, %if.end38 ], [ -5, %cont28 ]
  ret i32 %retval.0, !dbg !2514
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_rewrite_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1999} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !1643, metadata !1692, metadata !1757, metadata !1808, metadata !1866, metadata !1875, metadata !1884, metadata !1913, metadata !1963, metadata !1974, metadata !1980, metadata !1988}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_set", metadata !"ngx_http_rewrite_set", metadata !"", metadata !6, i32 599, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_set, null, null, metadata !457, i32 600} ; [ DW_TAG_subprogram ] [line 599] [local] [def] [scope 600] [ngx_http_rewrite_set]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_rewrite_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
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
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !475, metadata !477, metadata !479, metadata !1607, metadata !1635}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16777815, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 599]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33555031, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 599]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50332247, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 599]
!462 = metadata !{i32 786688, metadata !463, metadata !"lcf", metadata !6, i32 601, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcf] [line 601]
!463 = metadata !{i32 786443, metadata !5, i32 600, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_rewrite_loc_conf_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_http_rewrite_loc_conf_t", metadata !6, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_http_rewrite_loc_conf_t] [line 13, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 8, i64 128, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 8, size 128, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469, metadata !470, metadata !474}
!468 = metadata !{i32 786445, metadata !466, metadata !"codes", metadata !6, i32 10, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [codes] [line 10, size 32, align 32, offset 0] [from ]
!469 = metadata !{i32 786445, metadata !466, metadata !"stack_size", metadata !6, i32 11, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [stack_size] [line 11, size 32, align 32, offset 32] [from ngx_uint_t]
!470 = metadata !{i32 786445, metadata !466, metadata !"log", metadata !6, i32 12, i64 32, i64 32, i64 64, i32 0, metadata !471} ; [ DW_TAG_member ] [log] [line 12, size 32, align 32, offset 64] [from ngx_flag_t]
!471 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !6, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!472 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !473} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!473 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!474 = metadata !{i32 786445, metadata !466, metadata !"uninitialized_variable_warn", metadata !6, i32 13, i64 32, i64 32, i64 96, i32 0, metadata !471} ; [ DW_TAG_member ] [uninitialized_variable_warn] [line 13, size 32, align 32, offset 96] [from ngx_flag_t]
!475 = metadata !{i32 786688, metadata !463, metadata !"index", metadata !6, i32 602, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 602]
!476 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!477 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 603, metadata !478, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 603]
!478 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!479 = metadata !{i32 786688, metadata !463, metadata !"v", metadata !6, i32 604, metadata !480, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 604]
!480 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !481} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_t]
!481 = metadata !{i32 786454, null, metadata !"ngx_http_variable_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !482} ; [ DW_TAG_typedef ] [ngx_http_variable_t] [line 21, size 0, align 0, offset 0] [from ngx_http_variable_s]
!482 = metadata !{i32 786451, null, metadata !"ngx_http_variable_s", metadata !483, i32 35, i64 224, i64 32, i32 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_variable_s] [line 35, size 224, align 32, offset 0] [from ]
!483 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!484 = metadata !{metadata !485, metadata !486, metadata !1599, metadata !1604, metadata !1605, metadata !1606}
!485 = metadata !{i32 786445, metadata !482, metadata !"name", metadata !483, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!486 = metadata !{i32 786445, metadata !482, metadata !"set_handler", metadata !483, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !487} ; [ DW_TAG_member ] [set_handler] [line 37, size 32, align 32, offset 64] [from ngx_http_set_variable_pt]
!487 = metadata !{i32 786454, null, metadata !"ngx_http_set_variable_pt", metadata !483, i32 23, i64 0, i64 0, i64 0, i32 0, metadata !488} ; [ DW_TAG_typedef ] [ngx_http_set_variable_pt] [line 23, size 0, align 0, offset 0] [from ]
!488 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !489} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!489 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!490 = metadata !{null, metadata !491, metadata !1473, metadata !27}
!491 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !492} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!492 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !483, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!493 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !494, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !495, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!494 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!495 = metadata !{metadata !496, metadata !498, metadata !499, metadata !500, metadata !501, metadata !502, metadata !503, metadata !510, metadata !511, metadata !699, metadata !1123, metadata !1124, metadata !1125, metadata !1126, metadata !1162, metadata !1191, metadata !1203, metadata !1204, metadata !1205, metadata !1206, metadata !1207, metadata !1208, metadata !1209, metadata !1210, metadata !1211, metadata !1212, metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217, metadata !1218, metadata !1226, metadata !1237, metadata !1244, metadata !1469, metadata !1470, metadata !1471, metadata !1472, metadata !1484, metadata !1485, metadata !1487, metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1504, metadata !1509, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1531, metadata !1532, metadata !1533, metadata !1534, metadata !1535, metadata !1536, metadata !1537, metadata !1538, metadata !1539, metadata !1540, metadata !1541, metadata !1542, metadata !1543, metadata !1544, metadata !1545, metadata !1546, metadata !1547, metadata !1548, metadata !1549, metadata !1550, metadata !1551, metadata !1552, metadata !1553, metadata !1554, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572, metadata !1573, metadata !1574, metadata !1575, metadata !1576, metadata !1580, metadata !1581, metadata !1582, metadata !1583, metadata !1584, metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1589, metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597, metadata !1598}
!496 = metadata !{i32 786445, metadata !493, metadata !"signature", metadata !494, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !497} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!497 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !494, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!498 = metadata !{i32 786445, metadata !493, metadata !"connection", metadata !494, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!499 = metadata !{i32 786445, metadata !493, metadata !"ctx", metadata !494, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!500 = metadata !{i32 786445, metadata !493, metadata !"main_conf", metadata !494, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!501 = metadata !{i32 786445, metadata !493, metadata !"srv_conf", metadata !494, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!502 = metadata !{i32 786445, metadata !493, metadata !"loc_conf", metadata !494, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!503 = metadata !{i32 786445, metadata !493, metadata !"read_event_handler", metadata !494, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !504} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!504 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !494, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !505} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!505 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!507 = metadata !{null, metadata !508}
!508 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !509} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!509 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !494, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!510 = metadata !{i32 786445, metadata !493, metadata !"write_event_handler", metadata !494, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !504} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!511 = metadata !{i32 786445, metadata !493, metadata !"cache", metadata !494, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !512} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!512 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!513 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !494, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !514} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!514 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !515, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !516, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!515 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!516 = metadata !{metadata !517, metadata !518, metadata !519, metadata !520, metadata !524, metadata !527, metadata !529, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !667, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698}
!517 = metadata !{i32 786445, metadata !514, metadata !"file", metadata !515, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!518 = metadata !{i32 786445, metadata !514, metadata !"keys", metadata !515, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!519 = metadata !{i32 786445, metadata !514, metadata !"crc32", metadata !515, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !497} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!520 = metadata !{i32 786445, metadata !514, metadata !"key", metadata !515, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !521} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!521 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !522, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!522 = metadata !{metadata !523}
!523 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!524 = metadata !{i32 786445, metadata !514, metadata !"uniq", metadata !515, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !525} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!525 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !515, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !526} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!526 = metadata !{i32 786454, null, metadata !"ino_t", metadata !515, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!527 = metadata !{i32 786445, metadata !514, metadata !"valid_sec", metadata !515, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !528} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!528 = metadata !{i32 786454, null, metadata !"time_t", metadata !515, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!529 = metadata !{i32 786445, metadata !514, metadata !"last_modified", metadata !515, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !528} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!530 = metadata !{i32 786445, metadata !514, metadata !"date", metadata !515, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !528} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!531 = metadata !{i32 786445, metadata !514, metadata !"header_start", metadata !515, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!532 = metadata !{i32 786445, metadata !514, metadata !"body_start", metadata !515, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!533 = metadata !{i32 786445, metadata !514, metadata !"length", metadata !515, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!534 = metadata !{i32 786445, metadata !514, metadata !"fs_size", metadata !515, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!535 = metadata !{i32 786445, metadata !514, metadata !"min_uses", metadata !515, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!536 = metadata !{i32 786445, metadata !514, metadata !"error", metadata !515, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!537 = metadata !{i32 786445, metadata !514, metadata !"valid_msec", metadata !515, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!538 = metadata !{i32 786445, metadata !514, metadata !"buf", metadata !515, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!539 = metadata !{i32 786445, metadata !514, metadata !"file_cache", metadata !515, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !540} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!540 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !541} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!541 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !515, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!542 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !515, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!543 = metadata !{metadata !544, metadata !567, metadata !614, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643}
!544 = metadata !{i32 786445, metadata !542, metadata !"sh", metadata !515, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!545 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !546} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!546 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !515, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!547 = metadata !{i32 786451, null, metadata !"", metadata !515, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !548, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!548 = metadata !{metadata !549, metadata !560, metadata !561, metadata !562, metadata !565, metadata !566}
!549 = metadata !{i32 786445, metadata !547, metadata !"rbtree", metadata !515, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!550 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !515, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!551 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!552 = metadata !{metadata !553, metadata !554, metadata !555}
!553 = metadata !{i32 786445, metadata !551, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!554 = metadata !{i32 786445, metadata !551, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!555 = metadata !{i32 786445, metadata !551, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !556} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!556 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!557 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !558} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!558 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!559 = metadata !{null, metadata !266, metadata !266, metadata !266}
!560 = metadata !{i32 786445, metadata !547, metadata !"sentinel", metadata !515, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!561 = metadata !{i32 786445, metadata !547, metadata !"queue", metadata !515, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!562 = metadata !{i32 786445, metadata !547, metadata !"cold", metadata !515, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !563} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!563 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !515, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !564} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!564 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!565 = metadata !{i32 786445, metadata !547, metadata !"loading", metadata !515, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !563} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!566 = metadata !{i32 786445, metadata !547, metadata !"size", metadata !515, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!567 = metadata !{i32 786445, metadata !542, metadata !"shpool", metadata !515, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !568} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!568 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !569} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!569 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !515, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !570} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!570 = metadata !{i32 786451, null, metadata !"", metadata !571, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !572, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!571 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!572 = metadata !{metadata !573, metadata !580, metadata !581, metadata !582, metadata !590, metadata !591, metadata !592, metadata !593, metadata !610, metadata !611, metadata !612, metadata !613}
!573 = metadata !{i32 786445, metadata !570, metadata !"lock", metadata !571, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !574} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!574 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !571, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !575} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!575 = metadata !{i32 786451, null, metadata !"", metadata !576, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !577, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!576 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!577 = metadata !{metadata !578, metadata !579}
!578 = metadata !{i32 786445, metadata !575, metadata !"lock", metadata !576, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !563} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!579 = metadata !{i32 786445, metadata !575, metadata !"wait", metadata !576, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !563} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!580 = metadata !{i32 786445, metadata !570, metadata !"min_size", metadata !571, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!581 = metadata !{i32 786445, metadata !570, metadata !"min_shift", metadata !571, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!582 = metadata !{i32 786445, metadata !570, metadata !"pages", metadata !571, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !583} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!583 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !584} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!584 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !571, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !585} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!585 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !571, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !586, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!586 = metadata !{metadata !587, metadata !588, metadata !589}
!587 = metadata !{i32 786445, metadata !585, metadata !"slab", metadata !571, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!588 = metadata !{i32 786445, metadata !585, metadata !"next", metadata !571, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !583} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!589 = metadata !{i32 786445, metadata !585, metadata !"prev", metadata !571, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!590 = metadata !{i32 786445, metadata !570, metadata !"free", metadata !571, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !584} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!591 = metadata !{i32 786445, metadata !570, metadata !"start", metadata !571, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!592 = metadata !{i32 786445, metadata !570, metadata !"end", metadata !571, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!593 = metadata !{i32 786445, metadata !570, metadata !"mutex", metadata !571, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !594} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!594 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !571, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !595} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!595 = metadata !{i32 786451, null, metadata !"", metadata !576, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !596, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!596 = metadata !{metadata !597, metadata !599, metadata !600, metadata !601, metadata !609}
!597 = metadata !{i32 786445, metadata !595, metadata !"lock", metadata !576, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !598} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!598 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !563} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!599 = metadata !{i32 786445, metadata !595, metadata !"wait", metadata !576, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !598} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!600 = metadata !{i32 786445, metadata !595, metadata !"semaphore", metadata !576, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!601 = metadata !{i32 786445, metadata !595, metadata !"sem", metadata !576, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !602} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!602 = metadata !{i32 786454, null, metadata !"sem_t", metadata !576, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !603} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!603 = metadata !{i32 786455, null, metadata !"", metadata !604, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !605, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!604 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!605 = metadata !{metadata !606, metadata !608}
!606 = metadata !{i32 786445, metadata !603, metadata !"__size", metadata !604, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !607} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!607 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !522, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!608 = metadata !{i32 786445, metadata !603, metadata !"__align", metadata !604, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!609 = metadata !{i32 786445, metadata !595, metadata !"spin", metadata !576, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!610 = metadata !{i32 786445, metadata !570, metadata !"log_ctx", metadata !571, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!611 = metadata !{i32 786445, metadata !570, metadata !"zero", metadata !571, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!612 = metadata !{i32 786445, metadata !570, metadata !"data", metadata !571, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!613 = metadata !{i32 786445, metadata !570, metadata !"addr", metadata !571, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!614 = metadata !{i32 786445, metadata !542, metadata !"path", metadata !515, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !615} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!615 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !616} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!616 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !515, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !617} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!617 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!618 = metadata !{metadata !619, metadata !620, metadata !621, metadata !625, metadata !630, metadata !632, metadata !633, metadata !634}
!619 = metadata !{i32 786445, metadata !617, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!620 = metadata !{i32 786445, metadata !617, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!621 = metadata !{i32 786445, metadata !617, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !622} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!622 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !623, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!623 = metadata !{metadata !624}
!624 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!625 = metadata !{i32 786445, metadata !617, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !626} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!626 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !627} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!627 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !628} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!628 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !629, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!629 = metadata !{metadata !528, metadata !24}
!630 = metadata !{i32 786445, metadata !617, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !631} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!631 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!632 = metadata !{i32 786445, metadata !617, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!633 = metadata !{i32 786445, metadata !617, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!634 = metadata !{i32 786445, metadata !617, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!635 = metadata !{i32 786445, metadata !542, metadata !"max_size", metadata !515, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!636 = metadata !{i32 786445, metadata !542, metadata !"bsize", metadata !515, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!637 = metadata !{i32 786445, metadata !542, metadata !"inactive", metadata !515, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !528} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!638 = metadata !{i32 786445, metadata !542, metadata !"files", metadata !515, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!639 = metadata !{i32 786445, metadata !542, metadata !"loader_files", metadata !515, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!640 = metadata !{i32 786445, metadata !542, metadata !"last", metadata !515, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!641 = metadata !{i32 786445, metadata !542, metadata !"loader_sleep", metadata !515, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!642 = metadata !{i32 786445, metadata !542, metadata !"loader_threshold", metadata !515, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!643 = metadata !{i32 786445, metadata !542, metadata !"shm_zone", metadata !515, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !644} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!644 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !645} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!645 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !515, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !646} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!646 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!647 = metadata !{metadata !648, metadata !649, metadata !659, metadata !666}
!648 = metadata !{i32 786445, metadata !646, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!649 = metadata !{i32 786445, metadata !646, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !650} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!650 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !651} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!651 = metadata !{i32 786451, null, metadata !"", metadata !652, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!652 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!653 = metadata !{metadata !654, metadata !655, metadata !656, metadata !657, metadata !658}
!654 = metadata !{i32 786445, metadata !651, metadata !"addr", metadata !652, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!655 = metadata !{i32 786445, metadata !651, metadata !"size", metadata !652, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!656 = metadata !{i32 786445, metadata !651, metadata !"name", metadata !652, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!657 = metadata !{i32 786445, metadata !651, metadata !"log", metadata !652, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!658 = metadata !{i32 786445, metadata !651, metadata !"exists", metadata !652, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!659 = metadata !{i32 786445, metadata !646, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !660} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!660 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !661} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!661 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !662} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!663 = metadata !{metadata !476, metadata !664, metadata !24}
!664 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !665} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!665 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !646} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!666 = metadata !{i32 786445, metadata !646, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!667 = metadata !{i32 786445, metadata !514, metadata !"node", metadata !515, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !668} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!668 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !669} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!669 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !515, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !670} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!670 = metadata !{i32 786451, null, metadata !"", metadata !515, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !671, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!671 = metadata !{metadata !672, metadata !673, metadata !674, metadata !678, metadata !679, metadata !680, metadata !681, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689}
!672 = metadata !{i32 786445, metadata !670, metadata !"node", metadata !515, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!673 = metadata !{i32 786445, metadata !670, metadata !"queue", metadata !515, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!674 = metadata !{i32 786445, metadata !670, metadata !"key", metadata !515, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !675} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!675 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !676, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!676 = metadata !{metadata !677}
!677 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!678 = metadata !{i32 786445, metadata !670, metadata !"count", metadata !515, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!679 = metadata !{i32 786445, metadata !670, metadata !"uses", metadata !515, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!680 = metadata !{i32 786445, metadata !670, metadata !"valid_msec", metadata !515, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!681 = metadata !{i32 786445, metadata !670, metadata !"error", metadata !515, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!682 = metadata !{i32 786445, metadata !670, metadata !"exists", metadata !515, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!683 = metadata !{i32 786445, metadata !670, metadata !"updating", metadata !515, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!684 = metadata !{i32 786445, metadata !670, metadata !"deleting", metadata !515, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!685 = metadata !{i32 786445, metadata !670, metadata !"uniq", metadata !515, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !525} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!686 = metadata !{i32 786445, metadata !670, metadata !"expire", metadata !515, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !528} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!687 = metadata !{i32 786445, metadata !670, metadata !"valid_sec", metadata !515, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !528} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!688 = metadata !{i32 786445, metadata !670, metadata !"body_start", metadata !515, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!689 = metadata !{i32 786445, metadata !670, metadata !"fs_size", metadata !515, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!690 = metadata !{i32 786445, metadata !514, metadata !"lock_timeout", metadata !515, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!691 = metadata !{i32 786445, metadata !514, metadata !"wait_time", metadata !515, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!692 = metadata !{i32 786445, metadata !514, metadata !"wait_event", metadata !515, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!693 = metadata !{i32 786445, metadata !514, metadata !"lock", metadata !515, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!694 = metadata !{i32 786445, metadata !514, metadata !"waiting", metadata !515, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!695 = metadata !{i32 786445, metadata !514, metadata !"updated", metadata !515, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!696 = metadata !{i32 786445, metadata !514, metadata !"updating", metadata !515, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!697 = metadata !{i32 786445, metadata !514, metadata !"exists", metadata !515, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!698 = metadata !{i32 786445, metadata !514, metadata !"temp_file", metadata !515, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!699 = metadata !{i32 786445, metadata !493, metadata !"upstream", metadata !494, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !700} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!700 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !701} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!701 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !494, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !702} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!702 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !703, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !704, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!703 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!704 = metadata !{metadata !705, metadata !712, metadata !713, metadata !749, metadata !825, metadata !826, metadata !847, metadata !856, metadata !952, metadata !988, metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1065, metadata !1066, metadata !1070, metadata !1074, metadata !1075, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1087, metadata !1091, metadata !1095, metadata !1096, metadata !1108, metadata !1109, metadata !1110, metadata !1111, metadata !1114, metadata !1115, metadata !1116, metadata !1117, metadata !1118, metadata !1119, metadata !1120, metadata !1121, metadata !1122}
!705 = metadata !{i32 786445, metadata !702, metadata !"read_event_handler", metadata !703, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !706} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!706 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !703, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !707} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!707 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !708} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!708 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !709, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!709 = metadata !{null, metadata !508, metadata !710}
!710 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !711} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!711 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !703, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !702} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!712 = metadata !{i32 786445, metadata !702, metadata !"write_event_handler", metadata !703, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !706} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!713 = metadata !{i32 786445, metadata !702, metadata !"peer", metadata !703, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !714} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!714 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !703, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !715} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!715 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !716, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !717, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!716 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!717 = metadata !{metadata !718, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !730, metadata !735, metadata !736, metadata !745, metadata !746, metadata !747, metadata !748}
!718 = metadata !{i32 786445, metadata !715, metadata !"connection", metadata !716, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!719 = metadata !{i32 786445, metadata !715, metadata !"sockaddr", metadata !716, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!720 = metadata !{i32 786445, metadata !715, metadata !"socklen", metadata !716, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!721 = metadata !{i32 786445, metadata !715, metadata !"name", metadata !716, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !478} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!722 = metadata !{i32 786445, metadata !715, metadata !"tries", metadata !716, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!723 = metadata !{i32 786445, metadata !715, metadata !"get", metadata !716, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !724} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!724 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !716, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !725} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!725 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !726} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!726 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !727, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!727 = metadata !{metadata !476, metadata !728, metadata !24}
!728 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !729} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!729 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !716, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !715} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!730 = metadata !{i32 786445, metadata !715, metadata !"free", metadata !716, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !731} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!731 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !716, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !732} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!732 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !733} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!734 = metadata !{null, metadata !728, metadata !24, metadata !26}
!735 = metadata !{i32 786445, metadata !715, metadata !"data", metadata !716, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!736 = metadata !{i32 786445, metadata !715, metadata !"local", metadata !716, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !737} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!737 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !738} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!738 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !716, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !739} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!739 = metadata !{i32 786451, null, metadata !"", metadata !740, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !741, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!740 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!741 = metadata !{metadata !742, metadata !743, metadata !744}
!742 = metadata !{i32 786445, metadata !739, metadata !"sockaddr", metadata !740, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!743 = metadata !{i32 786445, metadata !739, metadata !"socklen", metadata !740, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!744 = metadata !{i32 786445, metadata !739, metadata !"name", metadata !740, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!745 = metadata !{i32 786445, metadata !715, metadata !"rcvbuf", metadata !716, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!746 = metadata !{i32 786445, metadata !715, metadata !"log", metadata !716, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!747 = metadata !{i32 786445, metadata !715, metadata !"cached", metadata !716, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!748 = metadata !{i32 786445, metadata !715, metadata !"log_error", metadata !716, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!749 = metadata !{i32 786445, metadata !702, metadata !"pipe", metadata !703, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !750} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!750 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !751} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!751 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !703, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !752} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!752 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !753, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !754, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!753 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!754 = metadata !{metadata !755, metadata !756, metadata !757, metadata !758, metadata !759, metadata !761, metadata !762, metadata !763, metadata !764, metadata !771, metadata !772, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !824}
!755 = metadata !{i32 786445, metadata !752, metadata !"upstream", metadata !753, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!756 = metadata !{i32 786445, metadata !752, metadata !"downstream", metadata !753, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!757 = metadata !{i32 786445, metadata !752, metadata !"free_raw_bufs", metadata !753, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!758 = metadata !{i32 786445, metadata !752, metadata !"in", metadata !753, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!759 = metadata !{i32 786445, metadata !752, metadata !"last_in", metadata !753, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !760} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!760 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!761 = metadata !{i32 786445, metadata !752, metadata !"out", metadata !753, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!762 = metadata !{i32 786445, metadata !752, metadata !"free", metadata !753, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!763 = metadata !{i32 786445, metadata !752, metadata !"busy", metadata !753, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!764 = metadata !{i32 786445, metadata !752, metadata !"input_filter", metadata !753, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !765} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!765 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !753, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !766} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!766 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !767} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!767 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !768, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!768 = metadata !{metadata !476, metadata !769, metadata !62}
!769 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !770} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!770 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !753, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !752} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!771 = metadata !{i32 786445, metadata !752, metadata !"input_ctx", metadata !753, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!772 = metadata !{i32 786445, metadata !752, metadata !"output_filter", metadata !753, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !773} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!773 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !753, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !774} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!774 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !775} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!775 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !776, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!776 = metadata !{metadata !476, metadata !24, metadata !56}
!777 = metadata !{i32 786445, metadata !752, metadata !"output_ctx", metadata !753, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!778 = metadata !{i32 786445, metadata !752, metadata !"read", metadata !753, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!779 = metadata !{i32 786445, metadata !752, metadata !"cacheable", metadata !753, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!780 = metadata !{i32 786445, metadata !752, metadata !"single_buf", metadata !753, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!781 = metadata !{i32 786445, metadata !752, metadata !"free_bufs", metadata !753, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!782 = metadata !{i32 786445, metadata !752, metadata !"upstream_done", metadata !753, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!783 = metadata !{i32 786445, metadata !752, metadata !"upstream_error", metadata !753, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!784 = metadata !{i32 786445, metadata !752, metadata !"upstream_eof", metadata !753, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!785 = metadata !{i32 786445, metadata !752, metadata !"upstream_blocked", metadata !753, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!786 = metadata !{i32 786445, metadata !752, metadata !"downstream_done", metadata !753, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!787 = metadata !{i32 786445, metadata !752, metadata !"downstream_error", metadata !753, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!788 = metadata !{i32 786445, metadata !752, metadata !"cyclic_temp_file", metadata !753, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!789 = metadata !{i32 786445, metadata !752, metadata !"allocated", metadata !753, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !476} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!790 = metadata !{i32 786445, metadata !752, metadata !"bufs", metadata !753, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !791} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!791 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !753, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !792} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!792 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !793, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!793 = metadata !{metadata !794, metadata !795}
!794 = metadata !{i32 786445, metadata !792, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !476} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!795 = metadata !{i32 786445, metadata !792, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!796 = metadata !{i32 786445, metadata !752, metadata !"tag", metadata !753, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!797 = metadata !{i32 786445, metadata !752, metadata !"busy_size", metadata !753, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!798 = metadata !{i32 786445, metadata !752, metadata !"read_length", metadata !753, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!799 = metadata !{i32 786445, metadata !752, metadata !"length", metadata !753, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!800 = metadata !{i32 786445, metadata !752, metadata !"max_temp_file_size", metadata !753, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!801 = metadata !{i32 786445, metadata !752, metadata !"temp_file_write_size", metadata !753, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!802 = metadata !{i32 786445, metadata !752, metadata !"read_timeout", metadata !753, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!803 = metadata !{i32 786445, metadata !752, metadata !"send_timeout", metadata !753, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!804 = metadata !{i32 786445, metadata !752, metadata !"send_lowat", metadata !753, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!805 = metadata !{i32 786445, metadata !752, metadata !"pool", metadata !753, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!806 = metadata !{i32 786445, metadata !752, metadata !"log", metadata !753, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!807 = metadata !{i32 786445, metadata !752, metadata !"preread_bufs", metadata !753, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!808 = metadata !{i32 786445, metadata !752, metadata !"preread_size", metadata !753, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!809 = metadata !{i32 786445, metadata !752, metadata !"buf_to_file", metadata !753, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!810 = metadata !{i32 786445, metadata !752, metadata !"temp_file", metadata !753, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !811} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!811 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !812} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!812 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !753, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !813} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!813 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !814, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!814 = metadata !{metadata !815, metadata !816, metadata !817, metadata !818, metadata !819, metadata !820, metadata !821, metadata !822, metadata !823}
!815 = metadata !{i32 786445, metadata !813, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!816 = metadata !{i32 786445, metadata !813, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!817 = metadata !{i32 786445, metadata !813, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !615} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!818 = metadata !{i32 786445, metadata !813, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!819 = metadata !{i32 786445, metadata !813, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!820 = metadata !{i32 786445, metadata !813, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!821 = metadata !{i32 786445, metadata !813, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!822 = metadata !{i32 786445, metadata !813, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!823 = metadata !{i32 786445, metadata !813, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!824 = metadata !{i32 786445, metadata !752, metadata !"num", metadata !753, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!825 = metadata !{i32 786445, metadata !702, metadata !"request_bufs", metadata !703, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!826 = metadata !{i32 786445, metadata !702, metadata !"output", metadata !703, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !827} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!827 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !703, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !828} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!828 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !829, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!829 = metadata !{metadata !830, metadata !831, metadata !832, metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !846}
!830 = metadata !{i32 786445, metadata !828, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!831 = metadata !{i32 786445, metadata !828, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!832 = metadata !{i32 786445, metadata !828, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!833 = metadata !{i32 786445, metadata !828, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!834 = metadata !{i32 786445, metadata !828, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!835 = metadata !{i32 786445, metadata !828, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!836 = metadata !{i32 786445, metadata !828, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!837 = metadata !{i32 786445, metadata !828, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!838 = metadata !{i32 786445, metadata !828, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!839 = metadata !{i32 786445, metadata !828, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!840 = metadata !{i32 786445, metadata !828, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!841 = metadata !{i32 786445, metadata !828, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !476} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!842 = metadata !{i32 786445, metadata !828, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !791} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!843 = metadata !{i32 786445, metadata !828, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!844 = metadata !{i32 786445, metadata !828, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !845} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!845 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !774} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!846 = metadata !{i32 786445, metadata !828, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!847 = metadata !{i32 786445, metadata !702, metadata !"writer", metadata !703, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !848} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!848 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !703, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !849} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!849 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !850, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!850 = metadata !{metadata !851, metadata !852, metadata !853, metadata !854, metadata !855}
!851 = metadata !{i32 786445, metadata !849, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!852 = metadata !{i32 786445, metadata !849, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !760} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!853 = metadata !{i32 786445, metadata !849, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!854 = metadata !{i32 786445, metadata !849, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!855 = metadata !{i32 786445, metadata !849, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!856 = metadata !{i32 786445, metadata !702, metadata !"conf", metadata !703, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !857} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!857 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !858} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!858 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !703, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !859} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!859 = metadata !{i32 786451, null, metadata !"", metadata !703, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !860, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!860 = metadata !{metadata !861, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !903, metadata !904, metadata !905, metadata !906, metadata !907, metadata !908, metadata !909, metadata !910, metadata !911, metadata !912, metadata !913, metadata !914, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951}
!861 = metadata !{i32 786445, metadata !859, metadata !"upstream", metadata !703, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !862} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!862 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !863} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!863 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !703, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !864} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!864 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !703, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !865, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!865 = metadata !{metadata !866, metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !890}
!866 = metadata !{i32 786445, metadata !864, metadata !"peer", metadata !703, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !867} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!867 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !703, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !868} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!868 = metadata !{i32 786451, null, metadata !"", metadata !703, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !869, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!869 = metadata !{metadata !870, metadata !875, metadata !880}
!870 = metadata !{i32 786445, metadata !868, metadata !"init_upstream", metadata !703, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !871} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!871 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !703, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !872} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!872 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !873} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!873 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !874, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!874 = metadata !{metadata !476, metadata !11, metadata !862}
!875 = metadata !{i32 786445, metadata !868, metadata !"init", metadata !703, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !876} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!876 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !703, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !877} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!877 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !878} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!878 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !879, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!879 = metadata !{metadata !476, metadata !508, metadata !862}
!880 = metadata !{i32 786445, metadata !868, metadata !"data", metadata !703, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!881 = metadata !{i32 786445, metadata !864, metadata !"srv_conf", metadata !703, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!882 = metadata !{i32 786445, metadata !864, metadata !"servers", metadata !703, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!883 = metadata !{i32 786445, metadata !864, metadata !"flags", metadata !703, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!884 = metadata !{i32 786445, metadata !864, metadata !"host", metadata !703, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!885 = metadata !{i32 786445, metadata !864, metadata !"file_name", metadata !703, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!886 = metadata !{i32 786445, metadata !864, metadata !"line", metadata !703, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!887 = metadata !{i32 786445, metadata !864, metadata !"port", metadata !703, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !888} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!888 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !703, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !889} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!889 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !703, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!890 = metadata !{i32 786445, metadata !864, metadata !"default_port", metadata !703, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !888} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!891 = metadata !{i32 786445, metadata !859, metadata !"connect_timeout", metadata !703, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!892 = metadata !{i32 786445, metadata !859, metadata !"send_timeout", metadata !703, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!893 = metadata !{i32 786445, metadata !859, metadata !"read_timeout", metadata !703, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!894 = metadata !{i32 786445, metadata !859, metadata !"timeout", metadata !703, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!895 = metadata !{i32 786445, metadata !859, metadata !"send_lowat", metadata !703, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!896 = metadata !{i32 786445, metadata !859, metadata !"buffer_size", metadata !703, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!897 = metadata !{i32 786445, metadata !859, metadata !"busy_buffers_size", metadata !703, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!898 = metadata !{i32 786445, metadata !859, metadata !"max_temp_file_size", metadata !703, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!899 = metadata !{i32 786445, metadata !859, metadata !"temp_file_write_size", metadata !703, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!900 = metadata !{i32 786445, metadata !859, metadata !"busy_buffers_size_conf", metadata !703, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!901 = metadata !{i32 786445, metadata !859, metadata !"max_temp_file_size_conf", metadata !703, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!902 = metadata !{i32 786445, metadata !859, metadata !"temp_file_write_size_conf", metadata !703, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!903 = metadata !{i32 786445, metadata !859, metadata !"bufs", metadata !703, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !791} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!904 = metadata !{i32 786445, metadata !859, metadata !"ignore_headers", metadata !703, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!905 = metadata !{i32 786445, metadata !859, metadata !"next_upstream", metadata !703, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!906 = metadata !{i32 786445, metadata !859, metadata !"store_access", metadata !703, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!907 = metadata !{i32 786445, metadata !859, metadata !"buffering", metadata !703, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !471} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!908 = metadata !{i32 786445, metadata !859, metadata !"pass_request_headers", metadata !703, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !471} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!909 = metadata !{i32 786445, metadata !859, metadata !"pass_request_body", metadata !703, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !471} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!910 = metadata !{i32 786445, metadata !859, metadata !"ignore_client_abort", metadata !703, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !471} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!911 = metadata !{i32 786445, metadata !859, metadata !"intercept_errors", metadata !703, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !471} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!912 = metadata !{i32 786445, metadata !859, metadata !"cyclic_temp_file", metadata !703, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !471} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!913 = metadata !{i32 786445, metadata !859, metadata !"temp_path", metadata !703, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !615} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!914 = metadata !{i32 786445, metadata !859, metadata !"hide_headers_hash", metadata !703, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !915} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!915 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !703, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !916} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!916 = metadata !{i32 786451, null, metadata !"", metadata !917, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !918, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!917 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!918 = metadata !{metadata !919, metadata !933}
!919 = metadata !{i32 786445, metadata !916, metadata !"buckets", metadata !917, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !920} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!920 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !921} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!921 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !922} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!922 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !917, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !923} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!923 = metadata !{i32 786451, null, metadata !"", metadata !917, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !924, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!924 = metadata !{metadata !925, metadata !926, metadata !929}
!925 = metadata !{i32 786445, metadata !923, metadata !"value", metadata !917, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!926 = metadata !{i32 786445, metadata !923, metadata !"len", metadata !917, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !927} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!927 = metadata !{i32 786454, null, metadata !"u_short", metadata !917, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !928} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!928 = metadata !{i32 786454, null, metadata !"__u_short", metadata !917, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!929 = metadata !{i32 786445, metadata !923, metadata !"name", metadata !917, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !930} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!930 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !931, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!931 = metadata !{metadata !932}
!932 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!933 = metadata !{i32 786445, metadata !916, metadata !"size", metadata !917, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!934 = metadata !{i32 786445, metadata !859, metadata !"hide_headers", metadata !703, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!935 = metadata !{i32 786445, metadata !859, metadata !"pass_headers", metadata !703, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!936 = metadata !{i32 786445, metadata !859, metadata !"local", metadata !703, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !737} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!937 = metadata !{i32 786445, metadata !859, metadata !"cache", metadata !703, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !644} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!938 = metadata !{i32 786445, metadata !859, metadata !"cache_min_uses", metadata !703, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!939 = metadata !{i32 786445, metadata !859, metadata !"cache_use_stale", metadata !703, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!940 = metadata !{i32 786445, metadata !859, metadata !"cache_methods", metadata !703, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!941 = metadata !{i32 786445, metadata !859, metadata !"cache_lock", metadata !703, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !471} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!942 = metadata !{i32 786445, metadata !859, metadata !"cache_lock_timeout", metadata !703, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!943 = metadata !{i32 786445, metadata !859, metadata !"cache_valid", metadata !703, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!944 = metadata !{i32 786445, metadata !859, metadata !"cache_bypass", metadata !703, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!945 = metadata !{i32 786445, metadata !859, metadata !"no_cache", metadata !703, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!946 = metadata !{i32 786445, metadata !859, metadata !"store_lengths", metadata !703, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!947 = metadata !{i32 786445, metadata !859, metadata !"store_values", metadata !703, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!948 = metadata !{i32 786445, metadata !859, metadata !"store", metadata !703, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!949 = metadata !{i32 786445, metadata !859, metadata !"intercept_404", metadata !703, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!950 = metadata !{i32 786445, metadata !859, metadata !"change_buffering", metadata !703, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!951 = metadata !{i32 786445, metadata !859, metadata !"module", metadata !703, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!952 = metadata !{i32 786445, metadata !702, metadata !"headers_in", metadata !703, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !953} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!953 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !703, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !954} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!954 = metadata !{i32 786451, null, metadata !"", metadata !703, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !955, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!955 = metadata !{metadata !956, metadata !957, metadata !958, metadata !959, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980, metadata !981, metadata !982, metadata !983, metadata !984, metadata !985, metadata !986, metadata !987}
!956 = metadata !{i32 786445, metadata !954, metadata !"headers", metadata !703, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!957 = metadata !{i32 786445, metadata !954, metadata !"status_n", metadata !703, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!958 = metadata !{i32 786445, metadata !954, metadata !"status_line", metadata !703, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!959 = metadata !{i32 786445, metadata !954, metadata !"status", metadata !703, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !960} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!960 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !961} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!961 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !703, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !962} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!962 = metadata !{i32 786451, null, metadata !"", metadata !917, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !963, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!963 = metadata !{metadata !964, metadata !965, metadata !966, metadata !967}
!964 = metadata !{i32 786445, metadata !962, metadata !"hash", metadata !917, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!965 = metadata !{i32 786445, metadata !962, metadata !"key", metadata !917, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!966 = metadata !{i32 786445, metadata !962, metadata !"value", metadata !917, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!967 = metadata !{i32 786445, metadata !962, metadata !"lowcase_key", metadata !917, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!968 = metadata !{i32 786445, metadata !954, metadata !"date", metadata !703, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !960} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!969 = metadata !{i32 786445, metadata !954, metadata !"server", metadata !703, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !960} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!970 = metadata !{i32 786445, metadata !954, metadata !"connection", metadata !703, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !960} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!971 = metadata !{i32 786445, metadata !954, metadata !"expires", metadata !703, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !960} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!972 = metadata !{i32 786445, metadata !954, metadata !"etag", metadata !703, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !960} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!973 = metadata !{i32 786445, metadata !954, metadata !"x_accel_expires", metadata !703, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !960} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!974 = metadata !{i32 786445, metadata !954, metadata !"x_accel_redirect", metadata !703, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !960} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!975 = metadata !{i32 786445, metadata !954, metadata !"x_accel_limit_rate", metadata !703, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !960} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!976 = metadata !{i32 786445, metadata !954, metadata !"content_type", metadata !703, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !960} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!977 = metadata !{i32 786445, metadata !954, metadata !"content_length", metadata !703, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !960} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!978 = metadata !{i32 786445, metadata !954, metadata !"last_modified", metadata !703, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !960} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!979 = metadata !{i32 786445, metadata !954, metadata !"location", metadata !703, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !960} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!980 = metadata !{i32 786445, metadata !954, metadata !"accept_ranges", metadata !703, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !960} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!981 = metadata !{i32 786445, metadata !954, metadata !"www_authenticate", metadata !703, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !960} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!982 = metadata !{i32 786445, metadata !954, metadata !"transfer_encoding", metadata !703, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !960} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!983 = metadata !{i32 786445, metadata !954, metadata !"content_encoding", metadata !703, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !960} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!984 = metadata !{i32 786445, metadata !954, metadata !"content_length_n", metadata !703, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!985 = metadata !{i32 786445, metadata !954, metadata !"cache_control", metadata !703, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!986 = metadata !{i32 786445, metadata !954, metadata !"connection_close", metadata !703, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!987 = metadata !{i32 786445, metadata !954, metadata !"chunked", metadata !703, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!988 = metadata !{i32 786445, metadata !702, metadata !"resolved", metadata !703, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !989} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!989 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !990} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!990 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !703, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !991} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!991 = metadata !{i32 786451, null, metadata !"", metadata !703, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !992, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!992 = metadata !{metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !1000, metadata !1001, metadata !1002}
!993 = metadata !{i32 786445, metadata !991, metadata !"host", metadata !703, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!994 = metadata !{i32 786445, metadata !991, metadata !"port", metadata !703, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !888} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!995 = metadata !{i32 786445, metadata !991, metadata !"no_port", metadata !703, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!996 = metadata !{i32 786445, metadata !991, metadata !"naddrs", metadata !703, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!997 = metadata !{i32 786445, metadata !991, metadata !"addrs", metadata !703, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !998} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!998 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !999} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!999 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !703, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !497} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1000 = metadata !{i32 786445, metadata !991, metadata !"sockaddr", metadata !703, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1001 = metadata !{i32 786445, metadata !991, metadata !"socklen", metadata !703, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1002 = metadata !{i32 786445, metadata !991, metadata !"ctx", metadata !703, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1003} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1003 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1004} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1004 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !703, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1005} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1005 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1006, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1007, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1006 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1007 = metadata !{metadata !1008, metadata !1011, metadata !1034, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060}
!1008 = metadata !{i32 786445, metadata !1005, metadata !"next", metadata !1006, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1009} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1009 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1010} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1010 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1006, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1005} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1011 = metadata !{i32 786445, metadata !1005, metadata !"resolver", metadata !1006, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1012} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1012 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1013} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1013 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1006, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1014} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1014 = metadata !{i32 786451, null, metadata !"", metadata !1006, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1015, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1015 = metadata !{metadata !1016, metadata !1017, metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033}
!1016 = metadata !{i32 786445, metadata !1014, metadata !"event", metadata !1006, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1017 = metadata !{i32 786445, metadata !1014, metadata !"dummy", metadata !1006, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1018 = metadata !{i32 786445, metadata !1014, metadata !"log", metadata !1006, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1019 = metadata !{i32 786445, metadata !1014, metadata !"ident", metadata !1006, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !476} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1020 = metadata !{i32 786445, metadata !1014, metadata !"udp_connections", metadata !1006, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1021 = metadata !{i32 786445, metadata !1014, metadata !"last_connection", metadata !1006, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1022 = metadata !{i32 786445, metadata !1014, metadata !"name_rbtree", metadata !1006, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !550} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1023 = metadata !{i32 786445, metadata !1014, metadata !"name_sentinel", metadata !1006, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1024 = metadata !{i32 786445, metadata !1014, metadata !"addr_rbtree", metadata !1006, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !550} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1025 = metadata !{i32 786445, metadata !1014, metadata !"addr_sentinel", metadata !1006, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1026 = metadata !{i32 786445, metadata !1014, metadata !"name_resend_queue", metadata !1006, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1027 = metadata !{i32 786445, metadata !1014, metadata !"addr_resend_queue", metadata !1006, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1028 = metadata !{i32 786445, metadata !1014, metadata !"name_expire_queue", metadata !1006, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1029 = metadata !{i32 786445, metadata !1014, metadata !"addr_expire_queue", metadata !1006, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1030 = metadata !{i32 786445, metadata !1014, metadata !"resend_timeout", metadata !1006, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !528} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1031 = metadata !{i32 786445, metadata !1014, metadata !"expire", metadata !1006, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !528} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1032 = metadata !{i32 786445, metadata !1014, metadata !"valid", metadata !1006, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !528} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1033 = metadata !{i32 786445, metadata !1014, metadata !"log_level", metadata !1006, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1034 = metadata !{i32 786445, metadata !1005, metadata !"udp_connection", metadata !1006, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1035} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1035 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1036} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1036 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1006, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1037} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1037 = metadata !{i32 786451, null, metadata !"", metadata !1006, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1038, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1038 = metadata !{metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043}
!1039 = metadata !{i32 786445, metadata !1037, metadata !"connection", metadata !1006, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1040 = metadata !{i32 786445, metadata !1037, metadata !"sockaddr", metadata !1006, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1041 = metadata !{i32 786445, metadata !1037, metadata !"socklen", metadata !1006, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1042 = metadata !{i32 786445, metadata !1037, metadata !"server", metadata !1006, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1043 = metadata !{i32 786445, metadata !1037, metadata !"log", metadata !1006, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1044 = metadata !{i32 786445, metadata !1005, metadata !"ident", metadata !1006, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !476} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1045 = metadata !{i32 786445, metadata !1005, metadata !"state", metadata !1006, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !476} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1046 = metadata !{i32 786445, metadata !1005, metadata !"type", metadata !1006, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !476} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1047 = metadata !{i32 786445, metadata !1005, metadata !"name", metadata !1006, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1048 = metadata !{i32 786445, metadata !1005, metadata !"naddrs", metadata !1006, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1049 = metadata !{i32 786445, metadata !1005, metadata !"addrs", metadata !1006, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !998} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1050 = metadata !{i32 786445, metadata !1005, metadata !"addr", metadata !1006, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !999} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1051 = metadata !{i32 786445, metadata !1005, metadata !"handler", metadata !1006, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1052} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1052 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1006, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1053} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1053 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1054} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1054 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1055, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1055 = metadata !{null, metadata !1009}
!1056 = metadata !{i32 786445, metadata !1005, metadata !"data", metadata !1006, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1057 = metadata !{i32 786445, metadata !1005, metadata !"timeout", metadata !1006, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1058 = metadata !{i32 786445, metadata !1005, metadata !"quick", metadata !1006, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1059 = metadata !{i32 786445, metadata !1005, metadata !"recursion", metadata !1006, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1060 = metadata !{i32 786445, metadata !1005, metadata !"event", metadata !1006, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1061 = metadata !{i32 786445, metadata !702, metadata !"buffer", metadata !703, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1062 = metadata !{i32 786445, metadata !702, metadata !"length", metadata !703, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1063 = metadata !{i32 786445, metadata !702, metadata !"out_bufs", metadata !703, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1064 = metadata !{i32 786445, metadata !702, metadata !"busy_bufs", metadata !703, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1065 = metadata !{i32 786445, metadata !702, metadata !"free_bufs", metadata !703, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1066 = metadata !{i32 786445, metadata !702, metadata !"input_filter_init", metadata !703, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1067} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1067 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1068} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1068 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1069, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1069 = metadata !{metadata !476, metadata !24}
!1070 = metadata !{i32 786445, metadata !702, metadata !"input_filter", metadata !703, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1071} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1071 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1072} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1072 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1073, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1073 = metadata !{metadata !476, metadata !24, metadata !286}
!1074 = metadata !{i32 786445, metadata !702, metadata !"input_filter_ctx", metadata !703, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1075 = metadata !{i32 786445, metadata !702, metadata !"create_key", metadata !703, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1076} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1076 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1077} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1077 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1078, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1078 = metadata !{metadata !476, metadata !508}
!1079 = metadata !{i32 786445, metadata !702, metadata !"create_request", metadata !703, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1076} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1080 = metadata !{i32 786445, metadata !702, metadata !"reinit_request", metadata !703, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1076} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1081 = metadata !{i32 786445, metadata !702, metadata !"process_header", metadata !703, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1076} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1082 = metadata !{i32 786445, metadata !702, metadata !"abort_request", metadata !703, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !505} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1083 = metadata !{i32 786445, metadata !702, metadata !"finalize_request", metadata !703, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1084} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1084 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1085} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1085 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1086, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1086 = metadata !{null, metadata !508, metadata !476}
!1087 = metadata !{i32 786445, metadata !702, metadata !"rewrite_redirect", metadata !703, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1088} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1088 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1089} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1089 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1090, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1090 = metadata !{metadata !476, metadata !508, metadata !960, metadata !30}
!1091 = metadata !{i32 786445, metadata !702, metadata !"rewrite_cookie", metadata !703, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1092} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1092 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1093} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1093 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1094, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1094 = metadata !{metadata !476, metadata !508, metadata !960}
!1095 = metadata !{i32 786445, metadata !702, metadata !"timeout", metadata !703, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1096 = metadata !{i32 786445, metadata !702, metadata !"state", metadata !703, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1097} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1097 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1098} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1098 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !703, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1099} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1099 = metadata !{i32 786451, null, metadata !"", metadata !703, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1100, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1100 = metadata !{metadata !1101, metadata !1102, metadata !1103, metadata !1104, metadata !1105, metadata !1106, metadata !1107}
!1101 = metadata !{i32 786445, metadata !1099, metadata !"bl_time", metadata !703, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1102 = metadata !{i32 786445, metadata !1099, metadata !"bl_state", metadata !703, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1103 = metadata !{i32 786445, metadata !1099, metadata !"status", metadata !703, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1104 = metadata !{i32 786445, metadata !1099, metadata !"response_sec", metadata !703, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !528} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1105 = metadata !{i32 786445, metadata !1099, metadata !"response_msec", metadata !703, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1106 = metadata !{i32 786445, metadata !1099, metadata !"response_length", metadata !703, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1107 = metadata !{i32 786445, metadata !1099, metadata !"peer", metadata !703, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !478} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1108 = metadata !{i32 786445, metadata !702, metadata !"method", metadata !703, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1109 = metadata !{i32 786445, metadata !702, metadata !"schema", metadata !703, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1110 = metadata !{i32 786445, metadata !702, metadata !"uri", metadata !703, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1111 = metadata !{i32 786445, metadata !702, metadata !"cleanup", metadata !703, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1112} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1112 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1113} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1113 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !703, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1114 = metadata !{i32 786445, metadata !702, metadata !"store", metadata !703, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1115 = metadata !{i32 786445, metadata !702, metadata !"cacheable", metadata !703, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1116 = metadata !{i32 786445, metadata !702, metadata !"accel", metadata !703, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1117 = metadata !{i32 786445, metadata !702, metadata !"ssl", metadata !703, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1118 = metadata !{i32 786445, metadata !702, metadata !"cache_status", metadata !703, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1119 = metadata !{i32 786445, metadata !702, metadata !"buffering", metadata !703, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1120 = metadata !{i32 786445, metadata !702, metadata !"keepalive", metadata !703, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1121 = metadata !{i32 786445, metadata !702, metadata !"request_sent", metadata !703, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1122 = metadata !{i32 786445, metadata !702, metadata !"header_sent", metadata !703, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1123 = metadata !{i32 786445, metadata !493, metadata !"upstream_states", metadata !494, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1124 = metadata !{i32 786445, metadata !493, metadata !"pool", metadata !494, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1125 = metadata !{i32 786445, metadata !493, metadata !"header_in", metadata !494, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1126 = metadata !{i32 786445, metadata !493, metadata !"headers_in", metadata !494, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1127} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1127 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !494, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1128} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1128 = metadata !{i32 786451, null, metadata !"", metadata !494, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1129, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1129 = metadata !{metadata !1130, metadata !1131, metadata !1132, metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1140, metadata !1141, metadata !1142, metadata !1143, metadata !1144, metadata !1145, metadata !1146, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155, metadata !1156, metadata !1157, metadata !1158, metadata !1159, metadata !1160, metadata !1161}
!1130 = metadata !{i32 786445, metadata !1128, metadata !"headers", metadata !494, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1131 = metadata !{i32 786445, metadata !1128, metadata !"host", metadata !494, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !960} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1132 = metadata !{i32 786445, metadata !1128, metadata !"connection", metadata !494, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !960} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1133 = metadata !{i32 786445, metadata !1128, metadata !"if_modified_since", metadata !494, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !960} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1134 = metadata !{i32 786445, metadata !1128, metadata !"if_unmodified_since", metadata !494, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !960} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1135 = metadata !{i32 786445, metadata !1128, metadata !"user_agent", metadata !494, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !960} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1136 = metadata !{i32 786445, metadata !1128, metadata !"referer", metadata !494, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !960} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1137 = metadata !{i32 786445, metadata !1128, metadata !"content_length", metadata !494, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !960} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1138 = metadata !{i32 786445, metadata !1128, metadata !"content_type", metadata !494, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !960} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1139 = metadata !{i32 786445, metadata !1128, metadata !"range", metadata !494, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !960} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1140 = metadata !{i32 786445, metadata !1128, metadata !"if_range", metadata !494, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !960} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1141 = metadata !{i32 786445, metadata !1128, metadata !"transfer_encoding", metadata !494, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !960} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1142 = metadata !{i32 786445, metadata !1128, metadata !"expect", metadata !494, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !960} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1143 = metadata !{i32 786445, metadata !1128, metadata !"accept_encoding", metadata !494, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !960} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1144 = metadata !{i32 786445, metadata !1128, metadata !"via", metadata !494, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !960} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1145 = metadata !{i32 786445, metadata !1128, metadata !"authorization", metadata !494, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !960} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1146 = metadata !{i32 786445, metadata !1128, metadata !"keep_alive", metadata !494, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !960} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1147 = metadata !{i32 786445, metadata !1128, metadata !"x_forwarded_for", metadata !494, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !960} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1148 = metadata !{i32 786445, metadata !1128, metadata !"user", metadata !494, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1149 = metadata !{i32 786445, metadata !1128, metadata !"passwd", metadata !494, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1150 = metadata !{i32 786445, metadata !1128, metadata !"cookies", metadata !494, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1151 = metadata !{i32 786445, metadata !1128, metadata !"server", metadata !494, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1152 = metadata !{i32 786445, metadata !1128, metadata !"content_length_n", metadata !494, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1153 = metadata !{i32 786445, metadata !1128, metadata !"keep_alive_n", metadata !494, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !528} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1154 = metadata !{i32 786445, metadata !1128, metadata !"connection_type", metadata !494, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1155 = metadata !{i32 786445, metadata !1128, metadata !"msie", metadata !494, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1156 = metadata !{i32 786445, metadata !1128, metadata !"msie6", metadata !494, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1157 = metadata !{i32 786445, metadata !1128, metadata !"opera", metadata !494, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1158 = metadata !{i32 786445, metadata !1128, metadata !"gecko", metadata !494, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1159 = metadata !{i32 786445, metadata !1128, metadata !"chrome", metadata !494, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1160 = metadata !{i32 786445, metadata !1128, metadata !"safari", metadata !494, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1161 = metadata !{i32 786445, metadata !1128, metadata !"konqueror", metadata !494, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1162 = metadata !{i32 786445, metadata !493, metadata !"headers_out", metadata !494, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1163} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1163 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !494, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1164} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1164 = metadata !{i32 786451, null, metadata !"", metadata !494, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1165, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1165 = metadata !{metadata !1166, metadata !1167, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1172, metadata !1173, metadata !1174, metadata !1175, metadata !1176, metadata !1177, metadata !1178, metadata !1179, metadata !1180, metadata !1181, metadata !1182, metadata !1183, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1188, metadata !1189, metadata !1190}
!1166 = metadata !{i32 786445, metadata !1164, metadata !"headers", metadata !494, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1167 = metadata !{i32 786445, metadata !1164, metadata !"status", metadata !494, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1168 = metadata !{i32 786445, metadata !1164, metadata !"status_line", metadata !494, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1169 = metadata !{i32 786445, metadata !1164, metadata !"server", metadata !494, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !960} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1170 = metadata !{i32 786445, metadata !1164, metadata !"date", metadata !494, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !960} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1171 = metadata !{i32 786445, metadata !1164, metadata !"content_length", metadata !494, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !960} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1172 = metadata !{i32 786445, metadata !1164, metadata !"content_encoding", metadata !494, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !960} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1173 = metadata !{i32 786445, metadata !1164, metadata !"location", metadata !494, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !960} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1174 = metadata !{i32 786445, metadata !1164, metadata !"refresh", metadata !494, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !960} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1175 = metadata !{i32 786445, metadata !1164, metadata !"last_modified", metadata !494, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !960} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1176 = metadata !{i32 786445, metadata !1164, metadata !"content_range", metadata !494, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !960} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1177 = metadata !{i32 786445, metadata !1164, metadata !"accept_ranges", metadata !494, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !960} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1178 = metadata !{i32 786445, metadata !1164, metadata !"www_authenticate", metadata !494, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !960} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1179 = metadata !{i32 786445, metadata !1164, metadata !"expires", metadata !494, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !960} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1180 = metadata !{i32 786445, metadata !1164, metadata !"etag", metadata !494, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !960} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1181 = metadata !{i32 786445, metadata !1164, metadata !"override_charset", metadata !494, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !478} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1182 = metadata !{i32 786445, metadata !1164, metadata !"content_type_len", metadata !494, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1183 = metadata !{i32 786445, metadata !1164, metadata !"content_type", metadata !494, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1184 = metadata !{i32 786445, metadata !1164, metadata !"charset", metadata !494, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1185 = metadata !{i32 786445, metadata !1164, metadata !"content_type_lowcase", metadata !494, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1186 = metadata !{i32 786445, metadata !1164, metadata !"content_type_hash", metadata !494, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1187 = metadata !{i32 786445, metadata !1164, metadata !"cache_control", metadata !494, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1188 = metadata !{i32 786445, metadata !1164, metadata !"content_length_n", metadata !494, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1189 = metadata !{i32 786445, metadata !1164, metadata !"date_time", metadata !494, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !528} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1190 = metadata !{i32 786445, metadata !1164, metadata !"last_modified_time", metadata !494, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !528} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1191 = metadata !{i32 786445, metadata !493, metadata !"request_body", metadata !494, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1192} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1192 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1193} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1193 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !494, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1194} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1194 = metadata !{i32 786451, null, metadata !"", metadata !494, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1195, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1195 = metadata !{metadata !1196, metadata !1197, metadata !1198, metadata !1199, metadata !1200, metadata !1201}
!1196 = metadata !{i32 786445, metadata !1194, metadata !"temp_file", metadata !494, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !811} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1197 = metadata !{i32 786445, metadata !1194, metadata !"bufs", metadata !494, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1198 = metadata !{i32 786445, metadata !1194, metadata !"buf", metadata !494, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1199 = metadata !{i32 786445, metadata !1194, metadata !"rest", metadata !494, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1200 = metadata !{i32 786445, metadata !1194, metadata !"to_write", metadata !494, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1201 = metadata !{i32 786445, metadata !1194, metadata !"post_handler", metadata !494, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1202} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1202 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !494, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !505} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1203 = metadata !{i32 786445, metadata !493, metadata !"lingering_time", metadata !494, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !528} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1204 = metadata !{i32 786445, metadata !493, metadata !"start_sec", metadata !494, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !528} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1205 = metadata !{i32 786445, metadata !493, metadata !"start_msec", metadata !494, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1206 = metadata !{i32 786445, metadata !493, metadata !"method", metadata !494, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1207 = metadata !{i32 786445, metadata !493, metadata !"http_version", metadata !494, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1208 = metadata !{i32 786445, metadata !493, metadata !"request_line", metadata !494, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1209 = metadata !{i32 786445, metadata !493, metadata !"uri", metadata !494, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1210 = metadata !{i32 786445, metadata !493, metadata !"args", metadata !494, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1211 = metadata !{i32 786445, metadata !493, metadata !"exten", metadata !494, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1212 = metadata !{i32 786445, metadata !493, metadata !"unparsed_uri", metadata !494, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1213 = metadata !{i32 786445, metadata !493, metadata !"method_name", metadata !494, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1214 = metadata !{i32 786445, metadata !493, metadata !"http_protocol", metadata !494, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1215 = metadata !{i32 786445, metadata !493, metadata !"out", metadata !494, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1216 = metadata !{i32 786445, metadata !493, metadata !"main", metadata !494, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !508} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1217 = metadata !{i32 786445, metadata !493, metadata !"parent", metadata !494, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !508} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1218 = metadata !{i32 786445, metadata !493, metadata !"postponed", metadata !494, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1219} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1219 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1220} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1220 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !494, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1221} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1221 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !494, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1222, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1222 = metadata !{metadata !1223, metadata !1224, metadata !1225}
!1223 = metadata !{i32 786445, metadata !1221, metadata !"request", metadata !494, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !508} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1224 = metadata !{i32 786445, metadata !1221, metadata !"out", metadata !494, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1225 = metadata !{i32 786445, metadata !1221, metadata !"next", metadata !494, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1219} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1226 = metadata !{i32 786445, metadata !493, metadata !"post_subrequest", metadata !494, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1227} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1227 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1228} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1228 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !494, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1229} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1229 = metadata !{i32 786451, null, metadata !"", metadata !494, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1230, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1230 = metadata !{metadata !1231, metadata !1236}
!1231 = metadata !{i32 786445, metadata !1229, metadata !"handler", metadata !494, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1232} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1232 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !494, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1233} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1233 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1234} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1235 = metadata !{metadata !476, metadata !508, metadata !24, metadata !476}
!1236 = metadata !{i32 786445, metadata !1229, metadata !"data", metadata !494, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1237 = metadata !{i32 786445, metadata !493, metadata !"posted_requests", metadata !494, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1238} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1238 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1239} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1239 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !494, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1240} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1240 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !494, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1241, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1241 = metadata !{metadata !1242, metadata !1243}
!1242 = metadata !{i32 786445, metadata !1240, metadata !"request", metadata !494, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !508} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1243 = metadata !{i32 786445, metadata !1240, metadata !"next", metadata !494, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1238} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1244 = metadata !{i32 786445, metadata !493, metadata !"virtual_names", metadata !494, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1245} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1245 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1246} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1246 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !494, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1247} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1247 = metadata !{i32 786451, null, metadata !"", metadata !494, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1248, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1248 = metadata !{metadata !1249, metadata !1262, metadata !1263}
!1249 = metadata !{i32 786445, metadata !1247, metadata !"names", metadata !494, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1250} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1250 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !494, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1251} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1251 = metadata !{i32 786451, null, metadata !"", metadata !917, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1252, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1252 = metadata !{metadata !1253, metadata !1254, metadata !1261}
!1253 = metadata !{i32 786445, metadata !1251, metadata !"hash", metadata !917, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !915} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1254 = metadata !{i32 786445, metadata !1251, metadata !"wc_head", metadata !917, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1255} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1255 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1256} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1256 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !917, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1257} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1257 = metadata !{i32 786451, null, metadata !"", metadata !917, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1258, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1258 = metadata !{metadata !1259, metadata !1260}
!1259 = metadata !{i32 786445, metadata !1257, metadata !"hash", metadata !917, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !915} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1260 = metadata !{i32 786445, metadata !1257, metadata !"value", metadata !917, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1261 = metadata !{i32 786445, metadata !1251, metadata !"wc_tail", metadata !917, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1255} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1262 = metadata !{i32 786445, metadata !1247, metadata !"nregex", metadata !494, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1263 = metadata !{i32 786445, metadata !1247, metadata !"regex", metadata !494, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1264} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1264 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1265} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1265 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !494, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1266} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1266 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1267, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1268, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1267 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1268 = metadata !{metadata !1269, metadata !1312, metadata !1468}
!1269 = metadata !{i32 786445, metadata !1266, metadata !"regex", metadata !1267, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1270} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1270 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1271 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1267, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1272} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1272 = metadata !{i32 786451, null, metadata !"", metadata !483, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1273, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1273 = metadata !{metadata !1274, metadata !1302, metadata !1303, metadata !1310, metadata !1311}
!1274 = metadata !{i32 786445, metadata !1272, metadata !"regex", metadata !483, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1275} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1275 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1276} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1276 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !483, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1277} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1277 = metadata !{i32 786451, null, metadata !"", metadata !1278, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1279, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1278 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1279 = metadata !{metadata !1280, metadata !1285}
!1280 = metadata !{i32 786445, metadata !1277, metadata !"code", metadata !1278, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1281} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1281 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1282} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1282 = metadata !{i32 786454, null, metadata !"pcre", metadata !1278, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1283} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1283 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1284, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1284 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1285 = metadata !{i32 786445, metadata !1277, metadata !"extra", metadata !1278, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1286} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1286 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1287} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1287 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1278, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1288} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1288 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1284, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1289, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1289 = metadata !{metadata !1290, metadata !1291, metadata !1292, metadata !1293, metadata !1294, metadata !1297, metadata !1298, metadata !1301}
!1290 = metadata !{i32 786445, metadata !1288, metadata !"flags", metadata !1284, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1291 = metadata !{i32 786445, metadata !1288, metadata !"study_data", metadata !1284, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1292 = metadata !{i32 786445, metadata !1288, metadata !"match_limit", metadata !1284, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1293 = metadata !{i32 786445, metadata !1288, metadata !"callout_data", metadata !1284, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1294 = metadata !{i32 786445, metadata !1288, metadata !"tables", metadata !1284, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !1295} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1295 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1296} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1296 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!1297 = metadata !{i32 786445, metadata !1288, metadata !"match_limit_recursion", metadata !1284, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1298 = metadata !{i32 786445, metadata !1288, metadata !"mark", metadata !1284, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1299} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1299 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1300} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1300 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1301 = metadata !{i32 786445, metadata !1288, metadata !"executable_jit", metadata !1284, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1302 = metadata !{i32 786445, metadata !1272, metadata !"ncaptures", metadata !483, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1303 = metadata !{i32 786445, metadata !1272, metadata !"variables", metadata !483, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1304} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1304 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1305} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1305 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !483, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1306} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1306 = metadata !{i32 786451, null, metadata !"", metadata !483, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1307, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1307 = metadata !{metadata !1308, metadata !1309}
!1308 = metadata !{i32 786445, metadata !1306, metadata !"capture", metadata !483, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1309 = metadata !{i32 786445, metadata !1306, metadata !"index", metadata !483, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !476} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1310 = metadata !{i32 786445, metadata !1272, metadata !"nvariables", metadata !483, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1311 = metadata !{i32 786445, metadata !1272, metadata !"name", metadata !483, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1312 = metadata !{i32 786445, metadata !1266, metadata !"server", metadata !1267, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1313} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1313 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1314} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1314 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1267, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1315} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1315 = metadata !{i32 786451, null, metadata !"", metadata !1267, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1316, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1316 = metadata !{metadata !1317, metadata !1318, metadata !1327, metadata !1328, metadata !1329, metadata !1330, metadata !1331, metadata !1332, metadata !1333, metadata !1334, metadata !1335, metadata !1336, metadata !1337, metadata !1338}
!1317 = metadata !{i32 786445, metadata !1315, metadata !"server_names", metadata !1267, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1318 = metadata !{i32 786445, metadata !1315, metadata !"ctx", metadata !1267, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1319} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1319 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1320} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1320 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1267, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1321} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1321 = metadata !{i32 786451, null, metadata !"", metadata !1322, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1323, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1322 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1323 = metadata !{metadata !1324, metadata !1325, metadata !1326}
!1324 = metadata !{i32 786445, metadata !1321, metadata !"main_conf", metadata !1322, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1325 = metadata !{i32 786445, metadata !1321, metadata !"srv_conf", metadata !1322, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1326 = metadata !{i32 786445, metadata !1321, metadata !"loc_conf", metadata !1322, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1327 = metadata !{i32 786445, metadata !1315, metadata !"server_name", metadata !1267, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1328 = metadata !{i32 786445, metadata !1315, metadata !"connection_pool_size", metadata !1267, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1329 = metadata !{i32 786445, metadata !1315, metadata !"request_pool_size", metadata !1267, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1330 = metadata !{i32 786445, metadata !1315, metadata !"client_header_buffer_size", metadata !1267, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1331 = metadata !{i32 786445, metadata !1315, metadata !"large_client_header_buffers", metadata !1267, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !791} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1332 = metadata !{i32 786445, metadata !1315, metadata !"client_header_timeout", metadata !1267, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1333 = metadata !{i32 786445, metadata !1315, metadata !"ignore_invalid_headers", metadata !1267, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !471} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1334 = metadata !{i32 786445, metadata !1315, metadata !"merge_slashes", metadata !1267, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !471} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1335 = metadata !{i32 786445, metadata !1315, metadata !"underscores_in_headers", metadata !1267, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !471} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1336 = metadata !{i32 786445, metadata !1315, metadata !"listen", metadata !1267, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1337 = metadata !{i32 786445, metadata !1315, metadata !"captures", metadata !1267, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1338 = metadata !{i32 786445, metadata !1315, metadata !"named_locations", metadata !1267, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1339} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1339 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1340} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1340 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1341} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1341 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1267, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1342} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1342 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1267, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1343, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1343 = metadata !{metadata !1344, metadata !1345, metadata !1346, metadata !1347, metadata !1348, metadata !1349, metadata !1350, metadata !1351, metadata !1352, metadata !1353, metadata !1366, metadata !1367, metadata !1368, metadata !1369, metadata !1370, metadata !1372, metadata !1373, metadata !1374, metadata !1375, metadata !1376, metadata !1377, metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1382, metadata !1383, metadata !1384, metadata !1385, metadata !1386, metadata !1387, metadata !1388, metadata !1389, metadata !1390, metadata !1391, metadata !1392, metadata !1393, metadata !1394, metadata !1395, metadata !1396, metadata !1397, metadata !1398, metadata !1399, metadata !1400, metadata !1401, metadata !1402, metadata !1403, metadata !1404, metadata !1405, metadata !1406, metadata !1407, metadata !1408, metadata !1409, metadata !1410, metadata !1411, metadata !1412, metadata !1413, metadata !1414, metadata !1415, metadata !1416, metadata !1417, metadata !1418, metadata !1419, metadata !1420, metadata !1421, metadata !1422, metadata !1423, metadata !1424, metadata !1425, metadata !1436, metadata !1437, metadata !1447, metadata !1448, metadata !1460, metadata !1461, metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466, metadata !1467}
!1344 = metadata !{i32 786445, metadata !1342, metadata !"name", metadata !1267, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1345 = metadata !{i32 786445, metadata !1342, metadata !"regex", metadata !1267, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1270} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1346 = metadata !{i32 786445, metadata !1342, metadata !"noname", metadata !1267, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1347 = metadata !{i32 786445, metadata !1342, metadata !"lmt_excpt", metadata !1267, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1348 = metadata !{i32 786445, metadata !1342, metadata !"named", metadata !1267, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1349 = metadata !{i32 786445, metadata !1342, metadata !"exact_match", metadata !1267, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1350 = metadata !{i32 786445, metadata !1342, metadata !"noregex", metadata !1267, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1351 = metadata !{i32 786445, metadata !1342, metadata !"auto_redirect", metadata !1267, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1352 = metadata !{i32 786445, metadata !1342, metadata !"gzip_disable_msie6", metadata !1267, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1353 = metadata !{i32 786445, metadata !1342, metadata !"static_locations", metadata !1267, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1354} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1354 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1355} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1355 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1267, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1356} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1356 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1267, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1357, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1357 = metadata !{metadata !1358, metadata !1359, metadata !1360, metadata !1361, metadata !1362, metadata !1363, metadata !1364, metadata !1365}
!1358 = metadata !{i32 786445, metadata !1356, metadata !"left", metadata !1267, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1354} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1359 = metadata !{i32 786445, metadata !1356, metadata !"right", metadata !1267, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1354} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1360 = metadata !{i32 786445, metadata !1356, metadata !"tree", metadata !1267, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1354} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1361 = metadata !{i32 786445, metadata !1356, metadata !"exact", metadata !1267, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1340} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1362 = metadata !{i32 786445, metadata !1356, metadata !"inclusive", metadata !1267, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1340} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1363 = metadata !{i32 786445, metadata !1356, metadata !"auto_redirect", metadata !1267, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1364 = metadata !{i32 786445, metadata !1356, metadata !"len", metadata !1267, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1365 = metadata !{i32 786445, metadata !1356, metadata !"name", metadata !1267, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !930} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1366 = metadata !{i32 786445, metadata !1342, metadata !"regex_locations", metadata !1267, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1339} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1367 = metadata !{i32 786445, metadata !1342, metadata !"loc_conf", metadata !1267, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1368 = metadata !{i32 786445, metadata !1342, metadata !"limit_except", metadata !1267, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !497} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1369 = metadata !{i32 786445, metadata !1342, metadata !"limit_except_loc_conf", metadata !1267, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1370 = metadata !{i32 786445, metadata !1342, metadata !"handler", metadata !1267, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1371} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1371 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1267, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1076} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1372 = metadata !{i32 786445, metadata !1342, metadata !"alias", metadata !1267, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1373 = metadata !{i32 786445, metadata !1342, metadata !"root", metadata !1267, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1374 = metadata !{i32 786445, metadata !1342, metadata !"post_action", metadata !1267, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1375 = metadata !{i32 786445, metadata !1342, metadata !"root_lengths", metadata !1267, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1376 = metadata !{i32 786445, metadata !1342, metadata !"root_values", metadata !1267, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1377 = metadata !{i32 786445, metadata !1342, metadata !"types", metadata !1267, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1378 = metadata !{i32 786445, metadata !1342, metadata !"types_hash", metadata !1267, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !915} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1379 = metadata !{i32 786445, metadata !1342, metadata !"default_type", metadata !1267, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1380 = metadata !{i32 786445, metadata !1342, metadata !"client_max_body_size", metadata !1267, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1381 = metadata !{i32 786445, metadata !1342, metadata !"directio", metadata !1267, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1382 = metadata !{i32 786445, metadata !1342, metadata !"directio_alignment", metadata !1267, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1383 = metadata !{i32 786445, metadata !1342, metadata !"client_body_buffer_size", metadata !1267, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1384 = metadata !{i32 786445, metadata !1342, metadata !"send_lowat", metadata !1267, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1385 = metadata !{i32 786445, metadata !1342, metadata !"postpone_output", metadata !1267, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1386 = metadata !{i32 786445, metadata !1342, metadata !"limit_rate", metadata !1267, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1387 = metadata !{i32 786445, metadata !1342, metadata !"limit_rate_after", metadata !1267, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1388 = metadata !{i32 786445, metadata !1342, metadata !"sendfile_max_chunk", metadata !1267, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1389 = metadata !{i32 786445, metadata !1342, metadata !"read_ahead", metadata !1267, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1390 = metadata !{i32 786445, metadata !1342, metadata !"client_body_timeout", metadata !1267, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1391 = metadata !{i32 786445, metadata !1342, metadata !"send_timeout", metadata !1267, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1392 = metadata !{i32 786445, metadata !1342, metadata !"keepalive_timeout", metadata !1267, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1393 = metadata !{i32 786445, metadata !1342, metadata !"lingering_time", metadata !1267, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1394 = metadata !{i32 786445, metadata !1342, metadata !"lingering_timeout", metadata !1267, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1395 = metadata !{i32 786445, metadata !1342, metadata !"resolver_timeout", metadata !1267, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1396 = metadata !{i32 786445, metadata !1342, metadata !"resolver", metadata !1267, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1012} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1397 = metadata !{i32 786445, metadata !1342, metadata !"keepalive_header", metadata !1267, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !528} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1398 = metadata !{i32 786445, metadata !1342, metadata !"keepalive_requests", metadata !1267, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1399 = metadata !{i32 786445, metadata !1342, metadata !"keepalive_disable", metadata !1267, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1400 = metadata !{i32 786445, metadata !1342, metadata !"satisfy", metadata !1267, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1401 = metadata !{i32 786445, metadata !1342, metadata !"lingering_close", metadata !1267, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1402 = metadata !{i32 786445, metadata !1342, metadata !"if_modified_since", metadata !1267, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1403 = metadata !{i32 786445, metadata !1342, metadata !"max_ranges", metadata !1267, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1404 = metadata !{i32 786445, metadata !1342, metadata !"client_body_in_file_only", metadata !1267, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1405 = metadata !{i32 786445, metadata !1342, metadata !"client_body_in_single_buffer", metadata !1267, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !471} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1406 = metadata !{i32 786445, metadata !1342, metadata !"internal", metadata !1267, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !471} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1407 = metadata !{i32 786445, metadata !1342, metadata !"sendfile", metadata !1267, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !471} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1408 = metadata !{i32 786445, metadata !1342, metadata !"tcp_nopush", metadata !1267, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !471} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1409 = metadata !{i32 786445, metadata !1342, metadata !"tcp_nodelay", metadata !1267, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !471} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1410 = metadata !{i32 786445, metadata !1342, metadata !"reset_timedout_connection", metadata !1267, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !471} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1411 = metadata !{i32 786445, metadata !1342, metadata !"server_name_in_redirect", metadata !1267, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !471} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1412 = metadata !{i32 786445, metadata !1342, metadata !"port_in_redirect", metadata !1267, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !471} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1413 = metadata !{i32 786445, metadata !1342, metadata !"msie_padding", metadata !1267, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !471} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1414 = metadata !{i32 786445, metadata !1342, metadata !"msie_refresh", metadata !1267, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !471} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1415 = metadata !{i32 786445, metadata !1342, metadata !"log_not_found", metadata !1267, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !471} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1416 = metadata !{i32 786445, metadata !1342, metadata !"log_subrequest", metadata !1267, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !471} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1417 = metadata !{i32 786445, metadata !1342, metadata !"recursive_error_pages", metadata !1267, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !471} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1418 = metadata !{i32 786445, metadata !1342, metadata !"server_tokens", metadata !1267, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !471} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1419 = metadata !{i32 786445, metadata !1342, metadata !"chunked_transfer_encoding", metadata !1267, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !471} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1420 = metadata !{i32 786445, metadata !1342, metadata !"gzip_vary", metadata !1267, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !471} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1421 = metadata !{i32 786445, metadata !1342, metadata !"gzip_http_version", metadata !1267, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1422 = metadata !{i32 786445, metadata !1342, metadata !"gzip_proxied", metadata !1267, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1423 = metadata !{i32 786445, metadata !1342, metadata !"gzip_disable", metadata !1267, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1424 = metadata !{i32 786445, metadata !1342, metadata !"disable_symlinks", metadata !1267, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1425 = metadata !{i32 786445, metadata !1342, metadata !"disable_symlinks_from", metadata !1267, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1426} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1426 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1427} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1427 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1267, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1428} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1428 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1430, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1429 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1430 = metadata !{metadata !1431, metadata !1432, metadata !1434, metadata !1435}
!1431 = metadata !{i32 786445, metadata !1428, metadata !"value", metadata !1429, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1432 = metadata !{i32 786445, metadata !1428, metadata !"flushes", metadata !1429, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1433} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1433 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1434 = metadata !{i32 786445, metadata !1428, metadata !"lengths", metadata !1429, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1435 = metadata !{i32 786445, metadata !1428, metadata !"values", metadata !1429, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1436 = metadata !{i32 786445, metadata !1342, metadata !"error_pages", metadata !1267, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1437 = metadata !{i32 786445, metadata !1342, metadata !"try_files", metadata !1267, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1438} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1438 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1439} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1439 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1267, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1440} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1440 = metadata !{i32 786451, null, metadata !"", metadata !1267, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1441, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1441 = metadata !{metadata !1442, metadata !1443, metadata !1444, metadata !1445, metadata !1446}
!1442 = metadata !{i32 786445, metadata !1440, metadata !"lengths", metadata !1267, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1443 = metadata !{i32 786445, metadata !1440, metadata !"values", metadata !1267, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1444 = metadata !{i32 786445, metadata !1440, metadata !"name", metadata !1267, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1445 = metadata !{i32 786445, metadata !1440, metadata !"code", metadata !1267, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1446 = metadata !{i32 786445, metadata !1440, metadata !"test_dir", metadata !1267, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1447 = metadata !{i32 786445, metadata !1342, metadata !"client_body_temp_path", metadata !1267, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !615} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1448 = metadata !{i32 786445, metadata !1342, metadata !"open_file_cache", metadata !1267, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1449} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1449 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1450} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1450 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1267, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1451} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1451 = metadata !{i32 786451, null, metadata !"", metadata !1452, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1453, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1452 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1453 = metadata !{metadata !1454, metadata !1455, metadata !1456, metadata !1457, metadata !1458, metadata !1459}
!1454 = metadata !{i32 786445, metadata !1451, metadata !"rbtree", metadata !1452, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1455 = metadata !{i32 786445, metadata !1451, metadata !"sentinel", metadata !1452, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1456 = metadata !{i32 786445, metadata !1451, metadata !"expire_queue", metadata !1452, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1457 = metadata !{i32 786445, metadata !1451, metadata !"current", metadata !1452, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1458 = metadata !{i32 786445, metadata !1451, metadata !"max", metadata !1452, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1459 = metadata !{i32 786445, metadata !1451, metadata !"inactive", metadata !1452, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !528} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1460 = metadata !{i32 786445, metadata !1342, metadata !"open_file_cache_valid", metadata !1267, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !528} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1461 = metadata !{i32 786445, metadata !1342, metadata !"open_file_cache_min_uses", metadata !1267, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1462 = metadata !{i32 786445, metadata !1342, metadata !"open_file_cache_errors", metadata !1267, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !471} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1463 = metadata !{i32 786445, metadata !1342, metadata !"open_file_cache_events", metadata !1267, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !471} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1464 = metadata !{i32 786445, metadata !1342, metadata !"error_log", metadata !1267, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1465 = metadata !{i32 786445, metadata !1342, metadata !"types_hash_max_size", metadata !1267, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1466 = metadata !{i32 786445, metadata !1342, metadata !"types_hash_bucket_size", metadata !1267, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1467 = metadata !{i32 786445, metadata !1342, metadata !"locations", metadata !1267, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1468 = metadata !{i32 786445, metadata !1266, metadata !"name", metadata !1267, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1469 = metadata !{i32 786445, metadata !493, metadata !"phase_handler", metadata !494, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !476} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1470 = metadata !{i32 786445, metadata !493, metadata !"content_handler", metadata !494, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1371} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1471 = metadata !{i32 786445, metadata !493, metadata !"access_code", metadata !494, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1472 = metadata !{i32 786445, metadata !493, metadata !"variables", metadata !494, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1473} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1473 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1474} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1474 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !494, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1475} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1475 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !494, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1476} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1476 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1477, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1477 = metadata !{metadata !1478, metadata !1479, metadata !1480, metadata !1481, metadata !1482, metadata !1483}
!1478 = metadata !{i32 786445, metadata !1476, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1479 = metadata !{i32 786445, metadata !1476, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1480 = metadata !{i32 786445, metadata !1476, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1481 = metadata !{i32 786445, metadata !1476, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1482 = metadata !{i32 786445, metadata !1476, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1483 = metadata !{i32 786445, metadata !1476, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1484 = metadata !{i32 786445, metadata !493, metadata !"ncaptures", metadata !494, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1485 = metadata !{i32 786445, metadata !493, metadata !"captures", metadata !494, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1486} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1486 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1487 = metadata !{i32 786445, metadata !493, metadata !"captures_data", metadata !494, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1488 = metadata !{i32 786445, metadata !493, metadata !"limit_rate", metadata !494, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1489 = metadata !{i32 786445, metadata !493, metadata !"header_size", metadata !494, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1490 = metadata !{i32 786445, metadata !493, metadata !"request_length", metadata !494, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1491 = metadata !{i32 786445, metadata !493, metadata !"err_status", metadata !494, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1492 = metadata !{i32 786445, metadata !493, metadata !"http_connection", metadata !494, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1493} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1493 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1494} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1494 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !494, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1495} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1495 = metadata !{i32 786451, null, metadata !"", metadata !494, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1496, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1496 = metadata !{metadata !1497, metadata !1498, metadata !1500, metadata !1501, metadata !1502, metadata !1503}
!1497 = metadata !{i32 786445, metadata !1495, metadata !"request", metadata !494, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !508} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1498 = metadata !{i32 786445, metadata !1495, metadata !"busy", metadata !494, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1499} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1499 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1500 = metadata !{i32 786445, metadata !1495, metadata !"nbusy", metadata !494, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !476} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1501 = metadata !{i32 786445, metadata !1495, metadata !"free", metadata !494, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1499} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1502 = metadata !{i32 786445, metadata !1495, metadata !"nfree", metadata !494, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !476} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1503 = metadata !{i32 786445, metadata !1495, metadata !"pipeline", metadata !494, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1504 = metadata !{i32 786445, metadata !493, metadata !"log_handler", metadata !494, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1505} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1505 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !494, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1506} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1506 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1507} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1507 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1508, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1508 = metadata !{metadata !44, metadata !508, metadata !508, metadata !44, metadata !30}
!1509 = metadata !{i32 786445, metadata !493, metadata !"cleanup", metadata !494, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1510} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1510 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1511} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1511 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !494, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1512} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1512 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !494, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1513, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1513 = metadata !{metadata !1514, metadata !1515, metadata !1516}
!1514 = metadata !{i32 786445, metadata !1512, metadata !"handler", metadata !494, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1113} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1515 = metadata !{i32 786445, metadata !1512, metadata !"data", metadata !494, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1516 = metadata !{i32 786445, metadata !1512, metadata !"next", metadata !494, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1510} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1517 = metadata !{i32 786445, metadata !493, metadata !"subrequests", metadata !494, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1518 = metadata !{i32 786445, metadata !493, metadata !"count", metadata !494, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1519 = metadata !{i32 786445, metadata !493, metadata !"blocked", metadata !494, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1520 = metadata !{i32 786445, metadata !493, metadata !"aio", metadata !494, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1521 = metadata !{i32 786445, metadata !493, metadata !"http_state", metadata !494, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1522 = metadata !{i32 786445, metadata !493, metadata !"complex_uri", metadata !494, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1523 = metadata !{i32 786445, metadata !493, metadata !"quoted_uri", metadata !494, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1524 = metadata !{i32 786445, metadata !493, metadata !"plus_in_uri", metadata !494, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1525 = metadata !{i32 786445, metadata !493, metadata !"space_in_uri", metadata !494, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1526 = metadata !{i32 786445, metadata !493, metadata !"invalid_header", metadata !494, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1527 = metadata !{i32 786445, metadata !493, metadata !"add_uri_to_alias", metadata !494, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1528 = metadata !{i32 786445, metadata !493, metadata !"valid_location", metadata !494, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1529 = metadata !{i32 786445, metadata !493, metadata !"valid_unparsed_uri", metadata !494, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1530 = metadata !{i32 786445, metadata !493, metadata !"uri_changed", metadata !494, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1531 = metadata !{i32 786445, metadata !493, metadata !"uri_changes", metadata !494, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1532 = metadata !{i32 786445, metadata !493, metadata !"request_body_in_single_buf", metadata !494, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1533 = metadata !{i32 786445, metadata !493, metadata !"request_body_in_file_only", metadata !494, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1534 = metadata !{i32 786445, metadata !493, metadata !"request_body_in_persistent_file", metadata !494, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1535 = metadata !{i32 786445, metadata !493, metadata !"request_body_in_clean_file", metadata !494, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1536 = metadata !{i32 786445, metadata !493, metadata !"request_body_file_group_access", metadata !494, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1537 = metadata !{i32 786445, metadata !493, metadata !"request_body_file_log_level", metadata !494, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1538 = metadata !{i32 786445, metadata !493, metadata !"subrequest_in_memory", metadata !494, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1539 = metadata !{i32 786445, metadata !493, metadata !"waited", metadata !494, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1540 = metadata !{i32 786445, metadata !493, metadata !"cached", metadata !494, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1541 = metadata !{i32 786445, metadata !493, metadata !"gzip_tested", metadata !494, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1542 = metadata !{i32 786445, metadata !493, metadata !"gzip_ok", metadata !494, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1543 = metadata !{i32 786445, metadata !493, metadata !"gzip_vary", metadata !494, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1544 = metadata !{i32 786445, metadata !493, metadata !"proxy", metadata !494, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1545 = metadata !{i32 786445, metadata !493, metadata !"bypass_cache", metadata !494, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1546 = metadata !{i32 786445, metadata !493, metadata !"no_cache", metadata !494, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1547 = metadata !{i32 786445, metadata !493, metadata !"limit_conn_set", metadata !494, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1548 = metadata !{i32 786445, metadata !493, metadata !"limit_req_set", metadata !494, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1549 = metadata !{i32 786445, metadata !493, metadata !"pipeline", metadata !494, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1550 = metadata !{i32 786445, metadata !493, metadata !"plain_http", metadata !494, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1551 = metadata !{i32 786445, metadata !493, metadata !"chunked", metadata !494, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1552 = metadata !{i32 786445, metadata !493, metadata !"header_only", metadata !494, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1553 = metadata !{i32 786445, metadata !493, metadata !"keepalive", metadata !494, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1554 = metadata !{i32 786445, metadata !493, metadata !"lingering_close", metadata !494, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1555 = metadata !{i32 786445, metadata !493, metadata !"discard_body", metadata !494, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1556 = metadata !{i32 786445, metadata !493, metadata !"internal", metadata !494, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1557 = metadata !{i32 786445, metadata !493, metadata !"error_page", metadata !494, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1558 = metadata !{i32 786445, metadata !493, metadata !"ignore_content_encoding", metadata !494, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1559 = metadata !{i32 786445, metadata !493, metadata !"filter_finalize", metadata !494, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1560 = metadata !{i32 786445, metadata !493, metadata !"post_action", metadata !494, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1561 = metadata !{i32 786445, metadata !493, metadata !"request_complete", metadata !494, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1562 = metadata !{i32 786445, metadata !493, metadata !"request_output", metadata !494, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1563 = metadata !{i32 786445, metadata !493, metadata !"header_sent", metadata !494, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1564 = metadata !{i32 786445, metadata !493, metadata !"expect_tested", metadata !494, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1565 = metadata !{i32 786445, metadata !493, metadata !"root_tested", metadata !494, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1566 = metadata !{i32 786445, metadata !493, metadata !"done", metadata !494, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1567 = metadata !{i32 786445, metadata !493, metadata !"logged", metadata !494, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1568 = metadata !{i32 786445, metadata !493, metadata !"buffered", metadata !494, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1569 = metadata !{i32 786445, metadata !493, metadata !"main_filter_need_in_memory", metadata !494, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1570 = metadata !{i32 786445, metadata !493, metadata !"filter_need_in_memory", metadata !494, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1571 = metadata !{i32 786445, metadata !493, metadata !"filter_need_temporary", metadata !494, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1572 = metadata !{i32 786445, metadata !493, metadata !"allow_ranges", metadata !494, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1573 = metadata !{i32 786445, metadata !493, metadata !"state", metadata !494, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1574 = metadata !{i32 786445, metadata !493, metadata !"header_hash", metadata !494, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1575 = metadata !{i32 786445, metadata !493, metadata !"lowcase_index", metadata !494, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1576 = metadata !{i32 786445, metadata !493, metadata !"lowcase_header", metadata !494, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1577} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1577 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1578, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1578 = metadata !{metadata !1579}
!1579 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1580 = metadata !{i32 786445, metadata !493, metadata !"header_name_start", metadata !494, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1581 = metadata !{i32 786445, metadata !493, metadata !"header_name_end", metadata !494, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1582 = metadata !{i32 786445, metadata !493, metadata !"header_start", metadata !494, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1583 = metadata !{i32 786445, metadata !493, metadata !"header_end", metadata !494, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1584 = metadata !{i32 786445, metadata !493, metadata !"uri_start", metadata !494, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1585 = metadata !{i32 786445, metadata !493, metadata !"uri_end", metadata !494, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1586 = metadata !{i32 786445, metadata !493, metadata !"uri_ext", metadata !494, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1587 = metadata !{i32 786445, metadata !493, metadata !"args_start", metadata !494, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1588 = metadata !{i32 786445, metadata !493, metadata !"request_start", metadata !494, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1589 = metadata !{i32 786445, metadata !493, metadata !"request_end", metadata !494, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1590 = metadata !{i32 786445, metadata !493, metadata !"method_end", metadata !494, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1591 = metadata !{i32 786445, metadata !493, metadata !"schema_start", metadata !494, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1592 = metadata !{i32 786445, metadata !493, metadata !"schema_end", metadata !494, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1593 = metadata !{i32 786445, metadata !493, metadata !"host_start", metadata !494, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1594 = metadata !{i32 786445, metadata !493, metadata !"host_end", metadata !494, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1595 = metadata !{i32 786445, metadata !493, metadata !"port_start", metadata !494, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1596 = metadata !{i32 786445, metadata !493, metadata !"port_end", metadata !494, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1597 = metadata !{i32 786445, metadata !493, metadata !"http_minor", metadata !494, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1598 = metadata !{i32 786445, metadata !493, metadata !"http_major", metadata !494, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1599 = metadata !{i32 786445, metadata !482, metadata !"get_handler", metadata !483, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !1600} ; [ DW_TAG_member ] [get_handler] [line 38, size 32, align 32, offset 96] [from ngx_http_get_variable_pt]
!1600 = metadata !{i32 786454, null, metadata !"ngx_http_get_variable_pt", metadata !483, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !1601} ; [ DW_TAG_typedef ] [ngx_http_get_variable_pt] [line 25, size 0, align 0, offset 0] [from ]
!1601 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1602} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1602 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1603, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1603 = metadata !{metadata !476, metadata !491, metadata !1473, metadata !27}
!1604 = metadata !{i32 786445, metadata !482, metadata !"data", metadata !483, i32 39, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 128] [from uintptr_t]
!1605 = metadata !{i32 786445, metadata !482, metadata !"flags", metadata !483, i32 40, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 40, size 32, align 32, offset 160] [from ngx_uint_t]
!1606 = metadata !{i32 786445, metadata !482, metadata !"index", metadata !483, i32 41, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 41, size 32, align 32, offset 192] [from ngx_uint_t]
!1607 = metadata !{i32 786688, metadata !463, metadata !"vcode", metadata !6, i32 605, metadata !1608, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vcode] [line 605]
!1608 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1609} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_var_code_t]
!1609 = metadata !{i32 786454, null, metadata !"ngx_http_script_var_code_t", metadata !6, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !1610} ; [ DW_TAG_typedef ] [ngx_http_script_var_code_t] [line 98, size 0, align 0, offset 0] [from ]
!1610 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 95, i64 64, i64 32, i32 0, i32 0, null, metadata !1611, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 95, size 64, align 32, offset 0] [from ]
!1611 = metadata !{metadata !1612, metadata !1634}
!1612 = metadata !{i32 786445, metadata !1610, metadata !"code", metadata !1429, i32 96, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 96, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1613 = metadata !{i32 786454, null, metadata !"ngx_http_script_code_pt", metadata !1429, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1614} ; [ DW_TAG_typedef ] [ngx_http_script_code_pt] [line 85, size 0, align 0, offset 0] [from ]
!1614 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1615} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1615 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1616, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1616 = metadata !{null, metadata !1617}
!1617 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1618} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_engine_t]
!1618 = metadata !{i32 786454, null, metadata !"ngx_http_script_engine_t", metadata !1429, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1619} ; [ DW_TAG_typedef ] [ngx_http_script_engine_t] [line 36, size 0, align 0, offset 0] [from ]
!1619 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 17, i64 352, i64 32, i32 0, i32 0, null, metadata !1620, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 352, align 32, offset 0] [from ]
!1620 = metadata !{metadata !1621, metadata !1622, metadata !1623, metadata !1624, metadata !1625, metadata !1626, metadata !1627, metadata !1628, metadata !1629, metadata !1630, metadata !1631, metadata !1632, metadata !1633}
!1621 = metadata !{i32 786445, metadata !1619, metadata !"ip", metadata !1429, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [ip] [line 18, size 32, align 32, offset 0] [from ]
!1622 = metadata !{i32 786445, metadata !1619, metadata !"pos", metadata !1429, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [pos] [line 19, size 32, align 32, offset 32] [from ]
!1623 = metadata !{i32 786445, metadata !1619, metadata !"sp", metadata !1429, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !1473} ; [ DW_TAG_member ] [sp] [line 20, size 32, align 32, offset 64] [from ]
!1624 = metadata !{i32 786445, metadata !1619, metadata !"buf", metadata !1429, i32 22, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [buf] [line 22, size 64, align 32, offset 96] [from ngx_str_t]
!1625 = metadata !{i32 786445, metadata !1619, metadata !"line", metadata !1429, i32 23, i64 64, i64 32, i64 160, i32 0, metadata !88} ; [ DW_TAG_member ] [line] [line 23, size 64, align 32, offset 160] [from ngx_str_t]
!1626 = metadata !{i32 786445, metadata !1619, metadata !"args", metadata !1429, i32 26, i64 32, i64 32, i64 224, i32 0, metadata !44} ; [ DW_TAG_member ] [args] [line 26, size 32, align 32, offset 224] [from ]
!1627 = metadata !{i32 786445, metadata !1619, metadata !"flushed", metadata !1429, i32 28, i64 1, i64 32, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [flushed] [line 28, size 1, align 32, offset 256] [from unsigned int]
!1628 = metadata !{i32 786445, metadata !1619, metadata !"skip", metadata !1429, i32 29, i64 1, i64 32, i64 257, i32 0, metadata !28} ; [ DW_TAG_member ] [skip] [line 29, size 1, align 32, offset 257] [from unsigned int]
!1629 = metadata !{i32 786445, metadata !1619, metadata !"quote", metadata !1429, i32 30, i64 1, i64 32, i64 258, i32 0, metadata !28} ; [ DW_TAG_member ] [quote] [line 30, size 1, align 32, offset 258] [from unsigned int]
!1630 = metadata !{i32 786445, metadata !1619, metadata !"is_args", metadata !1429, i32 31, i64 1, i64 32, i64 259, i32 0, metadata !28} ; [ DW_TAG_member ] [is_args] [line 31, size 1, align 32, offset 259] [from unsigned int]
!1631 = metadata !{i32 786445, metadata !1619, metadata !"log", metadata !1429, i32 32, i64 1, i64 32, i64 260, i32 0, metadata !28} ; [ DW_TAG_member ] [log] [line 32, size 1, align 32, offset 260] [from unsigned int]
!1632 = metadata !{i32 786445, metadata !1619, metadata !"status", metadata !1429, i32 34, i64 32, i64 32, i64 288, i32 0, metadata !476} ; [ DW_TAG_member ] [status] [line 34, size 32, align 32, offset 288] [from ngx_int_t]
!1633 = metadata !{i32 786445, metadata !1619, metadata !"request", metadata !1429, i32 35, i64 32, i64 32, i64 320, i32 0, metadata !491} ; [ DW_TAG_member ] [request] [line 35, size 32, align 32, offset 320] [from ]
!1634 = metadata !{i32 786445, metadata !1610, metadata !"index", metadata !1429, i32 97, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [index] [line 97, size 32, align 32, offset 32] [from uintptr_t]
!1635 = metadata !{i32 786688, metadata !463, metadata !"vhcode", metadata !6, i32 606, metadata !1636, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vhcode] [line 606]
!1636 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1637} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_var_handler_code_t]
!1637 = metadata !{i32 786454, null, metadata !"ngx_http_script_var_handler_code_t", metadata !6, i32 105, i64 0, i64 0, i64 0, i32 0, metadata !1638} ; [ DW_TAG_typedef ] [ngx_http_script_var_handler_code_t] [line 105, size 0, align 0, offset 0] [from ]
!1638 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 101, i64 96, i64 32, i32 0, i32 0, null, metadata !1639, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 101, size 96, align 32, offset 0] [from ]
!1639 = metadata !{metadata !1640, metadata !1641, metadata !1642}
!1640 = metadata !{i32 786445, metadata !1638, metadata !"code", metadata !1429, i32 102, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 102, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1641 = metadata !{i32 786445, metadata !1638, metadata !"handler", metadata !1429, i32 103, i64 32, i64 32, i64 32, i32 0, metadata !487} ; [ DW_TAG_member ] [handler] [line 103, size 32, align 32, offset 32] [from ngx_http_set_variable_pt]
!1642 = metadata !{i32 786445, metadata !1638, metadata !"data", metadata !1429, i32 104, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 104, size 32, align 32, offset 64] [from uintptr_t]
!1643 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_value", metadata !"ngx_http_rewrite_value", metadata !"", metadata !6, i32 648, metadata !1644, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_http_rewrite_loc_conf_t*, %struct.ngx_str_t*)* @ngx_http_rewrite_value, null, null, metadata !1646, i32 649} ; [ DW_TAG_subprogram ] [line 648] [local] [def] [scope 649] [ngx_http_rewrite_value]
!1644 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1645, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1645 = metadata !{metadata !9, metadata !11, metadata !464, metadata !478}
!1646 = metadata !{metadata !1647}
!1647 = metadata !{metadata !1648, metadata !1649, metadata !1650, metadata !1651, metadata !1653, metadata !1676, metadata !1685}
!1648 = metadata !{i32 786689, metadata !1643, metadata !"cf", metadata !6, i32 16777864, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 648]
!1649 = metadata !{i32 786689, metadata !1643, metadata !"lcf", metadata !6, i32 33555080, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lcf] [line 648]
!1650 = metadata !{i32 786689, metadata !1643, metadata !"value", metadata !6, i32 50332296, metadata !478, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 648]
!1651 = metadata !{i32 786688, metadata !1652, metadata !"n", metadata !6, i32 650, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 650]
!1652 = metadata !{i32 786443, metadata !1643, i32 649, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1653 = metadata !{i32 786688, metadata !1652, metadata !"sc", metadata !6, i32 651, metadata !1654, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 651]
!1654 = metadata !{i32 786454, null, metadata !"ngx_http_script_compile_t", metadata !6, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1655} ; [ DW_TAG_typedef ] [ngx_http_script_compile_t] [line 63, size 0, align 0, offset 0] [from ]
!1655 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 39, i64 352, i64 32, i32 0, i32 0, null, metadata !1656, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 39, size 352, align 32, offset 0] [from ]
!1656 = metadata !{metadata !1657, metadata !1658, metadata !1659, metadata !1661, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1670, metadata !1671, metadata !1672, metadata !1673, metadata !1674, metadata !1675}
!1657 = metadata !{i32 786445, metadata !1655, metadata !"cf", metadata !1429, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [cf] [line 40, size 32, align 32, offset 0] [from ]
!1658 = metadata !{i32 786445, metadata !1655, metadata !"source", metadata !1429, i32 41, i64 32, i64 32, i64 32, i32 0, metadata !478} ; [ DW_TAG_member ] [source] [line 41, size 32, align 32, offset 32] [from ]
!1659 = metadata !{i32 786445, metadata !1655, metadata !"flushes", metadata !1429, i32 43, i64 32, i64 32, i64 64, i32 0, metadata !1660} ; [ DW_TAG_member ] [flushes] [line 43, size 32, align 32, offset 64] [from ]
!1660 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1661 = metadata !{i32 786445, metadata !1655, metadata !"lengths", metadata !1429, i32 44, i64 32, i64 32, i64 96, i32 0, metadata !1660} ; [ DW_TAG_member ] [lengths] [line 44, size 32, align 32, offset 96] [from ]
!1662 = metadata !{i32 786445, metadata !1655, metadata !"values", metadata !1429, i32 45, i64 32, i64 32, i64 128, i32 0, metadata !1660} ; [ DW_TAG_member ] [values] [line 45, size 32, align 32, offset 128] [from ]
!1663 = metadata !{i32 786445, metadata !1655, metadata !"variables", metadata !1429, i32 47, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [variables] [line 47, size 32, align 32, offset 160] [from ngx_uint_t]
!1664 = metadata !{i32 786445, metadata !1655, metadata !"ncaptures", metadata !1429, i32 48, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 48, size 32, align 32, offset 192] [from ngx_uint_t]
!1665 = metadata !{i32 786445, metadata !1655, metadata !"captures_mask", metadata !1429, i32 49, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [captures_mask] [line 49, size 32, align 32, offset 224] [from ngx_uint_t]
!1666 = metadata !{i32 786445, metadata !1655, metadata !"size", metadata !1429, i32 50, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 50, size 32, align 32, offset 256] [from ngx_uint_t]
!1667 = metadata !{i32 786445, metadata !1655, metadata !"main", metadata !1429, i32 52, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [main] [line 52, size 32, align 32, offset 288] [from ]
!1668 = metadata !{i32 786445, metadata !1655, metadata !"compile_args", metadata !1429, i32 54, i64 1, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [compile_args] [line 54, size 1, align 32, offset 320] [from unsigned int]
!1669 = metadata !{i32 786445, metadata !1655, metadata !"complete_lengths", metadata !1429, i32 55, i64 1, i64 32, i64 321, i32 0, metadata !28} ; [ DW_TAG_member ] [complete_lengths] [line 55, size 1, align 32, offset 321] [from unsigned int]
!1670 = metadata !{i32 786445, metadata !1655, metadata !"complete_values", metadata !1429, i32 56, i64 1, i64 32, i64 322, i32 0, metadata !28} ; [ DW_TAG_member ] [complete_values] [line 56, size 1, align 32, offset 322] [from unsigned int]
!1671 = metadata !{i32 786445, metadata !1655, metadata !"zero", metadata !1429, i32 57, i64 1, i64 32, i64 323, i32 0, metadata !28} ; [ DW_TAG_member ] [zero] [line 57, size 1, align 32, offset 323] [from unsigned int]
!1672 = metadata !{i32 786445, metadata !1655, metadata !"conf_prefix", metadata !1429, i32 58, i64 1, i64 32, i64 324, i32 0, metadata !28} ; [ DW_TAG_member ] [conf_prefix] [line 58, size 1, align 32, offset 324] [from unsigned int]
!1673 = metadata !{i32 786445, metadata !1655, metadata !"root_prefix", metadata !1429, i32 59, i64 1, i64 32, i64 325, i32 0, metadata !28} ; [ DW_TAG_member ] [root_prefix] [line 59, size 1, align 32, offset 325] [from unsigned int]
!1674 = metadata !{i32 786445, metadata !1655, metadata !"dup_capture", metadata !1429, i32 61, i64 1, i64 32, i64 326, i32 0, metadata !28} ; [ DW_TAG_member ] [dup_capture] [line 61, size 1, align 32, offset 326] [from unsigned int]
!1675 = metadata !{i32 786445, metadata !1655, metadata !"args", metadata !1429, i32 62, i64 1, i64 32, i64 327, i32 0, metadata !28} ; [ DW_TAG_member ] [args] [line 62, size 1, align 32, offset 327] [from unsigned int]
!1676 = metadata !{i32 786688, metadata !1652, metadata !"val", metadata !6, i32 652, metadata !1677, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 652]
!1677 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1678} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_value_code_t]
!1678 = metadata !{i32 786454, null, metadata !"ngx_http_script_value_code_t", metadata !6, i32 203, i64 0, i64 0, i64 0, i32 0, metadata !1679} ; [ DW_TAG_typedef ] [ngx_http_script_value_code_t] [line 203, size 0, align 0, offset 0] [from ]
!1679 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 198, i64 128, i64 32, i32 0, i32 0, null, metadata !1680, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 198, size 128, align 32, offset 0] [from ]
!1680 = metadata !{metadata !1681, metadata !1682, metadata !1683, metadata !1684}
!1681 = metadata !{i32 786445, metadata !1679, metadata !"code", metadata !1429, i32 199, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 199, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1682 = metadata !{i32 786445, metadata !1679, metadata !"value", metadata !1429, i32 200, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [value] [line 200, size 32, align 32, offset 32] [from uintptr_t]
!1683 = metadata !{i32 786445, metadata !1679, metadata !"text_len", metadata !1429, i32 201, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [text_len] [line 201, size 32, align 32, offset 64] [from uintptr_t]
!1684 = metadata !{i32 786445, metadata !1679, metadata !"text_data", metadata !1429, i32 202, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [text_data] [line 202, size 32, align 32, offset 96] [from uintptr_t]
!1685 = metadata !{i32 786688, metadata !1652, metadata !"complex", metadata !6, i32 653, metadata !1686, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [complex] [line 653]
!1686 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1687} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_complex_value_code_t]
!1687 = metadata !{i32 786454, null, metadata !"ngx_http_script_complex_value_code_t", metadata !6, i32 195, i64 0, i64 0, i64 0, i32 0, metadata !1688} ; [ DW_TAG_typedef ] [ngx_http_script_complex_value_code_t] [line 195, size 0, align 0, offset 0] [from ]
!1688 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 192, i64 64, i64 32, i32 0, i32 0, null, metadata !1689, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 192, size 64, align 32, offset 0] [from ]
!1689 = metadata !{metadata !1690, metadata !1691}
!1690 = metadata !{i32 786445, metadata !1688, metadata !"code", metadata !1429, i32 193, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 193, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1691 = metadata !{i32 786445, metadata !1688, metadata !"lengths", metadata !1429, i32 194, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 194, size 32, align 32, offset 32] [from ]
!1692 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_var", metadata !"ngx_http_rewrite_var", metadata !"", metadata !6, i32 92, metadata !1602, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_rewrite_var, null, null, metadata !1693, i32 93} ; [ DW_TAG_subprogram ] [line 92] [local] [def] [scope 93] [ngx_http_rewrite_var]
!1693 = metadata !{metadata !1694}
!1694 = metadata !{metadata !1695, metadata !1696, metadata !1697, metadata !1698, metadata !1700, metadata !1756}
!1695 = metadata !{i32 786689, metadata !1692, metadata !"r", metadata !6, i32 16777308, metadata !491, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 92]
!1696 = metadata !{i32 786689, metadata !1692, metadata !"v", metadata !6, i32 33554524, metadata !1473, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 92]
!1697 = metadata !{i32 786689, metadata !1692, metadata !"data", metadata !6, i32 50331740, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 92]
!1698 = metadata !{i32 786688, metadata !1699, metadata !"var", metadata !6, i32 94, metadata !480, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 94]
!1699 = metadata !{i32 786443, metadata !1692, i32 93, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1700 = metadata !{i32 786688, metadata !1699, metadata !"cmcf", metadata !6, i32 95, metadata !1701, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 95]
!1701 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1702} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_main_conf_t]
!1702 = metadata !{i32 786454, null, metadata !"ngx_http_core_main_conf_t", metadata !6, i32 175, i64 0, i64 0, i64 0, i32 0, metadata !1703} ; [ DW_TAG_typedef ] [ngx_http_core_main_conf_t] [line 175, size 0, align 0, offset 0] [from ]
!1703 = metadata !{i32 786451, null, metadata !"", metadata !1267, i32 150, i64 2560, i64 32, i32 0, i32 0, null, metadata !1704, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 150, size 2560, align 32, offset 0] [from ]
!1704 = metadata !{metadata !1705, metadata !1706, metadata !1724, metadata !1725, metadata !1726, metadata !1727, metadata !1728, metadata !1729, metadata !1730, metadata !1731, metadata !1732, metadata !1746, metadata !1747, metadata !1748}
!1705 = metadata !{i32 786445, metadata !1703, metadata !"servers", metadata !1267, i32 151, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [servers] [line 151, size 160, align 32, offset 0] [from ngx_array_t]
!1706 = metadata !{i32 786445, metadata !1703, metadata !"phase_engine", metadata !1267, i32 153, i64 96, i64 32, i64 160, i32 0, metadata !1707} ; [ DW_TAG_member ] [phase_engine] [line 153, size 96, align 32, offset 160] [from ngx_http_phase_engine_t]
!1707 = metadata !{i32 786454, null, metadata !"ngx_http_phase_engine_t", metadata !1267, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !1708} ; [ DW_TAG_typedef ] [ngx_http_phase_engine_t] [line 142, size 0, align 0, offset 0] [from ]
!1708 = metadata !{i32 786451, null, metadata !"", metadata !1267, i32 138, i64 96, i64 32, i32 0, i32 0, null, metadata !1709, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 138, size 96, align 32, offset 0] [from ]
!1709 = metadata !{metadata !1710, metadata !1722, metadata !1723}
!1710 = metadata !{i32 786445, metadata !1708, metadata !"handlers", metadata !1267, i32 139, i64 32, i64 32, i64 0, i32 0, metadata !1711} ; [ DW_TAG_member ] [handlers] [line 139, size 32, align 32, offset 0] [from ]
!1711 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1712} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_phase_handler_t]
!1712 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_t", metadata !1267, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !1713} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_t] [line 126, size 0, align 0, offset 0] [from ngx_http_phase_handler_s]
!1713 = metadata !{i32 786451, null, metadata !"ngx_http_phase_handler_s", metadata !1267, i32 131, i64 96, i64 32, i32 0, i32 0, null, metadata !1714, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_phase_handler_s] [line 131, size 96, align 32, offset 0] [from ]
!1714 = metadata !{metadata !1715, metadata !1720, metadata !1721}
!1715 = metadata !{i32 786445, metadata !1713, metadata !"checker", metadata !1267, i32 132, i64 32, i64 32, i64 0, i32 0, metadata !1716} ; [ DW_TAG_member ] [checker] [line 132, size 32, align 32, offset 0] [from ngx_http_phase_handler_pt]
!1716 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_pt", metadata !1267, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !1717} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_pt] [line 128, size 0, align 0, offset 0] [from ]
!1717 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1718} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1719 = metadata !{metadata !476, metadata !491, metadata !1711}
!1720 = metadata !{i32 786445, metadata !1713, metadata !"handler", metadata !1267, i32 133, i64 32, i64 32, i64 32, i32 0, metadata !1371} ; [ DW_TAG_member ] [handler] [line 133, size 32, align 32, offset 32] [from ngx_http_handler_pt]
!1721 = metadata !{i32 786445, metadata !1713, metadata !"next", metadata !1267, i32 134, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [next] [line 134, size 32, align 32, offset 64] [from ngx_uint_t]
!1722 = metadata !{i32 786445, metadata !1708, metadata !"server_rewrite_index", metadata !1267, i32 140, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [server_rewrite_index] [line 140, size 32, align 32, offset 32] [from ngx_uint_t]
!1723 = metadata !{i32 786445, metadata !1708, metadata !"location_rewrite_index", metadata !1267, i32 141, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [location_rewrite_index] [line 141, size 32, align 32, offset 64] [from ngx_uint_t]
!1724 = metadata !{i32 786445, metadata !1703, metadata !"headers_in_hash", metadata !1267, i32 155, i64 64, i64 32, i64 256, i32 0, metadata !915} ; [ DW_TAG_member ] [headers_in_hash] [line 155, size 64, align 32, offset 256] [from ngx_hash_t]
!1725 = metadata !{i32 786445, metadata !1703, metadata !"variables_hash", metadata !1267, i32 157, i64 64, i64 32, i64 320, i32 0, metadata !915} ; [ DW_TAG_member ] [variables_hash] [line 157, size 64, align 32, offset 320] [from ngx_hash_t]
!1726 = metadata !{i32 786445, metadata !1703, metadata !"variables", metadata !1267, i32 159, i64 160, i64 32, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [variables] [line 159, size 160, align 32, offset 384] [from ngx_array_t]
!1727 = metadata !{i32 786445, metadata !1703, metadata !"ncaptures", metadata !1267, i32 160, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 160, size 32, align 32, offset 544] [from ngx_uint_t]
!1728 = metadata !{i32 786445, metadata !1703, metadata !"server_names_hash_max_size", metadata !1267, i32 162, i64 32, i64 32, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_max_size] [line 162, size 32, align 32, offset 576] [from ngx_uint_t]
!1729 = metadata !{i32 786445, metadata !1703, metadata !"server_names_hash_bucket_size", metadata !1267, i32 163, i64 32, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_bucket_size] [line 163, size 32, align 32, offset 608] [from ngx_uint_t]
!1730 = metadata !{i32 786445, metadata !1703, metadata !"variables_hash_max_size", metadata !1267, i32 165, i64 32, i64 32, i64 640, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_max_size] [line 165, size 32, align 32, offset 640] [from ngx_uint_t]
!1731 = metadata !{i32 786445, metadata !1703, metadata !"variables_hash_bucket_size", metadata !1267, i32 166, i64 32, i64 32, i64 672, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_bucket_size] [line 166, size 32, align 32, offset 672] [from ngx_uint_t]
!1732 = metadata !{i32 786445, metadata !1703, metadata !"variables_keys", metadata !1267, i32 168, i64 32, i64 32, i64 704, i32 0, metadata !1733} ; [ DW_TAG_member ] [variables_keys] [line 168, size 32, align 32, offset 704] [from ]
!1733 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1734} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!1734 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !1267, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !1735} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!1735 = metadata !{i32 786451, null, metadata !"", metadata !917, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !1736, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!1736 = metadata !{metadata !1737, metadata !1738, metadata !1739, metadata !1740, metadata !1741, metadata !1742, metadata !1743, metadata !1744, metadata !1745}
!1737 = metadata !{i32 786445, metadata !1735, metadata !"hsize", metadata !917, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!1738 = metadata !{i32 786445, metadata !1735, metadata !"pool", metadata !917, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!1739 = metadata !{i32 786445, metadata !1735, metadata !"temp_pool", metadata !917, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!1740 = metadata !{i32 786445, metadata !1735, metadata !"keys", metadata !917, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!1741 = metadata !{i32 786445, metadata !1735, metadata !"keys_hash", metadata !917, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!1742 = metadata !{i32 786445, metadata !1735, metadata !"dns_wc_head", metadata !917, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!1743 = metadata !{i32 786445, metadata !1735, metadata !"dns_wc_head_hash", metadata !917, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!1744 = metadata !{i32 786445, metadata !1735, metadata !"dns_wc_tail", metadata !917, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!1745 = metadata !{i32 786445, metadata !1735, metadata !"dns_wc_tail_hash", metadata !917, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!1746 = metadata !{i32 786445, metadata !1703, metadata !"ports", metadata !1267, i32 170, i64 32, i64 32, i64 736, i32 0, metadata !18} ; [ DW_TAG_member ] [ports] [line 170, size 32, align 32, offset 736] [from ]
!1747 = metadata !{i32 786445, metadata !1703, metadata !"try_files", metadata !1267, i32 172, i64 32, i64 32, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [try_files] [line 172, size 32, align 32, offset 768] [from ngx_uint_t]
!1748 = metadata !{i32 786445, metadata !1703, metadata !"phases", metadata !1267, i32 174, i64 1760, i64 32, i64 800, i32 0, metadata !1749} ; [ DW_TAG_member ] [phases] [line 174, size 1760, align 32, offset 800] [from ]
!1749 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1760, i64 32, i32 0, i32 0, metadata !1750, metadata !1754, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1760, align 32, offset 0] [from ngx_http_phase_t]
!1750 = metadata !{i32 786454, null, metadata !"ngx_http_phase_t", metadata !1267, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !1751} ; [ DW_TAG_typedef ] [ngx_http_phase_t] [line 147, size 0, align 0, offset 0] [from ]
!1751 = metadata !{i32 786451, null, metadata !"", metadata !1267, i32 145, i64 160, i64 32, i32 0, i32 0, null, metadata !1752, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 145, size 160, align 32, offset 0] [from ]
!1752 = metadata !{metadata !1753}
!1753 = metadata !{i32 786445, metadata !1751, metadata !"handlers", metadata !1267, i32 146, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [handlers] [line 146, size 160, align 32, offset 0] [from ngx_array_t]
!1754 = metadata !{metadata !1755}
!1755 = metadata !{i32 786465, i64 0, i64 10}     ; [ DW_TAG_subrange_type ] [0, 10]
!1756 = metadata !{i32 786688, metadata !1699, metadata !"rlcf", metadata !6, i32 96, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlcf] [line 96]
!1757 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_if", metadata !"ngx_http_rewrite_if", metadata !"", metadata !6, i32 339, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_if, null, null, metadata !1758, i32 340} ; [ DW_TAG_subprogram ] [line 339] [local] [def] [scope 340] [ngx_http_rewrite_if]
!1758 = metadata !{metadata !1759}
!1759 = metadata !{metadata !1760, metadata !1761, metadata !1762, metadata !1763, metadata !1765, metadata !1766, metadata !1767, metadata !1768, metadata !1769, metadata !1770, metadata !1795, metadata !1796, metadata !1797, metadata !1798, metadata !1799, metadata !1807}
!1760 = metadata !{i32 786689, metadata !1757, metadata !"cf", metadata !6, i32 16777555, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 339]
!1761 = metadata !{i32 786689, metadata !1757, metadata !"cmd", metadata !6, i32 33554771, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 339]
!1762 = metadata !{i32 786689, metadata !1757, metadata !"conf", metadata !6, i32 50331987, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 339]
!1763 = metadata !{i32 786688, metadata !1764, metadata !"lcf", metadata !6, i32 341, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcf] [line 341]
!1764 = metadata !{i32 786443, metadata !1757, i32 340, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1765 = metadata !{i32 786688, metadata !1764, metadata !"mconf", metadata !6, i32 342, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mconf] [line 342]
!1766 = metadata !{i32 786688, metadata !1764, metadata !"rv", metadata !6, i32 343, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rv] [line 343]
!1767 = metadata !{i32 786688, metadata !1764, metadata !"elts", metadata !6, i32 344, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [elts] [line 344]
!1768 = metadata !{i32 786688, metadata !1764, metadata !"i", metadata !6, i32 345, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 345]
!1769 = metadata !{i32 786688, metadata !1764, metadata !"save", metadata !6, i32 346, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save] [line 346]
!1770 = metadata !{i32 786688, metadata !1764, metadata !"module", metadata !6, i32 347, metadata !1771, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [module] [line 347]
!1771 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1772} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_module_t]
!1772 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1773} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1773 = metadata !{i32 786451, null, metadata !"", metadata !1322, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1774, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1774 = metadata !{metadata !1775, metadata !1779, metadata !1780, metadata !1784, metadata !1788, metadata !1789, metadata !1793, metadata !1794}
!1775 = metadata !{i32 786445, metadata !1773, metadata !"preconfiguration", metadata !1322, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1776} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1776 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1777} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1777 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1778, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1778 = metadata !{metadata !476, metadata !11}
!1779 = metadata !{i32 786445, metadata !1773, metadata !"postconfiguration", metadata !1322, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1776} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1780 = metadata !{i32 786445, metadata !1773, metadata !"create_main_conf", metadata !1322, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1781} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1781 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1782} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1782 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1783, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1783 = metadata !{metadata !24, metadata !11}
!1784 = metadata !{i32 786445, metadata !1773, metadata !"init_main_conf", metadata !1322, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1785} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1785 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1786} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1786 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1787, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1787 = metadata !{metadata !9, metadata !11, metadata !24}
!1788 = metadata !{i32 786445, metadata !1773, metadata !"create_srv_conf", metadata !1322, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1781} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1789 = metadata !{i32 786445, metadata !1773, metadata !"merge_srv_conf", metadata !1322, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1790} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1790 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1791} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1791 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1792, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1792 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!1793 = metadata !{i32 786445, metadata !1773, metadata !"create_loc_conf", metadata !1322, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1781} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1794 = metadata !{i32 786445, metadata !1773, metadata !"merge_loc_conf", metadata !1322, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1790} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1795 = metadata !{i32 786688, metadata !1764, metadata !"ctx", metadata !6, i32 348, metadata !1319, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 348]
!1796 = metadata !{i32 786688, metadata !1764, metadata !"pctx", metadata !6, i32 349, metadata !1319, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pctx] [line 349]
!1797 = metadata !{i32 786688, metadata !1764, metadata !"clcf", metadata !6, i32 350, metadata !1340, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 350]
!1798 = metadata !{i32 786688, metadata !1764, metadata !"pclcf", metadata !6, i32 351, metadata !1340, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pclcf] [line 351]
!1799 = metadata !{i32 786688, metadata !1764, metadata !"if_code", metadata !6, i32 352, metadata !1800, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [if_code] [line 352]
!1800 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1801} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_if_code_t]
!1801 = metadata !{i32 786454, null, metadata !"ngx_http_script_if_code_t", metadata !6, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !1802} ; [ DW_TAG_typedef ] [ngx_http_script_if_code_t] [line 189, size 0, align 0, offset 0] [from ]
!1802 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 185, i64 96, i64 32, i32 0, i32 0, null, metadata !1803, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 185, size 96, align 32, offset 0] [from ]
!1803 = metadata !{metadata !1804, metadata !1805, metadata !1806}
!1804 = metadata !{i32 786445, metadata !1802, metadata !"code", metadata !1429, i32 186, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 186, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1805 = metadata !{i32 786445, metadata !1802, metadata !"next", metadata !1429, i32 187, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [next] [line 187, size 32, align 32, offset 32] [from uintptr_t]
!1806 = metadata !{i32 786445, metadata !1802, metadata !"loc_conf", metadata !1429, i32 188, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 188, size 32, align 32, offset 64] [from ]
!1807 = metadata !{i32 786688, metadata !1764, metadata !"nlcf", metadata !6, i32 353, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nlcf] [line 353]
!1808 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_if_condition", metadata !"ngx_http_rewrite_if_condition", metadata !"", metadata !6, i32 422, metadata !1809, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1811, i32 423} ; [ DW_TAG_subprogram ] [line 422] [local] [def] [scope 423] [ngx_http_rewrite_if_condition]
!1809 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1810, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1810 = metadata !{metadata !9, metadata !11, metadata !464}
!1811 = metadata !{metadata !1812}
!1812 = metadata !{metadata !1813, metadata !1814, metadata !1815, metadata !1817, metadata !1818, metadata !1819, metadata !1820, metadata !1821, metadata !1834, metadata !1836, metadata !1843, metadata !1862}
!1813 = metadata !{i32 786689, metadata !1808, metadata !"cf", metadata !6, i32 16777638, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 422]
!1814 = metadata !{i32 786689, metadata !1808, metadata !"lcf", metadata !6, i32 33554854, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lcf] [line 422]
!1815 = metadata !{i32 786688, metadata !1816, metadata !"p", metadata !6, i32 424, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 424]
!1816 = metadata !{i32 786443, metadata !1808, i32 423, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1817 = metadata !{i32 786688, metadata !1816, metadata !"len", metadata !6, i32 425, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 425]
!1818 = metadata !{i32 786688, metadata !1816, metadata !"value", metadata !6, i32 426, metadata !478, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 426]
!1819 = metadata !{i32 786688, metadata !1816, metadata !"cur", metadata !6, i32 427, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cur] [line 427]
!1820 = metadata !{i32 786688, metadata !1816, metadata !"last", metadata !6, i32 428, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 428]
!1821 = metadata !{i32 786688, metadata !1816, metadata !"rc", metadata !6, i32 429, metadata !1822, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 429]
!1822 = metadata !{i32 786454, null, metadata !"ngx_regex_compile_t", metadata !6, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !1823} ; [ DW_TAG_typedef ] [ngx_regex_compile_t] [line 40, size 0, align 0, offset 0] [from ]
!1823 = metadata !{i32 786451, null, metadata !"", metadata !1278, i32 29, i64 352, i64 32, i32 0, i32 0, null, metadata !1824, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 352, align 32, offset 0] [from ]
!1824 = metadata !{metadata !1825, metadata !1826, metadata !1827, metadata !1828, metadata !1829, metadata !1830, metadata !1831, metadata !1832, metadata !1833}
!1825 = metadata !{i32 786445, metadata !1823, metadata !"pattern", metadata !1278, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [pattern] [line 30, size 64, align 32, offset 0] [from ngx_str_t]
!1826 = metadata !{i32 786445, metadata !1823, metadata !"pool", metadata !1278, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 31, size 32, align 32, offset 64] [from ]
!1827 = metadata !{i32 786445, metadata !1823, metadata !"options", metadata !1278, i32 32, i64 32, i64 32, i64 96, i32 0, metadata !476} ; [ DW_TAG_member ] [options] [line 32, size 32, align 32, offset 96] [from ngx_int_t]
!1828 = metadata !{i32 786445, metadata !1823, metadata !"regex", metadata !1278, i32 34, i64 32, i64 32, i64 128, i32 0, metadata !1275} ; [ DW_TAG_member ] [regex] [line 34, size 32, align 32, offset 128] [from ]
!1829 = metadata !{i32 786445, metadata !1823, metadata !"captures", metadata !1278, i32 35, i64 32, i64 32, i64 160, i32 0, metadata !86} ; [ DW_TAG_member ] [captures] [line 35, size 32, align 32, offset 160] [from int]
!1830 = metadata !{i32 786445, metadata !1823, metadata !"named_captures", metadata !1278, i32 36, i64 32, i64 32, i64 192, i32 0, metadata !86} ; [ DW_TAG_member ] [named_captures] [line 36, size 32, align 32, offset 192] [from int]
!1831 = metadata !{i32 786445, metadata !1823, metadata !"name_size", metadata !1278, i32 37, i64 32, i64 32, i64 224, i32 0, metadata !86} ; [ DW_TAG_member ] [name_size] [line 37, size 32, align 32, offset 224] [from int]
!1832 = metadata !{i32 786445, metadata !1823, metadata !"names", metadata !1278, i32 38, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [names] [line 38, size 32, align 32, offset 256] [from ]
!1833 = metadata !{i32 786445, metadata !1823, metadata !"err", metadata !1278, i32 39, i64 64, i64 32, i64 288, i32 0, metadata !88} ; [ DW_TAG_member ] [err] [line 39, size 64, align 32, offset 288] [from ngx_str_t]
!1834 = metadata !{i32 786688, metadata !1816, metadata !"code", metadata !6, i32 430, metadata !1835, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 430]
!1835 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1836 = metadata !{i32 786688, metadata !1816, metadata !"fop", metadata !6, i32 431, metadata !1837, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fop] [line 431]
!1837 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1838} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_file_code_t]
!1838 = metadata !{i32 786454, null, metadata !"ngx_http_script_file_code_t", metadata !6, i32 182, i64 0, i64 0, i64 0, i32 0, metadata !1839} ; [ DW_TAG_typedef ] [ngx_http_script_file_code_t] [line 182, size 0, align 0, offset 0] [from ]
!1839 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 179, i64 64, i64 32, i32 0, i32 0, null, metadata !1840, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 179, size 64, align 32, offset 0] [from ]
!1840 = metadata !{metadata !1841, metadata !1842}
!1841 = metadata !{i32 786445, metadata !1839, metadata !"code", metadata !1429, i32 180, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 180, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1842 = metadata !{i32 786445, metadata !1839, metadata !"op", metadata !1429, i32 181, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [op] [line 181, size 32, align 32, offset 32] [from uintptr_t]
!1843 = metadata !{i32 786688, metadata !1816, metadata !"regex", metadata !6, i32 432, metadata !1844, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regex] [line 432]
!1844 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1845} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_regex_code_t]
!1845 = metadata !{i32 786454, null, metadata !"ngx_http_script_regex_code_t", metadata !6, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !1846} ; [ DW_TAG_typedef ] [ngx_http_script_regex_code_t] [line 136, size 0, align 0, offset 0] [from ]
!1846 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 116, i64 288, i64 32, i32 0, i32 0, null, metadata !1847, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 116, size 288, align 32, offset 0] [from ]
!1847 = metadata !{metadata !1848, metadata !1849, metadata !1850, metadata !1851, metadata !1852, metadata !1853, metadata !1854, metadata !1855, metadata !1856, metadata !1857, metadata !1858, metadata !1859, metadata !1860, metadata !1861}
!1848 = metadata !{i32 786445, metadata !1846, metadata !"code", metadata !1429, i32 117, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 117, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1849 = metadata !{i32 786445, metadata !1846, metadata !"regex", metadata !1429, i32 118, i64 32, i64 32, i64 32, i32 0, metadata !1270} ; [ DW_TAG_member ] [regex] [line 118, size 32, align 32, offset 32] [from ]
!1850 = metadata !{i32 786445, metadata !1846, metadata !"lengths", metadata !1429, i32 119, i64 32, i64 32, i64 64, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 119, size 32, align 32, offset 64] [from ]
!1851 = metadata !{i32 786445, metadata !1846, metadata !"size", metadata !1429, i32 120, i64 32, i64 32, i64 96, i32 0, metadata !27} ; [ DW_TAG_member ] [size] [line 120, size 32, align 32, offset 96] [from uintptr_t]
!1852 = metadata !{i32 786445, metadata !1846, metadata !"status", metadata !1429, i32 121, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [status] [line 121, size 32, align 32, offset 128] [from uintptr_t]
!1853 = metadata !{i32 786445, metadata !1846, metadata !"next", metadata !1429, i32 122, i64 32, i64 32, i64 160, i32 0, metadata !27} ; [ DW_TAG_member ] [next] [line 122, size 32, align 32, offset 160] [from uintptr_t]
!1854 = metadata !{i32 786445, metadata !1846, metadata !"test", metadata !1429, i32 124, i64 1, i64 32, i64 192, i32 0, metadata !27} ; [ DW_TAG_member ] [test] [line 124, size 1, align 32, offset 192] [from uintptr_t]
!1855 = metadata !{i32 786445, metadata !1846, metadata !"negative_test", metadata !1429, i32 125, i64 1, i64 32, i64 193, i32 0, metadata !27} ; [ DW_TAG_member ] [negative_test] [line 125, size 1, align 32, offset 193] [from uintptr_t]
!1856 = metadata !{i32 786445, metadata !1846, metadata !"uri", metadata !1429, i32 126, i64 1, i64 32, i64 194, i32 0, metadata !27} ; [ DW_TAG_member ] [uri] [line 126, size 1, align 32, offset 194] [from uintptr_t]
!1857 = metadata !{i32 786445, metadata !1846, metadata !"args", metadata !1429, i32 127, i64 1, i64 32, i64 195, i32 0, metadata !27} ; [ DW_TAG_member ] [args] [line 127, size 1, align 32, offset 195] [from uintptr_t]
!1858 = metadata !{i32 786445, metadata !1846, metadata !"add_args", metadata !1429, i32 130, i64 1, i64 32, i64 196, i32 0, metadata !27} ; [ DW_TAG_member ] [add_args] [line 130, size 1, align 32, offset 196] [from uintptr_t]
!1859 = metadata !{i32 786445, metadata !1846, metadata !"redirect", metadata !1429, i32 132, i64 1, i64 32, i64 197, i32 0, metadata !27} ; [ DW_TAG_member ] [redirect] [line 132, size 1, align 32, offset 197] [from uintptr_t]
!1860 = metadata !{i32 786445, metadata !1846, metadata !"break_cycle", metadata !1429, i32 133, i64 1, i64 32, i64 198, i32 0, metadata !27} ; [ DW_TAG_member ] [break_cycle] [line 133, size 1, align 32, offset 198] [from uintptr_t]
!1861 = metadata !{i32 786445, metadata !1846, metadata !"name", metadata !1429, i32 135, i64 64, i64 32, i64 224, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 135, size 64, align 32, offset 224] [from ngx_str_t]
!1862 = metadata !{i32 786688, metadata !1816, metadata !"errstr", metadata !6, i32 433, metadata !1863, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errstr] [line 433]
!1863 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !45, metadata !1864, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from u_char]
!1864 = metadata !{metadata !1865}
!1865 = metadata !{i32 786465, i64 0, i64 1023}   ; [ DW_TAG_subrange_type ] [0, 1023]
!1866 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_variable", metadata !"ngx_http_rewrite_variable", metadata !"", metadata !6, i32 580, metadata !1644, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1867, i32 581} ; [ DW_TAG_subprogram ] [line 580] [local] [def] [scope 581] [ngx_http_rewrite_variable]
!1867 = metadata !{metadata !1868}
!1868 = metadata !{metadata !1869, metadata !1870, metadata !1871, metadata !1872, metadata !1874}
!1869 = metadata !{i32 786689, metadata !1866, metadata !"cf", metadata !6, i32 16777796, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 580]
!1870 = metadata !{i32 786689, metadata !1866, metadata !"lcf", metadata !6, i32 33555012, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lcf] [line 580]
!1871 = metadata !{i32 786689, metadata !1866, metadata !"value", metadata !6, i32 50332228, metadata !478, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 580]
!1872 = metadata !{i32 786688, metadata !1873, metadata !"index", metadata !6, i32 582, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 582]
!1873 = metadata !{i32 786443, metadata !1866, i32 581, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1874 = metadata !{i32 786688, metadata !1873, metadata !"var_code", metadata !6, i32 583, metadata !1608, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var_code] [line 583]
!1875 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_break", metadata !"ngx_http_rewrite_break", metadata !"", metadata !6, i32 327, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_break, null, null, metadata !1876, i32 328} ; [ DW_TAG_subprogram ] [line 327] [local] [def] [scope 328] [ngx_http_rewrite_break]
!1876 = metadata !{metadata !1877}
!1877 = metadata !{metadata !1878, metadata !1879, metadata !1880, metadata !1881, metadata !1883}
!1878 = metadata !{i32 786689, metadata !1875, metadata !"cf", metadata !6, i32 16777543, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 327]
!1879 = metadata !{i32 786689, metadata !1875, metadata !"cmd", metadata !6, i32 33554759, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 327]
!1880 = metadata !{i32 786689, metadata !1875, metadata !"conf", metadata !6, i32 50331975, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 327]
!1881 = metadata !{i32 786688, metadata !1882, metadata !"lcf", metadata !6, i32 329, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcf] [line 329]
!1882 = metadata !{i32 786443, metadata !1875, i32 328, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1883 = metadata !{i32 786688, metadata !1882, metadata !"code", metadata !6, i32 330, metadata !1835, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 330]
!1884 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_return", metadata !"ngx_http_rewrite_return", metadata !"", metadata !6, i32 280, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite_return, null, null, metadata !1885, i32 281} ; [ DW_TAG_subprogram ] [line 280] [local] [def] [scope 281] [ngx_http_rewrite_return]
!1885 = metadata !{metadata !1886}
!1886 = metadata !{metadata !1887, metadata !1888, metadata !1889, metadata !1890, metadata !1892, metadata !1893, metadata !1894, metadata !1895, metadata !1903}
!1887 = metadata !{i32 786689, metadata !1884, metadata !"cf", metadata !6, i32 16777496, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 280]
!1888 = metadata !{i32 786689, metadata !1884, metadata !"cmd", metadata !6, i32 33554712, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 280]
!1889 = metadata !{i32 786689, metadata !1884, metadata !"conf", metadata !6, i32 50331928, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 280]
!1890 = metadata !{i32 786688, metadata !1891, metadata !"lcf", metadata !6, i32 282, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcf] [line 282]
!1891 = metadata !{i32 786443, metadata !1884, i32 281, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1892 = metadata !{i32 786688, metadata !1891, metadata !"p", metadata !6, i32 283, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 283]
!1893 = metadata !{i32 786688, metadata !1891, metadata !"value", metadata !6, i32 284, metadata !478, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 284]
!1894 = metadata !{i32 786688, metadata !1891, metadata !"v", metadata !6, i32 285, metadata !478, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [v] [line 285]
!1895 = metadata !{i32 786688, metadata !1891, metadata !"ret", metadata !6, i32 286, metadata !1896, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 286]
!1896 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1897} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_return_code_t]
!1897 = metadata !{i32 786454, null, metadata !"ngx_http_script_return_code_t", metadata !6, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !1898} ; [ DW_TAG_typedef ] [ngx_http_script_return_code_t] [line 164, size 0, align 0, offset 0] [from ]
!1898 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 160, i64 224, i64 32, i32 0, i32 0, null, metadata !1899, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 160, size 224, align 32, offset 0] [from ]
!1899 = metadata !{metadata !1900, metadata !1901, metadata !1902}
!1900 = metadata !{i32 786445, metadata !1898, metadata !"code", metadata !1429, i32 161, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 161, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1901 = metadata !{i32 786445, metadata !1898, metadata !"status", metadata !1429, i32 162, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [status] [line 162, size 32, align 32, offset 32] [from uintptr_t]
!1902 = metadata !{i32 786445, metadata !1898, metadata !"text", metadata !1429, i32 163, i64 160, i64 32, i64 64, i32 0, metadata !1427} ; [ DW_TAG_member ] [text] [line 163, size 160, align 32, offset 64] [from ngx_http_complex_value_t]
!1903 = metadata !{i32 786688, metadata !1891, metadata !"ccv", metadata !6, i32 287, metadata !1904, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccv] [line 287]
!1904 = metadata !{i32 786454, null, metadata !"ngx_http_compile_complex_value_t", metadata !6, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !1905} ; [ DW_TAG_typedef ] [ngx_http_compile_complex_value_t] [line 82, size 0, align 0, offset 0] [from ]
!1905 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 74, i64 128, i64 32, i32 0, i32 0, null, metadata !1906, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 74, size 128, align 32, offset 0] [from ]
!1906 = metadata !{metadata !1907, metadata !1908, metadata !1909, metadata !1910, metadata !1911, metadata !1912}
!1907 = metadata !{i32 786445, metadata !1905, metadata !"cf", metadata !1429, i32 75, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [cf] [line 75, size 32, align 32, offset 0] [from ]
!1908 = metadata !{i32 786445, metadata !1905, metadata !"value", metadata !1429, i32 76, i64 32, i64 32, i64 32, i32 0, metadata !478} ; [ DW_TAG_member ] [value] [line 76, size 32, align 32, offset 32] [from ]
!1909 = metadata !{i32 786445, metadata !1905, metadata !"complex_value", metadata !1429, i32 77, i64 32, i64 32, i64 64, i32 0, metadata !1426} ; [ DW_TAG_member ] [complex_value] [line 77, size 32, align 32, offset 64] [from ]
!1910 = metadata !{i32 786445, metadata !1905, metadata !"zero", metadata !1429, i32 79, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [zero] [line 79, size 1, align 32, offset 96] [from unsigned int]
!1911 = metadata !{i32 786445, metadata !1905, metadata !"conf_prefix", metadata !1429, i32 80, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [conf_prefix] [line 80, size 1, align 32, offset 97] [from unsigned int]
!1912 = metadata !{i32 786445, metadata !1905, metadata !"root_prefix", metadata !1429, i32 81, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [root_prefix] [line 81, size 1, align 32, offset 98] [from unsigned int]
!1913 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite", metadata !"ngx_http_rewrite", metadata !"", metadata !6, i32 177, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_rewrite, null, null, metadata !1914, i32 178} ; [ DW_TAG_subprogram ] [line 177] [local] [def] [scope 178] [ngx_http_rewrite]
!1914 = metadata !{metadata !1915}
!1915 = metadata !{metadata !1916, metadata !1917, metadata !1918, metadata !1919, metadata !1921, metadata !1922, metadata !1923, metadata !1924, metadata !1925, metadata !1926, metadata !1927, metadata !1937, metadata !1938, metadata !1941, metadata !1942, metadata !1944, metadata !1945, metadata !1947, metadata !1948, metadata !1950, metadata !1951, metadata !1953, metadata !1954, metadata !1956, metadata !1957, metadata !1959, metadata !1960, metadata !1962}
!1916 = metadata !{i32 786689, metadata !1913, metadata !"cf", metadata !6, i32 16777393, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 177]
!1917 = metadata !{i32 786689, metadata !1913, metadata !"cmd", metadata !6, i32 33554609, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 177]
!1918 = metadata !{i32 786689, metadata !1913, metadata !"conf", metadata !6, i32 50331825, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 177]
!1919 = metadata !{i32 786688, metadata !1920, metadata !"lcf", metadata !6, i32 179, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcf] [line 179]
!1920 = metadata !{i32 786443, metadata !1913, i32 178, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1921 = metadata !{i32 786688, metadata !1920, metadata !"value", metadata !6, i32 180, metadata !478, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 180]
!1922 = metadata !{i32 786688, metadata !1920, metadata !"last", metadata !6, i32 181, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 181]
!1923 = metadata !{i32 786688, metadata !1920, metadata !"rc", metadata !6, i32 182, metadata !1822, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 182]
!1924 = metadata !{i32 786688, metadata !1920, metadata !"code", metadata !6, i32 183, metadata !1835, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 183]
!1925 = metadata !{i32 786688, metadata !1920, metadata !"sc", metadata !6, i32 184, metadata !1654, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 184]
!1926 = metadata !{i32 786688, metadata !1920, metadata !"regex", metadata !6, i32 185, metadata !1844, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regex] [line 185]
!1927 = metadata !{i32 786688, metadata !1920, metadata !"regex_end", metadata !6, i32 186, metadata !1928, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regex_end] [line 186]
!1928 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1929} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_regex_end_code_t]
!1929 = metadata !{i32 786454, null, metadata !"ngx_http_script_regex_end_code_t", metadata !6, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !1930} ; [ DW_TAG_typedef ] [ngx_http_script_regex_end_code_t] [line 149, size 0, align 0, offset 0] [from ]
!1930 = metadata !{i32 786451, null, metadata !"", metadata !1429, i32 139, i64 64, i64 32, i32 0, i32 0, null, metadata !1931, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 139, size 64, align 32, offset 0] [from ]
!1931 = metadata !{metadata !1932, metadata !1933, metadata !1934, metadata !1935, metadata !1936}
!1932 = metadata !{i32 786445, metadata !1930, metadata !"code", metadata !1429, i32 140, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_member ] [code] [line 140, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1933 = metadata !{i32 786445, metadata !1930, metadata !"uri", metadata !1429, i32 142, i64 1, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [uri] [line 142, size 1, align 32, offset 32] [from uintptr_t]
!1934 = metadata !{i32 786445, metadata !1930, metadata !"args", metadata !1429, i32 143, i64 1, i64 32, i64 33, i32 0, metadata !27} ; [ DW_TAG_member ] [args] [line 143, size 1, align 32, offset 33] [from uintptr_t]
!1935 = metadata !{i32 786445, metadata !1930, metadata !"add_args", metadata !1429, i32 146, i64 1, i64 32, i64 34, i32 0, metadata !27} ; [ DW_TAG_member ] [add_args] [line 146, size 1, align 32, offset 34] [from uintptr_t]
!1936 = metadata !{i32 786445, metadata !1930, metadata !"redirect", metadata !1429, i32 148, i64 1, i64 32, i64 35, i32 0, metadata !27} ; [ DW_TAG_member ] [redirect] [line 148, size 1, align 32, offset 35] [from uintptr_t]
!1937 = metadata !{i32 786688, metadata !1920, metadata !"errstr", metadata !6, i32 187, metadata !1863, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errstr] [line 187]
!1938 = metadata !{i32 786688, metadata !1939, metadata !"__s1_len", metadata !6, i32 220, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 220]
!1939 = metadata !{i32 786443, metadata !1940, i32 220, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1940 = metadata !{i32 786443, metadata !1920, i32 219, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1941 = metadata !{i32 786688, metadata !1939, metadata !"__s2_len", metadata !6, i32 220, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 220]
!1942 = metadata !{i32 786688, metadata !1943, metadata !"__s1", metadata !6, i32 220, metadata !1295, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 220]
!1943 = metadata !{i32 786443, metadata !1939, i32 220, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1944 = metadata !{i32 786688, metadata !1943, metadata !"__result", metadata !6, i32 220, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 220]
!1945 = metadata !{i32 786688, metadata !1946, metadata !"__s1_len", metadata !6, i32 223, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 223]
!1946 = metadata !{i32 786443, metadata !1940, i32 223, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1947 = metadata !{i32 786688, metadata !1946, metadata !"__s2_len", metadata !6, i32 223, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 223]
!1948 = metadata !{i32 786688, metadata !1949, metadata !"__s1", metadata !6, i32 223, metadata !1295, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 223]
!1949 = metadata !{i32 786443, metadata !1946, i32 223, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1950 = metadata !{i32 786688, metadata !1949, metadata !"__result", metadata !6, i32 223, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 223]
!1951 = metadata !{i32 786688, metadata !1952, metadata !"__s1_len", metadata !6, i32 227, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 227]
!1952 = metadata !{i32 786443, metadata !1940, i32 227, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1953 = metadata !{i32 786688, metadata !1952, metadata !"__s2_len", metadata !6, i32 227, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 227]
!1954 = metadata !{i32 786688, metadata !1955, metadata !"__s1", metadata !6, i32 227, metadata !1295, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 227]
!1955 = metadata !{i32 786443, metadata !1952, i32 227, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1956 = metadata !{i32 786688, metadata !1955, metadata !"__result", metadata !6, i32 227, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 227]
!1957 = metadata !{i32 786688, metadata !1958, metadata !"__s1_len", metadata !6, i32 232, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 232]
!1958 = metadata !{i32 786443, metadata !1940, i32 232, i32 0, metadata !6, i32 102} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1959 = metadata !{i32 786688, metadata !1958, metadata !"__s2_len", metadata !6, i32 232, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 232]
!1960 = metadata !{i32 786688, metadata !1961, metadata !"__s1", metadata !6, i32 232, metadata !1295, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 232]
!1961 = metadata !{i32 786443, metadata !1958, i32 232, i32 0, metadata !6, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1962 = metadata !{i32 786688, metadata !1961, metadata !"__result", metadata !6, i32 232, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 232]
!1963 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_merge_loc_conf", metadata !"ngx_http_rewrite_merge_loc_conf", metadata !"", metadata !6, i32 128, metadata !1791, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_rewrite_merge_loc_conf, null, null, metadata !1964, i32 129} ; [ DW_TAG_subprogram ] [line 128] [local] [def] [scope 129] [ngx_http_rewrite_merge_loc_conf]
!1964 = metadata !{metadata !1965}
!1965 = metadata !{metadata !1966, metadata !1967, metadata !1968, metadata !1969, metadata !1971, metadata !1972}
!1966 = metadata !{i32 786689, metadata !1963, metadata !"cf", metadata !6, i32 16777344, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 128]
!1967 = metadata !{i32 786689, metadata !1963, metadata !"parent", metadata !6, i32 33554560, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 128]
!1968 = metadata !{i32 786689, metadata !1963, metadata !"child", metadata !6, i32 50331776, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 128]
!1969 = metadata !{i32 786688, metadata !1970, metadata !"prev", metadata !6, i32 130, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 130]
!1970 = metadata !{i32 786443, metadata !1963, i32 129, i32 0, metadata !6, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1971 = metadata !{i32 786688, metadata !1970, metadata !"conf", metadata !6, i32 131, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 131]
!1972 = metadata !{i32 786688, metadata !1970, metadata !"code", metadata !6, i32 132, metadata !1973, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 132]
!1973 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uintptr_t]
!1974 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_create_loc_conf", metadata !"ngx_http_rewrite_create_loc_conf", metadata !"", metadata !6, i32 115, metadata !1782, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_rewrite_create_loc_conf, null, null, metadata !1975, i32 116} ; [ DW_TAG_subprogram ] [line 115] [local] [def] [scope 116] [ngx_http_rewrite_create_loc_conf]
!1975 = metadata !{metadata !1976}
!1976 = metadata !{metadata !1977, metadata !1978}
!1977 = metadata !{i32 786689, metadata !1974, metadata !"cf", metadata !6, i32 16777331, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 115]
!1978 = metadata !{i32 786688, metadata !1979, metadata !"conf", metadata !6, i32 117, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 117]
!1979 = metadata !{i32 786443, metadata !1974, i32 116, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1980 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_init", metadata !"ngx_http_rewrite_init", metadata !"", metadata !6, i32 159, metadata !1777, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_rewrite_init, null, null, metadata !1981, i32 160} ; [ DW_TAG_subprogram ] [line 159] [local] [def] [scope 160] [ngx_http_rewrite_init]
!1981 = metadata !{metadata !1982}
!1982 = metadata !{metadata !1983, metadata !1984, metadata !1987}
!1983 = metadata !{i32 786689, metadata !1980, metadata !"cf", metadata !6, i32 16777375, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 159]
!1984 = metadata !{i32 786688, metadata !1985, metadata !"h", metadata !6, i32 161, metadata !1986, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 161]
!1985 = metadata !{i32 786443, metadata !1980, i32 160, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1986 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1371} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_handler_pt]
!1987 = metadata !{i32 786688, metadata !1985, metadata !"cmcf", metadata !6, i32 162, metadata !1701, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 162]
!1988 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_rewrite_handler", metadata !"ngx_http_rewrite_handler", metadata !"", metadata !6, i32 47, metadata !1077, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_rewrite_handler, null, null, metadata !1989, i32 48} ; [ DW_TAG_subprogram ] [line 47] [local] [def] [scope 48] [ngx_http_rewrite_handler]
!1989 = metadata !{metadata !1990}
!1990 = metadata !{metadata !1991, metadata !1992, metadata !1994, metadata !1995, metadata !1996, metadata !1997, metadata !1998}
!1991 = metadata !{i32 786689, metadata !1988, metadata !"r", metadata !6, i32 16777263, metadata !491, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 47]
!1992 = metadata !{i32 786688, metadata !1993, metadata !"index", metadata !6, i32 49, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [index] [line 49]
!1993 = metadata !{i32 786443, metadata !1988, i32 48, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!1994 = metadata !{i32 786688, metadata !1993, metadata !"code", metadata !6, i32 50, metadata !1613, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 50]
!1995 = metadata !{i32 786688, metadata !1993, metadata !"e", metadata !6, i32 51, metadata !1617, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 51]
!1996 = metadata !{i32 786688, metadata !1993, metadata !"cscf", metadata !6, i32 52, metadata !1313, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cscf] [line 52]
!1997 = metadata !{i32 786688, metadata !1993, metadata !"cmcf", metadata !6, i32 53, metadata !1701, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 53]
!1998 = metadata !{i32 786688, metadata !1993, metadata !"rlcf", metadata !6, i32 54, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlcf] [line 54]
!1999 = metadata !{metadata !2000}
!2000 = metadata !{metadata !2001, metadata !2039, metadata !2043}
!2001 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_rewrite_module", metadata !"ngx_http_rewrite_module", metadata !"", metadata !6, i32 35, metadata !2002, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_rewrite_module} ; [ DW_TAG_variable ] [ngx_http_rewrite_module] [line 35] [def]
!2002 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !2003} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!2003 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !2004, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!2004 = metadata !{metadata !2005, metadata !2006, metadata !2007, metadata !2008, metadata !2009, metadata !2010, metadata !2011, metadata !2012, metadata !2013, metadata !2014, metadata !2015, metadata !2019, metadata !2023, metadata !2024, metadata !2025, metadata !2029, metadata !2030, metadata !2031, metadata !2032, metadata !2033, metadata !2034, metadata !2035, metadata !2036, metadata !2037, metadata !2038}
!2005 = metadata !{i32 786445, metadata !2003, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!2006 = metadata !{i32 786445, metadata !2003, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!2007 = metadata !{i32 786445, metadata !2003, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!2008 = metadata !{i32 786445, metadata !2003, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!2009 = metadata !{i32 786445, metadata !2003, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!2010 = metadata !{i32 786445, metadata !2003, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!2011 = metadata !{i32 786445, metadata !2003, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!2012 = metadata !{i32 786445, metadata !2003, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!2013 = metadata !{i32 786445, metadata !2003, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!2014 = metadata !{i32 786445, metadata !2003, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!2015 = metadata !{i32 786445, metadata !2003, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !2016} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!2016 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2017} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2017 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2018, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2018 = metadata !{metadata !476, metadata !137}
!2019 = metadata !{i32 786445, metadata !2003, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !2020} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!2020 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2021} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2021 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2022, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2022 = metadata !{metadata !476, metadata !203}
!2023 = metadata !{i32 786445, metadata !2003, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !2020} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!2024 = metadata !{i32 786445, metadata !2003, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !2020} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!2025 = metadata !{i32 786445, metadata !2003, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !2026} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!2026 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2027} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2027 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2028, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2028 = metadata !{null, metadata !203}
!2029 = metadata !{i32 786445, metadata !2003, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !2026} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!2030 = metadata !{i32 786445, metadata !2003, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !2026} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!2031 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!2032 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!2033 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!2034 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!2035 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!2036 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!2037 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!2038 = metadata !{i32 786445, metadata !2003, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!2039 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_rewrite_commands", metadata !"ngx_http_rewrite_commands", metadata !"", metadata !6, i32 25, metadata !2040, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_rewrite_commands} ; [ DW_TAG_variable ] [ngx_http_rewrite_commands] [line 25] [local] [def]
!2040 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1792, i64 32, i32 0, i32 0, metadata !448, metadata !2041, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1792, align 32, offset 0] [from ngx_command_t]
!2041 = metadata !{metadata !2042}
!2042 = metadata !{i32 786465, i64 0, i64 7}      ; [ DW_TAG_subrange_type ] [0, 7]
!2043 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_rewrite_module_ctx", metadata !"ngx_http_rewrite_module_ctx", metadata !"", metadata !6, i32 26, metadata !1772, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_rewrite_module_ctx} ; [ DW_TAG_variable ] [ngx_http_rewrite_module_ctx] [line 26] [local] [def]
!2044 = metadata !{i32 177, i32 0, metadata !1913, null}
!2045 = metadata !{i32 182, i32 0, metadata !1920, null}
!2046 = metadata !{i32 184, i32 0, metadata !1920, null}
!2047 = metadata !{i32 185, i32 0, metadata !1920, null}
!2048 = metadata !{i32 187, i32 0, metadata !1920, null}
!2049 = metadata !{i32 188, i32 0, metadata !1920, null}
!2050 = metadata !{metadata !"any pointer", metadata !2051}
!2051 = metadata !{metadata !"omnipotent char", metadata !2052}
!2052 = metadata !{metadata !"Simple C/C++ TBAA"}
!2053 = metadata !{i32 189, i32 0, metadata !1920, null}
!2054 = metadata !{i32 192, i32 0, metadata !1920, null}
!2055 = metadata !{i32 193, i32 0, metadata !1920, null}
!2056 = metadata !{i32 194, i32 0, metadata !1920, null}
!2057 = metadata !{i32 195, i32 0, metadata !1920, null}
!2058 = metadata !{i32 196, i32 0, metadata !1920, null}
!2059 = metadata !{metadata !"int", metadata !2051}
!2060 = metadata !{i32 197, i32 0, metadata !1920, null}
!2061 = metadata !{i32 199, i32 0, metadata !1920, null}
!2062 = metadata !{i32 200, i32 0, metadata !1920, null}
!2063 = metadata !{i32 203, i32 0, metadata !1920, null}
!2064 = metadata !{i32 204, i32 0, metadata !1920, null}
!2065 = metadata !{i32 205, i32 0, metadata !1920, null}
!2066 = metadata !{i32 206, i32 0, metadata !1920, null}
!2067 = metadata !{i32 208, i32 0, metadata !2068, null}
!2068 = metadata !{i32 786443, metadata !1920, i32 206, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2069 = metadata !{i32 209, i32 0, metadata !2068, null}
!2070 = metadata !{i32 211, i32 0, metadata !2071, null}
!2071 = metadata !{i32 786443, metadata !1920, i32 210, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2072 = metadata !{i32 213, i32 0, metadata !1920, null}
!2073 = metadata !{i32 214, i32 0, metadata !1920, null}
!2074 = metadata !{i32 215, i32 0, metadata !2075, null}
!2075 = metadata !{i32 786443, metadata !1920, i32 214, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2076 = metadata !{i32 216, i32 0, metadata !2075, null}
!2077 = metadata !{i32 1}
!2078 = metadata !{i32 217, i32 0, metadata !2075, null}
!2079 = metadata !{i32 218, i32 0, metadata !2075, null}
!2080 = metadata !{i32 219, i32 0, metadata !1920, null}
!2081 = metadata !{i32 220, i32 0, metadata !1939, null}
!2082 = metadata !{i32 220, i32 0, metadata !2083, null}
!2083 = metadata !{i32 786443, metadata !2084, i32 220, i32 0, metadata !6, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2084 = metadata !{i32 786443, metadata !1943, i32 220, i32 0, metadata !6, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2085 = metadata !{i32 223, i32 0, metadata !1946, null}
!2086 = metadata !{i32 223, i32 0, metadata !2087, null}
!2087 = metadata !{i32 786443, metadata !2088, i32 223, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2088 = metadata !{i32 786443, metadata !1949, i32 223, i32 0, metadata !6, i32 94} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2089 = metadata !{i32 224, i32 0, metadata !2090, null}
!2090 = metadata !{i32 786443, metadata !1940, i32 223, i32 0, metadata !6, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2091 = metadata !{i32 225, i32 0, metadata !2090, null}
!2092 = metadata !{i32 226, i32 0, metadata !2090, null}
!2093 = metadata !{i32 227, i32 0, metadata !1952, null}
!2094 = metadata !{i32 227, i32 0, metadata !2095, null}
!2095 = metadata !{i32 786443, metadata !2096, i32 227, i32 0, metadata !6, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2096 = metadata !{i32 786443, metadata !1955, i32 227, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2097 = metadata !{i32 228, i32 0, metadata !2098, null}
!2098 = metadata !{i32 786443, metadata !1940, i32 227, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2099 = metadata !{i32 229, i32 0, metadata !2098, null}
!2100 = metadata !{i32 230, i32 0, metadata !2098, null}
!2101 = metadata !{i32 231, i32 0, metadata !2098, null}
!2102 = metadata !{i32 232, i32 0, metadata !1958, null}
!2103 = metadata !{i32 232, i32 0, metadata !2104, null}
!2104 = metadata !{i32 786443, metadata !2105, i32 232, i32 0, metadata !6, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2105 = metadata !{i32 786443, metadata !1961, i32 232, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2106 = metadata !{i32 233, i32 0, metadata !2107, null}
!2107 = metadata !{i32 786443, metadata !1940, i32 232, i32 0, metadata !6, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2108 = metadata !{i32 234, i32 0, metadata !2107, null}
!2109 = metadata !{i32 235, i32 0, metadata !2107, null}
!2110 = metadata !{i32 238, i32 0, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !1940, i32 237, i32 0, metadata !6, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2112 = metadata !{i32 239, i32 0, metadata !2111, null}
!2113 = metadata !{i32 242, i32 0, metadata !1920, null}
!2114 = metadata !{i32 243, i32 0, metadata !1920, null}
!2115 = metadata !{i32 244, i32 0, metadata !1920, null}
!2116 = metadata !{i32 245, i32 0, metadata !1920, null}
!2117 = metadata !{i32 246, i32 0, metadata !1920, null}
!2118 = metadata !{i32 247, i32 0, metadata !1920, null}
!2119 = metadata !{i32 248, i32 0, metadata !1920, null}
!2120 = metadata !{i32 249, i32 0, metadata !1920, null}
!2121 = metadata !{i32 250, i32 0, metadata !1920, null}
!2122 = metadata !{i32 251, i32 0, metadata !1920, null}
!2123 = metadata !{i32 254, i32 0, metadata !1920, null}
!2124 = metadata !{i32 255, i32 0, metadata !1920, null}
!2125 = metadata !{i32 256, i32 0, metadata !1920, null}
!2126 = metadata !{i32 257, i32 0, metadata !1920, null}
!2127 = metadata !{i32 258, i32 0, metadata !2128, null}
!2128 = metadata !{i32 786443, metadata !1920, i32 257, i32 0, metadata !6, i32 109} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2129 = metadata !{i32 259, i32 0, metadata !2128, null}
!2130 = metadata !{i32 260, i32 0, metadata !1920, null}
!2131 = metadata !{i32 261, i32 0, metadata !1920, null}
!2132 = metadata !{i32 264, i32 0, metadata !1920, null}
!2133 = metadata !{i32 265, i32 0, metadata !1920, null}
!2134 = metadata !{i32 266, i32 0, metadata !1920, null}
!2135 = metadata !{i32 267, i32 0, metadata !1920, null}
!2136 = metadata !{i32 268, i32 0, metadata !1920, null}
!2137 = metadata !{i32 269, i32 0, metadata !1920, null}
!2138 = metadata !{i32 270, i32 0, metadata !2139, null}
!2139 = metadata !{i32 786443, metadata !1920, i32 269, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2140 = metadata !{i32 271, i32 0, metadata !2139, null}
!2141 = metadata !{i32 274, i32 0, metadata !2139, null}
!2142 = metadata !{i32 275, i32 0, metadata !2139, null}
!2143 = metadata !{i32 276, i32 0, metadata !1920, null}
!2144 = metadata !{i32 277, i32 0, metadata !1920, null}
!2145 = metadata !{i32 278, i32 0, metadata !1920, null}
!2146 = metadata !{i32 280, i32 0, metadata !1884, null}
!2147 = metadata !{i32 287, i32 0, metadata !1891, null}
!2148 = metadata !{i32 288, i32 0, metadata !1891, null}
!2149 = metadata !{i32 289, i32 0, metadata !1891, null}
!2150 = metadata !{i32 292, i32 0, metadata !1891, null}
!2151 = metadata !{i32 293, i32 0, metadata !1891, null}
!2152 = metadata !{i32 294, i32 0, metadata !1891, null}
!2153 = metadata !{i32 295, i32 0, metadata !1891, null}
!2154 = metadata !{i32 296, i32 0, metadata !1891, null}
!2155 = metadata !{i32 297, i32 0, metadata !1891, null}
!2156 = metadata !{i32 298, i32 0, metadata !2157, null}
!2157 = metadata !{i32 786443, metadata !1891, i32 297, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2158 = metadata !{i32 299, i32 0, metadata !2159, null}
!2159 = metadata !{i32 786443, metadata !2157, i32 298, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2160 = metadata !{i32 306, i32 0, metadata !2157, null}
!2161 = metadata !{i32 303, i32 0, metadata !2162, null}
!2162 = metadata !{i32 786443, metadata !2157, i32 302, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2163 = metadata !{i32 304, i32 0, metadata !2162, null}
!2164 = metadata !{i32 308, i32 0, metadata !2165, null}
!2165 = metadata !{i32 786443, metadata !1891, i32 307, i32 0, metadata !6, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2166 = metadata !{i32 309, i32 0, metadata !2167, null}
!2167 = metadata !{i32 786443, metadata !2165, i32 308, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2168 = metadata !{i32 310, i32 0, metadata !2167, null}
!2169 = metadata !{i32 312, i32 0, metadata !2165, null}
!2170 = metadata !{i32 315, i32 0, metadata !2165, null}
!2171 = metadata !{i32 317, i32 0, metadata !1891, null}
!2172 = metadata !{i32 318, i32 0, metadata !1891, null}
!2173 = metadata !{i32 319, i32 0, metadata !1891, null}
!2174 = metadata !{i32 320, i32 0, metadata !1891, null}
!2175 = metadata !{i32 321, i32 0, metadata !1891, null}
!2176 = metadata !{i32 325, i32 0, metadata !1891, null}
!2177 = metadata !{i32 327, i32 0, metadata !1875, null}
!2178 = metadata !{i32 331, i32 0, metadata !1882, null}
!2179 = metadata !{i32 332, i32 0, metadata !1882, null}
!2180 = metadata !{i32 335, i32 0, metadata !1882, null}
!2181 = metadata !{i32 336, i32 0, metadata !1882, null}
!2182 = metadata !{i32 337, i32 0, metadata !1882, null}
!2183 = metadata !{i32 339, i32 0, metadata !1757, null}
!2184 = metadata !{i32 341, i32 0, metadata !1764, null}
!2185 = metadata !{i32 346, i32 0, metadata !1764, null}
!2186 = metadata !{i32 354, i32 0, metadata !1764, null}
!2187 = metadata !{i32 355, i32 0, metadata !1764, null}
!2188 = metadata !{i32 358, i32 0, metadata !1764, null}
!2189 = metadata !{i32 359, i32 0, metadata !1764, null}
!2190 = metadata !{i32 360, i32 0, metadata !1764, null}
!2191 = metadata !{i32 361, i32 0, metadata !1764, null}
!2192 = metadata !{i32 362, i32 0, metadata !1764, null}
!2193 = metadata !{i32 365, i32 0, metadata !2194, null}
!2194 = metadata !{i32 786443, metadata !1764, i32 365, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2195 = metadata !{i32 366, i32 0, metadata !2196, null}
!2196 = metadata !{i32 786443, metadata !2194, i32 365, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2197 = metadata !{i32 369, i32 0, metadata !2196, null}
!2198 = metadata !{i32 370, i32 0, metadata !2196, null}
!2199 = metadata !{i32 371, i32 0, metadata !2200, null}
!2200 = metadata !{i32 786443, metadata !2196, i32 370, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2201 = metadata !{i32 372, i32 0, metadata !2200, null}
!2202 = metadata !{i32 375, i32 0, metadata !2200, null}
!2203 = metadata !{i32 376, i32 0, metadata !2200, null}
!2204 = metadata !{i32 379, i32 0, metadata !1764, null}
!2205 = metadata !{i32 378, i32 0, metadata !1764, null}
!2206 = metadata !{i32 380, i32 0, metadata !1764, null}
!2207 = metadata !{i32 381, i32 0, metadata !1764, null}
!2208 = metadata !{i32 382, i32 0, metadata !1764, null}
!2209 = metadata !{i32 383, i32 0, metadata !1764, null}
!2210 = metadata !{i32 422, i32 0, metadata !1808, metadata !2211}
!2211 = metadata !{i32 386, i32 0, metadata !1764, null}
!2212 = metadata !{i32 786689, metadata !1808, metadata !"cf", metadata !6, i32 16777638, metadata !11, i32 0, metadata !2211} ; [ DW_TAG_arg_variable ] [cf] [line 422]
!2213 = metadata !{i32 786689, metadata !1808, metadata !"lcf", metadata !6, i32 33554854, metadata !464, i32 0, metadata !2211} ; [ DW_TAG_arg_variable ] [lcf] [line 422]
!2214 = metadata !{i32 429, i32 0, metadata !1816, metadata !2211}
!2215 = metadata !{i32 433, i32 0, metadata !1816, metadata !2211}
!2216 = metadata !{i32 434, i32 0, metadata !1816, metadata !2211}
!2217 = metadata !{i32 786688, metadata !1816, metadata !"value", metadata !6, i32 426, metadata !478, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [value] [line 426]
!2218 = metadata !{i32 435, i32 0, metadata !1816, metadata !2211}
!2219 = metadata !{i32 786688, metadata !1816, metadata !"last", metadata !6, i32 428, metadata !26, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [last] [line 428]
!2220 = metadata !{i32 436, i32 0, metadata !1816, metadata !2211}
!2221 = metadata !{i32 437, i32 0, metadata !2222, metadata !2211}
!2222 = metadata !{i32 786443, metadata !1816, i32 436, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2223 = metadata !{i32 438, i32 0, metadata !2222, metadata !2211}
!2224 = metadata !{i32 440, i32 0, metadata !1816, metadata !2211}
!2225 = metadata !{i32 786688, metadata !1816, metadata !"cur", metadata !6, i32 427, metadata !26, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [cur] [line 427]
!2226 = metadata !{i32 444, i32 0, metadata !2227, metadata !2211}
!2227 = metadata !{i32 786443, metadata !1816, i32 443, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2228 = metadata !{i32 445, i32 0, metadata !2227, metadata !2211}
!2229 = metadata !{i32 446, i32 0, metadata !2227, metadata !2211}
!2230 = metadata !{i32 448, i32 0, metadata !1816, metadata !2211}
!2231 = metadata !{i32 449, i32 0, metadata !2232, metadata !2211}
!2232 = metadata !{i32 786443, metadata !1816, i32 448, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2233 = metadata !{i32 450, i32 0, metadata !2232, metadata !2211}
!2234 = metadata !{i32 452, i32 0, metadata !1816, metadata !2211}
!2235 = metadata !{i32 453, i32 0, metadata !2236, metadata !2211}
!2236 = metadata !{i32 786443, metadata !1816, i32 452, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2237 = metadata !{i32 456, i32 0, metadata !2238, metadata !2211}
!2238 = metadata !{i32 786443, metadata !1816, i32 455, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2239 = metadata !{i32 457, i32 0, metadata !2238, metadata !2211}
!2240 = metadata !{i32 459, i32 0, metadata !1816, metadata !2211}
!2241 = metadata !{i32 786688, metadata !1816, metadata !"len", metadata !6, i32 425, metadata !30, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [len] [line 425]
!2242 = metadata !{i32 460, i32 0, metadata !1816, metadata !2211}
!2243 = metadata !{i32 786688, metadata !1816, metadata !"p", metadata !6, i32 424, metadata !44, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [p] [line 424]
!2244 = metadata !{i32 461, i32 0, metadata !1816, metadata !2211}
!2245 = metadata !{i32 462, i32 0, metadata !2246, metadata !2211}
!2246 = metadata !{i32 786443, metadata !1816, i32 461, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2247 = metadata !{i32 463, i32 0, metadata !2248, metadata !2211}
!2248 = metadata !{i32 786443, metadata !2246, i32 462, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2249 = metadata !{i32 464, i32 0, metadata !2248, metadata !2211}
!2250 = metadata !{i32 786689, metadata !1866, metadata !"cf", metadata !6, i32 16777796, metadata !11, i32 0, metadata !2251} ; [ DW_TAG_arg_variable ] [cf] [line 580]
!2251 = metadata !{i32 466, i32 0, metadata !2246, metadata !2211}
!2252 = metadata !{i32 580, i32 0, metadata !1866, metadata !2251}
!2253 = metadata !{i32 786689, metadata !1866, metadata !"lcf", metadata !6, i32 33555012, metadata !464, i32 0, metadata !2251} ; [ DW_TAG_arg_variable ] [lcf] [line 580]
!2254 = metadata !{i32 786689, metadata !1866, metadata !"value", metadata !6, i32 50332228, metadata !478, i32 0, metadata !2251} ; [ DW_TAG_arg_variable ] [value] [line 580]
!2255 = metadata !{i32 584, i32 0, metadata !1873, metadata !2251}
!2256 = metadata !{i32 585, i32 0, metadata !1873, metadata !2251}
!2257 = metadata !{i32 586, i32 0, metadata !1873, metadata !2251}
!2258 = metadata !{i32 786688, metadata !1873, metadata !"index", metadata !6, i32 582, metadata !476, i32 0, metadata !2251} ; [ DW_TAG_auto_variable ] [index] [line 582]
!2259 = metadata !{i32 587, i32 0, metadata !1873, metadata !2251}
!2260 = metadata !{i32 590, i32 0, metadata !1873, metadata !2251}
!2261 = metadata !{i32 591, i32 0, metadata !1873, metadata !2251}
!2262 = metadata !{i32 594, i32 0, metadata !1873, metadata !2251}
!2263 = metadata !{i32 595, i32 0, metadata !1873, metadata !2251}
!2264 = metadata !{i32 469, i32 0, metadata !2246, metadata !2211}
!2265 = metadata !{i32 472, i32 0, metadata !2246, metadata !2211}
!2266 = metadata !{i32 473, i32 0, metadata !2246, metadata !2211}
!2267 = metadata !{i32 474, i32 0, metadata !2246, metadata !2211}
!2268 = metadata !{i32 475, i32 0, metadata !2246, metadata !2211}
!2269 = metadata !{i32 476, i32 0, metadata !2270, metadata !2211}
!2270 = metadata !{i32 786443, metadata !2246, i32 475, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2271 = metadata !{i32 479, i32 0, metadata !2270, metadata !2211}
!2272 = metadata !{i32 480, i32 0, metadata !2270, metadata !2211}
!2273 = metadata !{i32 483, i32 0, metadata !2270, metadata !2211}
!2274 = metadata !{i32 484, i32 0, metadata !2270, metadata !2211}
!2275 = metadata !{i32 486, i32 0, metadata !2246, metadata !2211}
!2276 = metadata !{i32 487, i32 0, metadata !2277, metadata !2211}
!2277 = metadata !{i32 786443, metadata !2246, i32 486, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2278 = metadata !{i32 490, i32 0, metadata !2277, metadata !2211}
!2279 = metadata !{i32 491, i32 0, metadata !2277, metadata !2211}
!2280 = metadata !{i32 494, i32 0, metadata !2277, metadata !2211}
!2281 = metadata !{i32 495, i32 0, metadata !2277, metadata !2211}
!2282 = metadata !{i32 497, i32 0, metadata !2246, metadata !2211}
!2283 = metadata !{i32 498, i32 0, metadata !2284, metadata !2211}
!2284 = metadata !{i32 786443, metadata !2246, i32 497, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2285 = metadata !{i32 499, i32 0, metadata !2284, metadata !2211}
!2286 = metadata !{i32 502, i32 0, metadata !2284, metadata !2211}
!2287 = metadata !{i32 503, i32 0, metadata !2284, metadata !2211}
!2288 = metadata !{i32 504, i32 0, metadata !2284, metadata !2211}
!2289 = metadata !{i32 505, i32 0, metadata !2284, metadata !2211}
!2290 = metadata !{i32 506, i32 0, metadata !2284, metadata !2211}
!2291 = metadata !{i32 507, i32 0, metadata !2284, metadata !2211}
!2292 = metadata !{i32 508, i32 0, metadata !2284, metadata !2211}
!2293 = metadata !{i32 509, i32 0, metadata !2284, metadata !2211}
!2294 = metadata !{i32 512, i32 0, metadata !2284, metadata !2211}
!2295 = metadata !{i32 513, i32 0, metadata !2284, metadata !2211}
!2296 = metadata !{i32 514, i32 0, metadata !2284, metadata !2211}
!2297 = metadata !{i32 515, i32 0, metadata !2284, metadata !2211}
!2298 = metadata !{i32 516, i32 0, metadata !2299, metadata !2211}
!2299 = metadata !{i32 786443, metadata !2284, i32 515, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2300 = metadata !{i32 517, i32 0, metadata !2299, metadata !2211}
!2301 = metadata !{i32 518, i32 0, metadata !2284, metadata !2211}
!2302 = metadata !{i32 519, i32 0, metadata !2284, metadata !2211}
!2303 = metadata !{i32 521, i32 0, metadata !2246, metadata !2211}
!2304 = metadata !{i32 522, i32 0, metadata !2246, metadata !2211}
!2305 = metadata !{i32 524, i32 0, metadata !1816, metadata !2211}
!2306 = metadata !{i32 525, i32 0, metadata !2307, metadata !2211}
!2307 = metadata !{i32 786443, metadata !1816, i32 524, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2308 = metadata !{i32 526, i32 0, metadata !2309, metadata !2211}
!2309 = metadata !{i32 786443, metadata !2307, i32 525, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2310 = metadata !{i32 527, i32 0, metadata !2309, metadata !2211}
!2311 = metadata !{i32 529, i32 0, metadata !2307, metadata !2211}
!2312 = metadata !{i32 530, i32 0, metadata !2307, metadata !2211}
!2313 = metadata !{i32 531, i32 0, metadata !2307, metadata !2211}
!2314 = metadata !{i32 534, i32 0, metadata !2307, metadata !2211}
!2315 = metadata !{i32 535, i32 0, metadata !2307, metadata !2211}
!2316 = metadata !{i32 538, i32 0, metadata !2307, metadata !2211}
!2317 = metadata !{i32 539, i32 0, metadata !2307, metadata !2211}
!2318 = metadata !{i32 540, i32 0, metadata !2319, metadata !2211}
!2319 = metadata !{i32 786443, metadata !2307, i32 539, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2320 = metadata !{i32 541, i32 0, metadata !2319, metadata !2211}
!2321 = metadata !{i32 544, i32 0, metadata !2322, metadata !2211}
!2322 = metadata !{i32 786443, metadata !2307, i32 543, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2323 = metadata !{i32 545, i32 0, metadata !2322, metadata !2211}
!2324 = metadata !{i32 548, i32 0, metadata !2325, metadata !2211}
!2325 = metadata !{i32 786443, metadata !2307, i32 547, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2326 = metadata !{i32 549, i32 0, metadata !2325, metadata !2211}
!2327 = metadata !{i32 552, i32 0, metadata !2328, metadata !2211}
!2328 = metadata !{i32 786443, metadata !2307, i32 551, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2329 = metadata !{i32 553, i32 0, metadata !2328, metadata !2211}
!2330 = metadata !{i32 555, i32 0, metadata !2307, metadata !2211}
!2331 = metadata !{i32 556, i32 0, metadata !2332, metadata !2211}
!2332 = metadata !{i32 786443, metadata !2307, i32 555, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2333 = metadata !{i32 557, i32 0, metadata !2334, metadata !2211}
!2334 = metadata !{i32 786443, metadata !2332, i32 556, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2335 = metadata !{i32 558, i32 0, metadata !2334, metadata !2211}
!2336 = metadata !{i32 561, i32 0, metadata !2337, metadata !2211}
!2337 = metadata !{i32 786443, metadata !2332, i32 560, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2338 = metadata !{i32 562, i32 0, metadata !2337, metadata !2211}
!2339 = metadata !{i32 565, i32 0, metadata !2340, metadata !2211}
!2340 = metadata !{i32 786443, metadata !2332, i32 564, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2341 = metadata !{i32 566, i32 0, metadata !2340, metadata !2211}
!2342 = metadata !{i32 569, i32 0, metadata !2343, metadata !2211}
!2343 = metadata !{i32 786443, metadata !2332, i32 568, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2344 = metadata !{i32 570, i32 0, metadata !2343, metadata !2211}
!2345 = metadata !{i32 573, i32 0, metadata !2307, metadata !2211}
!2346 = metadata !{i32 574, i32 0, metadata !2307, metadata !2211}
!2347 = metadata !{i32 576, i32 0, metadata !1816, metadata !2211}
!2348 = metadata !{i32 577, i32 0, metadata !1816, metadata !2211}
!2349 = metadata !{i32 578, i32 0, metadata !1816, metadata !2211}
!2350 = metadata !{i32 389, i32 0, metadata !1764, null}
!2351 = metadata !{i32 390, i32 0, metadata !1764, null}
!2352 = metadata !{i32 393, i32 0, metadata !1764, null}
!2353 = metadata !{i32 394, i32 0, metadata !1764, null}
!2354 = metadata !{i32 396, i32 0, metadata !1764, null}
!2355 = metadata !{i32 397, i32 0, metadata !1764, null}
!2356 = metadata !{i32 398, i32 0, metadata !1764, null}
!2357 = metadata !{i64 0, i64 4, metadata !2050, i64 4, i64 4, metadata !2050, i64 8, i64 4, metadata !2050, i64 12, i64 4, metadata !2050, i64 16, i64 4, metadata !2050, i64 20, i64 4, metadata !2050, i64 24, i64 4, metadata !2050, i64 28, i64 4, metadata !2050, i64 32, i64 4, metadata !2059, i64 36, i64 4, metadata !2059, i64 40, i64 4, metadata !2050, i64 44, i64 4, metadata !2050}
!2358 = metadata !{i32 399, i32 0, metadata !1764, null}
!2359 = metadata !{i32 400, i32 0, metadata !1764, null}
!2360 = metadata !{i32 401, i32 0, metadata !2361, null}
!2361 = metadata !{i32 786443, metadata !1764, i32 400, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2362 = metadata !{i32 402, i32 0, metadata !2361, null}
!2363 = metadata !{i32 403, i32 0, metadata !2361, null}
!2364 = metadata !{i32 405, i32 0, metadata !2365, null}
!2365 = metadata !{i32 786443, metadata !1764, i32 404, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2366 = metadata !{i32 406, i32 0, metadata !2365, null}
!2367 = metadata !{i32 408, i32 0, metadata !1764, null}
!2368 = metadata !{i32 409, i32 0, metadata !1764, null}
!2369 = metadata !{i32 410, i32 0, metadata !1764, null}
!2370 = metadata !{i32 413, i32 0, metadata !1764, null}
!2371 = metadata !{i32 414, i32 0, metadata !2372, null}
!2372 = metadata !{i32 786443, metadata !1764, i32 413, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2373 = metadata !{i32 415, i32 0, metadata !2372, null}
!2374 = metadata !{i32 416, i32 0, metadata !1764, null}
!2375 = metadata !{i32 418, i32 0, metadata !1764, null}
!2376 = metadata !{i32 419, i32 0, metadata !1764, null}
!2377 = metadata !{i32 420, i32 0, metadata !1764, null}
!2378 = metadata !{i32 599, i32 0, metadata !5, null}
!2379 = metadata !{i32 601, i32 0, metadata !463, null}
!2380 = metadata !{i32 607, i32 0, metadata !463, null}
!2381 = metadata !{i32 608, i32 0, metadata !463, null}
!2382 = metadata !{i32 609, i32 0, metadata !2383, null}
!2383 = metadata !{i32 786443, metadata !463, i32 608, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2384 = metadata !{i32 610, i32 0, metadata !2383, null}
!2385 = metadata !{i32 612, i32 0, metadata !463, null}
!2386 = metadata !{i32 613, i32 0, metadata !463, null}
!2387 = metadata !{i32 614, i32 0, metadata !463, null}
!2388 = metadata !{i32 615, i32 0, metadata !463, null}
!2389 = metadata !{i32 618, i32 0, metadata !463, null}
!2390 = metadata !{i32 619, i32 0, metadata !463, null}
!2391 = metadata !{i32 622, i32 0, metadata !463, null}
!2392 = metadata !{i32 623, i32 0, metadata !2393, null}
!2393 = metadata !{i32 786443, metadata !463, i32 622, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2394 = metadata !{i32 624, i32 0, metadata !2393, null}
!2395 = metadata !{i32 625, i32 0, metadata !2393, null}
!2396 = metadata !{i32 626, i32 0, metadata !463, null}
!2397 = metadata !{i32 629, i32 0, metadata !463, null}
!2398 = metadata !{i32 630, i32 0, metadata !2399, null}
!2399 = metadata !{i32 786443, metadata !463, i32 629, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2400 = metadata !{i32 631, i32 0, metadata !2399, null}
!2401 = metadata !{i32 634, i32 0, metadata !2399, null}
!2402 = metadata !{i32 635, i32 0, metadata !2399, null}
!2403 = metadata !{i32 636, i32 0, metadata !2399, null}
!2404 = metadata !{i32 637, i32 0, metadata !2399, null}
!2405 = metadata !{i32 639, i32 0, metadata !463, null}
!2406 = metadata !{i32 640, i32 0, metadata !463, null}
!2407 = metadata !{i32 643, i32 0, metadata !463, null}
!2408 = metadata !{i32 644, i32 0, metadata !463, null}
!2409 = metadata !{i32 645, i32 0, metadata !463, null}
!2410 = metadata !{i32 646, i32 0, metadata !463, null}
!2411 = metadata !{i32 92, i32 0, metadata !1692, null}
!2412 = metadata !{i32 97, i32 0, metadata !1699, null}
!2413 = metadata !{i32 98, i32 0, metadata !1699, null}
!2414 = metadata !{i32 99, i32 0, metadata !2415, null}
!2415 = metadata !{i32 786443, metadata !1699, i32 98, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2416 = metadata !{i32 100, i32 0, metadata !2415, null}
!2417 = metadata !{i32 103, i32 0, metadata !1699, null}
!2418 = metadata !{i32 109, i32 0, metadata !1699, null}
!2419 = metadata !{i32 102, i32 0, metadata !1699, null}
!2420 = metadata !{i32 110, i32 0, metadata !1699, null}
!2421 = metadata !{i32 111, i32 0, metadata !1699, null}
!2422 = metadata !{i32 112, i32 0, metadata !1699, null}
!2423 = metadata !{i32 113, i32 0, metadata !1699, null}
!2424 = metadata !{i32 648, i32 0, metadata !1643, null}
!2425 = metadata !{i32 651, i32 0, metadata !1652, null}
!2426 = metadata !{i32 654, i32 0, metadata !1652, null}
!2427 = metadata !{i32 656, i32 0, metadata !2428, null}
!2428 = metadata !{i32 786443, metadata !1652, i32 655, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2429 = metadata !{i32 655, i32 0, metadata !1652, null}
!2430 = metadata !{i32 657, i32 0, metadata !2428, null}
!2431 = metadata !{i32 660, i32 0, metadata !2428, null}
!2432 = metadata !{i32 661, i32 0, metadata !2428, null}
!2433 = metadata !{i32 662, i32 0, metadata !2434, null}
!2434 = metadata !{i32 786443, metadata !2428, i32 661, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2435 = metadata !{i32 664, i32 0, metadata !2428, null}
!2436 = metadata !{i32 665, i32 0, metadata !2428, null}
!2437 = metadata !{i32 666, i32 0, metadata !2428, null}
!2438 = metadata !{i32 667, i32 0, metadata !2428, null}
!2439 = metadata !{i32 668, i32 0, metadata !2428, null}
!2440 = metadata !{i32 670, i32 0, metadata !1652, null}
!2441 = metadata !{i32 671, i32 0, metadata !1652, null}
!2442 = metadata !{i32 674, i32 0, metadata !1652, null}
!2443 = metadata !{i32 675, i32 0, metadata !1652, null}
!2444 = metadata !{i32 676, i32 0, metadata !1652, null}
!2445 = metadata !{i32 677, i32 0, metadata !1652, null}
!2446 = metadata !{i32 678, i32 0, metadata !1652, null}
!2447 = metadata !{i32 679, i32 0, metadata !1652, null}
!2448 = metadata !{i32 680, i32 0, metadata !1652, null}
!2449 = metadata !{i32 681, i32 0, metadata !1652, null}
!2450 = metadata !{i32 682, i32 0, metadata !1652, null}
!2451 = metadata !{i32 683, i32 0, metadata !1652, null}
!2452 = metadata !{i32 687, i32 0, metadata !1652, null}
!2453 = metadata !{i32 159, i32 0, metadata !1980, null}
!2454 = metadata !{i32 163, i32 0, metadata !1985, null}
!2455 = metadata !{i32 164, i32 0, metadata !1985, null}
!2456 = metadata !{i32 165, i32 0, metadata !1985, null}
!2457 = metadata !{i32 168, i32 0, metadata !1985, null}
!2458 = metadata !{i32 169, i32 0, metadata !1985, null}
!2459 = metadata !{i32 170, i32 0, metadata !1985, null}
!2460 = metadata !{i32 173, i32 0, metadata !1985, null}
!2461 = metadata !{i32 174, i32 0, metadata !1985, null}
!2462 = metadata !{i32 175, i32 0, metadata !1985, null}
!2463 = metadata !{i32 115, i32 0, metadata !1974, null}
!2464 = metadata !{i32 118, i32 0, metadata !1979, null}
!2465 = metadata !{i32 119, i32 0, metadata !1979, null}
!2466 = metadata !{i32 122, i32 0, metadata !1979, null}
!2467 = metadata !{i32 123, i32 0, metadata !1979, null}
!2468 = metadata !{i32 124, i32 0, metadata !1979, null}
!2469 = metadata !{i32 125, i32 0, metadata !1979, null}
!2470 = metadata !{i32 126, i32 0, metadata !1979, null}
!2471 = metadata !{i32 128, i32 0, metadata !1963, null}
!2472 = metadata !{i32 133, i32 0, metadata !1970, null}
!2473 = metadata !{i32 134, i32 0, metadata !2474, null}
!2474 = metadata !{i32 786443, metadata !1970, i32 133, i32 0, metadata !6, i32 114} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2475 = metadata !{i32 135, i32 0, metadata !2474, null}
!2476 = metadata !{i32 137, i32 0, metadata !1970, null}
!2477 = metadata !{i32 138, i32 0, metadata !2478, null}
!2478 = metadata !{i32 786443, metadata !1970, i32 137, i32 0, metadata !6, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2479 = metadata !{i32 139, i32 0, metadata !2478, null}
!2480 = metadata !{i32 141, i32 0, metadata !1970, null}
!2481 = metadata !{i32 142, i32 0, metadata !2482, null}
!2482 = metadata !{i32 786443, metadata !1970, i32 141, i32 0, metadata !6, i32 116} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2483 = metadata !{i32 143, i32 0, metadata !2482, null}
!2484 = metadata !{i32 145, i32 0, metadata !1970, null}
!2485 = metadata !{i32 148, i32 0, metadata !1970, null}
!2486 = metadata !{i32 151, i32 0, metadata !1970, null}
!2487 = metadata !{i32 152, i32 0, metadata !1970, null}
!2488 = metadata !{i32 155, i32 0, metadata !1970, null}
!2489 = metadata !{i32 156, i32 0, metadata !1970, null}
!2490 = metadata !{i32 157, i32 0, metadata !1970, null}
!2491 = metadata !{i32 47, i32 0, metadata !1988, null}
!2492 = metadata !{i32 55, i32 0, metadata !1993, null}
!2493 = metadata !{i32 56, i32 0, metadata !1993, null}
!2494 = metadata !{i32 57, i32 0, metadata !1993, null}
!2495 = metadata !{i32 58, i32 0, metadata !1993, null}
!2496 = metadata !{i32 62, i32 0, metadata !1993, null}
!2497 = metadata !{i32 63, i32 0, metadata !1993, null}
!2498 = metadata !{i32 66, i32 0, metadata !1993, null}
!2499 = metadata !{i32 67, i32 0, metadata !1993, null}
!2500 = metadata !{i32 70, i32 0, metadata !1993, null}
!2501 = metadata !{i32 71, i32 0, metadata !1993, null}
!2502 = metadata !{i32 74, i32 0, metadata !1993, null}
!2503 = metadata !{i32 75, i32 0, metadata !1993, null}
!2504 = metadata !{i32 76, i32 0, metadata !1993, null}
!2505 = metadata !{i32 77, i32 0, metadata !1993, null}
!2506 = metadata !{i32 79, i32 0, metadata !1993, null}
!2507 = metadata !{i32 78, i32 0, metadata !1993, null}
!2508 = metadata !{i32 80, i32 0, metadata !2509, null}
!2509 = metadata !{i32 786443, metadata !1993, i32 79, i32 0, metadata !6, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_rewrite_module.c]
!2510 = metadata !{i32 81, i32 0, metadata !2509, null}
!2511 = metadata !{i32 83, i32 0, metadata !1993, null}
!2512 = metadata !{i32 86, i32 0, metadata !1993, null}
!2513 = metadata !{i32 89, i32 0, metadata !1993, null}
!2514 = metadata !{i32 90, i32 0, metadata !1993, null}
