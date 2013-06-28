; ModuleID = 'src/http/modules/ngx_http_limit_conn_module.c'
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
%struct.ngx_conf_enum_t = type { %struct.ngx_str_t, i32 }
%struct.ngx_conf_deprecated_t = type { i8* (%struct.ngx_conf_s*, i8*, i8*)*, i8*, i8* }
%struct.ngx_http_limit_conn_ctx_t = type { %struct.ngx_rbtree_s*, i32, %struct.ngx_str_t }
%struct.ngx_rbtree_s = type { %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* }
%struct.ngx_shm_zone_s = type { i8*, %struct.ngx_shm_t, i32 (%struct.ngx_shm_zone_s*, i8*)*, i8* }
%struct.ngx_shm_t = type { i8*, i32, %struct.ngx_str_t, %struct.ngx_log_s*, i32 }
%struct.ngx_http_limit_conn_limit_t = type { %struct.ngx_shm_zone_s*, i32 }
%struct.ngx_slab_pool_t = type { %struct.ngx_shmtx_sh_t, i32, i32, %struct.ngx_slab_page_s*, %struct.ngx_slab_page_s, i8*, i8*, %struct.ngx_shmtx_t, i8*, i8, i8*, i8* }
%struct.ngx_shmtx_sh_t = type { i32, i32 }
%struct.ngx_slab_page_s = type { i32, %struct.ngx_slab_page_s*, i32 }
%struct.ngx_shmtx_t = type { i32*, i32*, i32, %union.sem_t, i32 }
%union.sem_t = type { i32, [12 x i8] }
%struct.ngx_http_request_s = type { i32, %struct.ngx_connection_s*, i8**, i8**, i8**, i8**, void (%struct.ngx_http_request_s*)*, void (%struct.ngx_http_request_s*)*, %struct.ngx_http_cache_s*, %struct.ngx_http_upstream_s*, %struct.ngx_array_s*, %struct.ngx_pool_s*, %struct.ngx_buf_s*, %struct.ngx_http_headers_in_t, %struct.ngx_http_headers_out_t, %struct.ngx_http_request_body_t*, i32, i32, i32, i32, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_chain_s*, %struct.ngx_http_request_s*, %struct.ngx_http_request_s*, %struct.ngx_http_postponed_request_s*, %struct.ngx_http_post_subrequest_t*, %struct.ngx_http_posted_request_s*, %struct.ngx_http_virtual_names_t*, i32, {}*, i32, %struct.ngx_variable_value_t*, i32, i32*, i8*, i32, i32, i64, i32, %struct.ngx_http_connection_t*, i8* (%struct.ngx_http_request_s*, %struct.ngx_http_request_s*, i8*, i32)*, %struct.ngx_http_cleanup_s*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, [32 x i8], i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, [2 x i8], [2 x i8] }
%struct.ngx_http_cache_s = type { %struct.ngx_file_s, %struct.ngx_array_s, i32, [16 x i8], i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, %struct.ngx_buf_s*, %struct.ngx_http_file_cache_s*, %struct.ngx_http_file_cache_node_t*, i32, i32, %struct.ngx_event_s, i8 }
%struct.ngx_http_file_cache_s = type { %struct.ngx_http_file_cache_sh_t*, %struct.ngx_slab_pool_t*, %struct.ngx_path_t*, i64, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_shm_zone_s* }
%struct.ngx_http_file_cache_sh_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, i32, i32, i64 }
%struct.ngx_path_t = type { %struct.ngx_str_t, i32, [3 x i32], i32 (i8*)*, void (i8*)*, i8*, i8*, i32 }
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

@ngx_http_limit_conn_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* @ngx_http_limit_conn_init, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_limit_conn_create_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_limit_conn_merge_conf }, align 4
@ngx_http_limit_conn_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_limit_conn_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([5 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_limit_conn_commands to [5 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [16 x i8] c"limit_conn_zone\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"limit_zone\00", align 1
@.str2 = private unnamed_addr constant [11 x i8] c"limit_conn\00", align 1
@.str3 = private unnamed_addr constant [21 x i8] c"limit_conn_log_level\00", align 1
@ngx_http_limit_conn_log_levels = internal global [5 x %struct.ngx_conf_enum_t] [%struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0) }, i32 7 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str5, i32 0, i32 0) }, i32 6 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0) }, i32 5 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0) }, i32 4 }, %struct.ngx_conf_enum_t zeroinitializer], align 4
@ngx_http_limit_conn_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0) }, i32 33554436, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_conn_zone, i32 0, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0) }, i32 33554440, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_zone, i32 0, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str2, i32 0, i32 0) }, i32 234881028, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_conn, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 20, i8* getelementptr inbounds ([21 x i8]* @.str3, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_enum_slot, i32 8, i32 20, i8* bitcast ([5 x %struct.ngx_conf_enum_t]* @ngx_http_limit_conn_log_levels to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str4 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str8 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str9 = private unnamed_addr constant [35 x i8] c"invalid number of connections \22%V\22\00", align 1
@.str10 = private unnamed_addr constant [36 x i8] c"connection limit must be less 65536\00", align 1
@ngx_conf_deprecated_limit_zone = internal global %struct.ngx_conf_deprecated_t { i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_conf_deprecated, i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8]* @.str, i32 0, i32 0) }, align 4
@.str11 = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"invalid size of limit_zone \22%V\22\00", align 1
@ngx_pagesize = external global i32
@.str13 = private unnamed_addr constant [29 x i8] c"limit_zone \22%V\22 is too small\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"limit_zone \22%V\22 is already bound to variable \22%V\22\00", align 1
@.str15 = private unnamed_addr constant [87 x i8] c"limit_conn_zone \22%V\22 uses the \22%V\22 variable while previously it used the \22%V\22 variable\00", align 1
@0 = internal unnamed_addr constant [2 x i8] c"+\00"
@.str16 = private unnamed_addr constant [27 x i8] c" in limit_conn_zone \22%V\22%Z\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"zone=\00", align 1
@.str18 = private unnamed_addr constant [23 x i8] c"invalid zone size \22%V\22\00", align 1
@1 = internal unnamed_addr constant [2 x i8] c"*\00"
@.str19 = private unnamed_addr constant [23 x i8] c"zone \22%V\22 is too small\00", align 1
@.str20 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str21 = private unnamed_addr constant [32 x i8] c"\22%V\22 must have \22zone\22 parameter\00", align 1
@.str22 = private unnamed_addr constant [35 x i8] c"no variable is defined for %V \22%V\22\00", align 1
@2 = internal unnamed_addr constant [8 x i8] c"ssize_t\00"
@3 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@.str23 = private unnamed_addr constant [42 x i8] c"%V \22%V\22 is already bound to variable \22%V\22\00", align 1
@ngx_http_core_module = external global %struct.ngx_module_s
@4 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@5 = internal unnamed_addr constant [4 x i8] c"int\00"
@6 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@7 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@.str24 = private unnamed_addr constant [60 x i8] c"the value of the \22%V\22 variable is more than 255 bytes: \22%v\22\00", align 1
@.str25 = private unnamed_addr constant [34 x i8] c"limiting connections by zone \22%V\22\00", align 1
@8 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@9 = internal unnamed_addr constant [46 x i8] c"src/http/modules/ngx_http_limit_conn_module.c\00"
@10 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@11 = internal unnamed_addr constant [21 x i8] c"src/core/ngx_crc32.h\00"
@ngx_crc32_table_short = external global i32*

define internal i8* @ngx_http_limit_conn_zone(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* %cmd, i8* nocapture %conf) nounwind {
entry:
  %name = alloca %struct.ngx_str_t, align 4
  %s = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !639), !dbg !1904
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !640), !dbg !1904
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !641), !dbg !1904
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %name}, metadata !646), !dbg !1905
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %s}, metadata !647), !dbg !1906
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1907
  %0 = load %struct.ngx_array_s** %args, align 4, !dbg !1907, !tbaa !1908
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !1907
  %1 = load i8** %elts, align 4, !dbg !1907, !tbaa !1908
  %2 = bitcast i8* %1 to %struct.ngx_str_t*, !dbg !1907
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %2}, i64 0, metadata !645), !dbg !1907
  call void @llvm.dbg.value(metadata !1911, i64 0, metadata !650), !dbg !1912
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !644), !dbg !1913
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !1914
  store i32 0, i32* %len, align 4, !dbg !1914, !tbaa !1915
  call void @llvm.dbg.value(metadata !1916, i64 0, metadata !648), !dbg !1917
  %nelts209 = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 1, !dbg !1917
  %3 = load i32* %nelts209, align 4, !dbg !1917, !tbaa !1915
  %cmp210 = icmp ugt i32 %3, 1, !dbg !1917
  br i1 %cmp210, label %for.body.lr.ph, label %cont110, !dbg !1917

for.body.lr.ph:                                   ; preds = %entry
  %data9 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !1919
  %data24 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 1, !dbg !1922
  %len37 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 0, !dbg !1923
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1924
  br label %for.body, !dbg !1917

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %ctx.0213 = phi %struct.ngx_http_limit_conn_ctx_t* [ null, %for.body.lr.ph ], [ %ctx.1, %for.cond.backedge ]
  %i.0212 = phi i32 [ 1, %for.body.lr.ph ], [ %32, %for.cond.backedge ]
  %size.0211 = phi i32 [ 0, %for.body.lr.ph ], [ %size.1, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_str_t* %2, i32 %i.0212, !dbg !1926
  %data = getelementptr inbounds %struct.ngx_str_t* %2, i32 %i.0212, i32 1, !dbg !1926
  %4 = load i8** %data, align 4, !dbg !1926, !tbaa !1908
  %call = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i32 5) nounwind readonly, !dbg !1926
  %cmp6 = icmp eq i32 %call, 0, !dbg !1926
  br i1 %cmp6, label %if.then, label %if.end63, !dbg !1926

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %4, i32 5, !dbg !1919
  store i8* %add.ptr, i8** %data9, align 4, !dbg !1919, !tbaa !1908
  %call11 = call i8* @strchr(i8* %add.ptr, i32 58) nounwind, !dbg !1927
  call void @llvm.dbg.value(metadata !{i8* %call11}, i64 0, metadata !642), !dbg !1927
  %cmp12 = icmp eq i8* %call11, null, !dbg !1928
  br i1 %cmp12, label %cont15, label %if.end, !dbg !1928

cont15:                                           ; preds = %if.then
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1929
  br label %return, !dbg !1931

if.end:                                           ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %call11 to i32, !dbg !1932
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i32, !dbg !1932
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1932
  %5 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1932
  br i1 %5, label %cont21, label %ioc_bb20, !dbg !1932

ioc_bb20:                                         ; preds = %if.end
  %6 = sext i32 %sub.ptr.sub to i64, !dbg !1932
  call void @__ioc_report_conversion(i32 325, i32 18, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !1932
  br label %cont21, !dbg !1932

cont21:                                           ; preds = %ioc_bb20, %if.end
  store i32 %sub.ptr.sub, i32* %len, align 4, !dbg !1932, !tbaa !1915
  %add.ptr23 = getelementptr inbounds i8* %call11, i32 1, !dbg !1922
  store i8* %add.ptr23, i8** %data24, align 4, !dbg !1922, !tbaa !1908
  %7 = load i8** %data, align 4, !dbg !1923, !tbaa !1908
  %len28 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !1923
  %8 = load i32* %len28, align 4, !dbg !1923, !tbaa !1915
  %add.ptr29 = getelementptr inbounds i8* %7, i32 %8, !dbg !1923
  %sub.ptr.lhs.cast31 = ptrtoint i8* %add.ptr29 to i32, !dbg !1923
  %sub.ptr.rhs.cast32 = ptrtoint i8* %add.ptr23 to i32, !dbg !1923
  %sub.ptr.sub33 = sub i32 %sub.ptr.lhs.cast31, %sub.ptr.rhs.cast32, !dbg !1923
  %9 = icmp sgt i32 %sub.ptr.sub33, -1, !dbg !1923
  br i1 %9, label %cont36, label %ioc_bb35, !dbg !1923

ioc_bb35:                                         ; preds = %cont21
  %10 = sext i32 %sub.ptr.sub33 to i64, !dbg !1923
  call void @__ioc_report_conversion(i32 327, i32 15, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %10, i8 1) nounwind, !dbg !1923
  br label %cont36, !dbg !1923

cont36:                                           ; preds = %ioc_bb35, %cont21
  store i32 %sub.ptr.sub33, i32* %len37, align 4, !dbg !1923, !tbaa !1915
  %call38 = call i32 @ngx_parse_size(%struct.ngx_str_t* %s) nounwind, !dbg !1933
  call void @llvm.dbg.value(metadata !{i32 %call38}, i64 0, metadata !644), !dbg !1933
  %cmp41 = icmp eq i32 %call38, -1, !dbg !1934
  br i1 %cmp41, label %cont44, label %cont50, !dbg !1934

cont44:                                           ; preds = %cont36
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str18, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1935
  br label %return, !dbg !1937

cont50:                                           ; preds = %cont36
  %11 = load i32* @ngx_pagesize, align 4, !dbg !1938, !tbaa !1915
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 8), !dbg !1938
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !1938
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !1938
  br i1 %14, label %ioc_bb51, label %cont52, !dbg !1938

ioc_bb51:                                         ; preds = %cont50
  %15 = zext i32 %11 to i64, !dbg !1938
  call void @__ioc_report_mul_overflow(i32 333, i32 32, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 8, i64 %15, i8 5) nounwind, !dbg !1938
  br label %cont52, !dbg !1938

cont52:                                           ; preds = %cont50, %ioc_bb51
  %16 = icmp sgt i32 %13, -1, !dbg !1938
  br i1 %16, label %cont54, label %ioc_bb53, !dbg !1938

ioc_bb53:                                         ; preds = %cont52
  %17 = zext i32 %13 to i64, !dbg !1938
  call void @__ioc_report_conversion(i32 333, i32 29, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i64 %17, i8 0) nounwind, !dbg !1938
  br label %cont54, !dbg !1938

cont54:                                           ; preds = %ioc_bb53, %cont52
  %cmp55 = icmp slt i32 %call38, %13, !dbg !1938
  br i1 %cmp55, label %cont58, label %for.inc, !dbg !1938

cont58:                                           ; preds = %cont54
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str19, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1939
  br label %return, !dbg !1941

if.end63:                                         ; preds = %for.body
  %18 = load i8* %4, align 1, !dbg !1942, !tbaa !1909
  %cmp67 = icmp eq i8 %18, 36, !dbg !1942
  br i1 %cmp67, label %if.then69, label %cont97, !dbg !1942

if.then69:                                        ; preds = %if.end63
  %len71 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !1943
  %19 = load i32* %len71, align 4, !dbg !1943, !tbaa !1915
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %19, i32 1), !dbg !1943
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1943
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1943
  br i1 %22, label %ioc_bb72, label %cont73, !dbg !1943

ioc_bb72:                                         ; preds = %if.then69
  %23 = zext i32 %19 to i64, !dbg !1943
  call void @__ioc_report_sub_overflow(i32 340, i32 19, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i64 %23, i64 1, i8 5) nounwind, !dbg !1943
  %.pre220 = load i8** %data, align 4, !dbg !1944, !tbaa !1908
  br label %cont73, !dbg !1943

cont73:                                           ; preds = %if.then69, %ioc_bb72
  %24 = phi i8* [ %4, %if.then69 ], [ %.pre220, %ioc_bb72 ]
  store i32 %21, i32* %len71, align 4, !dbg !1943, !tbaa !1915
  %incdec.ptr = getelementptr inbounds i8* %24, i32 1, !dbg !1944
  store i8* %incdec.ptr, i8** %data, align 4, !dbg !1944, !tbaa !1908
  %25 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1924, !tbaa !1908
  %call76 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %25, i32 16) nounwind, !dbg !1924
  %26 = bitcast i8* %call76 to %struct.ngx_http_limit_conn_ctx_t*, !dbg !1924
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_conn_ctx_t* %26}, i64 0, metadata !650), !dbg !1924
  %cmp77 = icmp eq i8* %call76, null, !dbg !1945
  br i1 %cmp77, label %return, label %if.end82, !dbg !1945

if.end82:                                         ; preds = %cont73
  %call84 = call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1946
  %index = getelementptr inbounds i8* %call76, i32 4, !dbg !1946
  %27 = bitcast i8* %index to i32*, !dbg !1946
  store i32 %call84, i32* %27, align 4, !dbg !1946, !tbaa !1915
  %cmp88 = icmp eq i32 %call84, -1, !dbg !1947
  br i1 %cmp88, label %return, label %if.end93, !dbg !1947

if.end93:                                         ; preds = %if.end82
  %var = getelementptr inbounds i8* %call76, i32 8, !dbg !1948
  %28 = bitcast %struct.ngx_str_t* %arrayidx to i64*, !dbg !1948
  %29 = bitcast i8* %var to i64*, !dbg !1948
  %30 = load i64* %28, align 4, !dbg !1948
  store i64 %30, i64* %29, align 4, !dbg !1948
  br label %for.inc, !dbg !1949

cont97:                                           ; preds = %if.end63
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str20, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1950
  br label %return, !dbg !1951

for.inc:                                          ; preds = %cont54, %if.end93
  %size.1 = phi i32 [ %call38, %cont54 ], [ %size.0211, %if.end93 ]
  %ctx.1 = phi %struct.ngx_http_limit_conn_ctx_t* [ %ctx.0213, %cont54 ], [ %26, %if.end93 ]
  %31 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0212, i32 1), !dbg !1917
  %32 = extractvalue { i32, i1 } %31, 0, !dbg !1917
  %33 = extractvalue { i32, i1 } %31, 1, !dbg !1917
  br i1 %33, label %ioc_bb101, label %for.cond.backedge, !dbg !1917

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb101
  %34 = load %struct.ngx_array_s** %args, align 4, !dbg !1917, !tbaa !1908
  %nelts = getelementptr inbounds %struct.ngx_array_s* %34, i32 0, i32 1, !dbg !1917
  %35 = load i32* %nelts, align 4, !dbg !1917, !tbaa !1915
  %cmp = icmp ult i32 %32, %35, !dbg !1917
  br i1 %cmp, label %for.body, label %cont105, !dbg !1917

ioc_bb101:                                        ; preds = %for.inc
  %36 = zext i32 %i.0212 to i64, !dbg !1917
  call void @__ioc_report_add_overflow(i32 317, i32 41, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %36, i64 1, i8 5) nounwind, !dbg !1917
  br label %for.cond.backedge, !dbg !1917

cont105:                                          ; preds = %for.cond.backedge
  %.pre = load i32* %len, align 4, !dbg !1952, !tbaa !1915
  %phitmp = icmp eq i32 %.pre, 0, !dbg !1917
  br i1 %phitmp, label %cont110, label %if.end114, !dbg !1952

cont110:                                          ; preds = %entry, %cont105
  %name111 = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, !dbg !1953
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([32 x i8]* @.str21, i32 0, i32 0), %struct.ngx_str_t* %name111) nounwind, !dbg !1953
  br label %return, !dbg !1955

if.end114:                                        ; preds = %cont105
  %cmp115 = icmp eq %struct.ngx_http_limit_conn_ctx_t* %ctx.1, null, !dbg !1956
  br i1 %cmp115, label %cont119, label %if.end123, !dbg !1956

cont119:                                          ; preds = %if.end114
  %name120 = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, !dbg !1957
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([35 x i8]* @.str22, i32 0, i32 0), %struct.ngx_str_t* %name120, %struct.ngx_str_t* %name) nounwind, !dbg !1957
  br label %return, !dbg !1959

if.end123:                                        ; preds = %if.end114
  %37 = icmp sgt i32 %size.1, -1, !dbg !1960
  br i1 %37, label %cont126, label %ioc_bb125, !dbg !1960

ioc_bb125:                                        ; preds = %if.end123
  %38 = sext i32 %size.1 to i64, !dbg !1960
  call void @__ioc_report_conversion(i32 364, i32 45, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %38, i8 1) nounwind, !dbg !1960
  br label %cont126, !dbg !1960

cont126:                                          ; preds = %ioc_bb125, %if.end123
  %call127 = call %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %name, i32 %size.1, i8* bitcast (%struct.ngx_module_s* @ngx_http_limit_conn_module to i8*)) nounwind, !dbg !1960
  call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %call127}, i64 0, metadata !649), !dbg !1960
  %cmp128 = icmp eq %struct.ngx_shm_zone_s* %call127, null, !dbg !1961
  br i1 %cmp128, label %return, label %if.end133, !dbg !1961

if.end133:                                        ; preds = %cont126
  %data134 = getelementptr inbounds %struct.ngx_shm_zone_s* %call127, i32 0, i32 0, !dbg !1962
  %39 = load i8** %data134, align 4, !dbg !1962, !tbaa !1908
  %tobool = icmp eq i8* %39, null, !dbg !1962
  br i1 %tobool, label %if.end143, label %cont138, !dbg !1962

cont138:                                          ; preds = %if.end133
  %name139 = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, !dbg !1963
  %var140 = getelementptr inbounds i8* %39, i32 8, !dbg !1963
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([42 x i8]* @.str23, i32 0, i32 0), %struct.ngx_str_t* %name139, %struct.ngx_str_t* %name, i8* %var140) nounwind, !dbg !1963
  br label %return, !dbg !1965

if.end143:                                        ; preds = %if.end133
  %init = getelementptr inbounds %struct.ngx_shm_zone_s* %call127, i32 0, i32 2, !dbg !1966
  store i32 (%struct.ngx_shm_zone_s*, i8*)* @ngx_http_limit_conn_init_zone, i32 (%struct.ngx_shm_zone_s*, i8*)** %init, align 4, !dbg !1966, !tbaa !1908
  %40 = bitcast %struct.ngx_http_limit_conn_ctx_t* %ctx.1 to i8*, !dbg !1967
  store i8* %40, i8** %data134, align 4, !dbg !1967, !tbaa !1908
  br label %return, !dbg !1968

return:                                           ; preds = %if.end82, %cont73, %cont126, %if.end143, %cont138, %cont119, %cont110, %cont97, %cont58, %cont44, %cont15
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont15 ], [ inttoptr (i32 -1 to i8*), %cont44 ], [ inttoptr (i32 -1 to i8*), %cont58 ], [ inttoptr (i32 -1 to i8*), %cont97 ], [ inttoptr (i32 -1 to i8*), %cont110 ], [ inttoptr (i32 -1 to i8*), %cont119 ], [ inttoptr (i32 -1 to i8*), %cont138 ], [ null, %if.end143 ], [ inttoptr (i32 -1 to i8*), %cont126 ], [ inttoptr (i32 -1 to i8*), %cont73 ], [ inttoptr (i32 -1 to i8*), %if.end82 ]
  ret i8* %retval.0, !dbg !1969
}

define internal i8* @ngx_http_limit_zone(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !521), !dbg !1970
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !522), !dbg !1970
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !523), !dbg !1970
  %call = tail call i8* @ngx_conf_deprecated(%struct.ngx_conf_s* %cf, i8* bitcast (%struct.ngx_conf_deprecated_t* @ngx_conf_deprecated_limit_zone to i8*), i8* null) nounwind, !dbg !1971
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1972
  %0 = load %struct.ngx_array_s** %args, align 4, !dbg !1972, !tbaa !1908
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !1972
  %1 = load i8** %elts, align 4, !dbg !1972, !tbaa !1908
  %arrayidx = getelementptr inbounds i8* %1, i32 16, !dbg !1973
  %2 = bitcast i8* %arrayidx to %struct.ngx_str_t*, !dbg !1973
  %data = getelementptr inbounds i8* %1, i32 20, !dbg !1973
  %3 = bitcast i8* %data to i8**, !dbg !1973
  %4 = load i8** %3, align 4, !dbg !1973, !tbaa !1908
  %5 = load i8* %4, align 1, !dbg !1973, !tbaa !1909
  %cmp = icmp eq i8 %5, 36, !dbg !1973
  br i1 %cmp, label %if.end, label %cont, !dbg !1973

cont:                                             ; preds = %entry
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str11, i32 0, i32 0), i8* %arrayidx) nounwind, !dbg !1974
  br label %return, !dbg !1976

if.end:                                           ; preds = %entry
  %len = bitcast i8* %arrayidx to i32*, !dbg !1977
  %6 = load i32* %len, align 4, !dbg !1977, !tbaa !1915
  %7 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %6, i32 1), !dbg !1977
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !1977
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !1977
  br i1 %9, label %ioc_bb7, label %cont8, !dbg !1977

ioc_bb7:                                          ; preds = %if.end
  %10 = zext i32 %6 to i64, !dbg !1977
  tail call void @__ioc_report_sub_overflow(i32 390, i32 15, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind, !dbg !1977
  %.pre = load i8** %3, align 4, !dbg !1978, !tbaa !1908
  br label %cont8, !dbg !1977

cont8:                                            ; preds = %if.end, %ioc_bb7
  %11 = phi i8* [ %4, %if.end ], [ %.pre, %ioc_bb7 ]
  store i32 %8, i32* %len, align 4, !dbg !1977, !tbaa !1915
  %incdec.ptr = getelementptr inbounds i8* %11, i32 1, !dbg !1978
  store i8* %incdec.ptr, i8** %3, align 4, !dbg !1978, !tbaa !1908
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1979
  %12 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1979, !tbaa !1908
  %call11 = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %12, i32 16) nounwind, !dbg !1979
  %cmp12 = icmp eq i8* %call11, null, !dbg !1980
  br i1 %cmp12, label %return, label %if.end17, !dbg !1980

if.end17:                                         ; preds = %cont8
  %call19 = tail call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %2) nounwind, !dbg !1981
  %index = getelementptr inbounds i8* %call11, i32 4, !dbg !1981
  %13 = bitcast i8* %index to i32*, !dbg !1981
  store i32 %call19, i32* %13, align 4, !dbg !1981, !tbaa !1915
  %cmp23 = icmp eq i32 %call19, -1, !dbg !1982
  br i1 %cmp23, label %return, label %if.end28, !dbg !1982

if.end28:                                         ; preds = %if.end17
  %var = getelementptr inbounds i8* %call11, i32 8, !dbg !1983
  %14 = bitcast i8* %arrayidx to i64*, !dbg !1983
  %15 = bitcast i8* %var to i64*, !dbg !1983
  %16 = load i64* %14, align 4, !dbg !1983
  store i64 %16, i64* %15, align 4, !dbg !1983
  %arrayidx30 = getelementptr inbounds i8* %1, i32 24, !dbg !1984
  %17 = bitcast i8* %arrayidx30 to %struct.ngx_str_t*, !dbg !1984
  %call31 = tail call i32 @ngx_parse_size(%struct.ngx_str_t* %17) nounwind, !dbg !1984
  tail call void @llvm.dbg.value(metadata !{i32 %call31}, i64 0, metadata !524), !dbg !1984
  %cmp34 = icmp eq i32 %call31, -1, !dbg !1985
  br i1 %cmp34, label %cont38, label %cont44, !dbg !1985

cont38:                                           ; preds = %if.end28
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([32 x i8]* @.str12, i32 0, i32 0), i8* %arrayidx30) nounwind, !dbg !1986
  br label %return, !dbg !1988

cont44:                                           ; preds = %if.end28
  %18 = load i32* @ngx_pagesize, align 4, !dbg !1989, !tbaa !1915
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 8), !dbg !1989
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !1989
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !1989
  br i1 %21, label %ioc_bb45, label %cont46, !dbg !1989

ioc_bb45:                                         ; preds = %cont44
  %22 = zext i32 %18 to i64, !dbg !1989
  tail call void @__ioc_report_mul_overflow(i32 406, i32 27, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 8, i64 %22, i8 5) nounwind, !dbg !1989
  br label %cont46, !dbg !1989

cont46:                                           ; preds = %cont44, %ioc_bb45
  %23 = icmp sgt i32 %20, -1, !dbg !1989
  br i1 %23, label %cont48, label %ioc_bb47, !dbg !1989

ioc_bb47:                                         ; preds = %cont46
  %24 = zext i32 %20 to i64, !dbg !1989
  tail call void @__ioc_report_conversion(i32 406, i32 24, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i64 %24, i8 0) nounwind, !dbg !1989
  br label %cont48, !dbg !1989

cont48:                                           ; preds = %ioc_bb47, %cont46
  %cmp49 = icmp slt i32 %call31, %20, !dbg !1989
  %arrayidx54 = getelementptr inbounds i8* %1, i32 8, !dbg !1990
  br i1 %cmp49, label %cont53, label %if.end57, !dbg !1989

cont53:                                           ; preds = %cont48
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([29 x i8]* @.str13, i32 0, i32 0), i8* %arrayidx54) nounwind, !dbg !1990
  br label %return, !dbg !1992

if.end57:                                         ; preds = %cont48
  %25 = bitcast i8* %arrayidx54 to %struct.ngx_str_t*, !dbg !1993
  %26 = icmp sgt i32 %call31, -1, !dbg !1993
  br i1 %26, label %cont60, label %ioc_bb59, !dbg !1993

ioc_bb59:                                         ; preds = %if.end57
  %27 = sext i32 %call31 to i64, !dbg !1993
  tail call void @__ioc_report_conversion(i32 410, i32 49, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %27, i8 1) nounwind, !dbg !1993
  br label %cont60, !dbg !1993

cont60:                                           ; preds = %ioc_bb59, %if.end57
  %call61 = tail call %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %25, i32 %call31, i8* bitcast (%struct.ngx_module_s* @ngx_http_limit_conn_module to i8*)) nounwind, !dbg !1993
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %call61}, i64 0, metadata !527), !dbg !1993
  %cmp62 = icmp eq %struct.ngx_shm_zone_s* %call61, null, !dbg !1994
  br i1 %cmp62, label %return, label %if.end67, !dbg !1994

if.end67:                                         ; preds = %cont60
  %data68 = getelementptr inbounds %struct.ngx_shm_zone_s* %call61, i32 0, i32 0, !dbg !1995
  %28 = load i8** %data68, align 4, !dbg !1995, !tbaa !1908
  %tobool = icmp eq i8* %28, null, !dbg !1995
  br i1 %tobool, label %if.end77, label %cont72, !dbg !1995

cont72:                                           ; preds = %if.end67
  %var74 = getelementptr inbounds i8* %28, i32 8, !dbg !1996
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([50 x i8]* @.str14, i32 0, i32 0), i8* %arrayidx54, i8* %var74) nounwind, !dbg !1996
  br label %return, !dbg !1998

if.end77:                                         ; preds = %if.end67
  %init = getelementptr inbounds %struct.ngx_shm_zone_s* %call61, i32 0, i32 2, !dbg !1999
  store i32 (%struct.ngx_shm_zone_s*, i8*)* @ngx_http_limit_conn_init_zone, i32 (%struct.ngx_shm_zone_s*, i8*)** %init, align 4, !dbg !1999, !tbaa !1908
  store i8* %call11, i8** %data68, align 4, !dbg !2000, !tbaa !1908
  br label %return, !dbg !2001

