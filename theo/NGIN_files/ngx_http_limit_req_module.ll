; ModuleID = 'src/http/modules/ngx_http_limit_req_module.c'
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
%struct.ngx_rbtree_s = type { %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* }
%struct.ngx_time_t = type { i32, i32, i32 }
%struct.ngx_http_limit_req_ctx_t = type { %struct.ngx_http_limit_req_shctx_t*, %struct.ngx_slab_pool_t*, i32, i32, %struct.ngx_str_t, %struct.ngx_http_limit_req_node_t* }
%struct.ngx_http_limit_req_shctx_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s }
%struct.ngx_slab_pool_t = type { %struct.ngx_shmtx_sh_t, i32, i32, %struct.ngx_slab_page_s*, %struct.ngx_slab_page_s, i8*, i8*, %struct.ngx_shmtx_t, i8*, i8, i8*, i8* }
%struct.ngx_shmtx_sh_t = type { i32, i32 }
%struct.ngx_slab_page_s = type { i32, %struct.ngx_slab_page_s*, i32 }
%struct.ngx_shmtx_t = type { i32*, i32*, i32, %union.sem_t, i32 }
%union.sem_t = type { i32, [12 x i8] }
%struct.ngx_http_limit_req_node_t = type { i8, i8, i16, %struct.ngx_queue_s, i32, i32, i32, [1 x i8] }
%struct.ngx_shm_zone_s = type { i8*, %struct.ngx_shm_t, i32 (%struct.ngx_shm_zone_s*, i8*)*, i8* }
%struct.ngx_shm_t = type { i8*, i32, %struct.ngx_str_t, %struct.ngx_log_s*, i32 }
%struct.ngx_http_limit_req_limit_t = type { %struct.ngx_shm_zone_s*, i32, i32 }
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

@ngx_http_limit_req_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* @ngx_http_limit_req_init, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_limit_req_create_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_limit_req_merge_conf }, align 4
@ngx_http_limit_req_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_limit_req_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([4 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_limit_req_commands to [4 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"limit_req_zone\00", align 1
@.str1 = private unnamed_addr constant [10 x i8] c"limit_req\00", align 1
@.str2 = private unnamed_addr constant [20 x i8] c"limit_req_log_level\00", align 1
@ngx_http_limit_req_log_levels = internal global [5 x %struct.ngx_conf_enum_t] [%struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str3, i32 0, i32 0) }, i32 7 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str4, i32 0, i32 0) }, i32 6 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0) }, i32 5 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str6, i32 0, i32 0) }, i32 4 }, %struct.ngx_conf_enum_t zeroinitializer], align 4
@ngx_http_limit_req_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0) }, i32 33554440, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_req_zone, i32 0, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str1, i32 0, i32 0) }, i32 234881038, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_req, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 19, i8* getelementptr inbounds ([20 x i8]* @.str2, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_enum_slot, i32 8, i32 20, i8* bitcast ([5 x %struct.ngx_conf_enum_t]* @ngx_http_limit_req_log_levels to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str3 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str4 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"warn\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"zone=\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"burst=\00", align 1
@.str9 = private unnamed_addr constant [24 x i8] c"invalid burst rate \22%V\22\00", align 1
@.str10 = private unnamed_addr constant [8 x i8] c"nodelay\00", align 1
@.str11 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@.str12 = private unnamed_addr constant [32 x i8] c"\22%V\22 must have \22zone\22 parameter\00", align 1
@.str13 = private unnamed_addr constant [28 x i8] c"unknown limit_req_zone \22%V\22\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"invalid zone size \22%V\22\00", align 1
@ngx_pagesize = external global i32
@.str16 = private unnamed_addr constant [23 x i8] c"zone \22%V\22 is too small\00", align 1
@.str17 = private unnamed_addr constant [6 x i8] c"rate=\00", align 1
@.str18 = private unnamed_addr constant [4 x i8] c"r/s\00", align 1
@.str19 = private unnamed_addr constant [4 x i8] c"r/m\00", align 1
@0 = internal unnamed_addr constant [3 x i8] c"-=\00"
@.str20 = private unnamed_addr constant [18 x i8] c"invalid rate \22%V\22\00", align 1
@.str21 = private unnamed_addr constant [35 x i8] c"no variable is defined for %V \22%V\22\00", align 1
@1 = internal unnamed_addr constant [2 x i8] c"/\00"
@2 = internal unnamed_addr constant [8 x i8] c"ssize_t\00"
@.str22 = private unnamed_addr constant [42 x i8] c"%V \22%V\22 is already bound to variable \22%V\22\00", align 1
@.str23 = private unnamed_addr constant [81 x i8] c"limit_req \22%V\22 uses the \22%V\22 variable while previously it used the \22%V\22 variable\00", align 1
@.str24 = private unnamed_addr constant [26 x i8] c" in limit_req zone \22%V\22%Z\00", align 1
@ngx_http_core_module = external global %struct.ngx_module_s
@.str25 = private unnamed_addr constant [62 x i8] c"the value of the \22%V\22 variable is more than 65535 bytes: \22%v\22\00", align 1
@.str26 = private unnamed_addr constant [50 x i8] c"limiting requests, excess: %ui.%03ui by zone \22%V\22\00", align 1
@.str27 = private unnamed_addr constant [50 x i8] c"delaying request, excess: %ui.%03ui, by zone \22%V\22\00", align 1
@ngx_current_msec = external global i32
@3 = internal unnamed_addr constant [28 x i8] c"src/event/ngx_event_timer.h\00"
@ngx_event_timer_rbtree = external global %struct.ngx_rbtree_s
@ngx_cached_time = external global %struct.ngx_time_t*
@4 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@5 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@6 = internal unnamed_addr constant [7 x i8] c"u_char\00"
@7 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@8 = internal unnamed_addr constant [5 x i8] c"long\00"
@9 = internal unnamed_addr constant [14 x i8] c"unsigned long\00"
@10 = internal unnamed_addr constant [2 x i8] c"+\00"
@11 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@12 = internal unnamed_addr constant [15 x i8] c"ngx_msec_int_t\00"
@13 = internal unnamed_addr constant [8 x i8] c"unary -\00"
@14 = internal unnamed_addr constant [2 x i8] c"*\00"
@15 = internal unnamed_addr constant [2 x i8] c"-\00"
@16 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@17 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@18 = internal unnamed_addr constant [4 x i8] c"int\00"
@19 = internal unnamed_addr constant [45 x i8] c"src/http/modules/ngx_http_limit_req_module.c\00"
@20 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@21 = internal unnamed_addr constant [21 x i8] c"src/core/ngx_crc32.h\00"
@ngx_crc32_table_short = external global i32*

define internal i8* @ngx_http_limit_req_zone(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* %cmd, i8* nocapture %conf) nounwind {
entry:
  %name = alloca %struct.ngx_str_t, align 4
  %s = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !525), !dbg !1953
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !526), !dbg !1953
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !527), !dbg !1953
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %name}, metadata !533), !dbg !1954
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %s}, metadata !534), !dbg !1955
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1956
  %0 = load %struct.ngx_array_s** %args, align 4, !dbg !1956, !tbaa !1957
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !1956
  %1 = load i8** %elts, align 4, !dbg !1956, !tbaa !1957
  %2 = bitcast i8* %1 to %struct.ngx_str_t*, !dbg !1956
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %2}, i64 0, metadata !532), !dbg !1956
  call void @llvm.dbg.value(metadata !1960, i64 0, metadata !539), !dbg !1961
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !531), !dbg !1962
  call void @llvm.dbg.value(metadata !1963, i64 0, metadata !535), !dbg !1964
  call void @llvm.dbg.value(metadata !1963, i64 0, metadata !536), !dbg !1965
  %len1 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !1966
  store i32 0, i32* %len1, align 4, !dbg !1966, !tbaa !1967
  call void @llvm.dbg.value(metadata !1963, i64 0, metadata !537), !dbg !1968
  %nelts301 = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 1, !dbg !1968
  %3 = load i32* %nelts301, align 4, !dbg !1968, !tbaa !1967
  %cmp302 = icmp ugt i32 %3, 1, !dbg !1968
  br i1 %cmp302, label %for.body.lr.ph, label %cont163, !dbg !1968

for.body.lr.ph:                                   ; preds = %entry
  %data10 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !1970
  %data25 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 1, !dbg !1973
  %len38 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 0, !dbg !1974
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1975
  br label %for.body, !dbg !1968

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %ctx.0307 = phi %struct.ngx_http_limit_req_ctx_t* [ null, %for.body.lr.ph ], [ %ctx.1, %for.cond.backedge ]
  %i.0306 = phi i32 [ 1, %for.body.lr.ph ], [ %46, %for.cond.backedge ]
  %scale.0305 = phi i32 [ 1, %for.body.lr.ph ], [ %scale.2, %for.cond.backedge ]
  %rate.0304 = phi i32 [ 1, %for.body.lr.ph ], [ %rate.1, %for.cond.backedge ]
  %size.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %size.1, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_str_t* %2, i32 %i.0306, !dbg !1977
  %data = getelementptr inbounds %struct.ngx_str_t* %2, i32 %i.0306, i32 1, !dbg !1977
  %4 = load i8** %data, align 4, !dbg !1977, !tbaa !1957
  %call = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 5) nounwind readonly, !dbg !1977
  %cmp7 = icmp eq i32 %call, 0, !dbg !1977
  br i1 %cmp7, label %if.then, label %cont68, !dbg !1977

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr inbounds i8* %4, i32 5, !dbg !1970
  store i8* %add.ptr, i8** %data10, align 4, !dbg !1970, !tbaa !1957
  %call12 = call i8* @strchr(i8* %add.ptr, i32 58) nounwind, !dbg !1978
  call void @llvm.dbg.value(metadata !{i8* %call12}, i64 0, metadata !528), !dbg !1978
  %cmp13 = icmp eq i8* %call12, null, !dbg !1979
  br i1 %cmp13, label %cont16, label %if.end, !dbg !1979

cont16:                                           ; preds = %if.then
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str15, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1980
  br label %return, !dbg !1982

if.end:                                           ; preds = %if.then
  %sub.ptr.lhs.cast = ptrtoint i8* %call12 to i32, !dbg !1983
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr to i32, !dbg !1983
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1983
  %5 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1983
  br i1 %5, label %cont22, label %ioc_bb21, !dbg !1983

ioc_bb21:                                         ; preds = %if.end
  %6 = sext i32 %sub.ptr.sub to i64, !dbg !1983
  call void @__ioc_report_conversion(i32 496, i32 18, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !1983
  br label %cont22, !dbg !1983

cont22:                                           ; preds = %ioc_bb21, %if.end
  store i32 %sub.ptr.sub, i32* %len1, align 4, !dbg !1983, !tbaa !1967
  %add.ptr24 = getelementptr inbounds i8* %call12, i32 1, !dbg !1973
  store i8* %add.ptr24, i8** %data25, align 4, !dbg !1973, !tbaa !1957
  %7 = load i8** %data, align 4, !dbg !1974, !tbaa !1957
  %len29 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !1974
  %8 = load i32* %len29, align 4, !dbg !1974, !tbaa !1967
  %add.ptr30 = getelementptr inbounds i8* %7, i32 %8, !dbg !1974
  %sub.ptr.lhs.cast32 = ptrtoint i8* %add.ptr30 to i32, !dbg !1974
  %sub.ptr.rhs.cast33 = ptrtoint i8* %add.ptr24 to i32, !dbg !1974
  %sub.ptr.sub34 = sub i32 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33, !dbg !1974
  %9 = icmp sgt i32 %sub.ptr.sub34, -1, !dbg !1974
  br i1 %9, label %cont37, label %ioc_bb36, !dbg !1974

ioc_bb36:                                         ; preds = %cont22
  %10 = sext i32 %sub.ptr.sub34 to i64, !dbg !1974
  call void @__ioc_report_conversion(i32 498, i32 15, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %10, i8 1) nounwind, !dbg !1974
  br label %cont37, !dbg !1974

cont37:                                           ; preds = %ioc_bb36, %cont22
  store i32 %sub.ptr.sub34, i32* %len38, align 4, !dbg !1974, !tbaa !1967
  %call39 = call i32 @ngx_parse_size(%struct.ngx_str_t* %s) nounwind, !dbg !1984
  call void @llvm.dbg.value(metadata !{i32 %call39}, i64 0, metadata !531), !dbg !1984
  %cmp42 = icmp eq i32 %call39, -1, !dbg !1985
  br i1 %cmp42, label %cont45, label %cont51, !dbg !1985

cont45:                                           ; preds = %cont37
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str15, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1986
  br label %return, !dbg !1988

cont51:                                           ; preds = %cont37
  %11 = load i32* @ngx_pagesize, align 4, !dbg !1989, !tbaa !1967
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 8), !dbg !1989
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !1989
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !1989
  br i1 %14, label %ioc_bb52, label %cont53, !dbg !1989

ioc_bb52:                                         ; preds = %cont51
  %15 = zext i32 %11 to i64, !dbg !1989
  call void @__ioc_report_mul_overflow(i32 504, i32 32, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 8, i64 %15, i8 5) nounwind, !dbg !1989
  br label %cont53, !dbg !1989

cont53:                                           ; preds = %cont51, %ioc_bb52
  %16 = icmp sgt i32 %13, -1, !dbg !1989
  br i1 %16, label %cont55, label %ioc_bb54, !dbg !1989

ioc_bb54:                                         ; preds = %cont53
  %17 = zext i32 %13 to i64, !dbg !1989
  call void @__ioc_report_conversion(i32 504, i32 29, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %17, i8 0) nounwind, !dbg !1989
  br label %cont55, !dbg !1989

cont55:                                           ; preds = %ioc_bb54, %cont53
  %cmp56 = icmp slt i32 %call39, %13, !dbg !1989
  br i1 %cmp56, label %cont59, label %for.inc, !dbg !1989

cont59:                                           ; preds = %cont55
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str16, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1990
  br label %return, !dbg !1992

cont68:                                           ; preds = %for.body
  %call69 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str17, i32 0, i32 0), i32 5) nounwind readonly, !dbg !1993
  %cmp70 = icmp eq i32 %call69, 0, !dbg !1993
  br i1 %cmp70, label %if.then71, label %if.end116, !dbg !1993

if.then71:                                        ; preds = %cont68
  %len73 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !1994
  %18 = load i32* %len73, align 4, !dbg !1994, !tbaa !1967
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !530), !dbg !1994
  %add.ptr76.sum = add i32 %18, -3, !dbg !1996
  %add.ptr77 = getelementptr inbounds i8* %4, i32 %add.ptr76.sum, !dbg !1996
  call void @llvm.dbg.value(metadata !{i8* %add.ptr77}, i64 0, metadata !528), !dbg !1996
  %call80 = call i32 @strncmp(i8* %add.ptr77, i8* getelementptr inbounds ([4 x i8]* @.str18, i32 0, i32 0), i32 3) nounwind readonly, !dbg !1997
  %cmp81 = icmp eq i32 %call80, 0, !dbg !1997
  br i1 %cmp81, label %cont84, label %cont88, !dbg !1997

cont84:                                           ; preds = %if.then71
  call void @llvm.dbg.value(metadata !1963, i64 0, metadata !536), !dbg !1998
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %18, i32 3), !dbg !2000
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !2000
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !2000
  br i1 %21, label %ioc_bb85, label %if.end97, !dbg !2000

ioc_bb85:                                         ; preds = %cont84
  %22 = zext i32 %18 to i64, !dbg !2000
  call void @__ioc_report_sub_overflow(i32 515, i32 13, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 %22, i64 3, i8 5) nounwind, !dbg !2000
  br label %if.end97, !dbg !2000

cont88:                                           ; preds = %if.then71
  %call89 = call i32 @strncmp(i8* %add.ptr77, i8* getelementptr inbounds ([4 x i8]* @.str19, i32 0, i32 0), i32 3) nounwind readonly, !dbg !2001
  %cmp90 = icmp eq i32 %call89, 0, !dbg !2001
  br i1 %cmp90, label %cont93, label %if.end97, !dbg !2001

cont93:                                           ; preds = %cont88
  call void @llvm.dbg.value(metadata !2002, i64 0, metadata !536), !dbg !2003
  %23 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %18, i32 3), !dbg !2005
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !2005
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !2005
  br i1 %25, label %ioc_bb94, label %if.end97, !dbg !2005

ioc_bb94:                                         ; preds = %cont93
  %26 = zext i32 %18 to i64, !dbg !2005
  call void @__ioc_report_sub_overflow(i32 519, i32 13, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 %26, i64 3, i8 5) nounwind, !dbg !2005
  br label %if.end97, !dbg !2005

if.end97:                                         ; preds = %ioc_bb94, %cont93, %ioc_bb85, %cont84, %cont88
  %len.0 = phi i32 [ %18, %cont88 ], [ %20, %cont84 ], [ %20, %ioc_bb85 ], [ %24, %cont93 ], [ %24, %ioc_bb94 ]
  %scale.1 = phi i32 [ %scale.0305, %cont88 ], [ 1, %cont84 ], [ 1, %ioc_bb85 ], [ 60, %cont93 ], [ 60, %ioc_bb94 ]
  %27 = load i8** %data, align 4, !dbg !2006, !tbaa !1957
  %add.ptr100 = getelementptr inbounds i8* %27, i32 5, !dbg !2006
  %28 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.0, i32 5), !dbg !2006
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !2006
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !2006
  br i1 %30, label %ioc_bb103, label %cont104, !dbg !2006

ioc_bb103:                                        ; preds = %if.end97
  %31 = zext i32 %len.0 to i64, !dbg !2006
  call void @__ioc_report_sub_overflow(i32 521, i32 45, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %31, i64 5, i8 5) nounwind, !dbg !2006
  br label %cont104, !dbg !2006

cont104:                                          ; preds = %if.end97, %ioc_bb103
  %call105 = call i32 @ngx_atoi(i8* %add.ptr100, i32 %29) nounwind, !dbg !2006
  call void @llvm.dbg.value(metadata !{i32 %call105}, i64 0, metadata !535), !dbg !2006
  %cmp108 = icmp slt i32 %call105, 0, !dbg !2007
  br i1 %cmp108, label %cont111, label %for.inc, !dbg !2007

cont111:                                          ; preds = %cont104
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([18 x i8]* @.str20, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !2008
  br label %return, !dbg !2010

if.end116:                                        ; preds = %cont68
  %32 = load i8* %4, align 1, !dbg !2011, !tbaa !1958
  %cmp120 = icmp eq i8 %32, 36, !dbg !2011
  br i1 %cmp120, label %if.then122, label %cont150, !dbg !2011

if.then122:                                       ; preds = %if.end116
  %len124 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2012
  %33 = load i32* %len124, align 4, !dbg !2012, !tbaa !1967
  %34 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %33, i32 1), !dbg !2012
  %35 = extractvalue { i32, i1 } %34, 0, !dbg !2012
  %36 = extractvalue { i32, i1 } %34, 1, !dbg !2012
  br i1 %36, label %ioc_bb125, label %cont126, !dbg !2012

ioc_bb125:                                        ; preds = %if.then122
  %37 = zext i32 %33 to i64, !dbg !2012
  call void @__ioc_report_sub_overflow(i32 529, i32 19, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %37, i64 1, i8 5) nounwind, !dbg !2012
  %.pre317 = load i8** %data, align 4, !dbg !2013, !tbaa !1957
  br label %cont126, !dbg !2012

cont126:                                          ; preds = %if.then122, %ioc_bb125
  %38 = phi i8* [ %4, %if.then122 ], [ %.pre317, %ioc_bb125 ]
  store i32 %35, i32* %len124, align 4, !dbg !2012, !tbaa !1967
  %incdec.ptr = getelementptr inbounds i8* %38, i32 1, !dbg !2013
  store i8* %incdec.ptr, i8** %data, align 4, !dbg !2013, !tbaa !1957
  %39 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1975, !tbaa !1957
  %call129 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %39, i32 28) nounwind, !dbg !1975
  %40 = bitcast i8* %call129 to %struct.ngx_http_limit_req_ctx_t*, !dbg !1975
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_ctx_t* %40}, i64 0, metadata !539), !dbg !1975
  %cmp130 = icmp eq i8* %call129, null, !dbg !2014
  br i1 %cmp130, label %return, label %if.end135, !dbg !2014

if.end135:                                        ; preds = %cont126
  %call137 = call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %arrayidx) nounwind, !dbg !2015
  %index = getelementptr inbounds i8* %call129, i32 12, !dbg !2015
  %41 = bitcast i8* %index to i32*, !dbg !2015
  store i32 %call137, i32* %41, align 4, !dbg !2015, !tbaa !1967
  %cmp141 = icmp eq i32 %call137, -1, !dbg !2016
  br i1 %cmp141, label %return, label %if.end146, !dbg !2016

if.end146:                                        ; preds = %if.end135
  %var = getelementptr inbounds i8* %call129, i32 16, !dbg !2017
  %42 = bitcast %struct.ngx_str_t* %arrayidx to i64*, !dbg !2017
  %43 = bitcast i8* %var to i64*, !dbg !2017
  %44 = load i64* %42, align 4, !dbg !2017
  store i64 %44, i64* %43, align 4, !dbg !2017
  br label %for.inc, !dbg !2018

cont150:                                          ; preds = %if.end116
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str11, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !2019
  br label %return, !dbg !2020

for.inc:                                          ; preds = %cont104, %cont55, %if.end146
  %size.1 = phi i32 [ %call39, %cont55 ], [ %size.0303, %cont104 ], [ %size.0303, %if.end146 ]
  %rate.1 = phi i32 [ %rate.0304, %cont55 ], [ %call105, %cont104 ], [ %rate.0304, %if.end146 ]
  %scale.2 = phi i32 [ %scale.0305, %cont55 ], [ %scale.1, %cont104 ], [ %scale.0305, %if.end146 ]
  %ctx.1 = phi %struct.ngx_http_limit_req_ctx_t* [ %ctx.0307, %cont55 ], [ %ctx.0307, %cont104 ], [ %40, %if.end146 ]
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0306, i32 1), !dbg !1968
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !1968
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !1968
  br i1 %47, label %ioc_bb154, label %for.cond.backedge, !dbg !1968

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb154
  %48 = load %struct.ngx_array_s** %args, align 4, !dbg !1968, !tbaa !1957
  %nelts = getelementptr inbounds %struct.ngx_array_s* %48, i32 0, i32 1, !dbg !1968
  %49 = load i32* %nelts, align 4, !dbg !1968, !tbaa !1967
  %cmp = icmp ult i32 %46, %49, !dbg !1968
  br i1 %cmp, label %for.body, label %cont158, !dbg !1968

ioc_bb154:                                        ; preds = %for.inc
  %50 = zext i32 %i.0306 to i64, !dbg !1968
  call void @__ioc_report_add_overflow(i32 488, i32 41, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %50, i64 1, i8 5) nounwind, !dbg !1968
  br label %for.cond.backedge, !dbg !1968

cont158:                                          ; preds = %for.cond.backedge
  %.pre = load i32* %len1, align 4, !dbg !2021, !tbaa !1967
  %phitmp = icmp eq i32 %.pre, 0, !dbg !1968
  br i1 %phitmp, label %cont163, label %if.end167, !dbg !2021

cont163:                                          ; preds = %entry, %cont158
  %name164 = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, !dbg !2022
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([32 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %name164) nounwind, !dbg !2022
  br label %return, !dbg !2024

if.end167:                                        ; preds = %cont158
  %cmp168 = icmp eq %struct.ngx_http_limit_req_ctx_t* %ctx.1, null, !dbg !2025
  br i1 %cmp168, label %cont172, label %if.end176, !dbg !2025

cont172:                                          ; preds = %if.end167
  %name173 = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, !dbg !2026
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([35 x i8]* @.str21, i32 0, i32 0), %struct.ngx_str_t* %name173, %struct.ngx_str_t* %name) nounwind, !dbg !2026
  br label %return, !dbg !2028

if.end176:                                        ; preds = %if.end167
  %51 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %rate.1, i32 1000), !dbg !2029
  %52 = extractvalue { i32, i1 } %51, 0, !dbg !2029
  %53 = extractvalue { i32, i1 } %51, 1, !dbg !2029
  br i1 %53, label %ioc_bb177, label %cont178, !dbg !2029

ioc_bb177:                                        ; preds = %if.end176
  %54 = sext i32 %rate.1 to i64, !dbg !2029
  call void @__ioc_report_mul_overflow(i32 553, i32 23, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %54, i64 1000, i8 13) nounwind, !dbg !2029
  br label %cont178, !dbg !2029

cont178:                                          ; preds = %if.end176, %ioc_bb177
  %55 = icmp ne i32 %scale.2, 0, !dbg !2029
  %56 = icmp ne i32 %52, -2147483648, !dbg !2029
  %57 = icmp ne i32 %scale.2, -1, !dbg !2029
  %or = or i1 %56, %57, !dbg !2029
  %and = and i1 %55, %or, !dbg !2029
  br i1 %and, label %cont180, label %ioc_bb179, !dbg !2029

ioc_bb179:                                        ; preds = %cont178
  %58 = sext i32 %scale.2 to i64, !dbg !2029
  %59 = sext i32 %52 to i64, !dbg !2029
  call void @__ioc_report_div_error(i32 553, i32 30, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %59, i64 %58, i8 13) nounwind, !dbg !2029
  br label %cont180, !dbg !2029

cont180:                                          ; preds = %ioc_bb179, %cont178
  %div = sdiv i32 %52, %scale.2, !dbg !2029
  %60 = icmp sgt i32 %div, -1, !dbg !2029
  br i1 %60, label %cont183, label %ioc_bb182, !dbg !2029

ioc_bb182:                                        ; preds = %cont180
  %61 = sext i32 %div to i64, !dbg !2029
  call void @__ioc_report_conversion(i32 553, i32 17, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %61, i8 1) nounwind, !dbg !2029
  br label %cont183, !dbg !2029

cont183:                                          ; preds = %ioc_bb182, %cont180
  %rate184 = getelementptr inbounds %struct.ngx_http_limit_req_ctx_t* %ctx.1, i32 0, i32 2, !dbg !2029
  store i32 %div, i32* %rate184, align 4, !dbg !2029, !tbaa !1967
  %62 = icmp sgt i32 %size.1, -1, !dbg !2030
  br i1 %62, label %cont187, label %ioc_bb186, !dbg !2030

ioc_bb186:                                        ; preds = %cont183
  %63 = sext i32 %size.1 to i64, !dbg !2030
  call void @__ioc_report_conversion(i32 554, i32 45, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %63, i8 1) nounwind, !dbg !2030
  br label %cont187, !dbg !2030

cont187:                                          ; preds = %ioc_bb186, %cont183
  %call188 = call %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %name, i32 %size.1, i8* bitcast (%struct.ngx_module_s* @ngx_http_limit_req_module to i8*)) nounwind, !dbg !2030
  call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %call188}, i64 0, metadata !538), !dbg !2030
  %cmp189 = icmp eq %struct.ngx_shm_zone_s* %call188, null, !dbg !2031
  br i1 %cmp189, label %return, label %if.end194, !dbg !2031

if.end194:                                        ; preds = %cont187
  %data195 = getelementptr inbounds %struct.ngx_shm_zone_s* %call188, i32 0, i32 0, !dbg !2032
  %64 = load i8** %data195, align 4, !dbg !2032, !tbaa !1957
  %tobool = icmp eq i8* %64, null, !dbg !2032
  br i1 %tobool, label %if.end204, label %cont199, !dbg !2032

cont199:                                          ; preds = %if.end194
  %name200 = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, !dbg !2033
  %var201 = getelementptr inbounds i8* %64, i32 16, !dbg !2033
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([42 x i8]* @.str22, i32 0, i32 0), %struct.ngx_str_t* %name200, %struct.ngx_str_t* %name, i8* %var201) nounwind, !dbg !2033
  br label %return, !dbg !2035

if.end204:                                        ; preds = %if.end194
  %init = getelementptr inbounds %struct.ngx_shm_zone_s* %call188, i32 0, i32 2, !dbg !2036
  store i32 (%struct.ngx_shm_zone_s*, i8*)* @ngx_http_limit_req_init_zone, i32 (%struct.ngx_shm_zone_s*, i8*)** %init, align 4, !dbg !2036, !tbaa !1957
  %65 = bitcast %struct.ngx_http_limit_req_ctx_t* %ctx.1 to i8*, !dbg !2037
  store i8* %65, i8** %data195, align 4, !dbg !2037, !tbaa !1957
  br label %return, !dbg !2038

return:                                           ; preds = %if.end135, %cont126, %cont187, %if.end204, %cont199, %cont172, %cont163, %cont150, %cont111, %cont59, %cont45, %cont16
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont16 ], [ inttoptr (i32 -1 to i8*), %cont45 ], [ inttoptr (i32 -1 to i8*), %cont59 ], [ inttoptr (i32 -1 to i8*), %cont111 ], [ inttoptr (i32 -1 to i8*), %cont150 ], [ inttoptr (i32 -1 to i8*), %cont163 ], [ inttoptr (i32 -1 to i8*), %cont172 ], [ inttoptr (i32 -1 to i8*), %cont199 ], [ null, %if.end204 ], [ inttoptr (i32 -1 to i8*), %cont187 ], [ inttoptr (i32 -1 to i8*), %cont126 ], [ inttoptr (i32 -1 to i8*), %if.end135 ]
  ret i8* %retval.0, !dbg !2039
}

define internal i8* @ngx_http_limit_req(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* %cmd, i8* %conf) nounwind {
entry:
  %s = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !2040
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !2040
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !2040
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %s}, metadata !477), !dbg !2041
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2042
  %0 = load %struct.ngx_array_s** %args, align 4, !dbg !2042, !tbaa !1957
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !2042
  %1 = load i8** %elts, align 4, !dbg !2042, !tbaa !1957
  %2 = bitcast i8* %1 to %struct.ngx_str_t*, !dbg !2042
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %2}, i64 0, metadata !475), !dbg !2042
  call void @llvm.dbg.value(metadata !2043, i64 0, metadata !480), !dbg !2044
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !471), !dbg !2045
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !479), !dbg !2046
  call void @llvm.dbg.value(metadata !1963, i64 0, metadata !478), !dbg !2047
  %nelts172 = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 1, !dbg !2047
  %3 = load i32* %nelts172, align 4, !dbg !2047, !tbaa !1967
  %cmp173 = icmp ugt i32 %3, 1, !dbg !2047
  br i1 %cmp173, label %for.body.lr.ph, label %cont70, !dbg !2047

for.body.lr.ph:                                   ; preds = %entry
  %len12 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 0, !dbg !2049
  %data15 = getelementptr inbounds %struct.ngx_str_t* %s, i32 0, i32 1, !dbg !2052
  br label %for.body, !dbg !2047

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %burst.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %burst.1, %for.cond.backedge ]
  %shm_zone.0176 = phi %struct.ngx_shm_zone_s* [ null, %for.body.lr.ph ], [ %shm_zone.1, %for.cond.backedge ]
  %nodelay.0175 = phi i32 [ 0, %for.body.lr.ph ], [ %nodelay.1, %for.cond.backedge ]
  %i.0174 = phi i32 [ 1, %for.body.lr.ph ], [ %17, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_str_t* %2, i32 %i.0174, !dbg !2053
  %data = getelementptr inbounds %struct.ngx_str_t* %2, i32 %i.0174, i32 1, !dbg !2053
  %4 = load i8** %data, align 4, !dbg !2053, !tbaa !1957
  %call = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0), i32 5) nounwind readonly, !dbg !2053
  %cmp6 = icmp eq i32 %call, 0, !dbg !2053
  br i1 %cmp6, label %if.then, label %cont27, !dbg !2053

if.then:                                          ; preds = %for.body
  %len = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2049
  %5 = load i32* %len, align 4, !dbg !2049, !tbaa !1967
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %5, i32 5), !dbg !2049
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !2049
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !2049
  br i1 %8, label %ioc_bb10, label %cont11, !dbg !2049

ioc_bb10:                                         ; preds = %if.then
  %9 = zext i32 %5 to i64, !dbg !2049
  call void @__ioc_report_sub_overflow(i32 585, i32 28, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %9, i64 5, i8 5) nounwind, !dbg !2049
  %.pre183 = load i8** %data, align 4, !dbg !2052, !tbaa !1957
  br label %cont11, !dbg !2049

cont11:                                           ; preds = %if.then, %ioc_bb10
  %10 = phi i8* [ %4, %if.then ], [ %.pre183, %ioc_bb10 ]
  store i32 %7, i32* %len12, align 4, !dbg !2049, !tbaa !1967
  %add.ptr = getelementptr inbounds i8* %10, i32 5, !dbg !2052
  store i8* %add.ptr, i8** %data15, align 4, !dbg !2052, !tbaa !1957
  %call18 = call %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %s, i32 0, i8* bitcast (%struct.ngx_module_s* @ngx_http_limit_req_module to i8*)) nounwind, !dbg !2054
  call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %call18}, i64 0, metadata !480), !dbg !2054
  %cmp19 = icmp eq %struct.ngx_shm_zone_s* %call18, null, !dbg !2055
  br i1 %cmp19, label %return, label %for.inc, !dbg !2055

cont27:                                           ; preds = %for.body
  %call28 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([7 x i8]* @.str8, i32 0, i32 0), i32 6) nounwind readonly, !dbg !2056
  %cmp29 = icmp eq i32 %call28, 0, !dbg !2056
  br i1 %cmp29, label %if.then30, label %cont53, !dbg !2056

if.then30:                                        ; preds = %cont27
  %add.ptr33 = getelementptr inbounds i8* %4, i32 6, !dbg !2057
  %len35 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2057
  %11 = load i32* %len35, align 4, !dbg !2057, !tbaa !1967
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %11, i32 6), !dbg !2057
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !2057
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !2057
  br i1 %14, label %ioc_bb38, label %cont39, !dbg !2057

ioc_bb38:                                         ; preds = %if.then30
  %15 = zext i32 %11 to i64, !dbg !2057
  call void @__ioc_report_sub_overflow(i32 594, i32 55, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %15, i64 6, i8 5) nounwind, !dbg !2057
  br label %cont39, !dbg !2057

cont39:                                           ; preds = %if.then30, %ioc_bb38
  %call40 = call i32 @ngx_atoi(i8* %add.ptr33, i32 %13) nounwind, !dbg !2057
  call void @llvm.dbg.value(metadata !{i32 %call40}, i64 0, metadata !471), !dbg !2057
  %cmp41 = icmp slt i32 %call40, 1, !dbg !2059
  br i1 %cmp41, label %cont44, label %for.inc, !dbg !2059

cont44:                                           ; preds = %cont39
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str9, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !2060
  br label %return, !dbg !2062

cont53:                                           ; preds = %cont27
  %call54 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([8 x i8]* @.str10, i32 0, i32 0), i32 7) nounwind readonly, !dbg !2063
  %cmp55 = icmp eq i32 %call54, 0, !dbg !2063
  br i1 %cmp55, label %for.inc, label %cont61, !dbg !2063

cont61:                                           ; preds = %cont53
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([23 x i8]* @.str11, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !2064
  br label %return, !dbg !2065

for.inc:                                          ; preds = %cont53, %cont39, %cont11
  %nodelay.1 = phi i32 [ %nodelay.0175, %cont11 ], [ %nodelay.0175, %cont39 ], [ 1, %cont53 ]
  %shm_zone.1 = phi %struct.ngx_shm_zone_s* [ %call18, %cont11 ], [ %shm_zone.0176, %cont39 ], [ %shm_zone.0176, %cont53 ]
  %burst.1 = phi i32 [ %burst.0177, %cont11 ], [ %call40, %cont39 ], [ %burst.0177, %cont53 ]
  %16 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0174, i32 1), !dbg !2047
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !2047
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !2047
  br i1 %18, label %ioc_bb65, label %for.cond.backedge, !dbg !2047

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb65
  %19 = load %struct.ngx_array_s** %args, align 4, !dbg !2047, !tbaa !1957
  %nelts = getelementptr inbounds %struct.ngx_array_s* %19, i32 0, i32 1, !dbg !2047
  %20 = load i32* %nelts, align 4, !dbg !2047, !tbaa !1967
  %cmp = icmp ult i32 %17, %20, !dbg !2047
  br i1 %cmp, label %for.body, label %for.end, !dbg !2047

ioc_bb65:                                         ; preds = %for.inc
  %21 = zext i32 %i.0174 to i64, !dbg !2047
  call void @__ioc_report_add_overflow(i32 583, i32 41, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %21, i64 1, i8 5) nounwind, !dbg !2047
  br label %for.cond.backedge, !dbg !2047

for.end:                                          ; preds = %for.cond.backedge
  %cmp67 = icmp eq %struct.ngx_shm_zone_s* %shm_zone.1, null, !dbg !2066
  br i1 %cmp67, label %cont70, label %if.end73, !dbg !2066

cont70:                                           ; preds = %entry, %for.end
  %name = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 0, !dbg !2067
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([32 x i8]* @.str12, i32 0, i32 0), %struct.ngx_str_t* %name) nounwind, !dbg !2067
  br label %return, !dbg !2069

if.end73:                                         ; preds = %for.end
  %data74 = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone.1, i32 0, i32 0, !dbg !2070
  %22 = load i8** %data74, align 4, !dbg !2070, !tbaa !1957
  %cmp75 = icmp eq i8* %22, null, !dbg !2070
  br i1 %cmp75, label %cont78, label %if.end82, !dbg !2070

cont78:                                           ; preds = %if.end73
  %name79 = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone.1, i32 0, i32 1, i32 2, !dbg !2071
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([28 x i8]* @.str13, i32 0, i32 0), %struct.ngx_str_t* %name79) nounwind, !dbg !2071
  br label %return, !dbg !2073

if.end82:                                         ; preds = %if.end73
  %limits83 = bitcast i8* %conf to %struct.ngx_array_s*, !dbg !2074
  %elts84 = bitcast i8* %conf to i8**, !dbg !2074
  %23 = load i8** %elts84, align 4, !dbg !2074, !tbaa !1957
  %24 = bitcast i8* %23 to %struct.ngx_http_limit_req_limit_t*, !dbg !2074
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %24}, i64 0, metadata !512), !dbg !2074
  %cmp85 = icmp eq i8* %23, null, !dbg !2075
  br i1 %cmp85, label %cont89, label %if.end82.for.cond99.preheader_crit_edge, !dbg !2075

if.end82.for.cond99.preheader_crit_edge:          ; preds = %if.end82
  %nelts101.pre = getelementptr inbounds i8* %conf, i32 4, !dbg !2076
  %.pre184 = bitcast i8* %nelts101.pre to i32*, !dbg !2076
  br label %for.cond99.preheader, !dbg !2075

cont89:                                           ; preds = %if.end82
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2078
  %25 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2078, !tbaa !1957
  call void @llvm.dbg.value(metadata !1963, i64 0, metadata !2080) nounwind, !dbg !2081
  call void @llvm.dbg.value(metadata !2082, i64 0, metadata !2083) nounwind, !dbg !2081
  %nelts.i = getelementptr inbounds i8* %conf, i32 4, !dbg !2084
  %26 = bitcast i8* %nelts.i to i32*, !dbg !2084
  store i32 0, i32* %26, align 4, !dbg !2084, !tbaa !1967
  %size1.i = getelementptr inbounds i8* %conf, i32 8, !dbg !2086
  %27 = bitcast i8* %size1.i to i32*, !dbg !2086
  store i32 12, i32* %27, align 4, !dbg !2086, !tbaa !1967
  %nalloc.i = getelementptr inbounds i8* %conf, i32 12, !dbg !2087
  %28 = bitcast i8* %nalloc.i to i32*, !dbg !2087
  store i32 1, i32* %28, align 4, !dbg !2087, !tbaa !1967
  %pool2.i = getelementptr inbounds i8* %conf, i32 16, !dbg !2088
  %29 = bitcast i8* %pool2.i to %struct.ngx_pool_s**, !dbg !2088
  store %struct.ngx_pool_s* %25, %struct.ngx_pool_s** %29, align 4, !dbg !2088, !tbaa !1957
  %call.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %25, i32 12) nounwind, !dbg !2089
  store i8* %call.i, i8** %elts84, align 4, !dbg !2089, !tbaa !1957
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2090
  br i1 %cmp.i, label %return, label %for.cond99.preheader, !dbg !2078

for.cond99.preheader:                             ; preds = %if.end82.for.cond99.preheader_crit_edge, %cont89
  %.pre-phi = phi i32* [ %.pre184, %if.end82.for.cond99.preheader_crit_edge ], [ %26, %cont89 ], !dbg !2076
  %30 = load i32* %.pre-phi, align 4, !dbg !2076, !tbaa !1967
  %cmp102158 = icmp eq i32 %30, 0, !dbg !2076
  br i1 %cmp102158, label %for.end112, label %for.body103, !dbg !2076

for.body103:                                      ; preds = %for.cond99.preheader, %for.cond99.backedge
  %31 = phi i32 [ %36, %for.cond99.backedge ], [ %30, %for.cond99.preheader ]
  %i.1159 = phi i32 [ %34, %for.cond99.backedge ], [ 0, %for.cond99.preheader ]
  %shm_zone105 = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %24, i32 %i.1159, i32 0, !dbg !2091
  %32 = load %struct.ngx_shm_zone_s** %shm_zone105, align 4, !dbg !2091, !tbaa !1957
  %cmp106 = icmp eq %struct.ngx_shm_zone_s* %shm_zone.1, %32, !dbg !2091
  br i1 %cmp106, label %return, label %for.inc109, !dbg !2091

for.inc109:                                       ; preds = %for.body103
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1159, i32 1), !dbg !2076
  %34 = extractvalue { i32, i1 } %33, 0, !dbg !2076
  %35 = extractvalue { i32, i1 } %33, 1, !dbg !2076
  br i1 %35, label %ioc_bb110, label %for.cond99.backedge, !dbg !2076

for.cond99.backedge:                              ; preds = %for.inc109, %ioc_bb110
  %36 = phi i32 [ %31, %for.inc109 ], [ %.pre, %ioc_bb110 ], !dbg !2076
  %cmp102 = icmp ult i32 %34, %36, !dbg !2076
  br i1 %cmp102, label %for.body103, label %for.end112, !dbg !2076

ioc_bb110:                                        ; preds = %for.inc109
  %37 = zext i32 %i.1159 to i64, !dbg !2076
  call void @__ioc_report_add_overflow(i32 622, i32 42, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %37, i64 1, i8 5) nounwind, !dbg !2076
  %.pre = load i32* %.pre-phi, align 4, !dbg !2076, !tbaa !1967
  br label %for.cond99.backedge, !dbg !2076

for.end112:                                       ; preds = %for.cond99.backedge, %for.cond99.preheader
  %call114 = call i8* @ngx_array_push(%struct.ngx_array_s* %limits83) nounwind, !dbg !2093
  %shm_zone115 = bitcast i8* %call114 to %struct.ngx_shm_zone_s**, !dbg !2094
  store %struct.ngx_shm_zone_s* %shm_zone.1, %struct.ngx_shm_zone_s** %shm_zone115, align 4, !dbg !2094, !tbaa !1957
  %38 = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %burst.1, i32 1000), !dbg !2095
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !2095
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !2095
  br i1 %40, label %ioc_bb116, label %cont117, !dbg !2095

ioc_bb116:                                        ; preds = %for.end112
  %41 = sext i32 %burst.1 to i64, !dbg !2095
  call void @__ioc_report_mul_overflow(i32 629, i32 27, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %41, i64 1000, i8 13) nounwind, !dbg !2095
  br label %cont117, !dbg !2095

cont117:                                          ; preds = %for.end112, %ioc_bb116
  %42 = icmp sgt i32 %39, -1, !dbg !2095
  br i1 %42, label %cont119, label %ioc_bb118, !dbg !2095

ioc_bb118:                                        ; preds = %cont117
  %43 = sext i32 %39 to i64, !dbg !2095
  call void @__ioc_report_conversion(i32 629, i32 20, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %43, i8 1) nounwind, !dbg !2095
  br label %cont119, !dbg !2095

cont119:                                          ; preds = %ioc_bb118, %cont117
  %burst120 = getelementptr inbounds i8* %call114, i32 4, !dbg !2095
  %44 = bitcast i8* %burst120 to i32*, !dbg !2095
  store i32 %39, i32* %44, align 4, !dbg !2095, !tbaa !1967
  %nodelay121 = getelementptr inbounds i8* %call114, i32 8, !dbg !2096
  %45 = bitcast i8* %nodelay121 to i32*, !dbg !2096
  store i32 %nodelay.1, i32* %45, align 4, !dbg !2096, !tbaa !1967
  br label %return, !dbg !2097

return:                                           ; preds = %cont11, %for.body103, %cont89, %cont119, %cont78, %cont70, %cont61, %cont44
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont44 ], [ inttoptr (i32 -1 to i8*), %cont61 ], [ inttoptr (i32 -1 to i8*), %cont70 ], [ inttoptr (i32 -1 to i8*), %cont78 ], [ null, %cont119 ], [ inttoptr (i32 -1 to i8*), %cont89 ], [ getelementptr inbounds ([13 x i8]* @.str14, i32 0, i32 0), %for.body103 ], [ inttoptr (i32 -1 to i8*), %cont11 ]
  ret i8* %retval.0, !dbg !2098
}

declare i8* @ngx_conf_set_enum_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32, i8*)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @ngx_atoi(i8*, i32)

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare i8* @strchr(i8*, i32) nounwind readonly

declare i32 @ngx_parse_size(%struct.ngx_str_t*)

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_http_get_variable_index(%struct.ngx_conf_s*, %struct.ngx_str_t*)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare void @__ioc_report_div_error(i32, i32, i8*, i8*, i64, i64, i8)

define internal i32 @ngx_http_limit_req_init_zone(%struct.ngx_shm_zone_s* %shm_zone, i8* %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %shm_zone}, i64 0, metadata !637), !dbg !2099
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !638), !dbg !2099
  %data1 = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 0, !dbg !2100
  %0 = load i8** %data1, align 4, !dbg !2100, !tbaa !1957
  %tobool = icmp eq i8* %data, null, !dbg !2101
  br i1 %tobool, label %if.end20, label %if.then, !dbg !2101

if.then:                                          ; preds = %entry
  %var = getelementptr inbounds i8* %0, i32 16, !dbg !2102
  %data2 = getelementptr inbounds i8* %0, i32 20, !dbg !2102
  %1 = bitcast i8* %data2 to i8**, !dbg !2102
  %2 = load i8** %1, align 4, !dbg !2102, !tbaa !1957
  %var3 = getelementptr inbounds i8* %data, i32 16, !dbg !2102
  %data4 = getelementptr inbounds i8* %data, i32 20, !dbg !2102
  %3 = bitcast i8* %data4 to i8**, !dbg !2102
  %4 = load i8** %3, align 4, !dbg !2102, !tbaa !1957
  %call = tail call i32 @strcmp(i8* %2, i8* %4) nounwind, !dbg !2102
  %cmp = icmp eq i32 %call, 0, !dbg !2102
  br i1 %cmp, label %if.end17, label %if.then5, !dbg !2102

if.then5:                                         ; preds = %if.then
  %log = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 3, !dbg !2103
  %5 = load %struct.ngx_log_s** %log, align 4, !dbg !2103, !tbaa !1957
  %log_level = getelementptr inbounds %struct.ngx_log_s* %5, i32 0, i32 0, !dbg !2103
  %6 = load i32* %log_level, align 4, !dbg !2103, !tbaa !1967
  %cmp6 = icmp eq i32 %6, 0, !dbg !2103
  br i1 %cmp6, label %return, label %cont9, !dbg !2103

cont9:                                            ; preds = %if.then5
  %name = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 2, !dbg !2105
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %5, i32 0, i8* getelementptr inbounds ([81 x i8]* @.str23, i32 0, i32 0), %struct.ngx_str_t* %name, i8* %var, i8* %var3) nounwind, !dbg !2105
  br label %return, !dbg !2105

if.end17:                                         ; preds = %if.then
  %sh = bitcast i8* %data to %struct.ngx_http_limit_req_shctx_t**, !dbg !2106
  %7 = load %struct.ngx_http_limit_req_shctx_t** %sh, align 4, !dbg !2106, !tbaa !1957
  %sh18 = bitcast i8* %0 to %struct.ngx_http_limit_req_shctx_t**, !dbg !2106
  store %struct.ngx_http_limit_req_shctx_t* %7, %struct.ngx_http_limit_req_shctx_t** %sh18, align 4, !dbg !2106, !tbaa !1957
  %shpool = getelementptr inbounds i8* %data, i32 4, !dbg !2107
  %8 = bitcast i8* %shpool to %struct.ngx_slab_pool_t**, !dbg !2107
  %9 = load %struct.ngx_slab_pool_t** %8, align 4, !dbg !2107, !tbaa !1957
  %shpool19 = getelementptr inbounds i8* %0, i32 4, !dbg !2107
  %10 = bitcast i8* %shpool19 to %struct.ngx_slab_pool_t**, !dbg !2107
  store %struct.ngx_slab_pool_t* %9, %struct.ngx_slab_pool_t** %10, align 4, !dbg !2107, !tbaa !1957
  br label %return, !dbg !2108

if.end20:                                         ; preds = %entry
  %addr = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 0, !dbg !2109
  %11 = load i8** %addr, align 4, !dbg !2109, !tbaa !1957
  %12 = bitcast i8* %11 to %struct.ngx_slab_pool_t*, !dbg !2109
  %shpool22 = getelementptr inbounds i8* %0, i32 4, !dbg !2109
  %13 = bitcast i8* %shpool22 to %struct.ngx_slab_pool_t**, !dbg !2109
  store %struct.ngx_slab_pool_t* %12, %struct.ngx_slab_pool_t** %13, align 4, !dbg !2109, !tbaa !1957
  %exists = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 4, !dbg !2110
  %14 = load i32* %exists, align 4, !dbg !2110, !tbaa !1967
  %tobool24 = icmp eq i32 %14, 0, !dbg !2110
  br i1 %tobool24, label %if.end29, label %if.then25, !dbg !2110

if.then25:                                        ; preds = %if.end20
  %data27 = getelementptr inbounds i8* %11, i32 80, !dbg !2111
  %15 = bitcast i8* %data27 to i8**, !dbg !2111
  %16 = load i8** %15, align 4, !dbg !2111, !tbaa !1957
  %17 = bitcast i8* %16 to %struct.ngx_http_limit_req_shctx_t*, !dbg !2111
  %sh28 = bitcast i8* %0 to %struct.ngx_http_limit_req_shctx_t**, !dbg !2111
  store %struct.ngx_http_limit_req_shctx_t* %17, %struct.ngx_http_limit_req_shctx_t** %sh28, align 4, !dbg !2111, !tbaa !1957
  br label %return, !dbg !2113

if.end29:                                         ; preds = %if.end20
  %call31 = tail call i8* @ngx_slab_alloc(%struct.ngx_slab_pool_t* %12, i32 40) nounwind, !dbg !2114
  %18 = bitcast i8* %call31 to %struct.ngx_http_limit_req_shctx_t*, !dbg !2114
  %sh32 = bitcast i8* %0 to %struct.ngx_http_limit_req_shctx_t**, !dbg !2114
  store %struct.ngx_http_limit_req_shctx_t* %18, %struct.ngx_http_limit_req_shctx_t** %sh32, align 4, !dbg !2114, !tbaa !1957
  %cmp34 = icmp eq i8* %call31, null, !dbg !2115
  br i1 %cmp34, label %return, label %if.end38, !dbg !2115

if.end38:                                         ; preds = %if.end29
  %19 = load %struct.ngx_slab_pool_t** %13, align 4, !dbg !2116, !tbaa !1957
  %data41 = getelementptr inbounds %struct.ngx_slab_pool_t* %19, i32 0, i32 10, !dbg !2116
  store i8* %call31, i8** %data41, align 4, !dbg !2116, !tbaa !1957
  %20 = load %struct.ngx_http_limit_req_shctx_t** %sh32, align 4, !dbg !2117, !tbaa !1957
  %color = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %20, i32 0, i32 1, i32 4, !dbg !2117
  store i8 0, i8* %color, align 1, !dbg !2117, !tbaa !1958
  %21 = load %struct.ngx_http_limit_req_shctx_t** %sh32, align 4, !dbg !2118, !tbaa !1957
  %sentinel46 = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %21, i32 0, i32 1, !dbg !2118
  %root = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %21, i32 0, i32 0, i32 0, !dbg !2118
  store %struct.ngx_rbtree_node_s* %sentinel46, %struct.ngx_rbtree_node_s** %root, align 4, !dbg !2118, !tbaa !1957
  %22 = load %struct.ngx_http_limit_req_shctx_t** %sh32, align 4, !dbg !2119, !tbaa !1957
  %sentinel49 = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %22, i32 0, i32 1, !dbg !2119
  %sentinel52 = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %22, i32 0, i32 0, i32 1, !dbg !2119
  store %struct.ngx_rbtree_node_s* %sentinel49, %struct.ngx_rbtree_node_s** %sentinel52, align 4, !dbg !2119, !tbaa !1957
  %23 = load %struct.ngx_http_limit_req_shctx_t** %sh32, align 4, !dbg !2120, !tbaa !1957
  %insert = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %23, i32 0, i32 0, i32 2, !dbg !2120
  store void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* @ngx_http_limit_req_rbtree_insert_value, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)** %insert, align 4, !dbg !2120, !tbaa !1957
  %24 = load %struct.ngx_http_limit_req_shctx_t** %sh32, align 4, !dbg !2121, !tbaa !1957
  %queue = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %24, i32 0, i32 2, !dbg !2121
  %prev = getelementptr inbounds %struct.ngx_queue_s* %queue, i32 0, i32 0, !dbg !2121
  store %struct.ngx_queue_s* %queue, %struct.ngx_queue_s** %prev, align 4, !dbg !2121, !tbaa !1957
  %25 = load %struct.ngx_http_limit_req_shctx_t** %sh32, align 4, !dbg !2122, !tbaa !1957
  %queue59 = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %25, i32 0, i32 2, !dbg !2122
  %next = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %25, i32 0, i32 2, i32 1, !dbg !2122
  store %struct.ngx_queue_s* %queue59, %struct.ngx_queue_s** %next, align 4, !dbg !2122, !tbaa !1957
  %name63 = getelementptr inbounds %struct.ngx_shm_zone_s* %shm_zone, i32 0, i32 1, i32 2, !dbg !2123
  %len64 = getelementptr inbounds %struct.ngx_str_t* %name63, i32 0, i32 0, !dbg !2123
  %26 = load i32* %len64, align 4, !dbg !2123, !tbaa !1967
  %27 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %26, i32 22), !dbg !2123
  %28 = extractvalue { i32, i1 } %27, 0, !dbg !2123
  %29 = extractvalue { i32, i1 } %27, 1, !dbg !2123
  br i1 %29, label %ioc_bb65, label %cont66, !dbg !2123

ioc_bb65:                                         ; preds = %if.end38
  %30 = zext i32 %26 to i64, !dbg !2123
  tail call void @__ioc_report_add_overflow(i32 429, i32 43, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 22, i64 %30, i8 5) nounwind, !dbg !2123
  br label %cont66, !dbg !2123

cont66:                                           ; preds = %if.end38, %ioc_bb65
  tail call void @llvm.dbg.value(metadata !{i32 %28}, i64 0, metadata !641), !dbg !2123
  %31 = load %struct.ngx_slab_pool_t** %13, align 4, !dbg !2124, !tbaa !1957
  %call68 = tail call i8* @ngx_slab_alloc(%struct.ngx_slab_pool_t* %31, i32 %28) nounwind, !dbg !2124
  %32 = load %struct.ngx_slab_pool_t** %13, align 4, !dbg !2124, !tbaa !1957
  %log_ctx = getelementptr inbounds %struct.ngx_slab_pool_t* %32, i32 0, i32 8, !dbg !2124
  store i8* %call68, i8** %log_ctx, align 4, !dbg !2124, !tbaa !1957
  %33 = load %struct.ngx_slab_pool_t** %13, align 4, !dbg !2125, !tbaa !1957
  %log_ctx71 = getelementptr inbounds %struct.ngx_slab_pool_t* %33, i32 0, i32 8, !dbg !2125
  %34 = load i8** %log_ctx71, align 4, !dbg !2125, !tbaa !1957
  %cmp72 = icmp eq i8* %34, null, !dbg !2125
  br i1 %cmp72, label %return, label %if.end76, !dbg !2125

if.end76:                                         ; preds = %cont66
  %call81 = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %34, i8* getelementptr inbounds ([26 x i8]* @.str24, i32 0, i32 0), %struct.ngx_str_t* %name63) nounwind, !dbg !2126
  br label %return, !dbg !2127

return:                                           ; preds = %cont66, %if.end29, %if.then5, %cont9, %if.end76, %if.then25, %if.end17
  %retval.0 = phi i32 [ 0, %if.end17 ], [ 0, %if.then25 ], [ 0, %if.end76 ], [ -1, %cont9 ], [ -1, %if.then5 ], [ -1, %if.end29 ], [ -1, %cont66 ]
  ret i32 %retval.0, !dbg !2128
}

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i8* @ngx_slab_alloc(%struct.ngx_slab_pool_t*, i32)

define internal void @ngx_http_limit_req_rbtree_insert_value(%struct.ngx_rbtree_node_s* %temp, %struct.ngx_rbtree_node_s* %node, %struct.ngx_rbtree_node_s* %sentinel) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %temp}, i64 0, metadata !650), !dbg !2129
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %node}, i64 0, metadata !651), !dbg !2129
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %sentinel}, i64 0, metadata !652), !dbg !2129
  %key = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 0, !dbg !2130
  %color = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 4, !dbg !2133
  %data = getelementptr inbounds i8* %color, i32 24, !dbg !2135
  %len = getelementptr inbounds i8* %color, i32 2, !dbg !2135
  %0 = bitcast i8* %len to i16*, !dbg !2135
  br label %for.cond, !dbg !2136

for.cond:                                         ; preds = %if.end16, %entry
  %temp.addr.0 = phi %struct.ngx_rbtree_node_s* [ %temp, %entry ], [ %6, %if.end16 ]
  %1 = load i32* %key, align 4, !dbg !2130, !tbaa !1967
  %key1 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 0, !dbg !2130
  %2 = load i32* %key1, align 4, !dbg !2130, !tbaa !1967
  %cmp = icmp ult i32 %1, %2, !dbg !2130
  br i1 %cmp, label %if.then, label %if.else, !dbg !2130

if.then:                                          ; preds = %for.cond
  %left = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 1, !dbg !2137
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %left}, i64 0, metadata !653), !dbg !2137
  br label %if.end16, !dbg !2139

if.else:                                          ; preds = %for.cond
  %cmp4 = icmp ugt i32 %1, %2, !dbg !2140
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !2140

if.then5:                                         ; preds = %if.else
  %right = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 2, !dbg !2141
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %right}, i64 0, metadata !653), !dbg !2141
  br label %if.end16, !dbg !2143

if.else6:                                         ; preds = %if.else
  %color7 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 4, !dbg !2144
  %data8 = getelementptr inbounds i8* %color7, i32 24, !dbg !2135
  %3 = load i16* %0, align 2, !dbg !2135, !tbaa !2145
  %conv = zext i16 %3 to i32, !dbg !2135
  %len10 = getelementptr inbounds i8* %color7, i32 2, !dbg !2135
  %4 = bitcast i8* %len10 to i16*, !dbg !2135
  %5 = load i16* %4, align 2, !dbg !2135, !tbaa !2145
  %conv11 = zext i16 %5 to i32, !dbg !2135
  %call = tail call i32 @ngx_memn2cmp(i8* %data, i8* %data8, i32 %conv, i32 %conv11) nounwind, !dbg !2135
  %cmp12 = icmp slt i32 %call, 0, !dbg !2135
  %left14 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 1, !dbg !2135
  %right15 = getelementptr inbounds %struct.ngx_rbtree_node_s* %temp.addr.0, i32 0, i32 2, !dbg !2135
  %cond = select i1 %cmp12, %struct.ngx_rbtree_node_s** %left14, %struct.ngx_rbtree_node_s** %right15, !dbg !2135
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s** %cond}, i64 0, metadata !653), !dbg !2135
  br label %if.end16

if.end16:                                         ; preds = %if.then5, %if.else6, %if.then
  %p.0 = phi %struct.ngx_rbtree_node_s** [ %left, %if.then ], [ %right, %if.then5 ], [ %cond, %if.else6 ]
  %6 = load %struct.ngx_rbtree_node_s** %p.0, align 4, !dbg !2146, !tbaa !1957
  %cmp17 = icmp eq %struct.ngx_rbtree_node_s* %6, %sentinel, !dbg !2146
  br i1 %cmp17, label %for.end, label %for.cond, !dbg !2146

for.end:                                          ; preds = %if.end16
  store %struct.ngx_rbtree_node_s* %node, %struct.ngx_rbtree_node_s** %p.0, align 4, !dbg !2147, !tbaa !1957
  %parent = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 3, !dbg !2148
  store %struct.ngx_rbtree_node_s* %temp.addr.0, %struct.ngx_rbtree_node_s** %parent, align 4, !dbg !2148, !tbaa !1957
  %left21 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 1, !dbg !2149
  store %struct.ngx_rbtree_node_s* %sentinel, %struct.ngx_rbtree_node_s** %left21, align 4, !dbg !2149, !tbaa !1957
  %right22 = getelementptr inbounds %struct.ngx_rbtree_node_s* %node, i32 0, i32 2, !dbg !2150
  store %struct.ngx_rbtree_node_s* %sentinel, %struct.ngx_rbtree_node_s** %right22, align 4, !dbg !2150, !tbaa !1957
  store i8 1, i8* %color, align 1, !dbg !2151, !tbaa !1958
  ret void, !dbg !2152
}

declare i8* @ngx_sprintf(i8*, i8*, ...)

declare i32 @ngx_memn2cmp(i8*, i8*, i32, i32)

define internal i32 @ngx_http_limit_req_init(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !682), !dbg !2153
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2154, !tbaa !1967
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2154
  %1 = load i8** %ctx, align 4, !dbg !2154, !tbaa !1957
  %main_conf = bitcast i8* %1 to i8***, !dbg !2154
  %2 = load i8*** %main_conf, align 4, !dbg !2154, !tbaa !1957
  %arrayidx = getelementptr inbounds i8** %2, i32 %0, !dbg !2154
  %3 = load i8** %arrayidx, align 4, !dbg !2154, !tbaa !1957
  %arrayidx1 = getelementptr inbounds i8* %3, i32 200, !dbg !2155
  %handlers = bitcast i8* %arrayidx1 to %struct.ngx_array_s*, !dbg !2155
  %call = tail call i8* @ngx_array_push(%struct.ngx_array_s* %handlers) nounwind, !dbg !2155
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_request_s*)** %4}, i64 0, metadata !683), !dbg !2155
  %cmp = icmp eq i8* %call, null, !dbg !2156
  br i1 %cmp, label %return, label %if.end, !dbg !2156

if.end:                                           ; preds = %entry
  %4 = bitcast i8* %call to i32 (%struct.ngx_http_request_s*)**, !dbg !2155
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_limit_req_handler, i32 (%struct.ngx_http_request_s*)** %4, align 4, !dbg !2157, !tbaa !1957
  br label %return, !dbg !2158

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry ]
  ret i32 %retval.0, !dbg !2159
}

define internal i8* @ngx_http_limit_req_create_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !674), !dbg !2160
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2161
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2161, !tbaa !1957
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 28) nounwind, !dbg !2161
  %cmp = icmp eq i8* %call, null, !dbg !2162
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !2162

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 450, i32 43, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2163
  %limit_log_level = getelementptr inbounds i8* %call, i32 20, !dbg !2163
  %1 = bitcast i8* %limit_log_level to i32*, !dbg !2163
  store i32 -1, i32* %1, align 4, !dbg !2163, !tbaa !1967
  br label %return, !dbg !2164

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2165
}

define internal noalias i8* @ngx_http_limit_req_merge_conf(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %parent, i8* nocapture %child) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !663), !dbg !2166
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !664), !dbg !2166
  tail call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !665), !dbg !2166
  %elts = bitcast i8* %child to i8**, !dbg !2167
  %0 = load i8** %elts, align 4, !dbg !2167, !tbaa !1957
  %cmp = icmp eq i8* %0, null, !dbg !2167
  br i1 %cmp, label %if.then, label %if.end, !dbg !2167

if.then:                                          ; preds = %entry
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %child, i8* %parent, i32 20, i32 4, i1 false), !dbg !2168, !tbaa.struct !2170
  br label %if.end, !dbg !2171

if.end:                                           ; preds = %if.then, %entry
  %limit_log_level = getelementptr inbounds i8* %child, i32 20, !dbg !2172
  %1 = bitcast i8* %limit_log_level to i32*, !dbg !2172
  %2 = load i32* %1, align 4, !dbg !2172, !tbaa !1967
  tail call void @__ioc_report_conversion(i32 461, i32 48, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2172
  %cmp5 = icmp eq i32 %2, -1, !dbg !2172
  br i1 %cmp5, label %if.then6, label %cont21thread-pre-split, !dbg !2172

if.then6:                                         ; preds = %if.end
  %limit_log_level7 = getelementptr inbounds i8* %parent, i32 20, !dbg !2173
  %3 = bitcast i8* %limit_log_level7 to i32*, !dbg !2173
  %4 = load i32* %3, align 4, !dbg !2173, !tbaa !1967
  tail call void @__ioc_report_conversion(i32 462, i32 73, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2173
  %cmp13 = icmp eq i32 %4, -1, !dbg !2173
  br i1 %cmp13, label %cond.end, label %cond.false, !dbg !2173

cond.false:                                       ; preds = %if.then6
  %5 = load i32* %3, align 4, !dbg !2173, !tbaa !1967
  br label %cond.end, !dbg !2173

cond.end:                                         ; preds = %if.then6, %cond.false
  %cond = phi i32 [ %5, %cond.false ], [ 4, %if.then6 ], !dbg !2173
  store i32 %cond, i32* %1, align 4, !dbg !2173, !tbaa !1967
  br label %cont21, !dbg !2175

cont21thread-pre-split:                           ; preds = %if.end
  %.pr = load i32* %1, align 4, !dbg !2176, !tbaa !1967
  br label %cont21

cont21:                                           ; preds = %cont21thread-pre-split, %cond.end
  %6 = phi i32 [ %.pr, %cont21thread-pre-split ], [ %cond, %cond.end ], !dbg !2176
  %cmp22 = icmp eq i32 %6, 7, !dbg !2176
  br i1 %cmp22, label %cond.end32, label %cond.false26, !dbg !2176

cond.false26:                                     ; preds = %cont21
  %7 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !dbg !2176
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !2176
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !2176
  br i1 %9, label %ioc_bb30, label %cond.end32, !dbg !2176

ioc_bb30:                                         ; preds = %cond.false26
  %10 = zext i32 %6 to i64, !dbg !2176
  tail call void @__ioc_report_add_overflow(i32 465, i32 87, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind, !dbg !2176
  br label %cond.end32, !dbg !2176

cond.end32:                                       ; preds = %cont21, %cond.false26, %ioc_bb30
  %cond33 = phi i32 [ %8, %ioc_bb30 ], [ %8, %cond.false26 ], [ 7, %cont21 ], !dbg !2176
  %delay_log_level = getelementptr inbounds i8* %child, i32 24, !dbg !2176
  %11 = bitcast i8* %delay_log_level to i32*, !dbg !2176
  store i32 %cond33, i32* %11, align 4, !dbg !2176, !tbaa !1967
  ret i8* null, !dbg !2177
}

define internal i32 @ngx_http_limit_req_handler(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1771), !dbg !2178
  %main = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 29, !dbg !2179
  %0 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2179, !tbaa !1957
  %1 = getelementptr %struct.ngx_http_request_s* %0, i32 0, i32 53, !dbg !2179
  %2 = bitcast i8* %1 to i32*, !dbg !2179
  %3 = load i32* %2, align 4, !dbg !2179
  %bf.clear = and i32 %3, 268435456, !dbg !2179
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2179
  br i1 %tobool, label %if.end, label %return, !dbg !2179

if.end:                                           ; preds = %entry
  %4 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_limit_req_module, i32 0, i32 0), align 4, !dbg !2180, !tbaa !1967
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2180
  %5 = load i8*** %loc_conf, align 4, !dbg !2180, !tbaa !1957
  %arrayidx = getelementptr inbounds i8** %5, i32 %4, !dbg !2180
  %6 = load i8** %arrayidx, align 4, !dbg !2180, !tbaa !1957
  %elts = bitcast i8* %6 to i8**, !dbg !2181
  %7 = load i8** %elts, align 4, !dbg !2181, !tbaa !1957
  %8 = bitcast i8* %7 to %struct.ngx_http_limit_req_limit_t*, !dbg !2181
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %8}, i64 0, metadata !1783), !dbg !2181
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2182
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2182
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !2183), !dbg !2185
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !2186), !dbg !2190
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2191
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2191
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2194
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2194
  tail call void @llvm.dbg.value(metadata !2195, i64 0, metadata !1775), !dbg !2196
  tail call void @llvm.dbg.value(metadata !2197, i64 0, metadata !1782), !dbg !2198
  tail call void @llvm.dbg.value(metadata !2197, i64 0, metadata !1782), !dbg !2198
  tail call void @llvm.dbg.value(metadata !2197, i64 0, metadata !2199), !dbg !2185
  tail call void @llvm.dbg.value(metadata !2197, i64 0, metadata !1782), !dbg !2187
  tail call void @llvm.dbg.value(metadata !2197, i64 0, metadata !1782), !dbg !2191
  tail call void @llvm.dbg.value(metadata !2197, i64 0, metadata !1782), !dbg !2194
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1776), !dbg !2200
  %nelts = getelementptr inbounds i8* %6, i32 4, !dbg !2200
  %9 = bitcast i8* %nelts to i32*, !dbg !2200
  %10 = load i32* %9, align 4, !dbg !2200, !tbaa !1967
  %cmp284 = icmp eq i32 %10, 0, !dbg !2200
  br i1 %cmp284, label %return, label %for.body.lr.ph, !dbg !2200

for.body.lr.ph:                                   ; preds = %if.end
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2201
  br label %for.body, !dbg !2200

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %rc.0287 = phi i32 [ -5, %for.body.lr.ph ], [ %rc.1, %for.cond.backedge ]
  %n.0285 = phi i32 [ 0, %for.body.lr.ph ], [ %150, %for.cond.backedge ]
  %11 = phi i32 [ 0, %for.body.lr.ph ], [ %148, %for.cond.backedge ]
  %arrayidx9 = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %8, i32 %n.0285, !dbg !2203
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %arrayidx9}, i64 0, metadata !1782), !dbg !2203
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %arrayidx9}, i64 0, metadata !1782), !dbg !2203
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %arrayidx9}, i64 0, metadata !2199), !dbg !2185
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %arrayidx9}, i64 0, metadata !1782), !dbg !2187
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %arrayidx9}, i64 0, metadata !1782), !dbg !2191
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %arrayidx9}, i64 0, metadata !1782), !dbg !2194
  %shm_zone = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %arrayidx9, i32 0, i32 0, !dbg !2204
  %12 = load %struct.ngx_shm_zone_s** %shm_zone, align 4, !dbg !2204, !tbaa !1957
  %data = getelementptr inbounds %struct.ngx_shm_zone_s* %12, i32 0, i32 0, !dbg !2204
  %13 = load i8** %data, align 4, !dbg !2204, !tbaa !1957
  %index = getelementptr inbounds i8* %13, i32 12, !dbg !2205
  %14 = bitcast i8* %index to i32*, !dbg !2205
  %15 = load i32* %14, align 4, !dbg !2205, !tbaa !1967
  %16 = icmp sgt i32 %15, -1, !dbg !2205
  br i1 %16, label %cont11, label %ioc_bb10, !dbg !2205

ioc_bb10:                                         ; preds = %for.body
  %17 = sext i32 %15 to i64, !dbg !2205
  tail call void @__ioc_report_conversion(i32 98, i32 42, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %17, i8 1) nounwind, !dbg !2205
  br label %cont11, !dbg !2205

cont11:                                           ; preds = %ioc_bb10, %for.body
  %call = tail call %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s* %r, i32 %15) nounwind, !dbg !2205
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call}, i64 0, metadata !1779), !dbg !2205
  %cmp12 = icmp eq %struct.ngx_variable_value_t* %call, null, !dbg !2206
  br i1 %cmp12, label %for.inc, label %lor.lhs.false, !dbg !2206

lor.lhs.false:                                    ; preds = %cont11
  %18 = bitcast %struct.ngx_variable_value_t* %call to i32*, !dbg !2206
  %19 = load i32* %18, align 4, !dbg !2206
  %bf.clear13 = and i32 %19, 1073741824, !dbg !2206
  %tobool16 = icmp eq i32 %bf.clear13, 0, !dbg !2206
  br i1 %tobool16, label %if.end18, label %for.inc, !dbg !2206

if.end18:                                         ; preds = %lor.lhs.false
  %bf.clear19 = and i32 %19, 268435455, !dbg !2207
  tail call void @llvm.dbg.value(metadata !{i32 %bf.clear19}, i64 0, metadata !1772), !dbg !2207
  %cmp22 = icmp eq i32 %bf.clear19, 0, !dbg !2208
  br i1 %cmp22, label %for.inc, label %cont26, !dbg !2208

cont26:                                           ; preds = %if.end18
  %cmp27 = icmp ugt i32 %bf.clear19, 65535, !dbg !2209
  br i1 %cmp27, label %if.then28, label %if.end38, !dbg !2209

if.then28:                                        ; preds = %cont26
  %20 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2201, !tbaa !1957
  %log = getelementptr inbounds %struct.ngx_connection_s* %20, i32 0, i32 10, !dbg !2201
  %21 = load %struct.ngx_log_s** %log, align 4, !dbg !2201, !tbaa !1957
  %log_level = getelementptr inbounds %struct.ngx_log_s* %21, i32 0, i32 0, !dbg !2201
  %22 = load i32* %log_level, align 4, !dbg !2201, !tbaa !1967
  %cmp31 = icmp ugt i32 %22, 3, !dbg !2201
  br i1 %cmp31, label %cont34, label %for.inc, !dbg !2201

cont34:                                           ; preds = %if.then28
  %var = getelementptr inbounds i8* %13, i32 16, !dbg !2210
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %21, i32 0, i8* getelementptr inbounds ([62 x i8]* @.str25, i32 0, i32 0), i8* %var, %struct.ngx_variable_value_t* %call) nounwind, !dbg !2210
  br label %for.inc, !dbg !2210

if.end38:                                         ; preds = %cont26
  %data39 = getelementptr inbounds %struct.ngx_variable_value_t* %call, i32 0, i32 1, !dbg !2211
  %23 = load i8** %data39, align 4, !dbg !2211, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{i8* %23}, i64 0, metadata !2212) nounwind, !dbg !2213
  tail call void @llvm.dbg.value(metadata !{i32 %bf.clear19}, i64 0, metadata !2214) nounwind, !dbg !2213
  tail call void @llvm.dbg.value(metadata !2215, i64 0, metadata !2216) nounwind, !dbg !2217
  br label %while.cond.i, !dbg !2218

while.cond.i:                                     ; preds = %while.body.i, %if.end38
  %len.addr.0.i = phi i32 [ %bf.clear19, %if.end38 ], [ %25, %while.body.i ]
  %p.addr.0.i = phi i8* [ %23, %if.end38 ], [ %incdec.ptr.i, %while.body.i ]
  %crc.0.i = phi i32 [ -1, %if.end38 ], [ %xor24.i, %while.body.i ]
  %24 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %len.addr.0.i, i32 1) nounwind, !dbg !2218
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !2218
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !2218
  br i1 %26, label %ioc_bb.i, label %cont.i, !dbg !2218

ioc_bb.i:                                         ; preds = %while.cond.i
  %27 = zext i32 %len.addr.0.i to i64, !dbg !2218
  tail call void @__ioc_report_sub_overflow(i32 28, i32 15, i8* getelementptr inbounds ([21 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %27, i64 1, i8 5) nounwind, !dbg !2218
  br label %cont.i, !dbg !2218

cont.i:                                           ; preds = %ioc_bb.i, %while.cond.i
  tail call void @llvm.dbg.value(metadata !{i32 %25}, i64 0, metadata !2214) nounwind, !dbg !2218
  %tobool.i = icmp eq i32 %len.addr.0.i, 0, !dbg !2218
  br i1 %tobool.i, label %ngx_crc32_short.exit, label %while.body.i, !dbg !2218

while.body.i:                                     ; preds = %cont.i
  %incdec.ptr.i = getelementptr inbounds i8* %p.addr.0.i, i32 1, !dbg !2219
  tail call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !2212) nounwind, !dbg !2219
  %28 = load i8* %p.addr.0.i, align 1, !dbg !2219, !tbaa !1958
  tail call void @llvm.dbg.value(metadata !{i8 %28}, i64 0, metadata !2221) nounwind, !dbg !2219
  %conv.i = zext i8 %28 to i32, !dbg !2222
  %xor.i = xor i32 %conv.i, %crc.0.i, !dbg !2222
  %29 = load i32** @ngx_crc32_table_short, align 4, !dbg !2222, !tbaa !1957
  %and5.i = and i32 %xor.i, 15, !dbg !2222
  %arrayidx.i = getelementptr inbounds i32* %29, i32 %and5.i, !dbg !2222
  %30 = load i32* %arrayidx.i, align 4, !dbg !2222, !tbaa !1967
  %shr.i = lshr i32 %crc.0.i, 4, !dbg !2222
  %xor8.i = xor i32 %30, %shr.i, !dbg !2222
  tail call void @llvm.dbg.value(metadata !{i32 %xor8.i}, i64 0, metadata !2216) nounwind, !dbg !2222
  %xor8.masked.i = and i32 %xor8.i, 15, !dbg !2223
  %shr1231.i = lshr i32 %conv.i, 4, !dbg !2223
  %and19.i = xor i32 %xor8.masked.i, %shr1231.i, !dbg !2223
  %arrayidx20.i = getelementptr inbounds i32* %29, i32 %and19.i, !dbg !2223
  %31 = load i32* %arrayidx20.i, align 4, !dbg !2223, !tbaa !1967
  %shr23.i = lshr i32 %xor8.i, 4, !dbg !2223
  %xor24.i = xor i32 %shr23.i, %31, !dbg !2223
  tail call void @llvm.dbg.value(metadata !{i32 %xor24.i}, i64 0, metadata !2216) nounwind, !dbg !2223
  br label %while.cond.i, !dbg !2224

ngx_crc32_short.exit:                             ; preds = %cont.i
  %xor25.i = xor i32 %crc.0.i, -1, !dbg !2225
  tail call void @llvm.dbg.value(metadata !{i32 %xor25.i}, i64 0, metadata !1774), !dbg !2211
  %shpool = getelementptr inbounds i8* %13, i32 4, !dbg !2226
  %32 = bitcast i8* %shpool to %struct.ngx_slab_pool_t**, !dbg !2226
  %33 = load %struct.ngx_slab_pool_t** %32, align 4, !dbg !2226, !tbaa !1957
  %mutex = getelementptr inbounds %struct.ngx_slab_pool_t* %33, i32 0, i32 7, !dbg !2226
  tail call void @ngx_shmtx_lock(%struct.ngx_shmtx_t* %mutex) nounwind, !dbg !2226
  %34 = load i8** %data39, align 4, !dbg !2187, !tbaa !1957
  %35 = load i32* %9, align 4, !dbg !2187, !tbaa !1967
  %36 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %35, i32 1), !dbg !2187
  %37 = extractvalue { i32, i1 } %36, 0, !dbg !2187
  %38 = extractvalue { i32, i1 } %36, 1, !dbg !2187
  br i1 %38, label %ioc_bb46, label %cont51, !dbg !2187

ioc_bb46:                                         ; preds = %ngx_crc32_short.exit
  %39 = zext i32 %35 to i64, !dbg !2187
  tail call void @__ioc_report_sub_overflow(i32 113, i32 97, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %39, i64 1, i8 5) nounwind, !dbg !2187
  br label %cont51, !dbg !2187

cont51:                                           ; preds = %ioc_bb46, %ngx_crc32_short.exit
  %cmp48 = icmp eq i32 %n.0285, %37, !dbg !2187
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %arrayidx9}, i64 0, metadata !2227) nounwind, !dbg !2190
  tail call void @llvm.dbg.value(metadata !{i32 %xor25.i}, i64 0, metadata !2228) nounwind, !dbg !2190
  tail call void @llvm.dbg.value(metadata !{i8* %34}, i64 0, metadata !2229) nounwind, !dbg !2190
  tail call void @llvm.dbg.value(metadata !{i32 %bf.clear19}, i64 0, metadata !2230) nounwind, !dbg !2190
  %40 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2231, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_time_t* %40}, i64 0, metadata !2232) nounwind, !dbg !2231
  %sec.i = getelementptr inbounds %struct.ngx_time_t* %40, i32 0, i32 0, !dbg !2233
  %41 = load i32* %sec.i, align 4, !dbg !2233, !tbaa !2234
  %42 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %41, i32 1000) nounwind, !dbg !2233
  %43 = extractvalue { i32, i1 } %42, 0, !dbg !2233
  %44 = extractvalue { i32, i1 } %42, 1, !dbg !2233
  br i1 %44, label %ioc_bb.i222, label %cont.i223, !dbg !2233

ioc_bb.i222:                                      ; preds = %cont51
  %45 = sext i32 %41 to i64, !dbg !2233
  tail call void @__ioc_report_mul_overflow(i32 224, i32 35, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %45, i64 1000, i8 13) nounwind, !dbg !2233
  br label %cont.i223, !dbg !2233

cont.i223:                                        ; preds = %ioc_bb.i222, %cont51
  %46 = icmp sgt i32 %43, -1, !dbg !2233
  br i1 %46, label %cont2.i, label %ioc_bb1.i, !dbg !2233

ioc_bb1.i:                                        ; preds = %cont.i223
  %47 = sext i32 %43 to i64, !dbg !2233
  tail call void @__ioc_report_conversion(i32 224, i32 24, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i64 %47, i8 1) nounwind, !dbg !2233
  br label %cont2.i, !dbg !2233

cont2.i:                                          ; preds = %ioc_bb1.i, %cont.i223
  %msec.i = getelementptr inbounds %struct.ngx_time_t* %40, i32 0, i32 1, !dbg !2233
  %48 = load i32* %msec.i, align 4, !dbg !2233, !tbaa !1967
  %49 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %48) nounwind, !dbg !2233
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !2233
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !2233
  br i1 %51, label %ioc_bb3.i, label %cont4.i, !dbg !2233

ioc_bb3.i:                                        ; preds = %cont2.i
  %52 = zext i32 %48 to i64, !dbg !2233
  %53 = zext i32 %43 to i64, !dbg !2233
  tail call void @__ioc_report_add_overflow(i32 224, i32 43, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %53, i64 %52, i8 5) nounwind, !dbg !2233
  br label %cont4.i, !dbg !2233

cont4.i:                                          ; preds = %ioc_bb3.i, %cont2.i
  tail call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !2235) nounwind, !dbg !2233
  %54 = load %struct.ngx_shm_zone_s** %shm_zone, align 4, !dbg !2236, !tbaa !1957
  %data5.i = getelementptr inbounds %struct.ngx_shm_zone_s* %54, i32 0, i32 0, !dbg !2236
  %55 = load i8** %data5.i, align 4, !dbg !2236, !tbaa !1957
  %56 = bitcast i8* %55 to %struct.ngx_http_limit_req_ctx_t*, !dbg !2236
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_ctx_t* %56}, i64 0, metadata !2237) nounwind, !dbg !2236
  %sh.i = bitcast i8* %55 to %struct.ngx_http_limit_req_shctx_t**, !dbg !2238
  %57 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2238, !tbaa !1957
  %root.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %57, i32 0, i32 0, i32 0, !dbg !2238
  %sentinel8.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %57, i32 0, i32 0, i32 1, !dbg !2239
  %58 = load %struct.ngx_rbtree_node_s** %sentinel8.i, align 4, !dbg !2239, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %58}, i64 0, metadata !2240) nounwind, !dbg !2239
  %node.0251.i = load %struct.ngx_rbtree_node_s** %root.i, align 4, !dbg !2238
  %cmp252.i = icmp eq %struct.ngx_rbtree_node_s* %node.0251.i, %58, !dbg !2241
  br i1 %cmp252.i, label %cont107.i, label %while.body.i224, !dbg !2241

while.body.i224:                                  ; preds = %cont4.i, %while.cond.backedge.i
  %node.0253.i = phi %struct.ngx_rbtree_node_s* [ %node.0.i, %while.cond.backedge.i ], [ %node.0251.i, %cont4.i ]
  %key.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.0253.i, i32 0, i32 0, !dbg !2242
  %59 = load i32* %key.i, align 4, !dbg !2242, !tbaa !1967
  %cmp9.i = icmp ugt i32 %59, %xor25.i, !dbg !2242
  br i1 %cmp9.i, label %if.then.i, label %if.end.i, !dbg !2242

if.then.i:                                        ; preds = %while.body.i224
  %left.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.0253.i, i32 0, i32 1, !dbg !2244
  br label %while.cond.backedge.i, !dbg !2246

while.cond.backedge.i:                            ; preds = %if.end97.i, %if.then12.i, %if.then.i
  %node.0.in.be.i = phi %struct.ngx_rbtree_node_s** [ %left.i, %if.then.i ], [ %right.i, %if.then12.i ], [ %cond105.in.i, %if.end97.i ]
  %node.0.i = load %struct.ngx_rbtree_node_s** %node.0.in.be.i, align 4, !dbg !2238
  %cmp.i = icmp eq %struct.ngx_rbtree_node_s* %node.0.i, %58, !dbg !2241
  br i1 %cmp.i, label %cont107.i, label %while.body.i224, !dbg !2241

if.end.i:                                         ; preds = %while.body.i224
  %cmp11.i = icmp ult i32 %59, %xor25.i, !dbg !2247
  br i1 %cmp11.i, label %if.then12.i, label %if.end13.i, !dbg !2247

if.then12.i:                                      ; preds = %if.end.i
  %right.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.0253.i, i32 0, i32 2, !dbg !2248
  br label %while.cond.backedge.i, !dbg !2250

if.end13.i:                                       ; preds = %if.end.i
  %color.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.0253.i, i32 0, i32 4, !dbg !2251
  %60 = bitcast i8* %color.i to %struct.ngx_http_limit_req_node_t*, !dbg !2251
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_node_t* %60}, i64 0, metadata !2252) nounwind, !dbg !2251
  %data14.i = getelementptr inbounds i8* %color.i, i32 24, !dbg !2253
  %len15.i = getelementptr inbounds i8* %color.i, i32 2, !dbg !2253
  %61 = bitcast i8* %len15.i to i16*, !dbg !2253
  %62 = load i16* %61, align 2, !dbg !2253, !tbaa !2145
  %conv.i225 = zext i16 %62 to i32, !dbg !2253
  %call.i = tail call i32 @ngx_memn2cmp(i8* %34, i8* %data14.i, i32 %bf.clear19, i32 %conv.i225) nounwind, !dbg !2253
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !2254) nounwind, !dbg !2253
  %cmp16.i = icmp eq i32 %call.i, 0, !dbg !2255
  br i1 %cmp16.i, label %if.then18.i, label %if.end97.i, !dbg !2255

if.then18.i:                                      ; preds = %if.end13.i
  %queue.i = getelementptr inbounds i8* %color.i, i32 4, !dbg !2256
  %63 = bitcast i8* %queue.i to %struct.ngx_queue_s*, !dbg !2256
  %prev.i = bitcast i8* %queue.i to %struct.ngx_queue_s**, !dbg !2256
  %64 = load %struct.ngx_queue_s** %prev.i, align 4, !dbg !2256, !tbaa !1957
  %next.i = getelementptr inbounds i8* %color.i, i32 8, !dbg !2256
  %65 = bitcast i8* %next.i to %struct.ngx_queue_s**, !dbg !2256
  %66 = load %struct.ngx_queue_s** %65, align 4, !dbg !2256, !tbaa !1957
  %prev20.i = getelementptr inbounds %struct.ngx_queue_s* %66, i32 0, i32 0, !dbg !2256
  store %struct.ngx_queue_s* %64, %struct.ngx_queue_s** %prev20.i, align 4, !dbg !2256, !tbaa !1957
  %67 = load %struct.ngx_queue_s** %65, align 4, !dbg !2258, !tbaa !1957
  %68 = load %struct.ngx_queue_s** %prev.i, align 4, !dbg !2258, !tbaa !1957
  %next25.i = getelementptr inbounds %struct.ngx_queue_s* %68, i32 0, i32 1, !dbg !2258
  store %struct.ngx_queue_s* %67, %struct.ngx_queue_s** %next25.i, align 4, !dbg !2258, !tbaa !1957
  %69 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2259, !tbaa !1957
  %next28.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %69, i32 0, i32 2, i32 1, !dbg !2259
  %70 = load %struct.ngx_queue_s** %next28.i, align 4, !dbg !2259, !tbaa !1957
  store %struct.ngx_queue_s* %70, %struct.ngx_queue_s** %65, align 4, !dbg !2259, !tbaa !1957
  %prev34.i = getelementptr inbounds %struct.ngx_queue_s* %70, i32 0, i32 0, !dbg !2260
  store %struct.ngx_queue_s* %63, %struct.ngx_queue_s** %prev34.i, align 4, !dbg !2260, !tbaa !1957
  %71 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2261, !tbaa !1957
  %queue36.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %71, i32 0, i32 2, !dbg !2261
  store %struct.ngx_queue_s* %queue36.i, %struct.ngx_queue_s** %prev.i, align 4, !dbg !2261, !tbaa !1957
  %72 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2262, !tbaa !1957
  %next42.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %72, i32 0, i32 2, i32 1, !dbg !2262
  store %struct.ngx_queue_s* %63, %struct.ngx_queue_s** %next42.i, align 4, !dbg !2262, !tbaa !1957
  %last.i = getelementptr inbounds i8* %color.i, i32 12, !dbg !2263
  %73 = bitcast i8* %last.i to i32*, !dbg !2263
  %74 = load i32* %73, align 4, !dbg !2263, !tbaa !1967
  %75 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %50, i32 %74) nounwind, !dbg !2263
  %76 = extractvalue { i32, i1 } %75, 0, !dbg !2263
  %77 = extractvalue { i32, i1 } %75, 1, !dbg !2263
  br i1 %77, label %ioc_bb43.i, label %cont44.i, !dbg !2263

ioc_bb43.i:                                       ; preds = %if.then18.i
  %78 = zext i32 %74 to i64, !dbg !2263
  %79 = zext i32 %50 to i64, !dbg !2263
  tail call void @__ioc_report_sub_overflow(i32 247, i32 35, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %79, i64 %78, i8 5) nounwind, !dbg !2263
  br label %cont44.i, !dbg !2263

cont44.i:                                         ; preds = %ioc_bb43.i, %if.then18.i
  %80 = icmp sgt i32 %76, -1, !dbg !2263
  br i1 %80, label %cond.end.thread.i, label %cond.false.i, !dbg !2263

cond.end.thread.i:                                ; preds = %cont44.i
  tail call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !2264) nounwind, !dbg !2263
  %excess47248.i = getelementptr inbounds i8* %color.i, i32 16, !dbg !2265
  %81 = bitcast i8* %excess47248.i to i32*, !dbg !2265
  %82 = load i32* %81, align 4, !dbg !2265, !tbaa !1967
  %rate249.i = getelementptr inbounds i8* %55, i32 8, !dbg !2265
  %83 = bitcast i8* %rate249.i to i32*, !dbg !2265
  %84 = load i32* %83, align 4, !dbg !2265, !tbaa !1967
  br label %cont54.i, !dbg !2265

cond.false.i:                                     ; preds = %cont44.i
  %85 = zext i32 %76 to i64, !dbg !2263
  tail call void @__ioc_report_conversion(i32 247, i32 30, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %85, i8 0) nounwind, !dbg !2263
  tail call void @llvm.dbg.value(metadata !{i32 %76}, i64 0, metadata !2264) nounwind, !dbg !2263
  %excess47.i = getelementptr inbounds i8* %color.i, i32 16, !dbg !2265
  %86 = bitcast i8* %excess47.i to i32*, !dbg !2265
  %87 = load i32* %86, align 4, !dbg !2265, !tbaa !1967
  %rate.i = getelementptr inbounds i8* %55, i32 8, !dbg !2265
  %88 = bitcast i8* %rate.i to i32*, !dbg !2265
  %89 = load i32* %88, align 4, !dbg !2265, !tbaa !1967
  %90 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %76) nounwind, !dbg !2265
  %91 = extractvalue { i32, i1 } %90, 0, !dbg !2265
  %92 = extractvalue { i32, i1 } %90, 1, !dbg !2265
  br i1 %92, label %ioc_bb50.i, label %cond.end.i, !dbg !2265

ioc_bb50.i:                                       ; preds = %cond.false.i
  %93 = sext i32 %76 to i64, !dbg !2265
  tail call void @__ioc_report_sub_overflow(i32 248, i32 61, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i64 0, i64 %93, i8 13) nounwind, !dbg !2265
  br label %cond.end.i, !dbg !2265

cond.end.i:                                       ; preds = %ioc_bb50.i, %cond.false.i
  %94 = icmp sgt i32 %91, -1, !dbg !2265
  br i1 %94, label %cont54.i, label %ioc_bb53.i, !dbg !2265

ioc_bb53.i:                                       ; preds = %cond.end.i
  %95 = sext i32 %91 to i64, !dbg !2265
  tail call void @__ioc_report_conversion(i32 248, i32 46, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %95, i8 1) nounwind, !dbg !2265
  br label %cont54.i, !dbg !2265

cont54.i:                                         ; preds = %ioc_bb53.i, %cond.end.i, %cond.end.thread.i
  %cond250.i = phi i32 [ %76, %cond.end.thread.i ], [ %91, %ioc_bb53.i ], [ %91, %cond.end.i ]
  %96 = phi i32* [ %81, %cond.end.thread.i ], [ %86, %ioc_bb53.i ], [ %86, %cond.end.i ]
  %97 = phi i32 [ %82, %cond.end.thread.i ], [ %87, %ioc_bb53.i ], [ %87, %cond.end.i ]
  %98 = phi i32 [ %84, %cond.end.thread.i ], [ %89, %ioc_bb53.i ], [ %89, %cond.end.i ]
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 %cond250.i) nounwind, !dbg !2265
  %100 = extractvalue { i32, i1 } %99, 0, !dbg !2265
  %101 = extractvalue { i32, i1 } %99, 1, !dbg !2265
  br i1 %101, label %ioc_bb55.i, label %cont59.i, !dbg !2265

ioc_bb55.i:                                       ; preds = %cont54.i
  %102 = zext i32 %cond250.i to i64, !dbg !2265
  %103 = zext i32 %98 to i64, !dbg !2265
  tail call void @__ioc_report_mul_overflow(i32 248, i32 44, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %103, i64 %102, i8 5) nounwind, !dbg !2265
  br label %cont59.i, !dbg !2265

cont59.i:                                         ; preds = %ioc_bb55.i, %cont54.i
  %div.i = udiv i32 %100, 1000, !dbg !2265
  %104 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %97, i32 %div.i) nounwind, !dbg !2265
  %105 = extractvalue { i32, i1 } %104, 0, !dbg !2265
  %106 = extractvalue { i32, i1 } %104, 1, !dbg !2265
  br i1 %106, label %ioc_bb60.i, label %cont63.i, !dbg !2265

ioc_bb60.i:                                       ; preds = %cont59.i
  %107 = zext i32 %div.i to i64, !dbg !2265
  %108 = zext i32 %97 to i64, !dbg !2265
  tail call void @__ioc_report_sub_overflow(i32 248, i32 30, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %108, i64 %107, i8 5) nounwind, !dbg !2265
  br label %cont63.i, !dbg !2265

cont63.i:                                         ; preds = %ioc_bb60.i, %cont59.i
  %109 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %105, i32 1000) nounwind, !dbg !2265
  %110 = extractvalue { i32, i1 } %109, 0, !dbg !2265
  %111 = extractvalue { i32, i1 } %109, 1, !dbg !2265
  br i1 %111, label %ioc_bb64.i, label %cont65.i, !dbg !2265

ioc_bb64.i:                                       ; preds = %cont63.i
  %112 = zext i32 %105 to i64, !dbg !2265
  tail call void @__ioc_report_add_overflow(i32 248, i32 74, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %112, i64 1000, i8 5) nounwind, !dbg !2265
  br label %cont65.i, !dbg !2265

cont65.i:                                         ; preds = %ioc_bb64.i, %cont63.i
  %113 = icmp sgt i32 %110, -1, !dbg !2265
  br i1 %113, label %cont68.i, label %ioc_bb67.i, !dbg !2265

ioc_bb67.i:                                       ; preds = %cont65.i
  %114 = zext i32 %110 to i64, !dbg !2265
  tail call void @__ioc_report_conversion(i32 248, i32 16, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %114, i8 0) nounwind, !dbg !2265
  br label %cont68.i, !dbg !2265

cont68.i:                                         ; preds = %ioc_bb67.i, %cont65.i
  tail call void @llvm.dbg.value(metadata !{i32 %110}, i64 0, metadata !2266) nounwind, !dbg !2265
  %cmp69.i = icmp slt i32 %110, 0, !dbg !2267
  %..i = select i1 %cmp69.i, i32 0, i32 %110, !dbg !2267
  %115 = sext i32 %..i to i64, !dbg !2268
  %116 = icmp sgt i32 %..i, -1, !dbg !2268
  br i1 %116, label %cont78.i, label %ioc_bb74.i, !dbg !2268

ioc_bb74.i:                                       ; preds = %cont68.i
  tail call void @__ioc_report_conversion(i32 252, i32 14, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %115, i8 1) nounwind, !dbg !2268
  tail call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !1777), !dbg !2268
  tail call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !2183), !dbg !2185
  tail call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !2186), !dbg !2190
  tail call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !1777), !dbg !2191
  tail call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !1777), !dbg !2191
  tail call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !1777), !dbg !2194
  tail call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !1777), !dbg !2194
  tail call void @__ioc_report_conversion(i32 253, i32 25, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %115, i8 1) nounwind, !dbg !2269
  br label %cont78.i, !dbg !2269

cont78.i:                                         ; preds = %cont68.i, %ioc_bb74.i
  %burst.i = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %8, i32 %n.0285, i32 1, !dbg !2269
  %117 = load i32* %burst.i, align 4, !dbg !2269, !tbaa !1967
  %cmp79.i = icmp ugt i32 %..i, %117, !dbg !2269
  br i1 %cmp79.i, label %ngx_http_limit_req_lookup.exit, label %if.end84.i, !dbg !2269

if.end84.i:                                       ; preds = %cont78.i
  br i1 %cmp48, label %if.then85.i, label %if.end91.i, !dbg !2270

if.then85.i:                                      ; preds = %if.end84.i
  br i1 %116, label %cont88.i, label %ioc_bb87.i, !dbg !2271

ioc_bb87.i:                                       ; preds = %if.then85.i
  tail call void @__ioc_report_conversion(i32 257, i32 24, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %115, i8 1) nounwind, !dbg !2271
  br label %cont88.i, !dbg !2271

cont88.i:                                         ; preds = %ioc_bb87.i, %if.then85.i
  store i32 %..i, i32* %96, align 4, !dbg !2271, !tbaa !1967
  store i32 %50, i32* %73, align 4, !dbg !2273, !tbaa !1967
  br label %ngx_http_limit_req_lookup.exit, !dbg !2274

if.end91.i:                                       ; preds = %if.end84.i
  %count.i = getelementptr inbounds i8* %color.i, i32 20, !dbg !2275
  %118 = bitcast i8* %count.i to i32*, !dbg !2275
  %119 = load i32* %118, align 4, !dbg !2275, !tbaa !1967
  %120 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %119, i32 1) nounwind, !dbg !2275
  %121 = extractvalue { i32, i1 } %120, 0, !dbg !2275
  %122 = extractvalue { i32, i1 } %120, 1, !dbg !2275
  br i1 %122, label %ioc_bb92.i, label %cont93.i, !dbg !2275

ioc_bb92.i:                                       ; preds = %if.end91.i
  %123 = zext i32 %119 to i64, !dbg !2275
  tail call void @__ioc_report_add_overflow(i32 261, i32 18, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %123, i64 1, i8 5) nounwind, !dbg !2275
  br label %cont93.i, !dbg !2275

cont93.i:                                         ; preds = %ioc_bb92.i, %if.end91.i
  store i32 %121, i32* %118, align 4, !dbg !2275, !tbaa !1967
  %node94.i = getelementptr inbounds i8* %55, i32 24, !dbg !2276
  %124 = bitcast i8* %node94.i to %struct.ngx_http_limit_req_node_t**, !dbg !2276
  store %struct.ngx_http_limit_req_node_t* %60, %struct.ngx_http_limit_req_node_t** %124, align 4, !dbg !2276, !tbaa !1957
  br label %ngx_http_limit_req_lookup.exit, !dbg !2277

if.end97.i:                                       ; preds = %if.end13.i
  %cmp98.i = icmp slt i32 %call.i, 0, !dbg !2278
  %left101.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.0253.i, i32 0, i32 1, !dbg !2278
  %right103.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %node.0253.i, i32 0, i32 2, !dbg !2278
  %cond105.in.i = select i1 %cmp98.i, %struct.ngx_rbtree_node_s** %left101.i, %struct.ngx_rbtree_node_s** %right103.i, !dbg !2278
  br label %while.cond.backedge.i, !dbg !2278

cont107.i:                                        ; preds = %while.cond.backedge.i, %cont4.i
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2279
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !2183), !dbg !2185
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !2186), !dbg !2190
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2191
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2191
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2194
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1777), !dbg !2194
  %125 = add nuw i32 %bf.clear19, 40, !dbg !2280
  %126 = zext i32 %bf.clear19 to i64, !dbg !2280
  tail call void @llvm.dbg.value(metadata !{i32 %125}, i64 0, metadata !2281) nounwind, !dbg !2280
  tail call fastcc void @ngx_http_limit_req_expire(%struct.ngx_http_limit_req_ctx_t* %56, i32 1) nounwind, !dbg !2282
  %shpool.i = getelementptr inbounds i8* %55, i32 4, !dbg !2283
  %127 = bitcast i8* %shpool.i to %struct.ngx_slab_pool_t**, !dbg !2283
  %128 = load %struct.ngx_slab_pool_t** %127, align 4, !dbg !2283, !tbaa !1957
  %call114.i = tail call i8* @ngx_slab_alloc_locked(%struct.ngx_slab_pool_t* %128, i32 %125) nounwind, !dbg !2283
  %cmp115.i = icmp eq i8* %call114.i, null, !dbg !2284
  br i1 %cmp115.i, label %cont119.i, label %if.end128.i, !dbg !2284

cont119.i:                                        ; preds = %cont107.i
  tail call fastcc void @ngx_http_limit_req_expire(%struct.ngx_http_limit_req_ctx_t* %56, i32 0) nounwind, !dbg !2285
  %129 = load %struct.ngx_slab_pool_t** %127, align 4, !dbg !2287, !tbaa !1957
  %call121.i = tail call i8* @ngx_slab_alloc_locked(%struct.ngx_slab_pool_t* %129, i32 %125) nounwind, !dbg !2287
  %cmp122.i = icmp eq i8* %call121.i, null, !dbg !2288
  br i1 %cmp122.i, label %ngx_http_limit_req_lookup.exit, label %if.end128.i, !dbg !2288

if.end128.i:                                      ; preds = %cont119.i, %cont107.i
  %node.1.in.i = phi i8* [ %call121.i, %cont119.i ], [ %call114.i, %cont107.i ]
  %node.1.i = bitcast i8* %node.1.in.i to %struct.ngx_rbtree_node_s*, !dbg !2287
  %key129.i = bitcast i8* %node.1.in.i to i32*, !dbg !2289
  store i32 %xor25.i, i32* %key129.i, align 4, !dbg !2289, !tbaa !1967
  %130 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2290, !tbaa !1957
  %rbtree131.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %130, i32 0, i32 0, !dbg !2290
  tail call void @ngx_rbtree_insert(%struct.ngx_rbtree_s* %rbtree131.i, %struct.ngx_rbtree_node_s* %node.1.i) nounwind, !dbg !2290
  %131 = getelementptr inbounds i8* %node.1.in.i, i32 16, !dbg !2291
  %132 = bitcast i8* %131 to %struct.ngx_http_limit_req_node_t*, !dbg !2291
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_node_t* %132}, i64 0, metadata !2252) nounwind, !dbg !2291
  %133 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2292, !tbaa !1957
  %next135.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %133, i32 0, i32 2, i32 1, !dbg !2292
  %134 = load %struct.ngx_queue_s** %next135.i, align 4, !dbg !2292, !tbaa !1957
  %queue136.i = getelementptr inbounds i8* %node.1.in.i, i32 20, !dbg !2292
  %135 = bitcast i8* %queue136.i to %struct.ngx_queue_s*, !dbg !2292
  %next137.i = getelementptr inbounds i8* %node.1.in.i, i32 24, !dbg !2292
  %136 = bitcast i8* %next137.i to %struct.ngx_queue_s**, !dbg !2292
  store %struct.ngx_queue_s* %134, %struct.ngx_queue_s** %136, align 4, !dbg !2292, !tbaa !1957
  %prev141.i = getelementptr inbounds %struct.ngx_queue_s* %134, i32 0, i32 0, !dbg !2293
  store %struct.ngx_queue_s* %135, %struct.ngx_queue_s** %prev141.i, align 4, !dbg !2293, !tbaa !1957
  %137 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2294, !tbaa !1957
  %queue143.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %137, i32 0, i32 2, !dbg !2294
  %prev145.i = bitcast i8* %queue136.i to %struct.ngx_queue_s**, !dbg !2294
  store %struct.ngx_queue_s* %queue143.i, %struct.ngx_queue_s** %prev145.i, align 4, !dbg !2294, !tbaa !1957
  %138 = load %struct.ngx_http_limit_req_shctx_t** %sh.i, align 4, !dbg !2295, !tbaa !1957
  %next149.i = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %138, i32 0, i32 2, i32 1, !dbg !2295
  store %struct.ngx_queue_s* %135, %struct.ngx_queue_s** %next149.i, align 4, !dbg !2295, !tbaa !1957
  %139 = icmp ult i32 %bf.clear19, 256, !dbg !2296
  br i1 %139, label %cont152.i, label %ioc_bb151.i, !dbg !2296

ioc_bb151.i:                                      ; preds = %if.end128.i
  tail call void @__ioc_report_conversion(i32 285, i32 25, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @7, i32 0, i32 0), i64 %126, i8 0) nounwind, !dbg !2296
  br label %cont152.i, !dbg !2296

cont152.i:                                        ; preds = %ioc_bb151.i, %if.end128.i
  %conv153.i = trunc i32 %19 to i16, !dbg !2296
  %conv154.i = and i16 %conv153.i, 255, !dbg !2296
  %len155.i = getelementptr inbounds i8* %node.1.in.i, i32 18, !dbg !2296
  %140 = bitcast i8* %len155.i to i16*, !dbg !2296
  store i16 %conv154.i, i16* %140, align 2, !dbg !2296, !tbaa !2145
  %excess158.i = getelementptr inbounds i8* %node.1.in.i, i32 32, !dbg !2297
  %141 = bitcast i8* %excess158.i to i32*, !dbg !2297
  store i32 0, i32* %141, align 4, !dbg !2297, !tbaa !1967
  %data159.i = getelementptr inbounds i8* %node.1.in.i, i32 40, !dbg !2298
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %data159.i, i8* %34, i32 %bf.clear19, i32 1, i1 false) nounwind, !dbg !2298
  %last169.i = getelementptr inbounds i8* %node.1.in.i, i32 28, !dbg !2299
  %142 = bitcast i8* %last169.i to i32*, !dbg !2299
  br i1 %cmp48, label %if.then161.i, label %cont168.i, !dbg !2300

if.then161.i:                                     ; preds = %cont152.i
  store i32 %50, i32* %142, align 4, !dbg !2301, !tbaa !1967
  %count165.i = getelementptr inbounds i8* %node.1.in.i, i32 36, !dbg !2303
  %143 = bitcast i8* %count165.i to i32*, !dbg !2303
  store i32 0, i32* %143, align 4, !dbg !2303, !tbaa !1967
  br label %ngx_http_limit_req_lookup.exit, !dbg !2304

cont168.i:                                        ; preds = %cont152.i
  store i32 0, i32* %142, align 4, !dbg !2299, !tbaa !1967
  %count172.i = getelementptr inbounds i8* %node.1.in.i, i32 36, !dbg !2305
  %144 = bitcast i8* %count172.i to i32*, !dbg !2305
  store i32 1, i32* %144, align 4, !dbg !2305, !tbaa !1967
  %node173.i = getelementptr inbounds i8* %55, i32 24, !dbg !2306
  %145 = bitcast i8* %node173.i to %struct.ngx_http_limit_req_node_t**, !dbg !2306
  store %struct.ngx_http_limit_req_node_t* %132, %struct.ngx_http_limit_req_node_t** %145, align 4, !dbg !2306, !tbaa !1957
  br label %ngx_http_limit_req_lookup.exit, !dbg !2307

ngx_http_limit_req_lookup.exit:                   ; preds = %cont78.i, %cont88.i, %cont93.i, %cont119.i, %if.then161.i, %cont168.i
  %146 = phi i32 [ %..i, %cont88.i ], [ %..i, %cont93.i ], [ 0, %if.then161.i ], [ 0, %cont168.i ], [ %..i, %cont78.i ], [ 0, %cont119.i ]
  %retval.0.i = phi i32 [ 0, %cont88.i ], [ -2, %cont93.i ], [ 0, %if.then161.i ], [ -2, %cont168.i ], [ -3, %cont78.i ], [ -1, %cont119.i ]
  tail call void @llvm.dbg.value(metadata !{i32 %retval.0.i}, i64 0, metadata !1775), !dbg !2187
  %147 = load %struct.ngx_slab_pool_t** %32, align 4, !dbg !2308, !tbaa !1957
  %mutex54 = getelementptr inbounds %struct.ngx_slab_pool_t* %147, i32 0, i32 7, !dbg !2308
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %mutex54) nounwind, !dbg !2308
  %cmp57 = icmp eq i32 %retval.0.i, -2, !dbg !2309
  br i1 %cmp57, label %for.inc, label %cont72, !dbg !2309

for.inc:                                          ; preds = %ngx_http_limit_req_lookup.exit, %lor.lhs.false, %if.then28, %cont34, %if.end18, %cont11
  %148 = phi i32 [ %11, %cont11 ], [ %11, %lor.lhs.false ], [ %11, %if.end18 ], [ %11, %cont34 ], [ %11, %if.then28 ], [ %146, %ngx_http_limit_req_lookup.exit ]
  %rc.1 = phi i32 [ %rc.0287, %cont11 ], [ %rc.0287, %lor.lhs.false ], [ %rc.0287, %if.end18 ], [ %rc.0287, %cont34 ], [ %rc.0287, %if.then28 ], [ -2, %ngx_http_limit_req_lookup.exit ]
  %149 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0285, i32 1), !dbg !2200
  %150 = extractvalue { i32, i1 } %149, 0, !dbg !2200
  %151 = extractvalue { i32, i1 } %149, 1, !dbg !2200
  br i1 %151, label %ioc_bb61, label %for.cond.backedge, !dbg !2200

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb61
  %152 = load i32* %9, align 4, !dbg !2200, !tbaa !1967
  %cmp = icmp ult i32 %150, %152, !dbg !2200
  br i1 %cmp, label %for.body, label %cont64, !dbg !2200

ioc_bb61:                                         ; preds = %for.inc
  %153 = zext i32 %n.0285 to i64, !dbg !2200
  tail call void @__ioc_report_add_overflow(i32 95, i32 42, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %153, i64 1, i8 5) nounwind, !dbg !2200
  br label %for.cond.backedge, !dbg !2200

cont64:                                           ; preds = %for.cond.backedge
  %cmp65 = icmp eq i32 %rc.1, -5, !dbg !2310
  br i1 %cmp65, label %return, label %cont72, !dbg !2310

cont72:                                           ; preds = %ngx_http_limit_req_lookup.exit, %cont64
  %n.0281 = phi i32 [ %150, %cont64 ], [ %n.0285, %ngx_http_limit_req_lookup.exit ]
  %rc.2263 = phi i32 [ %rc.1, %cont64 ], [ %retval.0.i, %ngx_http_limit_req_lookup.exit ]
  %154 = phi i32 [ %148, %cont64 ], [ %146, %ngx_http_limit_req_lookup.exit ]
  %155 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2311, !tbaa !1957
  %156 = getelementptr %struct.ngx_http_request_s* %155, i32 0, i32 53, !dbg !2311
  %157 = bitcast i8* %156 to i32*, !dbg !2311
  %158 = load i32* %157, align 4, !dbg !2311
  %159 = or i32 %158, 268435456, !dbg !2311
  store i32 %159, i32* %157, align 4, !dbg !2311
  switch i32 %rc.2263, label %if.end134 [
    i32 -3, label %if.then89
    i32 -1, label %while.cond
    i32 -2, label %while.cond.outer.i
  ], !dbg !2312

if.then89:                                        ; preds = %cont72
  %connection90 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2313
  %160 = load %struct.ngx_connection_s** %connection90, align 4, !dbg !2313, !tbaa !1957
  %log91 = getelementptr inbounds %struct.ngx_connection_s* %160, i32 0, i32 10, !dbg !2313
  %161 = load %struct.ngx_log_s** %log91, align 4, !dbg !2313, !tbaa !1957
  %log_level92 = getelementptr inbounds %struct.ngx_log_s* %161, i32 0, i32 0, !dbg !2313
  %162 = load i32* %log_level92, align 4, !dbg !2313, !tbaa !1967
  %limit_log_level = getelementptr inbounds i8* %6, i32 20, !dbg !2313
  %163 = bitcast i8* %limit_log_level to i32*, !dbg !2313
  %164 = load i32* %163, align 4, !dbg !2313, !tbaa !1967
  %cmp93 = icmp ult i32 %162, %164, !dbg !2313
  br i1 %cmp93, label %while.cond, label %cont104, !dbg !2313

cont104:                                          ; preds = %if.then89
  %div = udiv i32 %154, 1000, !dbg !2191
  %rem = urem i32 %154, 1000, !dbg !2191
  %shm_zone105 = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %arrayidx9, i32 0, i32 0, !dbg !2191
  %165 = load %struct.ngx_shm_zone_s** %shm_zone105, align 4, !dbg !2191, !tbaa !1957
  %name = getelementptr inbounds %struct.ngx_shm_zone_s* %165, i32 0, i32 1, i32 2, !dbg !2191
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 %164, %struct.ngx_log_s* %161, i32 0, i8* getelementptr inbounds ([50 x i8]* @.str26, i32 0, i32 0), i32 %div, i32 %rem, %struct.ngx_str_t* %name) nounwind, !dbg !2191
  br label %while.cond, !dbg !2191

while.cond:                                       ; preds = %while.body, %cont122, %cont72, %if.then89, %cont104
  %n.1 = phi i32 [ %n.0281, %cont104 ], [ %n.0281, %if.then89 ], [ %n.0281, %cont72 ], [ %167, %cont122 ], [ %167, %while.body ]
  %166 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.1, i32 1), !dbg !2314
  %167 = extractvalue { i32, i1 } %166, 0, !dbg !2314
  %168 = extractvalue { i32, i1 } %166, 1, !dbg !2314
  br i1 %168, label %ioc_bb108, label %cont109, !dbg !2314

ioc_bb108:                                        ; preds = %while.cond
  %169 = zext i32 %n.1 to i64, !dbg !2314
  tail call void @__ioc_report_sub_overflow(i32 129, i32 12, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %169, i64 1, i8 5) nounwind, !dbg !2314
  br label %cont109, !dbg !2314

cont109:                                          ; preds = %while.cond, %ioc_bb108
  tail call void @llvm.dbg.value(metadata !{i32 %167}, i64 0, metadata !1776), !dbg !2314
  %tobool110 = icmp eq i32 %n.1, 0, !dbg !2314
  br i1 %tobool110, label %return, label %while.body, !dbg !2314

while.body:                                       ; preds = %cont109
  %shm_zone112 = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %8, i32 %167, i32 0, !dbg !2315
  %170 = load %struct.ngx_shm_zone_s** %shm_zone112, align 4, !dbg !2315, !tbaa !1957
  %data113 = getelementptr inbounds %struct.ngx_shm_zone_s* %170, i32 0, i32 0, !dbg !2315
  %171 = load i8** %data113, align 4, !dbg !2315, !tbaa !1957
  %node = getelementptr inbounds i8* %171, i32 24, !dbg !2317
  %172 = bitcast i8* %node to %struct.ngx_http_limit_req_node_t**, !dbg !2317
  %173 = load %struct.ngx_http_limit_req_node_t** %172, align 4, !dbg !2317, !tbaa !1957
  %cmp114 = icmp eq %struct.ngx_http_limit_req_node_t* %173, null, !dbg !2317
  br i1 %cmp114, label %while.cond, label %if.end117, !dbg !2317

if.end117:                                        ; preds = %while.body
  %shpool118 = getelementptr inbounds i8* %171, i32 4, !dbg !2318
  %174 = bitcast i8* %shpool118 to %struct.ngx_slab_pool_t**, !dbg !2318
  %175 = load %struct.ngx_slab_pool_t** %174, align 4, !dbg !2318, !tbaa !1957
  %mutex119 = getelementptr inbounds %struct.ngx_slab_pool_t* %175, i32 0, i32 7, !dbg !2318
  tail call void @ngx_shmtx_lock(%struct.ngx_shmtx_t* %mutex119) nounwind, !dbg !2318
  %176 = load %struct.ngx_http_limit_req_node_t** %172, align 4, !dbg !2319, !tbaa !1957
  %count = getelementptr inbounds %struct.ngx_http_limit_req_node_t* %176, i32 0, i32 6, !dbg !2319
  %177 = load i32* %count, align 4, !dbg !2319, !tbaa !1967
  %178 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %177, i32 1), !dbg !2319
  %179 = extractvalue { i32, i1 } %178, 0, !dbg !2319
  %180 = extractvalue { i32, i1 } %178, 1, !dbg !2319
  br i1 %180, label %ioc_bb121, label %cont122, !dbg !2319

ioc_bb121:                                        ; preds = %if.end117
  %181 = zext i32 %177 to i64, !dbg !2319
  tail call void @__ioc_report_sub_overflow(i32 135, i32 27, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %181, i64 1, i8 5) nounwind, !dbg !2319
  br label %cont122, !dbg !2319

cont122:                                          ; preds = %if.end117, %ioc_bb121
  store i32 %179, i32* %count, align 4, !dbg !2319, !tbaa !1967
  %182 = load %struct.ngx_slab_pool_t** %174, align 4, !dbg !2320, !tbaa !1957
  %mutex124 = getelementptr inbounds %struct.ngx_slab_pool_t* %182, i32 0, i32 7, !dbg !2320
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %mutex124) nounwind, !dbg !2320
  store %struct.ngx_http_limit_req_node_t* null, %struct.ngx_http_limit_req_node_t** %172, align 4, !dbg !2321, !tbaa !1957
  br label %while.cond, !dbg !2322

if.end134:                                        ; preds = %cont72
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_limit_t* %8}, i64 0, metadata !2323) nounwind, !dbg !2185
  tail call void @llvm.dbg.value(metadata !{i32 %n.0281}, i64 0, metadata !2324) nounwind, !dbg !2185
  %183 = icmp sgt i32 %154, -1, !dbg !2325
  br i1 %183, label %cont.i228, label %cont.thread.i, !dbg !2325

cont.thread.i:                                    ; preds = %if.end134
  %184 = zext i32 %154 to i64, !dbg !2325
  tail call void @__ioc_report_conversion(i32 309, i32 12, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %184, i8 0) nounwind, !dbg !2325
  tail call void @llvm.dbg.value(metadata !{i32 %154}, i64 0, metadata !2326) nounwind, !dbg !2325
  br label %lor.lhs.false.i, !dbg !2327

cont.i228:                                        ; preds = %if.end134
  tail call void @llvm.dbg.value(metadata !{i32 %154}, i64 0, metadata !2326) nounwind, !dbg !2325
  %cmp.i227 = icmp eq i32 %154, 0, !dbg !2327
  br i1 %cmp.i227, label %while.cond.outer.i, label %lor.lhs.false.i, !dbg !2327

lor.lhs.false.i:                                  ; preds = %cont.i228, %cont.thread.i
  %nodelay.i = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %8, i32 %n.0285, i32 2, !dbg !2327
  %185 = load i32* %nodelay.i, align 4, !dbg !2327, !tbaa !1967
  %tobool.i229 = icmp eq i32 %185, 0, !dbg !2327
  br i1 %tobool.i229, label %if.else.i, label %while.cond.outer.i, !dbg !2327

if.else.i:                                        ; preds = %lor.lhs.false.i
  %shm_zone.i230 = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %arrayidx9, i32 0, i32 0, !dbg !2328
  %186 = load %struct.ngx_shm_zone_s** %shm_zone.i230, align 4, !dbg !2328, !tbaa !1957
  %data.i = getelementptr inbounds %struct.ngx_shm_zone_s* %186, i32 0, i32 0, !dbg !2328
  %187 = load i8** %data.i, align 4, !dbg !2328, !tbaa !1957
  %188 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %154, i32 1000) nounwind, !dbg !2330
  %189 = extractvalue { i32, i1 } %188, 0, !dbg !2330
  %190 = extractvalue { i32, i1 } %188, 1, !dbg !2330
  br i1 %190, label %ioc_bb3.i231, label %cont4.i232, !dbg !2330

ioc_bb3.i231:                                     ; preds = %if.else.i
  %191 = sext i32 %154 to i64, !dbg !2330
  tail call void @__ioc_report_mul_overflow(i32 315, i32 25, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %191, i64 1000, i8 13) nounwind, !dbg !2330
  br label %cont4.i232, !dbg !2330

cont4.i232:                                       ; preds = %ioc_bb3.i231, %if.else.i
  %192 = icmp sgt i32 %189, -1, !dbg !2330
  br i1 %192, label %cont6.i, label %ioc_bb5.i, !dbg !2330

ioc_bb5.i:                                        ; preds = %cont4.i232
  %193 = sext i32 %189 to i64, !dbg !2330
  tail call void @__ioc_report_conversion(i32 315, i32 17, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %193, i8 1) nounwind, !dbg !2330
  br label %cont6.i, !dbg !2330

cont6.i:                                          ; preds = %ioc_bb5.i, %cont4.i232
  %rate.i233 = getelementptr inbounds i8* %187, i32 8, !dbg !2330
  %194 = bitcast i8* %rate.i233 to i32*, !dbg !2330
  %195 = load i32* %194, align 4, !dbg !2330, !tbaa !1967
  %196 = icmp eq i32 %195, 0, !dbg !2330
  br i1 %196, label %trap.i, label %cont7.i, !dbg !2330

trap.i:                                           ; preds = %cont73.i, %cont6.i
  tail call void @llvm.trap() noreturn nounwind, !dbg !2330
  unreachable, !dbg !2330

cont7.i:                                          ; preds = %cont6.i
  %div.i234 = udiv i32 %189, %195, !dbg !2330
  tail call void @llvm.dbg.value(metadata !{i32 %div.i234}, i64 0, metadata !2331) nounwind, !dbg !2330
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.then78.i, %ioc_bb80.i, %cont72, %cont7.i, %lor.lhs.false.i, %cont.i228
  %197 = phi i32 [ 0, %cont72 ], [ %154, %cont7.i ], [ %154, %lor.lhs.false.i ], [ 0, %cont.i228 ], [ %..i245, %ioc_bb80.i ], [ %..i245, %if.then78.i ]
  %198 = phi %struct.ngx_http_limit_req_limit_t* [ %arrayidx9, %cont72 ], [ %arrayidx9, %cont7.i ], [ %arrayidx9, %lor.lhs.false.i ], [ %arrayidx9, %cont.i228 ], [ %arrayidx.i236, %ioc_bb80.i ], [ %arrayidx.i236, %if.then78.i ]
  %max_delay.0.ph119.i = phi i32 [ 0, %cont72 ], [ %div.i234, %cont7.i ], [ 0, %lor.lhs.false.i ], [ 0, %cont.i228 ], [ %div76.i, %ioc_bb80.i ], [ %div76.i, %if.then78.i ]
  %n.addr.0.ph.i = phi i32 [ %n.0281, %cont72 ], [ %n.0281, %cont7.i ], [ %n.0281, %lor.lhs.false.i ], [ %n.0281, %cont.i228 ], [ %200, %ioc_bb80.i ], [ %200, %if.then78.i ]
  br label %while.cond.i235

while.cond.i235:                                  ; preds = %cont75.i, %cont60.i, %while.body.i237, %while.cond.outer.i
  %n.addr.0.i = phi i32 [ %n.addr.0.ph.i, %while.cond.outer.i ], [ %200, %while.body.i237 ], [ %200, %cont60.i ], [ %200, %cont75.i ]
  %199 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %n.addr.0.i, i32 1) nounwind, !dbg !2332
  %200 = extractvalue { i32, i1 } %199, 0, !dbg !2332
  %201 = extractvalue { i32, i1 } %199, 1, !dbg !2332
  br i1 %201, label %ioc_bb8.i, label %cont9.i, !dbg !2332

ioc_bb8.i:                                        ; preds = %while.cond.i235
  %202 = zext i32 %n.addr.0.i to i64, !dbg !2332
  tail call void @__ioc_report_sub_overflow(i32 317, i32 10, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %202, i64 1, i8 5) nounwind, !dbg !2332
  br label %cont9.i, !dbg !2332

cont9.i:                                          ; preds = %ioc_bb8.i, %while.cond.i235
  tail call void @llvm.dbg.value(metadata !{i32 %200}, i64 0, metadata !2324) nounwind, !dbg !2332
  %tobool10.i = icmp eq i32 %n.addr.0.i, 0, !dbg !2332
  br i1 %tobool10.i, label %ngx_http_limit_req_account.exit, label %while.body.i237, !dbg !2332

while.body.i237:                                  ; preds = %cont9.i
  %arrayidx.i236 = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %8, i32 %200, !dbg !2333
  %shm_zone11.i = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %arrayidx.i236, i32 0, i32 0, !dbg !2333
  %203 = load %struct.ngx_shm_zone_s** %shm_zone11.i, align 4, !dbg !2333, !tbaa !1957
  %data12.i = getelementptr inbounds %struct.ngx_shm_zone_s* %203, i32 0, i32 0, !dbg !2333
  %204 = load i8** %data12.i, align 4, !dbg !2333, !tbaa !1957
  %node.i = getelementptr inbounds i8* %204, i32 24, !dbg !2335
  %205 = bitcast i8* %node.i to %struct.ngx_http_limit_req_node_t**, !dbg !2335
  %206 = load %struct.ngx_http_limit_req_node_t** %205, align 4, !dbg !2335, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_node_t* %206}, i64 0, metadata !2336) nounwind, !dbg !2335
  %cmp13.i = icmp eq %struct.ngx_http_limit_req_node_t* %206, null, !dbg !2337
  br i1 %cmp13.i, label %while.cond.i235, label %if.end15.i, !dbg !2337

if.end15.i:                                       ; preds = %while.body.i237
  %shpool.i238 = getelementptr inbounds i8* %204, i32 4, !dbg !2338
  %207 = bitcast i8* %shpool.i238 to %struct.ngx_slab_pool_t**, !dbg !2338
  %208 = load %struct.ngx_slab_pool_t** %207, align 4, !dbg !2338, !tbaa !1957
  %mutex.i = getelementptr inbounds %struct.ngx_slab_pool_t* %208, i32 0, i32 7, !dbg !2338
  tail call void @ngx_shmtx_lock(%struct.ngx_shmtx_t* %mutex.i) nounwind, !dbg !2338
  %209 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2339, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_time_t* %209}, i64 0, metadata !2340) nounwind, !dbg !2339
  %sec.i239 = getelementptr inbounds %struct.ngx_time_t* %209, i32 0, i32 0, !dbg !2341
  %210 = load i32* %sec.i239, align 4, !dbg !2341, !tbaa !2234
  %211 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %210, i32 1000) nounwind, !dbg !2341
  %212 = extractvalue { i32, i1 } %211, 0, !dbg !2341
  %213 = extractvalue { i32, i1 } %211, 1, !dbg !2341
  br i1 %213, label %ioc_bb16.i, label %cont17.i, !dbg !2341

ioc_bb16.i:                                       ; preds = %if.end15.i
  %214 = sext i32 %210 to i64, !dbg !2341
  tail call void @__ioc_report_mul_overflow(i32 325, i32 37, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %214, i64 1000, i8 13) nounwind, !dbg !2341
  br label %cont17.i, !dbg !2341

cont17.i:                                         ; preds = %ioc_bb16.i, %if.end15.i
  %215 = icmp sgt i32 %212, -1, !dbg !2341
  br i1 %215, label %cont20.i, label %ioc_bb19.i, !dbg !2341

ioc_bb19.i:                                       ; preds = %cont17.i
  %216 = sext i32 %212 to i64, !dbg !2341
  tail call void @__ioc_report_conversion(i32 325, i32 26, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i64 %216, i8 1) nounwind, !dbg !2341
  br label %cont20.i, !dbg !2341

cont20.i:                                         ; preds = %ioc_bb19.i, %cont17.i
  %msec.i240 = getelementptr inbounds %struct.ngx_time_t* %209, i32 0, i32 1, !dbg !2341
  %217 = load i32* %msec.i240, align 4, !dbg !2341, !tbaa !1967
  %218 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %212, i32 %217) nounwind, !dbg !2341
  %219 = extractvalue { i32, i1 } %218, 0, !dbg !2341
  %220 = extractvalue { i32, i1 } %218, 1, !dbg !2341
  br i1 %220, label %ioc_bb21.i, label %cont22.i, !dbg !2341

ioc_bb21.i:                                       ; preds = %cont20.i
  %221 = zext i32 %217 to i64, !dbg !2341
  %222 = zext i32 %212 to i64, !dbg !2341
  tail call void @__ioc_report_add_overflow(i32 325, i32 45, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %222, i64 %221, i8 5) nounwind, !dbg !2341
  br label %cont22.i, !dbg !2341

cont22.i:                                         ; preds = %ioc_bb21.i, %cont20.i
  tail call void @llvm.dbg.value(metadata !{i32 %219}, i64 0, metadata !2342) nounwind, !dbg !2341
  %last.i241 = getelementptr inbounds %struct.ngx_http_limit_req_node_t* %206, i32 0, i32 4, !dbg !2343
  %223 = load i32* %last.i241, align 4, !dbg !2343, !tbaa !1967
  %224 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %219, i32 %223) nounwind, !dbg !2343
  %225 = extractvalue { i32, i1 } %224, 0, !dbg !2343
  %226 = extractvalue { i32, i1 } %224, 1, !dbg !2343
  br i1 %226, label %ioc_bb23.i, label %cont24.i, !dbg !2343

ioc_bb23.i:                                       ; preds = %cont22.i
  %227 = zext i32 %223 to i64, !dbg !2343
  %228 = zext i32 %219 to i64, !dbg !2343
  tail call void @__ioc_report_sub_overflow(i32 326, i32 33, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %228, i64 %227, i8 5) nounwind, !dbg !2343
  br label %cont24.i, !dbg !2343

cont24.i:                                         ; preds = %ioc_bb23.i, %cont22.i
  %229 = icmp sgt i32 %225, -1, !dbg !2343
  br i1 %229, label %cond.end.thread.i242, label %cond.false.i243, !dbg !2343

cond.end.thread.i242:                             ; preds = %cont24.i
  tail call void @llvm.dbg.value(metadata !{i32 %225}, i64 0, metadata !2344) nounwind, !dbg !2343
  %excess28114.i = getelementptr inbounds %struct.ngx_http_limit_req_node_t* %206, i32 0, i32 5, !dbg !2345
  %230 = load i32* %excess28114.i, align 4, !dbg !2345, !tbaa !1967
  %rate29115.i = getelementptr inbounds i8* %204, i32 8, !dbg !2345
  %231 = bitcast i8* %rate29115.i to i32*, !dbg !2345
  %232 = load i32* %231, align 4, !dbg !2345, !tbaa !1967
  br label %cont35.i, !dbg !2345

cond.false.i243:                                  ; preds = %cont24.i
  %233 = zext i32 %225 to i64, !dbg !2343
  tail call void @__ioc_report_conversion(i32 326, i32 28, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %233, i8 0) nounwind, !dbg !2343
  tail call void @llvm.dbg.value(metadata !{i32 %225}, i64 0, metadata !2344) nounwind, !dbg !2343
  %excess28.i = getelementptr inbounds %struct.ngx_http_limit_req_node_t* %206, i32 0, i32 5, !dbg !2345
  %234 = load i32* %excess28.i, align 4, !dbg !2345, !tbaa !1967
  %rate29.i = getelementptr inbounds i8* %204, i32 8, !dbg !2345
  %235 = bitcast i8* %rate29.i to i32*, !dbg !2345
  %236 = load i32* %235, align 4, !dbg !2345, !tbaa !1967
  %237 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %225) nounwind, !dbg !2345
  %238 = extractvalue { i32, i1 } %237, 0, !dbg !2345
  %239 = extractvalue { i32, i1 } %237, 1, !dbg !2345
  br i1 %239, label %ioc_bb31.i, label %cond.end.i244, !dbg !2345

ioc_bb31.i:                                       ; preds = %cond.false.i243
  %240 = sext i32 %225 to i64, !dbg !2345
  tail call void @__ioc_report_sub_overflow(i32 327, i32 59, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i64 0, i64 %240, i8 13) nounwind, !dbg !2345
  br label %cond.end.i244, !dbg !2345

cond.end.i244:                                    ; preds = %ioc_bb31.i, %cond.false.i243
  %241 = icmp sgt i32 %238, -1, !dbg !2345
  br i1 %241, label %cont35.i, label %ioc_bb34.i, !dbg !2345

ioc_bb34.i:                                       ; preds = %cond.end.i244
  %242 = sext i32 %238 to i64, !dbg !2345
  tail call void @__ioc_report_conversion(i32 327, i32 44, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %242, i8 1) nounwind, !dbg !2345
  br label %cont35.i, !dbg !2345

cont35.i:                                         ; preds = %ioc_bb34.i, %cond.end.i244, %cond.end.thread.i242
  %cond118.i = phi i32 [ %225, %cond.end.thread.i242 ], [ %238, %ioc_bb34.i ], [ %238, %cond.end.i244 ]
  %excess28116117.i = phi i32* [ %excess28114.i, %cond.end.thread.i242 ], [ %excess28.i, %ioc_bb34.i ], [ %excess28.i, %cond.end.i244 ]
  %243 = phi i32 [ %230, %cond.end.thread.i242 ], [ %234, %ioc_bb34.i ], [ %234, %cond.end.i244 ]
  %244 = phi i32* [ %231, %cond.end.thread.i242 ], [ %235, %ioc_bb34.i ], [ %235, %cond.end.i244 ]
  %245 = phi i32 [ %232, %cond.end.thread.i242 ], [ %236, %ioc_bb34.i ], [ %236, %cond.end.i244 ]
  %246 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %245, i32 %cond118.i) nounwind, !dbg !2345
  %247 = extractvalue { i32, i1 } %246, 0, !dbg !2345
  %248 = extractvalue { i32, i1 } %246, 1, !dbg !2345
  br i1 %248, label %ioc_bb36.i, label %cont40.i, !dbg !2345

ioc_bb36.i:                                       ; preds = %cont35.i
  %249 = zext i32 %cond118.i to i64, !dbg !2345
  %250 = zext i32 %245 to i64, !dbg !2345
  tail call void @__ioc_report_mul_overflow(i32 327, i32 42, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %250, i64 %249, i8 5) nounwind, !dbg !2345
  br label %cont40.i, !dbg !2345

cont40.i:                                         ; preds = %ioc_bb36.i, %cont35.i
  %div41.i = udiv i32 %247, 1000, !dbg !2345
  %251 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %243, i32 %div41.i) nounwind, !dbg !2345
  %252 = extractvalue { i32, i1 } %251, 0, !dbg !2345
  %253 = extractvalue { i32, i1 } %251, 1, !dbg !2345
  br i1 %253, label %ioc_bb42.i, label %cont45.i, !dbg !2345

ioc_bb42.i:                                       ; preds = %cont40.i
  %254 = zext i32 %div41.i to i64, !dbg !2345
  %255 = zext i32 %243 to i64, !dbg !2345
  tail call void @__ioc_report_sub_overflow(i32 327, i32 28, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %255, i64 %254, i8 5) nounwind, !dbg !2345
  br label %cont45.i, !dbg !2345

cont45.i:                                         ; preds = %ioc_bb42.i, %cont40.i
  %256 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %252, i32 1000) nounwind, !dbg !2345
  %257 = extractvalue { i32, i1 } %256, 0, !dbg !2345
  %258 = extractvalue { i32, i1 } %256, 1, !dbg !2345
  br i1 %258, label %ioc_bb46.i, label %cont47.i, !dbg !2345

ioc_bb46.i:                                       ; preds = %cont45.i
  %259 = zext i32 %252 to i64, !dbg !2345
  tail call void @__ioc_report_add_overflow(i32 327, i32 72, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %259, i64 1000, i8 5) nounwind, !dbg !2345
  br label %cont47.i, !dbg !2345

cont47.i:                                         ; preds = %ioc_bb46.i, %cont45.i
  %260 = icmp sgt i32 %257, -1, !dbg !2345
  br i1 %260, label %cont50.i, label %ioc_bb49.i, !dbg !2345

ioc_bb49.i:                                       ; preds = %cont47.i
  %261 = zext i32 %257 to i64, !dbg !2345
  tail call void @__ioc_report_conversion(i32 327, i32 14, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %261, i8 0) nounwind, !dbg !2345
  br label %cont50.i, !dbg !2345

cont50.i:                                         ; preds = %ioc_bb49.i, %cont47.i
  tail call void @llvm.dbg.value(metadata !{i32 %257}, i64 0, metadata !2326) nounwind, !dbg !2345
  %cmp51.i = icmp slt i32 %257, 0, !dbg !2346
  %..i245 = select i1 %cmp51.i, i32 0, i32 %257, !dbg !2346
  store i32 %219, i32* %last.i241, align 4, !dbg !2347, !tbaa !1967
  %262 = sext i32 %..i245 to i64, !dbg !2348
  %263 = icmp sgt i32 %..i245, -1, !dbg !2348
  br i1 %263, label %cont57.i, label %ioc_bb56.i, !dbg !2348

ioc_bb56.i:                                       ; preds = %cont50.i
  tail call void @__ioc_report_conversion(i32 332, i32 20, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %262, i8 1) nounwind, !dbg !2348
  br label %cont57.i, !dbg !2348

cont57.i:                                         ; preds = %ioc_bb56.i, %cont50.i
  store i32 %..i245, i32* %excess28116117.i, align 4, !dbg !2348, !tbaa !1967
  %count.i246 = getelementptr inbounds %struct.ngx_http_limit_req_node_t* %206, i32 0, i32 6, !dbg !2349
  %264 = load i32* %count.i246, align 4, !dbg !2349, !tbaa !1967
  %265 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %264, i32 1) nounwind, !dbg !2349
  %266 = extractvalue { i32, i1 } %265, 0, !dbg !2349
  %267 = extractvalue { i32, i1 } %265, 1, !dbg !2349
  br i1 %267, label %ioc_bb59.i, label %cont60.i, !dbg !2349

ioc_bb59.i:                                       ; preds = %cont57.i
  %268 = zext i32 %264 to i64, !dbg !2349
  tail call void @__ioc_report_sub_overflow(i32 333, i32 16, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @20, i32 0, i32 0), i64 %268, i64 1, i8 5) nounwind, !dbg !2349
  br label %cont60.i, !dbg !2349

cont60.i:                                         ; preds = %ioc_bb59.i, %cont57.i
  store i32 %266, i32* %count.i246, align 4, !dbg !2349, !tbaa !1967
  %269 = load %struct.ngx_slab_pool_t** %207, align 4, !dbg !2350, !tbaa !1957
  %mutex62.i = getelementptr inbounds %struct.ngx_slab_pool_t* %269, i32 0, i32 7, !dbg !2350
  tail call void @ngx_shmtx_unlock(%struct.ngx_shmtx_t* %mutex62.i) nounwind, !dbg !2350
  store %struct.ngx_http_limit_req_node_t* null, %struct.ngx_http_limit_req_node_t** %205, align 4, !dbg !2351, !tbaa !1957
  %nodelay65.i = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %8, i32 %200, i32 2, !dbg !2352
  %270 = load i32* %nodelay65.i, align 4, !dbg !2352, !tbaa !1967
  %tobool66.i = icmp eq i32 %270, 0, !dbg !2352
  br i1 %tobool66.i, label %if.end68.i, label %while.cond.i235, !dbg !2352

if.end68.i:                                       ; preds = %cont60.i
  %271 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %..i245, i32 1000) nounwind, !dbg !2353
  %272 = extractvalue { i32, i1 } %271, 0, !dbg !2353
  %273 = extractvalue { i32, i1 } %271, 1, !dbg !2353
  br i1 %273, label %ioc_bb69.i, label %cont70.i, !dbg !2353

ioc_bb69.i:                                       ; preds = %if.end68.i
  tail call void @__ioc_report_mul_overflow(i32 339, i32 21, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %262, i64 1000, i8 13) nounwind, !dbg !2353
  br label %cont70.i, !dbg !2353

cont70.i:                                         ; preds = %ioc_bb69.i, %if.end68.i
  %274 = icmp sgt i32 %272, -1, !dbg !2353
  br i1 %274, label %cont73.i, label %ioc_bb72.i, !dbg !2353

ioc_bb72.i:                                       ; preds = %cont70.i
  %275 = sext i32 %272 to i64, !dbg !2353
  tail call void @__ioc_report_conversion(i32 339, i32 13, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %275, i8 1) nounwind, !dbg !2353
  br label %cont73.i, !dbg !2353

cont73.i:                                         ; preds = %ioc_bb72.i, %cont70.i
  %276 = load i32* %244, align 4, !dbg !2353, !tbaa !1967
  %277 = icmp eq i32 %276, 0, !dbg !2353
  br i1 %277, label %trap.i, label %cont75.i, !dbg !2353

cont75.i:                                         ; preds = %cont73.i
  %div76.i = udiv i32 %272, %276, !dbg !2353
  tail call void @llvm.dbg.value(metadata !{i32 %div76.i}, i64 0, metadata !2354) nounwind, !dbg !2353
  %cmp77.i = icmp ugt i32 %div76.i, %max_delay.0.ph119.i, !dbg !2355
  br i1 %cmp77.i, label %if.then78.i, label %while.cond.i235, !dbg !2355

if.then78.i:                                      ; preds = %cont75.i
  tail call void @llvm.dbg.value(metadata !{i32 %div76.i}, i64 0, metadata !2331) nounwind, !dbg !2356
  br i1 %263, label %while.cond.outer.i, label %ioc_bb80.i, !dbg !2358

ioc_bb80.i:                                       ; preds = %if.then78.i
  tail call void @__ioc_report_conversion(i32 342, i32 14, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i64 %262, i8 1) nounwind, !dbg !2358
  br label %while.cond.outer.i, !dbg !2358

ngx_http_limit_req_account.exit:                  ; preds = %cont9.i
  tail call void @llvm.dbg.value(metadata !{i32 %max_delay.0.ph119.i}, i64 0, metadata !1778), !dbg !2184
  %tobool136 = icmp eq i32 %max_delay.0.ph119.i, 0, !dbg !2359
  br i1 %tobool136, label %return, label %if.end140, !dbg !2359

if.end140:                                        ; preds = %ngx_http_limit_req_account.exit
  %connection141 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2360
  %278 = load %struct.ngx_connection_s** %connection141, align 4, !dbg !2360, !tbaa !1957
  %log142 = getelementptr inbounds %struct.ngx_connection_s* %278, i32 0, i32 10, !dbg !2360
  %279 = load %struct.ngx_log_s** %log142, align 4, !dbg !2360, !tbaa !1957
  %log_level143 = getelementptr inbounds %struct.ngx_log_s* %279, i32 0, i32 0, !dbg !2360
  %280 = load i32* %log_level143, align 4, !dbg !2360, !tbaa !1967
  %delay_log_level = getelementptr inbounds i8* %6, i32 24, !dbg !2360
  %281 = bitcast i8* %delay_log_level to i32*, !dbg !2360
  %282 = load i32* %281, align 4, !dbg !2360, !tbaa !1967
  %cmp144 = icmp ult i32 %280, %282, !dbg !2360
  br i1 %cmp144, label %cont164, label %cont156, !dbg !2360

cont156:                                          ; preds = %if.end140
  %div153 = udiv i32 %197, 1000, !dbg !2194
  %rem157 = urem i32 %197, 1000, !dbg !2194
  %shm_zone158 = getelementptr inbounds %struct.ngx_http_limit_req_limit_t* %198, i32 0, i32 0, !dbg !2194
  %283 = load %struct.ngx_shm_zone_s** %shm_zone158, align 4, !dbg !2194, !tbaa !1957
  %name160 = getelementptr inbounds %struct.ngx_shm_zone_s* %283, i32 0, i32 1, i32 2, !dbg !2194
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 %282, %struct.ngx_log_s* %279, i32 0, i8* getelementptr inbounds ([50 x i8]* @.str27, i32 0, i32 0), i32 %div153, i32 %rem157, %struct.ngx_str_t* %name160) nounwind, !dbg !2194
  %.pre = load %struct.ngx_connection_s** %connection141, align 4, !dbg !2361, !tbaa !1957
  br label %cont164, !dbg !2194

cont164:                                          ; preds = %cont156, %if.end140
  %284 = phi %struct.ngx_connection_s* [ %.pre, %cont156 ], [ %278, %if.end140 ]
  %read = getelementptr inbounds %struct.ngx_connection_s* %284, i32 0, i32 1, !dbg !2361
  %285 = load %struct.ngx_event_s** %read, align 4, !dbg !2361, !tbaa !1957
  %call165 = tail call i32 @ngx_handle_read_event(%struct.ngx_event_s* %285, i32 0) nounwind, !dbg !2361
  %cmp166 = icmp eq i32 %call165, 0, !dbg !2361
  br i1 %cmp166, label %if.end169, label %return, !dbg !2361

if.end169:                                        ; preds = %cont164
  %read_event_handler = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 6, !dbg !2362
  store void (%struct.ngx_http_request_s*)* @ngx_http_test_reading, void (%struct.ngx_http_request_s*)** %read_event_handler, align 4, !dbg !2362, !tbaa !1957
  %write_event_handler = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 7, !dbg !2363
  store void (%struct.ngx_http_request_s*)* @ngx_http_limit_req_delay, void (%struct.ngx_http_request_s*)** %write_event_handler, align 4, !dbg !2363, !tbaa !1957
  %286 = load %struct.ngx_connection_s** %connection141, align 4, !dbg !2364, !tbaa !1957
  %write = getelementptr inbounds %struct.ngx_connection_s* %286, i32 0, i32 2, !dbg !2364
  %287 = load %struct.ngx_event_s** %write, align 4, !dbg !2364, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %287}, i64 0, metadata !2365) nounwind, !dbg !2366
  tail call void @llvm.dbg.value(metadata !{i32 %max_delay.0.ph119.i}, i64 0, metadata !2367) nounwind, !dbg !2366
  %288 = load volatile i32* @ngx_current_msec, align 4, !dbg !2368, !tbaa !1967
  %289 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %288, i32 %max_delay.0.ph119.i) nounwind, !dbg !2368
  %290 = extractvalue { i32, i1 } %289, 0, !dbg !2368
  %291 = extractvalue { i32, i1 } %289, 1, !dbg !2368
  br i1 %291, label %ioc_bb.i247, label %cont.i249, !dbg !2368

ioc_bb.i247:                                      ; preds = %if.end169
  %292 = zext i32 %max_delay.0.ph119.i to i64, !dbg !2368
  %293 = zext i32 %288 to i64, !dbg !2368
  tail call void @__ioc_report_add_overflow(i32 64, i32 28, i8* getelementptr inbounds ([28 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %293, i64 %292, i8 5) nounwind, !dbg !2368
  br label %cont.i249, !dbg !2368

cont.i249:                                        ; preds = %ioc_bb.i247, %if.end169
  tail call void @llvm.dbg.value(metadata !{i32 %290}, i64 0, metadata !2369) nounwind, !dbg !2368
  %294 = getelementptr %struct.ngx_event_s* %287, i32 0, i32 1, !dbg !2370
  %295 = bitcast i8* %294 to i32*, !dbg !2370
  %296 = load i32* %295, align 4, !dbg !2370
  %bf.clear.i = and i32 %296, 2048, !dbg !2370
  %tobool.i248 = icmp eq i32 %bf.clear.i, 0, !dbg !2370
  br i1 %tobool.i248, label %cont.if.end11_crit_edge.i, label %if.then.i250, !dbg !2370

cont.if.end11_crit_edge.i:                        ; preds = %cont.i249
  %timer12.pre.i = getelementptr inbounds %struct.ngx_event_s* %287, i32 0, i32 7, !dbg !2371
  br label %if.end11.i, !dbg !2370

if.then.i250:                                     ; preds = %cont.i249
  %key2.i = getelementptr inbounds %struct.ngx_event_s* %287, i32 0, i32 7, i32 0, !dbg !2372
  %297 = load i32* %key2.i, align 4, !dbg !2372, !tbaa !1967
  %298 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %290, i32 %297) nounwind, !dbg !2372
  %299 = extractvalue { i32, i1 } %298, 0, !dbg !2372
  %300 = extractvalue { i32, i1 } %298, 1, !dbg !2372
  br i1 %300, label %ioc_bb3.i251, label %cont4.i252, !dbg !2372

ioc_bb3.i251:                                     ; preds = %if.then.i250
  %301 = zext i32 %297 to i64, !dbg !2372
  %302 = zext i32 %290 to i64, !dbg !2372
  tail call void @__ioc_report_sub_overflow(i32 74, i32 38, i8* getelementptr inbounds ([28 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %302, i64 %301, i8 5) nounwind, !dbg !2372
  br label %cont4.i252, !dbg !2372

cont4.i252:                                       ; preds = %ioc_bb3.i251, %if.then.i250
  %303 = icmp sgt i32 %299, -1, !dbg !2372
  br i1 %303, label %cond.end.i255, label %cond.false.i253, !dbg !2372

cond.false.i253:                                  ; preds = %cont4.i252
  %304 = zext i32 %299 to i64, !dbg !2372
  tail call void @__ioc_report_conversion(i32 74, i32 33, i8* getelementptr inbounds ([28 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %304, i8 0) nounwind, !dbg !2372
  tail call void @llvm.dbg.value(metadata !{i32 %299}, i64 0, metadata !2374) nounwind, !dbg !2372
  %305 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %299) nounwind, !dbg !2375
  %306 = extractvalue { i32, i1 } %305, 0, !dbg !2375
  %307 = extractvalue { i32, i1 } %305, 1, !dbg !2375
  br i1 %307, label %ioc_bb7.i, label %cond.end.i255, !dbg !2375

ioc_bb7.i:                                        ; preds = %cond.false.i253
  %308 = sext i32 %299 to i64, !dbg !2375
  tail call void @__ioc_report_sub_overflow(i32 76, i32 13, i8* getelementptr inbounds ([28 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i64 0, i64 %308, i8 13) nounwind, !dbg !2375
  br label %cond.end.i255, !dbg !2375

cond.end.i255:                                    ; preds = %ioc_bb7.i, %cond.false.i253, %cont4.i252
  %cond.i = phi i32 [ %306, %ioc_bb7.i ], [ %306, %cond.false.i253 ], [ %299, %cont4.i252 ], !dbg !2375
  %cmp9.i254 = icmp slt i32 %cond.i, 300, !dbg !2375
  br i1 %cmp9.i254, label %return, label %if.end.i256, !dbg !2375

if.end.i256:                                      ; preds = %cond.end.i255
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %287}, i64 0, metadata !2376) nounwind, !dbg !2378
  %timer.i.i = getelementptr inbounds %struct.ngx_event_s* %287, i32 0, i32 7, !dbg !2379
  tail call void @ngx_rbtree_delete(%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, %struct.ngx_rbtree_node_s* %timer.i.i) nounwind, !dbg !2379
  %309 = load i32* %295, align 4, !dbg !2381
  %310 = and i32 %309, -2049, !dbg !2381
  store i32 %310, i32* %295, align 4, !dbg !2381
  br label %if.end11.i, !dbg !2382

if.end11.i:                                       ; preds = %if.end.i256, %cont.if.end11_crit_edge.i
  %timer12.pre-phi.i = phi %struct.ngx_rbtree_node_s* [ %timer12.pre.i, %cont.if.end11_crit_edge.i ], [ %timer.i.i, %if.end.i256 ], !dbg !2371
  %key13.i = getelementptr inbounds %struct.ngx_rbtree_node_s* %timer12.pre-phi.i, i32 0, i32 0, !dbg !2371
  store i32 %290, i32* %key13.i, align 4, !dbg !2371, !tbaa !1967
  tail call void @ngx_rbtree_insert(%struct.ngx_rbtree_s* @ngx_event_timer_rbtree, %struct.ngx_rbtree_node_s* %timer12.pre-phi.i) nounwind, !dbg !2383
  %311 = load i32* %295, align 4, !dbg !2384
  %312 = or i32 %311, 2048, !dbg !2384
  store i32 %312, i32* %295, align 4, !dbg !2384
  br label %return, !dbg !2385

return:                                           ; preds = %if.end, %cont109, %if.end11.i, %cond.end.i255, %cont164, %ngx_http_limit_req_account.exit, %cont64, %entry
  %retval.0 = phi i32 [ -5, %entry ], [ -5, %cont64 ], [ -5, %ngx_http_limit_req_account.exit ], [ 500, %cont164 ], [ -2, %cond.end.i255 ], [ -2, %if.end11.i ], [ 503, %cont109 ], [ -5, %if.end ]
  ret i32 %retval.0, !dbg !2386
}

declare %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s*, i32)

declare void @ngx_shmtx_lock(%struct.ngx_shmtx_t*)

declare void @ngx_shmtx_unlock(%struct.ngx_shmtx_t*)

declare void @llvm.trap() noreturn nounwind

declare i32 @ngx_handle_read_event(%struct.ngx_event_s*, i32)

declare void @ngx_http_test_reading(%struct.ngx_http_request_s*)

define internal void @ngx_http_limit_req_delay(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1804), !dbg !2387
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2388
  %0 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2388, !tbaa !1957
  %write = getelementptr inbounds %struct.ngx_connection_s* %0, i32 0, i32 2, !dbg !2388
  %1 = load %struct.ngx_event_s** %write, align 4, !dbg !2388, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_event_s* %1}, i64 0, metadata !1805), !dbg !2388
  %2 = getelementptr %struct.ngx_event_s* %1, i32 0, i32 1, !dbg !2389
  %3 = bitcast i8* %2 to i32*, !dbg !2389
  %4 = load i32* %3, align 4, !dbg !2389
  %bf.clear = and i32 %4, 1024, !dbg !2389
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2389
  br i1 %tobool, label %cont, label %cont4, !dbg !2389

cont:                                             ; preds = %entry
  %call = tail call i32 @ngx_handle_write_event(%struct.ngx_event_s* %1, i32 0) nounwind, !dbg !2390
  %cmp = icmp eq i32 %call, 0, !dbg !2390
  br i1 %cmp, label %return, label %if.then1, !dbg !2390

if.then1:                                         ; preds = %cont
  tail call void @ngx_http_finalize_request(%struct.ngx_http_request_s* %r, i32 500) nounwind, !dbg !2392
  br label %return, !dbg !2394

cont4:                                            ; preds = %entry
  %5 = and i32 %4, -1025, !dbg !2395
  store i32 %5, i32* %3, align 4, !dbg !2395
  %6 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2396, !tbaa !1957
  %read = getelementptr inbounds %struct.ngx_connection_s* %6, i32 0, i32 1, !dbg !2396
  %7 = load %struct.ngx_event_s** %read, align 4, !dbg !2396, !tbaa !1957
  %call9 = tail call i32 @ngx_handle_read_event(%struct.ngx_event_s* %7, i32 0) nounwind, !dbg !2396
  %cmp10 = icmp eq i32 %call9, 0, !dbg !2396
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !2396

if.then11:                                        ; preds = %cont4
  tail call void @ngx_http_finalize_request(%struct.ngx_http_request_s* %r, i32 500) nounwind, !dbg !2397
  br label %return, !dbg !2399

if.end12:                                         ; preds = %cont4
  %read_event_handler = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 6, !dbg !2400
  store void (%struct.ngx_http_request_s*)* @ngx_http_block_reading, void (%struct.ngx_http_request_s*)** %read_event_handler, align 4, !dbg !2400, !tbaa !1957
  %write_event_handler = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 7, !dbg !2401
  store void (%struct.ngx_http_request_s*)* @ngx_http_core_run_phases, void (%struct.ngx_http_request_s*)** %write_event_handler, align 4, !dbg !2401, !tbaa !1957
  tail call void @ngx_http_core_run_phases(%struct.ngx_http_request_s* %r) nounwind, !dbg !2402
  br label %return, !dbg !2403

return:                                           ; preds = %cont, %if.then1, %if.end12, %if.then11
  ret void, !dbg !2403
}

declare void @ngx_rbtree_insert(%struct.ngx_rbtree_s*, %struct.ngx_rbtree_node_s*)

declare void @ngx_rbtree_delete(%struct.ngx_rbtree_s*, %struct.ngx_rbtree_node_s*)

declare i32 @ngx_handle_write_event(%struct.ngx_event_s*, i32)

declare void @ngx_http_finalize_request(%struct.ngx_http_request_s*, i32)

declare void @ngx_http_block_reading(%struct.ngx_http_request_s*)

declare void @ngx_http_core_run_phases(%struct.ngx_http_request_s*)

define internal fastcc void @ngx_http_limit_req_expire(%struct.ngx_http_limit_req_ctx_t* nocapture %ctx, i32 %n) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_limit_req_ctx_t* %ctx}, i64 0, metadata !1861), !dbg !2404
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !1862), !dbg !2404
  %0 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2405, !tbaa !1957
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_time_t* %0}, i64 0, metadata !1865), !dbg !2405
  %sec = getelementptr inbounds %struct.ngx_time_t* %0, i32 0, i32 0, !dbg !2406
  %1 = load i32* %sec, align 4, !dbg !2406, !tbaa !2234
  %2 = tail call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %1, i32 1000), !dbg !2406
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !2406
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !2406
  br i1 %4, label %ioc_bb, label %cont, !dbg !2406

ioc_bb:                                           ; preds = %entry
  %5 = sext i32 %1 to i64, !dbg !2406
  tail call void @__ioc_report_mul_overflow(i32 359, i32 35, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %5, i64 1000, i8 13) nounwind, !dbg !2406
  br label %cont, !dbg !2406

cont:                                             ; preds = %entry, %ioc_bb
  %6 = icmp sgt i32 %3, -1, !dbg !2406
  br i1 %6, label %cont2, label %ioc_bb1, !dbg !2406

ioc_bb1:                                          ; preds = %cont
  %7 = sext i32 %3 to i64, !dbg !2406
  tail call void @__ioc_report_conversion(i32 359, i32 24, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i64 %7, i8 1) nounwind, !dbg !2406
  br label %cont2, !dbg !2406

cont2:                                            ; preds = %ioc_bb1, %cont
  %msec = getelementptr inbounds %struct.ngx_time_t* %0, i32 0, i32 1, !dbg !2406
  %8 = load i32* %msec, align 4, !dbg !2406, !tbaa !1967
  %9 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 %8), !dbg !2406
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !2406
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !2406
  br i1 %11, label %ioc_bb3, label %cont6.preheader, !dbg !2406

ioc_bb3:                                          ; preds = %cont2
  %12 = zext i32 %8 to i64, !dbg !2406
  %13 = zext i32 %3 to i64, !dbg !2406
  tail call void @__ioc_report_add_overflow(i32 359, i32 43, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %13, i64 %12, i8 5) nounwind, !dbg !2406
  br label %cont6.preheader, !dbg !2406

cont6.preheader:                                  ; preds = %ioc_bb3, %cont2
  %sh = getelementptr inbounds %struct.ngx_http_limit_req_ctx_t* %ctx, i32 0, i32 0, !dbg !2407
  %cmp75 = icmp ult i32 %n, 3, !dbg !2409
  br i1 %cmp75, label %while.body.lr.ph, label %while.end, !dbg !2409

while.body.lr.ph:                                 ; preds = %cont6.preheader
  %shpool = getelementptr inbounds %struct.ngx_http_limit_req_ctx_t* %ctx, i32 0, i32 1, !dbg !2410
  %14 = zext i32 %10 to i64, !dbg !2411
  %rate = getelementptr inbounds %struct.ngx_http_limit_req_ctx_t* %ctx, i32 0, i32 2, !dbg !2413
  br label %while.body, !dbg !2409

while.body:                                       ; preds = %while.body.lr.ph, %if.end48
  %n.addr.076 = phi i32 [ %n, %while.body.lr.ph ], [ %20, %if.end48 ]
  %15 = load %struct.ngx_http_limit_req_shctx_t** %sh, align 4, !dbg !2407, !tbaa !1957
  %queue = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %15, i32 0, i32 2, !dbg !2407
  %prev = getelementptr inbounds %struct.ngx_queue_s* %queue, i32 0, i32 0, !dbg !2407
  %16 = load %struct.ngx_queue_s** %prev, align 4, !dbg !2407, !tbaa !1957
  %cmp9 = icmp eq %struct.ngx_queue_s* %queue, %16, !dbg !2407
  br i1 %cmp9, label %while.end, label %if.end, !dbg !2407

if.end:                                           ; preds = %while.body
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %16}, i64 0, metadata !1867), !dbg !2414
  %add.ptr = getelementptr inbounds %struct.ngx_queue_s* %16, i32 -1, i32 1, !dbg !2415
  %count = getelementptr inbounds %struct.ngx_queue_s** %add.ptr, i32 5, !dbg !2416
  %17 = bitcast %struct.ngx_queue_s** %count to i32*, !dbg !2416
  %18 = load i32* %17, align 4, !dbg !2416, !tbaa !1967
  %tobool = icmp eq i32 %18, 0, !dbg !2416
  br i1 %tobool, label %if.end14, label %while.end, !dbg !2416

if.end14:                                         ; preds = %if.end
  %19 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.addr.076, i32 1), !dbg !2417
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !2417
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !2417
  br i1 %21, label %ioc_bb15, label %cont18, !dbg !2417

ioc_bb15:                                         ; preds = %if.end14
  %22 = zext i32 %n.addr.076 to i64, !dbg !2417
  tail call void @__ioc_report_add_overflow(i32 378, i32 10, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @11, i32 0, i32 0), i64 %22, i64 1, i8 5) nounwind, !dbg !2417
  br label %cont18, !dbg !2417

cont18:                                           ; preds = %ioc_bb15, %if.end14
  tail call void @llvm.dbg.value(metadata !{i32 %20}, i64 0, metadata !1862), !dbg !2417
  %cmp19 = icmp eq i32 %n.addr.076, 0, !dbg !2417
  br i1 %cmp19, label %if.end48, label %if.then20, !dbg !2417

if.then20:                                        ; preds = %cont18
  %last = getelementptr inbounds %struct.ngx_queue_s** %add.ptr, i32 3, !dbg !2411
  %23 = bitcast %struct.ngx_queue_s** %last to i32*, !dbg !2411
  %24 = load i32* %23, align 4, !dbg !2411, !tbaa !1967
  %25 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %10, i32 %24), !dbg !2411
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !2411
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !2411
  br i1 %27, label %ioc_bb21, label %cont22, !dbg !2411

ioc_bb21:                                         ; preds = %if.then20
  %28 = zext i32 %24 to i64, !dbg !2411
  tail call void @__ioc_report_sub_overflow(i32 379, i32 35, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %14, i64 %28, i8 5) nounwind, !dbg !2411
  br label %cont22, !dbg !2411

cont22:                                           ; preds = %if.then20, %ioc_bb21
  %29 = icmp sgt i32 %26, -1, !dbg !2411
  br i1 %29, label %cond.end, label %cond.false, !dbg !2411

cond.false:                                       ; preds = %cont22
  %30 = zext i32 %26 to i64, !dbg !2411
  tail call void @__ioc_report_conversion(i32 379, i32 30, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %30, i8 0) nounwind, !dbg !2411
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !1868), !dbg !2411
  %31 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %26), !dbg !2418
  %32 = extractvalue { i32, i1 } %31, 0, !dbg !2418
  %33 = extractvalue { i32, i1 } %31, 1, !dbg !2418
  br i1 %33, label %ioc_bb26, label %cond.end, !dbg !2418

ioc_bb26:                                         ; preds = %cond.false
  %34 = sext i32 %26 to i64, !dbg !2418
  tail call void @__ioc_report_sub_overflow(i32 380, i32 26, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @13, i32 0, i32 0), i64 0, i64 %34, i8 13) nounwind, !dbg !2418
  br label %cond.end, !dbg !2418

cond.end:                                         ; preds = %cont22, %cond.false, %ioc_bb26
  %cond = phi i32 [ %32, %ioc_bb26 ], [ %32, %cond.false ], [ %26, %cont22 ], !dbg !2418
  tail call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !1868), !dbg !2418
  %cmp28 = icmp slt i32 %cond, 60000, !dbg !2419
  br i1 %cmp28, label %while.end, label %cont34, !dbg !2419

cont34:                                           ; preds = %cond.end
  %excess31 = getelementptr inbounds %struct.ngx_queue_s** %add.ptr, i32 4, !dbg !2413
  %35 = bitcast %struct.ngx_queue_s** %excess31 to i32*, !dbg !2413
  %36 = load i32* %35, align 4, !dbg !2413, !tbaa !1967
  %37 = load i32* %rate, align 4, !dbg !2413, !tbaa !1967
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 %cond), !dbg !2413
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !2413
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !2413
  br i1 %40, label %ioc_bb35, label %cont39, !dbg !2413

ioc_bb35:                                         ; preds = %cont34
  %41 = zext i32 %cond to i64, !dbg !2413
  %42 = zext i32 %37 to i64, !dbg !2413
  tail call void @__ioc_report_mul_overflow(i32 384, i32 44, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @14, i32 0, i32 0), i64 %42, i64 %41, i8 5) nounwind, !dbg !2413
  br label %cont39, !dbg !2413

cont39:                                           ; preds = %ioc_bb35, %cont34
  %div = udiv i32 %39, 1000, !dbg !2413
  %43 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %36, i32 %div), !dbg !2413
  %44 = extractvalue { i32, i1 } %43, 0, !dbg !2413
  %45 = extractvalue { i32, i1 } %43, 1, !dbg !2413
  br i1 %45, label %ioc_bb40, label %cont41, !dbg !2413

ioc_bb40:                                         ; preds = %cont39
  %46 = zext i32 %div to i64, !dbg !2413
  %47 = zext i32 %36 to i64, !dbg !2413
  tail call void @__ioc_report_sub_overflow(i32 384, i32 30, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @15, i32 0, i32 0), i64 %47, i64 %46, i8 5) nounwind, !dbg !2413
  br label %cont41, !dbg !2413

cont41:                                           ; preds = %cont39, %ioc_bb40
  %48 = icmp sgt i32 %44, -1, !dbg !2413
  br i1 %48, label %cont44, label %ioc_bb43, !dbg !2413

ioc_bb43:                                         ; preds = %cont41
  %49 = zext i32 %44 to i64, !dbg !2413
  tail call void @__ioc_report_conversion(i32 384, i32 16, i8* getelementptr inbounds ([45 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @18, i32 0, i32 0), i64 %49, i8 0) nounwind, !dbg !2413
  br label %cont44, !dbg !2413

cont44:                                           ; preds = %ioc_bb43, %cont41
  tail call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !1863), !dbg !2413
  %cmp45 = icmp sgt i32 %44, 0, !dbg !2420
  br i1 %cmp45, label %while.end, label %if.end48, !dbg !2420

if.end48:                                         ; preds = %cont18, %cont44
  %prev49 = getelementptr inbounds %struct.ngx_queue_s* %16, i32 0, i32 0, !dbg !2421
  %50 = load %struct.ngx_queue_s** %prev49, align 4, !dbg !2421, !tbaa !1957
  %next = getelementptr inbounds %struct.ngx_queue_s* %16, i32 0, i32 1, !dbg !2421
  %51 = load %struct.ngx_queue_s** %next, align 4, !dbg !2421, !tbaa !1957
  %prev50 = getelementptr inbounds %struct.ngx_queue_s* %51, i32 0, i32 0, !dbg !2421
  store %struct.ngx_queue_s* %50, %struct.ngx_queue_s** %prev50, align 4, !dbg !2421, !tbaa !1957
  %52 = load %struct.ngx_queue_s** %next, align 4, !dbg !2422, !tbaa !1957
  %53 = load %struct.ngx_queue_s** %prev49, align 4, !dbg !2422, !tbaa !1957
  %next53 = getelementptr inbounds %struct.ngx_queue_s* %53, i32 0, i32 1, !dbg !2422
  store %struct.ngx_queue_s* %52, %struct.ngx_queue_s** %next53, align 4, !dbg !2422, !tbaa !1957
  %add.ptr5474 = getelementptr inbounds %struct.ngx_queue_s** %add.ptr, i32 -4, !dbg !2423
  %54 = bitcast %struct.ngx_queue_s** %add.ptr5474 to %struct.ngx_rbtree_node_s*, !dbg !2423
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_rbtree_node_s* %54}, i64 0, metadata !1869), !dbg !2423
  %55 = load %struct.ngx_http_limit_req_shctx_t** %sh, align 4, !dbg !2424, !tbaa !1957
  %rbtree = getelementptr inbounds %struct.ngx_http_limit_req_shctx_t* %55, i32 0, i32 0, !dbg !2424
  tail call void @ngx_rbtree_delete(%struct.ngx_rbtree_s* %rbtree, %struct.ngx_rbtree_node_s* %54) nounwind, !dbg !2424
  %56 = load %struct.ngx_slab_pool_t** %shpool, align 4, !dbg !2410, !tbaa !1957
  %57 = bitcast %struct.ngx_queue_s** %add.ptr5474 to i8*, !dbg !2410
  tail call void @ngx_slab_free_locked(%struct.ngx_slab_pool_t* %56, i8* %57) nounwind, !dbg !2410
  %cmp = icmp ult i32 %20, 3, !dbg !2409
  br i1 %cmp, label %while.body, label %while.end, !dbg !2409

while.end:                                        ; preds = %if.end48, %if.end, %cont44, %cond.end, %while.body, %cont6.preheader
  ret void, !dbg !2425
}

declare i8* @ngx_slab_alloc_locked(%struct.ngx_slab_pool_t*, i32)

declare void @ngx_slab_free_locked(%struct.ngx_slab_pool_t*, i8*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_limit_req_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1882} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !513, metadata !522, metadata !634, metadata !647, metadata !658, metadata !669, metadata !677, metadata !1768, metadata !1784, metadata !1797, metadata !1801, metadata !1807, metadata !1834, metadata !1856, metadata !1871}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req", metadata !"ngx_http_limit_req", metadata !"", metadata !6, i32 568, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_req, null, null, metadata !457, i32 569} ; [ DW_TAG_subprogram ] [line 568] [local] [def] [scope 569] [ngx_http_limit_req]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_limit_req_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
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
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !471, metadata !475, metadata !477, metadata !478, metadata !479, metadata !480, metadata !504, metadata !512}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16777784, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 568]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33555000, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 568]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50332216, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 568]
!462 = metadata !{i32 786688, metadata !463, metadata !"lrcf", metadata !6, i32 570, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lrcf] [line 570]
!463 = metadata !{i32 786443, metadata !5, i32 569, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_req_conf_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_http_limit_req_conf_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_http_limit_req_conf_t] [line 39, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 36, i64 224, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 224, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469, metadata !470}
!468 = metadata !{i32 786445, metadata !466, metadata !"limits", metadata !6, i32 37, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [limits] [line 37, size 160, align 32, offset 0] [from ngx_array_t]
!469 = metadata !{i32 786445, metadata !466, metadata !"limit_log_level", metadata !6, i32 38, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [limit_log_level] [line 38, size 32, align 32, offset 160] [from ngx_uint_t]
!470 = metadata !{i32 786445, metadata !466, metadata !"delay_log_level", metadata !6, i32 39, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [delay_log_level] [line 39, size 32, align 32, offset 192] [from ngx_uint_t]
!471 = metadata !{i32 786688, metadata !463, metadata !"burst", metadata !6, i32 571, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [burst] [line 571]
!472 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !473} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!473 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !474} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!474 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!475 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 572, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 572]
!476 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!477 = metadata !{i32 786688, metadata !463, metadata !"s", metadata !6, i32 573, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 573]
!478 = metadata !{i32 786688, metadata !463, metadata !"i", metadata !6, i32 574, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 574]
!479 = metadata !{i32 786688, metadata !463, metadata !"nodelay", metadata !6, i32 575, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nodelay] [line 575]
!480 = metadata !{i32 786688, metadata !463, metadata !"shm_zone", metadata !6, i32 576, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shm_zone] [line 576]
!481 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !482} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!482 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !6, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !483} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!483 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!484 = metadata !{metadata !485, metadata !486, metadata !496, metadata !503}
!485 = metadata !{i32 786445, metadata !483, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!486 = metadata !{i32 786445, metadata !483, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !487} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!487 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !488} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!488 = metadata !{i32 786451, null, metadata !"", metadata !489, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!489 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!490 = metadata !{metadata !491, metadata !492, metadata !493, metadata !494, metadata !495}
!491 = metadata !{i32 786445, metadata !488, metadata !"addr", metadata !489, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!492 = metadata !{i32 786445, metadata !488, metadata !"size", metadata !489, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!493 = metadata !{i32 786445, metadata !488, metadata !"name", metadata !489, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!494 = metadata !{i32 786445, metadata !488, metadata !"log", metadata !489, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!495 = metadata !{i32 786445, metadata !488, metadata !"exists", metadata !489, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!496 = metadata !{i32 786445, metadata !483, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !497} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!497 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!498 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !499} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!499 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !500, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!500 = metadata !{metadata !472, metadata !501, metadata !24}
!501 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!502 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !483} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!503 = metadata !{i32 786445, metadata !483, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!504 = metadata !{i32 786688, metadata !463, metadata !"limit", metadata !6, i32 577, metadata !505, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 577]
!505 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_req_limit_t]
!506 = metadata !{i32 786454, null, metadata !"ngx_http_limit_req_limit_t", metadata !6, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !507} ; [ DW_TAG_typedef ] [ngx_http_limit_req_limit_t] [line 35, size 0, align 0, offset 0] [from ]
!507 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 30, i64 96, i64 32, i32 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 30, size 96, align 32, offset 0] [from ]
!508 = metadata !{metadata !509, metadata !510, metadata !511}
!509 = metadata !{i32 786445, metadata !507, metadata !"shm_zone", metadata !6, i32 31, i64 32, i64 32, i64 0, i32 0, metadata !481} ; [ DW_TAG_member ] [shm_zone] [line 31, size 32, align 32, offset 0] [from ]
!510 = metadata !{i32 786445, metadata !507, metadata !"burst", metadata !6, i32 33, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [burst] [line 33, size 32, align 32, offset 32] [from ngx_uint_t]
!511 = metadata !{i32 786445, metadata !507, metadata !"nodelay", metadata !6, i32 35, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [nodelay] [line 35, size 32, align 32, offset 64] [from ngx_uint_t]
!512 = metadata !{i32 786688, metadata !463, metadata !"limits", metadata !6, i32 578, metadata !505, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limits] [line 578]
!513 = metadata !{i32 786478, i32 0, metadata !21, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !21, i32 32, metadata !514, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !516, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!514 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !515, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!515 = metadata !{metadata !472, metadata !18, metadata !34, metadata !26, metadata !30}
!516 = metadata !{metadata !517}
!517 = metadata !{metadata !518, metadata !519, metadata !520, metadata !521}
!518 = metadata !{i32 786689, metadata !513, metadata !"array", metadata !21, i32 16777248, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!519 = metadata !{i32 786689, metadata !513, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!520 = metadata !{i32 786689, metadata !513, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!521 = metadata !{i32 786689, metadata !513, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!522 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_zone", metadata !"ngx_http_limit_req_zone", metadata !"", metadata !6, i32 469, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_limit_req_zone, null, null, metadata !523, i32 470} ; [ DW_TAG_subprogram ] [line 469] [local] [def] [scope 470] [ngx_http_limit_req_zone]
!523 = metadata !{metadata !524}
!524 = metadata !{metadata !525, metadata !526, metadata !527, metadata !528, metadata !530, metadata !531, metadata !532, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539}
!525 = metadata !{i32 786689, metadata !522, metadata !"cf", metadata !6, i32 16777685, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 469]
!526 = metadata !{i32 786689, metadata !522, metadata !"cmd", metadata !6, i32 33554901, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 469]
!527 = metadata !{i32 786689, metadata !522, metadata !"conf", metadata !6, i32 50332117, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 469]
!528 = metadata !{i32 786688, metadata !529, metadata !"p", metadata !6, i32 471, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 471]
!529 = metadata !{i32 786443, metadata !522, i32 470, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!530 = metadata !{i32 786688, metadata !529, metadata !"len", metadata !6, i32 472, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 472]
!531 = metadata !{i32 786688, metadata !529, metadata !"size", metadata !6, i32 473, metadata !286, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 473]
!532 = metadata !{i32 786688, metadata !529, metadata !"value", metadata !6, i32 474, metadata !476, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 474]
!533 = metadata !{i32 786688, metadata !529, metadata !"name", metadata !6, i32 475, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 475]
!534 = metadata !{i32 786688, metadata !529, metadata !"s", metadata !6, i32 476, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 476]
!535 = metadata !{i32 786688, metadata !529, metadata !"rate", metadata !6, i32 477, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rate] [line 477]
!536 = metadata !{i32 786688, metadata !529, metadata !"scale", metadata !6, i32 478, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scale] [line 478]
!537 = metadata !{i32 786688, metadata !529, metadata !"i", metadata !6, i32 479, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 479]
!538 = metadata !{i32 786688, metadata !529, metadata !"shm_zone", metadata !6, i32 480, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shm_zone] [line 480]
!539 = metadata !{i32 786688, metadata !529, metadata !"ctx", metadata !6, i32 481, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 481]
!540 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !541} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_req_ctx_t]
!541 = metadata !{i32 786454, null, metadata !"ngx_http_limit_req_ctx_t", metadata !6, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [ngx_http_limit_req_ctx_t] [line 29, size 0, align 0, offset 0] [from ]
!542 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 22, i64 224, i64 32, i32 0, i32 0, null, metadata !543, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 22, size 224, align 32, offset 0] [from ]
!543 = metadata !{metadata !544, metadata !562, metadata !613, metadata !614, metadata !615, metadata !616}
!544 = metadata !{i32 786445, metadata !542, metadata !"sh", metadata !6, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_member ] [sh] [line 23, size 32, align 32, offset 0] [from ]
!545 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !546} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_req_shctx_t]
!546 = metadata !{i32 786454, null, metadata !"ngx_http_limit_req_shctx_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ] [ngx_http_limit_req_shctx_t] [line 21, size 0, align 0, offset 0] [from ]
!547 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 18, i64 320, i64 32, i32 0, i32 0, null, metadata !548, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 18, size 320, align 32, offset 0] [from ]
!548 = metadata !{metadata !549, metadata !560, metadata !561}
!549 = metadata !{i32 786445, metadata !547, metadata !"rbtree", metadata !6, i32 19, i64 96, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_member ] [rbtree] [line 19, size 96, align 32, offset 0] [from ngx_rbtree_t]
!550 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!551 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!552 = metadata !{metadata !553, metadata !554, metadata !555}
!553 = metadata !{i32 786445, metadata !551, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!554 = metadata !{i32 786445, metadata !551, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!555 = metadata !{i32 786445, metadata !551, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !556} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!556 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !557} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!557 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !558} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!558 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!559 = metadata !{null, metadata !266, metadata !266, metadata !266}
!560 = metadata !{i32 786445, metadata !547, metadata !"sentinel", metadata !6, i32 20, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 20, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!561 = metadata !{i32 786445, metadata !547, metadata !"queue", metadata !6, i32 21, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 21, size 64, align 32, offset 256] [from ngx_queue_t]
!562 = metadata !{i32 786445, metadata !542, metadata !"shpool", metadata !6, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !563} ; [ DW_TAG_member ] [shpool] [line 24, size 32, align 32, offset 32] [from ]
!563 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !564} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!564 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !6, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !565} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!565 = metadata !{i32 786451, null, metadata !"", metadata !566, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !567, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!566 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!567 = metadata !{metadata !568, metadata !577, metadata !578, metadata !579, metadata !587, metadata !588, metadata !589, metadata !590, metadata !609, metadata !610, metadata !611, metadata !612}
!568 = metadata !{i32 786445, metadata !565, metadata !"lock", metadata !566, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !569} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!569 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !566, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !570} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!570 = metadata !{i32 786451, null, metadata !"", metadata !571, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !572, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!571 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!572 = metadata !{metadata !573, metadata !576}
!573 = metadata !{i32 786445, metadata !570, metadata !"lock", metadata !571, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !574} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!574 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !571, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !575} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!575 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!576 = metadata !{i32 786445, metadata !570, metadata !"wait", metadata !571, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !574} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!577 = metadata !{i32 786445, metadata !565, metadata !"min_size", metadata !566, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!578 = metadata !{i32 786445, metadata !565, metadata !"min_shift", metadata !566, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!579 = metadata !{i32 786445, metadata !565, metadata !"pages", metadata !566, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !580} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!580 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !581} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!581 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !566, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !582} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!582 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !566, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !583, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!583 = metadata !{metadata !584, metadata !585, metadata !586}
!584 = metadata !{i32 786445, metadata !582, metadata !"slab", metadata !566, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!585 = metadata !{i32 786445, metadata !582, metadata !"next", metadata !566, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !580} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!586 = metadata !{i32 786445, metadata !582, metadata !"prev", metadata !566, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!587 = metadata !{i32 786445, metadata !565, metadata !"free", metadata !566, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !581} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!588 = metadata !{i32 786445, metadata !565, metadata !"start", metadata !566, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!589 = metadata !{i32 786445, metadata !565, metadata !"end", metadata !566, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!590 = metadata !{i32 786445, metadata !565, metadata !"mutex", metadata !566, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !591} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!591 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !566, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !592} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!592 = metadata !{i32 786451, null, metadata !"", metadata !571, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !593, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!593 = metadata !{metadata !594, metadata !596, metadata !597, metadata !598, metadata !608}
!594 = metadata !{i32 786445, metadata !592, metadata !"lock", metadata !571, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !595} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!595 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !574} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!596 = metadata !{i32 786445, metadata !592, metadata !"wait", metadata !571, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !595} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!597 = metadata !{i32 786445, metadata !592, metadata !"semaphore", metadata !571, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!598 = metadata !{i32 786445, metadata !592, metadata !"sem", metadata !571, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !599} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!599 = metadata !{i32 786454, null, metadata !"sem_t", metadata !571, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !600} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!600 = metadata !{i32 786455, null, metadata !"", metadata !601, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!601 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!602 = metadata !{metadata !603, metadata !607}
!603 = metadata !{i32 786445, metadata !600, metadata !"__size", metadata !601, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !604} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!604 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !605, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!605 = metadata !{metadata !606}
!606 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!607 = metadata !{i32 786445, metadata !600, metadata !"__align", metadata !601, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!608 = metadata !{i32 786445, metadata !592, metadata !"spin", metadata !571, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!609 = metadata !{i32 786445, metadata !565, metadata !"log_ctx", metadata !566, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!610 = metadata !{i32 786445, metadata !565, metadata !"zero", metadata !566, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!611 = metadata !{i32 786445, metadata !565, metadata !"data", metadata !566, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!612 = metadata !{i32 786445, metadata !565, metadata !"addr", metadata !566, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!613 = metadata !{i32 786445, metadata !542, metadata !"rate", metadata !6, i32 26, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [rate] [line 26, size 32, align 32, offset 64] [from ngx_uint_t]
!614 = metadata !{i32 786445, metadata !542, metadata !"index", metadata !6, i32 27, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [index] [line 27, size 32, align 32, offset 96] [from ngx_int_t]
!615 = metadata !{i32 786445, metadata !542, metadata !"var", metadata !6, i32 28, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [var] [line 28, size 64, align 32, offset 128] [from ngx_str_t]
!616 = metadata !{i32 786445, metadata !542, metadata !"node", metadata !6, i32 29, i64 32, i64 32, i64 192, i32 0, metadata !617} ; [ DW_TAG_member ] [node] [line 29, size 32, align 32, offset 192] [from ]
!617 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !618} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_limit_req_node_t]
!618 = metadata !{i32 786454, null, metadata !"ngx_http_limit_req_node_t", metadata !6, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !619} ; [ DW_TAG_typedef ] [ngx_http_limit_req_node_t] [line 17, size 0, align 0, offset 0] [from ]
!619 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 8, i64 224, i64 32, i32 0, i32 0, null, metadata !620, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 8, size 224, align 32, offset 0] [from ]
!620 = metadata !{metadata !621, metadata !622, metadata !623, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630}
!621 = metadata !{i32 786445, metadata !619, metadata !"color", metadata !6, i32 9, i64 8, i64 8, i64 0, i32 0, metadata !45} ; [ DW_TAG_member ] [color] [line 9, size 8, align 8, offset 0] [from u_char]
!622 = metadata !{i32 786445, metadata !619, metadata !"dummy", metadata !6, i32 10, i64 8, i64 8, i64 8, i32 0, metadata !45} ; [ DW_TAG_member ] [dummy] [line 10, size 8, align 8, offset 8] [from u_char]
!623 = metadata !{i32 786445, metadata !619, metadata !"len", metadata !6, i32 11, i64 16, i64 16, i64 16, i32 0, metadata !624} ; [ DW_TAG_member ] [len] [line 11, size 16, align 16, offset 16] [from u_short]
!624 = metadata !{i32 786454, null, metadata !"u_short", metadata !6, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !625} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!625 = metadata !{i32 786454, null, metadata !"__u_short", metadata !6, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!626 = metadata !{i32 786445, metadata !619, metadata !"queue", metadata !6, i32 12, i64 64, i64 32, i64 32, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 12, size 64, align 32, offset 32] [from ngx_queue_t]
!627 = metadata !{i32 786445, metadata !619, metadata !"last", metadata !6, i32 13, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 13, size 32, align 32, offset 96] [from ngx_msec_t]
!628 = metadata !{i32 786445, metadata !619, metadata !"excess", metadata !6, i32 15, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [excess] [line 15, size 32, align 32, offset 128] [from ngx_uint_t]
!629 = metadata !{i32 786445, metadata !619, metadata !"count", metadata !6, i32 16, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [count] [line 16, size 32, align 32, offset 160] [from ngx_uint_t]
!630 = metadata !{i32 786445, metadata !619, metadata !"data", metadata !6, i32 17, i64 8, i64 8, i64 192, i32 0, metadata !631} ; [ DW_TAG_member ] [data] [line 17, size 8, align 8, offset 192] [from ]
!631 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !632, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!632 = metadata !{metadata !633}
!633 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!634 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_init_zone", metadata !"ngx_http_limit_req_init_zone", metadata !"", metadata !6, i32 397, metadata !499, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_shm_zone_s*, i8*)* @ngx_http_limit_req_init_zone, null, null, metadata !635, i32 398} ; [ DW_TAG_subprogram ] [line 397] [local] [def] [scope 398] [ngx_http_limit_req_init_zone]
!635 = metadata !{metadata !636}
!636 = metadata !{metadata !637, metadata !638, metadata !639, metadata !641, metadata !642, metadata !643, metadata !646}
!637 = metadata !{i32 786689, metadata !634, metadata !"shm_zone", metadata !6, i32 16777613, metadata !481, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [shm_zone] [line 397]
!638 = metadata !{i32 786689, metadata !634, metadata !"data", metadata !6, i32 33554829, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 397]
!639 = metadata !{i32 786688, metadata !640, metadata !"octx", metadata !6, i32 399, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [octx] [line 399]
!640 = metadata !{i32 786443, metadata !634, i32 398, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!641 = metadata !{i32 786688, metadata !640, metadata !"len", metadata !6, i32 400, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 400]
!642 = metadata !{i32 786688, metadata !640, metadata !"ctx", metadata !6, i32 401, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 401]
!643 = metadata !{i32 786688, metadata !644, metadata !"__s1_len", metadata !6, i32 404, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 404]
!644 = metadata !{i32 786443, metadata !645, i32 404, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!645 = metadata !{i32 786443, metadata !640, i32 403, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!646 = metadata !{i32 786688, metadata !644, metadata !"__s2_len", metadata !6, i32 404, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 404]
!647 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_rbtree_insert_value", metadata !"ngx_http_limit_req_rbtree_insert_value", metadata !"", metadata !6, i32 181, metadata !558, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*)* @ngx_http_limit_req_rbtree_insert_value, null, null, metadata !648, i32 182} ; [ DW_TAG_subprogram ] [line 181] [local] [def] [scope 182] [ngx_http_limit_req_rbtree_insert_value]
!648 = metadata !{metadata !649}
!649 = metadata !{metadata !650, metadata !651, metadata !652, metadata !653, metadata !656, metadata !657}
!650 = metadata !{i32 786689, metadata !647, metadata !"temp", metadata !6, i32 16777397, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [temp] [line 181]
!651 = metadata !{i32 786689, metadata !647, metadata !"node", metadata !6, i32 33554613, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [node] [line 181]
!652 = metadata !{i32 786689, metadata !647, metadata !"sentinel", metadata !6, i32 50331829, metadata !266, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sentinel] [line 181]
!653 = metadata !{i32 786688, metadata !654, metadata !"p", metadata !6, i32 183, metadata !655, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 183]
!654 = metadata !{i32 786443, metadata !647, i32 182, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!655 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!656 = metadata !{i32 786688, metadata !654, metadata !"lrn", metadata !6, i32 184, metadata !617, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lrn] [line 184]
!657 = metadata !{i32 786688, metadata !654, metadata !"lrnt", metadata !6, i32 185, metadata !617, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lrnt] [line 185]
!658 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_merge_conf", metadata !"ngx_http_limit_req_merge_conf", metadata !"", metadata !6, i32 454, metadata !659, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_limit_req_merge_conf, null, null, metadata !661, i32 455} ; [ DW_TAG_subprogram ] [line 454] [local] [def] [scope 455] [ngx_http_limit_req_merge_conf]
!659 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!660 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!661 = metadata !{metadata !662}
!662 = metadata !{metadata !663, metadata !664, metadata !665, metadata !666, metadata !668}
!663 = metadata !{i32 786689, metadata !658, metadata !"cf", metadata !6, i32 16777670, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 454]
!664 = metadata !{i32 786689, metadata !658, metadata !"parent", metadata !6, i32 33554886, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 454]
!665 = metadata !{i32 786689, metadata !658, metadata !"child", metadata !6, i32 50332102, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 454]
!666 = metadata !{i32 786688, metadata !667, metadata !"prev", metadata !6, i32 456, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 456]
!667 = metadata !{i32 786443, metadata !658, i32 455, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!668 = metadata !{i32 786688, metadata !667, metadata !"conf", metadata !6, i32 457, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 457]
!669 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_create_conf", metadata !"ngx_http_limit_req_create_conf", metadata !"", metadata !6, i32 438, metadata !670, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_limit_req_create_conf, null, null, metadata !672, i32 439} ; [ DW_TAG_subprogram ] [line 438] [local] [def] [scope 439] [ngx_http_limit_req_create_conf]
!670 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !671, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!671 = metadata !{metadata !24, metadata !11}
!672 = metadata !{metadata !673}
!673 = metadata !{metadata !674, metadata !675}
!674 = metadata !{i32 786689, metadata !669, metadata !"cf", metadata !6, i32 16777654, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 438]
!675 = metadata !{i32 786688, metadata !676, metadata !"conf", metadata !6, i32 440, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 440]
!676 = metadata !{i32 786443, metadata !669, i32 439, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!677 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_init", metadata !"ngx_http_limit_req_init", metadata !"", metadata !6, i32 634, metadata !678, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_limit_req_init, null, null, metadata !680, i32 635} ; [ DW_TAG_subprogram ] [line 634] [local] [def] [scope 635] [ngx_http_limit_req_init]
!678 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!679 = metadata !{metadata !472, metadata !11}
!680 = metadata !{metadata !681}
!681 = metadata !{metadata !682, metadata !683, metadata !1712}
!682 = metadata !{i32 786689, metadata !677, metadata !"cf", metadata !6, i32 16777850, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 634]
!683 = metadata !{i32 786688, metadata !684, metadata !"h", metadata !6, i32 636, metadata !685, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 636]
!684 = metadata !{i32 786443, metadata !677, i32 635, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!685 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !686} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_handler_pt]
!686 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !6, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !687} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!687 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !688} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!688 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !689, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!689 = metadata !{metadata !472, metadata !690}
!690 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !691} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!691 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !692} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!692 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !693, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!693 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!694 = metadata !{metadata !695, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702, metadata !709, metadata !710, metadata !815, metadata !1235, metadata !1236, metadata !1237, metadata !1238, metadata !1274, metadata !1303, metadata !1315, metadata !1316, metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1321, metadata !1322, metadata !1323, metadata !1324, metadata !1325, metadata !1326, metadata !1327, metadata !1328, metadata !1329, metadata !1330, metadata !1338, metadata !1349, metadata !1356, metadata !1582, metadata !1583, metadata !1584, metadata !1585, metadata !1597, metadata !1598, metadata !1600, metadata !1601, metadata !1602, metadata !1603, metadata !1604, metadata !1605, metadata !1617, metadata !1622, metadata !1630, metadata !1631, metadata !1632, metadata !1633, metadata !1634, metadata !1635, metadata !1636, metadata !1637, metadata !1638, metadata !1639, metadata !1640, metadata !1641, metadata !1642, metadata !1643, metadata !1644, metadata !1645, metadata !1646, metadata !1647, metadata !1648, metadata !1649, metadata !1650, metadata !1651, metadata !1652, metadata !1653, metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1659, metadata !1660, metadata !1661, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1670, metadata !1671, metadata !1672, metadata !1673, metadata !1674, metadata !1675, metadata !1676, metadata !1677, metadata !1678, metadata !1679, metadata !1680, metadata !1681, metadata !1682, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1687, metadata !1688, metadata !1689, metadata !1693, metadata !1694, metadata !1695, metadata !1696, metadata !1697, metadata !1698, metadata !1699, metadata !1700, metadata !1701, metadata !1702, metadata !1703, metadata !1704, metadata !1705, metadata !1706, metadata !1707, metadata !1708, metadata !1709, metadata !1710, metadata !1711}
!695 = metadata !{i32 786445, metadata !692, metadata !"signature", metadata !693, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !696} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!696 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !693, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!697 = metadata !{i32 786445, metadata !692, metadata !"connection", metadata !693, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!698 = metadata !{i32 786445, metadata !692, metadata !"ctx", metadata !693, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!699 = metadata !{i32 786445, metadata !692, metadata !"main_conf", metadata !693, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!700 = metadata !{i32 786445, metadata !692, metadata !"srv_conf", metadata !693, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!701 = metadata !{i32 786445, metadata !692, metadata !"loc_conf", metadata !693, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!702 = metadata !{i32 786445, metadata !692, metadata !"read_event_handler", metadata !693, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !703} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!703 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !693, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !704} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!704 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !705} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!705 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!706 = metadata !{null, metadata !707}
!707 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !708} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!708 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !693, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !692} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!709 = metadata !{i32 786445, metadata !692, metadata !"write_event_handler", metadata !693, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !703} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!710 = metadata !{i32 786445, metadata !692, metadata !"cache", metadata !693, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !711} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!711 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !712} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!712 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !693, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !713} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!713 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !714, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !715, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!714 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!715 = metadata !{metadata !716, metadata !717, metadata !718, metadata !719, metadata !721, metadata !724, metadata !726, metadata !727, metadata !728, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !783, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814}
!716 = metadata !{i32 786445, metadata !713, metadata !"file", metadata !714, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!717 = metadata !{i32 786445, metadata !713, metadata !"keys", metadata !714, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!718 = metadata !{i32 786445, metadata !713, metadata !"crc32", metadata !714, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !696} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!719 = metadata !{i32 786445, metadata !713, metadata !"key", metadata !714, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !720} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!720 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !605, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!721 = metadata !{i32 786445, metadata !713, metadata !"uniq", metadata !714, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !722} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!722 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !714, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !723} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!723 = metadata !{i32 786454, null, metadata !"ino_t", metadata !714, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!724 = metadata !{i32 786445, metadata !713, metadata !"valid_sec", metadata !714, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !725} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!725 = metadata !{i32 786454, null, metadata !"time_t", metadata !714, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!726 = metadata !{i32 786445, metadata !713, metadata !"last_modified", metadata !714, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !725} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!727 = metadata !{i32 786445, metadata !713, metadata !"date", metadata !714, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !725} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!728 = metadata !{i32 786445, metadata !713, metadata !"header_start", metadata !714, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!729 = metadata !{i32 786445, metadata !713, metadata !"body_start", metadata !714, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!730 = metadata !{i32 786445, metadata !713, metadata !"length", metadata !714, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!731 = metadata !{i32 786445, metadata !713, metadata !"fs_size", metadata !714, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!732 = metadata !{i32 786445, metadata !713, metadata !"min_uses", metadata !714, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!733 = metadata !{i32 786445, metadata !713, metadata !"error", metadata !714, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!734 = metadata !{i32 786445, metadata !713, metadata !"valid_msec", metadata !714, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!735 = metadata !{i32 786445, metadata !713, metadata !"buf", metadata !714, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!736 = metadata !{i32 786445, metadata !713, metadata !"file_cache", metadata !714, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !737} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!737 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !738} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!738 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !714, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !739} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!739 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !714, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !740, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!740 = metadata !{metadata !741, metadata !752, metadata !753, metadata !774, metadata !775, metadata !776, metadata !777, metadata !778, metadata !779, metadata !780, metadata !781, metadata !782}
!741 = metadata !{i32 786445, metadata !739, metadata !"sh", metadata !714, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !742} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!742 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !743} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!743 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !714, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !744} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!744 = metadata !{i32 786451, null, metadata !"", metadata !714, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !745, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!745 = metadata !{metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751}
!746 = metadata !{i32 786445, metadata !744, metadata !"rbtree", metadata !714, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!747 = metadata !{i32 786445, metadata !744, metadata !"sentinel", metadata !714, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!748 = metadata !{i32 786445, metadata !744, metadata !"queue", metadata !714, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!749 = metadata !{i32 786445, metadata !744, metadata !"cold", metadata !714, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !574} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!750 = metadata !{i32 786445, metadata !744, metadata !"loading", metadata !714, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !574} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!751 = metadata !{i32 786445, metadata !744, metadata !"size", metadata !714, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!752 = metadata !{i32 786445, metadata !739, metadata !"shpool", metadata !714, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !563} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!753 = metadata !{i32 786445, metadata !739, metadata !"path", metadata !714, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !754} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!754 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !755} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!755 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !714, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !756} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!756 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !757, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!757 = metadata !{metadata !758, metadata !759, metadata !760, metadata !764, metadata !769, metadata !771, metadata !772, metadata !773}
!758 = metadata !{i32 786445, metadata !756, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!759 = metadata !{i32 786445, metadata !756, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!760 = metadata !{i32 786445, metadata !756, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !761} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!761 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !762, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!762 = metadata !{metadata !763}
!763 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!764 = metadata !{i32 786445, metadata !756, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !765} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!765 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !766} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!766 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !767} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!767 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !768, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!768 = metadata !{metadata !725, metadata !24}
!769 = metadata !{i32 786445, metadata !756, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !770} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!770 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!771 = metadata !{i32 786445, metadata !756, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!772 = metadata !{i32 786445, metadata !756, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!773 = metadata !{i32 786445, metadata !756, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!774 = metadata !{i32 786445, metadata !739, metadata !"max_size", metadata !714, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!775 = metadata !{i32 786445, metadata !739, metadata !"bsize", metadata !714, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!776 = metadata !{i32 786445, metadata !739, metadata !"inactive", metadata !714, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !725} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!777 = metadata !{i32 786445, metadata !739, metadata !"files", metadata !714, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!778 = metadata !{i32 786445, metadata !739, metadata !"loader_files", metadata !714, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!779 = metadata !{i32 786445, metadata !739, metadata !"last", metadata !714, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!780 = metadata !{i32 786445, metadata !739, metadata !"loader_sleep", metadata !714, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!781 = metadata !{i32 786445, metadata !739, metadata !"loader_threshold", metadata !714, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!782 = metadata !{i32 786445, metadata !739, metadata !"shm_zone", metadata !714, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !481} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!783 = metadata !{i32 786445, metadata !713, metadata !"node", metadata !714, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !784} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!784 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !785} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!785 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !714, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !786} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!786 = metadata !{i32 786451, null, metadata !"", metadata !714, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !787, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!787 = metadata !{metadata !788, metadata !789, metadata !790, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805}
!788 = metadata !{i32 786445, metadata !786, metadata !"node", metadata !714, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!789 = metadata !{i32 786445, metadata !786, metadata !"queue", metadata !714, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!790 = metadata !{i32 786445, metadata !786, metadata !"key", metadata !714, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !791} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!791 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !792, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!792 = metadata !{metadata !793}
!793 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!794 = metadata !{i32 786445, metadata !786, metadata !"count", metadata !714, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!795 = metadata !{i32 786445, metadata !786, metadata !"uses", metadata !714, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!796 = metadata !{i32 786445, metadata !786, metadata !"valid_msec", metadata !714, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!797 = metadata !{i32 786445, metadata !786, metadata !"error", metadata !714, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!798 = metadata !{i32 786445, metadata !786, metadata !"exists", metadata !714, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!799 = metadata !{i32 786445, metadata !786, metadata !"updating", metadata !714, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!800 = metadata !{i32 786445, metadata !786, metadata !"deleting", metadata !714, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!801 = metadata !{i32 786445, metadata !786, metadata !"uniq", metadata !714, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !722} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!802 = metadata !{i32 786445, metadata !786, metadata !"expire", metadata !714, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !725} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!803 = metadata !{i32 786445, metadata !786, metadata !"valid_sec", metadata !714, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !725} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!804 = metadata !{i32 786445, metadata !786, metadata !"body_start", metadata !714, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!805 = metadata !{i32 786445, metadata !786, metadata !"fs_size", metadata !714, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!806 = metadata !{i32 786445, metadata !713, metadata !"lock_timeout", metadata !714, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!807 = metadata !{i32 786445, metadata !713, metadata !"wait_time", metadata !714, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!808 = metadata !{i32 786445, metadata !713, metadata !"wait_event", metadata !714, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!809 = metadata !{i32 786445, metadata !713, metadata !"lock", metadata !714, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!810 = metadata !{i32 786445, metadata !713, metadata !"waiting", metadata !714, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!811 = metadata !{i32 786445, metadata !713, metadata !"updated", metadata !714, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!812 = metadata !{i32 786445, metadata !713, metadata !"updating", metadata !714, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!813 = metadata !{i32 786445, metadata !713, metadata !"exists", metadata !714, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!814 = metadata !{i32 786445, metadata !713, metadata !"temp_file", metadata !714, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!815 = metadata !{i32 786445, metadata !692, metadata !"upstream", metadata !693, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !816} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!816 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !817} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!817 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !693, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !818} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!818 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !819, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !820, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!819 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!820 = metadata !{metadata !821, metadata !828, metadata !829, metadata !865, metadata !941, metadata !942, metadata !963, metadata !972, metadata !1064, metadata !1100, metadata !1173, metadata !1174, metadata !1175, metadata !1176, metadata !1177, metadata !1178, metadata !1182, metadata !1186, metadata !1187, metadata !1191, metadata !1192, metadata !1193, metadata !1194, metadata !1195, metadata !1199, metadata !1203, metadata !1207, metadata !1208, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1226, metadata !1227, metadata !1228, metadata !1229, metadata !1230, metadata !1231, metadata !1232, metadata !1233, metadata !1234}
!821 = metadata !{i32 786445, metadata !818, metadata !"read_event_handler", metadata !819, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !822} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!822 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !819, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !823} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!823 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !824} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!824 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !825, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!825 = metadata !{null, metadata !707, metadata !826}
!826 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !827} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!827 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !819, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !818} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!828 = metadata !{i32 786445, metadata !818, metadata !"write_event_handler", metadata !819, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !822} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!829 = metadata !{i32 786445, metadata !818, metadata !"peer", metadata !819, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !830} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!830 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !819, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !831} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!831 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !832, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!832 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!833 = metadata !{metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !846, metadata !851, metadata !852, metadata !861, metadata !862, metadata !863, metadata !864}
!834 = metadata !{i32 786445, metadata !831, metadata !"connection", metadata !832, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!835 = metadata !{i32 786445, metadata !831, metadata !"sockaddr", metadata !832, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!836 = metadata !{i32 786445, metadata !831, metadata !"socklen", metadata !832, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!837 = metadata !{i32 786445, metadata !831, metadata !"name", metadata !832, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !476} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!838 = metadata !{i32 786445, metadata !831, metadata !"tries", metadata !832, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!839 = metadata !{i32 786445, metadata !831, metadata !"get", metadata !832, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !840} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!840 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !832, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !841} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!841 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !842} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!842 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !843, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!843 = metadata !{metadata !472, metadata !844, metadata !24}
!844 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !845} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!845 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !832, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !831} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!846 = metadata !{i32 786445, metadata !831, metadata !"free", metadata !832, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !847} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!847 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !832, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !848} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!848 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !849} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!849 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !850, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!850 = metadata !{null, metadata !844, metadata !24, metadata !26}
!851 = metadata !{i32 786445, metadata !831, metadata !"data", metadata !832, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!852 = metadata !{i32 786445, metadata !831, metadata !"local", metadata !832, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !853} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!853 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !854} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!854 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !832, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !855} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!855 = metadata !{i32 786451, null, metadata !"", metadata !856, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !857, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!856 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!857 = metadata !{metadata !858, metadata !859, metadata !860}
!858 = metadata !{i32 786445, metadata !855, metadata !"sockaddr", metadata !856, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!859 = metadata !{i32 786445, metadata !855, metadata !"socklen", metadata !856, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!860 = metadata !{i32 786445, metadata !855, metadata !"name", metadata !856, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!861 = metadata !{i32 786445, metadata !831, metadata !"rcvbuf", metadata !832, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!862 = metadata !{i32 786445, metadata !831, metadata !"log", metadata !832, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!863 = metadata !{i32 786445, metadata !831, metadata !"cached", metadata !832, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!864 = metadata !{i32 786445, metadata !831, metadata !"log_error", metadata !832, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!865 = metadata !{i32 786445, metadata !818, metadata !"pipe", metadata !819, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !866} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!866 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !867} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!867 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !819, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !868} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!868 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !869, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !870, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!869 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!870 = metadata !{metadata !871, metadata !872, metadata !873, metadata !874, metadata !875, metadata !877, metadata !878, metadata !879, metadata !880, metadata !887, metadata !888, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !903, metadata !904, metadata !905, metadata !906, metadata !912, metadata !913, metadata !914, metadata !915, metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921, metadata !922, metadata !923, metadata !924, metadata !925, metadata !926, metadata !940}
!871 = metadata !{i32 786445, metadata !868, metadata !"upstream", metadata !869, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!872 = metadata !{i32 786445, metadata !868, metadata !"downstream", metadata !869, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!873 = metadata !{i32 786445, metadata !868, metadata !"free_raw_bufs", metadata !869, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!874 = metadata !{i32 786445, metadata !868, metadata !"in", metadata !869, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!875 = metadata !{i32 786445, metadata !868, metadata !"last_in", metadata !869, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !876} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!876 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!877 = metadata !{i32 786445, metadata !868, metadata !"out", metadata !869, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!878 = metadata !{i32 786445, metadata !868, metadata !"free", metadata !869, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!879 = metadata !{i32 786445, metadata !868, metadata !"busy", metadata !869, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!880 = metadata !{i32 786445, metadata !868, metadata !"input_filter", metadata !869, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !881} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!881 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !869, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !882} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!882 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !883} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!883 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !884, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!884 = metadata !{metadata !472, metadata !885, metadata !62}
!885 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !886} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!886 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !869, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !868} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!887 = metadata !{i32 786445, metadata !868, metadata !"input_ctx", metadata !869, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!888 = metadata !{i32 786445, metadata !868, metadata !"output_filter", metadata !869, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !889} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!889 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !869, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !890} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!890 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !891} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!891 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !892, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!892 = metadata !{metadata !472, metadata !24, metadata !56}
!893 = metadata !{i32 786445, metadata !868, metadata !"output_ctx", metadata !869, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!894 = metadata !{i32 786445, metadata !868, metadata !"read", metadata !869, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!895 = metadata !{i32 786445, metadata !868, metadata !"cacheable", metadata !869, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!896 = metadata !{i32 786445, metadata !868, metadata !"single_buf", metadata !869, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!897 = metadata !{i32 786445, metadata !868, metadata !"free_bufs", metadata !869, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!898 = metadata !{i32 786445, metadata !868, metadata !"upstream_done", metadata !869, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!899 = metadata !{i32 786445, metadata !868, metadata !"upstream_error", metadata !869, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!900 = metadata !{i32 786445, metadata !868, metadata !"upstream_eof", metadata !869, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!901 = metadata !{i32 786445, metadata !868, metadata !"upstream_blocked", metadata !869, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!902 = metadata !{i32 786445, metadata !868, metadata !"downstream_done", metadata !869, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!903 = metadata !{i32 786445, metadata !868, metadata !"downstream_error", metadata !869, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!904 = metadata !{i32 786445, metadata !868, metadata !"cyclic_temp_file", metadata !869, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!905 = metadata !{i32 786445, metadata !868, metadata !"allocated", metadata !869, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !472} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!906 = metadata !{i32 786445, metadata !868, metadata !"bufs", metadata !869, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !907} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!907 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !869, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !908} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!908 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !909, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!909 = metadata !{metadata !910, metadata !911}
!910 = metadata !{i32 786445, metadata !908, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !472} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!911 = metadata !{i32 786445, metadata !908, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!912 = metadata !{i32 786445, metadata !868, metadata !"tag", metadata !869, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!913 = metadata !{i32 786445, metadata !868, metadata !"busy_size", metadata !869, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!914 = metadata !{i32 786445, metadata !868, metadata !"read_length", metadata !869, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!915 = metadata !{i32 786445, metadata !868, metadata !"length", metadata !869, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!916 = metadata !{i32 786445, metadata !868, metadata !"max_temp_file_size", metadata !869, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!917 = metadata !{i32 786445, metadata !868, metadata !"temp_file_write_size", metadata !869, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!918 = metadata !{i32 786445, metadata !868, metadata !"read_timeout", metadata !869, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!919 = metadata !{i32 786445, metadata !868, metadata !"send_timeout", metadata !869, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!920 = metadata !{i32 786445, metadata !868, metadata !"send_lowat", metadata !869, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!921 = metadata !{i32 786445, metadata !868, metadata !"pool", metadata !869, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!922 = metadata !{i32 786445, metadata !868, metadata !"log", metadata !869, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!923 = metadata !{i32 786445, metadata !868, metadata !"preread_bufs", metadata !869, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!924 = metadata !{i32 786445, metadata !868, metadata !"preread_size", metadata !869, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!925 = metadata !{i32 786445, metadata !868, metadata !"buf_to_file", metadata !869, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!926 = metadata !{i32 786445, metadata !868, metadata !"temp_file", metadata !869, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !927} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!927 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !928} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!928 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !869, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!929 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !930, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!930 = metadata !{metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939}
!931 = metadata !{i32 786445, metadata !929, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!932 = metadata !{i32 786445, metadata !929, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!933 = metadata !{i32 786445, metadata !929, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !754} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!934 = metadata !{i32 786445, metadata !929, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!935 = metadata !{i32 786445, metadata !929, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!936 = metadata !{i32 786445, metadata !929, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!937 = metadata !{i32 786445, metadata !929, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!938 = metadata !{i32 786445, metadata !929, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!939 = metadata !{i32 786445, metadata !929, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!940 = metadata !{i32 786445, metadata !868, metadata !"num", metadata !869, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!941 = metadata !{i32 786445, metadata !818, metadata !"request_bufs", metadata !819, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!942 = metadata !{i32 786445, metadata !818, metadata !"output", metadata !819, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !943} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!943 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !819, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !944} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!944 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !945, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!945 = metadata !{metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !962}
!946 = metadata !{i32 786445, metadata !944, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!947 = metadata !{i32 786445, metadata !944, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!948 = metadata !{i32 786445, metadata !944, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!949 = metadata !{i32 786445, metadata !944, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!950 = metadata !{i32 786445, metadata !944, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!951 = metadata !{i32 786445, metadata !944, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!952 = metadata !{i32 786445, metadata !944, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!953 = metadata !{i32 786445, metadata !944, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!954 = metadata !{i32 786445, metadata !944, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!955 = metadata !{i32 786445, metadata !944, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!956 = metadata !{i32 786445, metadata !944, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!957 = metadata !{i32 786445, metadata !944, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !472} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!958 = metadata !{i32 786445, metadata !944, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !907} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!959 = metadata !{i32 786445, metadata !944, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!960 = metadata !{i32 786445, metadata !944, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !961} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!961 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !890} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!962 = metadata !{i32 786445, metadata !944, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!963 = metadata !{i32 786445, metadata !818, metadata !"writer", metadata !819, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !964} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!964 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !819, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !965} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!965 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!966 = metadata !{metadata !967, metadata !968, metadata !969, metadata !970, metadata !971}
!967 = metadata !{i32 786445, metadata !965, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!968 = metadata !{i32 786445, metadata !965, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !876} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!969 = metadata !{i32 786445, metadata !965, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!970 = metadata !{i32 786445, metadata !965, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!971 = metadata !{i32 786445, metadata !965, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!972 = metadata !{i32 786445, metadata !818, metadata !"conf", metadata !819, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !973} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!973 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !974} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!974 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !819, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !975} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!975 = metadata !{i32 786451, null, metadata !"", metadata !819, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !976, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!976 = metadata !{metadata !977, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1017, metadata !1018, metadata !1019, metadata !1020, metadata !1021, metadata !1022, metadata !1023, metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1062, metadata !1063}
!977 = metadata !{i32 786445, metadata !975, metadata !"upstream", metadata !819, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !978} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!978 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !979} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!979 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !819, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !980} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!980 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !819, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !981, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!981 = metadata !{metadata !982, metadata !997, metadata !998, metadata !999, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1006}
!982 = metadata !{i32 786445, metadata !980, metadata !"peer", metadata !819, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !983} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!983 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !819, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !984} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!984 = metadata !{i32 786451, null, metadata !"", metadata !819, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !985, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!985 = metadata !{metadata !986, metadata !991, metadata !996}
!986 = metadata !{i32 786445, metadata !984, metadata !"init_upstream", metadata !819, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !987} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!987 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !819, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !988} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!988 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !989} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!989 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !990, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!990 = metadata !{metadata !472, metadata !11, metadata !978}
!991 = metadata !{i32 786445, metadata !984, metadata !"init", metadata !819, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !992} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!992 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !819, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !993} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!993 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !994} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!994 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !995, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!995 = metadata !{metadata !472, metadata !707, metadata !978}
!996 = metadata !{i32 786445, metadata !984, metadata !"data", metadata !819, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!997 = metadata !{i32 786445, metadata !980, metadata !"srv_conf", metadata !819, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!998 = metadata !{i32 786445, metadata !980, metadata !"servers", metadata !819, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!999 = metadata !{i32 786445, metadata !980, metadata !"flags", metadata !819, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!1000 = metadata !{i32 786445, metadata !980, metadata !"host", metadata !819, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!1001 = metadata !{i32 786445, metadata !980, metadata !"file_name", metadata !819, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!1002 = metadata !{i32 786445, metadata !980, metadata !"line", metadata !819, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!1003 = metadata !{i32 786445, metadata !980, metadata !"port", metadata !819, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !1004} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!1004 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !819, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1005} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!1005 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !819, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!1006 = metadata !{i32 786445, metadata !980, metadata !"default_port", metadata !819, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !1004} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!1007 = metadata !{i32 786445, metadata !975, metadata !"connect_timeout", metadata !819, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!1008 = metadata !{i32 786445, metadata !975, metadata !"send_timeout", metadata !819, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!1009 = metadata !{i32 786445, metadata !975, metadata !"read_timeout", metadata !819, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!1010 = metadata !{i32 786445, metadata !975, metadata !"timeout", metadata !819, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!1011 = metadata !{i32 786445, metadata !975, metadata !"send_lowat", metadata !819, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!1012 = metadata !{i32 786445, metadata !975, metadata !"buffer_size", metadata !819, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!1013 = metadata !{i32 786445, metadata !975, metadata !"busy_buffers_size", metadata !819, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!1014 = metadata !{i32 786445, metadata !975, metadata !"max_temp_file_size", metadata !819, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!1015 = metadata !{i32 786445, metadata !975, metadata !"temp_file_write_size", metadata !819, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!1016 = metadata !{i32 786445, metadata !975, metadata !"busy_buffers_size_conf", metadata !819, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!1017 = metadata !{i32 786445, metadata !975, metadata !"max_temp_file_size_conf", metadata !819, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!1018 = metadata !{i32 786445, metadata !975, metadata !"temp_file_write_size_conf", metadata !819, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!1019 = metadata !{i32 786445, metadata !975, metadata !"bufs", metadata !819, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !907} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!1020 = metadata !{i32 786445, metadata !975, metadata !"ignore_headers", metadata !819, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!1021 = metadata !{i32 786445, metadata !975, metadata !"next_upstream", metadata !819, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!1022 = metadata !{i32 786445, metadata !975, metadata !"store_access", metadata !819, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!1023 = metadata !{i32 786445, metadata !975, metadata !"buffering", metadata !819, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !1024} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!1024 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !819, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !473} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!1025 = metadata !{i32 786445, metadata !975, metadata !"pass_request_headers", metadata !819, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !1024} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!1026 = metadata !{i32 786445, metadata !975, metadata !"pass_request_body", metadata !819, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !1024} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!1027 = metadata !{i32 786445, metadata !975, metadata !"ignore_client_abort", metadata !819, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !1024} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!1028 = metadata !{i32 786445, metadata !975, metadata !"intercept_errors", metadata !819, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !1024} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!1029 = metadata !{i32 786445, metadata !975, metadata !"cyclic_temp_file", metadata !819, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !1024} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!1030 = metadata !{i32 786445, metadata !975, metadata !"temp_path", metadata !819, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !754} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!1031 = metadata !{i32 786445, metadata !975, metadata !"hide_headers_hash", metadata !819, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !1032} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!1032 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !819, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1033} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!1033 = metadata !{i32 786451, null, metadata !"", metadata !1034, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1035, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1034 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1035 = metadata !{metadata !1036, metadata !1045}
!1036 = metadata !{i32 786445, metadata !1033, metadata !"buckets", metadata !1034, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1037} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!1037 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1038} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1038 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1039} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!1039 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !1034, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !1040} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!1040 = metadata !{i32 786451, null, metadata !"", metadata !1034, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !1041, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!1041 = metadata !{metadata !1042, metadata !1043, metadata !1044}
!1042 = metadata !{i32 786445, metadata !1040, metadata !"value", metadata !1034, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!1043 = metadata !{i32 786445, metadata !1040, metadata !"len", metadata !1034, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !624} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!1044 = metadata !{i32 786445, metadata !1040, metadata !"name", metadata !1034, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !631} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!1045 = metadata !{i32 786445, metadata !1033, metadata !"size", metadata !1034, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!1046 = metadata !{i32 786445, metadata !975, metadata !"hide_headers", metadata !819, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!1047 = metadata !{i32 786445, metadata !975, metadata !"pass_headers", metadata !819, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!1048 = metadata !{i32 786445, metadata !975, metadata !"local", metadata !819, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !853} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!1049 = metadata !{i32 786445, metadata !975, metadata !"cache", metadata !819, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !481} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!1050 = metadata !{i32 786445, metadata !975, metadata !"cache_min_uses", metadata !819, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!1051 = metadata !{i32 786445, metadata !975, metadata !"cache_use_stale", metadata !819, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!1052 = metadata !{i32 786445, metadata !975, metadata !"cache_methods", metadata !819, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!1053 = metadata !{i32 786445, metadata !975, metadata !"cache_lock", metadata !819, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !1024} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!1054 = metadata !{i32 786445, metadata !975, metadata !"cache_lock_timeout", metadata !819, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!1055 = metadata !{i32 786445, metadata !975, metadata !"cache_valid", metadata !819, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!1056 = metadata !{i32 786445, metadata !975, metadata !"cache_bypass", metadata !819, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!1057 = metadata !{i32 786445, metadata !975, metadata !"no_cache", metadata !819, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!1058 = metadata !{i32 786445, metadata !975, metadata !"store_lengths", metadata !819, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!1059 = metadata !{i32 786445, metadata !975, metadata !"store_values", metadata !819, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!1060 = metadata !{i32 786445, metadata !975, metadata !"store", metadata !819, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!1061 = metadata !{i32 786445, metadata !975, metadata !"intercept_404", metadata !819, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!1062 = metadata !{i32 786445, metadata !975, metadata !"change_buffering", metadata !819, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!1063 = metadata !{i32 786445, metadata !975, metadata !"module", metadata !819, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!1064 = metadata !{i32 786445, metadata !818, metadata !"headers_in", metadata !819, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !1065} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!1065 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !819, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1066} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1066 = metadata !{i32 786451, null, metadata !"", metadata !819, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !1067, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!1067 = metadata !{metadata !1068, metadata !1069, metadata !1070, metadata !1071, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099}
!1068 = metadata !{i32 786445, metadata !1066, metadata !"headers", metadata !819, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!1069 = metadata !{i32 786445, metadata !1066, metadata !"status_n", metadata !819, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!1070 = metadata !{i32 786445, metadata !1066, metadata !"status_line", metadata !819, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!1071 = metadata !{i32 786445, metadata !1066, metadata !"status", metadata !819, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !1072} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!1072 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1073} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!1073 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !819, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1074} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!1074 = metadata !{i32 786451, null, metadata !"", metadata !1034, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !1075, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!1075 = metadata !{metadata !1076, metadata !1077, metadata !1078, metadata !1079}
!1076 = metadata !{i32 786445, metadata !1074, metadata !"hash", metadata !1034, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!1077 = metadata !{i32 786445, metadata !1074, metadata !"key", metadata !1034, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!1078 = metadata !{i32 786445, metadata !1074, metadata !"value", metadata !1034, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!1079 = metadata !{i32 786445, metadata !1074, metadata !"lowcase_key", metadata !1034, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1080 = metadata !{i32 786445, metadata !1066, metadata !"date", metadata !819, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !1072} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1081 = metadata !{i32 786445, metadata !1066, metadata !"server", metadata !819, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !1072} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1082 = metadata !{i32 786445, metadata !1066, metadata !"connection", metadata !819, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !1072} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1083 = metadata !{i32 786445, metadata !1066, metadata !"expires", metadata !819, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !1072} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1084 = metadata !{i32 786445, metadata !1066, metadata !"etag", metadata !819, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !1072} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1085 = metadata !{i32 786445, metadata !1066, metadata !"x_accel_expires", metadata !819, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1086 = metadata !{i32 786445, metadata !1066, metadata !"x_accel_redirect", metadata !819, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1087 = metadata !{i32 786445, metadata !1066, metadata !"x_accel_limit_rate", metadata !819, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1088 = metadata !{i32 786445, metadata !1066, metadata !"content_type", metadata !819, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1089 = metadata !{i32 786445, metadata !1066, metadata !"content_length", metadata !819, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1090 = metadata !{i32 786445, metadata !1066, metadata !"last_modified", metadata !819, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !1072} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1091 = metadata !{i32 786445, metadata !1066, metadata !"location", metadata !819, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !1072} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1092 = metadata !{i32 786445, metadata !1066, metadata !"accept_ranges", metadata !819, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !1072} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1093 = metadata !{i32 786445, metadata !1066, metadata !"www_authenticate", metadata !819, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !1072} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1094 = metadata !{i32 786445, metadata !1066, metadata !"transfer_encoding", metadata !819, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !1072} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1095 = metadata !{i32 786445, metadata !1066, metadata !"content_encoding", metadata !819, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1096 = metadata !{i32 786445, metadata !1066, metadata !"content_length_n", metadata !819, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1097 = metadata !{i32 786445, metadata !1066, metadata !"cache_control", metadata !819, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1098 = metadata !{i32 786445, metadata !1066, metadata !"connection_close", metadata !819, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1099 = metadata !{i32 786445, metadata !1066, metadata !"chunked", metadata !819, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1100 = metadata !{i32 786445, metadata !818, metadata !"resolved", metadata !819, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1101} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1101 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1102} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1102 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !819, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1103} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1103 = metadata !{i32 786451, null, metadata !"", metadata !819, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1104, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1104 = metadata !{metadata !1105, metadata !1106, metadata !1107, metadata !1108, metadata !1109, metadata !1112, metadata !1113, metadata !1114}
!1105 = metadata !{i32 786445, metadata !1103, metadata !"host", metadata !819, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1106 = metadata !{i32 786445, metadata !1103, metadata !"port", metadata !819, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !1004} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1107 = metadata !{i32 786445, metadata !1103, metadata !"no_port", metadata !819, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1108 = metadata !{i32 786445, metadata !1103, metadata !"naddrs", metadata !819, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1109 = metadata !{i32 786445, metadata !1103, metadata !"addrs", metadata !819, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1110} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1111} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1111 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !819, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !696} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1112 = metadata !{i32 786445, metadata !1103, metadata !"sockaddr", metadata !819, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1113 = metadata !{i32 786445, metadata !1103, metadata !"socklen", metadata !819, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1114 = metadata !{i32 786445, metadata !1103, metadata !"ctx", metadata !819, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1115} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1115 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1116} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1116 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !819, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1117} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
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
!1131 = metadata !{i32 786445, metadata !1126, metadata !"ident", metadata !1118, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1132 = metadata !{i32 786445, metadata !1126, metadata !"udp_connections", metadata !1118, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1133 = metadata !{i32 786445, metadata !1126, metadata !"last_connection", metadata !1118, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1134 = metadata !{i32 786445, metadata !1126, metadata !"name_rbtree", metadata !1118, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !550} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1135 = metadata !{i32 786445, metadata !1126, metadata !"name_sentinel", metadata !1118, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1136 = metadata !{i32 786445, metadata !1126, metadata !"addr_rbtree", metadata !1118, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !550} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1137 = metadata !{i32 786445, metadata !1126, metadata !"addr_sentinel", metadata !1118, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1138 = metadata !{i32 786445, metadata !1126, metadata !"name_resend_queue", metadata !1118, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1139 = metadata !{i32 786445, metadata !1126, metadata !"addr_resend_queue", metadata !1118, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1140 = metadata !{i32 786445, metadata !1126, metadata !"name_expire_queue", metadata !1118, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1141 = metadata !{i32 786445, metadata !1126, metadata !"addr_expire_queue", metadata !1118, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1142 = metadata !{i32 786445, metadata !1126, metadata !"resend_timeout", metadata !1118, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !725} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1143 = metadata !{i32 786445, metadata !1126, metadata !"expire", metadata !1118, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !725} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1144 = metadata !{i32 786445, metadata !1126, metadata !"valid", metadata !1118, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !725} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
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
!1156 = metadata !{i32 786445, metadata !1117, metadata !"ident", metadata !1118, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !472} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1157 = metadata !{i32 786445, metadata !1117, metadata !"state", metadata !1118, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !472} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1158 = metadata !{i32 786445, metadata !1117, metadata !"type", metadata !1118, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !472} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
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
!1173 = metadata !{i32 786445, metadata !818, metadata !"buffer", metadata !819, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1174 = metadata !{i32 786445, metadata !818, metadata !"length", metadata !819, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1175 = metadata !{i32 786445, metadata !818, metadata !"out_bufs", metadata !819, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1176 = metadata !{i32 786445, metadata !818, metadata !"busy_bufs", metadata !819, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1177 = metadata !{i32 786445, metadata !818, metadata !"free_bufs", metadata !819, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1178 = metadata !{i32 786445, metadata !818, metadata !"input_filter_init", metadata !819, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1179} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1179 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1180} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1181 = metadata !{metadata !472, metadata !24}
!1182 = metadata !{i32 786445, metadata !818, metadata !"input_filter", metadata !819, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1183} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1184} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1185 = metadata !{metadata !472, metadata !24, metadata !286}
!1186 = metadata !{i32 786445, metadata !818, metadata !"input_filter_ctx", metadata !819, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1187 = metadata !{i32 786445, metadata !818, metadata !"create_key", metadata !819, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1188} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1188 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1189} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1190 = metadata !{metadata !472, metadata !707}
!1191 = metadata !{i32 786445, metadata !818, metadata !"create_request", metadata !819, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1188} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1192 = metadata !{i32 786445, metadata !818, metadata !"reinit_request", metadata !819, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1188} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1193 = metadata !{i32 786445, metadata !818, metadata !"process_header", metadata !819, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1188} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1194 = metadata !{i32 786445, metadata !818, metadata !"abort_request", metadata !819, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !704} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1195 = metadata !{i32 786445, metadata !818, metadata !"finalize_request", metadata !819, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1196} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1196 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1197} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1198 = metadata !{null, metadata !707, metadata !472}
!1199 = metadata !{i32 786445, metadata !818, metadata !"rewrite_redirect", metadata !819, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1200} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1200 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1201} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1201 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1202, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1202 = metadata !{metadata !472, metadata !707, metadata !1072, metadata !30}
!1203 = metadata !{i32 786445, metadata !818, metadata !"rewrite_cookie", metadata !819, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1204} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1204 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1205 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1206, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1206 = metadata !{metadata !472, metadata !707, metadata !1072}
!1207 = metadata !{i32 786445, metadata !818, metadata !"timeout", metadata !819, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1208 = metadata !{i32 786445, metadata !818, metadata !"state", metadata !819, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1209} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1209 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1210} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1210 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !819, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1211} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1211 = metadata !{i32 786451, null, metadata !"", metadata !819, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1212, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1212 = metadata !{metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217, metadata !1218, metadata !1219}
!1213 = metadata !{i32 786445, metadata !1211, metadata !"bl_time", metadata !819, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1214 = metadata !{i32 786445, metadata !1211, metadata !"bl_state", metadata !819, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1215 = metadata !{i32 786445, metadata !1211, metadata !"status", metadata !819, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1216 = metadata !{i32 786445, metadata !1211, metadata !"response_sec", metadata !819, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !725} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1217 = metadata !{i32 786445, metadata !1211, metadata !"response_msec", metadata !819, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1218 = metadata !{i32 786445, metadata !1211, metadata !"response_length", metadata !819, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1219 = metadata !{i32 786445, metadata !1211, metadata !"peer", metadata !819, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !476} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1220 = metadata !{i32 786445, metadata !818, metadata !"method", metadata !819, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1221 = metadata !{i32 786445, metadata !818, metadata !"schema", metadata !819, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1222 = metadata !{i32 786445, metadata !818, metadata !"uri", metadata !819, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1223 = metadata !{i32 786445, metadata !818, metadata !"cleanup", metadata !819, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1224} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1224 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1225} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1225 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !819, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1226 = metadata !{i32 786445, metadata !818, metadata !"store", metadata !819, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1227 = metadata !{i32 786445, metadata !818, metadata !"cacheable", metadata !819, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1228 = metadata !{i32 786445, metadata !818, metadata !"accel", metadata !819, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1229 = metadata !{i32 786445, metadata !818, metadata !"ssl", metadata !819, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1230 = metadata !{i32 786445, metadata !818, metadata !"cache_status", metadata !819, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1231 = metadata !{i32 786445, metadata !818, metadata !"buffering", metadata !819, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1232 = metadata !{i32 786445, metadata !818, metadata !"keepalive", metadata !819, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1233 = metadata !{i32 786445, metadata !818, metadata !"request_sent", metadata !819, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1234 = metadata !{i32 786445, metadata !818, metadata !"header_sent", metadata !819, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1235 = metadata !{i32 786445, metadata !692, metadata !"upstream_states", metadata !693, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1236 = metadata !{i32 786445, metadata !692, metadata !"pool", metadata !693, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1237 = metadata !{i32 786445, metadata !692, metadata !"header_in", metadata !693, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1238 = metadata !{i32 786445, metadata !692, metadata !"headers_in", metadata !693, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1239} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1239 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !693, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1240} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1240 = metadata !{i32 786451, null, metadata !"", metadata !693, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1241, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1241 = metadata !{metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246, metadata !1247, metadata !1248, metadata !1249, metadata !1250, metadata !1251, metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1257, metadata !1258, metadata !1259, metadata !1260, metadata !1261, metadata !1262, metadata !1263, metadata !1264, metadata !1265, metadata !1266, metadata !1267, metadata !1268, metadata !1269, metadata !1270, metadata !1271, metadata !1272, metadata !1273}
!1242 = metadata !{i32 786445, metadata !1240, metadata !"headers", metadata !693, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1243 = metadata !{i32 786445, metadata !1240, metadata !"host", metadata !693, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !1072} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1244 = metadata !{i32 786445, metadata !1240, metadata !"connection", metadata !693, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !1072} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1245 = metadata !{i32 786445, metadata !1240, metadata !"if_modified_since", metadata !693, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !1072} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1246 = metadata !{i32 786445, metadata !1240, metadata !"if_unmodified_since", metadata !693, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !1072} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1247 = metadata !{i32 786445, metadata !1240, metadata !"user_agent", metadata !693, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !1072} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1248 = metadata !{i32 786445, metadata !1240, metadata !"referer", metadata !693, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !1072} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1249 = metadata !{i32 786445, metadata !1240, metadata !"content_length", metadata !693, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1250 = metadata !{i32 786445, metadata !1240, metadata !"content_type", metadata !693, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1251 = metadata !{i32 786445, metadata !1240, metadata !"range", metadata !693, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !1072} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1252 = metadata !{i32 786445, metadata !1240, metadata !"if_range", metadata !693, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !1072} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1253 = metadata !{i32 786445, metadata !1240, metadata !"transfer_encoding", metadata !693, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !1072} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1254 = metadata !{i32 786445, metadata !1240, metadata !"expect", metadata !693, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !1072} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1255 = metadata !{i32 786445, metadata !1240, metadata !"accept_encoding", metadata !693, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !1072} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1256 = metadata !{i32 786445, metadata !1240, metadata !"via", metadata !693, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !1072} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1257 = metadata !{i32 786445, metadata !1240, metadata !"authorization", metadata !693, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !1072} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1258 = metadata !{i32 786445, metadata !1240, metadata !"keep_alive", metadata !693, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !1072} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1259 = metadata !{i32 786445, metadata !1240, metadata !"x_forwarded_for", metadata !693, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !1072} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1260 = metadata !{i32 786445, metadata !1240, metadata !"user", metadata !693, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1261 = metadata !{i32 786445, metadata !1240, metadata !"passwd", metadata !693, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1262 = metadata !{i32 786445, metadata !1240, metadata !"cookies", metadata !693, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1263 = metadata !{i32 786445, metadata !1240, metadata !"server", metadata !693, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1264 = metadata !{i32 786445, metadata !1240, metadata !"content_length_n", metadata !693, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1265 = metadata !{i32 786445, metadata !1240, metadata !"keep_alive_n", metadata !693, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !725} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1266 = metadata !{i32 786445, metadata !1240, metadata !"connection_type", metadata !693, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1267 = metadata !{i32 786445, metadata !1240, metadata !"msie", metadata !693, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1268 = metadata !{i32 786445, metadata !1240, metadata !"msie6", metadata !693, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1269 = metadata !{i32 786445, metadata !1240, metadata !"opera", metadata !693, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1270 = metadata !{i32 786445, metadata !1240, metadata !"gecko", metadata !693, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1271 = metadata !{i32 786445, metadata !1240, metadata !"chrome", metadata !693, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1272 = metadata !{i32 786445, metadata !1240, metadata !"safari", metadata !693, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1273 = metadata !{i32 786445, metadata !1240, metadata !"konqueror", metadata !693, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1274 = metadata !{i32 786445, metadata !692, metadata !"headers_out", metadata !693, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1275} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1275 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !693, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1276} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1276 = metadata !{i32 786451, null, metadata !"", metadata !693, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1277, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1277 = metadata !{metadata !1278, metadata !1279, metadata !1280, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287, metadata !1288, metadata !1289, metadata !1290, metadata !1291, metadata !1292, metadata !1293, metadata !1294, metadata !1295, metadata !1296, metadata !1297, metadata !1298, metadata !1299, metadata !1300, metadata !1301, metadata !1302}
!1278 = metadata !{i32 786445, metadata !1276, metadata !"headers", metadata !693, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1279 = metadata !{i32 786445, metadata !1276, metadata !"status", metadata !693, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1280 = metadata !{i32 786445, metadata !1276, metadata !"status_line", metadata !693, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1281 = metadata !{i32 786445, metadata !1276, metadata !"server", metadata !693, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !1072} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1282 = metadata !{i32 786445, metadata !1276, metadata !"date", metadata !693, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !1072} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1283 = metadata !{i32 786445, metadata !1276, metadata !"content_length", metadata !693, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1284 = metadata !{i32 786445, metadata !1276, metadata !"content_encoding", metadata !693, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1285 = metadata !{i32 786445, metadata !1276, metadata !"location", metadata !693, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !1072} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1286 = metadata !{i32 786445, metadata !1276, metadata !"refresh", metadata !693, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !1072} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1287 = metadata !{i32 786445, metadata !1276, metadata !"last_modified", metadata !693, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !1072} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1288 = metadata !{i32 786445, metadata !1276, metadata !"content_range", metadata !693, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !1072} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1289 = metadata !{i32 786445, metadata !1276, metadata !"accept_ranges", metadata !693, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !1072} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1290 = metadata !{i32 786445, metadata !1276, metadata !"www_authenticate", metadata !693, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !1072} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1291 = metadata !{i32 786445, metadata !1276, metadata !"expires", metadata !693, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !1072} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1292 = metadata !{i32 786445, metadata !1276, metadata !"etag", metadata !693, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !1072} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1293 = metadata !{i32 786445, metadata !1276, metadata !"override_charset", metadata !693, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !476} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1294 = metadata !{i32 786445, metadata !1276, metadata !"content_type_len", metadata !693, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1295 = metadata !{i32 786445, metadata !1276, metadata !"content_type", metadata !693, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1296 = metadata !{i32 786445, metadata !1276, metadata !"charset", metadata !693, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1297 = metadata !{i32 786445, metadata !1276, metadata !"content_type_lowcase", metadata !693, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1298 = metadata !{i32 786445, metadata !1276, metadata !"content_type_hash", metadata !693, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1299 = metadata !{i32 786445, metadata !1276, metadata !"cache_control", metadata !693, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1300 = metadata !{i32 786445, metadata !1276, metadata !"content_length_n", metadata !693, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1301 = metadata !{i32 786445, metadata !1276, metadata !"date_time", metadata !693, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !725} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1302 = metadata !{i32 786445, metadata !1276, metadata !"last_modified_time", metadata !693, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !725} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1303 = metadata !{i32 786445, metadata !692, metadata !"request_body", metadata !693, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1304} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1304 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1305} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1305 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !693, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1306} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1306 = metadata !{i32 786451, null, metadata !"", metadata !693, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1307, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1307 = metadata !{metadata !1308, metadata !1309, metadata !1310, metadata !1311, metadata !1312, metadata !1313}
!1308 = metadata !{i32 786445, metadata !1306, metadata !"temp_file", metadata !693, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !927} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1309 = metadata !{i32 786445, metadata !1306, metadata !"bufs", metadata !693, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1310 = metadata !{i32 786445, metadata !1306, metadata !"buf", metadata !693, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1311 = metadata !{i32 786445, metadata !1306, metadata !"rest", metadata !693, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1312 = metadata !{i32 786445, metadata !1306, metadata !"to_write", metadata !693, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1313 = metadata !{i32 786445, metadata !1306, metadata !"post_handler", metadata !693, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1314} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1314 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !693, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !704} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1315 = metadata !{i32 786445, metadata !692, metadata !"lingering_time", metadata !693, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !725} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1316 = metadata !{i32 786445, metadata !692, metadata !"start_sec", metadata !693, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !725} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1317 = metadata !{i32 786445, metadata !692, metadata !"start_msec", metadata !693, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1318 = metadata !{i32 786445, metadata !692, metadata !"method", metadata !693, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1319 = metadata !{i32 786445, metadata !692, metadata !"http_version", metadata !693, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1320 = metadata !{i32 786445, metadata !692, metadata !"request_line", metadata !693, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1321 = metadata !{i32 786445, metadata !692, metadata !"uri", metadata !693, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1322 = metadata !{i32 786445, metadata !692, metadata !"args", metadata !693, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1323 = metadata !{i32 786445, metadata !692, metadata !"exten", metadata !693, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1324 = metadata !{i32 786445, metadata !692, metadata !"unparsed_uri", metadata !693, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1325 = metadata !{i32 786445, metadata !692, metadata !"method_name", metadata !693, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1326 = metadata !{i32 786445, metadata !692, metadata !"http_protocol", metadata !693, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1327 = metadata !{i32 786445, metadata !692, metadata !"out", metadata !693, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1328 = metadata !{i32 786445, metadata !692, metadata !"main", metadata !693, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !707} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1329 = metadata !{i32 786445, metadata !692, metadata !"parent", metadata !693, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !707} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1330 = metadata !{i32 786445, metadata !692, metadata !"postponed", metadata !693, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1331} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1331 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1332} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1332 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !693, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1333} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1333 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !693, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1334, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1334 = metadata !{metadata !1335, metadata !1336, metadata !1337}
!1335 = metadata !{i32 786445, metadata !1333, metadata !"request", metadata !693, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !707} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1336 = metadata !{i32 786445, metadata !1333, metadata !"out", metadata !693, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1337 = metadata !{i32 786445, metadata !1333, metadata !"next", metadata !693, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1331} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1338 = metadata !{i32 786445, metadata !692, metadata !"post_subrequest", metadata !693, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1339} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1339 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1340} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1340 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !693, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1341} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1341 = metadata !{i32 786451, null, metadata !"", metadata !693, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1342, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1342 = metadata !{metadata !1343, metadata !1348}
!1343 = metadata !{i32 786445, metadata !1341, metadata !"handler", metadata !693, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1344} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1344 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !693, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1345} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1345 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1346} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1346 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1347, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1347 = metadata !{metadata !472, metadata !707, metadata !24, metadata !472}
!1348 = metadata !{i32 786445, metadata !1341, metadata !"data", metadata !693, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1349 = metadata !{i32 786445, metadata !692, metadata !"posted_requests", metadata !693, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1350} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1350 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1351} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1351 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !693, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1352} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1352 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !693, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1353, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1353 = metadata !{metadata !1354, metadata !1355}
!1354 = metadata !{i32 786445, metadata !1352, metadata !"request", metadata !693, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !707} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1355 = metadata !{i32 786445, metadata !1352, metadata !"next", metadata !693, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1350} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1356 = metadata !{i32 786445, metadata !692, metadata !"virtual_names", metadata !693, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1357} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1357 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1358} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1358 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !693, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1359} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1359 = metadata !{i32 786451, null, metadata !"", metadata !693, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1360, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1360 = metadata !{metadata !1361, metadata !1374, metadata !1375}
!1361 = metadata !{i32 786445, metadata !1359, metadata !"names", metadata !693, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1362} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1362 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !693, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1363} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1363 = metadata !{i32 786451, null, metadata !"", metadata !1034, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1364, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1364 = metadata !{metadata !1365, metadata !1366, metadata !1373}
!1365 = metadata !{i32 786445, metadata !1363, metadata !"hash", metadata !1034, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !1032} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1366 = metadata !{i32 786445, metadata !1363, metadata !"wc_head", metadata !1034, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1367} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1367 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1368} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1368 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !1034, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1369} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1369 = metadata !{i32 786451, null, metadata !"", metadata !1034, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1370, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1370 = metadata !{metadata !1371, metadata !1372}
!1371 = metadata !{i32 786445, metadata !1369, metadata !"hash", metadata !1034, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !1032} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1372 = metadata !{i32 786445, metadata !1369, metadata !"value", metadata !1034, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1373 = metadata !{i32 786445, metadata !1363, metadata !"wc_tail", metadata !1034, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1367} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1374 = metadata !{i32 786445, metadata !1359, metadata !"nregex", metadata !693, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1375 = metadata !{i32 786445, metadata !1359, metadata !"regex", metadata !693, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1376} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1376 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1377} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1377 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !693, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1378} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1378 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1379, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1380, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1379 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1380 = metadata !{metadata !1381, metadata !1425, metadata !1581}
!1381 = metadata !{i32 786445, metadata !1378, metadata !"regex", metadata !1379, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1382} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1382 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1383} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1383 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1379, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1384} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1384 = metadata !{i32 786451, null, metadata !"", metadata !1385, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1386, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1385 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1386 = metadata !{metadata !1387, metadata !1415, metadata !1416, metadata !1423, metadata !1424}
!1387 = metadata !{i32 786445, metadata !1384, metadata !"regex", metadata !1385, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1388} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1388 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1389} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1389 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !1385, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1390} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1390 = metadata !{i32 786451, null, metadata !"", metadata !1391, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1392, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1391 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1392 = metadata !{metadata !1393, metadata !1398}
!1393 = metadata !{i32 786445, metadata !1390, metadata !"code", metadata !1391, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1394} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1394 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1395} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1395 = metadata !{i32 786454, null, metadata !"pcre", metadata !1391, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1396} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1396 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1397, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1397 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1398 = metadata !{i32 786445, metadata !1390, metadata !"extra", metadata !1391, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1399} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1399 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1400} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1400 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1391, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1401} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1401 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1397, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1402, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1402 = metadata !{metadata !1403, metadata !1404, metadata !1405, metadata !1406, metadata !1407, metadata !1410, metadata !1411, metadata !1414}
!1403 = metadata !{i32 786445, metadata !1401, metadata !"flags", metadata !1397, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1404 = metadata !{i32 786445, metadata !1401, metadata !"study_data", metadata !1397, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1405 = metadata !{i32 786445, metadata !1401, metadata !"match_limit", metadata !1397, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1406 = metadata !{i32 786445, metadata !1401, metadata !"callout_data", metadata !1397, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1407 = metadata !{i32 786445, metadata !1401, metadata !"tables", metadata !1397, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !1408} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1408 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1409} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1409 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!1410 = metadata !{i32 786445, metadata !1401, metadata !"match_limit_recursion", metadata !1397, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1411 = metadata !{i32 786445, metadata !1401, metadata !"mark", metadata !1397, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1412} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1412 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1413} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1413 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1414 = metadata !{i32 786445, metadata !1401, metadata !"executable_jit", metadata !1397, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1415 = metadata !{i32 786445, metadata !1384, metadata !"ncaptures", metadata !1385, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1416 = metadata !{i32 786445, metadata !1384, metadata !"variables", metadata !1385, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1417} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1417 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1418} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1418 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !1385, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1419} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1419 = metadata !{i32 786451, null, metadata !"", metadata !1385, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1420, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1420 = metadata !{metadata !1421, metadata !1422}
!1421 = metadata !{i32 786445, metadata !1419, metadata !"capture", metadata !1385, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1422 = metadata !{i32 786445, metadata !1419, metadata !"index", metadata !1385, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !472} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1423 = metadata !{i32 786445, metadata !1384, metadata !"nvariables", metadata !1385, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1424 = metadata !{i32 786445, metadata !1384, metadata !"name", metadata !1385, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1425 = metadata !{i32 786445, metadata !1378, metadata !"server", metadata !1379, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1426} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1426 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1427} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1427 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1379, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1428} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1428 = metadata !{i32 786451, null, metadata !"", metadata !1379, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1429, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1429 = metadata !{metadata !1430, metadata !1431, metadata !1440, metadata !1441, metadata !1442, metadata !1443, metadata !1444, metadata !1445, metadata !1446, metadata !1447, metadata !1448, metadata !1449, metadata !1450, metadata !1451}
!1430 = metadata !{i32 786445, metadata !1428, metadata !"server_names", metadata !1379, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1431 = metadata !{i32 786445, metadata !1428, metadata !"ctx", metadata !1379, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1432} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1432 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1433} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1433 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1379, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1434} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1434 = metadata !{i32 786451, null, metadata !"", metadata !1435, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1436, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1435 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1436 = metadata !{metadata !1437, metadata !1438, metadata !1439}
!1437 = metadata !{i32 786445, metadata !1434, metadata !"main_conf", metadata !1435, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1438 = metadata !{i32 786445, metadata !1434, metadata !"srv_conf", metadata !1435, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1439 = metadata !{i32 786445, metadata !1434, metadata !"loc_conf", metadata !1435, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1440 = metadata !{i32 786445, metadata !1428, metadata !"server_name", metadata !1379, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1441 = metadata !{i32 786445, metadata !1428, metadata !"connection_pool_size", metadata !1379, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1442 = metadata !{i32 786445, metadata !1428, metadata !"request_pool_size", metadata !1379, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1443 = metadata !{i32 786445, metadata !1428, metadata !"client_header_buffer_size", metadata !1379, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1444 = metadata !{i32 786445, metadata !1428, metadata !"large_client_header_buffers", metadata !1379, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !907} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1445 = metadata !{i32 786445, metadata !1428, metadata !"client_header_timeout", metadata !1379, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1446 = metadata !{i32 786445, metadata !1428, metadata !"ignore_invalid_headers", metadata !1379, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !1024} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1447 = metadata !{i32 786445, metadata !1428, metadata !"merge_slashes", metadata !1379, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !1024} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1448 = metadata !{i32 786445, metadata !1428, metadata !"underscores_in_headers", metadata !1379, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !1024} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1449 = metadata !{i32 786445, metadata !1428, metadata !"listen", metadata !1379, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1450 = metadata !{i32 786445, metadata !1428, metadata !"captures", metadata !1379, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1451 = metadata !{i32 786445, metadata !1428, metadata !"named_locations", metadata !1379, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1452} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1452 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1453} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1453 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1454} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1454 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1379, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1455} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1455 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1379, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1456, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1456 = metadata !{metadata !1457, metadata !1458, metadata !1459, metadata !1460, metadata !1461, metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466, metadata !1479, metadata !1480, metadata !1481, metadata !1482, metadata !1483, metadata !1485, metadata !1486, metadata !1487, metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1493, metadata !1494, metadata !1495, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1501, metadata !1502, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1531, metadata !1532, metadata !1533, metadata !1534, metadata !1535, metadata !1536, metadata !1537, metadata !1538, metadata !1549, metadata !1550, metadata !1560, metadata !1561, metadata !1573, metadata !1574, metadata !1575, metadata !1576, metadata !1577, metadata !1578, metadata !1579, metadata !1580}
!1457 = metadata !{i32 786445, metadata !1455, metadata !"name", metadata !1379, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1458 = metadata !{i32 786445, metadata !1455, metadata !"regex", metadata !1379, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1382} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1459 = metadata !{i32 786445, metadata !1455, metadata !"noname", metadata !1379, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1460 = metadata !{i32 786445, metadata !1455, metadata !"lmt_excpt", metadata !1379, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1461 = metadata !{i32 786445, metadata !1455, metadata !"named", metadata !1379, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1462 = metadata !{i32 786445, metadata !1455, metadata !"exact_match", metadata !1379, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1463 = metadata !{i32 786445, metadata !1455, metadata !"noregex", metadata !1379, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1464 = metadata !{i32 786445, metadata !1455, metadata !"auto_redirect", metadata !1379, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1465 = metadata !{i32 786445, metadata !1455, metadata !"gzip_disable_msie6", metadata !1379, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1466 = metadata !{i32 786445, metadata !1455, metadata !"static_locations", metadata !1379, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1467} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1467 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1468} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1468 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1379, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1469} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1469 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1379, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1470, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1470 = metadata !{metadata !1471, metadata !1472, metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1477, metadata !1478}
!1471 = metadata !{i32 786445, metadata !1469, metadata !"left", metadata !1379, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1467} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1472 = metadata !{i32 786445, metadata !1469, metadata !"right", metadata !1379, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1467} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1473 = metadata !{i32 786445, metadata !1469, metadata !"tree", metadata !1379, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1467} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1474 = metadata !{i32 786445, metadata !1469, metadata !"exact", metadata !1379, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1453} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1475 = metadata !{i32 786445, metadata !1469, metadata !"inclusive", metadata !1379, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1453} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1476 = metadata !{i32 786445, metadata !1469, metadata !"auto_redirect", metadata !1379, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1477 = metadata !{i32 786445, metadata !1469, metadata !"len", metadata !1379, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1478 = metadata !{i32 786445, metadata !1469, metadata !"name", metadata !1379, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !631} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1479 = metadata !{i32 786445, metadata !1455, metadata !"regex_locations", metadata !1379, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1452} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1480 = metadata !{i32 786445, metadata !1455, metadata !"loc_conf", metadata !1379, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1481 = metadata !{i32 786445, metadata !1455, metadata !"limit_except", metadata !1379, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !696} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1482 = metadata !{i32 786445, metadata !1455, metadata !"limit_except_loc_conf", metadata !1379, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1483 = metadata !{i32 786445, metadata !1455, metadata !"handler", metadata !1379, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1484} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1484 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1379, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1188} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1485 = metadata !{i32 786445, metadata !1455, metadata !"alias", metadata !1379, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1486 = metadata !{i32 786445, metadata !1455, metadata !"root", metadata !1379, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1487 = metadata !{i32 786445, metadata !1455, metadata !"post_action", metadata !1379, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1488 = metadata !{i32 786445, metadata !1455, metadata !"root_lengths", metadata !1379, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1489 = metadata !{i32 786445, metadata !1455, metadata !"root_values", metadata !1379, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1490 = metadata !{i32 786445, metadata !1455, metadata !"types", metadata !1379, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1491 = metadata !{i32 786445, metadata !1455, metadata !"types_hash", metadata !1379, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !1032} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1492 = metadata !{i32 786445, metadata !1455, metadata !"default_type", metadata !1379, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1493 = metadata !{i32 786445, metadata !1455, metadata !"client_max_body_size", metadata !1379, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1494 = metadata !{i32 786445, metadata !1455, metadata !"directio", metadata !1379, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1495 = metadata !{i32 786445, metadata !1455, metadata !"directio_alignment", metadata !1379, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1496 = metadata !{i32 786445, metadata !1455, metadata !"client_body_buffer_size", metadata !1379, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1497 = metadata !{i32 786445, metadata !1455, metadata !"send_lowat", metadata !1379, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1498 = metadata !{i32 786445, metadata !1455, metadata !"postpone_output", metadata !1379, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1499 = metadata !{i32 786445, metadata !1455, metadata !"limit_rate", metadata !1379, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1500 = metadata !{i32 786445, metadata !1455, metadata !"limit_rate_after", metadata !1379, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1501 = metadata !{i32 786445, metadata !1455, metadata !"sendfile_max_chunk", metadata !1379, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1502 = metadata !{i32 786445, metadata !1455, metadata !"read_ahead", metadata !1379, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1503 = metadata !{i32 786445, metadata !1455, metadata !"client_body_timeout", metadata !1379, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1504 = metadata !{i32 786445, metadata !1455, metadata !"send_timeout", metadata !1379, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1505 = metadata !{i32 786445, metadata !1455, metadata !"keepalive_timeout", metadata !1379, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1506 = metadata !{i32 786445, metadata !1455, metadata !"lingering_time", metadata !1379, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1507 = metadata !{i32 786445, metadata !1455, metadata !"lingering_timeout", metadata !1379, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1508 = metadata !{i32 786445, metadata !1455, metadata !"resolver_timeout", metadata !1379, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1509 = metadata !{i32 786445, metadata !1455, metadata !"resolver", metadata !1379, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1124} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1510 = metadata !{i32 786445, metadata !1455, metadata !"keepalive_header", metadata !1379, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !725} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1511 = metadata !{i32 786445, metadata !1455, metadata !"keepalive_requests", metadata !1379, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1512 = metadata !{i32 786445, metadata !1455, metadata !"keepalive_disable", metadata !1379, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1513 = metadata !{i32 786445, metadata !1455, metadata !"satisfy", metadata !1379, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1514 = metadata !{i32 786445, metadata !1455, metadata !"lingering_close", metadata !1379, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1515 = metadata !{i32 786445, metadata !1455, metadata !"if_modified_since", metadata !1379, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1516 = metadata !{i32 786445, metadata !1455, metadata !"max_ranges", metadata !1379, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1517 = metadata !{i32 786445, metadata !1455, metadata !"client_body_in_file_only", metadata !1379, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1518 = metadata !{i32 786445, metadata !1455, metadata !"client_body_in_single_buffer", metadata !1379, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !1024} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1519 = metadata !{i32 786445, metadata !1455, metadata !"internal", metadata !1379, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !1024} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1520 = metadata !{i32 786445, metadata !1455, metadata !"sendfile", metadata !1379, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !1024} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1521 = metadata !{i32 786445, metadata !1455, metadata !"tcp_nopush", metadata !1379, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !1024} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1522 = metadata !{i32 786445, metadata !1455, metadata !"tcp_nodelay", metadata !1379, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !1024} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1523 = metadata !{i32 786445, metadata !1455, metadata !"reset_timedout_connection", metadata !1379, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !1024} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1524 = metadata !{i32 786445, metadata !1455, metadata !"server_name_in_redirect", metadata !1379, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !1024} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1525 = metadata !{i32 786445, metadata !1455, metadata !"port_in_redirect", metadata !1379, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !1024} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1526 = metadata !{i32 786445, metadata !1455, metadata !"msie_padding", metadata !1379, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !1024} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1527 = metadata !{i32 786445, metadata !1455, metadata !"msie_refresh", metadata !1379, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !1024} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1528 = metadata !{i32 786445, metadata !1455, metadata !"log_not_found", metadata !1379, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !1024} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1529 = metadata !{i32 786445, metadata !1455, metadata !"log_subrequest", metadata !1379, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !1024} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1530 = metadata !{i32 786445, metadata !1455, metadata !"recursive_error_pages", metadata !1379, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !1024} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1531 = metadata !{i32 786445, metadata !1455, metadata !"server_tokens", metadata !1379, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !1024} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1532 = metadata !{i32 786445, metadata !1455, metadata !"chunked_transfer_encoding", metadata !1379, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !1024} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1533 = metadata !{i32 786445, metadata !1455, metadata !"gzip_vary", metadata !1379, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !1024} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1534 = metadata !{i32 786445, metadata !1455, metadata !"gzip_http_version", metadata !1379, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1535 = metadata !{i32 786445, metadata !1455, metadata !"gzip_proxied", metadata !1379, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1536 = metadata !{i32 786445, metadata !1455, metadata !"gzip_disable", metadata !1379, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1537 = metadata !{i32 786445, metadata !1455, metadata !"disable_symlinks", metadata !1379, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1538 = metadata !{i32 786445, metadata !1455, metadata !"disable_symlinks_from", metadata !1379, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1539} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1539 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1540} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1540 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1379, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1541} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1541 = metadata !{i32 786451, null, metadata !"", metadata !1542, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1543, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1542 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1543 = metadata !{metadata !1544, metadata !1545, metadata !1547, metadata !1548}
!1544 = metadata !{i32 786445, metadata !1541, metadata !"value", metadata !1542, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1545 = metadata !{i32 786445, metadata !1541, metadata !"flushes", metadata !1542, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1546} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1546 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1547 = metadata !{i32 786445, metadata !1541, metadata !"lengths", metadata !1542, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1548 = metadata !{i32 786445, metadata !1541, metadata !"values", metadata !1542, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1549 = metadata !{i32 786445, metadata !1455, metadata !"error_pages", metadata !1379, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1550 = metadata !{i32 786445, metadata !1455, metadata !"try_files", metadata !1379, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1551} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1551 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1552} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1552 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1379, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1553} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1553 = metadata !{i32 786451, null, metadata !"", metadata !1379, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1554, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1554 = metadata !{metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559}
!1555 = metadata !{i32 786445, metadata !1553, metadata !"lengths", metadata !1379, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1556 = metadata !{i32 786445, metadata !1553, metadata !"values", metadata !1379, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1557 = metadata !{i32 786445, metadata !1553, metadata !"name", metadata !1379, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1558 = metadata !{i32 786445, metadata !1553, metadata !"code", metadata !1379, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1559 = metadata !{i32 786445, metadata !1553, metadata !"test_dir", metadata !1379, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1560 = metadata !{i32 786445, metadata !1455, metadata !"client_body_temp_path", metadata !1379, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !754} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1561 = metadata !{i32 786445, metadata !1455, metadata !"open_file_cache", metadata !1379, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1562} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1562 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1563} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1563 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1379, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1564} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1564 = metadata !{i32 786451, null, metadata !"", metadata !1565, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1566, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1565 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1566 = metadata !{metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572}
!1567 = metadata !{i32 786445, metadata !1564, metadata !"rbtree", metadata !1565, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1568 = metadata !{i32 786445, metadata !1564, metadata !"sentinel", metadata !1565, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1569 = metadata !{i32 786445, metadata !1564, metadata !"expire_queue", metadata !1565, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1570 = metadata !{i32 786445, metadata !1564, metadata !"current", metadata !1565, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1571 = metadata !{i32 786445, metadata !1564, metadata !"max", metadata !1565, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1572 = metadata !{i32 786445, metadata !1564, metadata !"inactive", metadata !1565, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !725} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1573 = metadata !{i32 786445, metadata !1455, metadata !"open_file_cache_valid", metadata !1379, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !725} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1574 = metadata !{i32 786445, metadata !1455, metadata !"open_file_cache_min_uses", metadata !1379, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1575 = metadata !{i32 786445, metadata !1455, metadata !"open_file_cache_errors", metadata !1379, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !1024} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1576 = metadata !{i32 786445, metadata !1455, metadata !"open_file_cache_events", metadata !1379, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !1024} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1577 = metadata !{i32 786445, metadata !1455, metadata !"error_log", metadata !1379, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1578 = metadata !{i32 786445, metadata !1455, metadata !"types_hash_max_size", metadata !1379, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1579 = metadata !{i32 786445, metadata !1455, metadata !"types_hash_bucket_size", metadata !1379, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1580 = metadata !{i32 786445, metadata !1455, metadata !"locations", metadata !1379, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1581 = metadata !{i32 786445, metadata !1378, metadata !"name", metadata !1379, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1582 = metadata !{i32 786445, metadata !692, metadata !"phase_handler", metadata !693, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !472} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1583 = metadata !{i32 786445, metadata !692, metadata !"content_handler", metadata !693, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1484} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1584 = metadata !{i32 786445, metadata !692, metadata !"access_code", metadata !693, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1585 = metadata !{i32 786445, metadata !692, metadata !"variables", metadata !693, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1586} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1586 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1587} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1587 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !693, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1588} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1588 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !693, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1589} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1589 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1590, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1590 = metadata !{metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596}
!1591 = metadata !{i32 786445, metadata !1589, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1592 = metadata !{i32 786445, metadata !1589, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1593 = metadata !{i32 786445, metadata !1589, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1594 = metadata !{i32 786445, metadata !1589, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1595 = metadata !{i32 786445, metadata !1589, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1596 = metadata !{i32 786445, metadata !1589, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1597 = metadata !{i32 786445, metadata !692, metadata !"ncaptures", metadata !693, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1598 = metadata !{i32 786445, metadata !692, metadata !"captures", metadata !693, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1599} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1599 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1600 = metadata !{i32 786445, metadata !692, metadata !"captures_data", metadata !693, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1601 = metadata !{i32 786445, metadata !692, metadata !"limit_rate", metadata !693, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1602 = metadata !{i32 786445, metadata !692, metadata !"header_size", metadata !693, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1603 = metadata !{i32 786445, metadata !692, metadata !"request_length", metadata !693, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1604 = metadata !{i32 786445, metadata !692, metadata !"err_status", metadata !693, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1605 = metadata !{i32 786445, metadata !692, metadata !"http_connection", metadata !693, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1606} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1606 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1607} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1607 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !693, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1608} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1608 = metadata !{i32 786451, null, metadata !"", metadata !693, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1609, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1609 = metadata !{metadata !1610, metadata !1611, metadata !1613, metadata !1614, metadata !1615, metadata !1616}
!1610 = metadata !{i32 786445, metadata !1608, metadata !"request", metadata !693, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !707} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1611 = metadata !{i32 786445, metadata !1608, metadata !"busy", metadata !693, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1612} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1612 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1613 = metadata !{i32 786445, metadata !1608, metadata !"nbusy", metadata !693, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !472} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1614 = metadata !{i32 786445, metadata !1608, metadata !"free", metadata !693, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1612} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1615 = metadata !{i32 786445, metadata !1608, metadata !"nfree", metadata !693, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !472} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1616 = metadata !{i32 786445, metadata !1608, metadata !"pipeline", metadata !693, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1617 = metadata !{i32 786445, metadata !692, metadata !"log_handler", metadata !693, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1618} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1618 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !693, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1619} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1619 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1620} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1620 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1621, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1621 = metadata !{metadata !44, metadata !707, metadata !707, metadata !44, metadata !30}
!1622 = metadata !{i32 786445, metadata !692, metadata !"cleanup", metadata !693, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1623} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1623 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1624} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1624 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !693, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1625} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1625 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !693, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1626, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1626 = metadata !{metadata !1627, metadata !1628, metadata !1629}
!1627 = metadata !{i32 786445, metadata !1625, metadata !"handler", metadata !693, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1225} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1628 = metadata !{i32 786445, metadata !1625, metadata !"data", metadata !693, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1629 = metadata !{i32 786445, metadata !1625, metadata !"next", metadata !693, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1623} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1630 = metadata !{i32 786445, metadata !692, metadata !"subrequests", metadata !693, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1631 = metadata !{i32 786445, metadata !692, metadata !"count", metadata !693, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1632 = metadata !{i32 786445, metadata !692, metadata !"blocked", metadata !693, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1633 = metadata !{i32 786445, metadata !692, metadata !"aio", metadata !693, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1634 = metadata !{i32 786445, metadata !692, metadata !"http_state", metadata !693, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1635 = metadata !{i32 786445, metadata !692, metadata !"complex_uri", metadata !693, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1636 = metadata !{i32 786445, metadata !692, metadata !"quoted_uri", metadata !693, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1637 = metadata !{i32 786445, metadata !692, metadata !"plus_in_uri", metadata !693, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1638 = metadata !{i32 786445, metadata !692, metadata !"space_in_uri", metadata !693, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1639 = metadata !{i32 786445, metadata !692, metadata !"invalid_header", metadata !693, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1640 = metadata !{i32 786445, metadata !692, metadata !"add_uri_to_alias", metadata !693, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1641 = metadata !{i32 786445, metadata !692, metadata !"valid_location", metadata !693, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1642 = metadata !{i32 786445, metadata !692, metadata !"valid_unparsed_uri", metadata !693, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1643 = metadata !{i32 786445, metadata !692, metadata !"uri_changed", metadata !693, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1644 = metadata !{i32 786445, metadata !692, metadata !"uri_changes", metadata !693, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1645 = metadata !{i32 786445, metadata !692, metadata !"request_body_in_single_buf", metadata !693, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1646 = metadata !{i32 786445, metadata !692, metadata !"request_body_in_file_only", metadata !693, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1647 = metadata !{i32 786445, metadata !692, metadata !"request_body_in_persistent_file", metadata !693, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1648 = metadata !{i32 786445, metadata !692, metadata !"request_body_in_clean_file", metadata !693, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1649 = metadata !{i32 786445, metadata !692, metadata !"request_body_file_group_access", metadata !693, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1650 = metadata !{i32 786445, metadata !692, metadata !"request_body_file_log_level", metadata !693, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1651 = metadata !{i32 786445, metadata !692, metadata !"subrequest_in_memory", metadata !693, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1652 = metadata !{i32 786445, metadata !692, metadata !"waited", metadata !693, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1653 = metadata !{i32 786445, metadata !692, metadata !"cached", metadata !693, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1654 = metadata !{i32 786445, metadata !692, metadata !"gzip_tested", metadata !693, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1655 = metadata !{i32 786445, metadata !692, metadata !"gzip_ok", metadata !693, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1656 = metadata !{i32 786445, metadata !692, metadata !"gzip_vary", metadata !693, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1657 = metadata !{i32 786445, metadata !692, metadata !"proxy", metadata !693, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1658 = metadata !{i32 786445, metadata !692, metadata !"bypass_cache", metadata !693, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1659 = metadata !{i32 786445, metadata !692, metadata !"no_cache", metadata !693, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1660 = metadata !{i32 786445, metadata !692, metadata !"limit_conn_set", metadata !693, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1661 = metadata !{i32 786445, metadata !692, metadata !"limit_req_set", metadata !693, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1662 = metadata !{i32 786445, metadata !692, metadata !"pipeline", metadata !693, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1663 = metadata !{i32 786445, metadata !692, metadata !"plain_http", metadata !693, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1664 = metadata !{i32 786445, metadata !692, metadata !"chunked", metadata !693, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1665 = metadata !{i32 786445, metadata !692, metadata !"header_only", metadata !693, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1666 = metadata !{i32 786445, metadata !692, metadata !"keepalive", metadata !693, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1667 = metadata !{i32 786445, metadata !692, metadata !"lingering_close", metadata !693, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1668 = metadata !{i32 786445, metadata !692, metadata !"discard_body", metadata !693, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1669 = metadata !{i32 786445, metadata !692, metadata !"internal", metadata !693, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1670 = metadata !{i32 786445, metadata !692, metadata !"error_page", metadata !693, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1671 = metadata !{i32 786445, metadata !692, metadata !"ignore_content_encoding", metadata !693, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1672 = metadata !{i32 786445, metadata !692, metadata !"filter_finalize", metadata !693, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1673 = metadata !{i32 786445, metadata !692, metadata !"post_action", metadata !693, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1674 = metadata !{i32 786445, metadata !692, metadata !"request_complete", metadata !693, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1675 = metadata !{i32 786445, metadata !692, metadata !"request_output", metadata !693, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1676 = metadata !{i32 786445, metadata !692, metadata !"header_sent", metadata !693, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1677 = metadata !{i32 786445, metadata !692, metadata !"expect_tested", metadata !693, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1678 = metadata !{i32 786445, metadata !692, metadata !"root_tested", metadata !693, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1679 = metadata !{i32 786445, metadata !692, metadata !"done", metadata !693, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1680 = metadata !{i32 786445, metadata !692, metadata !"logged", metadata !693, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1681 = metadata !{i32 786445, metadata !692, metadata !"buffered", metadata !693, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1682 = metadata !{i32 786445, metadata !692, metadata !"main_filter_need_in_memory", metadata !693, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1683 = metadata !{i32 786445, metadata !692, metadata !"filter_need_in_memory", metadata !693, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1684 = metadata !{i32 786445, metadata !692, metadata !"filter_need_temporary", metadata !693, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1685 = metadata !{i32 786445, metadata !692, metadata !"allow_ranges", metadata !693, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1686 = metadata !{i32 786445, metadata !692, metadata !"state", metadata !693, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1687 = metadata !{i32 786445, metadata !692, metadata !"header_hash", metadata !693, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1688 = metadata !{i32 786445, metadata !692, metadata !"lowcase_index", metadata !693, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1689 = metadata !{i32 786445, metadata !692, metadata !"lowcase_header", metadata !693, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1690} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1690 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1691, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1691 = metadata !{metadata !1692}
!1692 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1693 = metadata !{i32 786445, metadata !692, metadata !"header_name_start", metadata !693, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1694 = metadata !{i32 786445, metadata !692, metadata !"header_name_end", metadata !693, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1695 = metadata !{i32 786445, metadata !692, metadata !"header_start", metadata !693, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1696 = metadata !{i32 786445, metadata !692, metadata !"header_end", metadata !693, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1697 = metadata !{i32 786445, metadata !692, metadata !"uri_start", metadata !693, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1698 = metadata !{i32 786445, metadata !692, metadata !"uri_end", metadata !693, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1699 = metadata !{i32 786445, metadata !692, metadata !"uri_ext", metadata !693, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1700 = metadata !{i32 786445, metadata !692, metadata !"args_start", metadata !693, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1701 = metadata !{i32 786445, metadata !692, metadata !"request_start", metadata !693, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1702 = metadata !{i32 786445, metadata !692, metadata !"request_end", metadata !693, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1703 = metadata !{i32 786445, metadata !692, metadata !"method_end", metadata !693, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1704 = metadata !{i32 786445, metadata !692, metadata !"schema_start", metadata !693, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1705 = metadata !{i32 786445, metadata !692, metadata !"schema_end", metadata !693, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1706 = metadata !{i32 786445, metadata !692, metadata !"host_start", metadata !693, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1707 = metadata !{i32 786445, metadata !692, metadata !"host_end", metadata !693, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1708 = metadata !{i32 786445, metadata !692, metadata !"port_start", metadata !693, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1709 = metadata !{i32 786445, metadata !692, metadata !"port_end", metadata !693, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1710 = metadata !{i32 786445, metadata !692, metadata !"http_minor", metadata !693, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1711 = metadata !{i32 786445, metadata !692, metadata !"http_major", metadata !693, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1712 = metadata !{i32 786688, metadata !684, metadata !"cmcf", metadata !6, i32 637, metadata !1713, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 637]
!1713 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1714} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_main_conf_t]
!1714 = metadata !{i32 786454, null, metadata !"ngx_http_core_main_conf_t", metadata !6, i32 175, i64 0, i64 0, i64 0, i32 0, metadata !1715} ; [ DW_TAG_typedef ] [ngx_http_core_main_conf_t] [line 175, size 0, align 0, offset 0] [from ]
!1715 = metadata !{i32 786451, null, metadata !"", metadata !1379, i32 150, i64 2560, i64 32, i32 0, i32 0, null, metadata !1716, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 150, size 2560, align 32, offset 0] [from ]
!1716 = metadata !{metadata !1717, metadata !1718, metadata !1736, metadata !1737, metadata !1738, metadata !1739, metadata !1740, metadata !1741, metadata !1742, metadata !1743, metadata !1744, metadata !1758, metadata !1759, metadata !1760}
!1717 = metadata !{i32 786445, metadata !1715, metadata !"servers", metadata !1379, i32 151, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [servers] [line 151, size 160, align 32, offset 0] [from ngx_array_t]
!1718 = metadata !{i32 786445, metadata !1715, metadata !"phase_engine", metadata !1379, i32 153, i64 96, i64 32, i64 160, i32 0, metadata !1719} ; [ DW_TAG_member ] [phase_engine] [line 153, size 96, align 32, offset 160] [from ngx_http_phase_engine_t]
!1719 = metadata !{i32 786454, null, metadata !"ngx_http_phase_engine_t", metadata !1379, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !1720} ; [ DW_TAG_typedef ] [ngx_http_phase_engine_t] [line 142, size 0, align 0, offset 0] [from ]
!1720 = metadata !{i32 786451, null, metadata !"", metadata !1379, i32 138, i64 96, i64 32, i32 0, i32 0, null, metadata !1721, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 138, size 96, align 32, offset 0] [from ]
!1721 = metadata !{metadata !1722, metadata !1734, metadata !1735}
!1722 = metadata !{i32 786445, metadata !1720, metadata !"handlers", metadata !1379, i32 139, i64 32, i64 32, i64 0, i32 0, metadata !1723} ; [ DW_TAG_member ] [handlers] [line 139, size 32, align 32, offset 0] [from ]
!1723 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1724} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_phase_handler_t]
!1724 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_t", metadata !1379, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !1725} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_t] [line 126, size 0, align 0, offset 0] [from ngx_http_phase_handler_s]
!1725 = metadata !{i32 786451, null, metadata !"ngx_http_phase_handler_s", metadata !1379, i32 131, i64 96, i64 32, i32 0, i32 0, null, metadata !1726, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_phase_handler_s] [line 131, size 96, align 32, offset 0] [from ]
!1726 = metadata !{metadata !1727, metadata !1732, metadata !1733}
!1727 = metadata !{i32 786445, metadata !1725, metadata !"checker", metadata !1379, i32 132, i64 32, i64 32, i64 0, i32 0, metadata !1728} ; [ DW_TAG_member ] [checker] [line 132, size 32, align 32, offset 0] [from ngx_http_phase_handler_pt]
!1728 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_pt", metadata !1379, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !1729} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_pt] [line 128, size 0, align 0, offset 0] [from ]
!1729 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1730} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1731 = metadata !{metadata !472, metadata !690, metadata !1723}
!1732 = metadata !{i32 786445, metadata !1725, metadata !"handler", metadata !1379, i32 133, i64 32, i64 32, i64 32, i32 0, metadata !686} ; [ DW_TAG_member ] [handler] [line 133, size 32, align 32, offset 32] [from ngx_http_handler_pt]
!1733 = metadata !{i32 786445, metadata !1725, metadata !"next", metadata !1379, i32 134, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [next] [line 134, size 32, align 32, offset 64] [from ngx_uint_t]
!1734 = metadata !{i32 786445, metadata !1720, metadata !"server_rewrite_index", metadata !1379, i32 140, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [server_rewrite_index] [line 140, size 32, align 32, offset 32] [from ngx_uint_t]
!1735 = metadata !{i32 786445, metadata !1720, metadata !"location_rewrite_index", metadata !1379, i32 141, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [location_rewrite_index] [line 141, size 32, align 32, offset 64] [from ngx_uint_t]
!1736 = metadata !{i32 786445, metadata !1715, metadata !"headers_in_hash", metadata !1379, i32 155, i64 64, i64 32, i64 256, i32 0, metadata !1032} ; [ DW_TAG_member ] [headers_in_hash] [line 155, size 64, align 32, offset 256] [from ngx_hash_t]
!1737 = metadata !{i32 786445, metadata !1715, metadata !"variables_hash", metadata !1379, i32 157, i64 64, i64 32, i64 320, i32 0, metadata !1032} ; [ DW_TAG_member ] [variables_hash] [line 157, size 64, align 32, offset 320] [from ngx_hash_t]
!1738 = metadata !{i32 786445, metadata !1715, metadata !"variables", metadata !1379, i32 159, i64 160, i64 32, i64 384, i32 0, metadata !19} ; [ DW_TAG_member ] [variables] [line 159, size 160, align 32, offset 384] [from ngx_array_t]
!1739 = metadata !{i32 786445, metadata !1715, metadata !"ncaptures", metadata !1379, i32 160, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 160, size 32, align 32, offset 544] [from ngx_uint_t]
!1740 = metadata !{i32 786445, metadata !1715, metadata !"server_names_hash_max_size", metadata !1379, i32 162, i64 32, i64 32, i64 576, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_max_size] [line 162, size 32, align 32, offset 576] [from ngx_uint_t]
!1741 = metadata !{i32 786445, metadata !1715, metadata !"server_names_hash_bucket_size", metadata !1379, i32 163, i64 32, i64 32, i64 608, i32 0, metadata !26} ; [ DW_TAG_member ] [server_names_hash_bucket_size] [line 163, size 32, align 32, offset 608] [from ngx_uint_t]
!1742 = metadata !{i32 786445, metadata !1715, metadata !"variables_hash_max_size", metadata !1379, i32 165, i64 32, i64 32, i64 640, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_max_size] [line 165, size 32, align 32, offset 640] [from ngx_uint_t]
!1743 = metadata !{i32 786445, metadata !1715, metadata !"variables_hash_bucket_size", metadata !1379, i32 166, i64 32, i64 32, i64 672, i32 0, metadata !26} ; [ DW_TAG_member ] [variables_hash_bucket_size] [line 166, size 32, align 32, offset 672] [from ngx_uint_t]
!1744 = metadata !{i32 786445, metadata !1715, metadata !"variables_keys", metadata !1379, i32 168, i64 32, i64 32, i64 704, i32 0, metadata !1745} ; [ DW_TAG_member ] [variables_keys] [line 168, size 32, align 32, offset 704] [from ]
!1745 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1746} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!1746 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !1379, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !1747} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!1747 = metadata !{i32 786451, null, metadata !"", metadata !1034, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !1748, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!1748 = metadata !{metadata !1749, metadata !1750, metadata !1751, metadata !1752, metadata !1753, metadata !1754, metadata !1755, metadata !1756, metadata !1757}
!1749 = metadata !{i32 786445, metadata !1747, metadata !"hsize", metadata !1034, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!1750 = metadata !{i32 786445, metadata !1747, metadata !"pool", metadata !1034, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!1751 = metadata !{i32 786445, metadata !1747, metadata !"temp_pool", metadata !1034, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!1752 = metadata !{i32 786445, metadata !1747, metadata !"keys", metadata !1034, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!1753 = metadata !{i32 786445, metadata !1747, metadata !"keys_hash", metadata !1034, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!1754 = metadata !{i32 786445, metadata !1747, metadata !"dns_wc_head", metadata !1034, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!1755 = metadata !{i32 786445, metadata !1747, metadata !"dns_wc_head_hash", metadata !1034, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!1756 = metadata !{i32 786445, metadata !1747, metadata !"dns_wc_tail", metadata !1034, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!1757 = metadata !{i32 786445, metadata !1747, metadata !"dns_wc_tail_hash", metadata !1034, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!1758 = metadata !{i32 786445, metadata !1715, metadata !"ports", metadata !1379, i32 170, i64 32, i64 32, i64 736, i32 0, metadata !18} ; [ DW_TAG_member ] [ports] [line 170, size 32, align 32, offset 736] [from ]
!1759 = metadata !{i32 786445, metadata !1715, metadata !"try_files", metadata !1379, i32 172, i64 32, i64 32, i64 768, i32 0, metadata !26} ; [ DW_TAG_member ] [try_files] [line 172, size 32, align 32, offset 768] [from ngx_uint_t]
!1760 = metadata !{i32 786445, metadata !1715, metadata !"phases", metadata !1379, i32 174, i64 1760, i64 32, i64 800, i32 0, metadata !1761} ; [ DW_TAG_member ] [phases] [line 174, size 1760, align 32, offset 800] [from ]
!1761 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1760, i64 32, i32 0, i32 0, metadata !1762, metadata !1766, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1760, align 32, offset 0] [from ngx_http_phase_t]
!1762 = metadata !{i32 786454, null, metadata !"ngx_http_phase_t", metadata !1379, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !1763} ; [ DW_TAG_typedef ] [ngx_http_phase_t] [line 147, size 0, align 0, offset 0] [from ]
!1763 = metadata !{i32 786451, null, metadata !"", metadata !1379, i32 145, i64 160, i64 32, i32 0, i32 0, null, metadata !1764, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 145, size 160, align 32, offset 0] [from ]
!1764 = metadata !{metadata !1765}
!1765 = metadata !{i32 786445, metadata !1763, metadata !"handlers", metadata !1379, i32 146, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [handlers] [line 146, size 160, align 32, offset 0] [from ngx_array_t]
!1766 = metadata !{metadata !1767}
!1767 = metadata !{i32 786465, i64 0, i64 10}     ; [ DW_TAG_subrange_type ] [0, 10]
!1768 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_handler", metadata !"ngx_http_limit_req_handler", metadata !"", metadata !6, i32 72, metadata !688, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_limit_req_handler, null, null, metadata !1769, i32 73} ; [ DW_TAG_subprogram ] [line 72] [local] [def] [scope 73] [ngx_http_limit_req_handler]
!1769 = metadata !{metadata !1770}
!1770 = metadata !{metadata !1771, metadata !1772, metadata !1774, metadata !1775, metadata !1776, metadata !1777, metadata !1778, metadata !1779, metadata !1780, metadata !1781, metadata !1782, metadata !1783}
!1771 = metadata !{i32 786689, metadata !1768, metadata !"r", metadata !6, i32 16777288, metadata !690, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 72]
!1772 = metadata !{i32 786688, metadata !1773, metadata !"len", metadata !6, i32 74, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 74]
!1773 = metadata !{i32 786443, metadata !1768, i32 73, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1774 = metadata !{i32 786688, metadata !1773, metadata !"hash", metadata !6, i32 75, metadata !696, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 75]
!1775 = metadata !{i32 786688, metadata !1773, metadata !"rc", metadata !6, i32 76, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 76]
!1776 = metadata !{i32 786688, metadata !1773, metadata !"n", metadata !6, i32 77, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 77]
!1777 = metadata !{i32 786688, metadata !1773, metadata !"excess", metadata !6, i32 78, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [excess] [line 78]
!1778 = metadata !{i32 786688, metadata !1773, metadata !"delay", metadata !6, i32 79, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delay] [line 79]
!1779 = metadata !{i32 786688, metadata !1773, metadata !"vv", metadata !6, i32 80, metadata !1586, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vv] [line 80]
!1780 = metadata !{i32 786688, metadata !1773, metadata !"ctx", metadata !6, i32 81, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 81]
!1781 = metadata !{i32 786688, metadata !1773, metadata !"lrcf", metadata !6, i32 82, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lrcf] [line 82]
!1782 = metadata !{i32 786688, metadata !1773, metadata !"limit", metadata !6, i32 83, metadata !505, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limit] [line 83]
!1783 = metadata !{i32 786688, metadata !1773, metadata !"limits", metadata !6, i32 84, metadata !505, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [limits] [line 84]
!1784 = metadata !{i32 786478, i32 0, metadata !1785, metadata !"ngx_event_add_timer", metadata !"ngx_event_add_timer", metadata !"", metadata !1785, i32 59, metadata !1786, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1788, i32 60} ; [ DW_TAG_subprogram ] [line 59] [local] [def] [scope 60] [ngx_event_add_timer]
!1785 = metadata !{i32 786473, metadata !"src/event/ngx_event_timer.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1786 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1787, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1787 = metadata !{null, metadata !224, metadata !342}
!1788 = metadata !{metadata !1789}
!1789 = metadata !{metadata !1790, metadata !1791, metadata !1792, metadata !1794}
!1790 = metadata !{i32 786689, metadata !1784, metadata !"ev", metadata !1785, i32 16777275, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 59]
!1791 = metadata !{i32 786689, metadata !1784, metadata !"timer", metadata !1785, i32 33554491, metadata !342, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [timer] [line 59]
!1792 = metadata !{i32 786688, metadata !1793, metadata !"key", metadata !1785, i32 61, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 61]
!1793 = metadata !{i32 786443, metadata !1784, i32 60, i32 0, metadata !1785, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.h]
!1794 = metadata !{i32 786688, metadata !1793, metadata !"diff", metadata !1785, i32 62, metadata !1795, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [diff] [line 62]
!1795 = metadata !{i32 786454, null, metadata !"ngx_msec_int_t", metadata !1785, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1796} ; [ DW_TAG_typedef ] [ngx_msec_int_t] [line 17, size 0, align 0, offset 0] [from ngx_rbtree_key_int_t]
!1796 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_int_t", metadata !1785, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [ngx_rbtree_key_int_t] [line 17, size 0, align 0, offset 0] [from ngx_int_t]
!1797 = metadata !{i32 786478, i32 0, metadata !1785, metadata !"ngx_event_del_timer", metadata !"ngx_event_del_timer", metadata !"", metadata !1785, i32 36, metadata !252, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1798, i32 37} ; [ DW_TAG_subprogram ] [line 36] [local] [def] [scope 37] [ngx_event_del_timer]
!1798 = metadata !{metadata !1799}
!1799 = metadata !{metadata !1800}
!1800 = metadata !{i32 786689, metadata !1797, metadata !"ev", metadata !1785, i32 16777252, metadata !224, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ev] [line 36]
!1801 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_delay", metadata !"ngx_http_limit_req_delay", metadata !"", metadata !6, i32 160, metadata !705, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_request_s*)* @ngx_http_limit_req_delay, null, null, metadata !1802, i32 161} ; [ DW_TAG_subprogram ] [line 160] [local] [def] [scope 161] [ngx_http_limit_req_delay]
!1802 = metadata !{metadata !1803}
!1803 = metadata !{metadata !1804, metadata !1805}
!1804 = metadata !{i32 786689, metadata !1801, metadata !"r", metadata !6, i32 16777376, metadata !690, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 160]
!1805 = metadata !{i32 786688, metadata !1806, metadata !"wev", metadata !6, i32 162, metadata !224, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [wev] [line 162]
!1806 = metadata !{i32 786443, metadata !1801, i32 161, i32 0, metadata !6, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1807 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_account", metadata !"ngx_http_limit_req_account", metadata !"", metadata !6, i32 299, metadata !1808, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1811, i32 300} ; [ DW_TAG_subprogram ] [line 299] [local] [def] [scope 300] [ngx_http_limit_req_account]
!1808 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1809, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1809 = metadata !{metadata !342, metadata !505, metadata !26, metadata !1546, metadata !1810}
!1810 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !505} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1811 = metadata !{metadata !1812}
!1812 = metadata !{metadata !1813, metadata !1814, metadata !1815, metadata !1816, metadata !1817, metadata !1819, metadata !1828, metadata !1829, metadata !1830, metadata !1831, metadata !1832, metadata !1833}
!1813 = metadata !{i32 786689, metadata !1807, metadata !"limits", metadata !6, i32 16777515, metadata !505, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [limits] [line 299]
!1814 = metadata !{i32 786689, metadata !1807, metadata !"n", metadata !6, i32 33554731, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 299]
!1815 = metadata !{i32 786689, metadata !1807, metadata !"ep", metadata !6, i32 50331947, metadata !1546, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 299]
!1816 = metadata !{i32 786689, metadata !1807, metadata !"limit", metadata !6, i32 67109163, metadata !1810, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [limit] [line 299]
!1817 = metadata !{i32 786688, metadata !1818, metadata !"excess", metadata !6, i32 301, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [excess] [line 301]
!1818 = metadata !{i32 786443, metadata !1807, i32 300, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1819 = metadata !{i32 786688, metadata !1818, metadata !"tp", metadata !6, i32 302, metadata !1820, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 302]
!1820 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1821} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_time_t]
!1821 = metadata !{i32 786454, null, metadata !"ngx_time_t", metadata !6, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !1822} ; [ DW_TAG_typedef ] [ngx_time_t] [line 20, size 0, align 0, offset 0] [from ]
!1822 = metadata !{i32 786451, null, metadata !"", metadata !1823, i32 16, i64 96, i64 32, i32 0, i32 0, null, metadata !1824, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 96, align 32, offset 0] [from ]
!1823 = metadata !{i32 786473, metadata !"src/core/ngx_times.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1824 = metadata !{metadata !1825, metadata !1826, metadata !1827}
!1825 = metadata !{i32 786445, metadata !1822, metadata !"sec", metadata !1823, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !725} ; [ DW_TAG_member ] [sec] [line 17, size 32, align 32, offset 0] [from time_t]
!1826 = metadata !{i32 786445, metadata !1822, metadata !"msec", metadata !1823, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [msec] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!1827 = metadata !{i32 786445, metadata !1822, metadata !"gmtoff", metadata !1823, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !472} ; [ DW_TAG_member ] [gmtoff] [line 19, size 32, align 32, offset 64] [from ngx_int_t]
!1828 = metadata !{i32 786688, metadata !1818, metadata !"now", metadata !6, i32 303, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 303]
!1829 = metadata !{i32 786688, metadata !1818, metadata !"delay", metadata !6, i32 304, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delay] [line 304]
!1830 = metadata !{i32 786688, metadata !1818, metadata !"max_delay", metadata !6, i32 305, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_delay] [line 305]
!1831 = metadata !{i32 786688, metadata !1818, metadata !"ms", metadata !6, i32 306, metadata !1795, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 306]
!1832 = metadata !{i32 786688, metadata !1818, metadata !"ctx", metadata !6, i32 307, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 307]
!1833 = metadata !{i32 786688, metadata !1818, metadata !"lr", metadata !6, i32 308, metadata !617, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lr] [line 308]
!1834 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_lookup", metadata !"ngx_http_limit_req_lookup", metadata !"", metadata !6, i32 211, metadata !1835, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1837, i32 212} ; [ DW_TAG_subprogram ] [line 211] [local] [def] [scope 212] [ngx_http_limit_req_lookup]
!1835 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1836, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1836 = metadata !{metadata !472, metadata !505, metadata !26, metadata !44, metadata !30, metadata !1546, metadata !26}
!1837 = metadata !{metadata !1838}
!1838 = metadata !{metadata !1839, metadata !1840, metadata !1841, metadata !1842, metadata !1843, metadata !1844, metadata !1845, metadata !1847, metadata !1848, metadata !1849, metadata !1850, metadata !1851, metadata !1852, metadata !1853, metadata !1854, metadata !1855}
!1839 = metadata !{i32 786689, metadata !1834, metadata !"limit", metadata !6, i32 16777427, metadata !505, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [limit] [line 211]
!1840 = metadata !{i32 786689, metadata !1834, metadata !"hash", metadata !6, i32 33554643, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hash] [line 211]
!1841 = metadata !{i32 786689, metadata !1834, metadata !"data", metadata !6, i32 50331859, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 211]
!1842 = metadata !{i32 786689, metadata !1834, metadata !"len", metadata !6, i32 67109075, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 211]
!1843 = metadata !{i32 786689, metadata !1834, metadata !"ep", metadata !6, i32 83886291, metadata !1546, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ep] [line 211]
!1844 = metadata !{i32 786689, metadata !1834, metadata !"account", metadata !6, i32 100663507, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [account] [line 211]
!1845 = metadata !{i32 786688, metadata !1846, metadata !"size", metadata !6, i32 213, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 213]
!1846 = metadata !{i32 786443, metadata !1834, i32 212, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1847 = metadata !{i32 786688, metadata !1846, metadata !"rc", metadata !6, i32 214, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 214]
!1848 = metadata !{i32 786688, metadata !1846, metadata !"excess", metadata !6, i32 215, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [excess] [line 215]
!1849 = metadata !{i32 786688, metadata !1846, metadata !"tp", metadata !6, i32 216, metadata !1820, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 216]
!1850 = metadata !{i32 786688, metadata !1846, metadata !"now", metadata !6, i32 217, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 217]
!1851 = metadata !{i32 786688, metadata !1846, metadata !"ms", metadata !6, i32 218, metadata !1795, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 218]
!1852 = metadata !{i32 786688, metadata !1846, metadata !"node", metadata !6, i32 219, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 219]
!1853 = metadata !{i32 786688, metadata !1846, metadata !"sentinel", metadata !6, i32 220, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sentinel] [line 220]
!1854 = metadata !{i32 786688, metadata !1846, metadata !"ctx", metadata !6, i32 221, metadata !540, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 221]
!1855 = metadata !{i32 786688, metadata !1846, metadata !"lr", metadata !6, i32 222, metadata !617, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lr] [line 222]
!1856 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_limit_req_expire", metadata !"ngx_http_limit_req_expire", metadata !"", metadata !6, i32 349, metadata !1857, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_limit_req_ctx_t*, i32)* @ngx_http_limit_req_expire, null, null, metadata !1859, i32 350} ; [ DW_TAG_subprogram ] [line 349] [local] [def] [scope 350] [ngx_http_limit_req_expire]
!1857 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1858, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1858 = metadata !{null, metadata !540, metadata !26}
!1859 = metadata !{metadata !1860}
!1860 = metadata !{metadata !1861, metadata !1862, metadata !1863, metadata !1865, metadata !1866, metadata !1867, metadata !1868, metadata !1869, metadata !1870}
!1861 = metadata !{i32 786689, metadata !1856, metadata !"ctx", metadata !6, i32 16777565, metadata !540, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 349]
!1862 = metadata !{i32 786689, metadata !1856, metadata !"n", metadata !6, i32 33554781, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 349]
!1863 = metadata !{i32 786688, metadata !1864, metadata !"excess", metadata !6, i32 351, metadata !472, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [excess] [line 351]
!1864 = metadata !{i32 786443, metadata !1856, i32 350, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1865 = metadata !{i32 786688, metadata !1864, metadata !"tp", metadata !6, i32 352, metadata !1820, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 352]
!1866 = metadata !{i32 786688, metadata !1864, metadata !"now", metadata !6, i32 353, metadata !342, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [now] [line 353]
!1867 = metadata !{i32 786688, metadata !1864, metadata !"q", metadata !6, i32 354, metadata !373, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 354]
!1868 = metadata !{i32 786688, metadata !1864, metadata !"ms", metadata !6, i32 355, metadata !1795, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ms] [line 355]
!1869 = metadata !{i32 786688, metadata !1864, metadata !"node", metadata !6, i32 356, metadata !266, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 356]
!1870 = metadata !{i32 786688, metadata !1864, metadata !"lr", metadata !6, i32 357, metadata !617, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lr] [line 357]
!1871 = metadata !{i32 786478, i32 0, metadata !1872, metadata !"ngx_crc32_short", metadata !"ngx_crc32_short", metadata !"", metadata !1872, i32 21, metadata !1873, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1875, i32 22} ; [ DW_TAG_subprogram ] [line 21] [local] [def] [scope 22] [ngx_crc32_short]
!1872 = metadata !{i32 786473, metadata !"src/core/ngx_crc32.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1873 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1874, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1874 = metadata !{metadata !696, metadata !44, metadata !30}
!1875 = metadata !{metadata !1876}
!1876 = metadata !{metadata !1877, metadata !1878, metadata !1879, metadata !1881}
!1877 = metadata !{i32 786689, metadata !1871, metadata !"p", metadata !1872, i32 16777237, metadata !44, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [p] [line 21]
!1878 = metadata !{i32 786689, metadata !1871, metadata !"len", metadata !1872, i32 33554453, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 21]
!1879 = metadata !{i32 786688, metadata !1880, metadata !"c", metadata !1872, i32 23, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 23]
!1880 = metadata !{i32 786443, metadata !1871, i32 22, i32 0, metadata !1872, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_crc32.h]
!1881 = metadata !{i32 786688, metadata !1880, metadata !"crc", metadata !1872, i32 24, metadata !696, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [crc] [line 24]
!1882 = metadata !{metadata !1883}
!1883 = metadata !{metadata !1884, metadata !1922, metadata !1926, metadata !1935}
!1884 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_req_module", metadata !"ngx_http_limit_req_module", metadata !"", metadata !6, i32 60, metadata !1885, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_limit_req_module} ; [ DW_TAG_variable ] [ngx_http_limit_req_module] [line 60] [def]
!1885 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1886} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1886 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1887, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1887 = metadata !{metadata !1888, metadata !1889, metadata !1890, metadata !1891, metadata !1892, metadata !1893, metadata !1894, metadata !1895, metadata !1896, metadata !1897, metadata !1898, metadata !1902, metadata !1906, metadata !1907, metadata !1908, metadata !1912, metadata !1913, metadata !1914, metadata !1915, metadata !1916, metadata !1917, metadata !1918, metadata !1919, metadata !1920, metadata !1921}
!1888 = metadata !{i32 786445, metadata !1886, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1889 = metadata !{i32 786445, metadata !1886, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1890 = metadata !{i32 786445, metadata !1886, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1891 = metadata !{i32 786445, metadata !1886, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1892 = metadata !{i32 786445, metadata !1886, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1893 = metadata !{i32 786445, metadata !1886, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1894 = metadata !{i32 786445, metadata !1886, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1895 = metadata !{i32 786445, metadata !1886, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1896 = metadata !{i32 786445, metadata !1886, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1897 = metadata !{i32 786445, metadata !1886, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1898 = metadata !{i32 786445, metadata !1886, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1899} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1899 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1900} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1900 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1901, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1901 = metadata !{metadata !472, metadata !137}
!1902 = metadata !{i32 786445, metadata !1886, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1903} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1903 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1904} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1904 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1905, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1905 = metadata !{metadata !472, metadata !203}
!1906 = metadata !{i32 786445, metadata !1886, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1903} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1907 = metadata !{i32 786445, metadata !1886, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1903} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1908 = metadata !{i32 786445, metadata !1886, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1909} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1909 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1910} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1910 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1911, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1911 = metadata !{null, metadata !203}
!1912 = metadata !{i32 786445, metadata !1886, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1909} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1913 = metadata !{i32 786445, metadata !1886, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1909} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1914 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1915 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1916 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1917 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1918 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1919 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1920 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1921 = metadata !{i32 786445, metadata !1886, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1922 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_req_commands", metadata !"ngx_http_limit_req_commands", metadata !"", metadata !6, i32 50, metadata !1923, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_limit_req_commands} ; [ DW_TAG_variable ] [ngx_http_limit_req_commands] [line 50] [local] [def]
!1923 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !448, metadata !1924, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 896, align 32, offset 0] [from ngx_command_t]
!1924 = metadata !{metadata !1925}
!1925 = metadata !{i32 786465, i64 0, i64 3}      ; [ DW_TAG_subrange_type ] [0, 3]
!1926 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_req_log_levels", metadata !"ngx_http_limit_req_log_levels", metadata !"", metadata !6, i32 49, metadata !1927, i32 1, i32 1, [5 x %struct.ngx_conf_enum_t]* @ngx_http_limit_req_log_levels} ; [ DW_TAG_variable ] [ngx_http_limit_req_log_levels] [line 49] [local] [def]
!1927 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 480, i64 32, i32 0, i32 0, metadata !1928, metadata !1933, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 480, align 32, offset 0] [from ngx_conf_enum_t]
!1928 = metadata !{i32 786454, null, metadata !"ngx_conf_enum_t", metadata !6, i32 210, i64 0, i64 0, i64 0, i32 0, metadata !1929} ; [ DW_TAG_typedef ] [ngx_conf_enum_t] [line 210, size 0, align 0, offset 0] [from ]
!1929 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 207, i64 96, i64 32, i32 0, i32 0, null, metadata !1930, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 207, size 96, align 32, offset 0] [from ]
!1930 = metadata !{metadata !1931, metadata !1932}
!1931 = metadata !{i32 786445, metadata !1929, metadata !"name", metadata !13, i32 208, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 208, size 64, align 32, offset 0] [from ngx_str_t]
!1932 = metadata !{i32 786445, metadata !1929, metadata !"value", metadata !13, i32 209, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [value] [line 209, size 32, align 32, offset 64] [from ngx_uint_t]
!1933 = metadata !{metadata !1934}
!1934 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ] [0, 4]
!1935 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_limit_req_module_ctx", metadata !"ngx_http_limit_req_module_ctx", metadata !"", metadata !6, i32 51, metadata !1936, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_limit_req_module_ctx} ; [ DW_TAG_variable ] [ngx_http_limit_req_module_ctx] [line 51] [local] [def]
!1936 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1937} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1937 = metadata !{i32 786451, null, metadata !"", metadata !1435, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1938, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1938 = metadata !{metadata !1939, metadata !1941, metadata !1942, metadata !1944, metadata !1948, metadata !1949, metadata !1951, metadata !1952}
!1939 = metadata !{i32 786445, metadata !1937, metadata !"preconfiguration", metadata !1435, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1940} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1940 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !678} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1941 = metadata !{i32 786445, metadata !1937, metadata !"postconfiguration", metadata !1435, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1940} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1942 = metadata !{i32 786445, metadata !1937, metadata !"create_main_conf", metadata !1435, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1943} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1943 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !670} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1944 = metadata !{i32 786445, metadata !1937, metadata !"init_main_conf", metadata !1435, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1945} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1945 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1946} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1946 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1947, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1947 = metadata !{metadata !9, metadata !11, metadata !24}
!1948 = metadata !{i32 786445, metadata !1937, metadata !"create_srv_conf", metadata !1435, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1943} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1949 = metadata !{i32 786445, metadata !1937, metadata !"merge_srv_conf", metadata !1435, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1950} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1950 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !659} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1951 = metadata !{i32 786445, metadata !1937, metadata !"create_loc_conf", metadata !1435, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1943} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1952 = metadata !{i32 786445, metadata !1937, metadata !"merge_loc_conf", metadata !1435, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1950} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1953 = metadata !{i32 469, i32 0, metadata !522, null}
!1954 = metadata !{i32 475, i32 0, metadata !529, null}
!1955 = metadata !{i32 476, i32 0, metadata !529, null}
!1956 = metadata !{i32 482, i32 0, metadata !529, null}
!1957 = metadata !{metadata !"any pointer", metadata !1958}
!1958 = metadata !{metadata !"omnipotent char", metadata !1959}
!1959 = metadata !{metadata !"Simple C/C++ TBAA"}
!1960 = metadata !{%struct.ngx_http_limit_req_ctx_t* null}
!1961 = metadata !{i32 483, i32 0, metadata !529, null}
!1962 = metadata !{i32 484, i32 0, metadata !529, null}
!1963 = metadata !{i32 1}
!1964 = metadata !{i32 485, i32 0, metadata !529, null}
!1965 = metadata !{i32 486, i32 0, metadata !529, null}
!1966 = metadata !{i32 487, i32 0, metadata !529, null}
!1967 = metadata !{metadata !"int", metadata !1958}
!1968 = metadata !{i32 488, i32 0, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !529, i32 488, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1970 = metadata !{i32 490, i32 0, metadata !1971, null}
!1971 = metadata !{i32 786443, metadata !1972, i32 489, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1972 = metadata !{i32 786443, metadata !1969, i32 488, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1973 = metadata !{i32 497, i32 0, metadata !1971, null}
!1974 = metadata !{i32 498, i32 0, metadata !1971, null}
!1975 = metadata !{i32 531, i32 0, metadata !1976, null}
!1976 = metadata !{i32 786443, metadata !1972, i32 528, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1977 = metadata !{i32 489, i32 0, metadata !1972, null}
!1978 = metadata !{i32 491, i32 0, metadata !1971, null}
!1979 = metadata !{i32 492, i32 0, metadata !1971, null}
!1980 = metadata !{i32 493, i32 0, metadata !1981, null}
!1981 = metadata !{i32 786443, metadata !1971, i32 492, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1982 = metadata !{i32 494, i32 0, metadata !1981, null}
!1983 = metadata !{i32 496, i32 0, metadata !1971, null}
!1984 = metadata !{i32 499, i32 0, metadata !1971, null}
!1985 = metadata !{i32 500, i32 0, metadata !1971, null}
!1986 = metadata !{i32 501, i32 0, metadata !1987, null}
!1987 = metadata !{i32 786443, metadata !1971, i32 500, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1988 = metadata !{i32 502, i32 0, metadata !1987, null}
!1989 = metadata !{i32 504, i32 0, metadata !1971, null}
!1990 = metadata !{i32 505, i32 0, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !1971, i32 504, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1992 = metadata !{i32 506, i32 0, metadata !1991, null}
!1993 = metadata !{i32 510, i32 0, metadata !1972, null}
!1994 = metadata !{i32 511, i32 0, metadata !1995, null}
!1995 = metadata !{i32 786443, metadata !1972, i32 510, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!1996 = metadata !{i32 512, i32 0, metadata !1995, null}
!1997 = metadata !{i32 513, i32 0, metadata !1995, null}
!1998 = metadata !{i32 514, i32 0, metadata !1999, null}
!1999 = metadata !{i32 786443, metadata !1995, i32 513, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2000 = metadata !{i32 515, i32 0, metadata !1999, null}
!2001 = metadata !{i32 517, i32 0, metadata !1995, null}
!2002 = metadata !{i32 60}
!2003 = metadata !{i32 518, i32 0, metadata !2004, null}
!2004 = metadata !{i32 786443, metadata !1995, i32 517, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2005 = metadata !{i32 519, i32 0, metadata !2004, null}
!2006 = metadata !{i32 521, i32 0, metadata !1995, null}
!2007 = metadata !{i32 522, i32 0, metadata !1995, null}
!2008 = metadata !{i32 523, i32 0, metadata !2009, null}
!2009 = metadata !{i32 786443, metadata !1995, i32 522, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2010 = metadata !{i32 524, i32 0, metadata !2009, null}
!2011 = metadata !{i32 528, i32 0, metadata !1972, null}
!2012 = metadata !{i32 529, i32 0, metadata !1976, null}
!2013 = metadata !{i32 530, i32 0, metadata !1976, null}
!2014 = metadata !{i32 532, i32 0, metadata !1976, null}
!2015 = metadata !{i32 535, i32 0, metadata !1976, null}
!2016 = metadata !{i32 536, i32 0, metadata !1976, null}
!2017 = metadata !{i32 539, i32 0, metadata !1976, null}
!2018 = metadata !{i32 540, i32 0, metadata !1976, null}
!2019 = metadata !{i32 542, i32 0, metadata !1972, null}
!2020 = metadata !{i32 543, i32 0, metadata !1972, null}
!2021 = metadata !{i32 545, i32 0, metadata !529, null}
!2022 = metadata !{i32 546, i32 0, metadata !2023, null}
!2023 = metadata !{i32 786443, metadata !529, i32 545, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2024 = metadata !{i32 547, i32 0, metadata !2023, null}
!2025 = metadata !{i32 549, i32 0, metadata !529, null}
!2026 = metadata !{i32 550, i32 0, metadata !2027, null}
!2027 = metadata !{i32 786443, metadata !529, i32 549, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2028 = metadata !{i32 551, i32 0, metadata !2027, null}
!2029 = metadata !{i32 553, i32 0, metadata !529, null}
!2030 = metadata !{i32 554, i32 0, metadata !529, null}
!2031 = metadata !{i32 555, i32 0, metadata !529, null}
!2032 = metadata !{i32 558, i32 0, metadata !529, null}
!2033 = metadata !{i32 560, i32 0, metadata !2034, null}
!2034 = metadata !{i32 786443, metadata !529, i32 558, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2035 = metadata !{i32 561, i32 0, metadata !2034, null}
!2036 = metadata !{i32 563, i32 0, metadata !529, null}
!2037 = metadata !{i32 564, i32 0, metadata !529, null}
!2038 = metadata !{i32 565, i32 0, metadata !529, null}
!2039 = metadata !{i32 566, i32 0, metadata !529, null}
!2040 = metadata !{i32 568, i32 0, metadata !5, null}
!2041 = metadata !{i32 573, i32 0, metadata !463, null}
!2042 = metadata !{i32 579, i32 0, metadata !463, null}
!2043 = metadata !{%struct.ngx_shm_zone_s* null}
!2044 = metadata !{i32 580, i32 0, metadata !463, null}
!2045 = metadata !{i32 581, i32 0, metadata !463, null}
!2046 = metadata !{i32 582, i32 0, metadata !463, null}
!2047 = metadata !{i32 583, i32 0, metadata !2048, null}
!2048 = metadata !{i32 786443, metadata !463, i32 583, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2049 = metadata !{i32 585, i32 0, metadata !2050, null}
!2050 = metadata !{i32 786443, metadata !2051, i32 584, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2051 = metadata !{i32 786443, metadata !2048, i32 583, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2052 = metadata !{i32 586, i32 0, metadata !2050, null}
!2053 = metadata !{i32 584, i32 0, metadata !2051, null}
!2054 = metadata !{i32 587, i32 0, metadata !2050, null}
!2055 = metadata !{i32 588, i32 0, metadata !2050, null}
!2056 = metadata !{i32 593, i32 0, metadata !2051, null}
!2057 = metadata !{i32 594, i32 0, metadata !2058, null}
!2058 = metadata !{i32 786443, metadata !2051, i32 593, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2059 = metadata !{i32 595, i32 0, metadata !2058, null}
!2060 = metadata !{i32 596, i32 0, metadata !2061, null}
!2061 = metadata !{i32 786443, metadata !2058, i32 595, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2062 = metadata !{i32 597, i32 0, metadata !2061, null}
!2063 = metadata !{i32 601, i32 0, metadata !2051, null}
!2064 = metadata !{i32 605, i32 0, metadata !2051, null}
!2065 = metadata !{i32 606, i32 0, metadata !2051, null}
!2066 = metadata !{i32 608, i32 0, metadata !463, null}
!2067 = metadata !{i32 609, i32 0, metadata !2068, null}
!2068 = metadata !{i32 786443, metadata !463, i32 608, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2069 = metadata !{i32 610, i32 0, metadata !2068, null}
!2070 = metadata !{i32 612, i32 0, metadata !463, null}
!2071 = metadata !{i32 613, i32 0, metadata !2072, null}
!2072 = metadata !{i32 786443, metadata !463, i32 612, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2073 = metadata !{i32 614, i32 0, metadata !2072, null}
!2074 = metadata !{i32 616, i32 0, metadata !463, null}
!2075 = metadata !{i32 617, i32 0, metadata !463, null}
!2076 = metadata !{i32 622, i32 0, metadata !2077, null}
!2077 = metadata !{i32 786443, metadata !463, i32 622, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2078 = metadata !{i32 618, i32 0, metadata !2079, null}
!2079 = metadata !{i32 786443, metadata !463, i32 617, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2080 = metadata !{i32 786689, metadata !513, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !2078} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2081 = metadata !{i32 32, i32 0, metadata !513, metadata !2078}
!2082 = metadata !{i32 12}
!2083 = metadata !{i32 786689, metadata !513, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, metadata !2078} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2084 = metadata !{i32 39, i32 0, metadata !2085, metadata !2078}
!2085 = metadata !{i32 786443, metadata !513, i32 33, i32 0, metadata !21, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!2086 = metadata !{i32 40, i32 0, metadata !2085, metadata !2078}
!2087 = metadata !{i32 41, i32 0, metadata !2085, metadata !2078}
!2088 = metadata !{i32 42, i32 0, metadata !2085, metadata !2078}
!2089 = metadata !{i32 44, i32 0, metadata !2085, metadata !2078}
!2090 = metadata !{i32 45, i32 0, metadata !2085, metadata !2078}
!2091 = metadata !{i32 623, i32 0, metadata !2092, null}
!2092 = metadata !{i32 786443, metadata !2077, i32 622, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2093 = metadata !{i32 627, i32 0, metadata !463, null}
!2094 = metadata !{i32 628, i32 0, metadata !463, null}
!2095 = metadata !{i32 629, i32 0, metadata !463, null}
!2096 = metadata !{i32 630, i32 0, metadata !463, null}
!2097 = metadata !{i32 631, i32 0, metadata !463, null}
!2098 = metadata !{i32 632, i32 0, metadata !463, null}
!2099 = metadata !{i32 397, i32 0, metadata !634, null}
!2100 = metadata !{i32 402, i32 0, metadata !640, null}
!2101 = metadata !{i32 403, i32 0, metadata !640, null}
!2102 = metadata !{i32 404, i32 0, metadata !644, null}
!2103 = metadata !{i32 405, i32 0, metadata !2104, null}
!2104 = metadata !{i32 786443, metadata !645, i32 404, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2105 = metadata !{i32 406, i32 0, metadata !2104, null}
!2106 = metadata !{i32 409, i32 0, metadata !645, null}
!2107 = metadata !{i32 410, i32 0, metadata !645, null}
!2108 = metadata !{i32 411, i32 0, metadata !645, null}
!2109 = metadata !{i32 413, i32 0, metadata !640, null}
!2110 = metadata !{i32 414, i32 0, metadata !640, null}
!2111 = metadata !{i32 415, i32 0, metadata !2112, null}
!2112 = metadata !{i32 786443, metadata !640, i32 414, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2113 = metadata !{i32 416, i32 0, metadata !2112, null}
!2114 = metadata !{i32 418, i32 0, metadata !640, null}
!2115 = metadata !{i32 419, i32 0, metadata !640, null}
!2116 = metadata !{i32 422, i32 0, metadata !640, null}
!2117 = metadata !{i32 423, i32 0, metadata !640, null}
!2118 = metadata !{i32 424, i32 0, metadata !640, null}
!2119 = metadata !{i32 425, i32 0, metadata !640, null}
!2120 = metadata !{i32 426, i32 0, metadata !640, null}
!2121 = metadata !{i32 427, i32 0, metadata !640, null}
!2122 = metadata !{i32 428, i32 0, metadata !640, null}
!2123 = metadata !{i32 429, i32 0, metadata !640, null}
!2124 = metadata !{i32 430, i32 0, metadata !640, null}
!2125 = metadata !{i32 431, i32 0, metadata !640, null}
!2126 = metadata !{i32 434, i32 0, metadata !640, null}
!2127 = metadata !{i32 435, i32 0, metadata !640, null}
!2128 = metadata !{i32 436, i32 0, metadata !640, null}
!2129 = metadata !{i32 181, i32 0, metadata !647, null}
!2130 = metadata !{i32 187, i32 0, metadata !2131, null}
!2131 = metadata !{i32 786443, metadata !2132, i32 186, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2132 = metadata !{i32 786443, metadata !654, i32 186, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2133 = metadata !{i32 195, i32 0, metadata !2134, null}
!2134 = metadata !{i32 786443, metadata !2131, i32 194, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2135 = metadata !{i32 197, i32 0, metadata !2134, null}
!2136 = metadata !{i32 186, i32 0, metadata !2132, null}
!2137 = metadata !{i32 188, i32 0, metadata !2138, null}
!2138 = metadata !{i32 786443, metadata !2131, i32 187, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2139 = metadata !{i32 189, i32 0, metadata !2138, null}
!2140 = metadata !{i32 190, i32 0, metadata !2131, null}
!2141 = metadata !{i32 191, i32 0, metadata !2142, null}
!2142 = metadata !{i32 786443, metadata !2131, i32 190, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2143 = metadata !{i32 193, i32 0, metadata !2142, null}
!2144 = metadata !{i32 196, i32 0, metadata !2134, null}
!2145 = metadata !{metadata !"short", metadata !1958}
!2146 = metadata !{i32 199, i32 0, metadata !2131, null}
!2147 = metadata !{i32 204, i32 0, metadata !654, null}
!2148 = metadata !{i32 205, i32 0, metadata !654, null}
!2149 = metadata !{i32 206, i32 0, metadata !654, null}
!2150 = metadata !{i32 207, i32 0, metadata !654, null}
!2151 = metadata !{i32 208, i32 0, metadata !654, null}
!2152 = metadata !{i32 209, i32 0, metadata !654, null}
!2153 = metadata !{i32 634, i32 0, metadata !677, null}
!2154 = metadata !{i32 638, i32 0, metadata !684, null}
!2155 = metadata !{i32 639, i32 0, metadata !684, null}
!2156 = metadata !{i32 640, i32 0, metadata !684, null}
!2157 = metadata !{i32 643, i32 0, metadata !684, null}
!2158 = metadata !{i32 644, i32 0, metadata !684, null}
!2159 = metadata !{i32 645, i32 0, metadata !684, null}
!2160 = metadata !{i32 438, i32 0, metadata !669, null}
!2161 = metadata !{i32 441, i32 0, metadata !676, null}
!2162 = metadata !{i32 442, i32 0, metadata !676, null}
!2163 = metadata !{i32 450, i32 0, metadata !676, null}
!2164 = metadata !{i32 451, i32 0, metadata !676, null}
!2165 = metadata !{i32 452, i32 0, metadata !676, null}
!2166 = metadata !{i32 454, i32 0, metadata !658, null}
!2167 = metadata !{i32 458, i32 0, metadata !667, null}
!2168 = metadata !{i32 459, i32 0, metadata !2169, null}
!2169 = metadata !{i32 786443, metadata !667, i32 458, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2170 = metadata !{i64 0, i64 4, metadata !1957, i64 4, i64 4, metadata !1967, i64 8, i64 4, metadata !1967, i64 12, i64 4, metadata !1967, i64 16, i64 4, metadata !1957}
!2171 = metadata !{i32 460, i32 0, metadata !2169, null}
!2172 = metadata !{i32 461, i32 0, metadata !667, null}
!2173 = metadata !{i32 462, i32 0, metadata !2174, null}
!2174 = metadata !{i32 786443, metadata !667, i32 461, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2175 = metadata !{i32 463, i32 0, metadata !2174, null}
!2176 = metadata !{i32 465, i32 0, metadata !667, null}
!2177 = metadata !{i32 466, i32 0, metadata !667, null}
!2178 = metadata !{i32 72, i32 0, metadata !1768, null}
!2179 = metadata !{i32 85, i32 0, metadata !1773, null}
!2180 = metadata !{i32 88, i32 0, metadata !1773, null}
!2181 = metadata !{i32 89, i32 0, metadata !1773, null}
!2182 = metadata !{i32 90, i32 0, metadata !1773, null}
!2183 = metadata !{i32 786689, metadata !1807, metadata !"ep", metadata !6, i32 50331947, metadata !1546, i32 0, metadata !2184} ; [ DW_TAG_arg_variable ] [ep] [line 299]
!2184 = metadata !{i32 145, i32 0, metadata !1773, null}
!2185 = metadata !{i32 299, i32 0, metadata !1807, metadata !2184}
!2186 = metadata !{i32 786689, metadata !1834, metadata !"ep", metadata !6, i32 83886291, metadata !1546, i32 0, metadata !2187} ; [ DW_TAG_arg_variable ] [ep] [line 211]
!2187 = metadata !{i32 113, i32 0, metadata !2188, null}
!2188 = metadata !{i32 786443, metadata !2189, i32 95, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2189 = metadata !{i32 786443, metadata !1773, i32 95, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2190 = metadata !{i32 211, i32 0, metadata !1834, metadata !2187}
!2191 = metadata !{i32 127, i32 0, metadata !2192, null}
!2192 = metadata !{i32 786443, metadata !2193, i32 125, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2193 = metadata !{i32 786443, metadata !1773, i32 124, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2194 = metadata !{i32 150, i32 0, metadata !1773, null}
!2195 = metadata !{i32 -5}                        
!2196 = metadata !{i32 91, i32 0, metadata !1773, null}
!2197 = metadata !{%struct.ngx_http_limit_req_limit_t* null}
!2198 = metadata !{i32 93, i32 0, metadata !1773, null}
!2199 = metadata !{i32 786689, metadata !1807, metadata !"limit", metadata !6, i32 67109163, metadata !1810, i32 0, metadata !2184} ; [ DW_TAG_arg_variable ] [limit] [line 299]
!2200 = metadata !{i32 95, i32 0, metadata !2189, null}
!2201 = metadata !{i32 107, i32 0, metadata !2202, null}
!2202 = metadata !{i32 786443, metadata !2188, i32 106, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2203 = metadata !{i32 96, i32 0, metadata !2188, null}
!2204 = metadata !{i32 97, i32 0, metadata !2188, null}
!2205 = metadata !{i32 98, i32 0, metadata !2188, null}
!2206 = metadata !{i32 99, i32 0, metadata !2188, null}
!2207 = metadata !{i32 102, i32 0, metadata !2188, null}
!2208 = metadata !{i32 103, i32 0, metadata !2188, null}
!2209 = metadata !{i32 106, i32 0, metadata !2188, null}
!2210 = metadata !{i32 108, i32 0, metadata !2202, null}
!2211 = metadata !{i32 111, i32 0, metadata !2188, null}
!2212 = metadata !{i32 786689, metadata !1871, metadata !"p", metadata !1872, i32 16777237, metadata !44, i32 0, metadata !2211} ; [ DW_TAG_arg_variable ] [p] [line 21]
!2213 = metadata !{i32 21, i32 0, metadata !1871, metadata !2211}
!2214 = metadata !{i32 786689, metadata !1871, metadata !"len", metadata !1872, i32 33554453, metadata !30, i32 0, metadata !2211} ; [ DW_TAG_arg_variable ] [len] [line 21]
!2215 = metadata !{i32 -1}                        ; [ DW_TAG_hi_user ]
!2216 = metadata !{i32 786688, metadata !1880, metadata !"crc", metadata !1872, i32 24, metadata !696, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [crc] [line 24]
!2217 = metadata !{i32 26, i32 0, metadata !1880, metadata !2211}
!2218 = metadata !{i32 28, i32 0, metadata !1880, metadata !2211}
!2219 = metadata !{i32 29, i32 0, metadata !2220, metadata !2211}
!2220 = metadata !{i32 786443, metadata !1880, i32 28, i32 0, metadata !1872, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_crc32.h]
!2221 = metadata !{i32 786688, metadata !1880, metadata !"c", metadata !1872, i32 23, metadata !45, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [c] [line 23]
!2222 = metadata !{i32 30, i32 0, metadata !2220, metadata !2211}
!2223 = metadata !{i32 31, i32 0, metadata !2220, metadata !2211}
!2224 = metadata !{i32 32, i32 0, metadata !2220, metadata !2211}
!2225 = metadata !{i32 34, i32 0, metadata !1880, metadata !2211}
!2226 = metadata !{i32 112, i32 0, metadata !2188, null}
!2227 = metadata !{i32 786689, metadata !1834, metadata !"limit", metadata !6, i32 16777427, metadata !505, i32 0, metadata !2187} ; [ DW_TAG_arg_variable ] [limit] [line 211]
!2228 = metadata !{i32 786689, metadata !1834, metadata !"hash", metadata !6, i32 33554643, metadata !26, i32 0, metadata !2187} ; [ DW_TAG_arg_variable ] [hash] [line 211]
!2229 = metadata !{i32 786689, metadata !1834, metadata !"data", metadata !6, i32 50331859, metadata !44, i32 0, metadata !2187} ; [ DW_TAG_arg_variable ] [data] [line 211]
!2230 = metadata !{i32 786689, metadata !1834, metadata !"len", metadata !6, i32 67109075, metadata !30, i32 0, metadata !2187} ; [ DW_TAG_arg_variable ] [len] [line 211]
!2231 = metadata !{i32 223, i32 0, metadata !1846, metadata !2187}
!2232 = metadata !{i32 786688, metadata !1846, metadata !"tp", metadata !6, i32 216, metadata !1820, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [tp] [line 216]
!2233 = metadata !{i32 224, i32 0, metadata !1846, metadata !2187}
!2234 = metadata !{metadata !"long", metadata !1958}
!2235 = metadata !{i32 786688, metadata !1846, metadata !"now", metadata !6, i32 217, metadata !342, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [now] [line 217]
!2236 = metadata !{i32 225, i32 0, metadata !1846, metadata !2187}
!2237 = metadata !{i32 786688, metadata !1846, metadata !"ctx", metadata !6, i32 221, metadata !540, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [ctx] [line 221]
!2238 = metadata !{i32 226, i32 0, metadata !1846, metadata !2187}
!2239 = metadata !{i32 227, i32 0, metadata !1846, metadata !2187}
!2240 = metadata !{i32 786688, metadata !1846, metadata !"sentinel", metadata !6, i32 220, metadata !266, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [sentinel] [line 220]
!2241 = metadata !{i32 228, i32 0, metadata !1846, metadata !2187}
!2242 = metadata !{i32 229, i32 0, metadata !2243, metadata !2187}
!2243 = metadata !{i32 786443, metadata !1846, i32 228, i32 0, metadata !6, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2244 = metadata !{i32 230, i32 0, metadata !2245, metadata !2187}
!2245 = metadata !{i32 786443, metadata !2243, i32 229, i32 0, metadata !6, i32 90} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2246 = metadata !{i32 231, i32 0, metadata !2245, metadata !2187}
!2247 = metadata !{i32 233, i32 0, metadata !2243, metadata !2187}
!2248 = metadata !{i32 234, i32 0, metadata !2249, metadata !2187}
!2249 = metadata !{i32 786443, metadata !2243, i32 233, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2250 = metadata !{i32 235, i32 0, metadata !2249, metadata !2187}
!2251 = metadata !{i32 238, i32 0, metadata !2243, metadata !2187}
!2252 = metadata !{i32 786688, metadata !1846, metadata !"lr", metadata !6, i32 222, metadata !617, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [lr] [line 222]
!2253 = metadata !{i32 239, i32 0, metadata !2243, metadata !2187}
!2254 = metadata !{i32 786688, metadata !1846, metadata !"rc", metadata !6, i32 214, metadata !472, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [rc] [line 214]
!2255 = metadata !{i32 240, i32 0, metadata !2243, metadata !2187}
!2256 = metadata !{i32 241, i32 0, metadata !2257, metadata !2187}
!2257 = metadata !{i32 786443, metadata !2243, i32 240, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2258 = metadata !{i32 242, i32 0, metadata !2257, metadata !2187}
!2259 = metadata !{i32 243, i32 0, metadata !2257, metadata !2187}
!2260 = metadata !{i32 244, i32 0, metadata !2257, metadata !2187}
!2261 = metadata !{i32 245, i32 0, metadata !2257, metadata !2187}
!2262 = metadata !{i32 246, i32 0, metadata !2257, metadata !2187}
!2263 = metadata !{i32 247, i32 0, metadata !2257, metadata !2187}
!2264 = metadata !{i32 786688, metadata !1846, metadata !"ms", metadata !6, i32 218, metadata !1795, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [ms] [line 218]
!2265 = metadata !{i32 248, i32 0, metadata !2257, metadata !2187}
!2266 = metadata !{i32 786688, metadata !1846, metadata !"excess", metadata !6, i32 215, metadata !472, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [excess] [line 215]
!2267 = metadata !{i32 249, i32 0, metadata !2257, metadata !2187}
!2268 = metadata !{i32 252, i32 0, metadata !2257, metadata !2187}
!2269 = metadata !{i32 253, i32 0, metadata !2257, metadata !2187}
!2270 = metadata !{i32 256, i32 0, metadata !2257, metadata !2187}
!2271 = metadata !{i32 257, i32 0, metadata !2272, metadata !2187}
!2272 = metadata !{i32 786443, metadata !2257, i32 256, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2273 = metadata !{i32 258, i32 0, metadata !2272, metadata !2187}
!2274 = metadata !{i32 259, i32 0, metadata !2272, metadata !2187}
!2275 = metadata !{i32 261, i32 0, metadata !2257, metadata !2187}
!2276 = metadata !{i32 262, i32 0, metadata !2257, metadata !2187}
!2277 = metadata !{i32 263, i32 0, metadata !2257, metadata !2187}
!2278 = metadata !{i32 265, i32 0, metadata !2243, metadata !2187}
!2279 = metadata !{i32 267, i32 0, metadata !1846, metadata !2187}
!2280 = metadata !{i32 268, i32 0, metadata !1846, metadata !2187}
!2281 = metadata !{i32 786688, metadata !1846, metadata !"size", metadata !6, i32 213, metadata !30, i32 0, metadata !2187} ; [ DW_TAG_auto_variable ] [size] [line 213]
!2282 = metadata !{i32 269, i32 0, metadata !1846, metadata !2187}
!2283 = metadata !{i32 270, i32 0, metadata !1846, metadata !2187}
!2284 = metadata !{i32 271, i32 0, metadata !1846, metadata !2187}
!2285 = metadata !{i32 272, i32 0, metadata !2286, metadata !2187}
!2286 = metadata !{i32 786443, metadata !1846, i32 271, i32 0, metadata !6, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2287 = metadata !{i32 273, i32 0, metadata !2286, metadata !2187}
!2288 = metadata !{i32 274, i32 0, metadata !2286, metadata !2187}
!2289 = metadata !{i32 278, i32 0, metadata !1846, metadata !2187}
!2290 = metadata !{i32 279, i32 0, metadata !1846, metadata !2187}
!2291 = metadata !{i32 280, i32 0, metadata !1846, metadata !2187}
!2292 = metadata !{i32 281, i32 0, metadata !1846, metadata !2187}
!2293 = metadata !{i32 282, i32 0, metadata !1846, metadata !2187}
!2294 = metadata !{i32 283, i32 0, metadata !1846, metadata !2187}
!2295 = metadata !{i32 284, i32 0, metadata !1846, metadata !2187}
!2296 = metadata !{i32 285, i32 0, metadata !1846, metadata !2187}
!2297 = metadata !{i32 286, i32 0, metadata !1846, metadata !2187}
!2298 = metadata !{i32 287, i32 0, metadata !1846, metadata !2187}
!2299 = metadata !{i32 293, i32 0, metadata !1846, metadata !2187}
!2300 = metadata !{i32 288, i32 0, metadata !1846, metadata !2187}
!2301 = metadata !{i32 289, i32 0, metadata !2302, metadata !2187}
!2302 = metadata !{i32 786443, metadata !1846, i32 288, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2303 = metadata !{i32 290, i32 0, metadata !2302, metadata !2187}
!2304 = metadata !{i32 291, i32 0, metadata !2302, metadata !2187}
!2305 = metadata !{i32 294, i32 0, metadata !1846, metadata !2187}
!2306 = metadata !{i32 295, i32 0, metadata !1846, metadata !2187}
!2307 = metadata !{i32 296, i32 0, metadata !1846, metadata !2187}
!2308 = metadata !{i32 114, i32 0, metadata !2188, null}
!2309 = metadata !{i32 116, i32 0, metadata !2188, null}
!2310 = metadata !{i32 120, i32 0, metadata !1773, null}
!2311 = metadata !{i32 123, i32 0, metadata !1773, null}
!2312 = metadata !{i32 124, i32 0, metadata !1773, null}
!2313 = metadata !{i32 126, i32 0, metadata !2192, null}
!2314 = metadata !{i32 129, i32 0, metadata !2193, null}
!2315 = metadata !{i32 130, i32 0, metadata !2316, null}
!2316 = metadata !{i32 786443, metadata !2193, i32 129, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2317 = metadata !{i32 131, i32 0, metadata !2316, null}
!2318 = metadata !{i32 134, i32 0, metadata !2316, null}
!2319 = metadata !{i32 135, i32 0, metadata !2316, null}
!2320 = metadata !{i32 136, i32 0, metadata !2316, null}
!2321 = metadata !{i32 137, i32 0, metadata !2316, null}
!2322 = metadata !{i32 138, i32 0, metadata !2316, null}
!2323 = metadata !{i32 786689, metadata !1807, metadata !"limits", metadata !6, i32 16777515, metadata !505, i32 0, metadata !2184} ; [ DW_TAG_arg_variable ] [limits] [line 299]
!2324 = metadata !{i32 786689, metadata !1807, metadata !"n", metadata !6, i32 33554731, metadata !26, i32 0, metadata !2184} ; [ DW_TAG_arg_variable ] [n] [line 299]
!2325 = metadata !{i32 309, i32 0, metadata !1818, metadata !2184}
!2326 = metadata !{i32 786688, metadata !1818, metadata !"excess", metadata !6, i32 301, metadata !472, i32 0, metadata !2184} ; [ DW_TAG_auto_variable ] [excess] [line 301]
!2327 = metadata !{i32 310, i32 0, metadata !1818, metadata !2184}
!2328 = metadata !{i32 314, i32 0, metadata !2329, metadata !2184}
!2329 = metadata !{i32 786443, metadata !1818, i32 313, i32 0, metadata !6, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2330 = metadata !{i32 315, i32 0, metadata !2329, metadata !2184}
!2331 = metadata !{i32 786688, metadata !1818, metadata !"max_delay", metadata !6, i32 305, metadata !342, i32 0, metadata !2184} ; [ DW_TAG_auto_variable ] [max_delay] [line 305]
!2332 = metadata !{i32 317, i32 0, metadata !1818, metadata !2184}
!2333 = metadata !{i32 318, i32 0, metadata !2334, metadata !2184}
!2334 = metadata !{i32 786443, metadata !1818, i32 317, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2335 = metadata !{i32 319, i32 0, metadata !2334, metadata !2184}
!2336 = metadata !{i32 786688, metadata !1818, metadata !"lr", metadata !6, i32 308, metadata !617, i32 0, metadata !2184} ; [ DW_TAG_auto_variable ] [lr] [line 308]
!2337 = metadata !{i32 320, i32 0, metadata !2334, metadata !2184}
!2338 = metadata !{i32 323, i32 0, metadata !2334, metadata !2184}
!2339 = metadata !{i32 324, i32 0, metadata !2334, metadata !2184}
!2340 = metadata !{i32 786688, metadata !1818, metadata !"tp", metadata !6, i32 302, metadata !1820, i32 0, metadata !2184} ; [ DW_TAG_auto_variable ] [tp] [line 302]
!2341 = metadata !{i32 325, i32 0, metadata !2334, metadata !2184}
!2342 = metadata !{i32 786688, metadata !1818, metadata !"now", metadata !6, i32 303, metadata !342, i32 0, metadata !2184} ; [ DW_TAG_auto_variable ] [now] [line 303]
!2343 = metadata !{i32 326, i32 0, metadata !2334, metadata !2184}
!2344 = metadata !{i32 786688, metadata !1818, metadata !"ms", metadata !6, i32 306, metadata !1795, i32 0, metadata !2184} ; [ DW_TAG_auto_variable ] [ms] [line 306]
!2345 = metadata !{i32 327, i32 0, metadata !2334, metadata !2184}
!2346 = metadata !{i32 328, i32 0, metadata !2334, metadata !2184}
!2347 = metadata !{i32 331, i32 0, metadata !2334, metadata !2184}
!2348 = metadata !{i32 332, i32 0, metadata !2334, metadata !2184}
!2349 = metadata !{i32 333, i32 0, metadata !2334, metadata !2184}
!2350 = metadata !{i32 334, i32 0, metadata !2334, metadata !2184}
!2351 = metadata !{i32 335, i32 0, metadata !2334, metadata !2184}
!2352 = metadata !{i32 336, i32 0, metadata !2334, metadata !2184}
!2353 = metadata !{i32 339, i32 0, metadata !2334, metadata !2184}
!2354 = metadata !{i32 786688, metadata !1818, metadata !"delay", metadata !6, i32 304, metadata !342, i32 0, metadata !2184} ; [ DW_TAG_auto_variable ] [delay] [line 304]
!2355 = metadata !{i32 340, i32 0, metadata !2334, metadata !2184}
!2356 = metadata !{i32 341, i32 0, metadata !2357, metadata !2184}
!2357 = metadata !{i32 786443, metadata !2334, i32 340, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2358 = metadata !{i32 342, i32 0, metadata !2357, metadata !2184}
!2359 = metadata !{i32 146, i32 0, metadata !1773, null}
!2360 = metadata !{i32 149, i32 0, metadata !1773, null}
!2361 = metadata !{i32 151, i32 0, metadata !1773, null}
!2362 = metadata !{i32 154, i32 0, metadata !1773, null}
!2363 = metadata !{i32 155, i32 0, metadata !1773, null}
!2364 = metadata !{i32 156, i32 0, metadata !1773, null}
!2365 = metadata !{i32 786689, metadata !1784, metadata !"ev", metadata !1785, i32 16777275, metadata !224, i32 0, metadata !2364} ; [ DW_TAG_arg_variable ] [ev] [line 59]
!2366 = metadata !{i32 59, i32 0, metadata !1784, metadata !2364}
!2367 = metadata !{i32 786689, metadata !1784, metadata !"timer", metadata !1785, i32 33554491, metadata !342, i32 0, metadata !2364} ; [ DW_TAG_arg_variable ] [timer] [line 59]
!2368 = metadata !{i32 64, i32 0, metadata !1793, metadata !2364}
!2369 = metadata !{i32 786688, metadata !1793, metadata !"key", metadata !1785, i32 61, metadata !342, i32 0, metadata !2364} ; [ DW_TAG_auto_variable ] [key] [line 61]
!2370 = metadata !{i32 66, i32 0, metadata !1793, metadata !2364}
!2371 = metadata !{i32 86, i32 0, metadata !1793, metadata !2364}
!2372 = metadata !{i32 74, i32 0, metadata !2373, metadata !2364}
!2373 = metadata !{i32 786443, metadata !1793, i32 66, i32 0, metadata !1785, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.h]
!2374 = metadata !{i32 786688, metadata !1793, metadata !"diff", metadata !1785, i32 62, metadata !1795, i32 0, metadata !2364} ; [ DW_TAG_auto_variable ] [diff] [line 62]
!2375 = metadata !{i32 76, i32 0, metadata !2373, metadata !2364}
!2376 = metadata !{i32 786689, metadata !1797, metadata !"ev", metadata !1785, i32 16777252, metadata !224, i32 0, metadata !2377} ; [ DW_TAG_arg_variable ] [ev] [line 36]
!2377 = metadata !{i32 83, i32 0, metadata !2373, metadata !2364}
!2378 = metadata !{i32 36, i32 0, metadata !1797, metadata !2377}
!2379 = metadata !{i32 44, i32 0, metadata !2380, metadata !2377}
!2380 = metadata !{i32 786443, metadata !1797, i32 37, i32 0, metadata !1785, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/event/ngx_event_timer.h]
!2381 = metadata !{i32 54, i32 0, metadata !2380, metadata !2377}
!2382 = metadata !{i32 84, i32 0, metadata !2373, metadata !2364}
!2383 = metadata !{i32 94, i32 0, metadata !1793, metadata !2364}
!2384 = metadata !{i32 98, i32 0, metadata !1793, metadata !2364}
!2385 = metadata !{i32 99, i32 0, metadata !1793, metadata !2364}
!2386 = metadata !{i32 158, i32 0, metadata !1773, null}
!2387 = metadata !{i32 160, i32 0, metadata !1801, null}
!2388 = metadata !{i32 164, i32 0, metadata !1806, null}
!2389 = metadata !{i32 165, i32 0, metadata !1806, null}
!2390 = metadata !{i32 166, i32 0, metadata !2391, null}
!2391 = metadata !{i32 786443, metadata !1806, i32 165, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2392 = metadata !{i32 167, i32 0, metadata !2393, null}
!2393 = metadata !{i32 786443, metadata !2391, i32 166, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2394 = metadata !{i32 168, i32 0, metadata !2393, null}
!2395 = metadata !{i32 171, i32 0, metadata !1806, null}
!2396 = metadata !{i32 172, i32 0, metadata !1806, null}
!2397 = metadata !{i32 173, i32 0, metadata !2398, null}
!2398 = metadata !{i32 786443, metadata !1806, i32 172, i32 0, metadata !6, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2399 = metadata !{i32 174, i32 0, metadata !2398, null}
!2400 = metadata !{i32 176, i32 0, metadata !1806, null}
!2401 = metadata !{i32 177, i32 0, metadata !1806, null}
!2402 = metadata !{i32 178, i32 0, metadata !1806, null}
!2403 = metadata !{i32 179, i32 0, metadata !1806, null}
!2404 = metadata !{i32 349, i32 0, metadata !1856, null}
!2405 = metadata !{i32 358, i32 0, metadata !1864, null}
!2406 = metadata !{i32 359, i32 0, metadata !1864, null}
!2407 = metadata !{i32 366, i32 0, metadata !2408, null}
!2408 = metadata !{i32 786443, metadata !1864, i32 365, i32 0, metadata !6, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2409 = metadata !{i32 365, i32 0, metadata !1864, null}
!2410 = metadata !{i32 393, i32 0, metadata !2408, null}
!2411 = metadata !{i32 379, i32 0, metadata !2412, null}
!2412 = metadata !{i32 786443, metadata !2408, i32 378, i32 0, metadata !6, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_limit_req_module.c]
!2413 = metadata !{i32 384, i32 0, metadata !2412, null}
!2414 = metadata !{i32 369, i32 0, metadata !2408, null}
!2415 = metadata !{i32 370, i32 0, metadata !2408, null}
!2416 = metadata !{i32 371, i32 0, metadata !2408, null}
!2417 = metadata !{i32 378, i32 0, metadata !2408, null}
!2418 = metadata !{i32 380, i32 0, metadata !2412, null}
!2419 = metadata !{i32 381, i32 0, metadata !2412, null}
!2420 = metadata !{i32 385, i32 0, metadata !2412, null}
!2421 = metadata !{i32 389, i32 0, metadata !2408, null}
!2422 = metadata !{i32 390, i32 0, metadata !2408, null}
!2423 = metadata !{i32 391, i32 0, metadata !2408, null}
!2424 = metadata !{i32 392, i32 0, metadata !2408, null}
!2425 = metadata !{i32 395, i32 0, metadata !1864, null}