return:                                           ; preds = %cont60, %if.end17, %cont8, %if.end77, %cont72, %cont53, %cont38, %cont
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont ], [ inttoptr (i32 -1 to i8*), %cont38 ], [ inttoptr (i32 -1 to i8*), %cont53 ], [ inttoptr (i32 -1 to i8*), %cont72 ], [ null, %if.end77 ], [ inttoptr (i32 -1 to i8*), %cont8 ], [ inttoptr (i32 -1 to i8*), %if.end17 ], [ inttoptr (i32 -1 to i8*), %cont60 ]
  ret i8* %retval.0, !dbg !2002
}

define internal i8* @ngx_http_limit_conn(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !2003
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !2003
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !2003
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2004
  %0 = load %struct.ngx_array_s** %args, align 4, !dbg !2004, !tbaa !1908
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !2004
  %1 = load i8** %elts, align 4, !dbg !2004, !tbaa !1908
  %arrayidx = getelementptr inbounds i8* %1, i32 8, !dbg !2005
  %2 = bitcast i8* %arrayidx to %struct.ngx_str_t*, !dbg !2005
  %call = tail call %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %2, i32 0, i8* bitcast (%struct.ngx_module_s* @ngx_http_limit_conn_module to i8*)) nounwind, !dbg !2005
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %call}, i64 0, metadata !462), !dbg !2005
  %cmp = icmp eq %struct.ngx_shm_zone_s* %call, null, !dbg !2006
  br i1 %cmp, label %return, label %if.end, !dbg !2006

if.end:                                           ; preds = %entry
  %limits3 = bitcast i8* %conf to %struct.ngx_array_s*, !dbg !2007
  %elts4 = bitcast i8* %conf to i8**, !dbg !2007
  %3 = load i8** %elts4, align 4, !dbg !2007, !tbaa !1908
  %4 = bitcast i8* %3 to %struct.ngx_http_limit_conn_limit_t*, !dbg !2007
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_conn_limit_t* %4}, i64 0, metadata !504), !dbg !2007
  %cmp5 = icmp eq i8* %3, null, !dbg !2008
  br i1 %cmp5, label %cont9, label %if.end.for.cond.preheader_crit_edge, !dbg !2008

if.end.for.cond.preheader_crit_edge:              ; preds = %if.end
  %nelts.pre = getelementptr inbounds i8* %conf, i32 4, !dbg !2009
  %.pre71 = bitcast i8* %nelts.pre to i32*, !dbg !2009
  br label %for.cond.preheader, !dbg !2008

cont9:                                            ; preds = %if.end
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2011
  %5 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2011, !tbaa !1908
  tail call void @llvm.dbg.value(metadata !1916, i64 0, metadata !2013) nounwind, !dbg !2014
  tail call void @llvm.dbg.value(metadata !2015, i64 0, metadata !2016) nounwind, !dbg !2014
  %nelts.i = getelementptr inbounds i8* %conf, i32 4, !dbg !2017
  %6 = bitcast i8* %nelts.i to i32*, !dbg !2017
  store i32 0, i32* %6, align 4, !dbg !2017, !tbaa !1915
  %size1.i = getelementptr inbounds i8* %conf, i32 8, !dbg !2019
  %7 = bitcast i8* %size1.i to i32*, !dbg !2019
  store i32 8, i32* %7, align 4, !dbg !2019, !tbaa !1915
  %nalloc.i = getelementptr inbounds i8* %conf, i32 12, !dbg !2020
  %8 = bitcast i8* %nalloc.i to i32*, !dbg !2020
  store i32 1, i32* %8, align 4, !dbg !2020, !tbaa !1915
  %pool2.i = getelementptr inbounds i8* %conf, i32 16, !dbg !2021
  %9 = bitcast i8* %pool2.i to %struct.ngx_pool_s**, !dbg !2021
  store %struct.ngx_pool_s* %5, %struct.ngx_pool_s** %9, align 4, !dbg !2021, !tbaa !1908
  %call.i = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %5, i32 8) nounwind, !dbg !2022
  store i8* %call.i, i8** %elts4, align 4, !dbg !2022, !tbaa !1908
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2023
  br i1 %cmp.i, label %return, label %for.cond.preheader, !dbg !2011

for.cond.preheader:                               ; preds = %if.end.for.cond.preheader_crit_edge, %cont9
  %.pre-phi = phi i32* [ %.pre71, %if.end.for.cond.preheader_crit_edge ], [ %6, %cont9 ], !dbg !2009
  %10 = load i32* %.pre-phi, align 4, !dbg !2009, !tbaa !1915
  %cmp2069 = icmp eq i32 %10, 0, !dbg !2009
  br i1 %cmp2069, label %for.end, label %for.body, !dbg !2009

for.body:                                         ; preds = %for.cond.preheader, %for.cond.backedge
  %11 = phi i32 [ %16, %for.cond.backedge ], [ %10, %for.cond.preheader ]
  %i.070 = phi i32 [ %14, %for.cond.backedge ], [ 0, %for.cond.preheader ]
  %shm_zone22 = getelementptr inbounds %struct.ngx_http_limit_conn_limit_t* %4, i32 %i.070, i32 0, !dbg !2024
  %12 = load %struct.ngx_shm_zone_s** %shm_zone22, align 4, !dbg !2024, !tbaa !1908
  %cmp23 = icmp eq %struct.ngx_shm_zone_s* %call, %12, !dbg !2024
  br i1 %cmp23, label %return, label %for.inc, !dbg !2024

for.inc:                                          ; preds = %for.body
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.070, i32 1), !dbg !2009
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !2009
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !2009
  br i1 %15, label %ioc_bb26, label %for.cond.backedge, !dbg !2009

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb26
  %16 = phi i32 [ %11, %for.inc ], [ %.pre, %ioc_bb26 ], !dbg !2009
  %cmp20 = icmp ult i32 %14, %16, !dbg !2009
  br i1 %cmp20, label %for.body, label %for.end, !dbg !2009

ioc_bb26:                                         ; preds = %for.inc
  %17 = zext i32 %i.070 to i64, !dbg !2009
  tail call void @__ioc_report_add_overflow(i32 444, i32 42, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %17, i64 1, i8 5) nounwind, !dbg !2009
  %.pre = load i32* %.pre-phi, align 4, !dbg !2009, !tbaa !1915
  br label %for.cond.backedge, !dbg !2009

for.end:                                          ; preds = %for.cond.backedge, %for.cond.preheader
  %arrayidx28 = getelementptr inbounds i8* %1, i32 16, !dbg !2026
  %data = getelementptr inbounds i8* %1, i32 20, !dbg !2026
  %18 = bitcast i8* %data to i8**, !dbg !2026
  %19 = load i8** %18, align 4, !dbg !2026, !tbaa !1908
  %len = bitcast i8* %arrayidx28 to i32*, !dbg !2026
  %20 = load i32* %len, align 4, !dbg !2026, !tbaa !1915
  %call30 = tail call i32 @ngx_atoi(i8* %19, i32 %20) nounwind, !dbg !2026
  tail call void @llvm.dbg.value(metadata !{i32 %call30}, i64 0, metadata !507), !dbg !2026
  %cmp31 = icmp slt i32 %call30, 1, !dbg !2027
  br i1 %cmp31, label %cont34, label %if.end38, !dbg !2027

cont34:                                           ; preds = %for.end
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([35 x i8]* @.str9, i32 0, i32 0), i8* %arrayidx28) nounwind, !dbg !2028
  br label %return, !dbg !2030

if.end38:                                         ; preds = %for.end
  %cmp39 = icmp sgt i32 %call30, 65535, !dbg !2031
  br i1 %cmp39, label %cont42, label %cont49, !dbg !2031

cont42:                                           ; preds = %if.end38
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([36 x i8]* @.str10, i32 0, i32 0)) nounwind, !dbg !2032
  br label %return, !dbg !2034

cont49:                                           ; preds = %if.end38
  %call47 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %limits3) nounwind, !dbg !2035
  %conn = getelementptr inbounds i8* %call47, i32 4, !dbg !2036
  %21 = bitcast i8* %conn to i32*, !dbg !2036
  store i32 %call30, i32* %21, align 4, !dbg !2036, !tbaa !1915
  %shm_zone50 = bitcast i8* %call47 to %struct.ngx_shm_zone_s**, !dbg !2037
  store %struct.ngx_shm_zone_s* %call, %struct.ngx_shm_zone_s** %shm_zone50, align 4, !dbg !2037, !tbaa !1908
  br label %return, !dbg !2038

return:                                           ; preds = %for.body, %cont9, %entry, %cont49, %cont42, %cont34
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont34 ], [ inttoptr (i32 -1 to i8*), %cont42 ], [ null, %cont49 ], [ inttoptr (i32 -1 to i8*), %entry ], [ inttoptr (i32 -1 to i8*), %cont9 ], [ getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0), %for.body ]
  ret i8* %retval.0, !dbg !2039
}

declare i8* @ngx_conf_set_enum_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32, i8*)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @ngx_atoi(i8*, i32)

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_conf_deprecated(%struct.ngx_conf_s*, i8*, i8*)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_http_get_variable_index(%struct.ngx_conf_s*, %struct.ngx_str_t*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @ngx_parse_size(%struct.ngx_str_t*)

define internal i32 @ngx_http_limit_conn_init_zone(%struct.ngx_shm_zone_s* %shm_zone, i8* %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %shm_zone}, i64 0, metadata !550), !dbg !2040
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !551), !dbg !2040
  %data1 = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 0, !dbg !2041
  %0 = load i8** %data1, align 4, !dbg !2041, !tbaa !1908
  %tobool = icmp eq i8* %data, null, !dbg !2042
  br i1 %tobool, label %if.end19, label %if.then, !dbg !2042

if.then:                                          ; preds = %entry
  %var = getelementptr inbounds i8* %0, i32 8, !dbg !2043
  %data2 = getelementptr inbounds i8* %0, i32 12, !dbg !2043
  %1 = bitcast i8* %data2 to i8**, !dbg !2043
  %2 = load i8** %1, align 4, !dbg !2043, !tbaa !1908
  %var3 = getelementptr inbounds i8* %data, i32 8, !dbg !2043
  %data4 = getelementptr inbounds i8* %data, i32 12, !dbg !2043
  %3 = bitcast i8* %data4 to i8**, !dbg !2043
  %4 = load i8** %3, align 4, !dbg !2043, !tbaa !1908
  %call = tail call i32 @strcmp(i8* %2, i8* %4) nounwind, !dbg !2043
  %cmp = icmp eq i32 %call, 0, !dbg !2043
  br i1 %cmp, label %if.end17, label %if.then5, !dbg !2043

if.then5:                                         ; preds = %if.then
  %log = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 3, !dbg !2044
  %5 = load %struct.ngx_log_s** %log, align 4, !dbg !2044, !tbaa !1908
  %log_level = getelementptr inbounds %struct.ngx_log_s* %5, i32 0, i32 0, !dbg !2044
  %6 = load i32* %log_level, align 4, !dbg !2044, !tbaa !1915
  %cmp6 = icmp eq i32 %6, 0, !dbg !2044
  br i1 %cmp6, label %return, label %cont9, !dbg !2044

cont9:                                            ; preds = %if.then5
  %name = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 2, !dbg !2046
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %5, i32 0, i8* getelementptr inbounds ([87 x i8]* @.str15, i32 0, i32 0), %struct.ngx_str_t* %name, i8* %var, i8* %var3) nounwind, !dbg !2046
  br label %return, !dbg !2046

if.end17:                                         ; preds = %if.then
  %rbtree = bitcast i8* %data to %struct.ngx_rbtree_s**, !dbg !2047
  %7 = load %struct.ngx_rbtree_s** %rbtree, align 4, !dbg !2047, !tbaa !1908
  %rbtree18 = bitcast i8* %0 to %struct.ngx_rbtree_s**, !dbg !2047
  store %struct.ngx_rbtree_s* %7, %struct.ngx_rbtree_s** %rbtree18, align 4, !dbg !2047, !tbaa !1908
  br label %return, !dbg !2048

if.end19:                                         ; preds = %entry
  %addr = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 0, !dbg !2049
  %8 = load i8** %addr, align 4, !dbg !2049, !tbaa !1908
  %9 = bitcast i8* %8 to %struct.ngx_slab_pool_t*, !dbg !2049
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_slab_pool_t* %9}, i64 0, metadata !555), !dbg !2049
  %exists = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 4, !dbg !2050
  %10 = load i32* %exists, align 4, !dbg !2050, !tbaa !1915
  %tobool22 = icmp eq i32 %10, 0, !dbg !2050
  br i1 %tobool22, label %if.end26, label %if.then23, !dbg !2050

if.then23:                                        ; preds = %if.end19
  %data24 = getelementptr inbounds i8* %8, i32 80, !dbg !2051
  %11 = bitcast i8* %data24 to i8**, !dbg !2051
  %12 = load i8** %11, align 4, !dbg !2051, !tbaa !1908
  %13 = bitcast i8* %12 to %struct.ngx_rbtree_s*, !dbg !2051
  %rbtree25 = bitcast i8* %0 to %struct.ngx_rbtree_s**, !dbg !2051
  store %struct.ngx_rbtree_s* %13, %struct.ngx_rbtree_s** %rbtree25, align 4, !dbg !2051, !tbaa !1908
  br label %return, !dbg !2053

if.end26:                                         ; preds = %if.end19
  %call27 = tail call i8* @ngx_slab_alloc(%struct.ngx_slab_pool_t* %9, i32 12) nounwind, !dbg !2054
  %14 = bitcast i8* %call27 to %struct.ngx_rbtree_s*, !dbg !2054
  %rbtree28 = bitcast i8* %0 to %struct.ngx_rbtree_s**, !dbg !2054
  store %struct.ngx_rbtree_s* %14, %struct.ngx_rbtree_s** %rbtree28, align 4, !dbg !2054, !tbaa !1908
  %cmp30 = icmp eq i8* %call27, null, !dbg !2055
  br i1 %cmp30, label %return, label %if.end34, !dbg !2055

if.end34:                                         ; preds = %if.end26
  %data36 = getelementptr inbounds i8* %8, i32 80, !dbg !2056
  %15 = bitcast i8* %data36 to i8**, !dbg !2056
  store i8* %call27, i8** %15, align 4, !dbg !2056, !tbaa !1908
  %call37 = tail call i8* @ngx_slab_alloc(%struct.ngx_slab_pool_t* %9, i32 20) nounwind, !dbg !2057
  %16 = bitcast i8* %call37 to %struct.ngx_rbtree_node_s*, !dbg !2057
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %16}, i64 0, metadata !606), !dbg !2057
  %cmp38 = icmp eq i8* %call37, null, !dbg !2058
  br i1 %cmp38, label %return, label %cont44, !dbg !2058

cont44:                                           ; preds = %if.end34
  %17 = getelementptr inbounds i8* %call37, i32 16, !dbg !2059
  store i8 0, i8* %17, align 1, !dbg !2059, !tbaa !1909
  %18 = load %struct.ngx_rbtree_s** %rbtree28, align 4, !dbg !2060, !tbaa !1908
  %root = getelementptr inbounds %struct.ngx_rbtree_s* %18, i32 0, i32 0, !dbg !2060
  store %struct.ngx_rbtree_node_s* %16, %struct.ngx_rbtree_node_s** %root, align 4, !dbg !2060, !tbaa !1908
  %19 = load %struct.ngx_rbtree_s** %rbtree28, align 4, !dbg !2061, !tbaa !1908
  %sentinel47 = getelementptr inbounds %struct.ngx_rbtree_s* %19, i32 0, i32 1, !dbg !2061
  store %struct.ngx_rbtree_node_s* %16, %struct.ngx_rbtree_node_s** %sentinel47, align 4, !dbg !2061, !tbaa !1908
  %20 = load %struct.ngx_rbtree_s** %rbtree28, align 4, !dbg !2062, !tbaa !1908
  %insert = getelementptr inbounds %struct.ngx_rbtree_s* %20, i32 0, i32 2, !dbg !2062
  store void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* @ngx_http_limit_conn_rbtree_insert_value, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)** %insert, align 4, !dbg !2062, !tbaa !1908
  %name50 = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 2, !dbg !2063
  %len51 = getelementptr inbounds %struct.ngx_str_t* %name50, i32 0, i32 0, !dbg !2063
  %21 = load i32* %len51, align 4, !dbg !2063, !tbaa !1915
  %22 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %21, i32 23), !dbg !2063
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !2063
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !2063
  br i1 %24, label %ioc_bb52, label %cont53, !dbg !2063

ioc_bb52:                                         ; preds = %cont44
  %25 = zext i32 %21 to i64, !dbg !2063
  tail call void @__ioc_report_add_overflow(i32 264, i32 44, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @0, i32 0, i32 0), i64 23, i64 %25, i8 5) nounwind, !dbg !2063
  br label %cont53, !dbg !2063

cont53:                                           ; preds = %cont44, %ioc_bb52
  tail call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !554), !dbg !2063
  %call54 = tail call i8* @ngx_slab_alloc(%struct.ngx_slab_pool_t* %9, i32 %23) nounwind, !dbg !2064
  %log_ctx = getelementptr inbounds i8* %8, i32 72, !dbg !2064
  %26 = bitcast i8* %log_ctx to i8**, !dbg !2064
  store i8* %call54, i8** %26, align 4, !dbg !2064, !tbaa !1908
  %cmp56 = icmp eq i8* %call54, null, !dbg !2065
  br i1 %cmp56, label %return, label %if.end60, !dbg !2065

if.end60:                                         ; preds = %cont53
  %call64 = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %call54, i8* getelementptr inbounds ([27 x i8]* @.str16, i32 0, i32 0), %struct.ngx_str_t* %name50) nounwind, !dbg !2066
  br label %return, !dbg !2067

return:                                           ; preds = %cont53, %if.end34, %if.end26, %if.then5, %cont9, %if.end60, %if.then23, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ 0, %if.then23 ], [ 0, %if.end60 ], [ -1, %cont9 ], [ -1, %if.then5 ], [ -1, %if.end26 ], [ -1, %if.end34 ], [ -1, %cont53 ]
  ret i32 %retval.0, !dbg !2068
}

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i8* @ngx_slab_alloc(%struct.ngx_slab_pool_t*, i32)

define internal void @ngx_http_limit_conn_rbtree_insert_value(%struct.ngx_rbtree_node_s* %temp, %struct.ngx_rbtree_node_s* %node, %struct.ngx_rbtree_node_s* %sentinel) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %temp}, i64 0, metadata !615), !dbg !2069
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %node}, i64 0, metadata !616), !dbg !2069
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %sentinel}, i64 0, metadata !617), !dbg !2069
  %key = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 0, !dbg !2070
  %color = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 4, !dbg !2073
  %data = getelementptr inbounds i8* %color, i32 4, !dbg !2075
  %0 = getelementptr inbounds i8* %color, i32 1, !dbg !2075
  br label %for.cond, !dbg !2076

for.cond:                                         ; preds = %if.end16, %entry
  %temp.addr.0 = phi %struct.ngx_rbtree_node_s* [ %temp, %entry ], [ %6, %if.end16 ]
  %1 = load i32* %key, align 4, !dbg !2070, !tbaa !1915
  %key1 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 0, !dbg !2070
  %2 = load i32* %key1, align 4, !dbg !2070, !tbaa !1915
  %cmp = icmp ult i32 %1, %2, !dbg !2070
  br i1 %cmp, label %if.then, label %if.else, !dbg !2070

if.then:                                          ; preds = %for.cond
  %left = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 1, !dbg !2077
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %left}, i64 0, metadata !618), !dbg !2077
  br label %if.end16, !dbg !2079

if.else:                                          ; preds = %for.cond
  %cmp4 = icmp ugt i32 %1, %2, !dbg !2080
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !2080

if.then5:                                         ; preds = %if.else
  %right = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 2, !dbg !2081
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %right}, i64 0, metadata !618), !dbg !2081
  br label %if.end16, !dbg !2083

if.else6:                                         ; preds = %if.else
  %color7 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 4, !dbg !2084
  %data8 = getelementptr inbounds i8* %color7, i32 4, !dbg !2075
  %3 = load i8* %0, align 1, !dbg !2075, !tbaa !1909
  %conv = zext i8 %3 to i32, !dbg !2075
  %4 = getelementptr inbounds i8* %color7, i32 1, !dbg !2075
  %5 = load i8* %4, align 1, !dbg !2075, !tbaa !1909
  %conv11 = zext i8 %5 to i32, !dbg !2075
  %call = tail call i32 @ngx_memn2cmp(i8* %data, i8* %data8, i32 %conv, i32 %conv11) nounwind, !dbg !2075
  %cmp12 = icmp slt i32 %call, 0, !dbg !2075
  %left14 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 1, !dbg !2075
  %right15 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 2, !dbg !2075
  %cond = select i1 %cmp12, %struct.ngx_rbtree_node_s** %left14, %struct.ngx_rbtree_node_s** %right15, !dbg !2075
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %cond}, i64 0, metadata !618), !dbg !2075
  br label %if.end16

if.end16:                                         ; preds = %if.then5, %if.else6, %if.then
  %p.0 = phi %struct.ngx_rbtree_node_s** [ %left, %if.then ], [ %right, %if.then5 ], [ %cond, %if.else6 ]
  %6 = load %struct.ngx_rbtree_node_s** %p.0, align 4, !dbg !2085, !tbaa !1908
  %cmp17 = icmp eq %struct.ngx_rbtree_node_s* %6, %sentinel, !dbg !2085
  br i1 %cmp17, label %for.end, label %for.cond, !dbg !2085

for.end:                                          ; preds = %if.end16
  store %struct.ngx_rbtree_node_s* %node, %struct.ngx_rbtree_node_s** %p.0, align 4, !dbg !2086, !tbaa !1908
  %parent = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 3, !dbg !2087
  store %struct.ngx_rbtree_node_s* %temp.addr.0, %struct.ngx_rbtree_node_s** %parent, align 4, !dbg !2087, !tbaa !1908
  %left21 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 1, !dbg !2088
  store %struct.ngx_rbtree_node_s* %sentinel, %struct.ngx_rbtree_node_s** %left21, align 4, !dbg !2088, !tbaa !1908
  %right22 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 2, !dbg !2089
  store %struct.ngx_rbtree_node_s* %sentinel, %struct.ngx_rbtree_node_s** %right22, align 4, !dbg !2089, !tbaa !1908
  store i8 1, i8* %color, align 1, !dbg !2090, !tbaa !1909
  ret void, !dbg !2091
}

declare i8* @ngx_sprintf(i8*, i8*, ...)

declare i32 @ngx_memn2cmp(i8*, i8*, i32, i32)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i8* @strchr(i8*, i32) nounwind readonly

define internal i32 @ngx_http_limit_conn_init(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !675), !dbg !2092
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2093, !tbaa !1915
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2093
  %1 = load i8** %ctx, align 4, !dbg !2093, !tbaa !1908
  %main_conf = bitcast i8* %1 to i8***, !dbg !2093
  %2 = load i8*** %main_conf, align 4, !dbg !2093, !tbaa !1908
  %arrayidx = getelementptr inbounds i8** %2, i32 %0, !dbg !2093
  %3 = load i8** %arrayidx, align 4, !dbg !2093, !tbaa !1908
  %arrayidx1 = getelementptr inbounds i8* %3, i32 200, !dbg !2094
  %handlers = bitcast i8* %arrayidx1 to %struct.ngx_array_s*, !dbg !2094
  %call = tail call i8* @ngx_array_push(%struct.ngx_array_s* %handlers) nounwind, !dbg !2094
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_request_s*)** %4}, i64 0, metadata !676), !dbg !2094
  %cmp = icmp eq i8* %call, null, !dbg !2095
  br i1 %cmp, label %return, label %if.end, !dbg !2095

if.end:                                           ; preds = %entry
  %4 = bitcast i8* %call to i32 (%struct.ngx_http_request_s*)**, !dbg !2094
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_limit_conn_handler, i32 (%struct.ngx_http_request_s*)** %4, align 4, !dbg !2096, !tbaa !1908
  br label %return, !dbg !2097

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !2098
}

define internal i8* @ngx_http_limit_conn_create_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !667), !dbg !2099
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2100
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2100, !tbaa !1908
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 24) nounwind, !dbg !2100
  %cmp = icmp eq i8* %call, null, !dbg !2101
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !2101

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 285, i32 37, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2102
  %log_level = getelementptr inbounds i8* %call, i32 20, !dbg !2102
  %1 = bitcast i8* %log_level to i32*, !dbg !2102
  store i32 -1, i32* %1, align 4, !dbg !2102, !tbaa !1915
  br label %return, !dbg !2103

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2104
}

define internal noalias i8* @ngx_http_limit_conn_merge_conf(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %parent, i8* nocapture %child) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !656), !dbg !2105
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !657), !dbg !2105
  tail call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !658), !dbg !2105
  %elts = bitcast i8* %child to i8**, !dbg !2106
  %0 = load i8** %elts, align 4, !dbg !2106, !tbaa !1908
  %cmp = icmp eq i8* %0, null, !dbg !2106
  br i1 %cmp, label %if.then, label %if.end, !dbg !2106

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %child, i8* %parent, i32 20, i32 4, i1 false), !dbg !2107, !tbaa.struct !2109
  br label %if.end, !dbg !2110

if.end:                                           ; preds = %if.then, %entry
  %log_level = getelementptr inbounds i8* %child, i32 20, !dbg !2111
  %1 = bitcast i8* %log_level to i32*, !dbg !2111
  %2 = load i32* %1, align 4, !dbg !2111, !tbaa !1915
  tail call void @__ioc_report_conversion(i32 296, i32 42, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2111
  %cmp5 = icmp eq i32 %2, -1, !dbg !2111
  br i1 %cmp5, label %if.then6, label %if.end18, !dbg !2111

if.then6:                                         ; preds = %if.end
  %log_level7 = getelementptr inbounds i8* %parent, i32 20, !dbg !2112
  %3 = bitcast i8* %log_level7 to i32*, !dbg !2112
  %4 = load i32* %3, align 4, !dbg !2112, !tbaa !1915
  tail call void @__ioc_report_conversion(i32 297, i32 61, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2112
  %cmp13 = icmp eq i32 %4, -1, !dbg !2112
  br i1 %cmp13, label %cond.end, label %cond.false, !dbg !2112

cond.false:                                       ; preds = %if.then6
  %5 = load i32* %3, align 4, !dbg !2112, !tbaa !1915
  br label %cond.end, !dbg !2112

cond.end:                                         ; preds = %if.then6, %cond.false
  %cond = phi i32 [ %5, %cond.false ], [ 4, %if.then6 ], !dbg !2112
  store i32 %cond, i32* %1, align 4, !dbg !2112, !tbaa !1915
  br label %if.end18, !dbg !2114

if.end18:                                         ; preds = %cond.end, %if.end
  ret i8* null, !dbg !2115
}

define internal i32 @ngx_http_limit_conn_handler(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1764), !dbg !2116
  %main = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 29, !dbg !2117
  %0 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2117, !tbaa !1908
  %1 = getelementptr %struct.ngx_http_request_s* %0, i32 0, i32 53, !dbg !2117
  %2 = bitcast i8* %1 to i32*, !dbg !2117
  %3 = load i32* %2, align 4, !dbg !2117
  %bf.clear = and i32 %3, 134217728, !dbg !2117
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2117
  br i1 %tobool, label %if.end, label %return, !dbg !2117

if.end:                                           ; preds = %entry
  %4 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_limit_conn_module, i32 0, i32 0), align 4, !dbg !2118, !tbaa !1915
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2118
  %5 = load i8*** %loc_conf, align 4, !dbg !2118, !tbaa !1908
  %arrayidx = getelementptr inbounds i8** %5, i32 %4, !dbg !2118
  %6 = load i8** %arrayidx, align 4, !dbg !2118, !tbaa !1908
  %elts = bitcast i8* %6 to i8**, !dbg !2119
  %7 = load i8** %elts, align 4, !dbg !2119, !tbaa !1908
  %8 = bitcast i8* %7 to %struct.ngx_http_limit_conn_limit_t*, !dbg !2119
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_conn_limit_t* %8}, i64 0, metadata !1777), !dbg !2119
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1769), !dbg !2120
  %nelts = getelementptr inbounds i8* %6, i32 4, !dbg !2120
  %9 = bitcast i8* %nelts to i32*, !dbg !2120
  %10 = load i32* %9, align 4, !dbg !2120, !tbaa !1915
  %cmp188 = icmp eq i32 %10, 0, !dbg !2120
  br i1 %cmp188, label %return, label %for.body.lr.ph, !dbg !2120

for.body.lr.ph:                                   ; preds = %if.end
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2122
  %pool94 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2125
  br label %for.body, !dbg !2120

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.0189 = phi i32 [ 0, %for.body.lr.ph ], [ %77, %for.cond.backedge ]
  %shm_zone = getelementptr inbounds %struct.ngx_http_limit_conn_limit_t* %8, i32 %i.0189, i32 0, !dbg !2126
  %11 = load %struct.ngx_shm_zone_s** %shm_zone, align 4, !dbg !2126, !tbaa !1908
  %data = getelementptr inbounds %struct.ngx_shm_zone_s* %11, i32 0, i32 0, !dbg !2126
  %12 = load i8** %data, align 4, !dbg !2126, !tbaa !1908
  %index = getelementptr inbounds i8* %12, i32 4, !dbg !2127
  %13 = bitcast i8* %index to i32*, !dbg !2127
  %14 = load i32* %13, align 4, !dbg !2127, !tbaa !1915
  %15 = icmp sgt i32 %14, -1, !dbg !2127
  br i1 %15, label %cont7, label %ioc_bb6, !dbg !2127

ioc_bb6:                                          ; preds = %for.body
  %16 = sext i32 %14 to i64, !dbg !2127
  tail call void @__ioc_report_conversion(i32 81, i32 42, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 %16, i8 1) nounwind, !dbg !2127
  br label %cont7, !dbg !2127

cont7:                                            ; preds = %ioc_bb6, %for.body
  %call = tail call %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s* %r, i32 %14) nounwind, !dbg !2127
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call}, i64 0, metadata !1773), !dbg !2127
  %cmp8 = icmp eq %struct.ngx_variable_value_t* %call, null, !dbg !2128
  br i1 %cmp8, label %for.inc, label %lor.lhs.false, !dbg !2128

lor.lhs.false:                                    ; preds = %cont7
  %17 = bitcast %struct.ngx_variable_value_t* %call to i32*, !dbg !2128
  %18 = load i32* %17, align 4, !dbg !2128
  %bf.clear9 = and i32 %18, 1073741824, !dbg !2128
  %tobool12 = icmp eq i32 %bf.clear9, 0, !dbg !2128
  br i1 %tobool12, label %if.end14, label %for.inc, !dbg !2128

if.end14:                                         ; preds = %lor.lhs.false
  %bf.clear15 = and i32 %18, 268435455, !dbg !2129
  tail call void @llvm.dbg.value(metadata !{i32 %bf.clear15}, i64 0, metadata !1765), !dbg !2129
  %cmp18 = icmp eq i32 %bf.clear15, 0, !dbg !2130
  br i1 %cmp18, label %for.inc, label %cont22, !dbg !2130

cont22:                                           ; preds = %if.end14
  %cmp23 = icmp ugt i32 %bf.clear15, 255, !dbg !2131
  br i1 %cmp23, label %if.then24, label %cont36, !dbg !2131

if.then24:                                        ; preds = %cont22
  %19 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2122, !tbaa !1908
  %log = getelementptr inbounds %struct.ngx_connection_s* %19, i32 0, i32 10, !dbg !2122
  %20 = load %struct.ngx_log_s** %log, align 4, !dbg !2122, !tbaa !1908
  %log_level = getelementptr inbounds %struct.ngx_log_s* %20, i32 0, i32 0, !dbg !2122
  %21 = load i32* %log_level, align 4, !dbg !2122, !tbaa !1915
  %cmp27 = icmp ugt i32 %21, 3, !dbg !2122
  br i1 %cmp27, label %cont30, label %for.inc, !dbg !2122

cont30:                                           ; preds = %if.then24
  %var = getelementptr inbounds i8* %12, i32 8, !dbg !2132
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %20, i32 0, i8* getelementptr inbounds ([60 x i8]* @.str24, i32 0, i32 0), i8* %var, %struct.ngx_variable_value_t* %call) nounwind, !dbg !2132
  br label %for.inc, !dbg !2132

cont36:                                           ; preds = %cont22
  %22 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2133, !tbaa !1908
  %23 = getelementptr %struct.ngx_http_request_s* %22, i32 0, i32 53, !dbg !2133
  %24 = bitcast i8* %23 to i32*, !dbg !2133
  %25 = load i32* %24, align 4, !dbg !2133
  %26 = or i32 %25, 134217728, !dbg !2133
  store i32 %26, i32* %24, align 4, !dbg !2133
  %data39 = getelementptr inbounds %struct.ngx_variable_value_t* %call, i32 0, i32 1, !dbg !2134
  %27 = load i8** %data39, align 4, !dbg !2134, !tbaa !1908
  tail call void @llvm.dbg.value(metadata !{i8* %27}, i64 0, metadata !2135) nounwind, !dbg !2136
  tail call void @llvm.dbg.value(metadata !{i32 %bf.clear15}, i64 0, metadata !2137) nounwind, !dbg !2136
  tail call void @llvm.dbg.value(metadata !2138, i64 0, metadata !2139) nounwind, !dbg !2140
  br label %while.cond.i, !dbg !2141

while.cond.i:                                     ; preds = %while.body.i, %cont36
  %len.addr.0.i = phi i32 [ %bf.clear15, %cont36 ], [ %29, %while.body.i ]
  %p.addr.0.i = phi i8* [ %27, %cont36 ], [ %incdec.ptr.i, %while.body.i ]
  %crc.0.i = phi i32 [ -1, %cont36 ], [ %xor24.i, %while.body.i ]
  %28 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.0.i, i32 1) nounwind, !dbg !2141
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !2141
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !2141
  br i1 %30, label %ioc_bb.i, label %cont.i, !dbg !2141

ioc_bb.i:                                         ; preds = %while.cond.i
  %31 = zext i32 %len.addr.0.i to i64, !dbg !2141
  tail call void @__ioc_report_sub_overflow(i32 28, i32 15, i8* getelementptr inbounds ([21 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i64 %31, i64 1, i8 5) nounwind, !dbg !2141
  br label %cont.i, !dbg !2141

cont.i:                                           ; preds = %ioc_bb.i, %while.cond.i
  tail call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !2137) nounwind, !dbg !2141
  %tobool.i = icmp eq i32 %len.addr.0.i, 0, !dbg !2141
  br i1 %tobool.i, label %ngx_crc32_short.exit, label %while.body.i, !dbg !2141

while.body.i:                                     ; preds = %cont.i
  %incdec.ptr.i = getelementptr inbounds i8* %p.addr.0.i, i32 1, !dbg !2142
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !2135) nounwind, !dbg !2142
  %32 = load i8* %p.addr.0.i, align 1, !dbg !2142, !tbaa !1909
  tail call void @llvm.dbg.value(metadata !{i8 %32}, i64 0, metadata !2144) nounwind, !dbg !2142
  %conv.i = zext i8 %32 to i32, !dbg !2145
  %xor.i = xor i32 %conv.i, %crc.0.i, !dbg !2145
  %33 = load i32** @ngx_crc32_table_short, align 4, !dbg !2145, !tbaa !1908
  %and5.i = and i32 %xor.i, 15, !dbg !2145
  %arrayidx.i = getelementptr inbounds i32* %33, i32 %and5.i, !dbg !2145
  %34 = load i32* %arrayidx.i, align 4, !dbg !2145, !tbaa !1915
  %shr.i = lshr i32 %crc.0.i, 4, !dbg !2145
  %xor8.i = xor i32 %34, %shr.i, !dbg !2145
  tail call void @llvm.dbg.value(metadata !{i32 %xor8.i}, i64 0, metadata !2139) nounwind, !dbg !2145
  %xor8.masked.i = and i32 %xor8.i, 15, !dbg !2146
  %shr1231.i = lshr i32 %conv.i, 4, !dbg !2146
  %and19.i = xor i32 %xor8.masked.i, %shr1231.i, !dbg !2146
  %arrayidx20.i = getelementptr inbounds i32* %33, i32 %and19.i, !dbg !2146
  %35 = load i32* %arrayidx20.i, align 4, !dbg !2146, !tbaa !1915
  %shr23.i = lshr i32 %xor8.i, 4, !dbg !2146
  %xor24.i = xor i32 %shr23.i, %35, !dbg !2146
  tail call void @llvm.dbg.value(metadata !{i32 %xor24.i}, i64 0, metadata !2139) nounwind, !dbg !2146
  br label %while.cond.i, !dbg !2147

ngx_crc32_short.exit:                             ; preds = %cont.i
  %xor25.i = xor i32 %crc.0.i, -1, !dbg !2148
  tail call void @llvm.dbg.value(metadata !{i32 %xor25.i}, i64 0, metadata !1768), !dbg !2134
  %36 = load %struct.ngx_shm_zone_s** %shm_zone, align 4, !dbg !2149, !tbaa !1908
  %addr = getelementptr inbounds %struct.ngx_shm_zone_s* %36, i32 0, i32 1, i32 0, !dbg !2149
  %37 = load i8** %addr, align 4, !dbg !2149, !tbaa !1908
  %38 = bitcast i8* %37 to %struct.ngx_slab_pool_t*, !dbg !2149
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_slab_pool_t* %38}, i64 0, metadata !1770), !dbg !2149
  %mutex = getelementptr inbounds i8* %37, i32 40, !dbg !2150
  %39 = bitcast i8* %mutex to %struct.ngx_shmtx_t*, !dbg !2150
  tail call void @ngx_shmtx_lock(%struct.ngx_shmtx_t* %39) nounwind, !dbg !2150
  %rbtree = bitcast i8* %12 to %struct.ngx_rbtree_s**, !dbg !2151
  %40 = load %struct.ngx_rbtree_s** %rbtree, align 4, !dbg !2151, !tbaa !1908
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_s* %40}, i64 0, metadata !2152) nounwind, !dbg !2153
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call}, i64 0, metadata !2154) nounwind, !dbg !2153
  tail call void @llvm.dbg.value(metadata !{i32 %xor25.i}, i64 0, metadata !2155) nounwind, !dbg !2153
  %root.i = getelementptr inbounds %struct.ngx_rbtree_s* %40, i32 0, i32 0, !dbg !2156
  %sentinel1.i = getelementptr inbounds %struct.ngx_rbtree_s* %40, i32 0, i32 1, !dbg !2157
  %41 = load %struct.ngx_rbtree_node_s** %sentinel1.i, align 4, !dbg !2157, !tbaa !1908
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %41}, i64 0, metadata !2158) nounwind, !dbg !2157
  %node.027.i = load %struct.ngx_rbtree_node_s** %root.i, align 4, !dbg !2156
  %cmp28.i = icmp eq %struct.ngx_rbtree_node_s* %node.027.i, %41, !dbg !2159
  br i1 %cmp28.i, label %cont47, label %while.body.i164, !dbg !2159

while.body.i164:                                  ; preds = %ngx_crc32_short.exit, %while.cond.backedge.i
  %node.029.i = phi %struct.ngx_rbtree_node_s* [ %node.0.i, %while.cond.backedge.i ], [ %node.027.i, %ngx_crc32_short.exit ]
  %key.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.029.i, i32 0, i32 0, !dbg !2160
  %42 = load i32* %key.i, align 4, !dbg !2160, !tbaa !1915
  %cmp2.i = icmp ugt i32 %42, %xor25.i, !dbg !2160
  br i1 %cmp2.i, label %if.then.i, label %if.end.i, !dbg !2160

if.then.i:                                        ; preds = %while.body.i164
  %left.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.029.i, i32 0, i32 1, !dbg !2162
  br label %while.cond.backedge.i, !dbg !2164

while.cond.backedge.i:                            ; preds = %if.end11.i, %if.then5.i, %if.then.i
  %node.0.in.be.i = phi %struct.ngx_rbtree_node_s** [ %left.i, %if.then.i ], [ %right.i, %if.then5.i ], [ %cond.in.i, %if.end11.i ]
  %node.0.i = load %struct.ngx_rbtree_node_s** %node.0.in.be.i, align 4, !dbg !2156
  %cmp.i = icmp eq %struct.ngx_rbtree_node_s* %node.0.i, %41, !dbg !2159
  br i1 %cmp.i, label %cont47, label %while.body.i164, !dbg !2159

if.end.i:                                         ; preds = %while.body.i164
  %cmp4.i = icmp ult i32 %42, %xor25.i, !dbg !2165
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i, !dbg !2165

if.then5.i:                                       ; preds = %if.end.i
  %right.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.029.i, i32 0, i32 2, !dbg !2166
  br label %while.cond.backedge.i, !dbg !2168

if.end6.i:                                        ; preds = %if.end.i
  %color.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.029.i, i32 0, i32 4, !dbg !2169
  %43 = load i8** %data39, align 4, !dbg !2170, !tbaa !1908
  %data7.i = getelementptr inbounds i8* %color.i, i32 4, !dbg !2170
  %44 = load i32* %17, align 4, !dbg !2170
  %bf.clear.i = and i32 %44, 268435455, !dbg !2170
  %45 = getelementptr inbounds i8* %color.i, i32 1, !dbg !2170
  %46 = load i8* %45, align 1, !dbg !2170, !tbaa !1909
  %conv.i165 = zext i8 %46 to i32, !dbg !2170
  %call.i = tail call i32 @ngx_memn2cmp(i8* %43, i8* %data7.i, i32 %bf.clear.i, i32 %conv.i165) nounwind, !dbg !2170
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !2171) nounwind, !dbg !2170
  %cmp8.i = icmp eq i32 %call.i, 0, !dbg !2172
  br i1 %cmp8.i, label %ngx_http_limit_conn_lookup.exit, label %if.end11.i, !dbg !2172

if.end11.i:                                       ; preds = %if.end6.i
  %cmp12.i = icmp slt i32 %call.i, 0, !dbg !2173
  %left14.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.029.i, i32 0, i32 1, !dbg !2173
  %right15.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.029.i, i32 0, i32 2, !dbg !2173
  %cond.in.i = select i1 %cmp12.i, %struct.ngx_rbtree_node_s** %left14.i, %struct.ngx_rbtree_node_s** %right15.i, !dbg !2173
  br label %while.cond.backedge.i, !dbg !2173

ngx_http_limit_conn_lookup.exit:                  ; preds = %if.end6.i
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %node.029.i}, i64 0, metadata !1771), !dbg !2151
  %cmp44 = icmp eq %struct.ngx_rbtree_node_s* %node.029.i, null, !dbg !2174
  br i1 %cmp44, label %cont47, label %if.else, !dbg !2174

cont47:                                           ; preds = %while.cond.backedge.i, %ngx_crc32_short.exit, %ngx_http_limit_conn_lookup.exit
  %47 = add nuw i32 %bf.clear15, 20, !dbg !2175
  tail call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !1767), !dbg !2175
  %call50 = tail call i8* @ngx_slab_alloc_locked(%struct.ngx_slab_pool_t* %38, i32 %47) nounwind, !dbg !2177
  %48 = bitcast i8* %call50 to %struct.ngx_rbtree_node_s*, !dbg !2177
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %48}, i64 0, metadata !1771), !dbg !2177
  %cmp51 = icmp eq i8* %call50, null, !dbg !2178
  br i1 %cmp51, label %if.then52, label %cont57, !dbg !2178

if.then52:                                        ; preds = %cont47
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %39) nounwind, !dbg !2179
  %49 = load %struct.ngx_pool_s** %pool94, align 4, !dbg !2181, !tbaa !1908
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %49}, i64 0, metadata !2182) nounwind, !dbg !2183
  %cleanup.i = getelementptr inbounds %struct.ngx_pool_s* %49, i32 0, i32 5, !dbg !2184
  %cln.06.i = load %struct.ngx_pool_cleanup_s** %cleanup.i, align 4, !dbg !2184
  %tobool7.i = icmp eq %struct.ngx_pool_cleanup_s* %cln.06.i, null, !dbg !2185
  br i1 %tobool7.i, label %ngx_http_limit_conn_cleanup_all.exit, label %land.rhs.i, !dbg !2185

land.rhs.i:                                       ; preds = %if.then52, %while.body.i169
  %cln.08.i = phi %struct.ngx_pool_cleanup_s* [ %cln.0.i, %while.body.i169 ], [ %cln.06.i, %if.then52 ]
  %handler.i = getelementptr inbounds %struct.ngx_pool_cleanup_s* %cln.08.i, i32 0, i32 0, !dbg !2185
  %50 = load void (i8*)** %handler.i, align 4, !dbg !2185, !tbaa !1908
  %cmp.i166 = icmp eq void (i8*)* %50, @ngx_http_limit_conn_cleanup, !dbg !2185
  br i1 %cmp.i166, label %while.body.i169, label %ngx_http_limit_conn_cleanup_all.exit

while.body.i169:                                  ; preds = %land.rhs.i
  %data.i167 = getelementptr inbounds %struct.ngx_pool_cleanup_s* %cln.08.i, i32 0, i32 1, !dbg !2186
  %51 = load i8** %data.i167, align 4, !dbg !2186, !tbaa !1908
  tail call void @ngx_http_limit_conn_cleanup(i8* %51) nounwind, !dbg !2186
  %next.i = getelementptr inbounds %struct.ngx_pool_cleanup_s* %cln.08.i, i32 0, i32 2, !dbg !2188
  %cln.0.i = load %struct.ngx_pool_cleanup_s** %next.i, align 4, !dbg !2184
  %tobool.i168 = icmp eq %struct.ngx_pool_cleanup_s* %cln.0.i, null, !dbg !2185
  br i1 %tobool.i168, label %ngx_http_limit_conn_cleanup_all.exit, label %land.rhs.i, !dbg !2185

ngx_http_limit_conn_cleanup_all.exit:             ; preds = %land.rhs.i, %while.body.i169, %if.then52
  %cln.0.lcssa.i = phi %struct.ngx_pool_cleanup_s* [ null, %if.then52 ], [ %cln.08.i, %land.rhs.i ], [ null, %while.body.i169 ]
  store %struct.ngx_pool_cleanup_s* %cln.0.lcssa.i, %struct.ngx_pool_cleanup_s** %cleanup.i, align 4, !dbg !2189, !tbaa !1908
  br label %return, !dbg !2190

cont57:                                           ; preds = %cont47
  %key = bitcast i8* %call50 to i32*, !dbg !2191
  store i32 %xor25.i, i32* %key, align 4, !dbg !2191, !tbaa !1915
  %conv = trunc i32 %18 to i8, !dbg !2192
  %52 = getelementptr inbounds i8* %call50, i32 17, !dbg !2192
  store i8 %conv, i8* %52, align 1, !dbg !2192, !tbaa !1909
  %conn = getelementptr inbounds i8* %call50, i32 18, !dbg !2193
  %53 = bitcast i8* %conn to i16*, !dbg !2193
  store i16 1, i16* %53, align 2, !dbg !2193, !tbaa !2194
  %data61 = getelementptr inbounds i8* %call50, i32 20, !dbg !2195
  %54 = load i8** %data39, align 4, !dbg !2195, !tbaa !1908
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %data61, i8* %54, i32 %bf.clear15, i32 1, i1 false), !dbg !2195
  %55 = load %struct.ngx_rbtree_s** %rbtree, align 4, !dbg !2196, !tbaa !1908
  tail call void @ngx_rbtree_insert(%struct.ngx_rbtree_s* %55, %struct.ngx_rbtree_node_s* %48) nounwind, !dbg !2196
  br label %if.end92, !dbg !2197

if.else:                                          ; preds = %ngx_http_limit_conn_lookup.exit
  %conn65 = getelementptr inbounds i8* %color.i, i32 2, !dbg !2198
  %56 = bitcast i8* %conn65 to i16*, !dbg !2198
  %57 = load i16* %56, align 2, !dbg !2198, !tbaa !2194
  %conv66 = zext i16 %57 to i32, !dbg !2198
  %conn68 = getelementptr inbounds %struct.ngx_http_limit_conn_limit_t* %8, i32 %i.0189, i32 1, !dbg !2198
  %58 = load i32* %conn68, align 4, !dbg !2198, !tbaa !1915
  %cmp69 = icmp ult i32 %conv66, %58, !dbg !2198
  br i1 %cmp69, label %if.end88, label %if.then71, !dbg !2198

if.then71:                                        ; preds = %if.else
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %39) nounwind, !dbg !2200
  %59 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2202, !tbaa !1908
  %log74 = getelementptr inbounds %struct.ngx_connection_s* %59, i32 0, i32 10, !dbg !2202
  %60 = load %struct.ngx_log_s** %log74, align 4, !dbg !2202, !tbaa !1908
  %log_level75 = getelementptr inbounds %struct.ngx_log_s* %60, i32 0, i32 0, !dbg !2202
  %61 = load i32* %log_level75, align 4, !dbg !2202, !tbaa !1915
  %log_level76 = getelementptr inbounds i8* %6, i32 20, !dbg !2202
  %62 = bitcast i8* %log_level76 to i32*, !dbg !2202
  %63 = load i32* %62, align 4, !dbg !2202, !tbaa !1915
  %cmp77 = icmp ult i32 %61, %63, !dbg !2202
  br i1 %cmp77, label %if.end86, label %if.then79, !dbg !2202

if.then79:                                        ; preds = %if.then71
  %64 = load %struct.ngx_shm_zone_s** %shm_zone, align 4, !dbg !2203, !tbaa !1908
  %name = getelementptr inbounds %struct.ngx_shm_zone_s* %64, i32 0, i32 1, i32 2, !dbg !2203
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 %63, %struct.ngx_log_s* %60, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str25, i32 0, i32 0), %struct.ngx_str_t* %name) nounwind, !dbg !2203
  br label %if.end86, !dbg !2203

if.end86:                                         ; preds = %if.then71, %if.then79
  %65 = load %struct.ngx_pool_s** %pool94, align 4, !dbg !2204, !tbaa !1908
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %65}, i64 0, metadata !2205) nounwind, !dbg !2206
  %cleanup.i170 = getelementptr inbounds %struct.ngx_pool_s* %65, i32 0, i32 5, !dbg !2207
  %cln.06.i171 = load %struct.ngx_pool_cleanup_s** %cleanup.i170, align 4, !dbg !2207
  %tobool7.i172 = icmp eq %struct.ngx_pool_cleanup_s* %cln.06.i171, null, !dbg !2208
  br i1 %tobool7.i172, label %ngx_http_limit_conn_cleanup_all.exit183, label %land.rhs.i176, !dbg !2208

land.rhs.i176:                                    ; preds = %if.end86, %while.body.i181
  %cln.08.i173 = phi %struct.ngx_pool_cleanup_s* [ %cln.0.i179, %while.body.i181 ], [ %cln.06.i171, %if.end86 ]
  %handler.i174 = getelementptr inbounds %struct.ngx_pool_cleanup_s* %cln.08.i173, i32 0, i32 0, !dbg !2208
  %66 = load void (i8*)** %handler.i174, align 4, !dbg !2208, !tbaa !1908
  %cmp.i175 = icmp eq void (i8*)* %66, @ngx_http_limit_conn_cleanup, !dbg !2208
  br i1 %cmp.i175, label %while.body.i181, label %ngx_http_limit_conn_cleanup_all.exit183

while.body.i181:                                  ; preds = %land.rhs.i176
  %data.i177 = getelementptr inbounds %struct.ngx_pool_cleanup_s* %cln.08.i173, i32 0, i32 1, !dbg !2209
  %67 = load i8** %data.i177, align 4, !dbg !2209, !tbaa !1908
  tail call void @ngx_http_limit_conn_cleanup(i8* %67) nounwind, !dbg !2209
  %next.i178 = getelementptr inbounds %struct.ngx_pool_cleanup_s* %cln.08.i173, i32 0, i32 2, !dbg !2210
  %cln.0.i179 = load %struct.ngx_pool_cleanup_s** %next.i178, align 4, !dbg !2207
  %tobool.i180 = icmp eq %struct.ngx_pool_cleanup_s* %cln.0.i179, null, !dbg !2208
  br i1 %tobool.i180, label %ngx_http_limit_conn_cleanup_all.exit183, label %land.rhs.i176, !dbg !2208

ngx_http_limit_conn_cleanup_all.exit183:          ; preds = %land.rhs.i176, %while.body.i181, %if.end86
  %cln.0.lcssa.i182 = phi %struct.ngx_pool_cleanup_s* [ null, %if.end86 ], [ %cln.08.i173, %land.rhs.i176 ], [ null, %while.body.i181 ]
  store %struct.ngx_pool_cleanup_s* %cln.0.lcssa.i182, %struct.ngx_pool_cleanup_s** %cleanup.i170, align 4, !dbg !2211, !tbaa !1908
  br label %return, !dbg !2212

if.end88:                                         ; preds = %if.else
  %68 = tail call { i16, i1 } @llvm.uadd.with.overflow.i16(i16 %57, i16 1), !dbg !2213
  %69 = extractvalue { i16, i1 } %68, 0, !dbg !2213
  %70 = extractvalue { i16, i1 } %68, 1, !dbg !2213
  br i1 %70, label %ioc_bb90, label %cont91, !dbg !2213

ioc_bb90:                                         ; preds = %if.end88
  %71 = zext i16 %57 to i64, !dbg !2213
  tail call void @__ioc_report_add_overflow(i32 123, i32 17, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %71, i64 1, i8 4) nounwind, !dbg !2213
  br label %cont91, !dbg !2213

cont91:                                           ; preds = %if.end88, %ioc_bb90
  store i16 %69, i16* %56, align 2, !dbg !2213, !tbaa !2194
  br label %if.end92

if.end92:                                         ; preds = %cont91, %cont57
  %node.0 = phi %struct.ngx_rbtree_node_s* [ %48, %cont57 ], [ %node.029.i, %cont91 ]
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %39) nounwind, !dbg !2214
  %72 = load %struct.ngx_pool_s** %pool94, align 4, !dbg !2125, !tbaa !1908
  %call95 = tail call %struct.ngx_pool_cleanup_s* @ngx_pool_cleanup_add(%struct.ngx_pool_s* %72, i32 8) nounwind, !dbg !2125
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_cleanup_s* %call95}, i64 0, metadata !1772), !dbg !2125
  %cmp96 = icmp eq %struct.ngx_pool_cleanup_s* %call95, null, !dbg !2215
  br i1 %cmp96, label %return, label %if.end99, !dbg !2215

if.end99:                                         ; preds = %if.end92
  %handler = getelementptr inbounds %struct.ngx_pool_cleanup_s* %call95, i32 0, i32 0, !dbg !2216
  store void (i8*)* @ngx_http_limit_conn_cleanup, void (i8*)** %handler, align 4, !dbg !2216, !tbaa !1908
  %data100 = getelementptr inbounds %struct.ngx_pool_cleanup_s* %call95, i32 0, i32 1, !dbg !2217
  %73 = load i8** %data100, align 4, !dbg !2217, !tbaa !1908
  %74 = load %struct.ngx_shm_zone_s** %shm_zone, align 4, !dbg !2218, !tbaa !1908
  %shm_zone103 = bitcast i8* %73 to %struct.ngx_shm_zone_s**, !dbg !2218
  store %struct.ngx_shm_zone_s* %74, %struct.ngx_shm_zone_s** %shm_zone103, align 4, !dbg !2218, !tbaa !1908
  %node104 = getelementptr inbounds i8* %73, i32 4, !dbg !2219
  %75 = bitcast i8* %node104 to %struct.ngx_rbtree_node_s**, !dbg !2219
  store %struct.ngx_rbtree_node_s* %node.0, %struct.ngx_rbtree_node_s** %75, align 4, !dbg !2219, !tbaa !1908
  br label %for.inc, !dbg !2220

for.inc:                                          ; preds = %lor.lhs.false, %if.then24, %cont30, %if.end14, %cont7, %if.end99
  %76 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0189, i32 1), !dbg !2120
  %77 = extractvalue { i32, i1 } %76, 0, !dbg !2120
  %78 = extractvalue { i32, i1 } %76, 1, !dbg !2120
  br i1 %78, label %ioc_bb105, label %for.cond.backedge, !dbg !2120

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb105
  %79 = load i32* %9, align 4, !dbg !2120, !tbaa !1915
  %cmp = icmp ult i32 %77, %79, !dbg !2120
  br i1 %cmp, label %for.body, label %return, !dbg !2120

ioc_bb105:                                        ; preds = %for.inc
  %80 = zext i32 %i.0189 to i64, !dbg !2120
  tail call void @__ioc_report_add_overflow(i32 79, i32 42, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @8, i32 0, i32 0), i64 %80, i64 1, i8 5) nounwind, !dbg !2120
  br label %for.cond.backedge, !dbg !2120

return:                                           ; preds = %if.end, %if.end92, %for.cond.backedge, %entry, %ngx_http_limit_conn_cleanup_all.exit183, %ngx_http_limit_conn_cleanup_all.exit
  %retval.0 = phi i32 [ 503, %ngx_http_limit_conn_cleanup_all.exit ], [ 503, %ngx_http_limit_conn_cleanup_all.exit183 ], [ -5, %entry ], [ -5, %if.end ], [ 500, %if.end92 ], [ -5, %for.cond.backedge ]
  ret i32 %retval.0, !dbg !2221
}

declare %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s*, i32)

declare void @ngx_shmtx_lock(%struct.ngx_shmtx_t*)

declare i8* @ngx_slab_alloc_locked(%struct.ngx_slab_pool_t*, i32)

declare void @ngx_shmtx_unlock(%struct.ngx_shmtx_t*)

declare void @ngx_rbtree_insert(%struct.ngx_rbtree_s*, %struct.ngx_rbtree_node_s*)

declare { i16, i1 } @llvm.uadd.with.overflow.i16(i16, i16) nounwind readnone

declare %struct.ngx_pool_cleanup_s* @ngx_pool_cleanup_add(%struct.ngx_pool_s*, i32)

define internal void @ngx_http_limit_conn_cleanup(i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !1788), !dbg !2222
  %shm_zone = bitcast i8* %data to %struct.ngx_shm_zone_s**, !dbg !2223
  %0 = load %struct.ngx_shm_zone_s** %shm_zone, align 4, !dbg !2223, !tbaa !1908
  %data1 = getelementptr inbounds %struct.ngx_shm_zone_s* %0, i32 0, i32 0, !dbg !2223
  %1 = load i8** %data1, align 4, !dbg !2223, !tbaa !1908
  %addr = getelementptr inbounds %struct.ngx_shm_zone_s* %0, i32 0, i32 1, i32 0, !dbg !2224
  %2 = load i8** %addr, align 4, !dbg !2224, !tbaa !1908
  %3 = bitcast i8* %2 to %struct.ngx_slab_pool_t*, !dbg !2224
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_slab_pool_t* %3}, i64 0, metadata !1791), !dbg !2224
  %node3 = getelementptr inbounds i8* %data, i32 4, !dbg !2225
  %4 = bitcast i8* %node3 to %struct.ngx_rbtree_node_s**, !dbg !2225
  %5 = load %struct.ngx_rbtree_node_s** %4, align 4, !dbg !2225, !tbaa !1908
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %5}, i64 0, metadata !1792), !dbg !2225
  %color = getelementptr inbounds %struct.ngx_rbtree_node_s* %5, i32 0, i32 4, !dbg !2226
  %mutex = getelementptr inbounds i8* %2, i32 40, !dbg !2227
  %6 = bitcast i8* %mutex to %struct.ngx_shmtx_t*, !dbg !2227
  tail call void @ngx_shmtx_lock(%struct.ngx_shmtx_t* %6) nounwind, !dbg !2227
  %conn = getelementptr inbounds i8* %color, i32 2, !dbg !2228
  %7 = bitcast i8* %conn to i16*, !dbg !2228
  %8 = load i16* %7, align 2, !dbg !2228, !tbaa !2194
  %9 = tail call { i16, i1 } @llvm.usub.with.overflow.i16(i16 %8, i16 1), !dbg !2228
  %10 = extractvalue { i16, i1 } %9, 0, !dbg !2228
  %11 = extractvalue { i16, i1 } %9, 1, !dbg !2228
  br i1 %11, label %ioc_bb, label %cont, !dbg !2228

ioc_bb:                                           ; preds = %entry
  %12 = zext i16 %8 to i64, !dbg !2228
  tail call void @__ioc_report_sub_overflow(i32 210, i32 13, i8* getelementptr inbounds ([46 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @10, i32 0, i32 0), i64 %12, i64 1, i8 4) nounwind, !dbg !2228
  br label %cont, !dbg !2228

cont:                                             ; preds = %entry, %ioc_bb
  store i16 %10, i16* %7, align 2, !dbg !2228, !tbaa !2194
  %cmp = icmp eq i16 %10, 0, !dbg !2229
  br i1 %cmp, label %if.then, label %if.end, !dbg !2229

if.then:                                          ; preds = %cont
  %rbtree = bitcast i8* %1 to %struct.ngx_rbtree_s**, !dbg !2230
  %13 = load %struct.ngx_rbtree_s** %rbtree, align 4, !dbg !2230, !tbaa !1908
  tail call void @ngx_rbtree_delete(%struct.ngx_rbtree_s* %13, %struct.ngx_rbtree_node_s* %5) nounwind, !dbg !2230
  %14 = bitcast %struct.ngx_rbtree_node_s* %5 to i8*, !dbg !2232
  tail call void @ngx_slab_free_locked(%struct.ngx_slab_pool_t* %3, i8* %14) nounwind, !dbg !2232
  br label %if.end, !dbg !2233

if.end:                                           ; preds = %if.then, %cont
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %6) nounwind, !dbg !2234
  ret void, !dbg !2235
}

declare { i16, i1 } @llvm.usub.with.overflow.i16(i16, i16) nounwind readnone

declare void @ngx_rbtree_delete(%struct.ngx_rbtree_s*, %struct.ngx_rbtree_node_s*)

declare void @ngx_slab_free_locked(%struct.ngx_slab_pool_t*, i8*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_limit_conn_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1827} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !509, metadata !518, metadata !547, metadata !612, metadata !636, metadata !651, metadata !662, metadata !670, metadata !1761, metadata !1785, metadata !1795, metadata !1803, metadata !1816}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn", metadata !"ngx_http_limit_conn", metadata !"", metadata !6, i32 424, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_conn, null, null, metadata !457, i32 425} ; [ DW_TAG_subprogram ] [line 424] [local] [def] [scope 425] [ngx_http_limit_conn]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_limit_conn_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
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
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !490, metadata !497, metadata !504, metadata !505, metadata !507, metadata !508}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16777640, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 424]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33554856, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 424]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50332072, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 424]
!462 = metadata !{i32 786688, metadata !463, metadata !"shm_zone", metadata !6, i32 426, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shm_zone] [line 426]
!463 = metadata !{i32 786443, metadata !5, i32 425, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !6, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!466 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469, metadata !479, metadata !489}
!468 = metadata !{i32 786445, metadata !466, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!469 = metadata !{i32 786445, metadata !466, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !470} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!470 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !471} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!471 = metadata !{i32 786451, null, metadata !"", metadata !472, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !473, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!472 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!473 = metadata !{metadata !474, metadata !475, metadata !476, metadata !477, metadata !478}
!474 = metadata !{i32 786445, metadata !471, metadata !"addr", metadata !472, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!475 = metadata !{i32 786445, metadata !471, metadata !"size", metadata !472, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!476 = metadata !{i32 786445, metadata !471, metadata !"name", metadata !472, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!477 = metadata !{i32 786445, metadata !471, metadata !"log", metadata !472, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!478 = metadata !{i32 786445, metadata !471, metadata !"exists", metadata !472, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!479 = metadata !{i32 786445, metadata !466, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !480} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!480 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !481} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!481 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !482} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!482 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !483, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!483 = metadata !{metadata !484, metadata !487, metadata !24}
!484 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !485} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!485 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !486} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!486 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!487 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!488 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!489 = metadata !{i32 786445, metadata !466, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!490 = metadata !{i32 786688, metadata !463, metadata !"lccf", metadata !6, i32 427, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lccf] [line 427]
!491 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !492} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_conn_conf_t]
!492 = metadata !{i32 786454, null, metadata !"ngx_http_limit_conn_conf_t", metadata !6, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !493} ; [ DW_TAG_typedef ] [ngx_http_limit_conn_conf_t] [line 25, size 0, align 0, offset 0] [from ]
!493 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 23, i64 192, i64 32, i32 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 192, align 32, offset 0] [from ]
!494 = metadata !{metadata !495, metadata !496}
!495 = metadata !{i32 786445, metadata !493, metadata !"limits", metadata !6, i32 24, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [limits] [line 24, size 160, align 32, offset 0] [from ngx_array_t]
!496 = metadata !{i32 786445, metadata !493, metadata !"log_level", metadata !6, i32 25, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 25, size 32, align 32, offset 160] [from ngx_uint_t]
!497 = metadata !{i32 786688, metadata !463, metadata !"limit", metadata !6, i32 428, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 428]
!498 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !499} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_conn_limit_t]
!499 = metadata !{i32 786454, null, metadata !"ngx_http_limit_conn_limit_t", metadata !6, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !500} ; [ DW_TAG_typedef ] [ngx_http_limit_conn_limit_t] [line 22, size 0, align 0, offset 0] [from ]
!500 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 20, i64 64, i64 32, i32 0, i32 0, null, metadata !501, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 20, size 64, align 32, offset 0] [from ]
!501 = metadata !{metadata !502, metadata !503}
!502 = metadata !{i32 786445, metadata !500, metadata !"shm_zone", metadata !6, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !464} ; [ DW_TAG_member ] [shm_zone] [line 21, size 32, align 32, offset 0] [from ]
!503 = metadata !{i32 786445, metadata !500, metadata !"conn", metadata !6, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [conn] [line 22, size 32, align 32, offset 32] [from ngx_uint_t]
!504 = metadata !{i32 786688, metadata !463, metadata !"limits", metadata !6, i32 429, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limits] [line 429]
!505 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 430, metadata !506, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 430]
!506 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!507 = metadata !{i32 786688, metadata !463, metadata !"n", metadata !6, i32 431, metadata !484, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 431]
!508 = metadata !{i32 786688, metadata !463, metadata !"i", metadata !6, i32 432, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 432]
!509 = metadata !{i32 786478, i32 0, metadata !21, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !21, i32 32, metadata !510, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !512, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!511 = metadata !{metadata !484, metadata !18, metadata !34, metadata !26, metadata !30}
!512 = metadata !{metadata !513}
!513 = metadata !{metadata !514, metadata !515, metadata !516, metadata !517}
!514 = metadata !{i32 786689, metadata !509, metadata !"array", metadata !21, i32 16777248, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!515 = metadata !{i32 786689, metadata !509, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!516 = metadata !{i32 786689, metadata !509, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!517 = metadata !{i32 786689, metadata !509, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!518 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_zone", metadata !"ngx_http_limit_zone", metadata !"", metadata !6, i32 378, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_zone, null, null, metadata !519, i32 379} ; [ DW_TAG_subprogram ] [line 378] [local] [def] [scope 379] [ngx_http_limit_zone]
!519 = metadata !{metadata !520}
!520 = metadata !{metadata !521, metadata !522, metadata !523, metadata !524, metadata !526, metadata !527, metadata !528}
!521 = metadata !{i32 786689, metadata !518, metadata !"cf", metadata !6, i32 16777594, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 378]
!522 = metadata !{i32 786689, metadata !518, metadata !"cmd", metadata !6, i32 33554810, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 378]
!523 = metadata !{i32 786689, metadata !518, metadata !"conf", metadata !6, i32 50332026, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 378]
!524 = metadata !{i32 786688, metadata !525, metadata !"n", metadata !6, i32 380, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 380]
!525 = metadata !{i32 786443, metadata !518, i32 379, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!526 = metadata !{i32 786688, metadata !525, metadata !"value", metadata !6, i32 381, metadata !506, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 381]
!527 = metadata !{i32 786688, metadata !525, metadata !"shm_zone", metadata !6, i32 382, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shm_zone] [line 382]
!528 = metadata !{i32 786688, metadata !525, metadata !"ctx", metadata !6, i32 383, metadata !529, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 383]
!529 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !530} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_conn_ctx_t]
!530 = metadata !{i32 786454, null, metadata !"ngx_http_limit_conn_ctx_t", metadata !6, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !531} ; [ DW_TAG_typedef ] [ngx_http_limit_conn_ctx_t] [line 19, size 0, align 0, offset 0] [from ]
!531 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 16, i64 128, i64 32, i32 0, i32 0, null, metadata !532, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 128, align 32, offset 0] [from ]
!532 = metadata !{metadata !533, metadata !545, metadata !546}
!533 = metadata !{i32 786445, metadata !531, metadata !"rbtree", metadata !6, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !534} ; [ DW_TAG_member ] [rbtree] [line 17, size 32, align 32, offset 0] [from ]
!534 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !535} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_t]
!535 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !536} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!536 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !537, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!537 = metadata !{metadata !538, metadata !539, metadata !540}
!538 = metadata !{i32 786445, metadata !536, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!539 = metadata !{i32 786445, metadata !536, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!540 = metadata !{i32 786445, metadata !536, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !541} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!541 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!542 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !543} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!543 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !544, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!544 = metadata !{null, metadata !266, metadata !266, metadata !266}
!545 = metadata !{i32 786445, metadata !531, metadata !"index", metadata !6, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !484} ; [ DW_TAG_member ] [index] [line 18, size 32, align 32, offset 32] [from ngx_int_t]
!546 = metadata !{i32 786445, metadata !531, metadata !"var", metadata !6, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [var] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!547 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_init_zone", metadata !"ngx_http_limit_conn_init_zone", metadata !"", metadata !6, i32 229, metadata !482, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_shm_zone_s*, i8*)* @ngx_http_limit_conn_init_zone, null, null, metadata !548, i32 230} ; [ DW_TAG_subprogram ] [line 229] [local] [def] [scope 230] [ngx_http_limit_conn_init_zone]
!548 = metadata !{metadata !549}
!549 = metadata !{metadata !550, metadata !551, metadata !552, metadata !554, metadata !555, metadata !606, metadata !607, metadata !608, metadata !611}
!550 = metadata !{i32 786689, metadata !547, metadata !"shm_zone", metadata !6, i32 16777445, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shm_zone] [line 229]
!551 = metadata !{i32 786689, metadata !547, metadata !"data", metadata !6, i32 33554661, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 229]
!552 = metadata !{i32 786688, metadata !553, metadata !"octx", metadata !6, i32 231, metadata !529, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [octx] [line 231]
!553 = metadata !{i32 786443, metadata !547, i32 230, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!554 = metadata !{i32 786688, metadata !553, metadata !"len", metadata !6, i32 232, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 232]
!555 = metadata !{i32 786688, metadata !553, metadata !"shpool", metadata !6, i32 233, metadata !556, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shpool] [line 233]
!556 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !557} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!557 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !6, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !558} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!558 = metadata !{i32 786451, null, metadata !"", metadata !559, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !560, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!559 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!560 = metadata !{metadata !561, metadata !570, metadata !571, metadata !572, metadata !580, metadata !581, metadata !582, metadata !583, metadata !602, metadata !603, metadata !604, metadata !605}
!561 = metadata !{i32 786445, metadata !558, metadata !"lock", metadata !559, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !562} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!562 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !559, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !563} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!563 = metadata !{i32 786451, null, metadata !"", metadata !564, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !565, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!564 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!565 = metadata !{metadata !566, metadata !569}
!566 = metadata !{i32 786445, metadata !563, metadata !"lock", metadata !564, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !567} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!567 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !564, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !568} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!568 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!569 = metadata !{i32 786445, metadata !563, metadata !"wait", metadata !564, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !567} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!570 = metadata !{i32 786445, metadata !558, metadata !"min_size", metadata !559, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!571 = metadata !{i32 786445, metadata !558, metadata !"min_shift", metadata !559, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!572 = metadata !{i32 786445, metadata !558, metadata !"pages", metadata !559, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !573} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!573 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !574} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!574 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !559, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !575} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!575 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !559, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!576 = metadata !{metadata !577, metadata !578, metadata !579}
!577 = metadata !{i32 786445, metadata !575, metadata !"slab", metadata !559, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!578 = metadata !{i32 786445, metadata !575, metadata !"next", metadata !559, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !573} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!579 = metadata !{i32 786445, metadata !575, metadata !"prev", metadata !559, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!580 = metadata !{i32 786445, metadata !558, metadata !"free", metadata !559, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !574} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!581 = metadata !{i32 786445, metadata !558, metadata !"start", metadata !559, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!582 = metadata !{i32 786445, metadata !558, metadata !"end", metadata !559, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!583 = metadata !{i32 786445, metadata !558, metadata !"mutex", metadata !559, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !584} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!584 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !559, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !585} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!585 = metadata !{i32 786451, null, metadata !"", metadata !564, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !586, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!586 = metadata !{metadata !587, metadata !589, metadata !590, metadata !591, metadata !601}
!587 = metadata !{i32 786445, metadata !585, metadata !"lock", metadata !564, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !588} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!588 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !567} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!589 = metadata !{i32 786445, metadata !585, metadata !"wait", metadata !564, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !588} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!590 = metadata !{i32 786445, metadata !585, metadata !"semaphore", metadata !564, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!591 = metadata !{i32 786445, metadata !585, metadata !"sem", metadata !564, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !592} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!592 = metadata !{i32 786454, null, metadata !"sem_t", metadata !564, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !593} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!593 = metadata !{i32 786455, null, metadata !"", metadata !594, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !595, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!594 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!595 = metadata !{metadata !596, metadata !600}
!596 = metadata !{i32 786445, metadata !593, metadata !"__size", metadata !594, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !597} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!597 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !598, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!598 = metadata !{metadata !599}
!599 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!600 = metadata !{i32 786445, metadata !593, metadata !"__align", metadata !594, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!601 = metadata !{i32 786445, metadata !585, metadata !"spin", metadata !564, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!602 = metadata !{i32 786445, metadata !558, metadata !"log_ctx", metadata !559, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!603 = metadata !{i32 786445, metadata !558, metadata !"zero", metadata !559, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!604 = metadata !{i32 786445, metadata !558, metadata !"data", metadata !559, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!605 = metadata !{i32 786445, metadata !558, metadata !"addr", metadata !559, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!606 = metadata !{i32 786688, metadata !553, metadata !"sentinel", metadata !6, i32 234, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sentinel] [line 234]
!607 = metadata !{i32 786688, metadata !553, metadata !"ctx", metadata !6, i32 235, metadata !529, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 235]
!608 = metadata !{i32 786688, metadata !609, metadata !"__s1_len", metadata !6, i32 238, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 238]
!609 = metadata !{i32 786443, metadata !610, i32 238, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!610 = metadata !{i32 786443, metadata !553, i32 237, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!611 = metadata !{i32 786688, metadata !609, metadata !"__s2_len", metadata !6, i32 238, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 238]
!612 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_rbtree_insert_value", metadata !"ngx_http_limit_conn_rbtree_insert_value", metadata !"", metadata !6, i32 139, metadata !543, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* @ngx_http_limit_conn_rbtree_insert_value, null, null, metadata !613, i32 140} ; [ DW_TAG_subprogram ] [line 139] [local] [def] [scope 140] [ngx_http_limit_conn_rbtree_insert_value]
!613 = metadata !{metadata !614}
!614 = metadata !{metadata !615, metadata !616, metadata !617, metadata !618, metadata !621, metadata !635}
!615 = metadata !{i32 786689, metadata !612, metadata !"temp", metadata !6, i32 16777355, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [temp] [line 139]
!616 = metadata !{i32 786689, metadata !612, metadata !"node", metadata !6, i32 33554571, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 139]
!617 = metadata !{i32 786689, metadata !612, metadata !"sentinel", metadata !6, i32 50331787, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sentinel] [line 139]
!618 = metadata !{i32 786688, metadata !619, metadata !"p", metadata !6, i32 141, metadata !620, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 141]
!619 = metadata !{i32 786443, metadata !612, i32 140, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!620 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!621 = metadata !{i32 786688, metadata !619, metadata !"lcn", metadata !6, i32 142, metadata !622, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcn] [line 142]
!622 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !623} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_conn_node_t]
!623 = metadata !{i32 786454, null, metadata !"ngx_http_limit_conn_node_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !624} ; [ DW_TAG_typedef ] [ngx_http_limit_conn_node_t] [line 12, size 0, align 0, offset 0] [from ]
!624 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 8, i64 48, i64 16, i32 0, i32 0, null, metadata !625, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 8, size 48, align 16, offset 0] [from ]
!625 = metadata !{metadata !626, metadata !627, metadata !628, metadata !631}
!626 = metadata !{i32 786445, metadata !624, metadata !"color", metadata !6, i32 9, i64 8, i64 8, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [color] [line 9, size 8, align 8, offset 0] [from u_char]
!627 = metadata !{i32 786445, metadata !624, metadata !"len", metadata !6, i32 10, i64 8, i64 8, i64 8, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 10, size 8, align 8, offset 8] [from u_char]
!628 = metadata !{i32 786445, metadata !624, metadata !"conn", metadata !6, i32 11, i64 16, i64 16, i64 16, i32 0, metadata !629} ; [ DW_TAG_member ] [conn] [line 11, size 16, align 16, offset 16] [from u_short]
!629 = metadata !{i32 786454, null, metadata !"u_short", metadata !6, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !630} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!630 = metadata !{i32 786454, null, metadata !"__u_short", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!631 = metadata !{i32 786445, metadata !624, metadata !"data", metadata !6, i32 12, i64 8, i64 8, i64 32, i32 0, metadata !632} ; [ DW_TAG_member ] [data] [line 12, size 8, align 8, offset 32] [from ]
!632 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !633, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!633 = metadata !{metadata !634}
!634 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!635 = metadata !{i32 786688, metadata !619, metadata !"lcnt", metadata !6, i32 143, metadata !622, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcnt] [line 143]
!636 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_zone", metadata !"ngx_http_limit_conn_zone", metadata !"", metadata !6, i32 303, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_conn_zone, null, null, metadata !637, i32 304} ; [ DW_TAG_subprogram ] [line 303] [local] [def] [scope 304] [ngx_http_limit_conn_zone]
!637 = metadata !{metadata !638}
!638 = metadata !{metadata !639, metadata !640, metadata !641, metadata !642, metadata !644, metadata !645, metadata !646, metadata !647, metadata !648, metadata !649, metadata !650}
!639 = metadata !{i32 786689, metadata !636, metadata !"cf", metadata !6, i32 16777519, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 303]
!640 = metadata !{i32 786689, metadata !636, metadata !"cmd", metadata !6, i32 33554735, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 303]
!641 = metadata !{i32 786689, metadata !636, metadata !"conf", metadata !6, i32 50331951, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 303]
!642 = metadata !{i32 786688, metadata !643, metadata !"p", metadata !6, i32 305, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 305]
!643 = metadata !{i32 786443, metadata !636, i32 304, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!644 = metadata !{i32 786688, metadata !643, metadata !"size", metadata !6, i32 306, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 306]
!645 = metadata !{i32 786688, metadata !643, metadata !"value", metadata !6, i32 307, metadata !506, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 307]
!646 = metadata !{i32 786688, metadata !643, metadata !"name", metadata !6, i32 308, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 308]
!647 = metadata !{i32 786688, metadata !643, metadata !"s", metadata !6, i32 309, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 309]
!648 = metadata !{i32 786688, metadata !643, metadata !"i", metadata !6, i32 310, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 310]
!649 = metadata !{i32 786688, metadata !643, metadata !"shm_zone", metadata !6, i32 311, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shm_zone] [line 311]
!650 = metadata !{i32 786688, metadata !643, metadata !"ctx", metadata !6, i32 312, metadata !529, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 312]
!651 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_merge_conf", metadata !"ngx_http_limit_conn_merge_conf", metadata !"", metadata !6, i32 289, metadata !652, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_limit_conn_merge_conf, null, null, metadata !654, i32 290} ; [ DW_TAG_subprogram ] [line 289] [local] [def] [scope 290] [ngx_http_limit_conn_merge_conf]
!652 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!653 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!654 = metadata !{metadata !655}
!655 = metadata !{metadata !656, metadata !657, metadata !658, metadata !659, metadata !661}
!656 = metadata !{i32 786689, metadata !651, metadata !"cf", metadata !6, i32 16777505, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 289]
!657 = metadata !{i32 786689, metadata !651, metadata !"parent", metadata !6, i32 33554721, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 289]
!658 = metadata !{i32 786689, metadata !651, metadata !"child", metadata !6, i32 50331937, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 289]
!659 = metadata !{i32 786688, metadata !660, metadata !"prev", metadata !6, i32 291, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 291]
!660 = metadata !{i32 786443, metadata !651, i32 290, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!661 = metadata !{i32 786688, metadata !660, metadata !"conf", metadata !6, i32 292, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 292]
!662 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_create_conf", metadata !"ngx_http_limit_conn_create_conf", metadata !"", metadata !6, i32 273, metadata !663, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_limit_conn_create_conf, null, null, metadata !665, i32 274} ; [ DW_TAG_subprogram ] [line 273] [local] [def] [scope 274] [ngx_http_limit_conn_create_conf]
!663 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !664, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!664 = metadata !{metadata !24, metadata !11}
!665 = metadata !{metadata !666}
!666 = metadata !{metadata !667, metadata !668}
!667 = metadata !{i32 786689, metadata !662, metadata !"cf", metadata !6, i32 16777489, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 273]
!668 = metadata !{i32 786688, metadata !669, metadata !"conf", metadata !6, i32 275, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 275]
!669 = metadata !{i32 786443, metadata !662, i32 274, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!670 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_init", metadata !"ngx_http_limit_conn_init", metadata !"", metadata !6, i32 464, metadata !671, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_limit_conn_init, null, null, metadata !673, i32 465} ; [ DW_TAG_subprogram ] [line 464] [local] [def] [scope 465] [ngx_http_limit_conn_init]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!672 = metadata !{metadata !484, metadata !11}
!673 = metadata !{metadata !674}
!674 = metadata !{metadata !675, metadata !676, metadata !1705}
!675 = metadata !{i32 786689, metadata !670, metadata !"cf", metadata !6, i32 16777680, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 464]
!676 = metadata !{i32 786688, metadata !677, metadata !"h", metadata !6, i32 466, metadata !678, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 466]
!677 = metadata !{i32 786443, metadata !670, i32 465, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!678 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !679} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_handler_pt]
!679 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !6, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !680} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!680 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !681} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!682 = metadata !{metadata !484, metadata !683}
!683 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !684} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!684 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !685} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!685 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !686, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !687, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!686 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!687 = metadata !{metadata !688, metadata !690, metadata !691, metadata !692, metadata !693, metadata !694, metadata !695, metadata !702, metadata !703, metadata !808, metadata !1228, metadata !1229, metadata !1230, metadata !1231, metadata !1267, metadata !1296, metadata !1308, metadata !1309, metadata !1310, metadata !1311, metadata !1312, metadata !1313, metadata !1314, metadata !1315, metadata !1316, metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1321, metadata !1322, metadata !1323, metadata !1331, metadata !1342, metadata !1349, metadata !1575, metadata !1576, metadata !1577, metadata !1578, metadata !1590, metadata !1591, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597, metadata !1598, metadata !1610, metadata !1615, metadata !1623, metadata !1624, metadata !1625, metadata !1626, metadata !1627, metadata !1628, metadata !1629, metadata !1630, metadata !1631, metadata !1632, metadata !1633, metadata !1634, metadata !1635, metadata !1636, metadata !1637, metadata !1638, metadata !1639, metadata !1640, metadata !1641, metadata !1642, metadata !1643, metadata !1644, metadata !1645, metadata !1646, metadata !1647, metadata !1648, metadata !1649, metadata !1650, metadata !1651, metadata !1652, metadata !1653, metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1659, metadata !1660, metadata !1661, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1670, metadata !1671, metadata !1672, metadata !1673, metadata !1674, metadata !1675, metadata !1676, metadata !1677, metadata !1678, metadata !1679, metadata !1680, metadata !1681, metadata !1682, metadata !1686, metadata !1687, metadata !1688, metadata !1689, metadata !1690, metadata !1691, metadata !1692, metadata !1693, metadata !1694, metadata !1695, metadata !1696, metadata !1697, metadata !1698, metadata !1699, metadata !1700, metadata !1701, metadata !1702, metadata !1703, metadata !1704}
!688 = metadata !{i32 786445, metadata !685, metadata !"signature", metadata !686, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !689} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!689 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !686, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!690 = metadata !{i32 786445, metadata !685, metadata !"connection", metadata !686, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!691 = metadata !{i32 786445, metadata !685, metadata !"ctx", metadata !686, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!692 = metadata !{i32 786445, metadata !685, metadata !"main_conf", metadata !686, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!693 = metadata !{i32 786445, metadata !685, metadata !"srv_conf", metadata !686, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!694 = metadata !{i32 786445, metadata !685, metadata !"loc_conf", metadata !686, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!695 = metadata !{i32 786445, metadata !685, metadata !"read_event_handler", metadata !686, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !696} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!696 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !686, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!697 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !698} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!698 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !699, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!699 = metadata !{null, metadata !700}
!700 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !701} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!701 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !686, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !685} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!702 = metadata !{i32 786445, metadata !685, metadata !"write_event_handler", metadata !686, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !696} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!703 = metadata !{i32 786445, metadata !685, metadata !"cache", metadata !686, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !704} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!704 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !705} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!705 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !686, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !706} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!706 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !707, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !708, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!707 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!708 = metadata !{metadata !709, metadata !710, metadata !711, metadata !712, metadata !714, metadata !717, metadata !719, metadata !720, metadata !721, metadata !722, metadata !723, metadata !724, metadata !725, metadata !726, metadata !727, metadata !728, metadata !729, metadata !776, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807}
!709 = metadata !{i32 786445, metadata !706, metadata !"file", metadata !707, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!710 = metadata !{i32 786445, metadata !706, metadata !"keys", metadata !707, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!711 = metadata !{i32 786445, metadata !706, metadata !"crc32", metadata !707, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !689} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!712 = metadata !{i32 786445, metadata !706, metadata !"key", metadata !707, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !713} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!713 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !598, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!714 = metadata !{i32 786445, metadata !706, metadata !"uniq", metadata !707, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !715} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!715 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !707, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !716} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!716 = metadata !{i32 786454, null, metadata !"ino_t", metadata !707, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!717 = metadata !{i32 786445, metadata !706, metadata !"valid_sec", metadata !707, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !718} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!718 = metadata !{i32 786454, null, metadata !"time_t", metadata !707, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!719 = metadata !{i32 786445, metadata !706, metadata !"last_modified", metadata !707, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !718} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!720 = metadata !{i32 786445, metadata !706, metadata !"date", metadata !707, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !718} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!721 = metadata !{i32 786445, metadata !706, metadata !"header_start", metadata !707, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!722 = metadata !{i32 786445, metadata !706, metadata !"body_start", metadata !707, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!723 = metadata !{i32 786445, metadata !706, metadata !"length", metadata !707, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!724 = metadata !{i32 786445, metadata !706, metadata !"fs_size", metadata !707, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!725 = metadata !{i32 786445, metadata !706, metadata !"min_uses", metadata !707, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!726 = metadata !{i32 786445, metadata !706, metadata !"error", metadata !707, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!727 = metadata !{i32 786445, metadata !706, metadata !"valid_msec", metadata !707, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!728 = metadata !{i32 786445, metadata !706, metadata !"buf", metadata !707, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!729 = metadata !{i32 786445, metadata !706, metadata !"file_cache", metadata !707, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !730} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!730 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !731} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!731 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !707, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !732} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!732 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !707, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !733, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!733 = metadata !{metadata !734, metadata !745, metadata !746, metadata !767, metadata !768, metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !775}
!734 = metadata !{i32 786445, metadata !732, metadata !"sh", metadata !707, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !735} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!735 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !736} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!736 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !707, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !737} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!737 = metadata !{i32 786451, null, metadata !"", metadata !707, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !738, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!738 = metadata !{metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744}
!739 = metadata !{i32 786445, metadata !737, metadata !"rbtree", metadata !707, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !535} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!740 = metadata !{i32 786445, metadata !737, metadata !"sentinel", metadata !707, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!741 = metadata !{i32 786445, metadata !737, metadata !"queue", metadata !707, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!742 = metadata !{i32 786445, metadata !737, metadata !"cold", metadata !707, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !567} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!743 = metadata !{i32 786445, metadata !737, metadata !"loading", metadata !707, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !567} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!744 = metadata !{i32 786445, metadata !737, metadata !"size", metadata !707, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!745 = metadata !{i32 786445, metadata !732, metadata !"shpool", metadata !707, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !556} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!746 = metadata !{i32 786445, metadata !732, metadata !"path", metadata !707, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !747} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!747 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !748} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!748 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !707, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !749} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!749 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !750, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!750 = metadata !{metadata !751, metadata !752, metadata !753, metadata !757, metadata !762, metadata !764, metadata !765, metadata !766}
!751 = metadata !{i32 786445, metadata !749, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!752 = metadata !{i32 786445, metadata !749, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!753 = metadata !{i32 786445, metadata !749, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !754} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!754 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !755, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!755 = metadata !{metadata !756}
!756 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!757 = metadata !{i32 786445, metadata !749, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !758} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!758 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !759} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!759 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !760} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!760 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !761, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!761 = metadata !{metadata !718, metadata !24}
!762 = metadata !{i32 786445, metadata !749, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !763} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!763 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!764 = metadata !{i32 786445, metadata !749, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!765 = metadata !{i32 786445, metadata !749, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!766 = metadata !{i32 786445, metadata !749, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!767 = metadata !{i32 786445, metadata !732, metadata !"max_size", metadata !707, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!768 = metadata !{i32 786445, metadata !732, metadata !"bsize", metadata !707, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!769 = metadata !{i32 786445, metadata !732, metadata !"inactive", metadata !707, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !718} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!770 = metadata !{i32 786445, metadata !732, metadata !"files", metadata !707, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!771 = metadata !{i32 786445, metadata !732, metadata !"loader_files", metadata !707, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!772 = metadata !{i32 786445, metadata !732, metadata !"last", metadata !707, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!773 = metadata !{i32 786445, metadata !732, metadata !"loader_sleep", metadata !707, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!774 = metadata !{i32 786445, metadata !732, metadata !"loader_threshold", metadata !707, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!775 = metadata !{i32 786445, metadata !732, metadata !"shm_zone", metadata !707, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !464} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!776 = metadata !{i32 786445, metadata !706, metadata !"node", metadata !707, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !777} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!777 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !778} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!778 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !707, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !779} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!779 = metadata !{i32 786451, null, metadata !"", metadata !707, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !780, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!780 = metadata !{metadata !781, metadata !782, metadata !783, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798}
!781 = metadata !{i32 786445, metadata !779, metadata !"node", metadata !707, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!782 = metadata !{i32 786445, metadata !779, metadata !"queue", metadata !707, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!783 = metadata !{i32 786445, metadata !779, metadata !"key", metadata !707, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !784} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!784 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !785, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!785 = metadata !{metadata !786}
!786 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!787 = metadata !{i32 786445, metadata !779, metadata !"count", metadata !707, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!788 = metadata !{i32 786445, metadata !779, metadata !"uses", metadata !707, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!789 = metadata !{i32 786445, metadata !779, metadata !"valid_msec", metadata !707, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!790 = metadata !{i32 786445, metadata !779, metadata !"error", metadata !707, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!791 = metadata !{i32 786445, metadata !779, metadata !"exists", metadata !707, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!792 = metadata !{i32 786445, metadata !779, metadata !"updating", metadata !707, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!793 = metadata !{i32 786445, metadata !779, metadata !"deleting", metadata !707, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!794 = metadata !{i32 786445, metadata !779, metadata !"uniq", metadata !707, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !715} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!795 = metadata !{i32 786445, metadata !779, metadata !"expire", metadata !707, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !718} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!796 = metadata !{i32 786445, metadata !779, metadata !"valid_sec", metadata !707, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !718} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!797 = metadata !{i32 786445, metadata !779, metadata !"body_start", metadata !707, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!798 = metadata !{i32 786445, metadata !779, metadata !"fs_size", metadata !707, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!799 = metadata !{i32 786445, metadata !706, metadata !"lock_timeout", metadata !707, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!800 = metadata !{i32 786445, metadata !706, metadata !"wait_time", metadata !707, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!801 = metadata !{i32 786445, metadata !706, metadata !"wait_event", metadata !707, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!802 = metadata !{i32 786445, metadata !706, metadata !"lock", metadata !707, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!803 = metadata !{i32 786445, metadata !706, metadata !"waiting", metadata !707, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!804 = metadata !{i32 786445, metadata !706, metadata !"updated", metadata !707, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!805 = metadata !{i32 786445, metadata !706, metadata !"updating", metadata !707, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!806 = metadata !{i32 786445, metadata !706, metadata !"exists", metadata !707, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!807 = metadata !{i32 786445, metadata !706, metadata !"temp_file", metadata !707, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!808 = metadata !{i32 786445, metadata !685, metadata !"upstream", metadata !686, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !809} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!809 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !810} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!810 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !686, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !811} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!811 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !812, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !813, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!812 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!813 = metadata !{metadata !814, metadata !821, metadata !822, metadata !858, metadata !934, metadata !935, metadata !956, metadata !965, metadata !1057, metadata !1093, metadata !1166, metadata !1167, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1175, metadata !1179, metadata !1180, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1188, metadata !1192, metadata !1196, metadata !1200, metadata !1201, metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1219, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1224, metadata !1225, metadata !1226, metadata !1227}
!814 = metadata !{i32 786445, metadata !811, metadata !"read_event_handler", metadata !812, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !815} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!815 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !812, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !816} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!816 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !817} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!817 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !818, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!818 = metadata !{null, metadata !700, metadata !819}
!819 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !820} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!820 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !812, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !811} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!821 = metadata !{i32 786445, metadata !811, metadata !"write_event_handler", metadata !812, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !815} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!822 = metadata !{i32 786445, metadata !811, metadata !"peer", metadata !812, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !823} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!823 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !812, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !824} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!824 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !825, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !826, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!825 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!826 = metadata !{metadata !827, metadata !828, metadata !829, metadata !830, metadata !831, metadata !832, metadata !839, metadata !844, metadata !845, metadata !854, metadata !855, metadata !856, metadata !857}
!827 = metadata !{i32 786445, metadata !824, metadata !"connection", metadata !825, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!828 = metadata !{i32 786445, metadata !824, metadata !"sockaddr", metadata !825, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!829 = metadata !{i32 786445, metadata !824, metadata !"socklen", metadata !825, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!830 = metadata !{i32 786445, metadata !824, metadata !"name", metadata !825, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !506} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!831 = metadata !{i32 786445, metadata !824, metadata !"tries", metadata !825, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!832 = metadata !{i32 786445, metadata !824, metadata !"get", metadata !825, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !833} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!833 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !825, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !834} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!834 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !835} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!835 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !836, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!836 = metadata !{metadata !484, metadata !837, metadata !24}
!837 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !838} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!838 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !825, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !824} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!839 = metadata !{i32 786445, metadata !824, metadata !"free", metadata !825, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !840} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!840 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !825, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !841} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!841 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !842} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!842 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !843, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!843 = metadata !{null, metadata !837, metadata !24, metadata !26}
!844 = metadata !{i32 786445, metadata !824, metadata !"data", metadata !825, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!845 = metadata !{i32 786445, metadata !824, metadata !"local", metadata !825, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !846} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!846 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !847} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!847 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !825, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !848} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!848 = metadata !{i32 786451, null, metadata !"", metadata !849, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !850, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!849 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!850 = metadata !{metadata !851, metadata !852, metadata !853}
!851 = metadata !{i32 786445, metadata !848, metadata !"sockaddr", metadata !849, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!852 = metadata !{i32 786445, metadata !848, metadata !"socklen", metadata !849, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!853 = metadata !{i32 786445, metadata !848, metadata !"name", metadata !849, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!854 = metadata !{i32 786445, metadata !824, metadata !"rcvbuf", metadata !825, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!855 = metadata !{i32 786445, metadata !824, metadata !"log", metadata !825, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!856 = metadata !{i32 786445, metadata !824, metadata !"cached", metadata !825, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!857 = metadata !{i32 786445, metadata !824, metadata !"log_error", metadata !825, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!858 = metadata !{i32 786445, metadata !811, metadata !"pipe", metadata !812, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !859} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!859 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !860} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!860 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !812, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !861} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!861 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !862, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !863, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!862 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!863 = metadata !{metadata !864, metadata !865, metadata !866, metadata !867, metadata !868, metadata !870, metadata !871, metadata !872, metadata !873, metadata !880, metadata !881, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !905, metadata !906, metadata !907, metadata !908, metadata !909, metadata !910, metadata !911, metadata !912, metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !933}
!864 = metadata !{i32 786445, metadata !861, metadata !"upstream", metadata !862, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!865 = metadata !{i32 786445, metadata !861, metadata !"downstream", metadata !862, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!866 = metadata !{i32 786445, metadata !861, metadata !"free_raw_bufs", metadata !862, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!867 = metadata !{i32 786445, metadata !861, metadata !"in", metadata !862, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!868 = metadata !{i32 786445, metadata !861, metadata !"last_in", metadata !862, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !869} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!869 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!870 = metadata !{i32 786445, metadata !861, metadata !"out", metadata !862, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!871 = metadata !{i32 786445, metadata !861, metadata !"free", metadata !862, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!872 = metadata !{i32 786445, metadata !861, metadata !"busy", metadata !862, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!873 = metadata !{i32 786445, metadata !861, metadata !"input_filter", metadata !862, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !874} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!874 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !862, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !875} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!875 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !876} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!876 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !877, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!877 = metadata !{metadata !484, metadata !878, metadata !62}
!878 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !879} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!879 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !862, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !861} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!880 = metadata !{i32 786445, metadata !861, metadata !"input_ctx", metadata !862, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!881 = metadata !{i32 786445, metadata !861, metadata !"output_filter", metadata !862, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !882} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!882 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !862, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !883} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!883 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !884} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!884 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !885, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!885 = metadata !{metadata !484, metadata !24, metadata !56}
!886 = metadata !{i32 786445, metadata !861, metadata !"output_ctx", metadata !862, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!887 = metadata !{i32 786445, metadata !861, metadata !"read", metadata !862, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!888 = metadata !{i32 786445, metadata !861, metadata !"cacheable", metadata !862, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!889 = metadata !{i32 786445, metadata !861, metadata !"single_buf", metadata !862, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!890 = metadata !{i32 786445, metadata !861, metadata !"free_bufs", metadata !862, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!891 = metadata !{i32 786445, metadata !861, metadata !"upstream_done", metadata !862, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!892 = metadata !{i32 786445, metadata !861, metadata !"upstream_error", metadata !862, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!893 = metadata !{i32 786445, metadata !861, metadata !"upstream_eof", metadata !862, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!894 = metadata !{i32 786445, metadata !861, metadata !"upstream_blocked", metadata !862, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!895 = metadata !{i32 786445, metadata !861, metadata !"downstream_done", metadata !862, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!896 = metadata !{i32 786445, metadata !861, metadata !"downstream_error", metadata !862, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!897 = metadata !{i32 786445, metadata !861, metadata !"cyclic_temp_file", metadata !862, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!898 = metadata !{i32 786445, metadata !861, metadata !"allocated", metadata !862, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !484} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!899 = metadata !{i32 786445, metadata !861, metadata !"bufs", metadata !862, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !900} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!900 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !862, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !901} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!901 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !902, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!902 = metadata !{metadata !903, metadata !904}
!903 = metadata !{i32 786445, metadata !901, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !484} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!904 = metadata !{i32 786445, metadata !901, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!905 = metadata !{i32 786445, metadata !861, metadata !"tag", metadata !862, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!906 = metadata !{i32 786445, metadata !861, metadata !"busy_size", metadata !862, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!907 = metadata !{i32 786445, metadata !861, metadata !"read_length", metadata !862, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!908 = metadata !{i32 786445, metadata !861, metadata !"length", metadata !862, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!909 = metadata !{i32 786445, metadata !861, metadata !"max_temp_file_size", metadata !862, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!910 = metadata !{i32 786445, metadata !861, metadata !"temp_file_write_size", metadata !862, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!911 = metadata !{i32 786445, metadata !861, metadata !"read_timeout", metadata !862, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!912 = metadata !{i32 786445, metadata !861, metadata !"send_timeout", metadata !862, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!913 = metadata !{i32 786445, metadata !861, metadata !"send_lowat", metadata !862, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!914 = metadata !{i32 786445, metadata !861, metadata !"pool", metadata !862, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!915 = metadata !{i32 786445, metadata !861, metadata !"log", metadata !862, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!916 = metadata !{i32 786445, metadata !861, metadata !"preread_bufs", metadata !862, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!917 = metadata !{i32 786445, metadata !861, metadata !"preread_size", metadata !862, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!918 = metadata !{i32 786445, metadata !861, metadata !"buf_to_file", metadata !862, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!919 = metadata !{i32 786445, metadata !861, metadata !"temp_file", metadata !862, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !920} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!920 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !921} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!921 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !862, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !922} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!922 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !923, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!923 = metadata !{metadata !924, metadata !925, metadata !926, metadata !927, metadata !928, metadata !929, metadata !930, metadata !931, metadata !932}
!924 = metadata !{i32 786445, metadata !922, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!925 = metadata !{i32 786445, metadata !922, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!926 = metadata !{i32 786445, metadata !922, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !747} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!927 = metadata !{i32 786445, metadata !922, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!928 = metadata !{i32 786445, metadata !922, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!929 = metadata !{i32 786445, metadata !922, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!930 = metadata !{i32 786445, metadata !922, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!931 = metadata !{i32 786445, metadata !922, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!932 = metadata !{i32 786445, metadata !922, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!933 = metadata !{i32 786445, metadata !861, metadata !"num", metadata !862, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!934 = metadata !{i32 786445, metadata !811, metadata !"request_bufs", metadata !812, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!935 = metadata !{i32 786445, metadata !811, metadata !"output", metadata !812, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !936} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!936 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !812, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !937} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!937 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !938, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!938 = metadata !{metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !955}
!939 = metadata !{i32 786445, metadata !937, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!940 = metadata !{i32 786445, metadata !937, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!941 = metadata !{i32 786445, metadata !937, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!942 = metadata !{i32 786445, metadata !937, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!943 = metadata !{i32 786445, metadata !937, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!944 = metadata !{i32 786445, metadata !937, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!945 = metadata !{i32 786445, metadata !937, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!946 = metadata !{i32 786445, metadata !937, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!947 = metadata !{i32 786445, metadata !937, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!948 = metadata !{i32 786445, metadata !937, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!949 = metadata !{i32 786445, metadata !937, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!950 = metadata !{i32 786445, metadata !937, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !484} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!951 = metadata !{i32 786445, metadata !937, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !900} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!952 = metadata !{i32 786445, metadata !937, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!953 = metadata !{i32 786445, metadata !937, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !954} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!954 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !883} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!955 = metadata !{i32 786445, metadata !937, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!956 = metadata !{i32 786445, metadata !811, metadata !"writer", metadata !812, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !957} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!957 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !812, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !958} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!958 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !959, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!959 = metadata !{metadata !960, metadata !961, metadata !962, metadata !963, metadata !964}
!960 = metadata !{i32 786445, metadata !958, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!961 = metadata !{i32 786445, metadata !958, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !869} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!962 = metadata !{i32 786445, metadata !958, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!963 = metadata !{i32 786445, metadata !958, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!964 = metadata !{i32 786445, metadata !958, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!965 = metadata !{i32 786445, metadata !811, metadata !"conf", metadata !812, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !966} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!966 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !967} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!967 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !812, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !968} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!968 = metadata !{i32 786451, null, metadata !"", metadata !812, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !969, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!969 = metadata !{metadata !970, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1024, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056}
!970 = metadata !{i32 786445, metadata !968, metadata !"upstream", metadata !812, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !971} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!971 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !972} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!972 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !812, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !973} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!973 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !812, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !974, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!974 = metadata !{metadata !975, metadata !990, metadata !991, metadata !992, metadata !993, metadata !994, metadata !995, metadata !996, metadata !999}
!975 = metadata !{i32 786445, metadata !973, metadata !"peer", metadata !812, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !976} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!976 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !812, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !977} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!977 = metadata !{i32 786451, null, metadata !"", metadata !812, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !978, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!978 = metadata !{metadata !979, metadata !984, metadata !989}
!979 = metadata !{i32 786445, metadata !977, metadata !"init_upstream", metadata !812, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !980} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!980 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !812, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !981} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!981 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !982} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!982 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !983, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!983 = metadata !{metadata !484, metadata !11, metadata !971}
!984 = metadata !{i32 786445, metadata !977, metadata !"init", metadata !812, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !985} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!985 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !812, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !986} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!986 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !987} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!987 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !988, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!988 = metadata !{metadata !484, metadata !700, metadata !971}
!989 = metadata !{i32 786445, metadata !977, metadata !"data", metadata !812, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!990 = metadata !{i32 786445, metadata !973, metadata !"srv_conf", metadata !812, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!991 = metadata !{i32 786445, metadata !973, metadata !"servers", metadata !812, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!992 = metadata !{i32 786445, metadata !973, metadata !"flags", metadata !812, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!993 = metadata !{i32 786445, metadata !973, metadata !"host", metadata !812, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!994 = metadata !{i32 786445, metadata !973, metadata !"file_name", metadata !812, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!995 = metadata !{i32 786445, metadata !973, metadata !"line", metadata !812, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!996 = metadata !{i32 786445, metadata !973, metadata !"port", metadata !812, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !997} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!997 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !812, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !998} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!998 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !812, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!999 = metadata !{i32 786445, metadata !973, metadata !"default_port", metadata !812, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !997} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!1000 = metadata !{i32 786445, metadata !968, metadata !"connect_timeout", metadata !812, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!1001 = metadata !{i32 786445, metadata !968, metadata !"send_timeout", metadata !812, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!1002 = metadata !{i32 786445, metadata !968, metadata !"read_timeout", metadata !812, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!1003 = metadata !{i32 786445, metadata !968, metadata !"timeout", metadata !812, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!1004 = metadata !{i32 786445, metadata !968, metadata !"send_lowat", metadata !812, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!1005 = metadata !{i32 786445, metadata !968, metadata !"buffer_size", metadata !812, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!1006 = metadata !{i32 786445, metadata !968, metadata !"busy_buffers_size", metadata !812, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!1007 = metadata !{i32 786445, metadata !968, metadata !"max_temp_file_size", metadata !812, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!1008 = metadata !{i32 786445, metadata !968, metadata !"temp_file_write_size", metadata !812, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!1009 = metadata !{i32 786445, metadata !968, metadata !"busy_buffers_size_conf", metadata !812, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!1010 = metadata !{i32 786445, metadata !968, metadata !"max_temp_file_size_conf", metadata !812, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!1011 = metadata !{i32 786445, metadata !968, metadata !"temp_file_write_size_conf", metadata !812, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!1012 = metadata !{i32 786445, metadata !968, metadata !"bufs", metadata !812, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !900} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!1013 = metadata !{i32 786445, metadata !968, metadata !"ignore_headers", metadata !812, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!1014 = metadata !{i32 786445, metadata !968, metadata !"next_upstream", metadata !812, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!1015 = metadata !{i32 786445, metadata !968, metadata !"store_access", metadata !812, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!1016 = metadata !{i32 786445, metadata !968, metadata !"buffering", metadata !812, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !1017} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!1017 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !812, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !485} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!1018 = metadata !{i32 786445, metadata !968, metadata !"pass_request_headers", metadata !812, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !1017} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!1019 = metadata !{i32 786445, metadata !968, metadata !"pass_request_body", metadata !812, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !1017} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!1020 = metadata !{i32 786445, metadata !968, metadata !"ignore_client_abort", metadata !812, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !1017} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!1021 = metadata !{i32 786445, metadata !968, metadata !"intercept_errors", metadata !812, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !1017} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!1022 = metadata !{i32 786445, metadata !968, metadata !"cyclic_temp_file", metadata !812, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !1017} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!1023 = metadata !{i32 786445, metadata !968, metadata !"temp_path", metadata !812, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !747} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!1024 = metadata !{i32 786445, metadata !968, metadata !"hide_headers_hash", metadata !812, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !1025} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!1025 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !812, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1026} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!1026 = metadata !{i32 786451, null, metadata !"", metadata !1027, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1028, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1027 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1028 = metadata !{metadata !1029, metadata !1038}
!1029 = metadata !{i32 786445, metadata !1026, metadata !"buckets", metadata !1027, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1030} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!1030 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1031} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1031 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1032} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!1032 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !1027, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !1033} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!1033 = metadata !{i32 786451, null, metadata !"", metadata !1027, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !1034, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!1034 = metadata !{metadata !1035, metadata !1036, metadata !1037}
!1035 = metadata !{i32 786445, metadata !1033, metadata !"value", metadata !1027, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!1036 = metadata !{i32 786445, metadata !1033, metadata !"len", metadata !1027, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !629} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!1037 = metadata !{i32 786445, metadata !1033, metadata !"name", metadata !1027, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !632} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!1038 = metadata !{i32 786445, metadata !1026, metadata !"size", metadata !1027, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!1039 = metadata !{i32 786445, metadata !968, metadata !"hide_headers", metadata !812, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!1040 = metadata !{i32 786445, metadata !968, metadata !"pass_headers", metadata !812, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!1041 = metadata !{i32 786445, metadata !968, metadata !"local", metadata !812, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !846} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!1042 = metadata !{i32 786445, metadata !968, metadata !"cache", metadata !812, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !464} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!1043 = metadata !{i32 786445, metadata !968, metadata !"cache_min_uses", metadata !812, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!1044 = metadata !{i32 786445, metadata !968, metadata !"cache_use_stale", metadata !812, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!1045 = metadata !{i32 786445, metadata !968, metadata !"cache_methods", metadata !812, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!1046 = metadata !{i32 786445, metadata !968, metadata !"cache_lock", metadata !812, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !1017} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!1047 = metadata !{i32 786445, metadata !968, metadata !"cache_lock_timeout", metadata !812, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!1048 = metadata !{i32 786445, metadata !968, metadata !"cache_valid", metadata !812, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!1049 = metadata !{i32 786445, metadata !968, metadata !"cache_bypass", metadata !812, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!1050 = metadata !{i32 786445, metadata !968, metadata !"no_cache", metadata !812, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!1051 = metadata !{i32 786445, metadata !968, metadata !"store_lengths", metadata !812, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!1052 = metadata !{i32 786445, metadata !968, metadata !"store_values", metadata !812, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!1053 = metadata !{i32 786445, metadata !968, metadata !"store", metadata !812, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!1054 = metadata !{i32 786445, metadata !968, metadata !"intercept_404", metadata !812, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!1055 = metadata !{i32 786445, metadata !968, metadata !"change_buffering", metadata !812, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!1056 = metadata !{i32 786445, metadata !968, metadata !"module", metadata !812, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!1057 = metadata !{i32 786445, metadata !811, metadata !"headers_in", metadata !812, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !1058} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!1058 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !812, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1059} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1059 = metadata !{i32 786451, null, metadata !"", metadata !812, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !1060, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!1060 = metadata !{metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1073, metadata !1074, metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092}
!1061 = metadata !{i32 786445, metadata !1059, metadata !"headers", metadata !812, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!1062 = metadata !{i32 786445, metadata !1059, metadata !"status_n", metadata !812, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!1063 = metadata !{i32 786445, metadata !1059, metadata !"status_line", metadata !812, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!1064 = metadata !{i32 786445, metadata !1059, metadata !"status", metadata !812, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !1065} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!1065 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1066} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!1066 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !812, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1067} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!1067 = metadata !{i32 786451, null, metadata !"", metadata !1027, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !1068, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!1068 = metadata !{metadata !1069, metadata !1070, metadata !1071, metadata !1072}
!1069 = metadata !{i32 786445, metadata !1067, metadata !"hash", metadata !1027, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!1070 = metadata !{i32 786445, metadata !1067, metadata !"key", metadata !1027, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!1071 = metadata !{i32 786445, metadata !1067, metadata !"value", metadata !1027, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!1072 = metadata !{i32 786445, metadata !1067, metadata !"lowcase_key", metadata !1027, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1073 = metadata !{i32 786445, metadata !1059, metadata !"date", metadata !812, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !1065} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1074 = metadata !{i32 786445, metadata !1059, metadata !"server", metadata !812, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !1065} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1075 = metadata !{i32 786445, metadata !1059, metadata !"connection", metadata !812, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !1065} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1076 = metadata !{i32 786445, metadata !1059, metadata !"expires", metadata !812, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !1065} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1077 = metadata !{i32 786445, metadata !1059, metadata !"etag", metadata !812, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !1065} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1078 = metadata !{i32 786445, metadata !1059, metadata !"x_accel_expires", metadata !812, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !1065} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1079 = metadata !{i32 786445, metadata !1059, metadata !"x_accel_redirect", metadata !812, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !1065} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1080 = metadata !{i32 786445, metadata !1059, metadata !"x_accel_limit_rate", metadata !812, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !1065} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1081 = metadata !{i32 786445, metadata !1059, metadata !"content_type", metadata !812, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1082 = metadata !{i32 786445, metadata !1059, metadata !"content_length", metadata !812, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1083 = metadata !{i32 786445, metadata !1059, metadata !"last_modified", metadata !812, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !1065} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1084 = metadata !{i32 786445, metadata !1059, metadata !"location", metadata !812, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !1065} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1085 = metadata !{i32 786445, metadata !1059, metadata !"accept_ranges", metadata !812, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !1065} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1086 = metadata !{i32 786445, metadata !1059, metadata !"www_authenticate", metadata !812, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !1065} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1087 = metadata !{i32 786445, metadata !1059, metadata !"transfer_encoding", metadata !812, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !1065} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1088 = metadata !{i32 786445, metadata !1059, metadata !"content_encoding", metadata !812, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1089 = metadata !{i32 786445, metadata !1059, metadata !"content_length_n", metadata !812, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1090 = metadata !{i32 786445, metadata !1059, metadata !"cache_control", metadata !812, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1091 = metadata !{i32 786445, metadata !1059, metadata !"connection_close", metadata !812, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1092 = metadata !{i32 786445, metadata !1059, metadata !"chunked", metadata !812, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1093 = metadata !{i32 786445, metadata !811, metadata !"resolved", metadata !812, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1094} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1094 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1095} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1095 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !812, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1096} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1096 = metadata !{i32 786451, null, metadata !"", metadata !812, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1097, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1097 = metadata !{metadata !1098, metadata !1099, metadata !1100, metadata !1101, metadata !1102, metadata !1105, metadata !1106, metadata !1107}
!1098 = metadata !{i32 786445, metadata !1096, metadata !"host", metadata !812, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1099 = metadata !{i32 786445, metadata !1096, metadata !"port", metadata !812, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !997} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1100 = metadata !{i32 786445, metadata !1096, metadata !"no_port", metadata !812, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1101 = metadata !{i32 786445, metadata !1096, metadata !"naddrs", metadata !812, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1102 = metadata !{i32 786445, metadata !1096, metadata !"addrs", metadata !812, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1103} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1104} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1104 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !812, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !689} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1105 = metadata !{i32 786445, metadata !1096, metadata !"sockaddr", metadata !812, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1106 = metadata !{i32 786445, metadata !1096, metadata !"socklen", metadata !812, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1107 = metadata !{i32 786445, metadata !1096, metadata !"ctx", metadata !812, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1108} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1108 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1109} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1109 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !812, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1110} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1110 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1111, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1112, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1111 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1112 = metadata !{metadata !1113, metadata !1116, metadata !1139, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154, metadata !1155, metadata !1156, metadata !1161, metadata !1162, metadata !1163, metadata !1164, metadata !1165}
!1113 = metadata !{i32 786445, metadata !1110, metadata !"next", metadata !1111, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1114} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1114 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1115} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1115 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1111, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1110} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1116 = metadata !{i32 786445, metadata !1110, metadata !"resolver", metadata !1111, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1117} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1117 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1118} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1118 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1111, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1119} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1119 = metadata !{i32 786451, null, metadata !"", metadata !1111, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1120, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1120 = metadata !{metadata !1121, metadata !1122, metadata !1123, metadata !1124, metadata !1125, metadata !1126, metadata !1127, metadata !1128, metadata !1129, metadata !1130, metadata !1131, metadata !1132, metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138}
!1121 = metadata !{i32 786445, metadata !1119, metadata !"event", metadata !1111, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1122 = metadata !{i32 786445, metadata !1119, metadata !"dummy", metadata !1111, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1123 = metadata !{i32 786445, metadata !1119, metadata !"log", metadata !1111, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1124 = metadata !{i32 786445, metadata !1119, metadata !"ident", metadata !1111, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !484} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1125 = metadata !{i32 786445, metadata !1119, metadata !"udp_connections", metadata !1111, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1126 = metadata !{i32 786445, metadata !1119, metadata !"last_connection", metadata !1111, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1127 = metadata !{i32 786445, metadata !1119, metadata !"name_rbtree", metadata !1111, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !535} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1128 = metadata !{i32 786445, metadata !1119, metadata !"name_sentinel", metadata !1111, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1129 = metadata !{i32 786445, metadata !1119, metadata !"addr_rbtree", metadata !1111, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !535} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1130 = metadata !{i32 786445, metadata !1119, metadata !"addr_sentinel", metadata !1111, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1131 = metadata !{i32 786445, metadata !1119, metadata !"name_resend_queue", metadata !1111, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1132 = metadata !{i32 786445, metadata !1119, metadata !"addr_resend_queue", metadata !1111, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1133 = metadata !{i32 786445, metadata !1119, metadata !"name_expire_queue", metadata !1111, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1134 = metadata !{i32 786445, metadata !1119, metadata !"addr_expire_queue", metadata !1111, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1135 = metadata !{i32 786445, metadata !1119, metadata !"resend_timeout", metadata !1111, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !718} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1136 = metadata !{i32 786445, metadata !1119, metadata !"expire", metadata !1111, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !718} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1137 = metadata !{i32 786445, metadata !1119, metadata !"valid", metadata !1111, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !718} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1138 = metadata !{i32 786445, metadata !1119, metadata !"log_level", metadata !1111, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1139 = metadata !{i32 786445, metadata !1110, metadata !"udp_connection", metadata !1111, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1140} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1140 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1141 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1111, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1142} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1142 = metadata !{i32 786451, null, metadata !"", metadata !1111, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1143, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1143 = metadata !{metadata !1144, metadata !1145, metadata !1146, metadata !1147, metadata !1148}
!1144 = metadata !{i32 786445, metadata !1142, metadata !"connection", metadata !1111, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1145 = metadata !{i32 786445, metadata !1142, metadata !"sockaddr", metadata !1111, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1146 = metadata !{i32 786445, metadata !1142, metadata !"socklen", metadata !1111, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1147 = metadata !{i32 786445, metadata !1142, metadata !"server", metadata !1111, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1148 = metadata !{i32 786445, metadata !1142, metadata !"log", metadata !1111, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1149 = metadata !{i32 786445, metadata !1110, metadata !"ident", metadata !1111, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !484} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1150 = metadata !{i32 786445, metadata !1110, metadata !"state", metadata !1111, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !484} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1151 = metadata !{i32 786445, metadata !1110, metadata !"type", metadata !1111, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !484} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1152 = metadata !{i32 786445, metadata !1110, metadata !"name", metadata !1111, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1153 = metadata !{i32 786445, metadata !1110, metadata !"naddrs", metadata !1111, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1154 = metadata !{i32 786445, metadata !1110, metadata !"addrs", metadata !1111, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !1103} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1155 = metadata !{i32 786445, metadata !1110, metadata !"addr", metadata !1111, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !1104} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1156 = metadata !{i32 786445, metadata !1110, metadata !"handler", metadata !1111, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1157} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1157 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1111, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1158} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1158 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1159} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1159 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1160, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1160 = metadata !{null, metadata !1114}
!1161 = metadata !{i32 786445, metadata !1110, metadata !"data", metadata !1111, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1162 = metadata !{i32 786445, metadata !1110, metadata !"timeout", metadata !1111, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1163 = metadata !{i32 786445, metadata !1110, metadata !"quick", metadata !1111, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1164 = metadata !{i32 786445, metadata !1110, metadata !"recursion", metadata !1111, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1165 = metadata !{i32 786445, metadata !1110, metadata !"event", metadata !1111, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1166 = metadata !{i32 786445, metadata !811, metadata !"buffer", metadata !812, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1167 = metadata !{i32 786445, metadata !811, metadata !"length", metadata !812, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1168 = metadata !{i32 786445, metadata !811, metadata !"out_bufs", metadata !812, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1169 = metadata !{i32 786445, metadata !811, metadata !"busy_bufs", metadata !812, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1170 = metadata !{i32 786445, metadata !811, metadata !"free_bufs", metadata !812, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1171 = metadata !{i32 786445, metadata !811, metadata !"input_filter_init", metadata !812, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1172} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1172 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1173} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1174 = metadata !{metadata !484, metadata !24}
!1175 = metadata !{i32 786445, metadata !811, metadata !"input_filter", metadata !812, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1176} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1176 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1177} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1178 = metadata !{metadata !484, metadata !24, metadata !286}
!1179 = metadata !{i32 786445, metadata !811, metadata !"input_filter_ctx", metadata !812, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1180 = metadata !{i32 786445, metadata !811, metadata !"create_key", metadata !812, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1181} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1181 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1182} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1183 = metadata !{metadata !484, metadata !700}
!1184 = metadata !{i32 786445, metadata !811, metadata !"create_request", metadata !812, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1181} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1185 = metadata !{i32 786445, metadata !811, metadata !"reinit_request", metadata !812, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1181} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1186 = metadata !{i32 786445, metadata !811, metadata !"process_header", metadata !812, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1181} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1187 = metadata !{i32 786445, metadata !811, metadata !"abort_request", metadata !812, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !697} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1188 = metadata !{i32 786445, metadata !811, metadata !"finalize_request", metadata !812, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1189} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1189 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1190} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1190 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1191, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1191 = metadata !{null, metadata !700, metadata !484}
!1192 = metadata !{i32 786445, metadata !811, metadata !"rewrite_redirect", metadata !812, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1193} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1193 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1194} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1195 = metadata !{metadata !484, metadata !700, metadata !1065, metadata !30}
!1196 = metadata !{i32 786445, metadata !811, metadata !"rewrite_cookie", metadata !812, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1197} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1197 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1198} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1198 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1199, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1199 = metadata !{metadata !484, metadata !700, metadata !1065}
!1200 = metadata !{i32 786445, metadata !811, metadata !"timeout", metadata !812, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1201 = metadata !{i32 786445, metadata !811, metadata !"state", metadata !812, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1202} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1202 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1203} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1203 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !812, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1204} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1204 = metadata !{i32 786451, null, metadata !"", metadata !812, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1205, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1205 = metadata !{metadata !1206, metadata !1207, metadata !1208, metadata !1209, metadata !1210, metadata !1211, metadata !1212}
!1206 = metadata !{i32 786445, metadata !1204, metadata !"bl_time", metadata !812, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1207 = metadata !{i32 786445, metadata !1204, metadata !"bl_state", metadata !812, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1208 = metadata !{i32 786445, metadata !1204, metadata !"status", metadata !812, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1209 = metadata !{i32 786445, metadata !1204, metadata !"response_sec", metadata !812, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !718} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1210 = metadata !{i32 786445, metadata !1204, metadata !"response_msec", metadata !812, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1211 = metadata !{i32 786445, metadata !1204, metadata !"response_length", metadata !812, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1212 = metadata !{i32 786445, metadata !1204, metadata !"peer", metadata !812, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !506} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1213 = metadata !{i32 786445, metadata !811, metadata !"method", metadata !812, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1214 = metadata !{i32 786445, metadata !811, metadata !"schema", metadata !812, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1215 = metadata !{i32 786445, metadata !811, metadata !"uri", metadata !812, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1216 = metadata !{i32 786445, metadata !811, metadata !"cleanup", metadata !812, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1217} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1217 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1218} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1218 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !812, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1219 = metadata !{i32 786445, metadata !811, metadata !"store", metadata !812, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1220 = metadata !{i32 786445, metadata !811, metadata !"cacheable", metadata !812, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1221 = metadata !{i32 786445, metadata !811, metadata !"accel", metadata !812, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1222 = metadata !{i32 786445, metadata !811, metadata !"ssl", metadata !812, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1223 = metadata !{i32 786445, metadata !811, metadata !"cache_status", metadata !812, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1224 = metadata !{i32 786445, metadata !811, metadata !"buffering", metadata !812, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1225 = metadata !{i32 786445, metadata !811, metadata !"keepalive", metadata !812, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1226 = metadata !{i32 786445, metadata !811, metadata !"request_sent", metadata !812, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1227 = metadata !{i32 786445, metadata !811, metadata !"header_sent", metadata !812, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1228 = metadata !{i32 786445, metadata !685, metadata !"upstream_states", metadata !686, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1229 = metadata !{i32 786445, metadata !685, metadata !"pool", metadata !686, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1230 = metadata !{i32 786445, metadata !685, metadata !"header_in", metadata !686, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1231 = metadata !{i32 786445, metadata !685, metadata !"headers_in", metadata !686, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1232} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1232 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !686, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1233} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1233 = metadata !{i32 786451, null, metadata !"", metadata !686, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1234, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1234 = metadata !{metadata !1235, metadata !1236, metadata !1237, metadata !1238, metadata !1239, metadata !1240, metadata !1241, metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246, metadata !1247, metadata !1248, metadata !1249, metadata !1250, metadata !1251, metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1257, metadata !1258, metadata !1259, metadata !1260, metadata !1261, metadata !1262, metadata !1263, metadata !1264, metadata !1265, metadata !1266}
!1235 = metadata !{i32 786445, metadata !1233, metadata !"headers", metadata !686, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1236 = metadata !{i32 786445, metadata !1233, metadata !"host", metadata !686, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !1065} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1237 = metadata !{i32 786445, metadata !1233, metadata !"connection", metadata !686, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !1065} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1238 = metadata !{i32 786445, metadata !1233, metadata !"if_modified_since", metadata !686, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !1065} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1239 = metadata !{i32 786445, metadata !1233, metadata !"if_unmodified_since", metadata !686, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !1065} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1240 = metadata !{i32 786445, metadata !1233, metadata !"user_agent", metadata !686, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !1065} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1241 = metadata !{i32 786445, metadata !1233, metadata !"referer", metadata !686, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !1065} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1242 = metadata !{i32 786445, metadata !1233, metadata !"content_length", metadata !686, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1243 = metadata !{i32 786445, metadata !1233, metadata !"content_type", metadata !686, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1244 = metadata !{i32 786445, metadata !1233, metadata !"range", metadata !686, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !1065} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1245 = metadata !{i32 786445, metadata !1233, metadata !"if_range", metadata !686, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !1065} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1246 = metadata !{i32 786445, metadata !1233, metadata !"transfer_encoding", metadata !686, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !1065} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1247 = metadata !{i32 786445, metadata !1233, metadata !"expect", metadata !686, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !1065} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1248 = metadata !{i32 786445, metadata !1233, metadata !"accept_encoding", metadata !686, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !1065} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1249 = metadata !{i32 786445, metadata !1233, metadata !"via", metadata !686, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !1065} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1250 = metadata !{i32 786445, metadata !1233, metadata !"authorization", metadata !686, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !1065} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1251 = metadata !{i32 786445, metadata !1233, metadata !"keep_alive", metadata !686, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !1065} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1252 = metadata !{i32 786445, metadata !1233, metadata !"x_forwarded_for", metadata !686, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !1065} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1253 = metadata !{i32 786445, metadata !1233, metadata !"user", metadata !686, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1254 = metadata !{i32 786445, metadata !1233, metadata !"passwd", metadata !686, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1255 = metadata !{i32 786445, metadata !1233, metadata !"cookies", metadata !686, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1256 = metadata !{i32 786445, metadata !1233, metadata !"server", metadata !686, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1257 = metadata !{i32 786445, metadata !1233, metadata !"content_length_n", metadata !686, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1258 = metadata !{i32 786445, metadata !1233, metadata !"keep_alive_n", metadata !686, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !718} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1259 = metadata !{i32 786445, metadata !1233, metadata !"connection_type", metadata !686, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1260 = metadata !{i32 786445, metadata !1233, metadata !"msie", metadata !686, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1261 = metadata !{i32 786445, metadata !1233, metadata !"msie6", metadata !686, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1262 = metadata !{i32 786445, metadata !1233, metadata !"opera", metadata !686, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1263 = metadata !{i32 786445, metadata !1233, metadata !"gecko", metadata !686, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1264 = metadata !{i32 786445, metadata !1233, metadata !"chrome", metadata !686, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1265 = metadata !{i32 786445, metadata !1233, metadata !"safari", metadata !686, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1266 = metadata !{i32 786445, metadata !1233, metadata !"konqueror", metadata !686, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1267 = metadata !{i32 786445, metadata !685, metadata !"headers_out", metadata !686, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1268} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1268 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !686, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1269} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1269 = metadata !{i32 786451, null, metadata !"", metadata !686, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1270, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1270 = metadata !{metadata !1271, metadata !1272, metadata !1273, metadata !1274, metadata !1275, metadata !1276, metadata !1277, metadata !1278, metadata !1279, metadata !1280, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287, metadata !1288, metadata !1289, metadata !1290, metadata !1291, metadata !1292, metadata !1293, metadata !1294, metadata !1295}
!1271 = metadata !{i32 786445, metadata !1269, metadata !"headers", metadata !686, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1272 = metadata !{i32 786445, metadata !1269, metadata !"status", metadata !686, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1273 = metadata !{i32 786445, metadata !1269, metadata !"status_line", metadata !686, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1274 = metadata !{i32 786445, metadata !1269, metadata !"server", metadata !686, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !1065} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1275 = metadata !{i32 786445, metadata !1269, metadata !"date", metadata !686, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !1065} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1276 = metadata !{i32 786445, metadata !1269, metadata !"content_length", metadata !686, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1277 = metadata !{i32 786445, metadata !1269, metadata !"content_encoding", metadata !686, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1278 = metadata !{i32 786445, metadata !1269, metadata !"location", metadata !686, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !1065} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1279 = metadata !{i32 786445, metadata !1269, metadata !"refresh", metadata !686, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !1065} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1280 = metadata !{i32 786445, metadata !1269, metadata !"last_modified", metadata !686, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !1065} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1281 = metadata !{i32 786445, metadata !1269, metadata !"content_range", metadata !686, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !1065} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1282 = metadata !{i32 786445, metadata !1269, metadata !"accept_ranges", metadata !686, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !1065} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1283 = metadata !{i32 786445, metadata !1269, metadata !"www_authenticate", metadata !686, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !1065} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1284 = metadata !{i32 786445, metadata !1269, metadata !"expires", metadata !686, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !1065} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1285 = metadata !{i32 786445, metadata !1269, metadata !"etag", metadata !686, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !1065} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1286 = metadata !{i32 786445, metadata !1269, metadata !"override_charset", metadata !686, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !506} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1287 = metadata !{i32 786445, metadata !1269, metadata !"content_type_len", metadata !686, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1288 = metadata !{i32 786445, metadata !1269, metadata !"content_type", metadata !686, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1289 = metadata !{i32 786445, metadata !1269, metadata !"charset", metadata !686, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1290 = metadata !{i32 786445, metadata !1269, metadata !"content_type_lowcase", metadata !686, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1291 = metadata !{i32 786445, metadata !1269, metadata !"content_type_hash", metadata !686, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1292 = metadata !{i32 786445, metadata !1269, metadata !"cache_control", metadata !686, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1293 = metadata !{i32 786445, metadata !1269, metadata !"content_length_n", metadata !686, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1294 = metadata !{i32 786445, metadata !1269, metadata !"date_time", metadata !686, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !718} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1295 = metadata !{i32 786445, metadata !1269, metadata !"last_modified_time", metadata !686, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !718} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1296 = metadata !{i32 786445, metadata !685, metadata !"request_body", metadata !686, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1297} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1297 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1298} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1298 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !686, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1299} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1299 = metadata !{i32 786451, null, metadata !"", metadata !686, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1300, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1300 = metadata !{metadata !1301, metadata !1302, metadata !1303, metadata !1304, metadata !1305, metadata !1306}
!1301 = metadata !{i32 786445, metadata !1299, metadata !"temp_file", metadata !686, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !920} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1302 = metadata !{i32 786445, metadata !1299, metadata !"bufs", metadata !686, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1303 = metadata !{i32 786445, metadata !1299, metadata !"buf", metadata !686, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1304 = metadata !{i32 786445, metadata !1299, metadata !"rest", metadata !686, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1305 = metadata !{i32 786445, metadata !1299, metadata !"to_write", metadata !686, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1306 = metadata !{i32 786445, metadata !1299, metadata !"post_handler", metadata !686, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1307} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1307 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !686, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !697} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1308 = metadata !{i32 786445, metadata !685, metadata !"lingering_time", metadata !686, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !718} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1309 = metadata !{i32 786445, metadata !685, metadata !"start_sec", metadata !686, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !718} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1310 = metadata !{i32 786445, metadata !685, metadata !"start_msec", metadata !686, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1311 = metadata !{i32 786445, metadata !685, metadata !"method", metadata !686, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1312 = metadata !{i32 786445, metadata !685, metadata !"http_version", metadata !686, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1313 = metadata !{i32 786445, metadata !685, metadata !"request_line", metadata !686, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1314 = metadata !{i32 786445, metadata !685, metadata !"uri", metadata !686, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1315 = metadata !{i32 786445, metadata !685, metadata !"args", metadata !686, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1316 = metadata !{i32 786445, metadata !685, metadata !"exten", metadata !686, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1317 = metadata !{i32 786445, metadata !685, metadata !"unparsed_uri", metadata !686, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1318 = metadata !{i32 786445, metadata !685, metadata !"method_name", metadata !686, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1319 = metadata !{i32 786445, metadata !685, metadata !"http_protocol", metadata !686, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1320 = metadata !{i32 786445, metadata !685, metadata !"out", metadata !686, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1321 = metadata !{i32 786445, metadata !685, metadata !"main", metadata !686, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !700} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1322 = metadata !{i32 786445, metadata !685, metadata !"parent", metadata !686, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !700} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1323 = metadata !{i32 786445, metadata !685, metadata !"postponed", metadata !686, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1324} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1324 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1325} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1325 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !686, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1326} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1326 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !686, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1327, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1327 = metadata !{metadata !1328, metadata !1329, metadata !1330}
!1328 = metadata !{i32 786445, metadata !1326, metadata !"request", metadata !686, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !700} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1329 = metadata !{i32 786445, metadata !1326, metadata !"out", metadata !686, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1330 = metadata !{i32 786445, metadata !1326, metadata !"next", metadata !686, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1324} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1331 = metadata !{i32 786445, metadata !685, metadata !"post_subrequest", metadata !686, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1332} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1332 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1333} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1333 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !686, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1334} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1334 = metadata !{i32 786451, null, metadata !"", metadata !686, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1335, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1335 = metadata !{metadata !1336, metadata !1341}
!1336 = metadata !{i32 786445, metadata !1334, metadata !"handler", metadata !686, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1337} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1337 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !686, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1338} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1338 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1339} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1340 = metadata !{metadata !484, metadata !700, metadata !24, metadata !484}
!1341 = metadata !{i32 786445, metadata !1334, metadata !"data", metadata !686, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1342 = metadata !{i32 786445, metadata !685, metadata !"posted_requests", metadata !686, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1343} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1343 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1344} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1344 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !686, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1345} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1345 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !686, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1346, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1346 = metadata !{metadata !1347, metadata !1348}
!1347 = metadata !{i32 786445, metadata !1345, metadata !"request", metadata !686, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !700} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1348 = metadata !{i32 786445, metadata !1345, metadata !"next", metadata !686, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1343} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1349 = metadata !{i32 786445, metadata !685, metadata !"virtual_names", metadata !686, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1350} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1350 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1351} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1351 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !686, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1352} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1352 = metadata !{i32 786451, null, metadata !"", metadata !686, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1353, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1353 = metadata !{metadata !1354, metadata !1367, metadata !1368}
!1354 = metadata !{i32 786445, metadata !1352, metadata !"names", metadata !686, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1355} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1355 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !686, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1356} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1356 = metadata !{i32 786451, null, metadata !"", metadata !1027, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1357, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1357 = metadata !{metadata !1358, metadata !1359, metadata !1366}
!1358 = metadata !{i32 786445, metadata !1356, metadata !"hash", metadata !1027, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !1025} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1359 = metadata !{i32 786445, metadata !1356, metadata !"wc_head", metadata !1027, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1360} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1360 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1361} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1361 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !1027, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1362} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1362 = metadata !{i32 786451, null, metadata !"", metadata !1027, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1363, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1363 = metadata !{metadata !1364, metadata !1365}
!1364 = metadata !{i32 786445, metadata !1362, metadata !"hash", metadata !1027, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !1025} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1365 = metadata !{i32 786445, metadata !1362, metadata !"value", metadata !1027, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1366 = metadata !{i32 786445, metadata !1356, metadata !"wc_tail", metadata !1027, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1360} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1367 = metadata !{i32 786445, metadata !1352, metadata !"nregex", metadata !686, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1368 = metadata !{i32 786445, metadata !1352, metadata !"regex", metadata !686, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1369} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1369 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1370} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1370 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !686, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1371} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1371 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1372, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1373, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1372 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1373 = metadata !{metadata !1374, metadata !1418, metadata !1574}
!1374 = metadata !{i32 786445, metadata !1371, metadata !"regex", metadata !1372, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1375} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1375 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1376} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1376 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1372, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1377} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1377 = metadata !{i32 786451, null, metadata !"", metadata !1378, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1379, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1378 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1379 = metadata !{metadata !1380, metadata !1408, metadata !1409, metadata !1416, metadata !1417}
!1380 = metadata !{i32 786445, metadata !1377, metadata !"regex", metadata !1378, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1381} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1381 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1382} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1382 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !1378, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1383} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1383 = metadata !{i32 786451, null, metadata !"", metadata !1384, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1385, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1384 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1385 = metadata !{metadata !1386, metadata !1391}
!1386 = metadata !{i32 786445, metadata !1383, metadata !"code", metadata !1384, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1387} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1387 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1388} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1388 = metadata !{i32 786454, null, metadata !"pcre", metadata !1384, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1389} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1389 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1390, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1390 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1391 = metadata !{i32 786445, metadata !1383, metadata !"extra", metadata !1384, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1392} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1392 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1393} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1393 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1384, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1394} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1394 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1390, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1395, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1395 = metadata !{metadata !1396, metadata !1397, metadata !1398, metadata !1399, metadata !1400, metadata !1403, metadata !1404, metadata !1407}
!1396 = metadata !{i32 786445, metadata !1394, metadata !"flags", metadata !1390, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1397 = metadata !{i32 786445, metadata !1394, metadata !"study_data", metadata !1390, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1398 = metadata !{i32 786445, metadata !1394, metadata !"match_limit", metadata !1390, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1399 = metadata !{i32 786445, metadata !1394, metadata !"callout_data", metadata !1390, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1400 = metadata !{i32 786445, metadata !1394, metadata !"tables", metadata !1390, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !1401} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1401 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1402} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1402 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!1403 = metadata !{i32 786445, metadata !1394, metadata !"match_limit_recursion", metadata !1390, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1404 = metadata !{i32 786445, metadata !1394, metadata !"mark", metadata !1390, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1405} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1405 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1406} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1406 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1407 = metadata !{i32 786445, metadata !1394, metadata !"executable_jit", metadata !1390, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1408 = metadata !{i32 786445, metadata !1377, metadata !"ncaptures", metadata !1378, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1409 = metadata !{i32 786445, metadata !1377, metadata !"variables", metadata !1378, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1410} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1410 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1411} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1411 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !1378, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1412} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1412 = metadata !{i32 786451, null, metadata !"", metadata !1378, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1413, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1413 = metadata !{metadata !1414, metadata !1415}
!1414 = metadata !{i32 786445, metadata !1412, metadata !"capture", metadata !1378, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1415 = metadata !{i32 786445, metadata !1412, metadata !"index", metadata !1378, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !484} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1416 = metadata !{i32 786445, metadata !1377, metadata !"nvariables", metadata !1378, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1417 = metadata !{i32 786445, metadata !1377, metadata !"name", metadata !1378, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1418 = metadata !{i32 786445, metadata !1371, metadata !"server", metadata !1372, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1419} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1419 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1420} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1420 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1372, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1421} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1421 = metadata !{i32 786451, null, metadata !"", metadata !1372, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1422, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1422 = metadata !{metadata !1423, metadata !1424, metadata !1433, metadata !1434, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1442, metadata !1443, metadata !1444}
!1423 = metadata !{i32 786445, metadata !1421, metadata !"server_names", metadata !1372, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1424 = metadata !{i32 786445, metadata !1421, metadata !"ctx", metadata !1372, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1425} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1425 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1426} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1426 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1372, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1427} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1427 = metadata !{i32 786451, null, metadata !"", metadata !1428, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1429, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1428 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1429 = metadata !{metadata !1430, metadata !1431, metadata !1432}
!1430 = metadata !{i32 786445, metadata !1427, metadata !"main_conf", metadata !1428, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1431 = metadata !{i32 786445, metadata !1427, metadata !"srv_conf", metadata !1428, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1432 = metadata !{i32 786445, metadata !1427, metadata !"loc_conf", metadata !1428, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1433 = metadata !{i32 786445, metadata !1421, metadata !"server_name", metadata !1372, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1434 = metadata !{i32 786445, metadata !1421, metadata !"connection_pool_size", metadata !1372, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1435 = metadata !{i32 786445, metadata !1421, metadata !"request_pool_size", metadata !1372, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1436 = metadata !{i32 786445, metadata !1421, metadata !"client_header_buffer_size", metadata !1372, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1437 = metadata !{i32 786445, metadata !1421, metadata !"large_client_header_buffers", metadata !1372, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !900} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1438 = metadata !{i32 786445, metadata !1421, metadata !"client_header_timeout", metadata !1372, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1439 = metadata !{i32 786445, metadata !1421, metadata !"ignore_invalid_headers", metadata !1372, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !1017} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1440 = metadata !{i32 786445, metadata !1421, metadata !"merge_slashes", metadata !1372, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !1017} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1441 = metadata !{i32 786445, metadata !1421, metadata !"underscores_in_headers", metadata !1372, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !1017} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1442 = metadata !{i32 786445, metadata !1421, metadata !"listen", metadata !1372, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1443 = metadata !{i32 786445, metadata !1421, metadata !"captures", metadata !1372, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1444 = metadata !{i32 786445, metadata !1421, metadata !"named_locations", metadata !1372, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1445} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1445 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1446} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1446 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1447} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1447 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1372, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1448} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1448 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1372, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1449, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1449 = metadata !{metadata !1450, metadata !1451, metadata !1452, metadata !1453, metadata !1454, metadata !1455, metadata !1456, metadata !1457, metadata !1458, metadata !1459, metadata !1472, metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1478, metadata !1479, metadata !1480, metadata !1481, metadata !1482, metadata !1483, metadata !1484, metadata !1485, metadata !1486, metadata !1487, metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1493, metadata !1494, metadata !1495, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1501, metadata !1502, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1531, metadata !1542, metadata !1543, metadata !1553, metadata !1554, metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572, metadata !1573}
!1450 = metadata !{i32 786445, metadata !1448, metadata !"name", metadata !1372, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1451 = metadata !{i32 786445, metadata !1448, metadata !"regex", metadata !1372, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1375} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1452 = metadata !{i32 786445, metadata !1448, metadata !"noname", metadata !1372, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1453 = metadata !{i32 786445, metadata !1448, metadata !"lmt_excpt", metadata !1372, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1454 = metadata !{i32 786445, metadata !1448, metadata !"named", metadata !1372, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1455 = metadata !{i32 786445, metadata !1448, metadata !"exact_match", metadata !1372, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1456 = metadata !{i32 786445, metadata !1448, metadata !"noregex", metadata !1372, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1457 = metadata !{i32 786445, metadata !1448, metadata !"auto_redirect", metadata !1372, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1458 = metadata !{i32 786445, metadata !1448, metadata !"gzip_disable_msie6", metadata !1372, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1459 = metadata !{i32 786445, metadata !1448, metadata !"static_locations", metadata !1372, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1460} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1460 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1461} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1461 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1372, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1462} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1462 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1372, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1463, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1463 = metadata !{metadata !1464, metadata !1465, metadata !1466, metadata !1467, metadata !1468, metadata !1469, metadata !1470, metadata !1471}
!1464 = metadata !{i32 786445, metadata !1462, metadata !"left", metadata !1372, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1460} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1465 = metadata !{i32 786445, metadata !1462, metadata !"right", metadata !1372, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1460} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1466 = metadata !{i32 786445, metadata !1462, metadata !"tree", metadata !1372, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1460} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1467 = metadata !{i32 786445, metadata !1462, metadata !"exact", metadata !1372, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1446} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1468 = metadata !{i32 786445, metadata !1462, metadata !"inclusive", metadata !1372, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1446} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1469 = metadata !{i32 786445, metadata !1462, metadata !"auto_redirect", metadata !1372, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1470 = metadata !{i32 786445, metadata !1462, metadata !"len", metadata !1372, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1471 = metadata !{i32 786445, metadata !1462, metadata !"name", metadata !1372, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !632} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1472 = metadata !{i32 786445, metadata !1448, metadata !"regex_locations", metadata !1372, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1445} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1473 = metadata !{i32 786445, metadata !1448, metadata !"loc_conf", metadata !1372, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1474 = metadata !{i32 786445, metadata !1448, metadata !"limit_except", metadata !1372, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !689} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1475 = metadata !{i32 786445, metadata !1448, metadata !"limit_except_loc_conf", metadata !1372, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1476 = metadata !{i32 786445, metadata !1448, metadata !"handler", metadata !1372, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1477} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1477 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1372, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1181} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1478 = metadata !{i32 786445, metadata !1448, metadata !"alias", metadata !1372, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1479 = metadata !{i32 786445, metadata !1448, metadata !"root", metadata !1372, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1480 = metadata !{i32 786445, metadata !1448, metadata !"post_action", metadata !1372, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1481 = metadata !{i32 786445, metadata !1448, metadata !"root_lengths", metadata !1372, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1482 = metadata !{i32 786445, metadata !1448, metadata !"root_values", metadata !1372, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1483 = metadata !{i32 786445, metadata !1448, metadata !"types", metadata !1372, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1484 = metadata !{i32 786445, metadata !1448, metadata !"types_hash", metadata !1372, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !1025} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1485 = metadata !{i32 786445, metadata !1448, metadata !"default_type", metadata !1372, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1486 = metadata !{i32 786445, metadata !1448, metadata !"client_max_body_size", metadata !1372, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1487 = metadata !{i32 786445, metadata !1448, metadata !"directio", metadata !1372, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1488 = metadata !{i32 786445, metadata !1448, metadata !"directio_alignment", metadata !1372, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1489 = metadata !{i32 786445, metadata !1448, metadata !"client_body_buffer_size", metadata !1372, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1490 = metadata !{i32 786445, metadata !1448, metadata !"send_lowat", metadata !1372, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1491 = metadata !{i32 786445, metadata !1448, metadata !"postpone_output", metadata !1372, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1492 = metadata !{i32 786445, metadata !1448, metadata !"limit_rate", metadata !1372, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1493 = metadata !{i32 786445, metadata !1448, metadata !"limit_rate_after", metadata !1372, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1494 = metadata !{i32 786445, metadata !1448, metadata !"sendfile_max_chunk", metadata !1372, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1495 = metadata !{i32 786445, metadata !1448, metadata !"read_ahead", metadata !1372, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1496 = metadata !{i32 786445, metadata !1448, metadata !"client_body_timeout", metadata !1372, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1497 = metadata !{i32 786445, metadata !1448, metadata !"send_timeout", metadata !1372, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1498 = metadata !{i32 786445, metadata !1448, metadata !"keepalive_timeout", metadata !1372, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1499 = metadata !{i32 786445, metadata !1448, metadata !"lingering_time", metadata !1372, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1500 = metadata !{i32 786445, metadata !1448, metadata !"lingering_timeout", metadata !1372, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1501 = metadata !{i32 786445, metadata !1448, metadata !"resolver_timeout", metadata !1372, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1502 = metadata !{i32 786445, metadata !1448, metadata !"resolver", metadata !1372, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1117} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1503 = metadata !{i32 786445, metadata !1448, metadata !"keepalive_header", metadata !1372, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !718} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1504 = metadata !{i32 786445, metadata !1448, metadata !"keepalive_requests", metadata !1372, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1505 = metadata !{i32 786445, metadata !1448, metadata !"keepalive_disable", metadata !1372, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1506 = metadata !{i32 786445, metadata !1448, metadata !"satisfy", metadata !1372, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1507 = metadata !{i32 786445, metadata !1448, metadata !"lingering_close", metadata !1372, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1508 = metadata !{i32 786445, metadata !1448, metadata !"if_modified_since", metadata !1372, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1509 = metadata !{i32 786445, metadata !1448, metadata !"max_ranges", metadata !1372, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1510 = metadata !{i32 786445, metadata !1448, metadata !"client_body_in_file_only", metadata !1372, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1511 = metadata !{i32 786445, metadata !1448, metadata !"client_body_in_single_buffer", metadata !1372, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !1017} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1512 = metadata !{i32 786445, metadata !1448, metadata !"internal", metadata !1372, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !1017} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1513 = metadata !{i32 786445, metadata !1448, metadata !"sendfile", metadata !1372, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !1017} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1514 = metadata !{i32 786445, metadata !1448, metadata !"tcp_nopush", metadata !1372, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !1017} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1515 = metadata !{i32 786445, metadata !1448, metadata !"tcp_nodelay", metadata !1372, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !1017} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1516 = metadata !{i32 786445, metadata !1448, metadata !"reset_timedout_connection", metadata !1372, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !1017} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1517 = metadata !{i32 786445, metadata !1448, metadata !"server_name_in_redirect", metadata !1372, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !1017} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1518 = metadata !{i32 786445, metadata !1448, metadata !"port_in_redirect", metadata !1372, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !1017} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1519 = metadata !{i32 786445, metadata !1448, metadata !"msie_padding", metadata !1372, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !1017} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1520 = metadata !{i32 786445, metadata !1448, metadata !"msie_refresh", metadata !1372, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !1017} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1521 = metadata !{i32 786445, metadata !1448, metadata !"log_not_found", metadata !1372, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !1017} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1522 = metadata !{i32 786445, metadata !1448, metadata !"log_subrequest", metadata !1372, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !1017} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1523 = metadata !{i32 786445, metadata !1448, metadata !"recursive_error_pages", metadata !1372, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !1017} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1524 = metadata !{i32 786445, metadata !1448, metadata !"server_tokens", metadata !1372, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !1017} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1525 = metadata !{i32 786445, metadata !1448, metadata !"chunked_transfer_encoding", metadata !1372, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !1017} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1526 = metadata !{i32 786445, metadata !1448, metadata !"gzip_vary", metadata !1372, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !1017} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1527 = metadata !{i32 786445, metadata !1448, metadata !"gzip_http_version", metadata !1372, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1528 = metadata !{i32 786445, metadata !1448, metadata !"gzip_proxied", metadata !1372, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1529 = metadata !{i32 786445, metadata !1448, metadata !"gzip_disable", metadata !1372, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1530 = metadata !{i32 786445, metadata !1448, metadata !"disable_symlinks", metadata !1372, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1531 = metadata !{i32 786445, metadata !1448, metadata !"disable_symlinks_from", metadata !1372, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1532} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1532 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1533} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1533 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1372, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1534} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1534 = metadata !{i32 786451, null, metadata !"", metadata !1535, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1536, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1535 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1536 = metadata !{metadata !1537, metadata !1538, metadata !1540, metadata !1541}
!1537 = metadata !{i32 786445, metadata !1534, metadata !"value", metadata !1535, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1538 = metadata !{i32 786445, metadata !1534, metadata !"flushes", metadata !1535, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1539} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1539 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1540 = metadata !{i32 786445, metadata !1534, metadata !"lengths", metadata !1535, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1541 = metadata !{i32 786445, metadata !1534, metadata !"values", metadata !1535, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1542 = metadata !{i32 786445, metadata !1448, metadata !"error_pages", metadata !1372, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1543 = metadata !{i32 786445, metadata !1448, metadata !"try_files", metadata !1372, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1544} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1544 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1545 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1372, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1546} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1546 = metadata !{i32 786451, null, metadata !"", metadata !1372, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1547, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1547 = metadata !{metadata !1548, metadata !1549, metadata !1550, metadata !1551, metadata !1552}
!1548 = metadata !{i32 786445, metadata !1546, metadata !"lengths", metadata !1372, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1549 = metadata !{i32 786445, metadata !1546, metadata !"values", metadata !1372, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1550 = metadata !{i32 786445, metadata !1546, metadata !"name", metadata !1372, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1551 = metadata !{i32 786445, metadata !1546, metadata !"code", metadata !1372, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1552 = metadata !{i32 786445, metadata !1546, metadata !"test_dir", metadata !1372, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1553 = metadata !{i32 786445, metadata !1448, metadata !"client_body_temp_path", metadata !1372, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !747} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1554 = metadata !{i32 786445, metadata !1448, metadata !"open_file_cache", metadata !1372, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1555} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1555 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1556} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1556 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1372, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1557} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1557 = metadata !{i32 786451, null, metadata !"", metadata !1558, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1559, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1558 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1559 = metadata !{metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565}
!1560 = metadata !{i32 786445, metadata !1557, metadata !"rbtree", metadata !1558, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !535} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1561 = metadata !{i32 786445, metadata !1557, metadata !"sentinel", metadata !1558, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1562 = metadata !{i32 786445, metadata !1557, metadata !"expire_queue", metadata !1558, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1563 = metadata !{i32 786445, metadata !1557, metadata !"current", metadata !1558, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1564 = metadata !{i32 786445, metadata !1557, metadata !"max", metadata !1558, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1565 = metadata !{i32 786445, metadata !1557, metadata !"inactive", metadata !1558, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !718} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1566 = metadata !{i32 786445, metadata !1448, metadata !"open_file_cache_valid", metadata !1372, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !718} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1567 = metadata !{i32 786445, metadata !1448, metadata !"open_file_cache_min_uses", metadata !1372, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1568 = metadata !{i32 786445, metadata !1448, metadata !"open_file_cache_errors", metadata !1372, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !1017} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1569 = metadata !{i32 786445, metadata !1448, metadata !"open_file_cache_events", metadata !1372, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !1017} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1570 = metadata !{i32 786445, metadata !1448, metadata !"error_log", metadata !1372, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1571 = metadata !{i32 786445, metadata !1448, metadata !"types_hash_max_size", metadata !1372, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1572 = metadata !{i32 786445, metadata !1448, metadata !"types_hash_bucket_size", metadata !1372, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1573 = metadata !{i32 786445, metadata !1448, metadata !"locations", metadata !1372, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1574 = metadata !{i32 786445, metadata !1371, metadata !"name", metadata !1372, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1575 = metadata !{i32 786445, metadata !685, metadata !"phase_handler", metadata !686, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !484} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1576 = metadata !{i32 786445, metadata !685, metadata !"content_handler", metadata !686, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1477} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1577 = metadata !{i32 786445, metadata !685, metadata !"access_code", metadata !686, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1578 = metadata !{i32 786445, metadata !685, metadata !"variables", metadata !686, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1579} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1579 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1580} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1580 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !686, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1581} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1581 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !686, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1582} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1582 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1583, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1583 = metadata !{metadata !1584, metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1589}
!1584 = metadata !{i32 786445, metadata !1582, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1585 = metadata !{i32 786445, metadata !1582, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1586 = metadata !{i32 786445, metadata !1582, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1587 = metadata !{i32 786445, metadata !1582, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1588 = metadata !{i32 786445, metadata !1582, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1589 = metadata !{i32 786445, metadata !1582, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1590 = metadata !{i32 786445, metadata !685, metadata !"ncaptures", metadata !686, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1591 = metadata !{i32 786445, metadata !685, metadata !"captures", metadata !686, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1592} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1592 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1593 = metadata !{i32 786445, metadata !685, metadata !"captures_data", metadata !686, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1594 = metadata !{i32 786445, metadata !685, metadata !"limit_rate", metadata !686, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1595 = metadata !{i32 786445, metadata !685, metadata !"header_size", metadata !686, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1596 = metadata !{i32 786445, metadata !685, metadata !"request_length", metadata !686, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1597 = metadata !{i32 786445, metadata !685, metadata !"err_status", metadata !686, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1598 = metadata !{i32 786445, metadata !685, metadata !"http_connection", metadata !686, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1599} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1599 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1600} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1600 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !686, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1601} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1601 = metadata !{i32 786451, null, metadata !"", metadata !686, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1602, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1602 = metadata !{metadata !1603, metadata !1604, metadata !1606, metadata !1607, metadata !1608, metadata !1609}
!1603 = metadata !{i32 786445, metadata !1601, metadata !"request", metadata !686, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !700} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1604 = metadata !{i32 786445, metadata !1601, metadata !"busy", metadata !686, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1605} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1605 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1606 = metadata !{i32 786445, metadata !1601, metadata !"nbusy", metadata !686, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !484} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1607 = metadata !{i32 786445, metadata !1601, metadata !"free", metadata !686, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1605} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1608 = metadata !{i32 786445, metadata !1601, metadata !"nfree", metadata !686, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !484} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1609 = metadata !{i32 786445, metadata !1601, metadata !"pipeline", metadata !686, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1610 = metadata !{i32 786445, metadata !685, metadata !"log_handler", metadata !686, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1611} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1611 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !686, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1612} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1612 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1613} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1613 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1614, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1614 = metadata !{metadata !44, metadata !700, metadata !700, metadata !44, metadata !30}
!1615 = metadata !{i32 786445, metadata !685, metadata !"cleanup", metadata !686, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1616} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1616 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1617} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1617 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !686, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1618} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1618 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !686, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1619, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1619 = metadata !{metadata !1620, metadata !1621, metadata !1622}
!1620 = metadata !{i32 786445, metadata !1618, metadata !"handler", metadata !686, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1218} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1621 = metadata !{i32 786445, metadata !1618, metadata !"data", metadata !686, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1622 = metadata !{i32 786445, metadata !1618, metadata !"next", metadata !686, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1616} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1623 = metadata !{i32 786445, metadata !685, metadata !"subrequests", metadata !686, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1624 = metadata !{i32 786445, metadata !685, metadata !"count", metadata !686, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1625 = metadata !{i32 786445, metadata !685, metadata !"blocked", metadata !686, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1626 = metadata !{i32 786445, metadata !685, metadata !"aio", metadata !686, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1627 = metadata !{i32 786445, metadata !685, metadata !"http_state", metadata !686, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1628 = metadata !{i32 786445, metadata !685, metadata !"complex_uri", metadata !686, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1629 = metadata !{i32 786445, metadata !685, metadata !"quoted_uri", metadata !686, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1630 = metadata !{i32 786445, metadata !685, metadata !"plus_in_uri", metadata !686, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1631 = metadata !{i32 786445, metadata !685, metadata !"space_in_uri", metadata !686, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1632 = metadata !{i32 786445, metadata !685, metadata !"invalid_header", metadata !686, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1633 = metadata !{i32 786445, metadata !685, metadata !"add_uri_to_alias", metadata !686, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1634 = metadata !{i32 786445, metadata !685, metadata !"valid_location", metadata !686, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1635 = metadata !{i32 786445, metadata !685, metadata !"valid_unparsed_uri", metadata !686, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1636 = metadata !{i32 786445, metadata !685, metadata !"uri_changed", metadata !686, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1637 = metadata !{i32 786445, metadata !685, metadata !"uri_changes", metadata !686, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1638 = metadata !{i32 786445, metadata !685, metadata !"request_body_in_single_buf", metadata !686, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1639 = metadata !{i32 786445, metadata !685, metadata !"request_body_in_file_only", metadata !686, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1640 = metadata !{i32 786445, metadata !685, metadata !"request_body_in_persistent_file", metadata !686, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1641 = metadata !{i32 786445, metadata !685, metadata !"request_body_in_clean_file", metadata !686, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1642 = metadata !{i32 786445, metadata !685, metadata !"request_body_file_group_access", metadata !686, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1643 = metadata !{i32 786445, metadata !685, metadata !"request_body_file_log_level", metadata !686, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1644 = metadata !{i32 786445, metadata !685, metadata !"subrequest_in_memory", metadata !686, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1645 = metadata !{i32 786445, metadata !685, metadata !"waited", metadata !686, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1646 = metadata !{i32 786445, metadata !685, metadata !"cached", metadata !686, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1647 = metadata !{i32 786445, metadata !685, metadata !"gzip_tested", metadata !686, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1648 = metadata !{i32 786445, metadata !685, metadata !"gzip_ok", metadata !686, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1649 = metadata !{i32 786445, metadata !685, metadata !"gzip_vary", metadata !686, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1650 = metadata !{i32 786445, metadata !685, metadata !"proxy", metadata !686, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1651 = metadata !{i32 786445, metadata !685, metadata !"bypass_cache", metadata !686, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1652 = metadata !{i32 786445, metadata !685, metadata !"no_cache", metadata !686, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1653 = metadata !{i32 786445, metadata !685, metadata !"limit_conn_set", metadata !686, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1654 = metadata !{i32 786445, metadata !685, metadata !"limit_req_set", metadata !686, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1655 = metadata !{i32 786445, metadata !685, metadata !"pipeline", metadata !686, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1656 = metadata !{i32 786445, metadata !685, metadata !"plain_http", metadata !686, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1657 = metadata !{i32 786445, metadata !685, metadata !"chunked", metadata !686, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1658 = metadata !{i32 786445, metadata !685, metadata !"header_only", metadata !686, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1659 = metadata !{i32 786445, metadata !685, metadata !"keepalive", metadata !686, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1660 = metadata !{i32 786445, metadata !685, metadata !"lingering_close", metadata !686, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1661 = metadata !{i32 786445, metadata !685, metadata !"discard_body", metadata !686, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1662 = metadata !{i32 786445, metadata !685, metadata !"internal", metadata !686, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1663 = metadata !{i32 786445, metadata !685, metadata !"error_page", metadata !686, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1664 = metadata !{i32 786445, metadata !685, metadata !"ignore_content_encoding", metadata !686, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1665 = metadata !{i32 786445, metadata !685, metadata !"filter_finalize", metadata !686, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1666 = metadata !{i32 786445, metadata !685, metadata !"post_action", metadata !686, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1667 = metadata !{i32 786445, metadata !685, metadata !"request_complete", metadata !686, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1668 = metadata !{i32 786445, metadata !685, metadata !"request_output", metadata !686, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1669 = metadata !{i32 786445, metadata !685, metadata !"header_sent", metadata !686, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1670 = metadata !{i32 786445, metadata !685, metadata !"expect_tested", metadata !686, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1671 = metadata !{i32 786445, metadata !685, metadata !"root_tested", metadata !686, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1672 = metadata !{i32 786445, metadata !685, metadata !"done", metadata !686, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1673 = metadata !{i32 786445, metadata !685, metadata !"logged", metadata !686, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1674 = metadata !{i32 786445, metadata !685, metadata !"buffered", metadata !686, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1675 = metadata !{i32 786445, metadata !685, metadata !"main_filter_need_in_memory", metadata !686, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1676 = metadata !{i32 786445, metadata !685, metadata !"filter_need_in_memory", metadata !686, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1677 = metadata !{i32 786445, metadata !685, metadata !"filter_need_temporary", metadata !686, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1678 = metadata !{i32 786445, metadata !685, metadata !"allow_ranges", metadata !686, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1679 = metadata !{i32 786445, metadata !685, metadata !"state", metadata !686, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1680 = metadata !{i32 786445, metadata !685, metadata !"header_hash", metadata !686, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1681 = metadata !{i32 786445, metadata !685, metadata !"lowcase_index", metadata !686, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1682 = metadata !{i32 786445, metadata !685, metadata !"lowcase_header", metadata !686, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1683} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1683 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1684, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1684 = metadata !{metadata !1685}
!1685 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1686 = metadata !{i32 786445, metadata !685, metadata !"header_name_start", metadata !686, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1687 = metadata !{i32 786445, metadata !685, metadata !"header_name_end", metadata !686, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1688 = metadata !{i32 786445, metadata !685, metadata !"header_start", metadata !686, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1689 = metadata !{i32 786445, metadata !685, metadata !"header_end", metadata !686, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1690 = metadata !{i32 786445, metadata !685, metadata !"uri_start", metadata !686, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1691 = metadata !{i32 786445, metadata !685, metadata !"uri_end", metadata !686, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1692 = metadata !{i32 786445, metadata !685, metadata !"uri_ext", metadata !686, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1693 = metadata !{i32 786445, metadata !685, metadata !"args_start", metadata !686, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1694 = metadata !{i32 786445, metadata !685, metadata !"request_start", metadata !686, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1695 = metadata !{i32 786445, metadata !685, metadata !"request_end", metadata !686, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1696 = metadata !{i32 786445, metadata !685, metadata !"method_end", metadata !686, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1697 = metadata !{i32 786445, metadata !685, metadata !"schema_start", metadata !686, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1698 = metadata !{i32 786445, metadata !685, metadata !"schema_end", metadata !686, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1699 = metadata !{i32 786445, metadata !685, metadata !"host_start", metadata !686, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1700 = metadata !{i32 786445, metadata !685, metadata !"host_end", metadata !686, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1701 = metadata !{i32 786445, metadata !685, metadata !"port_start", metadata !686, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1702 = metadata !{i32 786445, metadata !685, metadata !"port_end", metadata !686, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1703 = metadata !{i32 786445, metadata !685, metadata !"http_minor", metadata !686, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1704 = metadata !{i32 786445, metadata !685, metadata !"http_major", metadata !686, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1705 = metadata !{i32 786688, metadata !677, metadata !"cmcf", metadata !6, i32 467, metadata !1706, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 467]
!1706 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1707} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_main_conf_t]
!1707 = metadata !{i32 786454, null, metadata !"ngx_http_core_main_conf_t", metadata !6, i32 175, i64 0, i64 0, i64 0, i32 0, metadata !1708} ; [ DW_TAG_typedef ] [ngx_http_core_main_conf_t] [line 175, size 0, align 0, offset 0] [from ]
!1708 = metadata !{i32 786451, null, metadata !"", metadata !1372, i32 150, i64 2560, i64 32, i32 0, i32 0, null, metadata !1709, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 150, size 2560, align 32, offset 0] [from ]
!1709 = metadata !{metadata !1710, metadata !1711, metadata !1729, metadata !1730, metadata !1731, metadata !1732, metadata !1733, metadata !1734, metadata !1735, metadata !1736, metadata !1737, metadata !1751, metadata !1752, metadata !1753}
!1710 = metadata !{i32 786445, metadata !1708, metadata !"servers", metadata !1372, i32 151, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [servers] [line 151, size 160, align 32, offset 0] [from ngx_array_t]
!1711 = metadata !{i32 786445, metadata !1708, metadata !"phase_engine", metadata !1372, i32 153, i64 96, i64 32, i64 160, i32 0, metadata !1712} ; [ DW_TAG_member ] [phase_engine] [line 153, size 96, align 32, offset 160] [from ngx_http_phase_engine_t]
!1712 = metadata !{i32 786454, null, metadata !"ngx_http_phase_engine_t", metadata !1372, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !1713} ; [ DW_TAG_typedef ] [ngx_http_phase_engine_t] [line 142, size 0, align 0, offset 0] [from ]
!1713 = metadata !{i32 786451, null, metadata !"", metadata !1372, i32 138, i64 96, i64 32, i32 0, i32 0, null, metadata !1714, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 138, size 96, align 32, offset 0] [from ]
!1714 = metadata !{metadata !1715, metadata !1727, metadata !1728}
!1715 = metadata !{i32 786445, metadata !1713, metadata !"handlers", metadata !1372, i32 139, i64 32, i64 32, i64 0, i32 0, metadata !1716} ; [ DW_TAG_member ] [handlers] [line 139, size 32, align 32, offset 0] [from ]
!1716 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1717} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_phase_handler_t]
!1717 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_t", metadata !1372, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !1718} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_t] [line 126, size 0, align 0, offset 0] [from ngx_http_phase_handler_s]
!1718 = metadata !{i32 786451, null, metadata !"ngx_http_phase_handler_s", metadata !1372, i32 131, i64 96, i64 32, i32 0, i32 0, null, metadata !1719, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_phase_handler_s] [line 131, size 96, align 32, offset 0] [from ]
!1719 = metadata !{metadata !1720, metadata !1725, metadata !1726}
!1720 = metadata !{i32 786445, metadata !1718, metadata !"checker", metadata !1372, i32 132, i64 32, i64 32, i64 0, i32 0, metadata !1721} ; [ DW_TAG_member ] [checker] [line 132, size 32, align 32, offset 0] [from ngx_http_phase_handler_pt]
!1721 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_pt", metadata !1372, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !1722} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_pt] [line 128, size 0, align 0, offset 0] [from ]
!1722 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1723} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1723 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1724, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1724 = metadata !{metadata !484, metadata !683, metadata !1716}
!1725 = metadata !{i32 786445, metadata !1718, metadata !"handler", metadata !1372, i32 133, i64 32, i64 32, i64 32, i32 0, metadata !679} ; [ DW_TAG_member ] [handler] [line 133, size 32, align 32, offset 32] [from ngx_http_handler_pt]
!1726 = metadata !{i32 786445, metadata !1718, metadata !"next", metadata !1372, i32 134, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [next] [line 134, size 32, align 32, offset 64] [from ngx_uint_t]
!1727 = metadata !{i32 786445, metadata !1713, metadata !"server_rewrite_index", metadata !1372, i32 140, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [server_rewrite_index] [line 140, size 32, align 32, offset 32] [from ngx_uint_t]
!1728 = metadata !{i32 786445, metadata !1713, metadata !"location_rewrite_index", metadata !1372, i32 141, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [location_rewrite_index] [line 141, size 32, align 32, offset 64] [from ngx_uint_t]
!1729 = metadata !{i32 786445, metadata !1708, metadata !"headers_in_hash", metadata !1372, i32 155, i64 64, i64 32, i64 256, i32 0, metadata !1025} ; [ DW_TAG_member ] [headers_in_hash] [line 155, size 64, align 32, offset 256] [from ngx_hash_t]
!1730 = metadata !{i32 786445, metadata !1708, metadata !"variables_hash", metadata !1372, i32 157, i64 64, i64 32, i64 320, i32 0, metadata !1025} ; [ DW_TAG_member ] [variables_hash] [line 157, size 64, align 32, offset 320] [from ngx_hash_t]
!1731 = metadata !{i32 786445, metadata !1708, metadata !"variables", metadata !1372, i32 159, i64 160, i64 32, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [variables] [line 159, size 160, align 32, offset 384] [from ngx_array_t]
!1732 = metadata !{i32 786445, metadata !1708, metadata !"ncaptures", metadata !1372, i32 160, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 160, size 32, align 32, offset 544] [from ngx_uint_t]
!1733 = metadata !{i32 786445, metadata !1708, metadata !"server_names_hash_max_size", metadata !1372, i32 162, i64 32, i64 32, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_max_size] [line 162, size 32, align 32, offset 576] [from ngx_uint_t]
!1734 = metadata !{i32 786445, metadata !1708, metadata !"server_names_hash_bucket_size", metadata !1372, i32 163, i64 32, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_bucket_size] [line 163, size 32, align 32, offset 608] [from ngx_uint_t]
!1735 = metadata !{i32 786445, metadata !1708, metadata !"variables_hash_max_size", metadata !1372, i32 165, i64 32, i64 32, i64 640, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_max_size] [line 165, size 32, align 32, offset 640] [from ngx_uint_t]
!1736 = metadata !{i32 786445, metadata !1708, metadata !"variables_hash_bucket_size", metadata !1372, i32 166, i64 32, i64 32, i64 672, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_bucket_size] [line 166, size 32, align 32, offset 672] [from ngx_uint_t]
!1737 = metadata !{i32 786445, metadata !1708, metadata !"variables_keys", metadata !1372, i32 168, i64 32, i64 32, i64 704, i32 0, metadata !1738} ; [ DW_TAG_member ] [variables_keys] [line 168, size 32, align 32, offset 704] [from ]
!1738 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1739} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!1739 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !1372, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !1740} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!1740 = metadata !{i32 786451, null, metadata !"", metadata !1027, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !1741, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!1741 = metadata !{metadata !1742, metadata !1743, metadata !1744, metadata !1745, metadata !1746, metadata !1747, metadata !1748, metadata !1749, metadata !1750}
!1742 = metadata !{i32 786445, metadata !1740, metadata !"hsize", metadata !1027, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!1743 = metadata !{i32 786445, metadata !1740, metadata !"pool", metadata !1027, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!1744 = metadata !{i32 786445, metadata !1740, metadata !"temp_pool", metadata !1027, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!1745 = metadata !{i32 786445, metadata !1740, metadata !"keys", metadata !1027, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!1746 = metadata !{i32 786445, metadata !1740, metadata !"keys_hash", metadata !1027, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!1747 = metadata !{i32 786445, metadata !1740, metadata !"dns_wc_head", metadata !1027, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!1748 = metadata !{i32 786445, metadata !1740, metadata !"dns_wc_head_hash", metadata !1027, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!1749 = metadata !{i32 786445, metadata !1740, metadata !"dns_wc_tail", metadata !1027, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!1750 = metadata !{i32 786445, metadata !1740, metadata !"dns_wc_tail_hash", metadata !1027, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!1751 = metadata !{i32 786445, metadata !1708, metadata !"ports", metadata !1372, i32 170, i64 32, i64 32, i64 736, i32 0, metadata !18} ; [ DW_TAG_member ] [ports] [line 170, size 32, align 32, offset 736] [from ]
!1752 = metadata !{i32 786445, metadata !1708, metadata !"try_files", metadata !1372, i32 172, i64 32, i64 32, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [try_files] [line 172, size 32, align 32, offset 768] [from ngx_uint_t]
!1753 = metadata !{i32 786445, metadata !1708, metadata !"phases", metadata !1372, i32 174, i64 1760, i64 32, i64 800, i32 0, metadata !1754} ; [ DW_TAG_member ] [phases] [line 174, size 1760, align 32, offset 800] [from ]
!1754 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1760, i64 32, i32 0, i32 0, metadata !1755, metadata !1759, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1760, align 32, offset 0] [from ngx_http_phase_t]
!1755 = metadata !{i32 786454, null, metadata !"ngx_http_phase_t", metadata !1372, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !1756} ; [ DW_TAG_typedef ] [ngx_http_phase_t] [line 147, size 0, align 0, offset 0] [from ]
!1756 = metadata !{i32 786451, null, metadata !"", metadata !1372, i32 145, i64 160, i64 32, i32 0, i32 0, null, metadata !1757, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 145, size 160, align 32, offset 0] [from ]
!1757 = metadata !{metadata !1758}
!1758 = metadata !{i32 786445, metadata !1756, metadata !"handlers", metadata !1372, i32 146, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [handlers] [line 146, size 160, align 32, offset 0] [from ngx_array_t]
!1759 = metadata !{metadata !1760}
!1760 = metadata !{i32 786465, i64 0, i64 10}     ; [ DW_TAG_subrange_type ] [0, 10]
!1761 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_handler", metadata !"ngx_http_limit_conn_handler", metadata !"", metadata !6, i32 59, metadata !681, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_limit_conn_handler, null, null, metadata !1762, i32 60} ; [ DW_TAG_subprogram ] [line 59] [local] [def] [scope 60] [ngx_http_limit_conn_handler]
!1762 = metadata !{metadata !1763}
!1763 = metadata !{metadata !1764, metadata !1765, metadata !1767, metadata !1768, metadata !1769, metadata !1770, metadata !1771, metadata !1772, metadata !1773, metadata !1774, metadata !1775, metadata !1776, metadata !1777, metadata !1778}
!1764 = metadata !{i32 786689, metadata !1761, metadata !"r", metadata !6, i32 16777275, metadata !683, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 59]
!1765 = metadata !{i32 786688, metadata !1766, metadata !"len", metadata !6, i32 61, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 61]
!1766 = metadata !{i32 786443, metadata !1761, i32 60, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1767 = metadata !{i32 786688, metadata !1766, metadata !"n", metadata !6, i32 62, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 62]
!1768 = metadata !{i32 786688, metadata !1766, metadata !"hash", metadata !6, i32 63, metadata !689, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 63]
!1769 = metadata !{i32 786688, metadata !1766, metadata !"i", metadata !6, i32 64, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!1770 = metadata !{i32 786688, metadata !1766, metadata !"shpool", metadata !6, i32 65, metadata !556, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shpool] [line 65]
!1771 = metadata !{i32 786688, metadata !1766, metadata !"node", metadata !6, i32 66, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 66]
!1772 = metadata !{i32 786688, metadata !1766, metadata !"cln", metadata !6, i32 67, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cln] [line 67]
!1773 = metadata !{i32 786688, metadata !1766, metadata !"vv", metadata !6, i32 68, metadata !1579, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vv] [line 68]
!1774 = metadata !{i32 786688, metadata !1766, metadata !"ctx", metadata !6, i32 69, metadata !529, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 69]
!1775 = metadata !{i32 786688, metadata !1766, metadata !"lc", metadata !6, i32 70, metadata !622, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lc] [line 70]
!1776 = metadata !{i32 786688, metadata !1766, metadata !"lccf", metadata !6, i32 71, metadata !491, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lccf] [line 71]
!1777 = metadata !{i32 786688, metadata !1766, metadata !"limits", metadata !6, i32 72, metadata !498, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limits] [line 72]
!1778 = metadata !{i32 786688, metadata !1766, metadata !"lccln", metadata !6, i32 73, metadata !1779, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lccln] [line 73]
!1779 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1780} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_conn_cleanup_t]
!1780 = metadata !{i32 786454, null, metadata !"ngx_http_limit_conn_cleanup_t", metadata !6, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !1781} ; [ DW_TAG_typedef ] [ngx_http_limit_conn_cleanup_t] [line 15, size 0, align 0, offset 0] [from ]
!1781 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 13, i64 64, i64 32, i32 0, i32 0, null, metadata !1782, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 13, size 64, align 32, offset 0] [from ]
!1782 = metadata !{metadata !1783, metadata !1784}
!1783 = metadata !{i32 786445, metadata !1781, metadata !"shm_zone", metadata !6, i32 14, i64 32, i64 32, i64 0, i32 0, metadata !464} ; [ DW_TAG_member ] [shm_zone] [line 14, size 32, align 32, offset 0] [from ]
!1784 = metadata !{i32 786445, metadata !1781, metadata !"node", metadata !6, i32 15, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [node] [line 15, size 32, align 32, offset 32] [from ]
!1785 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_cleanup", metadata !"ngx_http_limit_conn_cleanup", metadata !"", metadata !6, i32 197, metadata !197, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i8*)* @ngx_http_limit_conn_cleanup, null, null, metadata !1786, i32 198} ; [ DW_TAG_subprogram ] [line 197] [local] [def] [scope 198] [ngx_http_limit_conn_cleanup]
!1786 = metadata !{metadata !1787}
!1787 = metadata !{metadata !1788, metadata !1789, metadata !1791, metadata !1792, metadata !1793, metadata !1794}
!1788 = metadata !{i32 786689, metadata !1785, metadata !"data", metadata !6, i32 16777413, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 197]
!1789 = metadata !{i32 786688, metadata !1790, metadata !"lccln", metadata !6, i32 199, metadata !1779, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lccln] [line 199]
!1790 = metadata !{i32 786443, metadata !1785, i32 198, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1791 = metadata !{i32 786688, metadata !1790, metadata !"shpool", metadata !6, i32 200, metadata !556, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shpool] [line 200]
!1792 = metadata !{i32 786688, metadata !1790, metadata !"node", metadata !6, i32 201, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 201]
!1793 = metadata !{i32 786688, metadata !1790, metadata !"ctx", metadata !6, i32 202, metadata !529, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 202]
!1794 = metadata !{i32 786688, metadata !1790, metadata !"lc", metadata !6, i32 203, metadata !622, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lc] [line 203]
!1795 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_cleanup_all", metadata !"ngx_http_limit_conn_cleanup_all", metadata !"", metadata !6, i32 218, metadata !1796, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1798, i32 219} ; [ DW_TAG_subprogram ] [line 218] [local] [def] [scope 219] [ngx_http_limit_conn_cleanup_all]
!1796 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1797, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1797 = metadata !{null, metadata !34}
!1798 = metadata !{metadata !1799}
!1799 = metadata !{metadata !1800, metadata !1801}
!1800 = metadata !{i32 786689, metadata !1795, metadata !"pool", metadata !6, i32 16777434, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 218]
!1801 = metadata !{i32 786688, metadata !1802, metadata !"cln", metadata !6, i32 220, metadata !190, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cln] [line 220]
!1802 = metadata !{i32 786443, metadata !1795, i32 219, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1803 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_conn_lookup", metadata !"ngx_http_limit_conn_lookup", metadata !"", metadata !6, i32 169, metadata !1804, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1806, i32 170} ; [ DW_TAG_subprogram ] [line 169] [local] [def] [scope 170] [ngx_http_limit_conn_lookup]
!1804 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1805, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1805 = metadata !{metadata !266, metadata !534, metadata !1579, metadata !689}
!1806 = metadata !{metadata !1807}
!1807 = metadata !{metadata !1808, metadata !1809, metadata !1810, metadata !1811, metadata !1813, metadata !1814, metadata !1815}
!1808 = metadata !{i32 786689, metadata !1803, metadata !"rbtree", metadata !6, i32 16777385, metadata !534, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rbtree] [line 169]
!1809 = metadata !{i32 786689, metadata !1803, metadata !"vv", metadata !6, i32 33554601, metadata !1579, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [vv] [line 169]
!1810 = metadata !{i32 786689, metadata !1803, metadata !"hash", metadata !6, i32 50331817, metadata !689, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 169]
!1811 = metadata !{i32 786688, metadata !1812, metadata !"rc", metadata !6, i32 171, metadata !484, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 171]
!1812 = metadata !{i32 786443, metadata !1803, i32 170, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1813 = metadata !{i32 786688, metadata !1812, metadata !"node", metadata !6, i32 172, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 172]
!1814 = metadata !{i32 786688, metadata !1812, metadata !"sentinel", metadata !6, i32 173, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sentinel] [line 173]
!1815 = metadata !{i32 786688, metadata !1812, metadata !"lcn", metadata !6, i32 174, metadata !622, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcn] [line 174]
!1816 = metadata !{i32 786478, i32 0, metadata !1817, metadata !"ngx_crc32_short", metadata !"ngx_crc32_short", metadata !"", metadata !1817, i32 21, metadata !1818, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1820, i32 22} ; [ DW_TAG_subprogram ] [line 21] [local] [def] [scope 22] [ngx_crc32_short]
!1817 = metadata !{i32 786473, metadata !"src/core/ngx_crc32.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1818 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1819, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1819 = metadata !{metadata !689, metadata !44, metadata !30}
!1820 = metadata !{metadata !1821}
!1821 = metadata !{metadata !1822, metadata !1823, metadata !1824, metadata !1826}
!1822 = metadata !{i32 786689, metadata !1816, metadata !"p", metadata !1817, i32 16777237, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 21]
!1823 = metadata !{i32 786689, metadata !1816, metadata !"len", metadata !1817, i32 33554453, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 21]
!1824 = metadata !{i32 786688, metadata !1825, metadata !"c", metadata !1817, i32 23, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 23]
!1825 = metadata !{i32 786443, metadata !1816, i32 22, i32 0, metadata !1817, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_crc32.h]
!1826 = metadata !{i32 786688, metadata !1825, metadata !"crc", metadata !1817, i32 24, metadata !689, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [crc] [line 24]
!1827 = metadata !{metadata !1828}
!1828 = metadata !{metadata !1829, metadata !1867, metadata !1871, metadata !1878, metadata !1887}
!1829 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_conn_module", metadata !"ngx_http_limit_conn_module", metadata !"", metadata !6, i32 47, metadata !1830, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_limit_conn_module} ; [ DW_TAG_variable ] [ngx_http_limit_conn_module] [line 47] [def]
!1830 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1831} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1831 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1832, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1832 = metadata !{metadata !1833, metadata !1834, metadata !1835, metadata !1836, metadata !1837, metadata !1838, metadata !1839, metadata !1840, metadata !1841, metadata !1842, metadata !1843, metadata !1847, metadata !1851, metadata !1852, metadata !1853, metadata !1857, metadata !1858, metadata !1859, metadata !1860, metadata !1861, metadata !1862, metadata !1863, metadata !1864, metadata !1865, metadata !1866}
!1833 = metadata !{i32 786445, metadata !1831, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1834 = metadata !{i32 786445, metadata !1831, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1835 = metadata !{i32 786445, metadata !1831, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1836 = metadata !{i32 786445, metadata !1831, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1837 = metadata !{i32 786445, metadata !1831, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1838 = metadata !{i32 786445, metadata !1831, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1839 = metadata !{i32 786445, metadata !1831, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1840 = metadata !{i32 786445, metadata !1831, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1841 = metadata !{i32 786445, metadata !1831, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1842 = metadata !{i32 786445, metadata !1831, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1843 = metadata !{i32 786445, metadata !1831, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1844} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1844 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1845} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1845 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1846, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1846 = metadata !{metadata !484, metadata !137}
!1847 = metadata !{i32 786445, metadata !1831, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1848} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1848 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1849} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1849 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1850, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1850 = metadata !{metadata !484, metadata !203}
!1851 = metadata !{i32 786445, metadata !1831, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1848} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1852 = metadata !{i32 786445, metadata !1831, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1848} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1853 = metadata !{i32 786445, metadata !1831, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1854} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1854 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1855} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1855 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1856, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1856 = metadata !{null, metadata !203}
!1857 = metadata !{i32 786445, metadata !1831, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1854} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1858 = metadata !{i32 786445, metadata !1831, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1854} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1859 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1860 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1861 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1862 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1863 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1864 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1865 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1866 = metadata !{i32 786445, metadata !1831, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1867 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_conn_commands", metadata !"ngx_http_limit_conn_commands", metadata !"", metadata !6, i32 37, metadata !1868, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_limit_conn_commands} ; [ DW_TAG_variable ] [ngx_http_limit_conn_commands] [line 37] [local] [def]
!1868 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1120, i64 32, i32 0, i32 0, metadata !448, metadata !1869, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1120, align 32, offset 0] [from ngx_command_t]
!1869 = metadata !{metadata !1870}
!1870 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ] [0, 4]
!1871 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_conn_log_levels", metadata !"ngx_http_limit_conn_log_levels", metadata !"", metadata !6, i32 36, metadata !1872, i32 1, i32 1, [5 x %struct.ngx_conf_enum_t]* @ngx_http_limit_conn_log_levels} ; [ DW_TAG_variable ] [ngx_http_limit_conn_log_levels] [line 36] [local] [def]
!1872 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 480, i64 32, i32 0, i32 0, metadata !1873, metadata !1869, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 480, align 32, offset 0] [from ngx_conf_enum_t]
!1873 = metadata !{i32 786454, null, metadata !"ngx_conf_enum_t", metadata !6, i32 210, i64 0, i64 0, i64 0, i32 0, metadata !1874} ; [ DW_TAG_typedef ] [ngx_conf_enum_t] [line 210, size 0, align 0, offset 0] [from ]
!1874 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 207, i64 96, i64 32, i32 0, i32 0, null, metadata !1875, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 207, size 96, align 32, offset 0] [from ]
!1875 = metadata !{metadata !1876, metadata !1877}
!1876 = metadata !{i32 786445, metadata !1874, metadata !"name", metadata !13, i32 208, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 208, size 64, align 32, offset 0] [from ngx_str_t]
!1877 = metadata !{i32 786445, metadata !1874, metadata !"value", metadata !13, i32 209, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [value] [line 209, size 32, align 32, offset 64] [from ngx_uint_t]
!1878 = metadata !{i32 786484, i32 0, null, metadata !"ngx_conf_deprecated_limit_zone", metadata !"ngx_conf_deprecated_limit_zone", metadata !"", metadata !6, i32 35, metadata !1879, i32 1, i32 1, %struct.ngx_conf_deprecated_t* @ngx_conf_deprecated_limit_zone} ; [ DW_TAG_variable ] [ngx_conf_deprecated_limit_zone] [line 35] [local] [def]
!1879 = metadata !{i32 786454, null, metadata !"ngx_conf_deprecated_t", metadata !6, i32 197, i64 0, i64 0, i64 0, i32 0, metadata !1880} ; [ DW_TAG_typedef ] [ngx_conf_deprecated_t] [line 197, size 0, align 0, offset 0] [from ]
!1880 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 193, i64 96, i64 32, i32 0, i32 0, null, metadata !1881, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 193, size 96, align 32, offset 0] [from ]
!1881 = metadata !{metadata !1882, metadata !1885, metadata !1886}
!1882 = metadata !{i32 786445, metadata !1880, metadata !"post_handler", metadata !13, i32 194, i64 32, i64 32, i64 0, i32 0, metadata !1883} ; [ DW_TAG_member ] [post_handler] [line 194, size 32, align 32, offset 0] [from ngx_conf_post_handler_pt]
!1883 = metadata !{i32 786454, null, metadata !"ngx_conf_post_handler_pt", metadata !13, i32 185, i64 0, i64 0, i64 0, i32 0, metadata !1884} ; [ DW_TAG_typedef ] [ngx_conf_post_handler_pt] [line 185, size 0, align 0, offset 0] [from ]
!1884 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !652} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1885 = metadata !{i32 786445, metadata !1880, metadata !"old_name", metadata !13, i32 195, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [old_name] [line 195, size 32, align 32, offset 32] [from ]
!1886 = metadata !{i32 786445, metadata !1880, metadata !"new_name", metadata !13, i32 196, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [new_name] [line 196, size 32, align 32, offset 64] [from ]
!1887 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_conn_module_ctx", metadata !"ngx_http_limit_conn_module_ctx", metadata !"", metadata !6, i32 38, metadata !1888, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_limit_conn_module_ctx} ; [ DW_TAG_variable ] [ngx_http_limit_conn_module_ctx] [line 38] [local] [def]
!1888 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1889} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1889 = metadata !{i32 786451, null, metadata !"", metadata !1428, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1890, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1890 = metadata !{metadata !1891, metadata !1893, metadata !1894, metadata !1896, metadata !1900, metadata !1901, metadata !1902, metadata !1903}
!1891 = metadata !{i32 786445, metadata !1889, metadata !"preconfiguration", metadata !1428, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1892} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1892 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !671} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1893 = metadata !{i32 786445, metadata !1889, metadata !"postconfiguration", metadata !1428, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1892} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1894 = metadata !{i32 786445, metadata !1889, metadata !"create_main_conf", metadata !1428, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1895} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1895 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !663} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1896 = metadata !{i32 786445, metadata !1889, metadata !"init_main_conf", metadata !1428, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1897} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1897 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1898} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1898 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1899, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1899 = metadata !{metadata !9, metadata !11, metadata !24}
!1900 = metadata !{i32 786445, metadata !1889, metadata !"create_srv_conf", metadata !1428, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1895} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1901 = metadata !{i32 786445, metadata !1889, metadata !"merge_srv_conf", metadata !1428, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1884} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1902 = metadata !{i32 786445, metadata !1889, metadata !"create_loc_conf", metadata !1428, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1895} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1903 = metadata !{i32 786445, metadata !1889, metadata !"merge_loc_conf", metadata !1428, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1884} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1904 = metadata !{i32 303, i32 0, metadata !636, null}
!1905 = metadata !{i32 308, i32 0, metadata !643, null}
!1906 = metadata !{i32 309, i32 0, metadata !643, null}
!1907 = metadata !{i32 313, i32 0, metadata !643, null}
!1908 = metadata !{metadata !"any pointer", metadata !1909}
!1909 = metadata !{metadata !"omnipotent char", metadata !1910}
!1910 = metadata !{metadata !"Simple C/C++ TBAA"}
!1911 = metadata !{%struct.ngx_http_limit_conn_ctx_t* null}
!1912 = metadata !{i32 314, i32 0, metadata !643, null}
!1913 = metadata !{i32 315, i32 0, metadata !643, null}
!1914 = metadata !{i32 316, i32 0, metadata !643, null}
!1915 = metadata !{metadata !"int", metadata !1909}
!1916 = metadata !{i32 1}
!1917 = metadata !{i32 317, i32 0, metadata !1918, null}
!1918 = metadata !{i32 786443, metadata !643, i32 317, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1919 = metadata !{i32 319, i32 0, metadata !1920, null}
!1920 = metadata !{i32 786443, metadata !1921, i32 318, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1921 = metadata !{i32 786443, metadata !1918, i32 317, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1922 = metadata !{i32 326, i32 0, metadata !1920, null}
!1923 = metadata !{i32 327, i32 0, metadata !1920, null}
!1924 = metadata !{i32 342, i32 0, metadata !1925, null}
!1925 = metadata !{i32 786443, metadata !1921, i32 339, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1926 = metadata !{i32 318, i32 0, metadata !1921, null}
!1927 = metadata !{i32 320, i32 0, metadata !1920, null}
!1928 = metadata !{i32 321, i32 0, metadata !1920, null}
!1929 = metadata !{i32 322, i32 0, metadata !1930, null}
!1930 = metadata !{i32 786443, metadata !1920, i32 321, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1931 = metadata !{i32 323, i32 0, metadata !1930, null}
!1932 = metadata !{i32 325, i32 0, metadata !1920, null}
!1933 = metadata !{i32 328, i32 0, metadata !1920, null}
!1934 = metadata !{i32 329, i32 0, metadata !1920, null}
!1935 = metadata !{i32 330, i32 0, metadata !1936, null}
!1936 = metadata !{i32 786443, metadata !1920, i32 329, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1937 = metadata !{i32 331, i32 0, metadata !1936, null}
!1938 = metadata !{i32 333, i32 0, metadata !1920, null}
!1939 = metadata !{i32 334, i32 0, metadata !1940, null}
!1940 = metadata !{i32 786443, metadata !1920, i32 333, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1941 = metadata !{i32 335, i32 0, metadata !1940, null}
!1942 = metadata !{i32 339, i32 0, metadata !1921, null}
!1943 = metadata !{i32 340, i32 0, metadata !1925, null}
!1944 = metadata !{i32 341, i32 0, metadata !1925, null}
!1945 = metadata !{i32 343, i32 0, metadata !1925, null}
!1946 = metadata !{i32 346, i32 0, metadata !1925, null}
!1947 = metadata !{i32 347, i32 0, metadata !1925, null}
!1948 = metadata !{i32 350, i32 0, metadata !1925, null}
!1949 = metadata !{i32 351, i32 0, metadata !1925, null}
!1950 = metadata !{i32 353, i32 0, metadata !1921, null}
!1951 = metadata !{i32 354, i32 0, metadata !1921, null}
!1952 = metadata !{i32 356, i32 0, metadata !643, null}
!1953 = metadata !{i32 357, i32 0, metadata !1954, null}
!1954 = metadata !{i32 786443, metadata !643, i32 356, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1955 = metadata !{i32 358, i32 0, metadata !1954, null}
!1956 = metadata !{i32 360, i32 0, metadata !643, null}
!1957 = metadata !{i32 361, i32 0, metadata !1958, null}
!1958 = metadata !{i32 786443, metadata !643, i32 360, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1959 = metadata !{i32 362, i32 0, metadata !1958, null}
!1960 = metadata !{i32 364, i32 0, metadata !643, null}
!1961 = metadata !{i32 365, i32 0, metadata !643, null}
!1962 = metadata !{i32 368, i32 0, metadata !643, null}
!1963 = metadata !{i32 370, i32 0, metadata !1964, null}
!1964 = metadata !{i32 786443, metadata !643, i32 368, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1965 = metadata !{i32 371, i32 0, metadata !1964, null}
!1966 = metadata !{i32 373, i32 0, metadata !643, null}
!1967 = metadata !{i32 374, i32 0, metadata !643, null}
!1968 = metadata !{i32 375, i32 0, metadata !643, null}
!1969 = metadata !{i32 376, i32 0, metadata !643, null}
!1970 = metadata !{i32 378, i32 0, metadata !518, null}
!1971 = metadata !{i32 384, i32 0, metadata !525, null}
!1972 = metadata !{i32 385, i32 0, metadata !525, null}
!1973 = metadata !{i32 386, i32 0, metadata !525, null}
!1974 = metadata !{i32 387, i32 0, metadata !1975, null}
!1975 = metadata !{i32 786443, metadata !525, i32 386, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1976 = metadata !{i32 388, i32 0, metadata !1975, null}
!1977 = metadata !{i32 390, i32 0, metadata !525, null}
!1978 = metadata !{i32 391, i32 0, metadata !525, null}
!1979 = metadata !{i32 392, i32 0, metadata !525, null}
!1980 = metadata !{i32 393, i32 0, metadata !525, null}
!1981 = metadata !{i32 396, i32 0, metadata !525, null}
!1982 = metadata !{i32 397, i32 0, metadata !525, null}
!1983 = metadata !{i32 400, i32 0, metadata !525, null}
!1984 = metadata !{i32 401, i32 0, metadata !525, null}
!1985 = metadata !{i32 402, i32 0, metadata !525, null}
!1986 = metadata !{i32 403, i32 0, metadata !1987, null}
!1987 = metadata !{i32 786443, metadata !525, i32 402, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1988 = metadata !{i32 404, i32 0, metadata !1987, null}
!1989 = metadata !{i32 406, i32 0, metadata !525, null}
!1990 = metadata !{i32 407, i32 0, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !525, i32 406, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1992 = metadata !{i32 408, i32 0, metadata !1991, null}
!1993 = metadata !{i32 410, i32 0, metadata !525, null}
!1994 = metadata !{i32 411, i32 0, metadata !525, null}
!1995 = metadata !{i32 414, i32 0, metadata !525, null}
!1996 = metadata !{i32 416, i32 0, metadata !1997, null}
!1997 = metadata !{i32 786443, metadata !525, i32 414, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!1998 = metadata !{i32 417, i32 0, metadata !1997, null}
!1999 = metadata !{i32 419, i32 0, metadata !525, null}
!2000 = metadata !{i32 420, i32 0, metadata !525, null}
!2001 = metadata !{i32 421, i32 0, metadata !525, null}
!2002 = metadata !{i32 422, i32 0, metadata !525, null}
!2003 = metadata !{i32 424, i32 0, metadata !5, null}
!2004 = metadata !{i32 433, i32 0, metadata !463, null}
!2005 = metadata !{i32 434, i32 0, metadata !463, null}
!2006 = metadata !{i32 435, i32 0, metadata !463, null}
!2007 = metadata !{i32 438, i32 0, metadata !463, null}
!2008 = metadata !{i32 439, i32 0, metadata !463, null}
!2009 = metadata !{i32 444, i32 0, metadata !2010, null}
!2010 = metadata !{i32 786443, metadata !463, i32 444, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2011 = metadata !{i32 440, i32 0, metadata !2012, null}
!2012 = metadata !{i32 786443, metadata !463, i32 439, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2013 = metadata !{i32 786689, metadata !509, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !2011} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2014 = metadata !{i32 32, i32 0, metadata !509, metadata !2011}
!2015 = metadata !{i32 8}
!2016 = metadata !{i32 786689, metadata !509, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, metadata !2011} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2017 = metadata !{i32 39, i32 0, metadata !2018, metadata !2011}
!2018 = metadata !{i32 786443, metadata !509, i32 33, i32 0, metadata !21, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!2019 = metadata !{i32 40, i32 0, metadata !2018, metadata !2011}
!2020 = metadata !{i32 41, i32 0, metadata !2018, metadata !2011}
!2021 = metadata !{i32 42, i32 0, metadata !2018, metadata !2011}
!2022 = metadata !{i32 44, i32 0, metadata !2018, metadata !2011}
!2023 = metadata !{i32 45, i32 0, metadata !2018, metadata !2011}
!2024 = metadata !{i32 445, i32 0, metadata !2025, null}
!2025 = metadata !{i32 786443, metadata !2010, i32 444, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2026 = metadata !{i32 449, i32 0, metadata !463, null}
!2027 = metadata !{i32 450, i32 0, metadata !463, null}
!2028 = metadata !{i32 451, i32 0, metadata !2029, null}
!2029 = metadata !{i32 786443, metadata !463, i32 450, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2030 = metadata !{i32 452, i32 0, metadata !2029, null}
!2031 = metadata !{i32 454, i32 0, metadata !463, null}
!2032 = metadata !{i32 455, i32 0, metadata !2033, null}
!2033 = metadata !{i32 786443, metadata !463, i32 454, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2034 = metadata !{i32 456, i32 0, metadata !2033, null}
!2035 = metadata !{i32 458, i32 0, metadata !463, null}
!2036 = metadata !{i32 459, i32 0, metadata !463, null}
!2037 = metadata !{i32 460, i32 0, metadata !463, null}
!2038 = metadata !{i32 461, i32 0, metadata !463, null}
!2039 = metadata !{i32 462, i32 0, metadata !463, null}
!2040 = metadata !{i32 229, i32 0, metadata !547, null}
!2041 = metadata !{i32 236, i32 0, metadata !553, null}
!2042 = metadata !{i32 237, i32 0, metadata !553, null}
!2043 = metadata !{i32 238, i32 0, metadata !609, null}
!2044 = metadata !{i32 239, i32 0, metadata !2045, null}
!2045 = metadata !{i32 786443, metadata !610, i32 238, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2046 = metadata !{i32 240, i32 0, metadata !2045, null}
!2047 = metadata !{i32 243, i32 0, metadata !610, null}
!2048 = metadata !{i32 244, i32 0, metadata !610, null}
!2049 = metadata !{i32 246, i32 0, metadata !553, null}
!2050 = metadata !{i32 247, i32 0, metadata !553, null}
!2051 = metadata !{i32 248, i32 0, metadata !2052, null}
!2052 = metadata !{i32 786443, metadata !553, i32 247, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2053 = metadata !{i32 249, i32 0, metadata !2052, null}
!2054 = metadata !{i32 251, i32 0, metadata !553, null}
!2055 = metadata !{i32 252, i32 0, metadata !553, null}
!2056 = metadata !{i32 255, i32 0, metadata !553, null}
!2057 = metadata !{i32 256, i32 0, metadata !553, null}
!2058 = metadata !{i32 257, i32 0, metadata !553, null}
!2059 = metadata !{i32 260, i32 0, metadata !553, null}
!2060 = metadata !{i32 261, i32 0, metadata !553, null}
!2061 = metadata !{i32 262, i32 0, metadata !553, null}
!2062 = metadata !{i32 263, i32 0, metadata !553, null}
!2063 = metadata !{i32 264, i32 0, metadata !553, null}
!2064 = metadata !{i32 265, i32 0, metadata !553, null}
!2065 = metadata !{i32 266, i32 0, metadata !553, null}
!2066 = metadata !{i32 269, i32 0, metadata !553, null}
!2067 = metadata !{i32 270, i32 0, metadata !553, null}
!2068 = metadata !{i32 271, i32 0, metadata !553, null}
!2069 = metadata !{i32 139, i32 0, metadata !612, null}
!2070 = metadata !{i32 145, i32 0, metadata !2071, null}
!2071 = metadata !{i32 786443, metadata !2072, i32 144, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2072 = metadata !{i32 786443, metadata !619, i32 144, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2073 = metadata !{i32 153, i32 0, metadata !2074, null}
!2074 = metadata !{i32 786443, metadata !2071, i32 152, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2075 = metadata !{i32 155, i32 0, metadata !2074, null}
!2076 = metadata !{i32 144, i32 0, metadata !2072, null}
!2077 = metadata !{i32 146, i32 0, metadata !2078, null}
!2078 = metadata !{i32 786443, metadata !2071, i32 145, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2079 = metadata !{i32 147, i32 0, metadata !2078, null}
!2080 = metadata !{i32 148, i32 0, metadata !2071, null}
!2081 = metadata !{i32 149, i32 0, metadata !2082, null}
!2082 = metadata !{i32 786443, metadata !2071, i32 148, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2083 = metadata !{i32 151, i32 0, metadata !2082, null}
!2084 = metadata !{i32 154, i32 0, metadata !2074, null}
!2085 = metadata !{i32 157, i32 0, metadata !2071, null}
!2086 = metadata !{i32 162, i32 0, metadata !619, null}
!2087 = metadata !{i32 163, i32 0, metadata !619, null}
!2088 = metadata !{i32 164, i32 0, metadata !619, null}
!2089 = metadata !{i32 165, i32 0, metadata !619, null}
!2090 = metadata !{i32 166, i32 0, metadata !619, null}
!2091 = metadata !{i32 167, i32 0, metadata !619, null}
!2092 = metadata !{i32 464, i32 0, metadata !670, null}
!2093 = metadata !{i32 468, i32 0, metadata !677, null}
!2094 = metadata !{i32 469, i32 0, metadata !677, null}
!2095 = metadata !{i32 470, i32 0, metadata !677, null}
!2096 = metadata !{i32 473, i32 0, metadata !677, null}
!2097 = metadata !{i32 474, i32 0, metadata !677, null}
!2098 = metadata !{i32 475, i32 0, metadata !677, null}
!2099 = metadata !{i32 273, i32 0, metadata !662, null}
!2100 = metadata !{i32 276, i32 0, metadata !669, null}
!2101 = metadata !{i32 277, i32 0, metadata !669, null}
!2102 = metadata !{i32 285, i32 0, metadata !669, null}
!2103 = metadata !{i32 286, i32 0, metadata !669, null}
!2104 = metadata !{i32 287, i32 0, metadata !669, null}
!2105 = metadata !{i32 289, i32 0, metadata !651, null}
!2106 = metadata !{i32 293, i32 0, metadata !660, null}
!2107 = metadata !{i32 294, i32 0, metadata !2108, null}
!2108 = metadata !{i32 786443, metadata !660, i32 293, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2109 = metadata !{i64 0, i64 4, metadata !1908, i64 4, i64 4, metadata !1915, i64 8, i64 4, metadata !1915, i64 12, i64 4, metadata !1915, i64 16, i64 4, metadata !1908}
!2110 = metadata !{i32 295, i32 0, metadata !2108, null}
!2111 = metadata !{i32 296, i32 0, metadata !660, null}
!2112 = metadata !{i32 297, i32 0, metadata !2113, null}
!2113 = metadata !{i32 786443, metadata !660, i32 296, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2114 = metadata !{i32 298, i32 0, metadata !2113, null}
!2115 = metadata !{i32 300, i32 0, metadata !660, null}
!2116 = metadata !{i32 59, i32 0, metadata !1761, null}
!2117 = metadata !{i32 74, i32 0, metadata !1766, null}
!2118 = metadata !{i32 77, i32 0, metadata !1766, null}
!2119 = metadata !{i32 78, i32 0, metadata !1766, null}
!2120 = metadata !{i32 79, i32 0, metadata !2121, null}
!2121 = metadata !{i32 786443, metadata !1766, i32 79, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2122 = metadata !{i32 90, i32 0, metadata !2123, null}
!2123 = metadata !{i32 786443, metadata !2124, i32 89, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2124 = metadata !{i32 786443, metadata !2121, i32 79, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2125 = metadata !{i32 127, i32 0, metadata !2124, null}
!2126 = metadata !{i32 80, i32 0, metadata !2124, null}
!2127 = metadata !{i32 81, i32 0, metadata !2124, null}
!2128 = metadata !{i32 82, i32 0, metadata !2124, null}
!2129 = metadata !{i32 85, i32 0, metadata !2124, null}
!2130 = metadata !{i32 86, i32 0, metadata !2124, null}
!2131 = metadata !{i32 89, i32 0, metadata !2124, null}
!2132 = metadata !{i32 91, i32 0, metadata !2123, null}
!2133 = metadata !{i32 94, i32 0, metadata !2124, null}
!2134 = metadata !{i32 95, i32 0, metadata !2124, null}
!2135 = metadata !{i32 786689, metadata !1816, metadata !"p", metadata !1817, i32 16777237, metadata !44, i32 0, metadata !2134} ; [ DW_TAG_arg_variable ] [p] [line 21]
!2136 = metadata !{i32 21, i32 0, metadata !1816, metadata !2134}
!2137 = metadata !{i32 786689, metadata !1816, metadata !"len", metadata !1817, i32 33554453, metadata !30, i32 0, metadata !2134} ; [ DW_TAG_arg_variable ] [len] [line 21]
!2138 = metadata !{i32 -1}                        ; [ DW_TAG_hi_user ]
!2139 = metadata !{i32 786688, metadata !1825, metadata !"crc", metadata !1817, i32 24, metadata !689, i32 0, metadata !2134} ; [ DW_TAG_auto_variable ] [crc] [line 24]
!2140 = metadata !{i32 26, i32 0, metadata !1825, metadata !2134}
!2141 = metadata !{i32 28, i32 0, metadata !1825, metadata !2134}
!2142 = metadata !{i32 29, i32 0, metadata !2143, metadata !2134}
!2143 = metadata !{i32 786443, metadata !1825, i32 28, i32 0, metadata !1817, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_crc32.h]
!2144 = metadata !{i32 786688, metadata !1825, metadata !"c", metadata !1817, i32 23, metadata !45, i32 0, metadata !2134} ; [ DW_TAG_auto_variable ] [c] [line 23]
!2145 = metadata !{i32 30, i32 0, metadata !2143, metadata !2134}
!2146 = metadata !{i32 31, i32 0, metadata !2143, metadata !2134}
!2147 = metadata !{i32 32, i32 0, metadata !2143, metadata !2134}
!2148 = metadata !{i32 34, i32 0, metadata !1825, metadata !2134}
!2149 = metadata !{i32 96, i32 0, metadata !2124, null}
!2150 = metadata !{i32 97, i32 0, metadata !2124, null}
!2151 = metadata !{i32 98, i32 0, metadata !2124, null}
!2152 = metadata !{i32 786689, metadata !1803, metadata !"rbtree", metadata !6, i32 16777385, metadata !534, i32 0, metadata !2151} ; [ DW_TAG_arg_variable ] [rbtree] [line 169]
!2153 = metadata !{i32 169, i32 0, metadata !1803, metadata !2151}
!2154 = metadata !{i32 786689, metadata !1803, metadata !"vv", metadata !6, i32 33554601, metadata !1579, i32 0, metadata !2151} ; [ DW_TAG_arg_variable ] [vv] [line 169]
!2155 = metadata !{i32 786689, metadata !1803, metadata !"hash", metadata !6, i32 50331817, metadata !689, i32 0, metadata !2151} ; [ DW_TAG_arg_variable ] [hash] [line 169]
!2156 = metadata !{i32 175, i32 0, metadata !1812, metadata !2151}
!2157 = metadata !{i32 176, i32 0, metadata !1812, metadata !2151}
!2158 = metadata !{i32 786688, metadata !1812, metadata !"sentinel", metadata !6, i32 173, metadata !266, i32 0, metadata !2151} ; [ DW_TAG_auto_variable ] [sentinel] [line 173]
!2159 = metadata !{i32 177, i32 0, metadata !1812, metadata !2151}
!2160 = metadata !{i32 178, i32 0, metadata !2161, metadata !2151}
!2161 = metadata !{i32 786443, metadata !1812, i32 177, i32 0, metadata !6, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2162 = metadata !{i32 179, i32 0, metadata !2163, metadata !2151}
!2163 = metadata !{i32 786443, metadata !2161, i32 178, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2164 = metadata !{i32 180, i32 0, metadata !2163, metadata !2151}
!2165 = metadata !{i32 182, i32 0, metadata !2161, metadata !2151}
!2166 = metadata !{i32 183, i32 0, metadata !2167, metadata !2151}
!2167 = metadata !{i32 786443, metadata !2161, i32 182, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2168 = metadata !{i32 184, i32 0, metadata !2167, metadata !2151}
!2169 = metadata !{i32 187, i32 0, metadata !2161, metadata !2151}
!2170 = metadata !{i32 188, i32 0, metadata !2161, metadata !2151}
!2171 = metadata !{i32 786688, metadata !1812, metadata !"rc", metadata !6, i32 171, metadata !484, i32 0, metadata !2151} ; [ DW_TAG_auto_variable ] [rc] [line 171]
!2172 = metadata !{i32 189, i32 0, metadata !2161, metadata !2151}
!2173 = metadata !{i32 192, i32 0, metadata !2161, metadata !2151}
!2174 = metadata !{i32 99, i32 0, metadata !2124, null}
!2175 = metadata !{i32 100, i32 0, metadata !2176, null}
!2176 = metadata !{i32 786443, metadata !2124, i32 99, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2177 = metadata !{i32 101, i32 0, metadata !2176, null}
!2178 = metadata !{i32 102, i32 0, metadata !2176, null}
!2179 = metadata !{i32 103, i32 0, metadata !2180, null}
!2180 = metadata !{i32 786443, metadata !2176, i32 102, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2181 = metadata !{i32 104, i32 0, metadata !2180, null}
!2182 = metadata !{i32 786689, metadata !1795, metadata !"pool", metadata !6, i32 16777434, metadata !34, i32 0, metadata !2181} ; [ DW_TAG_arg_variable ] [pool] [line 218]
!2183 = metadata !{i32 218, i32 0, metadata !1795, metadata !2181}
!2184 = metadata !{i32 221, i32 0, metadata !1802, metadata !2181}
!2185 = metadata !{i32 222, i32 0, metadata !1802, metadata !2181}
!2186 = metadata !{i32 223, i32 0, metadata !2187, metadata !2181}
!2187 = metadata !{i32 786443, metadata !1802, i32 222, i32 0, metadata !6, i32 70} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2188 = metadata !{i32 224, i32 0, metadata !2187, metadata !2181}
!2189 = metadata !{i32 226, i32 0, metadata !1802, metadata !2181}
!2190 = metadata !{i32 105, i32 0, metadata !2180, null}
!2191 = metadata !{i32 108, i32 0, metadata !2176, null}
!2192 = metadata !{i32 109, i32 0, metadata !2176, null}
!2193 = metadata !{i32 110, i32 0, metadata !2176, null}
!2194 = metadata !{metadata !"short", metadata !1909}
!2195 = metadata !{i32 111, i32 0, metadata !2176, null}
!2196 = metadata !{i32 112, i32 0, metadata !2176, null}
!2197 = metadata !{i32 113, i32 0, metadata !2176, null}
!2198 = metadata !{i32 116, i32 0, metadata !2199, null}
!2199 = metadata !{i32 786443, metadata !2124, i32 114, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2200 = metadata !{i32 117, i32 0, metadata !2201, null}
!2201 = metadata !{i32 786443, metadata !2199, i32 116, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2202 = metadata !{i32 118, i32 0, metadata !2201, null}
!2203 = metadata !{i32 119, i32 0, metadata !2201, null}
!2204 = metadata !{i32 120, i32 0, metadata !2201, null}
!2205 = metadata !{i32 786689, metadata !1795, metadata !"pool", metadata !6, i32 16777434, metadata !34, i32 0, metadata !2204} ; [ DW_TAG_arg_variable ] [pool] [line 218]
!2206 = metadata !{i32 218, i32 0, metadata !1795, metadata !2204}
!2207 = metadata !{i32 221, i32 0, metadata !1802, metadata !2204}
!2208 = metadata !{i32 222, i32 0, metadata !1802, metadata !2204}
!2209 = metadata !{i32 223, i32 0, metadata !2187, metadata !2204}
!2210 = metadata !{i32 224, i32 0, metadata !2187, metadata !2204}
!2211 = metadata !{i32 226, i32 0, metadata !1802, metadata !2204}
!2212 = metadata !{i32 121, i32 0, metadata !2201, null}
!2213 = metadata !{i32 123, i32 0, metadata !2199, null}
!2214 = metadata !{i32 126, i32 0, metadata !2124, null}
!2215 = metadata !{i32 128, i32 0, metadata !2124, null}
!2216 = metadata !{i32 131, i32 0, metadata !2124, null}
!2217 = metadata !{i32 132, i32 0, metadata !2124, null}
!2218 = metadata !{i32 133, i32 0, metadata !2124, null}
!2219 = metadata !{i32 134, i32 0, metadata !2124, null}
!2220 = metadata !{i32 135, i32 0, metadata !2124, null}
!2221 = metadata !{i32 137, i32 0, metadata !1766, null}
!2222 = metadata !{i32 197, i32 0, metadata !1785, null}
!2223 = metadata !{i32 204, i32 0, metadata !1790, null}
!2224 = metadata !{i32 205, i32 0, metadata !1790, null}
!2225 = metadata !{i32 206, i32 0, metadata !1790, null}
!2226 = metadata !{i32 207, i32 0, metadata !1790, null}
!2227 = metadata !{i32 208, i32 0, metadata !1790, null}
!2228 = metadata !{i32 210, i32 0, metadata !1790, null}
!2229 = metadata !{i32 211, i32 0, metadata !1790, null}
!2230 = metadata !{i32 212, i32 0, metadata !2231, null}
!2231 = metadata !{i32 786443, metadata !1790, i32 211, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_conn_module.c]
!2232 = metadata !{i32 213, i32 0, metadata !2231, null}
!2233 = metadata !{i32 214, i32 0, metadata !2231, null}
!2234 = metadata !{i32 215, i32 0, metadata !1790, null}
!2235 = metadata !{i32 216, i32 0, metadata !1790, null}
