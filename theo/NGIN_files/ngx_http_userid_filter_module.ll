; ModuleID = 'src/http/modules/ngx_http_userid_filter_module.c'
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
%struct.ngx_time_t = type { i32, i32, i32 }
%struct.timeval = type { i32, i32 }
%struct.timezone = type { i32, i32 }
%struct.ngx_http_variable_s = type { %struct.ngx_str_t, void (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)*, i32, i32, i32 }
%struct.ngx_http_userid_conf_t = type { i32, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, i32, i8 }
%struct.ngx_http_userid_ctx_t = type { [4 x i32], [4 x i32], %struct.ngx_str_t, i32 }

@ngx_http_userid_filter_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* @ngx_http_userid_add_variables, i32 (%struct.ngx_conf_s*)* @ngx_http_userid_init, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_userid_create_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_merge_conf }, align 4
@ngx_http_userid_filter_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_userid_filter_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([9 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_userid_commands to [9 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* @ngx_http_userid_init_worker, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@0 = internal unnamed_addr constant [3 x i8] c"<<\00"
@ngx_pid = external global i32
@start_value = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"userid\00", align 1
@ngx_http_userid_state = internal global [5 x %struct.ngx_conf_enum_t] [%struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0) }, i32 0 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0) }, i32 1 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 2, i8* getelementptr inbounds ([3 x i8]* @.str18, i32 0, i32 0) }, i32 2 }, %struct.ngx_conf_enum_t { %struct.ngx_str_t { i32 2, i8* getelementptr inbounds ([3 x i8]* @.str19, i32 0, i32 0) }, i32 3 }, %struct.ngx_conf_enum_t zeroinitializer], align 4
@.str1 = private unnamed_addr constant [15 x i8] c"userid_service\00", align 1
@.str2 = private unnamed_addr constant [12 x i8] c"userid_name\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"userid_domain\00", align 1
@ngx_http_userid_domain_p = internal global i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_domain, align 4
@.str4 = private unnamed_addr constant [12 x i8] c"userid_path\00", align 1
@ngx_http_userid_path_p = internal global i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_path, align 4
@.str5 = private unnamed_addr constant [15 x i8] c"userid_expires\00", align 1
@.str6 = private unnamed_addr constant [11 x i8] c"userid_p3p\00", align 1
@ngx_http_userid_p3p_p = internal global i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_p3p, align 4
@.str7 = private unnamed_addr constant [12 x i8] c"userid_mark\00", align 1
@ngx_http_userid_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_enum_slot, i32 8, i32 0, i8* bitcast ([5 x %struct.ngx_conf_enum_t]* @ngx_http_userid_state to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 8, i32 4, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 11, i8* getelementptr inbounds ([12 x i8]* @.str2, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_slot, i32 8, i32 8, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 13, i8* getelementptr inbounds ([14 x i8]* @.str3, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_slot, i32 8, i32 16, i8* bitcast (i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_userid_domain_p to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 11, i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_slot, i32 8, i32 24, i8* bitcast (i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_userid_path_p to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str5, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_userid_expires, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str6, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_slot, i32 8, i32 32, i8* bitcast (i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_userid_p3p_p to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 11, i8* getelementptr inbounds ([12 x i8]* @.str7, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_userid_mark, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str8 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str9 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str10 = private unnamed_addr constant [53 x i8] c"value must be \22off\22 or a single letter, digit or \22=\22\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str13 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str14 = private unnamed_addr constant [14 x i8] c"invalid value\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"; path=\00", align 1
@.str16 = private unnamed_addr constant [10 x i8] c"; domain=\00", align 1
@.str17 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str18 = private unnamed_addr constant [3 x i8] c"v1\00", align 1
@.str19 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str20 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"; path=/\00", align 1
@1 = internal unnamed_addr constant [7 x i8] c"u_char\00"
@2 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@ngx_http_top_header_filter = external global i32 (%struct.ngx_http_request_s*)*
@ngx_http_next_header_filter = internal unnamed_addr global i32 (%struct.ngx_http_request_s*)* null, align 4
@expires = internal unnamed_addr constant [38 x i8] c"; expires=Thu, 31-Dec-37 23:55:55 GMT\00", align 1
@ngx_cached_time = external global %struct.ngx_time_t*
@.str22 = private unnamed_addr constant [11 x i8] c"Set-Cookie\00", align 1
@3 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@.str23 = private unnamed_addr constant [4 x i8] c"P3P\00", align 1
@ngx_http_userid_reset_index = internal unnamed_addr global i32 0, align 4
@.str24 = private unnamed_addr constant [50 x i8] c"userid cookie \22%V=%08XD%08XD%08XD%08XD\22 was reset\00", align 1
@sequencer_v1 = internal unnamed_addr global i32 1, align 4
@4 = internal unnamed_addr constant [7 x i8] c"time_t\00"
@5 = internal unnamed_addr constant [5 x i8] c"long\00"
@6 = internal unnamed_addr constant [9 x i8] c"uint32_t\00"
@sequencer_v2 = internal unnamed_addr global i32 50529026, align 4
@7 = internal unnamed_addr constant [3 x i8] c"+=\00"
@.str25 = private unnamed_addr constant [41 x i8] c"client sent too short userid cookie \22%V\22\00", align 1
@.str26 = private unnamed_addr constant [39 x i8] c"client sent invalid userid cookie \22%V\22\00", align 1
@ngx_http_userid_got = internal global %struct.ngx_str_t { i32 7, i8* getelementptr inbounds ([8 x i8]* @.str30, i32 0, i32 0) }, align 4
@ngx_http_userid_set = internal global %struct.ngx_str_t { i32 7, i8* getelementptr inbounds ([8 x i8]* @.str29, i32 0, i32 0) }, align 4
@ngx_http_userid_reset = internal global %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str27, i32 0, i32 0) }, align 4
@8 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@9 = internal unnamed_addr constant [4 x i8] c"int\00"
@10 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@11 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@ngx_http_variable_null_value = external global %struct.ngx_variable_value_t
@.str27 = private unnamed_addr constant [10 x i8] c"uid_reset\00", align 1
@12 = internal unnamed_addr constant [2 x i8] c"+\00"
@13 = internal unnamed_addr constant [2 x i8] c"-\00"
@14 = internal unnamed_addr constant [49 x i8] c"src/http/modules/ngx_http_userid_filter_module.c\00"
@.str28 = private unnamed_addr constant [24 x i8] c"%V=%08XD%08XD%08XD%08XD\00", align 1
@.str29 = private unnamed_addr constant [8 x i8] c"uid_set\00", align 1
@.str30 = private unnamed_addr constant [8 x i8] c"uid_got\00", align 1

define internal i32 @ngx_http_userid_init_worker(%struct.ngx_cycle_s* nocapture %cycle) nounwind {
entry:
  %tp = alloca %struct.timeval, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_cycle_s* %cycle}, i64 0, metadata !426), !dbg !1930
  call void @llvm.dbg.declare(metadata !{%struct.timeval* %tp}, metadata !427), !dbg !1931
  %call = call i32 @gettimeofday(%struct.timeval* %tp, %struct.timezone* null) nounwind, !dbg !1932
  %tv_usec = getelementptr inbounds %struct.timeval* %tp, i32 0, i32 1, !dbg !1933
  %0 = load i32* %tv_usec, align 4, !dbg !1933, !tbaa !1934
  %div = sdiv i32 %0, 20, !dbg !1933
  %1 = icmp ult i32 %div, 32768, !dbg !1933
  br i1 %1, label %cont4, label %ioc_bb3, !dbg !1933

ioc_bb3:                                          ; preds = %entry
  %2 = sext i32 %div to i64, !dbg !1933
  call void @__ioc_report_shl_strict(i32 586, i32 34, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @0, i32 0, i32 0), i64 %2, i64 16, i8 13) nounwind, !dbg !1933
  br label %cont4, !dbg !1933

cont4:                                            ; preds = %ioc_bb3, %entry
  %shl = shl i32 %div, 16, !dbg !1933
  %3 = load i32* @ngx_pid, align 4, !dbg !1933, !tbaa !1937
  %or5 = or i32 %3, %shl, !dbg !1933
  %4 = icmp sgt i32 %or5, -1, !dbg !1933
  br i1 %4, label %cont7, label %ioc_bb6, !dbg !1933

ioc_bb6:                                          ; preds = %cont4
  %5 = sext i32 %or5 to i64, !dbg !1933
  call void @__ioc_report_conversion(i32 586, i32 17, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %5, i8 1) nounwind, !dbg !1933
  br label %cont7, !dbg !1933

cont7:                                            ; preds = %ioc_bb6, %cont4
  store i32 %or5, i32* @start_value, align 4, !dbg !1933, !tbaa !1937
  ret i32 0, !dbg !1938
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) nounwind

declare void @__ioc_report_shl_strict(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i8* @ngx_conf_set_enum_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_num_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_str_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

define internal i8* @ngx_http_userid_expires(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !523), !dbg !1939
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !524), !dbg !1939
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !525), !dbg !1939
  %expires = getelementptr inbounds i8* %conf, i32 40, !dbg !1940
  %0 = bitcast i8* %expires to i32*, !dbg !1940
  %1 = load i32* %0, align 4, !dbg !1940, !tbaa !1934
  %cmp = icmp eq i32 %1, -1, !dbg !1940
  br i1 %cmp, label %if.end, label %return, !dbg !1940

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1941
  %2 = load %struct.ngx_array_s** %args, align 4, !dbg !1941, !tbaa !1942
  %elts = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 0, !dbg !1941
  %3 = load i8** %elts, align 4, !dbg !1941, !tbaa !1942
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str13 to i32)), !dbg !1943
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !1943
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !1943
  br i1 %6, label %ioc_bb1, label %cont4, !dbg !1943

ioc_bb1:                                          ; preds = %if.end
  tail call void @__ioc_report_sub_overflow(i32 536, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str13 to i32) to i64), i8 5) nounwind, !dbg !1943
  br label %cont4, !dbg !1943

cont4:                                            ; preds = %ioc_bb1, %if.end
  %cmp5 = icmp eq i32 %5, 1, !dbg !1943
  %data = getelementptr inbounds i8* %3, i32 12, !dbg !1944
  %7 = bitcast i8* %data to i8**, !dbg !1944
  %8 = load i8** %7, align 4, !dbg !1944, !tbaa !1942
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !1943

cond.true:                                        ; preds = %cont4
  tail call void @llvm.dbg.value(metadata !1945, i64 0, metadata !531), !dbg !1943
  tail call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !532), !dbg !1944
  %9 = load i8* %8, align 1, !dbg !1944, !tbaa !1935
  %conv = zext i8 %9 to i32, !dbg !1944
  %10 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 109), !dbg !1944
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !1944
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !1944
  br i1 %12, label %ioc_bb11, label %land.lhs.true17, !dbg !1944

ioc_bb11:                                         ; preds = %cond.true
  %13 = zext i8 %9 to i64, !dbg !1944
  tail call void @__ioc_report_sub_overflow(i32 536, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %13, i64 109, i8 13) nounwind, !dbg !1944
  br label %land.lhs.true17, !dbg !1944

land.lhs.true17:                                  ; preds = %cond.true, %ioc_bb11
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !534), !dbg !1944
  %cmp18 = icmp eq i32 %11, 0, !dbg !1944
  br i1 %cmp18, label %if.then20, label %if.end61, !dbg !1944

if.then20:                                        ; preds = %land.lhs.true17
  %arrayidx21 = getelementptr inbounds i8* %8, i32 1, !dbg !1946
  %14 = load i8* %arrayidx21, align 1, !dbg !1946, !tbaa !1935
  %conv22 = zext i8 %14 to i32, !dbg !1946
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv22, i32 97), !dbg !1946
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !1946
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !1946
  br i1 %17, label %ioc_bb24, label %land.lhs.true30, !dbg !1946

ioc_bb24:                                         ; preds = %if.then20
  %18 = zext i8 %14 to i64, !dbg !1946
  tail call void @__ioc_report_sub_overflow(i32 536, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %18, i64 97, i8 13) nounwind, !dbg !1946
  br label %land.lhs.true30, !dbg !1946

land.lhs.true30:                                  ; preds = %if.then20, %ioc_bb24
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !534), !dbg !1946
  %cmp31 = icmp eq i32 %16, 0, !dbg !1946
  br i1 %cmp31, label %if.then33, label %if.end61, !dbg !1946

if.then33:                                        ; preds = %land.lhs.true30
  %arrayidx34 = getelementptr inbounds i8* %8, i32 2, !dbg !1948
  %19 = load i8* %arrayidx34, align 1, !dbg !1948, !tbaa !1935
  %conv35 = zext i8 %19 to i32, !dbg !1948
  %20 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv35, i32 120), !dbg !1948
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1948
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1948
  br i1 %22, label %ioc_bb37, label %land.lhs.true43, !dbg !1948

ioc_bb37:                                         ; preds = %if.then33
  %23 = zext i8 %19 to i64, !dbg !1948
  tail call void @__ioc_report_sub_overflow(i32 536, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %23, i64 120, i8 13) nounwind, !dbg !1948
  br label %land.lhs.true43, !dbg !1948

land.lhs.true43:                                  ; preds = %if.then33, %ioc_bb37
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !534), !dbg !1948
  %cmp44 = icmp eq i32 %21, 0, !dbg !1948
  br i1 %cmp44, label %if.then46, label %if.end61, !dbg !1948

if.then46:                                        ; preds = %land.lhs.true43
  %arrayidx47 = getelementptr inbounds i8* %8, i32 3, !dbg !1948
  %24 = load i8* %arrayidx47, align 1, !dbg !1948, !tbaa !1935
  %conv48 = zext i8 %24 to i32, !dbg !1948
  tail call void @llvm.dbg.value(metadata !{i32 %conv48}, i64 0, metadata !534), !dbg !1948
  br label %cond.end, !dbg !1948

cond.false:                                       ; preds = %cont4
  %call = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str13, i32 0, i32 0)) nounwind, !dbg !1948
  br label %cond.end, !dbg !1948

cond.end:                                         ; preds = %if.then46, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ %conv48, %if.then46 ], !dbg !1948
  %cmp57 = icmp eq i32 %cond, 0, !dbg !1948
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !1948

if.then59:                                        ; preds = %cond.end
  store i32 2145916555, i32* %0, align 4, !dbg !1950, !tbaa !1934
  br label %return, !dbg !1952

if.end61:                                         ; preds = %land.lhs.true17, %land.lhs.true30, %land.lhs.true43, %cond.end
  %25 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str9 to i32)), !dbg !1953
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1953
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !1953
  br i1 %27, label %ioc_bb64, label %cont67, !dbg !1953

ioc_bb64:                                         ; preds = %if.end61
  tail call void @__ioc_report_sub_overflow(i32 540, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str9 to i32) to i64), i8 5) nounwind, !dbg !1953
  br label %cont67, !dbg !1953

cont67:                                           ; preds = %if.end61, %ioc_bb64
  %cmp68 = icmp eq i32 %26, 1, !dbg !1953
  %28 = load i8** %7, align 4, !dbg !1954, !tbaa !1942
  br i1 %cmp68, label %cond.true75, label %cond.false127, !dbg !1953

cond.true75:                                      ; preds = %cont67
  tail call void @llvm.dbg.value(metadata !1945, i64 0, metadata !537), !dbg !1953
  tail call void @llvm.dbg.value(metadata !{i8* %28}, i64 0, metadata !538), !dbg !1954
  %29 = load i8* %28, align 1, !dbg !1954, !tbaa !1935
  %conv81 = zext i8 %29 to i32, !dbg !1954
  %30 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv81, i32 111), !dbg !1954
  %31 = extractvalue { i32, i1 } %30, 0, !dbg !1954
  %32 = extractvalue { i32, i1 } %30, 1, !dbg !1954
  br i1 %32, label %ioc_bb83, label %land.lhs.true89, !dbg !1954

ioc_bb83:                                         ; preds = %cond.true75
  %33 = zext i8 %29 to i64, !dbg !1954
  tail call void @__ioc_report_sub_overflow(i32 540, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %33, i64 111, i8 13) nounwind, !dbg !1954
  br label %land.lhs.true89, !dbg !1954

land.lhs.true89:                                  ; preds = %cond.true75, %ioc_bb83
  tail call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !540), !dbg !1954
  %cmp90 = icmp eq i32 %31, 0, !dbg !1954
  br i1 %cmp90, label %if.then92, label %cont140, !dbg !1954

if.then92:                                        ; preds = %land.lhs.true89
  %arrayidx93 = getelementptr inbounds i8* %28, i32 1, !dbg !1955
  %34 = load i8* %arrayidx93, align 1, !dbg !1955, !tbaa !1935
  %conv94 = zext i8 %34 to i32, !dbg !1955
  %35 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv94, i32 102), !dbg !1955
  %36 = extractvalue { i32, i1 } %35, 0, !dbg !1955
  %37 = extractvalue { i32, i1 } %35, 1, !dbg !1955
  br i1 %37, label %ioc_bb96, label %land.lhs.true102, !dbg !1955

ioc_bb96:                                         ; preds = %if.then92
  %38 = zext i8 %34 to i64, !dbg !1955
  tail call void @__ioc_report_sub_overflow(i32 540, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %38, i64 102, i8 13) nounwind, !dbg !1955
  br label %land.lhs.true102, !dbg !1955

land.lhs.true102:                                 ; preds = %if.then92, %ioc_bb96
  tail call void @llvm.dbg.value(metadata !{i32 %36}, i64 0, metadata !540), !dbg !1955
  %cmp103 = icmp eq i32 %36, 0, !dbg !1955
  br i1 %cmp103, label %if.then105, label %cont140, !dbg !1955

if.then105:                                       ; preds = %land.lhs.true102
  %arrayidx106 = getelementptr inbounds i8* %28, i32 2, !dbg !1957
  %39 = load i8* %arrayidx106, align 1, !dbg !1957, !tbaa !1935
  %conv107 = zext i8 %39 to i32, !dbg !1957
  %40 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv107, i32 102), !dbg !1957
  %41 = extractvalue { i32, i1 } %40, 0, !dbg !1957
  %42 = extractvalue { i32, i1 } %40, 1, !dbg !1957
  br i1 %42, label %ioc_bb109, label %land.lhs.true115, !dbg !1957

ioc_bb109:                                        ; preds = %if.then105
  %43 = zext i8 %39 to i64, !dbg !1957
  tail call void @__ioc_report_sub_overflow(i32 540, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %43, i64 102, i8 13) nounwind, !dbg !1957
  br label %land.lhs.true115, !dbg !1957

land.lhs.true115:                                 ; preds = %if.then105, %ioc_bb109
  tail call void @llvm.dbg.value(metadata !{i32 %41}, i64 0, metadata !540), !dbg !1957
  %cmp116 = icmp eq i32 %41, 0, !dbg !1957
  br i1 %cmp116, label %if.then118, label %cont140, !dbg !1957

if.then118:                                       ; preds = %land.lhs.true115
  %arrayidx119 = getelementptr inbounds i8* %28, i32 3, !dbg !1957
  %44 = load i8* %arrayidx119, align 1, !dbg !1957, !tbaa !1935
  %conv120 = zext i8 %44 to i32, !dbg !1957
  tail call void @llvm.dbg.value(metadata !{i32 %conv120}, i64 0, metadata !540), !dbg !1957
  br label %cond.end131, !dbg !1957

cond.false127:                                    ; preds = %cont67
  %call130 = tail call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !1957
  br label %cond.end131, !dbg !1957

cond.end131:                                      ; preds = %if.then118, %cond.false127
  %cond132 = phi i32 [ %call130, %cond.false127 ], [ %conv120, %if.then118 ], !dbg !1957
  %cmp133 = icmp eq i32 %cond132, 0, !dbg !1957
  br i1 %cmp133, label %if.then135, label %cont140, !dbg !1957

if.then135:                                       ; preds = %cond.end131
  store i32 0, i32* %0, align 4, !dbg !1959, !tbaa !1934
  br label %return, !dbg !1961

cont140:                                          ; preds = %land.lhs.true89, %land.lhs.true102, %land.lhs.true115, %cond.end131
  %arrayidx138 = getelementptr inbounds i8* %3, i32 8, !dbg !1962
  %45 = bitcast i8* %arrayidx138 to %struct.ngx_str_t*, !dbg !1962
  %call141 = tail call i32 @ngx_parse_time(%struct.ngx_str_t* %45, i32 1) nounwind, !dbg !1962
  store i32 %call141, i32* %0, align 4, !dbg !1962, !tbaa !1934
  %cmp146 = icmp eq i32 %call141, -1, !dbg !1963
  %. = select i1 %cmp146, i8* getelementptr inbounds ([14 x i8]* @.str14, i32 0, i32 0), i8* null, !dbg !1963
  ret i8* %., !dbg !1963

return:                                           ; preds = %entry, %if.then135, %if.then59
  %retval.0 = phi i8* [ null, %if.then59 ], [ null, %if.then135 ], [ getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0), %entry ]
  ret i8* %retval.0, !dbg !1964
}

define internal i8* @ngx_http_userid_mark(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !476), !dbg !1965
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !477), !dbg !1965
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !478), !dbg !1965
  %0 = getelementptr inbounds i8* %conf, i32 44, !dbg !1966
  %1 = load i8* %0, align 1, !dbg !1966, !tbaa !1935
  tail call void @__ioc_report_conversion(i32 565, i32 34, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1966
  %cmp = icmp eq i8 %1, -1, !dbg !1966
  br i1 %cmp, label %if.end, label %return, !dbg !1966

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1967
  %2 = load %struct.ngx_array_s** %args, align 4, !dbg !1967, !tbaa !1942
  %elts = getelementptr inbounds %struct.ngx_array_s* %2, i32 0, i32 0, !dbg !1967
  %3 = load i8** %elts, align 4, !dbg !1967, !tbaa !1942
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str9 to i32)), !dbg !1968
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !1968
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !1968
  br i1 %6, label %ioc_bb2, label %cont5, !dbg !1968

ioc_bb2:                                          ; preds = %if.end
  tail call void @__ioc_report_sub_overflow(i32 569, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str9 to i32) to i64), i8 5) nounwind, !dbg !1968
  br label %cont5, !dbg !1968

cont5:                                            ; preds = %ioc_bb2, %if.end
  %cmp6 = icmp eq i32 %5, 1, !dbg !1968
  %data = getelementptr inbounds i8* %3, i32 12, !dbg !1969
  %7 = bitcast i8* %data to i8**, !dbg !1969
  %8 = load i8** %7, align 4, !dbg !1969, !tbaa !1942
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !1968

cond.true:                                        ; preds = %cont5
  tail call void @llvm.dbg.value(metadata !1945, i64 0, metadata !498), !dbg !1968
  tail call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !499), !dbg !1969
  %9 = load i8* %8, align 1, !dbg !1969, !tbaa !1935
  %conv13 = zext i8 %9 to i32, !dbg !1969
  %10 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv13, i32 111), !dbg !1969
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !1969
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !1969
  br i1 %12, label %ioc_bb15, label %land.lhs.true21, !dbg !1969

ioc_bb15:                                         ; preds = %cond.true
  %13 = zext i8 %9 to i64, !dbg !1969
  tail call void @__ioc_report_sub_overflow(i32 569, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %13, i64 111, i8 13) nounwind, !dbg !1969
  br label %land.lhs.true21, !dbg !1969

land.lhs.true21:                                  ; preds = %cond.true, %ioc_bb15
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !503), !dbg !1969
  %cmp22 = icmp eq i32 %11, 0, !dbg !1969
  br i1 %cmp22, label %if.then24, label %cont70, !dbg !1969

if.then24:                                        ; preds = %land.lhs.true21
  %arrayidx25 = getelementptr inbounds i8* %8, i32 1, !dbg !1970
  %14 = load i8* %arrayidx25, align 1, !dbg !1970, !tbaa !1935
  %conv26 = zext i8 %14 to i32, !dbg !1970
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv26, i32 102), !dbg !1970
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !1970
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !1970
  br i1 %17, label %ioc_bb28, label %land.lhs.true34, !dbg !1970

ioc_bb28:                                         ; preds = %if.then24
  %18 = zext i8 %14 to i64, !dbg !1970
  tail call void @__ioc_report_sub_overflow(i32 569, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %18, i64 102, i8 13) nounwind, !dbg !1970
  br label %land.lhs.true34, !dbg !1970

land.lhs.true34:                                  ; preds = %if.then24, %ioc_bb28
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !503), !dbg !1970
  %cmp35 = icmp eq i32 %16, 0, !dbg !1970
  br i1 %cmp35, label %if.then37, label %cont70, !dbg !1970

if.then37:                                        ; preds = %land.lhs.true34
  %arrayidx38 = getelementptr inbounds i8* %8, i32 2, !dbg !1972
  %19 = load i8* %arrayidx38, align 1, !dbg !1972, !tbaa !1935
  %conv39 = zext i8 %19 to i32, !dbg !1972
  %20 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv39, i32 102), !dbg !1972
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1972
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1972
  br i1 %22, label %ioc_bb41, label %land.lhs.true47, !dbg !1972

ioc_bb41:                                         ; preds = %if.then37
  %23 = zext i8 %19 to i64, !dbg !1972
  tail call void @__ioc_report_sub_overflow(i32 569, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %23, i64 102, i8 13) nounwind, !dbg !1972
  br label %land.lhs.true47, !dbg !1972

land.lhs.true47:                                  ; preds = %if.then37, %ioc_bb41
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !503), !dbg !1972
  %cmp48 = icmp eq i32 %21, 0, !dbg !1972
  br i1 %cmp48, label %if.then50, label %cont70, !dbg !1972

if.then50:                                        ; preds = %land.lhs.true47
  %arrayidx51 = getelementptr inbounds i8* %8, i32 3, !dbg !1972
  %24 = load i8* %arrayidx51, align 1, !dbg !1972, !tbaa !1935
  %conv52 = zext i8 %24 to i32, !dbg !1972
  tail call void @llvm.dbg.value(metadata !{i32 %conv52}, i64 0, metadata !503), !dbg !1972
  br label %cond.end, !dbg !1972

cond.false:                                       ; preds = %cont5
  %call = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str9, i32 0, i32 0)) nounwind, !dbg !1972
  br label %cond.end, !dbg !1972

cond.end:                                         ; preds = %if.then50, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ %conv52, %if.then50 ], !dbg !1972
  %cmp61 = icmp eq i32 %cond, 0, !dbg !1972
  br i1 %cmp61, label %cont65, label %cont70, !dbg !1972

cont65:                                           ; preds = %cond.end
  store i8 0, i8* %0, align 1, !dbg !1974, !tbaa !1935
  br label %return, !dbg !1976

cont70:                                           ; preds = %land.lhs.true21, %land.lhs.true34, %land.lhs.true47, %cond.end
  %arrayidx68 = getelementptr inbounds i8* %3, i32 8, !dbg !1977
  %len = bitcast i8* %arrayidx68 to i32*, !dbg !1977
  %25 = load i32* %len, align 4, !dbg !1977, !tbaa !1937
  %cmp71 = icmp eq i32 %25, 1, !dbg !1977
  br i1 %cmp71, label %lor.lhs.false, label %return, !dbg !1977

lor.lhs.false:                                    ; preds = %cont70
  %26 = load i8** %7, align 4, !dbg !1977, !tbaa !1942
  %27 = load i8* %26, align 1, !dbg !1977, !tbaa !1935
  %.off = add i8 %27, -48, !dbg !1977
  %28 = icmp ult i8 %.off, 10, !dbg !1977
  %.off152 = add i8 %27, -65, !dbg !1977
  %29 = icmp ult i8 %.off152, 26, !dbg !1977
  %or.cond = or i1 %28, %29, !dbg !1977
  br i1 %or.cond, label %if.end122, label %lor.lhs.false100, !dbg !1977

lor.lhs.false100:                                 ; preds = %lor.lhs.false
  %.off153 = add i8 %27, -97, !dbg !1977
  %30 = icmp ult i8 %.off153, 26, !dbg !1977
  %cmp119 = icmp eq i8 %27, 61, !dbg !1977
  %or.cond151 = or i1 %30, %cmp119, !dbg !1977
  br i1 %or.cond151, label %if.end122, label %return, !dbg !1977

if.end122:                                        ; preds = %lor.lhs.false100, %lor.lhs.false
  store i8 %27, i8* %0, align 1, !dbg !1978, !tbaa !1935
  br label %return, !dbg !1979

return:                                           ; preds = %lor.lhs.false100, %cont70, %entry, %if.end122, %cont65
  %retval.0 = phi i8* [ null, %cont65 ], [ null, %if.end122 ], [ getelementptr inbounds ([13 x i8]* @.str8, i32 0, i32 0), %entry ], [ getelementptr inbounds ([53 x i8]* @.str10, i32 0, i32 0), %cont70 ], [ getelementptr inbounds ([53 x i8]* @.str10, i32 0, i32 0), %lor.lhs.false100 ]
  ret i8* %retval.0, !dbg !1980
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

define internal noalias i8* @ngx_http_userid_p3p(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %post, i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !509), !dbg !1981
  tail call void @llvm.dbg.value(metadata !{i8* %post}, i64 0, metadata !510), !dbg !1981
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !511), !dbg !1981
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str11 to i32)), !dbg !1982
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !1982
  br i1 %1, label %ioc_bb, label %cont2, !dbg !1982

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_sub_overflow(i32 554, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str11 to i32) to i64), i8 5) nounwind, !dbg !1982
  br label %cont2, !dbg !1982

cont2:                                            ; preds = %ioc_bb, %entry
  %data50 = getelementptr inbounds i8* %data, i32 4, !dbg !1983
  %2 = bitcast i8* %data50 to i8**, !dbg !1983
  %3 = load i8** %2, align 4, !dbg !1983, !tbaa !1942
  %call = tail call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !1983
  %cmp51 = icmp eq i32 %call, 0, !dbg !1983
  br i1 %cmp51, label %cont57, label %if.end59, !dbg !1983

cont57:                                           ; preds = %cont2
  %len = bitcast i8* %data to i32*, !dbg !1986
  store i32 0, i32* %len, align 4, !dbg !1986, !tbaa !1937
  store i8* getelementptr inbounds ([1 x i8]* @.str12, i32 0, i32 0), i8** %2, align 4, !dbg !1988, !tbaa !1942
  br label %if.end59, !dbg !1989

if.end59:                                         ; preds = %cont57, %cont2
  ret i8* null, !dbg !1990
}

declare i32 @ngx_parse_time(%struct.ngx_str_t*, i32)

define internal i8* @ngx_http_userid_path(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %post, i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !544), !dbg !1991
  tail call void @llvm.dbg.value(metadata !{i8* %post}, i64 0, metadata !545), !dbg !1991
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !546), !dbg !1991
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1992
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1992, !tbaa !1942
  %len = bitcast i8* %data to i32*, !dbg !1992
  %1 = load i32* %len, align 4, !dbg !1992, !tbaa !1937
  %2 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 7), !dbg !1992
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !1992
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !1992
  br i1 %4, label %ioc_bb3, label %cont4, !dbg !1992

ioc_bb3:                                          ; preds = %entry
  %5 = zext i32 %1 to i64, !dbg !1992
  tail call void @__ioc_report_add_overflow(i32 517, i32 55, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 7, i64 %5, i8 5) nounwind, !dbg !1992
  br label %cont4, !dbg !1992

cont4:                                            ; preds = %entry, %ioc_bb3
  %call = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %0, i32 %3) nounwind, !dbg !1992
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !550), !dbg !1992
  %cmp = icmp eq i8* %call, null, !dbg !1993
  br i1 %cmp, label %return, label %cont10, !dbg !1993

cont10:                                           ; preds = %cont4
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call, i8* getelementptr inbounds ([8 x i8]* @.str15, i32 0, i32 0), i32 7, i32 1, i1 false), !dbg !1994
  %add.ptr = getelementptr inbounds i8* %call, i32 7, !dbg !1994
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !549), !dbg !1994
  %data15 = getelementptr inbounds i8* %data, i32 4, !dbg !1995
  %6 = bitcast i8* %data15 to i8**, !dbg !1995
  %7 = load i8** %6, align 4, !dbg !1995, !tbaa !1942
  %8 = load i32* %len, align 4, !dbg !1995, !tbaa !1937
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* %7, i32 %8, i32 1, i1 false), !dbg !1995
  %9 = load i32* %len, align 4, !dbg !1996, !tbaa !1937
  %10 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %9, i32 7), !dbg !1996
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !1996
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !1996
  br i1 %12, label %ioc_bb22, label %cont23, !dbg !1996

ioc_bb22:                                         ; preds = %cont10
  %13 = zext i32 %9 to i64, !dbg !1996
  tail call void @__ioc_report_add_overflow(i32 523, i32 15, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %13, i64 7, i8 5) nounwind, !dbg !1996
  br label %cont23, !dbg !1996

cont23:                                           ; preds = %cont10, %ioc_bb22
  store i32 %11, i32* %len, align 4, !dbg !1996, !tbaa !1937
  store i8* %call, i8** %6, align 4, !dbg !1997, !tbaa !1942
  br label %return, !dbg !1998

return:                                           ; preds = %cont4, %cont23
  %retval.0 = phi i8* [ null, %cont23 ], [ inttoptr (i32 -1 to i8*), %cont4 ]
  ret i8* %retval.0, !dbg !1999
}

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

define internal i8* @ngx_http_userid_domain(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %post, i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !554), !dbg !2000
  tail call void @llvm.dbg.value(metadata !{i8* %post}, i64 0, metadata !555), !dbg !2000
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !556), !dbg !2000
  %0 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str11 to i32)), !dbg !2001
  %1 = extractvalue { i32, i1 } %0, 1, !dbg !2001
  br i1 %1, label %ioc_bb, label %cont2, !dbg !2001

ioc_bb:                                           ; preds = %entry
  tail call void @__ioc_report_sub_overflow(i32 496, i32 7, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str11 to i32) to i64), i8 5) nounwind, !dbg !2001
  br label %cont2, !dbg !2001

cont2:                                            ; preds = %ioc_bb, %entry
  %data50 = getelementptr inbounds i8* %data, i32 4, !dbg !2002
  %2 = bitcast i8* %data50 to i8**, !dbg !2002
  %3 = load i8** %2, align 4, !dbg !2002, !tbaa !1942
  %call = tail call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([5 x i8]* @.str11, i32 0, i32 0)) nounwind, !dbg !2002
  %cmp51 = icmp eq i32 %call, 0, !dbg !2002
  br i1 %cmp51, label %cont57, label %if.end59, !dbg !2002

cont57:                                           ; preds = %cont2
  %len = bitcast i8* %data to i32*, !dbg !2005
  store i32 0, i32* %len, align 4, !dbg !2005, !tbaa !1937
  store i8* getelementptr inbounds ([1 x i8]* @.str12, i32 0, i32 0), i8** %2, align 4, !dbg !2007, !tbaa !1942
  br label %return, !dbg !2008

if.end59:                                         ; preds = %cont2
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2009
  %4 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2009, !tbaa !1942
  %len64 = bitcast i8* %data to i32*, !dbg !2009
  %5 = load i32* %len64, align 4, !dbg !2009, !tbaa !1937
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %5, i32 9), !dbg !2009
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !2009
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !2009
  br i1 %8, label %ioc_bb65, label %cont66, !dbg !2009

ioc_bb65:                                         ; preds = %if.end59
  %9 = zext i32 %5 to i64, !dbg !2009
  tail call void @__ioc_report_add_overflow(i32 501, i32 57, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 9, i64 %9, i8 5) nounwind, !dbg !2009
  br label %cont66, !dbg !2009

cont66:                                           ; preds = %if.end59, %ioc_bb65
  %call67 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %4, i32 %7) nounwind, !dbg !2009
  tail call void @llvm.dbg.value(metadata !{i8* %call67}, i64 0, metadata !560), !dbg !2009
  %cmp68 = icmp eq i8* %call67, null, !dbg !2010
  br i1 %cmp68, label %return, label %cont77, !dbg !2010

cont77:                                           ; preds = %cont66
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call67, i8* getelementptr inbounds ([10 x i8]* @.str16, i32 0, i32 0), i32 9, i32 1, i1 false), !dbg !2011
  %add.ptr = getelementptr inbounds i8* %call67, i32 9, !dbg !2011
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !559), !dbg !2011
  %10 = load i8** %2, align 4, !dbg !2012, !tbaa !1942
  %11 = load i32* %len64, align 4, !dbg !2012, !tbaa !1937
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr, i8* %10, i32 %11, i32 1, i1 false), !dbg !2012
  %12 = load i32* %len64, align 4, !dbg !2013, !tbaa !1937
  %13 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %12, i32 9), !dbg !2013
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !2013
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !2013
  br i1 %15, label %ioc_bb89, label %cont90, !dbg !2013

ioc_bb89:                                         ; preds = %cont77
  %16 = zext i32 %12 to i64, !dbg !2013
  tail call void @__ioc_report_add_overflow(i32 507, i32 17, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %16, i64 9, i8 5) nounwind, !dbg !2013
  br label %cont90, !dbg !2013

cont90:                                           ; preds = %cont77, %ioc_bb89
  store i32 %14, i32* %len64, align 4, !dbg !2013, !tbaa !1937
  store i8* %call67, i8** %2, align 4, !dbg !2014, !tbaa !1942
  br label %return, !dbg !2015

return:                                           ; preds = %cont66, %cont90, %cont57
  %retval.0 = phi i8* [ null, %cont57 ], [ null, %cont90 ], [ inttoptr (i32 -1 to i8*), %cont66 ]
  ret i8* %retval.0, !dbg !2016
}

define internal i32 @ngx_http_userid_add_variables(%struct.ngx_conf_s* %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1788), !dbg !2017
  %call = tail call %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* @ngx_http_userid_got, i32 0) nounwind, !dbg !2018
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %call}, i64 0, metadata !1791), !dbg !2018
  %cmp = icmp eq %struct.ngx_http_variable_s* %call, null, !dbg !2019
  br i1 %cmp, label %return, label %if.end, !dbg !2019

if.end:                                           ; preds = %entry
  %get_handler = getelementptr inbounds %struct.ngx_http_variable_s* %call, i32 0, i32 2, !dbg !2020
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_userid_got_variable, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler, align 4, !dbg !2020, !tbaa !1942
  %call5 = tail call %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* @ngx_http_userid_set, i32 0) nounwind, !dbg !2021
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %call5}, i64 0, metadata !1791), !dbg !2021
  %cmp6 = icmp eq %struct.ngx_http_variable_s* %call5, null, !dbg !2022
  br i1 %cmp6, label %return, label %if.end10, !dbg !2022

if.end10:                                         ; preds = %if.end
  %get_handler11 = getelementptr inbounds %struct.ngx_http_variable_s* %call5, i32 0, i32 2, !dbg !2023
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_userid_set_variable, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler11, align 4, !dbg !2023, !tbaa !1942
  %call14 = tail call %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* @ngx_http_userid_reset, i32 1) nounwind, !dbg !2024
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %call14}, i64 0, metadata !1791), !dbg !2024
  %cmp15 = icmp eq %struct.ngx_http_variable_s* %call14, null, !dbg !2025
  br i1 %cmp15, label %return, label %if.end19, !dbg !2025

if.end19:                                         ; preds = %if.end10
  %get_handler20 = getelementptr inbounds %struct.ngx_http_variable_s* %call14, i32 0, i32 2, !dbg !2026
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_userid_reset_variable, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler20, align 4, !dbg !2026, !tbaa !1942
  %call21 = tail call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* @ngx_http_userid_reset) nounwind, !dbg !2027
  tail call void @llvm.dbg.value(metadata !{i32 %call21}, i64 0, metadata !1789), !dbg !2027
  %cmp24 = icmp eq i32 %call21, -1, !dbg !2028
  br i1 %cmp24, label %return, label %if.end28, !dbg !2028

if.end28:                                         ; preds = %if.end19
  %0 = icmp sgt i32 %call21, -1, !dbg !2029
  br i1 %0, label %cont30, label %ioc_bb29, !dbg !2029

ioc_bb29:                                         ; preds = %if.end28
  %1 = sext i32 %call21 to i64, !dbg !2029
  tail call void @__ioc_report_conversion(i32 387, i32 33, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %1, i8 1) nounwind, !dbg !2029
  br label %cont30, !dbg !2029

cont30:                                           ; preds = %ioc_bb29, %if.end28
  store i32 %call21, i32* @ngx_http_userid_reset_index, align 4, !dbg !2029, !tbaa !1937
  br label %return, !dbg !2030

return:                                           ; preds = %if.end19, %if.end10, %if.end, %entry, %cont30
  %retval.0 = phi i32 [ 0, %cont30 ], [ -1, %entry ], [ -1, %if.end ], [ -1, %if.end10 ], [ -1, %if.end19 ]
  ret i32 %retval.0, !dbg !2031
}

define internal i32 @ngx_http_userid_init(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !589), !dbg !2032
  %0 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_top_header_filter, align 4, !dbg !2033, !tbaa !1942
  store i32 (%struct.ngx_http_request_s*)* %0, i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2033, !tbaa !1942
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_userid_filter, i32 (%struct.ngx_http_request_s*)** @ngx_http_top_header_filter, align 4, !dbg !2035, !tbaa !1942
  ret i32 0, !dbg !2036
}

define internal i8* @ngx_http_userid_create_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !581), !dbg !2037
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2038
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2038, !tbaa !1942
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 48) nounwind, !dbg !2038
  %cmp = icmp eq i8* %call, null, !dbg !2039
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !2039

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 406, i32 34, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2040
  %enable = bitcast i8* %call to i32*, !dbg !2040
  store i32 -1, i32* %enable, align 4, !dbg !2040, !tbaa !1937
  %service = getelementptr inbounds i8* %call, i32 4, !dbg !2041
  %1 = bitcast i8* %service to i32*, !dbg !2041
  store i32 -1, i32* %1, align 4, !dbg !2041, !tbaa !1937
  %expires = getelementptr inbounds i8* %call, i32 40, !dbg !2042
  %2 = bitcast i8* %expires to i32*, !dbg !2042
  store i32 -1, i32* %2, align 4, !dbg !2042, !tbaa !1934
  tail call void @__ioc_report_conversion(i32 409, i32 28, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2043
  %3 = getelementptr inbounds i8* %call, i32 44, !dbg !2043
  store i8 -1, i8* %3, align 1, !dbg !2043, !tbaa !1935
  br label %return, !dbg !2044

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2045
}

define internal noalias i8* @ngx_http_userid_merge_conf(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %parent, i8* nocapture %child) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !570), !dbg !2046
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !571), !dbg !2046
  tail call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !572), !dbg !2046
  %enable = bitcast i8* %child to i32*, !dbg !2047
  %0 = load i32* %enable, align 4, !dbg !2047, !tbaa !1937
  tail call void @__ioc_report_conversion(i32 417, i32 39, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2047
  %cmp = icmp eq i32 %0, -1, !dbg !2047
  br i1 %cmp, label %if.then, label %if.end, !dbg !2047

if.then:                                          ; preds = %entry
  %enable3 = bitcast i8* %parent to i32*, !dbg !2048
  %1 = load i32* %enable3, align 4, !dbg !2048, !tbaa !1937
  tail call void @__ioc_report_conversion(i32 418, i32 55, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2048
  %cmp9 = icmp eq i32 %1, -1, !dbg !2048
  br i1 %cmp9, label %cond.end, label %cond.false, !dbg !2048

cond.false:                                       ; preds = %if.then
  %2 = load i32* %enable3, align 4, !dbg !2048, !tbaa !1937
  br label %cond.end, !dbg !2048

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i32 [ %2, %cond.false ], [ 0, %if.then ], !dbg !2048
  store i32 %cond, i32* %enable, align 4, !dbg !2048, !tbaa !1937
  br label %if.end, !dbg !2050

if.end:                                           ; preds = %cond.end, %entry
  %name = getelementptr inbounds i8* %child, i32 8, !dbg !2051
  %data = getelementptr inbounds i8* %child, i32 12, !dbg !2051
  %3 = bitcast i8* %data to i8**, !dbg !2051
  %4 = load i8** %3, align 4, !dbg !2051, !tbaa !1942
  %cmp14 = icmp eq i8* %4, null, !dbg !2051
  br i1 %cmp14, label %if.then15, label %if.end35, !dbg !2051

if.then15:                                        ; preds = %if.end
  %data17 = getelementptr inbounds i8* %parent, i32 12, !dbg !2052
  %5 = bitcast i8* %data17 to i8**, !dbg !2052
  %6 = load i8** %5, align 4, !dbg !2052, !tbaa !1942
  %tobool = icmp eq i8* %6, null, !dbg !2052
  br i1 %tobool, label %cont29, label %if.then18, !dbg !2052

if.then18:                                        ; preds = %if.then15
  %name16 = getelementptr inbounds i8* %parent, i32 8, !dbg !2052
  %len = bitcast i8* %name16 to i32*, !dbg !2054
  %7 = load i32* %len, align 4, !dbg !2054, !tbaa !1937
  %len21 = bitcast i8* %name to i32*, !dbg !2054
  store i32 %7, i32* %len21, align 4, !dbg !2054, !tbaa !1937
  store i8* %6, i8** %3, align 4, !dbg !2056, !tbaa !1942
  br label %if.end35, !dbg !2057

cont29:                                           ; preds = %if.then15
  %len31 = bitcast i8* %name to i32*, !dbg !2058
  store i32 3, i32* %len31, align 4, !dbg !2058, !tbaa !1937
  store i8* getelementptr inbounds ([4 x i8]* @.str20, i32 0, i32 0), i8** %3, align 4, !dbg !2060, !tbaa !1942
  br label %if.end35

if.end35:                                         ; preds = %if.then18, %cont29, %if.end
  %domain = getelementptr inbounds i8* %child, i32 16, !dbg !2061
  %data36 = getelementptr inbounds i8* %child, i32 20, !dbg !2061
  %8 = bitcast i8* %data36 to i8**, !dbg !2061
  %9 = load i8** %8, align 4, !dbg !2061, !tbaa !1942
  %cmp37 = icmp eq i8* %9, null, !dbg !2061
  br i1 %cmp37, label %if.then38, label %if.end61, !dbg !2061

if.then38:                                        ; preds = %if.end35
  %data40 = getelementptr inbounds i8* %parent, i32 20, !dbg !2062
  %10 = bitcast i8* %data40 to i8**, !dbg !2062
  %11 = load i8** %10, align 4, !dbg !2062, !tbaa !1942
  %tobool41 = icmp eq i8* %11, null, !dbg !2062
  br i1 %tobool41, label %cont55, label %if.then42, !dbg !2062

if.then42:                                        ; preds = %if.then38
  %domain39 = getelementptr inbounds i8* %parent, i32 16, !dbg !2062
  %len44 = bitcast i8* %domain39 to i32*, !dbg !2064
  %12 = load i32* %len44, align 4, !dbg !2064, !tbaa !1937
  %len46 = bitcast i8* %domain to i32*, !dbg !2064
  store i32 %12, i32* %len46, align 4, !dbg !2064, !tbaa !1937
  store i8* %11, i8** %8, align 4, !dbg !2066, !tbaa !1942
  br label %if.end61, !dbg !2067

cont55:                                           ; preds = %if.then38
  %len57 = bitcast i8* %domain to i32*, !dbg !2068
  store i32 0, i32* %len57, align 4, !dbg !2068, !tbaa !1937
  store i8* getelementptr inbounds ([1 x i8]* @.str12, i32 0, i32 0), i8** %8, align 4, !dbg !2070, !tbaa !1942
  br label %if.end61

if.end61:                                         ; preds = %if.then42, %cont55, %if.end35
  %path = getelementptr inbounds i8* %child, i32 24, !dbg !2071
  %data62 = getelementptr inbounds i8* %child, i32 28, !dbg !2071
  %13 = bitcast i8* %data62 to i8**, !dbg !2071
  %14 = load i8** %13, align 4, !dbg !2071, !tbaa !1942
  %cmp63 = icmp eq i8* %14, null, !dbg !2071
  br i1 %cmp63, label %if.then64, label %if.end87, !dbg !2071

if.then64:                                        ; preds = %if.end61
  %data66 = getelementptr inbounds i8* %parent, i32 28, !dbg !2072
  %15 = bitcast i8* %data66 to i8**, !dbg !2072
  %16 = load i8** %15, align 4, !dbg !2072, !tbaa !1942
  %tobool67 = icmp eq i8* %16, null, !dbg !2072
  br i1 %tobool67, label %cont81, label %if.then68, !dbg !2072

if.then68:                                        ; preds = %if.then64
  %path65 = getelementptr inbounds i8* %parent, i32 24, !dbg !2072
  %len70 = bitcast i8* %path65 to i32*, !dbg !2074
  %17 = load i32* %len70, align 4, !dbg !2074, !tbaa !1937
  %len72 = bitcast i8* %path to i32*, !dbg !2074
  store i32 %17, i32* %len72, align 4, !dbg !2074, !tbaa !1937
  store i8* %16, i8** %13, align 4, !dbg !2076, !tbaa !1942
  br label %if.end87, !dbg !2077

cont81:                                           ; preds = %if.then64
  %len83 = bitcast i8* %path to i32*, !dbg !2078
  store i32 8, i32* %len83, align 4, !dbg !2078, !tbaa !1937
  store i8* getelementptr inbounds ([9 x i8]* @.str21, i32 0, i32 0), i8** %13, align 4, !dbg !2080, !tbaa !1942
  br label %if.end87

if.end87:                                         ; preds = %if.then68, %cont81, %if.end61
  %p3p = getelementptr inbounds i8* %child, i32 32, !dbg !2081
  %data88 = getelementptr inbounds i8* %child, i32 36, !dbg !2081
  %18 = bitcast i8* %data88 to i8**, !dbg !2081
  %19 = load i8** %18, align 4, !dbg !2081, !tbaa !1942
  %cmp89 = icmp eq i8* %19, null, !dbg !2081
  br i1 %cmp89, label %if.then90, label %if.end113, !dbg !2081

if.then90:                                        ; preds = %if.end87
  %data92 = getelementptr inbounds i8* %parent, i32 36, !dbg !2082
  %20 = bitcast i8* %data92 to i8**, !dbg !2082
  %21 = load i8** %20, align 4, !dbg !2082, !tbaa !1942
  %tobool93 = icmp eq i8* %21, null, !dbg !2082
  br i1 %tobool93, label %cont107, label %if.then94, !dbg !2082

if.then94:                                        ; preds = %if.then90
  %p3p91 = getelementptr inbounds i8* %parent, i32 32, !dbg !2082
  %len96 = bitcast i8* %p3p91 to i32*, !dbg !2084
  %22 = load i32* %len96, align 4, !dbg !2084, !tbaa !1937
  %len98 = bitcast i8* %p3p to i32*, !dbg !2084
  store i32 %22, i32* %len98, align 4, !dbg !2084, !tbaa !1937
  store i8* %21, i8** %18, align 4, !dbg !2086, !tbaa !1942
  br label %if.end113, !dbg !2087

cont107:                                          ; preds = %if.then90
  %len109 = bitcast i8* %p3p to i32*, !dbg !2088
  store i32 0, i32* %len109, align 4, !dbg !2088, !tbaa !1937
  store i8* getelementptr inbounds ([1 x i8]* @.str12, i32 0, i32 0), i8** %18, align 4, !dbg !2090, !tbaa !1942
  br label %if.end113

if.end113:                                        ; preds = %if.then94, %cont107, %if.end87
  %service = getelementptr inbounds i8* %child, i32 4, !dbg !2091
  %23 = bitcast i8* %service to i32*, !dbg !2091
  %24 = load i32* %23, align 4, !dbg !2091, !tbaa !1937
  %cmp116 = icmp eq i32 %24, -1, !dbg !2091
  br i1 %cmp116, label %if.then117, label %if.end130, !dbg !2091

if.then117:                                       ; preds = %if.end113
  %service118 = getelementptr inbounds i8* %parent, i32 4, !dbg !2092
  %25 = bitcast i8* %service118 to i32*, !dbg !2092
  %26 = load i32* %25, align 4, !dbg !2092, !tbaa !1937
  store i32 %26, i32* %23, align 4, !dbg !2092, !tbaa !1937
  br label %if.end130, !dbg !2094

if.end130:                                        ; preds = %if.then117, %if.end113
  %expires = getelementptr inbounds i8* %child, i32 40, !dbg !2095
  %27 = bitcast i8* %expires to i32*, !dbg !2095
  %28 = load i32* %27, align 4, !dbg !2095, !tbaa !1934
  %cmp133 = icmp eq i32 %28, -1, !dbg !2095
  br i1 %cmp133, label %if.then134, label %if.end145, !dbg !2095

if.then134:                                       ; preds = %if.end130
  %expires135 = getelementptr inbounds i8* %parent, i32 40, !dbg !2096
  %29 = bitcast i8* %expires135 to i32*, !dbg !2096
  %30 = load i32* %29, align 4, !dbg !2096, !tbaa !1934
  %cmp138 = icmp eq i32 %30, -1, !dbg !2096
  %.213 = select i1 %cmp138, i32 0, i32 %30, !dbg !2096
  store i32 %.213, i32* %27, align 4, !dbg !2096, !tbaa !1934
  br label %if.end145, !dbg !2098

if.end145:                                        ; preds = %if.then134, %if.end130
  %31 = getelementptr inbounds i8* %child, i32 44, !dbg !2099
  %32 = load i8* %31, align 1, !dbg !2099, !tbaa !1935
  tail call void @__ioc_report_conversion(i32 473, i32 35, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2099
  %cmp148 = icmp eq i8 %32, -1, !dbg !2099
  br i1 %cmp148, label %if.then150, label %if.end165, !dbg !2099

if.then150:                                       ; preds = %if.end145
  %33 = getelementptr inbounds i8* %parent, i32 44, !dbg !2100
  %34 = load i8* %33, align 1, !dbg !2100, !tbaa !1935
  tail call void @__ioc_report_conversion(i32 474, i32 37, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @2, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2100
  %cmp155 = icmp eq i8 %34, -1, !dbg !2100
  br i1 %cmp155, label %cont159, label %if.else161, !dbg !2100

cont159:                                          ; preds = %if.then150
  store i8 0, i8* %31, align 1, !dbg !2102, !tbaa !1935
  br label %if.end165, !dbg !2104

if.else161:                                       ; preds = %if.then150
  %35 = load i8* %33, align 1, !dbg !2105, !tbaa !1935
  store i8 %35, i8* %31, align 1, !dbg !2105, !tbaa !1935
  br label %if.end165

if.end165:                                        ; preds = %cont159, %if.else161, %if.end145
  ret i8* null, !dbg !2107
}

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

define internal i32 @ngx_http_userid_filter(%struct.ngx_http_request_s* %r) nounwind {
entry:
  %src.i = alloca %struct.ngx_str_t, align 4
  %dst.i = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1702), !dbg !2108
  %main = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 29, !dbg !2109
  %0 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2109, !tbaa !1942
  %cmp = icmp eq %struct.ngx_http_request_s* %0, %r, !dbg !2109
  br i1 %cmp, label %if.end, label %if.then, !dbg !2109

if.then:                                          ; preds = %entry
  %1 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2110, !tbaa !1942
  %call = call i32 %1(%struct.ngx_http_request_s* %r) nounwind, !dbg !2110
  br label %return, !dbg !2110

if.end:                                           ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_userid_filter_module, i32 0, i32 0), align 4, !dbg !2112, !tbaa !1937
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2112
  %3 = load i8*** %loc_conf, align 4, !dbg !2112, !tbaa !1942
  %arrayidx = getelementptr inbounds i8** %3, i32 %2, !dbg !2112
  %4 = load i8** %arrayidx, align 4, !dbg !2112, !tbaa !1942
  %5 = bitcast i8* %4 to %struct.ngx_http_userid_conf_t*, !dbg !2112
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_conf_t* %5}, i64 0, metadata !1716), !dbg !2112
  %enable = bitcast i8* %4 to i32*, !dbg !2113
  %6 = load i32* %enable, align 4, !dbg !2113, !tbaa !1937
  %cmp1 = icmp ult i32 %6, 2, !dbg !2113
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !2113

if.then2:                                         ; preds = %if.end
  %7 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2114, !tbaa !1942
  %call3 = call i32 %7(%struct.ngx_http_request_s* %r) nounwind, !dbg !2114
  br label %return, !dbg !2114

if.end4:                                          ; preds = %if.end
  %call5 = call fastcc %struct.ngx_http_userid_ctx_t* @ngx_http_userid_get_uid(%struct.ngx_http_request_s* %r, %struct.ngx_http_userid_conf_t* %5), !dbg !2116
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_ctx_t* %call5}, i64 0, metadata !1703), !dbg !2116
  %cmp6 = icmp eq %struct.ngx_http_userid_ctx_t* %call5, null, !dbg !2117
  br i1 %cmp6, label %return, label %if.end10, !dbg !2117

if.end10:                                         ; preds = %if.end4
  %8 = bitcast %struct.ngx_str_t* %src.i to i8*, !dbg !2118
  call void @llvm.lifetime.start(i64 -1, i8* %8) nounwind, !dbg !2118
  %9 = bitcast %struct.ngx_str_t* %dst.i to i8*, !dbg !2118
  call void @llvm.lifetime.start(i64 -1, i8* %9) nounwind, !dbg !2118
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2120) nounwind, !dbg !2118
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_ctx_t* %call5}, i64 0, metadata !2121) nounwind, !dbg !2118
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_conf_t* %5}, i64 0, metadata !2122) nounwind, !dbg !2118
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %src.i}, metadata !1729) nounwind, !dbg !2123
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %dst.i}, metadata !1730) nounwind, !dbg !2124
  %call.i = call fastcc i32 @ngx_http_userid_create_uid(%struct.ngx_http_request_s* %r, %struct.ngx_http_userid_ctx_t* %call5, %struct.ngx_http_userid_conf_t* %5) nounwind, !dbg !2125
  %cmp.i = icmp eq i32 %call.i, 0, !dbg !2125
  br i1 %cmp.i, label %cont2.i, label %return, !dbg !2125

cont2.i:                                          ; preds = %if.end10
  %arrayidx.i = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call5, i32 0, i32 1, i32 3, !dbg !2126
  %10 = load i32* %arrayidx.i, align 4, !dbg !2126, !tbaa !1937
  %cmp3.i = icmp eq i32 %10, 0, !dbg !2126
  br i1 %cmp3.i, label %if.then13, label %if.end5.i, !dbg !2126

if.end5.i:                                        ; preds = %cont2.i
  %len6.i = getelementptr inbounds i8* %4, i32 8, !dbg !2127
  %11 = bitcast i8* %len6.i to i32*, !dbg !2127
  %12 = load i32* %11, align 4, !dbg !2127, !tbaa !1937
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %12, i32 1) nounwind, !dbg !2127
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !2127
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !2127
  br i1 %15, label %ioc_bb9.i, label %cont18.i, !dbg !2127

ioc_bb9.i:                                        ; preds = %if.end5.i
  %16 = zext i32 %12 to i64, !dbg !2127
  call void @__ioc_report_add_overflow(i32 205, i32 26, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind, !dbg !2127
  br label %cont18.i, !dbg !2127

cont18.i:                                         ; preds = %ioc_bb9.i, %if.end5.i
  %17 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %14, i32 24) nounwind, !dbg !2127
  %18 = extractvalue { i32, i1 } %17, 0, !dbg !2127
  %19 = extractvalue { i32, i1 } %17, 1, !dbg !2127
  br i1 %19, label %ioc_bb19.i, label %cont20.i, !dbg !2127

ioc_bb19.i:                                       ; preds = %cont18.i
  %20 = zext i32 %14 to i64, !dbg !2127
  call void @__ioc_report_add_overflow(i32 205, i32 30, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %20, i64 24, i8 5) nounwind, !dbg !2127
  br label %cont20.i, !dbg !2127

cont20.i:                                         ; preds = %ioc_bb19.i, %cont18.i
  %len21.i = getelementptr inbounds i8* %4, i32 24, !dbg !2127
  %21 = bitcast i8* %len21.i to i32*, !dbg !2127
  %22 = load i32* %21, align 4, !dbg !2127, !tbaa !1937
  %23 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %18, i32 %22) nounwind, !dbg !2127
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !2127
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !2127
  br i1 %25, label %ioc_bb22.i, label %cont23.i, !dbg !2127

ioc_bb22.i:                                       ; preds = %cont20.i
  %26 = zext i32 %22 to i64, !dbg !2127
  %27 = zext i32 %18 to i64, !dbg !2127
  call void @__ioc_report_add_overflow(i32 205, i32 51, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %27, i64 %26, i8 5) nounwind, !dbg !2127
  br label %cont23.i, !dbg !2127

cont23.i:                                         ; preds = %ioc_bb22.i, %cont20.i
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !2128) nounwind, !dbg !2127
  %expires.i = getelementptr inbounds i8* %4, i32 40, !dbg !2129
  %28 = bitcast i8* %expires.i to i32*, !dbg !2129
  %29 = load i32* %28, align 4, !dbg !2129, !tbaa !1934
  %tobool.i = icmp eq i32 %29, 0, !dbg !2129
  br i1 %tobool.i, label %if.end35.i, label %cont32.i, !dbg !2129

cont32.i:                                         ; preds = %cont23.i
  %30 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %24, i32 39) nounwind, !dbg !2130
  %31 = extractvalue { i32, i1 } %30, 0, !dbg !2130
  %32 = extractvalue { i32, i1 } %30, 1, !dbg !2130
  br i1 %32, label %ioc_bb33.i, label %if.end35.i, !dbg !2130

ioc_bb33.i:                                       ; preds = %cont32.i
  %33 = zext i32 %24 to i64, !dbg !2130
  call void @__ioc_report_add_overflow(i32 207, i32 9, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %33, i64 39, i8 5) nounwind, !dbg !2130
  br label %if.end35.i, !dbg !2130

if.end35.i:                                       ; preds = %ioc_bb33.i, %cont32.i, %cont23.i
  %len.0.i = phi i32 [ %24, %cont23.i ], [ %31, %cont32.i ], [ %31, %ioc_bb33.i ]
  %len36.i = getelementptr inbounds i8* %4, i32 16, !dbg !2132
  %34 = bitcast i8* %len36.i to i32*, !dbg !2132
  %35 = load i32* %34, align 4, !dbg !2132, !tbaa !1937
  %tobool37.i = icmp eq i32 %35, 0, !dbg !2132
  br i1 %tobool37.i, label %if.end43.i, label %if.then38.i, !dbg !2132

if.then38.i:                                      ; preds = %if.end35.i
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0.i, i32 %35) nounwind, !dbg !2133
  %37 = extractvalue { i32, i1 } %36, 0, !dbg !2133
  %38 = extractvalue { i32, i1 } %36, 1, !dbg !2133
  br i1 %38, label %ioc_bb41.i, label %if.end43.i, !dbg !2133

ioc_bb41.i:                                       ; preds = %if.then38.i
  %39 = zext i32 %35 to i64, !dbg !2133
  %40 = zext i32 %len.0.i to i64, !dbg !2133
  call void @__ioc_report_add_overflow(i32 210, i32 9, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %40, i64 %39, i8 5) nounwind, !dbg !2133
  br label %if.end43.i, !dbg !2133

if.end43.i:                                       ; preds = %ioc_bb41.i, %if.then38.i, %if.end35.i
  %len.1.i = phi i32 [ %len.0.i, %if.end35.i ], [ %37, %if.then38.i ], [ %37, %ioc_bb41.i ]
  %pool.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2135
  %41 = load %struct.ngx_pool_s** %pool.i, align 4, !dbg !2135, !tbaa !1942
  %call44.i = call i8* @ngx_pnalloc(%struct.ngx_pool_s* %41, i32 %len.1.i) nounwind, !dbg !2135
  call void @llvm.dbg.value(metadata !{i8* %call44.i}, i64 0, metadata !2136) nounwind, !dbg !2135
  %cmp45.i = icmp eq i8* %call44.i, null, !dbg !2137
  br i1 %cmp45.i, label %return, label %if.end49.i, !dbg !2137

if.end49.i:                                       ; preds = %if.end43.i
  %data.i = getelementptr inbounds i8* %4, i32 12, !dbg !2138
  %42 = bitcast i8* %data.i to i8**, !dbg !2138
  %43 = load i8** %42, align 4, !dbg !2138, !tbaa !1942
  %44 = load i32* %11, align 4, !dbg !2138, !tbaa !1937
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call44.i, i8* %43, i32 %44, i32 1, i1 false) nounwind, !dbg !2138
  %45 = load i32* %11, align 4, !dbg !2138, !tbaa !1937
  %add.ptr.i = getelementptr inbounds i8* %call44.i, i32 %45, !dbg !2138
  %add.ptr.sum.i = add i32 %45, 1, !dbg !2139
  %incdec.ptr.i = getelementptr inbounds i8* %call44.i, i32 %add.ptr.sum.i, !dbg !2139
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr.i}, i64 0, metadata !2140) nounwind, !dbg !2139
  store i8 61, i8* %add.ptr.i, align 1, !dbg !2139, !tbaa !1935
  %arrayidx57.i = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call5, i32 0, i32 0, i32 3, !dbg !2141
  %46 = load i32* %arrayidx57.i, align 4, !dbg !2141, !tbaa !1937
  %cmp60.i = icmp eq i32 %46, 0, !dbg !2141
  br i1 %cmp60.i, label %cont64.i, label %lor.lhs.false.i, !dbg !2141

lor.lhs.false.i:                                  ; preds = %if.end49.i
  %reset.i = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call5, i32 0, i32 3, !dbg !2141
  %47 = load i32* %reset.i, align 4, !dbg !2141, !tbaa !1937
  %tobool61.i = icmp eq i32 %47, 0, !dbg !2141
  br i1 %tobool61.i, label %cont79.i, label %cont64.i, !dbg !2141

cont64.i:                                         ; preds = %lor.lhs.false.i, %if.end49.i
  %len65.i = getelementptr inbounds %struct.ngx_str_t* %src.i, i32 0, i32 0, !dbg !2142
  store i32 16, i32* %len65.i, align 4, !dbg !2142, !tbaa !1937
  %arraydecay.i = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call5, i32 0, i32 1, i32 0, !dbg !2144
  %48 = bitcast i32* %arraydecay.i to i8*, !dbg !2144
  %data67.i = getelementptr inbounds %struct.ngx_str_t* %src.i, i32 0, i32 1, !dbg !2144
  store i8* %48, i8** %data67.i, align 4, !dbg !2144, !tbaa !1942
  %data68.i = getelementptr inbounds %struct.ngx_str_t* %dst.i, i32 0, i32 1, !dbg !2145
  store i8* %incdec.ptr.i, i8** %data68.i, align 4, !dbg !2145, !tbaa !1942
  call void @ngx_encode_base64(%struct.ngx_str_t* %dst.i, %struct.ngx_str_t* %src.i) nounwind, !dbg !2146
  %len69.i = getelementptr inbounds %struct.ngx_str_t* %dst.i, i32 0, i32 0, !dbg !2147
  %49 = load i32* %len69.i, align 4, !dbg !2147, !tbaa !1937
  %incdec.ptr.sum237.i = add i32 %49, %add.ptr.sum.i, !dbg !2147
  %add.ptr70.i = getelementptr inbounds i8* %call44.i, i32 %incdec.ptr.sum237.i, !dbg !2147
  call void @llvm.dbg.value(metadata !{i8* %add.ptr70.i}, i64 0, metadata !2140) nounwind, !dbg !2147
  %50 = getelementptr inbounds i8* %4, i32 44, !dbg !2148
  %51 = load i8* %50, align 1, !dbg !2148, !tbaa !1935
  %tobool71.i = icmp eq i8 %51, 0, !dbg !2148
  br i1 %tobool71.i, label %if.end86.i, label %if.then72.i, !dbg !2148

if.then72.i:                                      ; preds = %cont64.i
  %add.ptr70.sum.i = add i32 %incdec.ptr.sum237.i, -2, !dbg !2149
  %add.ptr74.i = getelementptr inbounds i8* %call44.i, i32 %add.ptr70.sum.i, !dbg !2149
  store i8 %51, i8* %add.ptr74.i, align 1, !dbg !2149, !tbaa !1935
  br label %if.end86.i, !dbg !2151

cont79.i:                                         ; preds = %lor.lhs.false.i
  %data77.i = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call5, i32 0, i32 2, i32 1, !dbg !2152
  %52 = load i8** %data77.i, align 4, !dbg !2152, !tbaa !1942
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %incdec.ptr.i, i8* %52, i32 22, i32 1, i1 false) nounwind, !dbg !2152
  %incdec.ptr.sum.i = add i32 %45, 23, !dbg !2152
  %add.ptr80.i = getelementptr inbounds i8* %call44.i, i32 %incdec.ptr.sum.i, !dbg !2152
  call void @llvm.dbg.value(metadata !{i8* %add.ptr80.i}, i64 0, metadata !2140) nounwind, !dbg !2152
  %53 = getelementptr inbounds i8* %4, i32 44, !dbg !2154
  %54 = load i8* %53, align 1, !dbg !2154, !tbaa !1935
  store i8 %54, i8* %add.ptr80.i, align 1, !dbg !2154, !tbaa !1935
  %add.ptr80.sum.i = add i32 %45, 24, !dbg !2154
  %incdec.ptr82.i = getelementptr inbounds i8* %call44.i, i32 %add.ptr80.sum.i, !dbg !2154
  %incdec.ptr82.sum.i = add i32 %45, 25, !dbg !2155
  %incdec.ptr85.i = getelementptr inbounds i8* %call44.i, i32 %incdec.ptr82.sum.i, !dbg !2155
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr85.i}, i64 0, metadata !2140) nounwind, !dbg !2155
  store i8 61, i8* %incdec.ptr82.i, align 1, !dbg !2155, !tbaa !1935
  br label %if.end86.i

if.end86.i:                                       ; preds = %cont79.i, %if.then72.i, %cont64.i
  %p.0.i = phi i8* [ %add.ptr70.i, %if.then72.i ], [ %add.ptr70.i, %cont64.i ], [ %incdec.ptr85.i, %cont79.i ]
  %55 = load i32* %28, align 4, !dbg !2156, !tbaa !1934
  switch i32 %55, label %cont106.i [
    i32 2145916555, label %cont93.i
    i32 0, label %if.end117.i
  ], !dbg !2156

cont93.i:                                         ; preds = %if.end86.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %p.0.i, i8* getelementptr inbounds ([38 x i8]* @expires, i32 0, i32 0), i32 37, i32 1, i1 false) nounwind, !dbg !2157
  %add.ptr98.i = getelementptr inbounds i8* %p.0.i, i32 37, !dbg !2157
  call void @llvm.dbg.value(metadata !{i8* %add.ptr98.i}, i64 0, metadata !2140) nounwind, !dbg !2157
  br label %if.end117.i, !dbg !2159

cont106.i:                                        ; preds = %if.end86.i
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %p.0.i, i8* getelementptr inbounds ([38 x i8]* @expires, i32 0, i32 0), i32 10, i32 1, i1 false) nounwind, !dbg !2160
  %add.ptr111.i = getelementptr inbounds i8* %p.0.i, i32 10, !dbg !2160
  call void @llvm.dbg.value(metadata !{i8* %add.ptr111.i}, i64 0, metadata !2140) nounwind, !dbg !2160
  %56 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2162, !tbaa !1942
  %sec.i = getelementptr inbounds %struct.ngx_time_t* %56, i32 0, i32 0, !dbg !2162
  %57 = load volatile i32* %sec.i, align 4, !dbg !2162, !tbaa !1934
  %58 = load i32* %28, align 4, !dbg !2162, !tbaa !1934
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %57, i32 %58) nounwind, !dbg !2162
  %60 = extractvalue { i32, i1 } %59, 0, !dbg !2162
  %61 = extractvalue { i32, i1 } %59, 1, !dbg !2162
  br i1 %61, label %ioc_bb113.i, label %cont114.i, !dbg !2162

ioc_bb113.i:                                      ; preds = %cont106.i
  %62 = sext i32 %58 to i64, !dbg !2162
  %63 = sext i32 %57 to i64, !dbg !2162
  call void @__ioc_report_add_overflow(i32 238, i32 55, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %63, i64 %62, i8 13) nounwind, !dbg !2162
  br label %cont114.i, !dbg !2162

cont114.i:                                        ; preds = %ioc_bb113.i, %cont106.i
  %call115.i = call i8* @ngx_http_cookie_time(i8* %add.ptr111.i, i32 %60) nounwind, !dbg !2162
  call void @llvm.dbg.value(metadata !{i8* %call115.i}, i64 0, metadata !2140) nounwind, !dbg !2162
  br label %if.end117.i, !dbg !2163

if.end117.i:                                      ; preds = %cont114.i, %cont93.i, %if.end86.i
  %p.1.i = phi i8* [ %add.ptr98.i, %cont93.i ], [ %call115.i, %cont114.i ], [ %p.0.i, %if.end86.i ]
  %data119.i = getelementptr inbounds i8* %4, i32 20, !dbg !2164
  %64 = bitcast i8* %data119.i to i8**, !dbg !2164
  %65 = load i8** %64, align 4, !dbg !2164, !tbaa !1942
  %66 = load i32* %34, align 4, !dbg !2164, !tbaa !1937
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %p.1.i, i8* %65, i32 %66, i32 1, i1 false) nounwind, !dbg !2164
  %67 = load i32* %34, align 4, !dbg !2164, !tbaa !1937
  %add.ptr124.i = getelementptr inbounds i8* %p.1.i, i32 %67, !dbg !2164
  call void @llvm.dbg.value(metadata !{i8* %add.ptr124.i}, i64 0, metadata !2140) nounwind, !dbg !2164
  %data126.i = getelementptr inbounds i8* %4, i32 28, !dbg !2165
  %68 = bitcast i8* %data126.i to i8**, !dbg !2165
  %69 = load i8** %68, align 4, !dbg !2165, !tbaa !1942
  %70 = load i32* %21, align 4, !dbg !2165, !tbaa !1937
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %add.ptr124.i, i8* %69, i32 %70, i32 1, i1 false) nounwind, !dbg !2165
  %71 = load i32* %21, align 4, !dbg !2165, !tbaa !1937
  %headers.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 14, i32 0, !dbg !2166
  %call132.i = call i8* @ngx_list_push(%struct.ngx_list_t* %headers.i) nounwind, !dbg !2166
  %cmp133.i = icmp eq i8* %call132.i, null, !dbg !2167
  br i1 %cmp133.i, label %return, label %cont139.i, !dbg !2167

cont139.i:                                        ; preds = %if.end117.i
  %add.ptr124.sum.i = add i32 %71, %67, !dbg !2165
  %add.ptr131.i = getelementptr inbounds i8* %p.1.i, i32 %add.ptr124.sum.i, !dbg !2165
  %hash.i = bitcast i8* %call132.i to i32*, !dbg !2168
  store i32 1, i32* %hash.i, align 4, !dbg !2168, !tbaa !1937
  %key.i = getelementptr inbounds i8* %call132.i, i32 4, !dbg !2169
  %len144.i = bitcast i8* %key.i to i32*, !dbg !2169
  store i32 10, i32* %len144.i, align 4, !dbg !2169, !tbaa !1937
  %data146.i = getelementptr inbounds i8* %call132.i, i32 8, !dbg !2170
  %72 = bitcast i8* %data146.i to i8**, !dbg !2170
  store i8* getelementptr inbounds ([11 x i8]* @.str22, i32 0, i32 0), i8** %72, align 4, !dbg !2170, !tbaa !1942
  %sub.ptr.lhs.cast.i = ptrtoint i8* %add.ptr131.i to i32, !dbg !2171
  %sub.ptr.rhs.cast.i = ptrtoint i8* %call44.i to i32, !dbg !2171
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i, !dbg !2171
  %73 = icmp sgt i32 %sub.ptr.sub.i, -1, !dbg !2171
  br i1 %73, label %cont149.i, label %ioc_bb148.i, !dbg !2171

ioc_bb148.i:                                      ; preds = %cont139.i
  %74 = sext i32 %sub.ptr.sub.i to i64, !dbg !2171
  call void @__ioc_report_conversion(i32 249, i32 29, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %74, i8 1) nounwind, !dbg !2171
  br label %cont149.i, !dbg !2171

cont149.i:                                        ; preds = %ioc_bb148.i, %cont139.i
  %value.i = getelementptr inbounds i8* %call132.i, i32 12, !dbg !2171
  %len150.i = bitcast i8* %value.i to i32*, !dbg !2171
  store i32 %sub.ptr.sub.i, i32* %len150.i, align 4, !dbg !2171, !tbaa !1937
  %data152.i = getelementptr inbounds i8* %call132.i, i32 16, !dbg !2172
  %75 = bitcast i8* %data152.i to i8**, !dbg !2172
  store i8* %call44.i, i8** %75, align 4, !dbg !2172, !tbaa !1942
  %p3p153.i = getelementptr inbounds i8* %4, i32 32, !dbg !2173
  %len154.i = bitcast i8* %p3p153.i to i32*, !dbg !2173
  %76 = load i32* %len154.i, align 4, !dbg !2173, !tbaa !1937
  %cmp157.i = icmp eq i32 %76, 0, !dbg !2173
  br i1 %cmp157.i, label %if.then13, label %if.end159.i, !dbg !2173

if.end159.i:                                      ; preds = %cont149.i
  %call162.i = call i8* @ngx_list_push(%struct.ngx_list_t* %headers.i) nounwind, !dbg !2174
  %cmp163.i = icmp eq i8* %call162.i, null, !dbg !2175
  br i1 %cmp163.i, label %return, label %cont169.i, !dbg !2175

cont169.i:                                        ; preds = %if.end159.i
  %hash170.i = bitcast i8* %call162.i to i32*, !dbg !2176
  store i32 1, i32* %hash170.i, align 4, !dbg !2176, !tbaa !1937
  %key175.i = getelementptr inbounds i8* %call162.i, i32 4, !dbg !2177
  %len176.i = bitcast i8* %key175.i to i32*, !dbg !2177
  store i32 3, i32* %len176.i, align 4, !dbg !2177, !tbaa !1937
  %data178.i = getelementptr inbounds i8* %call162.i, i32 8, !dbg !2178
  %77 = bitcast i8* %data178.i to i8**, !dbg !2178
  store i8* getelementptr inbounds ([4 x i8]* @.str23, i32 0, i32 0), i8** %77, align 4, !dbg !2178, !tbaa !1942
  %value179.i = getelementptr inbounds i8* %call162.i, i32 12, !dbg !2179
  %78 = bitcast i8* %p3p153.i to i64*, !dbg !2179
  %79 = bitcast i8* %value179.i to i64*, !dbg !2179
  %80 = load i64* %78, align 4, !dbg !2179
  store i64 %80, i64* %79, align 4, !dbg !2179
  br label %if.then13, !dbg !2180

if.then13:                                        ; preds = %cont169.i, %cont2.i, %cont149.i
  call void @llvm.lifetime.end(i64 -1, i8* %8) nounwind, !dbg !2181
  call void @llvm.lifetime.end(i64 -1, i8* %9) nounwind, !dbg !2181
  %81 = load i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter, align 4, !dbg !2182, !tbaa !1942
  %call14 = call i32 %81(%struct.ngx_http_request_s* %r) nounwind, !dbg !2182
  br label %return, !dbg !2182

return:                                           ; preds = %if.end159.i, %if.end117.i, %if.end43.i, %if.end10, %if.end4, %if.then13, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ %call14, %if.then13 ], [ -1, %if.end4 ], [ -1, %if.end10 ], [ -1, %if.end43.i ], [ -1, %if.end117.i ], [ -1, %if.end159.i ]
  ret i32 %retval.0, !dbg !2184
}

define internal fastcc %struct.ngx_http_userid_ctx_t* @ngx_http_userid_get_uid(%struct.ngx_http_request_s* %r, %struct.ngx_http_userid_conf_t* %conf) nounwind {
entry:
  %src = alloca %struct.ngx_str_t, align 8
  %dst = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1776), !dbg !2185
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_conf_t* %conf}, i64 0, metadata !1777), !dbg !2185
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %src}, metadata !1780), !dbg !2186
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %dst}, metadata !1781), !dbg !2187
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_userid_filter_module, i32 0, i32 0), align 4, !dbg !2188, !tbaa !1937
  %ctx1 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !2188
  %1 = load i8*** %ctx1, align 4, !dbg !2188, !tbaa !1942
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2188
  %2 = load i8** %arrayidx, align 4, !dbg !2188, !tbaa !1942
  %3 = bitcast i8* %2 to %struct.ngx_http_userid_ctx_t*, !dbg !2188
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_ctx_t* %3}, i64 0, metadata !1784), !dbg !2188
  %tobool = icmp eq i8* %2, null, !dbg !2189
  br i1 %tobool, label %if.then2, label %return, !dbg !2189

if.then2:                                         ; preds = %entry
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2190
  %4 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2190, !tbaa !1942
  %call = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %4, i32 44) nounwind, !dbg !2190
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_ctx_t* %5}, i64 0, metadata !1784), !dbg !2190
  %cmp3 = icmp eq i8* %call, null, !dbg !2192
  br i1 %cmp3, label %return, label %if.end5, !dbg !2192

if.end5:                                          ; preds = %if.then2
  %5 = bitcast i8* %call to %struct.ngx_http_userid_ctx_t*, !dbg !2190
  %6 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_userid_filter_module, i32 0, i32 0), align 4, !dbg !2193, !tbaa !1937
  %7 = load i8*** %ctx1, align 4, !dbg !2193, !tbaa !1942
  %arrayidx7 = getelementptr inbounds i8** %7, i32 %6, !dbg !2193
  store i8* %call, i8** %arrayidx7, align 4, !dbg !2193, !tbaa !1942
  %cookies9 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 13, i32 20, !dbg !2194
  %name = getelementptr inbounds %struct.ngx_http_userid_conf_t* %conf, i32 0, i32 2, !dbg !2194
  %cookie = getelementptr inbounds i8* %call, i32 32, !dbg !2194
  %8 = bitcast i8* %cookie to %struct.ngx_str_t*, !dbg !2194
  %call10 = call i32 @ngx_http_parse_multi_header_lines(%struct.ngx_array_s* %cookies9, %struct.ngx_str_t* %name, %struct.ngx_str_t* %8) nounwind, !dbg !2194
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !1778), !dbg !2194
  %cmp11 = icmp eq i32 %call10, -5, !dbg !2195
  br i1 %cmp11, label %return, label %cont16, !dbg !2195

cont16:                                           ; preds = %if.end5
  %len = bitcast i8* %cookie to i32*, !dbg !2196
  %9 = load i32* %len, align 4, !dbg !2196, !tbaa !1937
  %cmp17 = icmp ult i32 %9, 22, !dbg !2196
  br i1 %cmp17, label %if.then18, label %if.end31, !dbg !2196

if.then18:                                        ; preds = %cont16
  call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t** %14}, i64 0, metadata !1782), !dbg !2197
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2199
  %10 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2199, !tbaa !1942
  %log = getelementptr inbounds %struct.ngx_connection_s* %10, i32 0, i32 10, !dbg !2199
  %11 = load %struct.ngx_log_s** %log, align 4, !dbg !2199, !tbaa !1942
  %log_level = getelementptr inbounds %struct.ngx_log_s* %11, i32 0, i32 0, !dbg !2199
  %12 = load i32* %log_level, align 4, !dbg !2199, !tbaa !1937
  %cmp23 = icmp ugt i32 %12, 3, !dbg !2199
  br i1 %cmp23, label %cont26, label %return, !dbg !2199

cont26:                                           ; preds = %if.then18
  %elts = getelementptr inbounds %struct.ngx_array_s* %cookies9, i32 0, i32 0, !dbg !2197
  %13 = load i8** %elts, align 4, !dbg !2197, !tbaa !1942
  %14 = bitcast i8* %13 to %struct.ngx_table_elt_t**, !dbg !2197
  %arrayidx29 = getelementptr inbounds %struct.ngx_table_elt_t** %14, i32 %call10, !dbg !2200
  %15 = load %struct.ngx_table_elt_t** %arrayidx29, align 4, !dbg !2200, !tbaa !1942
  %value = getelementptr inbounds %struct.ngx_table_elt_t* %15, i32 0, i32 2, !dbg !2200
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %11, i32 0, i8* getelementptr inbounds ([41 x i8]* @.str25, i32 0, i32 0), %struct.ngx_str_t* %value) nounwind, !dbg !2200
  br label %return, !dbg !2200

if.end31:                                         ; preds = %cont16
  %16 = bitcast i8* %cookie to i64*, !dbg !2201
  %17 = bitcast %struct.ngx_str_t* %src to i64*, !dbg !2201
  %18 = load i64* %16, align 4, !dbg !2201
  store i64 %18, i64* %17, align 8, !dbg !2201
  %len35 = getelementptr inbounds %struct.ngx_str_t* %src, i32 0, i32 0, !dbg !2202
  store i32 22, i32* %len35, align 8, !dbg !2202, !tbaa !1937
  %data = getelementptr inbounds %struct.ngx_str_t* %dst, i32 0, i32 1, !dbg !2203
  store i8* %call, i8** %data, align 4, !dbg !2203, !tbaa !1942
  %call36 = call i32 @ngx_decode_base64(%struct.ngx_str_t* %dst, %struct.ngx_str_t* %src) nounwind, !dbg !2204
  %cmp39 = icmp eq i32 %call36, -1, !dbg !2204
  br i1 %cmp39, label %if.then40, label %return, !dbg !2204

if.then40:                                        ; preds = %if.end31
  call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t** %23}, i64 0, metadata !1782), !dbg !2205
  %connection44 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2207
  %19 = load %struct.ngx_connection_s** %connection44, align 4, !dbg !2207, !tbaa !1942
  %log45 = getelementptr inbounds %struct.ngx_connection_s* %19, i32 0, i32 10, !dbg !2207
  %20 = load %struct.ngx_log_s** %log45, align 4, !dbg !2207, !tbaa !1942
  %log_level46 = getelementptr inbounds %struct.ngx_log_s* %20, i32 0, i32 0, !dbg !2207
  %21 = load i32* %log_level46, align 4, !dbg !2207, !tbaa !1937
  %cmp49 = icmp ugt i32 %21, 3, !dbg !2207
  br i1 %cmp49, label %cont52, label %return, !dbg !2207

cont52:                                           ; preds = %if.then40
  %elts43 = getelementptr inbounds %struct.ngx_array_s* %cookies9, i32 0, i32 0, !dbg !2205
  %22 = load i8** %elts43, align 4, !dbg !2205, !tbaa !1942
  %23 = bitcast i8* %22 to %struct.ngx_table_elt_t**, !dbg !2205
  %arrayidx55 = getelementptr inbounds %struct.ngx_table_elt_t** %23, i32 %call10, !dbg !2208
  %24 = load %struct.ngx_table_elt_t** %arrayidx55, align 4, !dbg !2208, !tbaa !1942
  %value56 = getelementptr inbounds %struct.ngx_table_elt_t* %24, i32 0, i32 2, !dbg !2208
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %20, i32 0, i8* getelementptr inbounds ([39 x i8]* @.str26, i32 0, i32 0), %struct.ngx_str_t* %value56) nounwind, !dbg !2208
  br label %return, !dbg !2208

return:                                           ; preds = %if.end31, %if.then40, %cont52, %if.then18, %cont26, %if.end5, %if.then2, %entry
  %retval.0 = phi %struct.ngx_http_userid_ctx_t* [ %3, %entry ], [ null, %if.then2 ], [ %5, %if.end5 ], [ %5, %cont26 ], [ %5, %if.then18 ], [ %5, %cont52 ], [ %5, %if.then40 ], [ %5, %if.end31 ]
  ret %struct.ngx_http_userid_ctx_t* %retval.0, !dbg !2209
}

define internal fastcc i32 @ngx_http_userid_create_uid(%struct.ngx_http_request_s* %r, %struct.ngx_http_userid_ctx_t* nocapture %ctx, %struct.ngx_http_userid_conf_t* %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1736), !dbg !2210
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_ctx_t* %ctx}, i64 0, metadata !1737), !dbg !2210
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_conf_t* %conf}, i64 0, metadata !1738), !dbg !2210
  %uid_set = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, !dbg !2211
  %arrayidx = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, i32 3, !dbg !2211
  %0 = load i32* %arrayidx, align 4, !dbg !2211, !tbaa !1937
  %cmp = icmp eq i32 %0, 0, !dbg !2211
  br i1 %cmp, label %if.end, label %return, !dbg !2211

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 0, i32 3, !dbg !2212
  %1 = load i32* %arrayidx1, align 4, !dbg !2212, !tbaa !1937
  %cmp4 = icmp eq i32 %1, 0, !dbg !2212
  br i1 %cmp4, label %cont98, label %if.then5, !dbg !2212

if.then5:                                         ; preds = %if.end
  %2 = load i32* @ngx_http_userid_reset_index, align 4, !dbg !2213, !tbaa !1937
  %call = tail call %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s* %r, i32 %2) nounwind, !dbg !2213
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call}, i64 0, metadata !1756), !dbg !2213
  %3 = bitcast %struct.ngx_variable_value_t* %call to i32*, !dbg !2215
  %4 = load i32* %3, align 4, !dbg !2215
  %bf.clear = and i32 %4, 268435455, !dbg !2215
  switch i32 %bf.clear, label %cont61 [
    i32 0, label %if.then17
    i32 1, label %land.lhs.true
  ], !dbg !2215

land.lhs.true:                                    ; preds = %if.then5
  %data = getelementptr inbounds %struct.ngx_variable_value_t* %call, i32 0, i32 1, !dbg !2215
  %5 = load i8** %data, align 4, !dbg !2215, !tbaa !1942
  %6 = load i8* %5, align 1, !dbg !2215, !tbaa !1935
  %cmp15 = icmp eq i8 %6, 48, !dbg !2215
  br i1 %cmp15, label %if.then17, label %cont61, !dbg !2215

if.then17:                                        ; preds = %if.then5, %land.lhs.true
  %mark = getelementptr inbounds %struct.ngx_http_userid_conf_t* %conf, i32 0, i32 7, !dbg !2216
  %7 = load i8* %mark, align 1, !dbg !2216, !tbaa !1935
  %cmp19 = icmp eq i8 %7, 0, !dbg !2216
  br i1 %cmp19, label %return, label %cont23, !dbg !2216

cont23:                                           ; preds = %if.then17
  %len = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 2, i32 0, !dbg !2216
  %8 = load i32* %len, align 4, !dbg !2216, !tbaa !1937
  %cmp24 = icmp ugt i32 %8, 23, !dbg !2216
  br i1 %cmp24, label %land.lhs.true26, label %if.end43, !dbg !2216

land.lhs.true26:                                  ; preds = %cont23
  %data28 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 2, i32 1, !dbg !2216
  %9 = load i8** %data28, align 4, !dbg !2216, !tbaa !1942
  %arrayidx29 = getelementptr inbounds i8* %9, i32 22, !dbg !2216
  %10 = load i8* %arrayidx29, align 1, !dbg !2216, !tbaa !1935
  %cmp33 = icmp eq i8 %10, %7, !dbg !2216
  br i1 %cmp33, label %land.lhs.true35, label %if.end43, !dbg !2216

land.lhs.true35:                                  ; preds = %land.lhs.true26
  %arrayidx38 = getelementptr inbounds i8* %9, i32 23, !dbg !2216
  %11 = load i8* %arrayidx38, align 1, !dbg !2216, !tbaa !1935
  %cmp40 = icmp eq i8 %11, 61, !dbg !2216
  br i1 %cmp40, label %return, label %if.end43, !dbg !2216

if.end43:                                         ; preds = %land.lhs.true35, %land.lhs.true26, %cont23
  %arrayidx45 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 0, i32 0, !dbg !2218
  %12 = load i32* %arrayidx45, align 4, !dbg !2218, !tbaa !1937
  %arrayidx47 = getelementptr inbounds [4 x i32]* %uid_set, i32 0, i32 0, !dbg !2218
  store i32 %12, i32* %arrayidx47, align 4, !dbg !2218, !tbaa !1937
  %arrayidx49 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 0, i32 1, !dbg !2219
  %13 = load i32* %arrayidx49, align 4, !dbg !2219, !tbaa !1937
  %arrayidx51 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, i32 1, !dbg !2219
  store i32 %13, i32* %arrayidx51, align 4, !dbg !2219, !tbaa !1937
  %arrayidx53 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 0, i32 2, !dbg !2220
  %14 = load i32* %arrayidx53, align 4, !dbg !2220, !tbaa !1937
  %arrayidx55 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, i32 2, !dbg !2220
  store i32 %14, i32* %arrayidx55, align 4, !dbg !2220, !tbaa !1937
  %15 = load i32* %arrayidx1, align 4, !dbg !2221, !tbaa !1937
  store i32 %15, i32* %arrayidx, align 4, !dbg !2221, !tbaa !1937
  br label %return, !dbg !2222

cont61:                                           ; preds = %if.then5, %land.lhs.true
  %reset = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 3, !dbg !2223
  store i32 1, i32* %reset, align 4, !dbg !2223, !tbaa !1937
  %16 = load i32* %3, align 4, !dbg !2225
  %bf.clear62 = and i32 %16, 268435455, !dbg !2225
  %cmp66 = icmp eq i32 %bf.clear62, 3, !dbg !2225
  br i1 %cmp66, label %cont71, label %cont98, !dbg !2225

cont71:                                           ; preds = %cont61
  %data69 = getelementptr inbounds %struct.ngx_variable_value_t* %call, i32 0, i32 1, !dbg !2225
  %17 = load i8** %data69, align 4, !dbg !2225, !tbaa !1942
  %call72 = tail call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([4 x i8]* @.str17, i32 0, i32 0), i32 3) nounwind readonly, !dbg !2225
  %cmp73 = icmp eq i32 %call72, 0, !dbg !2225
  br i1 %cmp73, label %if.then75, label %cont98, !dbg !2225

if.then75:                                        ; preds = %cont71
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2226
  %18 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2226, !tbaa !1942
  %log = getelementptr inbounds %struct.ngx_connection_s* %18, i32 0, i32 10, !dbg !2226
  %19 = load %struct.ngx_log_s** %log, align 4, !dbg !2226, !tbaa !1942
  %log_level = getelementptr inbounds %struct.ngx_log_s* %19, i32 0, i32 0, !dbg !2226
  %20 = load i32* %log_level, align 4, !dbg !2226, !tbaa !1937
  %cmp78 = icmp ugt i32 %20, 5, !dbg !2226
  br i1 %cmp78, label %cont82, label %cont98, !dbg !2226

cont82:                                           ; preds = %if.then75
  %name = getelementptr inbounds %struct.ngx_http_userid_conf_t* %conf, i32 0, i32 2, !dbg !2228
  %arrayidx86 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 0, i32 0, !dbg !2228
  %21 = load i32* %arrayidx86, align 4, !dbg !2228, !tbaa !1937
  %arrayidx88 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 0, i32 1, !dbg !2228
  %22 = load i32* %arrayidx88, align 4, !dbg !2228, !tbaa !1937
  %arrayidx90 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 0, i32 2, !dbg !2228
  %23 = load i32* %arrayidx90, align 4, !dbg !2228, !tbaa !1937
  %24 = load i32* %arrayidx1, align 4, !dbg !2228, !tbaa !1937
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 6, %struct.ngx_log_s* %19, i32 0, i8* getelementptr inbounds ([50 x i8]* @.str24, i32 0, i32 0), %struct.ngx_str_t* %name, i32 %21, i32 %22, i32 %23, i32 %24) nounwind, !dbg !2228
  br label %cont98, !dbg !2228

cont98:                                           ; preds = %cont61, %cont71, %cont82, %if.then75, %if.end
  %enable = getelementptr inbounds %struct.ngx_http_userid_conf_t* %conf, i32 0, i32 0, !dbg !2229
  %25 = load i32* %enable, align 4, !dbg !2229, !tbaa !1937
  %cmp99 = icmp eq i32 %25, 2, !dbg !2229
  %service = getelementptr inbounds %struct.ngx_http_userid_conf_t* %conf, i32 0, i32 1, !dbg !2230
  %26 = load i32* %service, align 4, !dbg !2230, !tbaa !1937
  %cmp104 = icmp eq i32 %26, -1, !dbg !2230
  br i1 %cmp99, label %cont103, label %cont134, !dbg !2229

cont103:                                          ; preds = %cont98
  br i1 %cmp104, label %cont108, label %if.else111, !dbg !2230

cont108:                                          ; preds = %cont103
  %arrayidx110 = getelementptr inbounds [4 x i32]* %uid_set, i32 0, i32 0, !dbg !2232
  store i32 0, i32* %arrayidx110, align 4, !dbg !2232, !tbaa !1937
  br label %if.end117, !dbg !2234

if.else111:                                       ; preds = %cont103
  %27 = icmp sgt i32 %26, -1, !dbg !2235
  br i1 %27, label %cont114, label %ioc_bb113, !dbg !2235

ioc_bb113:                                        ; preds = %if.else111
  %28 = sext i32 %26 to i64, !dbg !2235
  tail call void @__ioc_report_conversion(i32 305, i32 27, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %28, i8 1) nounwind, !dbg !2235
  br label %cont114, !dbg !2235

cont114:                                          ; preds = %ioc_bb113, %if.else111
  %arrayidx116 = getelementptr inbounds [4 x i32]* %uid_set, i32 0, i32 0, !dbg !2235
  store i32 %26, i32* %arrayidx116, align 4, !dbg !2235, !tbaa !1937
  br label %if.end117

if.end117:                                        ; preds = %cont114, %cont108
  %29 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2237, !tbaa !1942
  %sec = getelementptr inbounds %struct.ngx_time_t* %29, i32 0, i32 0, !dbg !2237
  %30 = load volatile i32* %sec, align 4, !dbg !2237, !tbaa !1934
  %31 = icmp sgt i32 %30, -1, !dbg !2237
  br i1 %31, label %cont120, label %ioc_bb119, !dbg !2237

ioc_bb119:                                        ; preds = %if.end117
  %32 = sext i32 %30 to i64, !dbg !2237
  tail call void @__ioc_report_conversion(i32 307, i32 37, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %32, i8 1) nounwind, !dbg !2237
  br label %cont120, !dbg !2237

cont120:                                          ; preds = %ioc_bb119, %if.end117
  %arrayidx122 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, i32 1, !dbg !2237
  store i32 %30, i32* %arrayidx122, align 4, !dbg !2237, !tbaa !1937
  %33 = load i32* @start_value, align 4, !dbg !2238, !tbaa !1937
  %arrayidx124 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, i32 2, !dbg !2238
  store i32 %33, i32* %arrayidx124, align 4, !dbg !2238, !tbaa !1937
  %34 = load i32* @sequencer_v1, align 4, !dbg !2239, !tbaa !1937
  store i32 %34, i32* %arrayidx, align 4, !dbg !2239, !tbaa !1937
  %35 = load i32* @sequencer_v1, align 4, !dbg !2240, !tbaa !1937
  %36 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %35, i32 256), !dbg !2240
  %37 = extractvalue { i32, i1 } %36, 0, !dbg !2240
  %38 = extractvalue { i32, i1 } %36, 1, !dbg !2240
  br i1 %38, label %ioc_bb129, label %cont130, !dbg !2240

ioc_bb129:                                        ; preds = %cont120
  %39 = zext i32 %35 to i64, !dbg !2240
  tail call void @__ioc_report_add_overflow(i32 310, i32 18, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %39, i64 256, i8 5) nounwind, !dbg !2240
  br label %cont130, !dbg !2240

cont130:                                          ; preds = %cont120, %ioc_bb129
  store i32 %37, i32* @sequencer_v1, align 4, !dbg !2240, !tbaa !1937
  br label %return, !dbg !2241

cont134:                                          ; preds = %cont98
  br i1 %cmp104, label %if.then137, label %if.else152, !dbg !2242

if.then137:                                       ; preds = %cont134
  %connection138 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2243
  %40 = load %struct.ngx_connection_s** %connection138, align 4, !dbg !2243, !tbaa !1942
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_connection_s* %40}, i64 0, metadata !1739), !dbg !2243
  %call141 = tail call i32 @ngx_connection_local_sockaddr(%struct.ngx_connection_s* %40, %struct.ngx_str_t* null, i32 0) nounwind, !dbg !2245
  %cmp142 = icmp eq i32 %call141, 0, !dbg !2245
  br i1 %cmp142, label %sw.default, label %return, !dbg !2245

sw.default:                                       ; preds = %if.then137
  %local_sockaddr149 = getelementptr inbounds %struct.ngx_connection_s* %40, i32 0, i32 15, !dbg !2246
  %41 = load %struct.sockaddr** %local_sockaddr149, align 4, !dbg !2246, !tbaa !1942
  %sin_addr = getelementptr inbounds %struct.sockaddr* %41, i32 0, i32 1, i32 2, !dbg !2249
  %s_addr = bitcast i8* %sin_addr to i32*, !dbg !2249
  %42 = load i32* %s_addr, align 4, !dbg !2249, !tbaa !1937
  %arrayidx151 = getelementptr inbounds [4 x i32]* %uid_set, i32 0, i32 0, !dbg !2249
  store i32 %42, i32* %arrayidx151, align 4, !dbg !2249, !tbaa !1937
  br label %if.end159, !dbg !2250

if.else152:                                       ; preds = %cont134
  %43 = icmp sgt i32 %26, -1, !dbg !2251
  br i1 %43, label %cont156, label %ioc_bb155, !dbg !2251

ioc_bb155:                                        ; preds = %if.else152
  %44 = sext i32 %26 to i64, !dbg !2251
  tail call void @__ioc_report_conversion(i32 331, i32 27, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %44, i8 1) nounwind, !dbg !2251
  br label %cont156, !dbg !2251

cont156:                                          ; preds = %ioc_bb155, %if.else152
  tail call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !1761), !dbg !2251
  %45 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %26) nounwind, !dbg !2251, !srcloc !2252
  tail call void @llvm.dbg.value(metadata !{i32 %45}, i64 0, metadata !1757), !dbg !2251
  %arrayidx158 = getelementptr inbounds [4 x i32]* %uid_set, i32 0, i32 0, !dbg !2251
  store i32 %45, i32* %arrayidx158, align 4, !dbg !2251, !tbaa !1937
  br label %if.end159

if.end159:                                        ; preds = %cont156, %sw.default
  %46 = load %struct.ngx_time_t** @ngx_cached_time, align 4, !dbg !2253, !tbaa !1942
  %sec162 = getelementptr inbounds %struct.ngx_time_t* %46, i32 0, i32 0, !dbg !2253
  %47 = load volatile i32* %sec162, align 4, !dbg !2253, !tbaa !1934
  %48 = icmp sgt i32 %47, -1, !dbg !2253
  br i1 %48, label %cont165, label %ioc_bb164, !dbg !2253

ioc_bb164:                                        ; preds = %if.end159
  %49 = sext i32 %47 to i64, !dbg !2253
  tail call void @__ioc_report_conversion(i32 333, i32 25, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %49, i8 1) nounwind, !dbg !2253
  br label %cont165, !dbg !2253

cont165:                                          ; preds = %ioc_bb164, %if.end159
  tail call void @llvm.dbg.value(metadata !{i32 %47}, i64 0, metadata !1764), !dbg !2253
  %50 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %47) nounwind, !dbg !2253, !srcloc !2254
  tail call void @llvm.dbg.value(metadata !{i32 %50}, i64 0, metadata !1762), !dbg !2253
  %arrayidx167 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, i32 1, !dbg !2253
  store i32 %50, i32* %arrayidx167, align 4, !dbg !2253, !tbaa !1937
  %51 = load i32* @start_value, align 4, !dbg !2255, !tbaa !1937
  tail call void @llvm.dbg.value(metadata !{i32 %51}, i64 0, metadata !1767), !dbg !2255
  %52 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %51) nounwind, !dbg !2255, !srcloc !2256
  tail call void @llvm.dbg.value(metadata !{i32 %52}, i64 0, metadata !1765), !dbg !2255
  %arrayidx171 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %ctx, i32 0, i32 1, i32 2, !dbg !2255
  store i32 %52, i32* %arrayidx171, align 4, !dbg !2255, !tbaa !1937
  %53 = load i32* @sequencer_v2, align 4, !dbg !2257, !tbaa !1937
  tail call void @llvm.dbg.value(metadata !{i32 %53}, i64 0, metadata !1770), !dbg !2257
  %54 = tail call i32 asm "bswap $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %53) nounwind, !dbg !2257, !srcloc !2258
  tail call void @llvm.dbg.value(metadata !{i32 %54}, i64 0, metadata !1768), !dbg !2257
  store i32 %54, i32* %arrayidx, align 4, !dbg !2257, !tbaa !1937
  %55 = load i32* @sequencer_v2, align 4, !dbg !2259, !tbaa !1937
  %56 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %55, i32 256), !dbg !2259
  %57 = extractvalue { i32, i1 } %56, 0, !dbg !2259
  %58 = extractvalue { i32, i1 } %56, 1, !dbg !2259
  br i1 %58, label %ioc_bb178, label %cont179, !dbg !2259

ioc_bb178:                                        ; preds = %cont165
  %59 = zext i32 %55 to i64, !dbg !2259
  tail call void @__ioc_report_add_overflow(i32 336, i32 18, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @7, i32 0, i32 0), i64 %59, i64 256, i8 5) nounwind, !dbg !2259
  br label %cont179, !dbg !2259

cont179:                                          ; preds = %cont165, %ioc_bb178
  store i32 %57, i32* @sequencer_v2, align 4, !dbg !2259, !tbaa !1937
  %cmp182 = icmp ult i32 %57, 50529026, !dbg !2260
  br i1 %cmp182, label %cont186, label %return, !dbg !2260

cont186:                                          ; preds = %cont179
  store i32 50529026, i32* @sequencer_v2, align 4, !dbg !2261, !tbaa !1937
  br label %return, !dbg !2263

return:                                           ; preds = %cont130, %cont186, %cont179, %if.then137, %if.then17, %land.lhs.true35, %entry, %if.end43
  %retval.0 = phi i32 [ 0, %if.end43 ], [ 0, %entry ], [ 0, %land.lhs.true35 ], [ 0, %if.then17 ], [ -1, %if.then137 ], [ 0, %cont179 ], [ 0, %cont186 ], [ 0, %cont130 ]
  ret i32 %retval.0, !dbg !2264
}

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @ngx_encode_base64(%struct.ngx_str_t*, %struct.ngx_str_t*)

declare i8* @ngx_http_cookie_time(i8*, i32)

declare i8* @ngx_list_push(%struct.ngx_list_t*)

declare %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s*, i32)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32 @ngx_connection_local_sockaddr(%struct.ngx_connection_s*, %struct.ngx_str_t*, i32)

declare i32 @ngx_http_parse_multi_header_lines(%struct.ngx_array_s*, %struct.ngx_str_t*, %struct.ngx_str_t*)

declare i32 @ngx_decode_base64(%struct.ngx_str_t*, %struct.ngx_str_t*)

declare %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32)

define internal i32 @ngx_http_userid_got_variable(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_variable_value_t* nocapture %v, i32 %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1838), !dbg !2265
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1839), !dbg !2265
  tail call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1840), !dbg !2265
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_userid_filter_module, i32 0, i32 0), align 4, !dbg !2266, !tbaa !1937
  %main = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 29, !dbg !2266
  %1 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2266, !tbaa !1942
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %1, i32 0, i32 5, !dbg !2266
  %2 = load i8*** %loc_conf, align 4, !dbg !2266, !tbaa !1942
  %arrayidx = getelementptr inbounds i8** %2, i32 %0, !dbg !2266
  %3 = load i8** %arrayidx, align 4, !dbg !2266, !tbaa !1942
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_conf_t* %8}, i64 0, metadata !1843), !dbg !2266
  %enable = bitcast i8* %3 to i32*, !dbg !2267
  %4 = load i32* %enable, align 4, !dbg !2267, !tbaa !1937
  %cmp = icmp eq i32 %4, 0, !dbg !2267
  br i1 %cmp, label %cont2, label %if.end, !dbg !2267

cont2:                                            ; preds = %entry
  %5 = bitcast %struct.ngx_variable_value_t* %v to i32*, !dbg !2268
  %6 = load i32* %5, align 4, !dbg !2268
  %7 = or i32 %6, 1073741824, !dbg !2268
  store i32 %7, i32* %5, align 4, !dbg !2268
  br label %return, !dbg !2270

if.end:                                           ; preds = %entry
  %8 = bitcast i8* %3 to %struct.ngx_http_userid_conf_t*, !dbg !2266
  %call = tail call fastcc %struct.ngx_http_userid_ctx_t* @ngx_http_userid_get_uid(%struct.ngx_http_request_s* %1, %struct.ngx_http_userid_conf_t* %8), !dbg !2271
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_ctx_t* %call}, i64 0, metadata !1841), !dbg !2271
  %cmp4 = icmp eq %struct.ngx_http_userid_ctx_t* %call, null, !dbg !2272
  br i1 %cmp4, label %return, label %cont11, !dbg !2272

cont11:                                           ; preds = %if.end
  %arrayidx9 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call, i32 0, i32 0, i32 3, !dbg !2273
  %9 = load i32* %arrayidx9, align 4, !dbg !2273, !tbaa !1937
  %cmp12 = icmp eq i32 %9, 0, !dbg !2273
  br i1 %cmp12, label %cont19, label %if.then13, !dbg !2273

if.then13:                                        ; preds = %cont11
  %10 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2274, !tbaa !1942
  %name = getelementptr inbounds i8* %3, i32 8, !dbg !2274
  %11 = bitcast i8* %name to %struct.ngx_str_t*, !dbg !2274
  %arraydecay = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call, i32 0, i32 0, i32 0, !dbg !2274
  %call16 = tail call fastcc i32 @ngx_http_userid_variable(%struct.ngx_http_request_s* %10, %struct.ngx_variable_value_t* %v, %struct.ngx_str_t* %11, i32* %arraydecay), !dbg !2274
  br label %return, !dbg !2274

cont19:                                           ; preds = %cont11
  %12 = bitcast %struct.ngx_variable_value_t* %v to i32*, !dbg !2276
  %13 = load i32* %12, align 4, !dbg !2276
  %14 = or i32 %13, 1073741824, !dbg !2276
  store i32 %14, i32* %12, align 4, !dbg !2276
  br label %return, !dbg !2277

return:                                           ; preds = %if.end, %cont19, %if.then13, %cont2
  %retval.0 = phi i32 [ 0, %cont2 ], [ %call16, %if.then13 ], [ 0, %cont19 ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !2278
}

define internal i32 @ngx_http_userid_set_variable(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_variable_value_t* nocapture %v, i32 %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1819), !dbg !2279
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1820), !dbg !2279
  tail call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1821), !dbg !2279
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_userid_filter_module, i32 0, i32 0), align 4, !dbg !2280, !tbaa !1937
  %main = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 29, !dbg !2280
  %1 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2280, !tbaa !1942
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %1, i32 0, i32 5, !dbg !2280
  %2 = load i8*** %loc_conf, align 4, !dbg !2280, !tbaa !1942
  %arrayidx = getelementptr inbounds i8** %2, i32 %0, !dbg !2280
  %3 = load i8** %arrayidx, align 4, !dbg !2280, !tbaa !1942
  %4 = bitcast i8* %3 to %struct.ngx_http_userid_conf_t*, !dbg !2280
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_conf_t* %4}, i64 0, metadata !1824), !dbg !2280
  %enable = bitcast i8* %3 to i32*, !dbg !2281
  %5 = load i32* %enable, align 4, !dbg !2281, !tbaa !1937
  %cmp = icmp ult i32 %5, 2, !dbg !2281
  br i1 %cmp, label %cont2, label %if.end, !dbg !2281

cont2:                                            ; preds = %entry
  %6 = bitcast %struct.ngx_variable_value_t* %v to i32*, !dbg !2282
  %7 = load i32* %6, align 4, !dbg !2282
  %8 = or i32 %7, 1073741824, !dbg !2282
  store i32 %8, i32* %6, align 4, !dbg !2282
  br label %return, !dbg !2284

if.end:                                           ; preds = %entry
  %call = tail call fastcc %struct.ngx_http_userid_ctx_t* @ngx_http_userid_get_uid(%struct.ngx_http_request_s* %1, %struct.ngx_http_userid_conf_t* %4), !dbg !2285
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_userid_ctx_t* %call}, i64 0, metadata !1822), !dbg !2285
  %cmp4 = icmp eq %struct.ngx_http_userid_ctx_t* %call, null, !dbg !2286
  br i1 %cmp4, label %return, label %if.end8, !dbg !2286

if.end8:                                          ; preds = %if.end
  %9 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2287, !tbaa !1942
  %call10 = tail call fastcc i32 @ngx_http_userid_create_uid(%struct.ngx_http_request_s* %9, %struct.ngx_http_userid_ctx_t* %call, %struct.ngx_http_userid_conf_t* %4), !dbg !2287
  %cmp11 = icmp eq i32 %call10, 0, !dbg !2287
  br i1 %cmp11, label %cont18, label %return, !dbg !2287

cont18:                                           ; preds = %if.end8
  %arrayidx16 = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call, i32 0, i32 1, i32 3, !dbg !2288
  %10 = load i32* %arrayidx16, align 4, !dbg !2288, !tbaa !1937
  %cmp19 = icmp eq i32 %10, 0, !dbg !2288
  br i1 %cmp19, label %cont22, label %if.end23, !dbg !2288

cont22:                                           ; preds = %cont18
  %11 = bitcast %struct.ngx_variable_value_t* %v to i32*, !dbg !2289
  %12 = load i32* %11, align 4, !dbg !2289
  %13 = or i32 %12, 1073741824, !dbg !2289
  store i32 %13, i32* %11, align 4, !dbg !2289
  br label %return, !dbg !2291

if.end23:                                         ; preds = %cont18
  %14 = load %struct.ngx_http_request_s** %main, align 4, !dbg !2292, !tbaa !1942
  %name = getelementptr inbounds i8* %3, i32 8, !dbg !2292
  %15 = bitcast i8* %name to %struct.ngx_str_t*, !dbg !2292
  %arraydecay = getelementptr inbounds %struct.ngx_http_userid_ctx_t* %call, i32 0, i32 1, i32 0, !dbg !2292
  %call26 = tail call fastcc i32 @ngx_http_userid_variable(%struct.ngx_http_request_s* %14, %struct.ngx_variable_value_t* %v, %struct.ngx_str_t* %15, i32* %arraydecay), !dbg !2292
  br label %return, !dbg !2292

return:                                           ; preds = %if.end8, %if.end, %if.end23, %cont22, %cont2
  %retval.0 = phi i32 [ 0, %cont2 ], [ 0, %cont22 ], [ %call26, %if.end23 ], [ -1, %if.end ], [ -1, %if.end8 ]
  ret i32 %retval.0, !dbg !2293
}

define internal i32 @ngx_http_userid_reset_variable(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_variable_value_t* nocapture %v, i32 %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1813), !dbg !2294
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1814), !dbg !2294
  tail call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1815), !dbg !2294
  %0 = bitcast %struct.ngx_variable_value_t* %v to i64*, !dbg !2295
  %1 = load i64* bitcast (%struct.ngx_variable_value_t* @ngx_http_variable_null_value to i64*), align 4, !dbg !2295
  store i64 %1, i64* %0, align 4, !dbg !2295
  ret i32 0, !dbg !2297
}

declare i32 @ngx_http_get_variable_index(%struct.ngx_conf_s*, %struct.ngx_str_t*)

define internal fastcc i32 @ngx_http_userid_variable(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_variable_value_t* nocapture %v, %struct.ngx_str_t* %name, i32* nocapture %uid) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1831), !dbg !2298
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1832), !dbg !2298
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %name}, i64 0, metadata !1833), !dbg !2298
  tail call void @llvm.dbg.value(metadata !{i32* %uid}, i64 0, metadata !1834), !dbg !2298
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !2299
  %0 = load i32* %len, align 4, !dbg !2299, !tbaa !1937
  %1 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %0, i32 34), !dbg !2299
  %2 = extractvalue { i32, i1 } %1, 0, !dbg !2299
  %3 = extractvalue { i32, i1 } %1, 1, !dbg !2299
  br i1 %3, label %ioc_bb, label %cont2, !dbg !2299

ioc_bb:                                           ; preds = %entry
  %4 = zext i32 %0 to i64, !dbg !2299
  tail call void @__ioc_report_add_overflow(i32 346, i32 26, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @12, i32 0, i32 0), i64 %4, i64 34, i8 5) nounwind, !dbg !2299
  br label %cont2, !dbg !2299

cont2:                                            ; preds = %ioc_bb, %entry
  %5 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 1), !dbg !2299
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !2299
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !2299
  br i1 %7, label %ioc_bb3, label %cont4, !dbg !2299

ioc_bb3:                                          ; preds = %cont2
  %8 = zext i32 %2 to i64, !dbg !2299
  tail call void @__ioc_report_sub_overflow(i32 346, i32 72, i8* getelementptr inbounds ([49 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @13, i32 0, i32 0), i64 %8, i64 1, i8 5) nounwind, !dbg !2299
  br label %cont4, !dbg !2299

cont4:                                            ; preds = %cont2, %ioc_bb3
  %bf.value = and i32 %6, 268435455, !dbg !2299
  %9 = bitcast %struct.ngx_variable_value_t* %v to i32*, !dbg !2299
  %10 = load i32* %9, align 4, !dbg !2299
  %11 = and i32 %10, -268435456, !dbg !2299
  %12 = or i32 %11, %bf.value, !dbg !2299
  store i32 %12, i32* %9, align 4, !dbg !2299
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2301
  %13 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2301, !tbaa !1942
  %call = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %13, i32 %bf.value) nounwind, !dbg !2301
  %data = getelementptr inbounds %struct.ngx_variable_value_t* %v, i32 0, i32 1, !dbg !2301
  store i8* %call, i8** %data, align 4, !dbg !2301, !tbaa !1942
  %cmp = icmp eq i8* %call, null, !dbg !2302
  br i1 %cmp, label %return, label %cont9, !dbg !2302

cont9:                                            ; preds = %cont4
  %14 = load i32* %9, align 4, !dbg !2303
  %15 = and i32 %14, -1879048193, !dbg !2304
  %16 = or i32 %15, 268435456, !dbg !2304
  store i32 %16, i32* %9, align 4, !dbg !2304
  %17 = load i32* %uid, align 4, !dbg !2305, !tbaa !1937
  %arrayidx15 = getelementptr inbounds i32* %uid, i32 1, !dbg !2305
  %18 = load i32* %arrayidx15, align 4, !dbg !2305, !tbaa !1937
  %arrayidx16 = getelementptr inbounds i32* %uid, i32 2, !dbg !2305
  %19 = load i32* %arrayidx16, align 4, !dbg !2305, !tbaa !1937
  %arrayidx17 = getelementptr inbounds i32* %uid, i32 3, !dbg !2305
  %20 = load i32* %arrayidx17, align 4, !dbg !2305, !tbaa !1937
  %call18 = tail call i8* (i8*, i8*, ...)* @ngx_sprintf(i8* %call, i8* getelementptr inbounds ([24 x i8]* @.str28, i32 0, i32 0), %struct.ngx_str_t* %name, i32 %17, i32 %18, i32 %19, i32 %20) nounwind, !dbg !2305
  br label %return, !dbg !2306

return:                                           ; preds = %cont4, %cont9
  %retval.0 = phi i32 [ 0, %cont9 ], [ -1, %cont4 ]
  ret i32 %retval.0, !dbg !2307
}

declare i8* @ngx_sprintf(i8*, i8*, ...)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_userid_filter_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1844} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !435, metadata !504, metadata !520, metadata !541, metadata !551, metadata !567, metadata !576, metadata !584, metadata !590, metadata !1717, metadata !1733, metadata !1771, metadata !1785, metadata !1810, metadata !1816, metadata !1825, metadata !1835}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_init_worker", metadata !"ngx_http_userid_init_worker", metadata !"", metadata !6, i32 580, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_cycle_s*)* @ngx_http_userid_init_worker, null, null, metadata !424, i32 581} ; [ DW_TAG_subprogram ] [line 580] [local] [def] [scope 581] [ngx_http_userid_init_worker]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_userid_filter_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !14}
!9 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !10, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!10 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !10, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!12 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !10, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!13 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!15 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !10, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!16 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !17, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!17 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!18 = metadata !{metadata !19, metadata !24, metadata !200, metadata !201, metadata !202, metadata !379, metadata !380, metadata !381, metadata !382, metadata !391, metadata !392, metadata !409, metadata !410, metadata !411, metadata !412, metadata !413, metadata !414, metadata !415, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423}
!19 = metadata !{i32 786445, metadata !16, metadata !"conf_ctx", metadata !17, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!20 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!23 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!24 = metadata !{i32 786445, metadata !16, metadata !"pool", metadata !17, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!26 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !27, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!27 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !29, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!29 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!30 = metadata !{metadata !31, metadata !49, metadata !51, metadata !52, metadata !180, metadata !187, metadata !199}
!31 = metadata !{i32 786445, metadata !28, metadata !"d", metadata !29, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!32 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !29, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!33 = metadata !{i32 786451, null, metadata !"", metadata !29, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!34 = metadata !{metadata !35, metadata !41, metadata !42, metadata !45}
!35 = metadata !{i32 786445, metadata !33, metadata !"last", metadata !29, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!36 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!37 = metadata !{i32 786454, null, metadata !"u_char", metadata !38, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !39} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!38 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786454, null, metadata !"__u_char", metadata !38, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!40 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!41 = metadata !{i32 786445, metadata !33, metadata !"end", metadata !29, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!42 = metadata !{i32 786445, metadata !33, metadata !"next", metadata !29, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !43} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!43 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!44 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !29, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!45 = metadata !{i32 786445, metadata !33, metadata !"failed", metadata !29, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !46} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!46 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !10, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!47 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !10, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!48 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!49 = metadata !{i32 786445, metadata !28, metadata !"max", metadata !29, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!50 = metadata !{i32 786454, null, metadata !"size_t", metadata !38, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!51 = metadata !{i32 786445, metadata !28, metadata !"current", metadata !29, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !43} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!52 = metadata !{i32 786445, metadata !28, metadata !"chain", metadata !29, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !53} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!53 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!54 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !29, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!55 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !56, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!56 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!57 = metadata !{metadata !58, metadata !177}
!58 = metadata !{i32 786445, metadata !55, metadata !"buf", metadata !56, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!59 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!60 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !56, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !61} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!61 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !56, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !62, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !65, metadata !70, metadata !71, metadata !72, metadata !73, metadata !75, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176}
!63 = metadata !{i32 786445, metadata !61, metadata !"pos", metadata !56, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !61, metadata !"last", metadata !56, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!65 = metadata !{i32 786445, metadata !61, metadata !"file_pos", metadata !56, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!66 = metadata !{i32 786454, null, metadata !"off_t", metadata !56, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!67 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !56, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!68 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !56, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!69 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!70 = metadata !{i32 786445, metadata !61, metadata !"file_last", metadata !56, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!71 = metadata !{i32 786445, metadata !61, metadata !"start", metadata !56, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!72 = metadata !{i32 786445, metadata !61, metadata !"end", metadata !56, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !36} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!73 = metadata !{i32 786445, metadata !61, metadata !"tag", metadata !56, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !74} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!74 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !56, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!75 = metadata !{i32 786445, metadata !61, metadata !"file", metadata !56, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !76} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!76 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!77 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !56, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !78} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!78 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !79, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!79 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!80 = metadata !{metadata !81, metadata !83, metadata !89, metadata !130, metadata !131, metadata !132, metadata !162, metadata !163}
!81 = metadata !{i32 786445, metadata !78, metadata !"fd", metadata !79, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!82 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !79, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!83 = metadata !{i32 786445, metadata !78, metadata !"name", metadata !79, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!84 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !10, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!85 = metadata !{i32 786451, null, metadata !"", metadata !38, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!86 = metadata !{metadata !87, metadata !88}
!87 = metadata !{i32 786445, metadata !85, metadata !"len", metadata !38, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !50} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!88 = metadata !{i32 786445, metadata !85, metadata !"data", metadata !38, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!89 = metadata !{i32 786445, metadata !78, metadata !"info", metadata !79, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !90} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!90 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !79, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!91 = metadata !{i32 786451, null, metadata !"stat", metadata !92, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!92 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!93 = metadata !{metadata !94, metadata !98, metadata !100, metadata !103, metadata !105, metadata !107, metadata !109, metadata !111, metadata !112, metadata !113, metadata !114, metadata !117, metadata !119, metadata !126, metadata !127, metadata !128}
!94 = metadata !{i32 786445, metadata !91, metadata !"st_dev", metadata !92, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !95} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!95 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !92, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!96 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !92, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!97 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!98 = metadata !{i32 786445, metadata !91, metadata !"__pad1", metadata !92, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !99} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!99 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!100 = metadata !{i32 786445, metadata !91, metadata !"__st_ino", metadata !92, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !101} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!101 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !92, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!102 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!103 = metadata !{i32 786445, metadata !91, metadata !"st_mode", metadata !92, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !104} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!104 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !92, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!105 = metadata !{i32 786445, metadata !91, metadata !"st_nlink", metadata !92, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!106 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !92, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!107 = metadata !{i32 786445, metadata !91, metadata !"st_uid", metadata !92, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !108} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!108 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !92, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!109 = metadata !{i32 786445, metadata !91, metadata !"st_gid", metadata !92, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !110} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!110 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !92, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!111 = metadata !{i32 786445, metadata !91, metadata !"st_rdev", metadata !92, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !95} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!112 = metadata !{i32 786445, metadata !91, metadata !"__pad2", metadata !92, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !99} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!113 = metadata !{i32 786445, metadata !91, metadata !"st_size", metadata !92, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !67} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!114 = metadata !{i32 786445, metadata !91, metadata !"st_blksize", metadata !92, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !115} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!115 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !92, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!116 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!117 = metadata !{i32 786445, metadata !91, metadata !"st_blocks", metadata !92, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !118} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!118 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !92, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!119 = metadata !{i32 786445, metadata !91, metadata !"st_atim", metadata !92, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !120} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!120 = metadata !{i32 786451, null, metadata !"timespec", metadata !121, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!121 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!122 = metadata !{metadata !123, metadata !125}
!123 = metadata !{i32 786445, metadata !120, metadata !"tv_sec", metadata !121, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!124 = metadata !{i32 786454, null, metadata !"__time_t", metadata !121, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!125 = metadata !{i32 786445, metadata !120, metadata !"tv_nsec", metadata !121, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !116} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!126 = metadata !{i32 786445, metadata !91, metadata !"st_mtim", metadata !92, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !120} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!127 = metadata !{i32 786445, metadata !91, metadata !"st_ctim", metadata !92, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !120} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!128 = metadata !{i32 786445, metadata !91, metadata !"st_ino", metadata !92, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !129} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!129 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !92, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!130 = metadata !{i32 786445, metadata !78, metadata !"offset", metadata !79, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !66} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!131 = metadata !{i32 786445, metadata !78, metadata !"sys_offset", metadata !79, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !66} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!132 = metadata !{i32 786445, metadata !78, metadata !"log", metadata !79, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!133 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !134} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!134 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !79, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!135 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !136, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!136 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!137 = metadata !{metadata !138, metadata !139, metadata !149, metadata !151, metadata !158, metadata !159}
!138 = metadata !{i32 786445, metadata !135, metadata !"log_level", metadata !136, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!139 = metadata !{i32 786445, metadata !135, metadata !"file", metadata !136, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !140} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!140 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!141 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !136, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!142 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !10, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!144 = metadata !{i32 786445, metadata !142, metadata !"fd", metadata !10, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !82} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!145 = metadata !{i32 786445, metadata !142, metadata !"name", metadata !10, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!146 = metadata !{i32 786445, metadata !142, metadata !"buffer", metadata !10, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !36} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!147 = metadata !{i32 786445, metadata !142, metadata !"pos", metadata !10, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!148 = metadata !{i32 786445, metadata !142, metadata !"last", metadata !10, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!149 = metadata !{i32 786445, metadata !135, metadata !"connection", metadata !136, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !150} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!150 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !136, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!151 = metadata !{i32 786445, metadata !135, metadata !"handler", metadata !136, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !152} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!152 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !136, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !153} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!153 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !154} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!155 = metadata !{metadata !36, metadata !156, metadata !36, metadata !50}
!156 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !157} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!157 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !136, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !135} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!158 = metadata !{i32 786445, metadata !135, metadata !"data", metadata !136, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!159 = metadata !{i32 786445, metadata !135, metadata !"action", metadata !136, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !160} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!160 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!161 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!162 = metadata !{i32 786445, metadata !78, metadata !"valid_info", metadata !79, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !48} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!163 = metadata !{i32 786445, metadata !78, metadata !"directio", metadata !79, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !48} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!164 = metadata !{i32 786445, metadata !61, metadata !"shadow", metadata !56, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !59} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!165 = metadata !{i32 786445, metadata !61, metadata !"temporary", metadata !56, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !48} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!166 = metadata !{i32 786445, metadata !61, metadata !"memory", metadata !56, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !48} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!167 = metadata !{i32 786445, metadata !61, metadata !"mmap", metadata !56, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !48} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!168 = metadata !{i32 786445, metadata !61, metadata !"recycled", metadata !56, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !48} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!169 = metadata !{i32 786445, metadata !61, metadata !"in_file", metadata !56, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !48} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!170 = metadata !{i32 786445, metadata !61, metadata !"flush", metadata !56, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !48} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!171 = metadata !{i32 786445, metadata !61, metadata !"sync", metadata !56, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !48} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!172 = metadata !{i32 786445, metadata !61, metadata !"last_buf", metadata !56, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !48} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!173 = metadata !{i32 786445, metadata !61, metadata !"last_in_chain", metadata !56, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !48} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!174 = metadata !{i32 786445, metadata !61, metadata !"last_shadow", metadata !56, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !48} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!175 = metadata !{i32 786445, metadata !61, metadata !"temp_file", metadata !56, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !48} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!176 = metadata !{i32 786445, metadata !61, metadata !"num", metadata !56, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!177 = metadata !{i32 786445, metadata !55, metadata !"next", metadata !56, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !178} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!178 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !179} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!179 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !56, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!180 = metadata !{i32 786445, metadata !28, metadata !"large", metadata !29, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !181} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!181 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !182} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!182 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !29, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !183} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!183 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !29, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !184, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!184 = metadata !{metadata !185, metadata !186}
!185 = metadata !{i32 786445, metadata !183, metadata !"next", metadata !29, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !181} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!186 = metadata !{i32 786445, metadata !183, metadata !"alloc", metadata !29, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!187 = metadata !{i32 786445, metadata !28, metadata !"cleanup", metadata !29, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !188} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!188 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !189} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!189 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !29, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !190} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!190 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !29, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !191, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!191 = metadata !{metadata !192, metadata !197, metadata !198}
!192 = metadata !{i32 786445, metadata !190, metadata !"handler", metadata !29, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !193} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!193 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !29, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!194 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !195} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!195 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!196 = metadata !{null, metadata !23}
!197 = metadata !{i32 786445, metadata !190, metadata !"data", metadata !29, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!198 = metadata !{i32 786445, metadata !190, metadata !"next", metadata !29, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !188} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!199 = metadata !{i32 786445, metadata !28, metadata !"log", metadata !29, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!200 = metadata !{i32 786445, metadata !16, metadata !"log", metadata !17, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!201 = metadata !{i32 786445, metadata !16, metadata !"new_log", metadata !17, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !134} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!202 = metadata !{i32 786445, metadata !16, metadata !"files", metadata !17, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !203} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!203 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!204 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !205} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!205 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !17, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!206 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !207, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!207 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!208 = metadata !{metadata !209, metadata !210, metadata !265, metadata !266, metadata !268, metadata !277, metadata !279, metadata !284, metadata !289, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !371, metadata !372, metadata !373, metadata !374, metadata !375, metadata !376, metadata !377, metadata !378}
!209 = metadata !{i32 786445, metadata !206, metadata !"data", metadata !207, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!210 = metadata !{i32 786445, metadata !206, metadata !"read", metadata !207, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!211 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!212 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !207, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !213} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!213 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !214, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !215, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!214 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!215 = metadata !{metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223, metadata !224, metadata !225, metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !243, metadata !244, metadata !245, metadata !259, metadata !260, metadata !261, metadata !262, metadata !263}
!216 = metadata !{i32 786445, metadata !213, metadata !"data", metadata !214, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!217 = metadata !{i32 786445, metadata !213, metadata !"write", metadata !214, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!218 = metadata !{i32 786445, metadata !213, metadata !"accept", metadata !214, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !48} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!219 = metadata !{i32 786445, metadata !213, metadata !"instance", metadata !214, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !48} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!220 = metadata !{i32 786445, metadata !213, metadata !"active", metadata !214, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !48} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!221 = metadata !{i32 786445, metadata !213, metadata !"disabled", metadata !214, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !48} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!222 = metadata !{i32 786445, metadata !213, metadata !"ready", metadata !214, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !48} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!223 = metadata !{i32 786445, metadata !213, metadata !"oneshot", metadata !214, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !48} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!224 = metadata !{i32 786445, metadata !213, metadata !"complete", metadata !214, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !48} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!225 = metadata !{i32 786445, metadata !213, metadata !"eof", metadata !214, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !48} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!226 = metadata !{i32 786445, metadata !213, metadata !"error", metadata !214, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !48} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!227 = metadata !{i32 786445, metadata !213, metadata !"timedout", metadata !214, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !48} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!228 = metadata !{i32 786445, metadata !213, metadata !"timer_set", metadata !214, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !48} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!229 = metadata !{i32 786445, metadata !213, metadata !"delayed", metadata !214, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !48} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!230 = metadata !{i32 786445, metadata !213, metadata !"read_discarded", metadata !214, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !48} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!231 = metadata !{i32 786445, metadata !213, metadata !"unexpected_eof", metadata !214, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !48} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!232 = metadata !{i32 786445, metadata !213, metadata !"deferred_accept", metadata !214, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !48} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!233 = metadata !{i32 786445, metadata !213, metadata !"pending_eof", metadata !214, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !48} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!234 = metadata !{i32 786445, metadata !213, metadata !"posted_ready", metadata !214, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !48} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!235 = metadata !{i32 786445, metadata !213, metadata !"available", metadata !214, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !48} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!236 = metadata !{i32 786445, metadata !213, metadata !"handler", metadata !214, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !237} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!237 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !214, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !238} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!238 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !239} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!240 = metadata !{null, metadata !241}
!241 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !242} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!242 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !214, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !213} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!243 = metadata !{i32 786445, metadata !213, metadata !"index", metadata !214, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !46} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!244 = metadata !{i32 786445, metadata !213, metadata !"log", metadata !214, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!245 = metadata !{i32 786445, metadata !213, metadata !"timer", metadata !214, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !246} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!246 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !214, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!247 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !248, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!248 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!249 = metadata !{metadata !250, metadata !252, metadata !255, metadata !256, metadata !257, metadata !258}
!250 = metadata !{i32 786445, metadata !247, metadata !"key", metadata !248, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !251} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!251 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !248, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!252 = metadata !{i32 786445, metadata !247, metadata !"left", metadata !248, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !253} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!253 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !254} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!254 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !248, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !247} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!255 = metadata !{i32 786445, metadata !247, metadata !"right", metadata !248, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !253} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!256 = metadata !{i32 786445, metadata !247, metadata !"parent", metadata !248, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !253} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!257 = metadata !{i32 786445, metadata !247, metadata !"color", metadata !248, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !37} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!258 = metadata !{i32 786445, metadata !247, metadata !"data", metadata !248, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !37} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!259 = metadata !{i32 786445, metadata !213, metadata !"closed", metadata !214, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !48} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!260 = metadata !{i32 786445, metadata !213, metadata !"channel", metadata !214, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !48} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!261 = metadata !{i32 786445, metadata !213, metadata !"resolver", metadata !214, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !48} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!262 = metadata !{i32 786445, metadata !213, metadata !"next", metadata !214, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !241} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!263 = metadata !{i32 786445, metadata !213, metadata !"prev", metadata !214, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !264} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!264 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !241} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!265 = metadata !{i32 786445, metadata !206, metadata !"write", metadata !207, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!266 = metadata !{i32 786445, metadata !206, metadata !"fd", metadata !207, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !267} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!267 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !207, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!268 = metadata !{i32 786445, metadata !206, metadata !"recv", metadata !207, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !269} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!269 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !207, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!270 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!271 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !272, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!272 = metadata !{metadata !273, metadata !275, metadata !36, metadata !50}
!273 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !207, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !274} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!274 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !207, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!275 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !276} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!276 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !207, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !206} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!277 = metadata !{i32 786445, metadata !206, metadata !"send", metadata !207, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !278} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!278 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !207, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !270} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!279 = metadata !{i32 786445, metadata !206, metadata !"recv_chain", metadata !207, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !280} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!280 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !207, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !281} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!281 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !282} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!283 = metadata !{metadata !273, metadata !275, metadata !53}
!284 = metadata !{i32 786445, metadata !206, metadata !"send_chain", metadata !207, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !285} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!285 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !207, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !286} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!286 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !287} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!287 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!288 = metadata !{metadata !53, metadata !275, metadata !53, metadata !66}
!289 = metadata !{i32 786445, metadata !206, metadata !"listening", metadata !207, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !290} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!290 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !291} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!291 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !207, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !292} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!292 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !207, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!293 = metadata !{metadata !294, metadata !295, metadata !306, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317, metadata !318, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !335, metadata !336, metadata !337, metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345}
!294 = metadata !{i32 786445, metadata !292, metadata !"fd", metadata !207, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !267} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!295 = metadata !{i32 786445, metadata !292, metadata !"sockaddr", metadata !207, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !296} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!296 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !297} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!297 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !298, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!298 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!299 = metadata !{metadata !300, metadata !302}
!300 = metadata !{i32 786445, metadata !297, metadata !"sa_family", metadata !298, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !301} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!301 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !298, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!302 = metadata !{i32 786445, metadata !297, metadata !"sa_data", metadata !298, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !303} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!303 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !161, metadata !304, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!304 = metadata !{metadata !305}
!305 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!306 = metadata !{i32 786445, metadata !292, metadata !"socklen", metadata !207, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !307} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!307 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !207, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !308} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!308 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !207, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!309 = metadata !{i32 786445, metadata !292, metadata !"addr_text_max_len", metadata !207, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !50} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!310 = metadata !{i32 786445, metadata !292, metadata !"addr_text", metadata !207, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !84} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!311 = metadata !{i32 786445, metadata !292, metadata !"type", metadata !207, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !13} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!312 = metadata !{i32 786445, metadata !292, metadata !"backlog", metadata !207, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !13} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!313 = metadata !{i32 786445, metadata !292, metadata !"rcvbuf", metadata !207, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !13} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!314 = metadata !{i32 786445, metadata !292, metadata !"sndbuf", metadata !207, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !13} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!315 = metadata !{i32 786445, metadata !292, metadata !"keepidle", metadata !207, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !13} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!316 = metadata !{i32 786445, metadata !292, metadata !"keepintvl", metadata !207, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !13} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!317 = metadata !{i32 786445, metadata !292, metadata !"keepcnt", metadata !207, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!318 = metadata !{i32 786445, metadata !292, metadata !"handler", metadata !207, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !319} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!319 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !207, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !320} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!320 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !321} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!321 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !322, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!322 = metadata !{null, metadata !275}
!323 = metadata !{i32 786445, metadata !292, metadata !"servers", metadata !207, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!324 = metadata !{i32 786445, metadata !292, metadata !"log", metadata !207, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !134} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!325 = metadata !{i32 786445, metadata !292, metadata !"logp", metadata !207, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !133} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!326 = metadata !{i32 786445, metadata !292, metadata !"pool_size", metadata !207, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !50} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!327 = metadata !{i32 786445, metadata !292, metadata !"post_accept_buffer_size", metadata !207, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !50} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!328 = metadata !{i32 786445, metadata !292, metadata !"post_accept_timeout", metadata !207, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !329} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!329 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !207, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !251} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!330 = metadata !{i32 786445, metadata !292, metadata !"previous", metadata !207, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !290} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!331 = metadata !{i32 786445, metadata !292, metadata !"connection", metadata !207, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !275} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!332 = metadata !{i32 786445, metadata !292, metadata !"open", metadata !207, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !48} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!333 = metadata !{i32 786445, metadata !292, metadata !"remain", metadata !207, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !48} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!334 = metadata !{i32 786445, metadata !292, metadata !"ignore", metadata !207, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !48} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!335 = metadata !{i32 786445, metadata !292, metadata !"bound", metadata !207, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !48} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!336 = metadata !{i32 786445, metadata !292, metadata !"inherited", metadata !207, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !48} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!337 = metadata !{i32 786445, metadata !292, metadata !"nonblocking_accept", metadata !207, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !48} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!338 = metadata !{i32 786445, metadata !292, metadata !"listen", metadata !207, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !48} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!339 = metadata !{i32 786445, metadata !292, metadata !"nonblocking", metadata !207, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !48} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!340 = metadata !{i32 786445, metadata !292, metadata !"shared", metadata !207, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !48} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!341 = metadata !{i32 786445, metadata !292, metadata !"addr_ntop", metadata !207, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !48} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!342 = metadata !{i32 786445, metadata !292, metadata !"keepalive", metadata !207, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !48} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!343 = metadata !{i32 786445, metadata !292, metadata !"deferred_accept", metadata !207, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !48} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!344 = metadata !{i32 786445, metadata !292, metadata !"delete_deferred", metadata !207, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !48} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!345 = metadata !{i32 786445, metadata !292, metadata !"add_deferred", metadata !207, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !48} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!346 = metadata !{i32 786445, metadata !206, metadata !"sent", metadata !207, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !66} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!347 = metadata !{i32 786445, metadata !206, metadata !"log", metadata !207, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!348 = metadata !{i32 786445, metadata !206, metadata !"pool", metadata !207, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!349 = metadata !{i32 786445, metadata !206, metadata !"sockaddr", metadata !207, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !296} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!350 = metadata !{i32 786445, metadata !206, metadata !"socklen", metadata !207, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !307} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!351 = metadata !{i32 786445, metadata !206, metadata !"addr_text", metadata !207, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !84} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!352 = metadata !{i32 786445, metadata !206, metadata !"local_sockaddr", metadata !207, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !296} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!353 = metadata !{i32 786445, metadata !206, metadata !"buffer", metadata !207, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !59} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!354 = metadata !{i32 786445, metadata !206, metadata !"queue", metadata !207, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !355} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!355 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !207, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!356 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !357, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!357 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!358 = metadata !{metadata !359, metadata !362}
!359 = metadata !{i32 786445, metadata !356, metadata !"prev", metadata !357, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !360} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!360 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !361} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!361 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !357, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !356} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!362 = metadata !{i32 786445, metadata !356, metadata !"next", metadata !357, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !360} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!363 = metadata !{i32 786445, metadata !206, metadata !"number", metadata !207, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !150} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!364 = metadata !{i32 786445, metadata !206, metadata !"requests", metadata !207, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !46} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!365 = metadata !{i32 786445, metadata !206, metadata !"buffered", metadata !207, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !48} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!366 = metadata !{i32 786445, metadata !206, metadata !"log_error", metadata !207, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !48} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!367 = metadata !{i32 786445, metadata !206, metadata !"single_connection", metadata !207, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !48} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!368 = metadata !{i32 786445, metadata !206, metadata !"unexpected_eof", metadata !207, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !48} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!369 = metadata !{i32 786445, metadata !206, metadata !"timedout", metadata !207, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !48} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!370 = metadata !{i32 786445, metadata !206, metadata !"error", metadata !207, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !48} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!371 = metadata !{i32 786445, metadata !206, metadata !"destroyed", metadata !207, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !48} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!372 = metadata !{i32 786445, metadata !206, metadata !"idle", metadata !207, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !48} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!373 = metadata !{i32 786445, metadata !206, metadata !"reusable", metadata !207, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !48} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!374 = metadata !{i32 786445, metadata !206, metadata !"close", metadata !207, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !48} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!375 = metadata !{i32 786445, metadata !206, metadata !"sendfile", metadata !207, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !48} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!376 = metadata !{i32 786445, metadata !206, metadata !"sndlowat", metadata !207, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !48} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!377 = metadata !{i32 786445, metadata !206, metadata !"tcp_nodelay", metadata !207, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !48} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!378 = metadata !{i32 786445, metadata !206, metadata !"tcp_nopush", metadata !207, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !48} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!379 = metadata !{i32 786445, metadata !16, metadata !"free_connections", metadata !17, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !204} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!380 = metadata !{i32 786445, metadata !16, metadata !"free_connection_n", metadata !17, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !46} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!381 = metadata !{i32 786445, metadata !16, metadata !"reusable_connections_queue", metadata !17, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !355} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!382 = metadata !{i32 786445, metadata !16, metadata !"listening", metadata !17, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !383} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!383 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !10, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !384} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!384 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !27, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !385, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!385 = metadata !{metadata !386, metadata !387, metadata !388, metadata !389, metadata !390}
!386 = metadata !{i32 786445, metadata !384, metadata !"elts", metadata !27, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!387 = metadata !{i32 786445, metadata !384, metadata !"nelts", metadata !27, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!388 = metadata !{i32 786445, metadata !384, metadata !"size", metadata !27, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!389 = metadata !{i32 786445, metadata !384, metadata !"nalloc", metadata !27, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !46} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!390 = metadata !{i32 786445, metadata !384, metadata !"pool", metadata !27, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!391 = metadata !{i32 786445, metadata !16, metadata !"pathes", metadata !17, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !383} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!392 = metadata !{i32 786445, metadata !16, metadata !"open_files", metadata !17, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !393} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!393 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !17, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !394} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!394 = metadata !{i32 786451, null, metadata !"", metadata !395, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !396, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!395 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!396 = metadata !{metadata !397, metadata !405, metadata !406, metadata !407, metadata !408}
!397 = metadata !{i32 786445, metadata !394, metadata !"last", metadata !395, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!398 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !399} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!399 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !395, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !400} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!400 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !395, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!401 = metadata !{metadata !402, metadata !403, metadata !404}
!402 = metadata !{i32 786445, metadata !400, metadata !"elts", metadata !395, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!403 = metadata !{i32 786445, metadata !400, metadata !"nelts", metadata !395, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!404 = metadata !{i32 786445, metadata !400, metadata !"next", metadata !395, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !398} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!405 = metadata !{i32 786445, metadata !394, metadata !"part", metadata !395, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !399} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!406 = metadata !{i32 786445, metadata !394, metadata !"size", metadata !395, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !50} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!407 = metadata !{i32 786445, metadata !394, metadata !"nalloc", metadata !395, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!408 = metadata !{i32 786445, metadata !394, metadata !"pool", metadata !395, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!409 = metadata !{i32 786445, metadata !16, metadata !"shared_memory", metadata !17, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !393} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!410 = metadata !{i32 786445, metadata !16, metadata !"connection_n", metadata !17, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !46} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!411 = metadata !{i32 786445, metadata !16, metadata !"files_n", metadata !17, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !46} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!412 = metadata !{i32 786445, metadata !16, metadata !"connections", metadata !17, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !204} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!413 = metadata !{i32 786445, metadata !16, metadata !"read_events", metadata !17, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !211} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!414 = metadata !{i32 786445, metadata !16, metadata !"write_events", metadata !17, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !211} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!415 = metadata !{i32 786445, metadata !16, metadata !"old_cycle", metadata !17, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !416} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!416 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !417} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!417 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !17, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!418 = metadata !{i32 786445, metadata !16, metadata !"conf_file", metadata !17, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !84} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!419 = metadata !{i32 786445, metadata !16, metadata !"conf_param", metadata !17, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !84} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!420 = metadata !{i32 786445, metadata !16, metadata !"conf_prefix", metadata !17, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !84} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!421 = metadata !{i32 786445, metadata !16, metadata !"prefix", metadata !17, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !84} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!422 = metadata !{i32 786445, metadata !16, metadata !"lock_file", metadata !17, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !84} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!423 = metadata !{i32 786445, metadata !16, metadata !"hostname", metadata !17, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !84} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!424 = metadata !{metadata !425}
!425 = metadata !{metadata !426, metadata !427}
!426 = metadata !{i32 786689, metadata !5, metadata !"cycle", metadata !6, i32 16777796, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cycle] [line 580]
!427 = metadata !{i32 786688, metadata !428, metadata !"tp", metadata !6, i32 582, metadata !429, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tp] [line 582]
!428 = metadata !{i32 786443, metadata !5, i32 581, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!429 = metadata !{i32 786451, null, metadata !"timeval", metadata !430, i32 75, i64 64, i64 32, i32 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timeval] [line 75, size 64, align 32, offset 0] [from ]
!430 = metadata !{i32 786473, metadata !"/usr/include/bits/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!431 = metadata !{metadata !432, metadata !433}
!432 = metadata !{i32 786445, metadata !429, metadata !"tv_sec", metadata !430, i32 77, i64 32, i64 32, i64 0, i32 0, metadata !124} ; [ DW_TAG_member ] [tv_sec] [line 77, size 32, align 32, offset 0] [from __time_t]
!433 = metadata !{i32 786445, metadata !429, metadata !"tv_usec", metadata !430, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !434} ; [ DW_TAG_member ] [tv_usec] [line 78, size 32, align 32, offset 32] [from __suseconds_t]
!434 = metadata !{i32 786454, null, metadata !"__suseconds_t", metadata !430, i32 151, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ] [__suseconds_t] [line 151, size 0, align 0, offset 0] [from long int]
!435 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_mark", metadata !"ngx_http_userid_mark", metadata !"", metadata !6, i32 561, metadata !436, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_userid_mark, null, null, metadata !474, i32 562} ; [ DW_TAG_subprogram ] [line 561] [local] [def] [scope 562] [ngx_http_userid_mark]
!436 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!437 = metadata !{metadata !160, metadata !438, metadata !464, metadata !23}
!438 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !439} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!439 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !10, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !440} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!440 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !10, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !441, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!441 = metadata !{metadata !442, metadata !443, metadata !445, metadata !446, metadata !447, metadata !448, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460, metadata !463}
!442 = metadata !{i32 786445, metadata !440, metadata !"name", metadata !10, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !160} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!443 = metadata !{i32 786445, metadata !440, metadata !"args", metadata !10, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !444} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!444 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !383} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!445 = metadata !{i32 786445, metadata !440, metadata !"cycle", metadata !10, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!446 = metadata !{i32 786445, metadata !440, metadata !"pool", metadata !10, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!447 = metadata !{i32 786445, metadata !440, metadata !"temp_pool", metadata !10, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!448 = metadata !{i32 786445, metadata !440, metadata !"conf_file", metadata !10, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !449} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!449 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !450} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!450 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !10, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !451} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!451 = metadata !{i32 786451, null, metadata !"", metadata !10, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !452, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!452 = metadata !{metadata !453, metadata !454, metadata !455}
!453 = metadata !{i32 786445, metadata !451, metadata !"file", metadata !10, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!454 = metadata !{i32 786445, metadata !451, metadata !"buffer", metadata !10, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !59} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!455 = metadata !{i32 786445, metadata !451, metadata !"line", metadata !10, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !46} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!456 = metadata !{i32 786445, metadata !440, metadata !"log", metadata !10, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!457 = metadata !{i32 786445, metadata !440, metadata !"ctx", metadata !10, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !23} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!458 = metadata !{i32 786445, metadata !440, metadata !"module_type", metadata !10, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!459 = metadata !{i32 786445, metadata !440, metadata !"cmd_type", metadata !10, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !46} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!460 = metadata !{i32 786445, metadata !440, metadata !"handler", metadata !10, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !461} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!461 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !10, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !462} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!462 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !436} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!463 = metadata !{i32 786445, metadata !440, metadata !"handler_conf", metadata !10, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !160} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !10, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!466 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !10, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !469, metadata !470, metadata !471, metadata !472, metadata !473}
!468 = metadata !{i32 786445, metadata !466, metadata !"name", metadata !10, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!469 = metadata !{i32 786445, metadata !466, metadata !"type", metadata !10, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!470 = metadata !{i32 786445, metadata !466, metadata !"set", metadata !10, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !462} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!471 = metadata !{i32 786445, metadata !466, metadata !"conf", metadata !10, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!472 = metadata !{i32 786445, metadata !466, metadata !"offset", metadata !10, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!473 = metadata !{i32 786445, metadata !466, metadata !"post", metadata !10, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!474 = metadata !{metadata !475}
!475 = metadata !{metadata !476, metadata !477, metadata !478, metadata !479, metadata !494, metadata !496, metadata !498, metadata !499, metadata !503}
!476 = metadata !{i32 786689, metadata !435, metadata !"cf", metadata !6, i32 16777777, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 561]
!477 = metadata !{i32 786689, metadata !435, metadata !"cmd", metadata !6, i32 33554993, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 561]
!478 = metadata !{i32 786689, metadata !435, metadata !"conf", metadata !6, i32 50332209, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 561]
!479 = metadata !{i32 786688, metadata !480, metadata !"ucf", metadata !6, i32 563, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ucf] [line 563]
!480 = metadata !{i32 786443, metadata !435, i32 562, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!481 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !482} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_userid_conf_t]
!482 = metadata !{i32 786454, null, metadata !"ngx_http_userid_conf_t", metadata !6, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !483} ; [ DW_TAG_typedef ] [ngx_http_userid_conf_t] [line 22, size 0, align 0, offset 0] [from ]
!483 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 14, i64 384, i64 32, i32 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 14, size 384, align 32, offset 0] [from ]
!484 = metadata !{metadata !485, metadata !486, metadata !487, metadata !488, metadata !489, metadata !490, metadata !491, metadata !493}
!485 = metadata !{i32 786445, metadata !483, metadata !"enable", metadata !6, i32 15, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [enable] [line 15, size 32, align 32, offset 0] [from ngx_uint_t]
!486 = metadata !{i32 786445, metadata !483, metadata !"service", metadata !6, i32 16, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [service] [line 16, size 32, align 32, offset 32] [from ngx_int_t]
!487 = metadata !{i32 786445, metadata !483, metadata !"name", metadata !6, i32 17, i64 64, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 17, size 64, align 32, offset 64] [from ngx_str_t]
!488 = metadata !{i32 786445, metadata !483, metadata !"domain", metadata !6, i32 18, i64 64, i64 32, i64 128, i32 0, metadata !84} ; [ DW_TAG_member ] [domain] [line 18, size 64, align 32, offset 128] [from ngx_str_t]
!489 = metadata !{i32 786445, metadata !483, metadata !"path", metadata !6, i32 19, i64 64, i64 32, i64 192, i32 0, metadata !84} ; [ DW_TAG_member ] [path] [line 19, size 64, align 32, offset 192] [from ngx_str_t]
!490 = metadata !{i32 786445, metadata !483, metadata !"p3p", metadata !6, i32 20, i64 64, i64 32, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ] [p3p] [line 20, size 64, align 32, offset 256] [from ngx_str_t]
!491 = metadata !{i32 786445, metadata !483, metadata !"expires", metadata !6, i32 21, i64 32, i64 32, i64 320, i32 0, metadata !492} ; [ DW_TAG_member ] [expires] [line 21, size 32, align 32, offset 320] [from time_t]
!492 = metadata !{i32 786454, null, metadata !"time_t", metadata !6, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !124} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!493 = metadata !{i32 786445, metadata !483, metadata !"mark", metadata !6, i32 22, i64 8, i64 8, i64 352, i32 0, metadata !37} ; [ DW_TAG_member ] [mark] [line 22, size 8, align 8, offset 352] [from u_char]
!494 = metadata !{i32 786688, metadata !480, metadata !"value", metadata !6, i32 564, metadata !495, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 564]
!495 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!496 = metadata !{i32 786688, metadata !497, metadata !"__s1_len", metadata !6, i32 569, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 569]
!497 = metadata !{i32 786443, metadata !480, i32 569, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!498 = metadata !{i32 786688, metadata !497, metadata !"__s2_len", metadata !6, i32 569, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 569]
!499 = metadata !{i32 786688, metadata !500, metadata !"__s1", metadata !6, i32 569, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 569]
!500 = metadata !{i32 786443, metadata !497, i32 569, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!501 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !502} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!502 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!503 = metadata !{i32 786688, metadata !500, metadata !"__result", metadata !6, i32 569, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 569]
!504 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_p3p", metadata !"ngx_http_userid_p3p", metadata !"", metadata !6, i32 551, metadata !505, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_p3p, null, null, metadata !507, i32 552} ; [ DW_TAG_subprogram ] [line 551] [local] [def] [scope 552] [ngx_http_userid_p3p]
!505 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !506, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!506 = metadata !{metadata !160, metadata !438, metadata !23, metadata !23}
!507 = metadata !{metadata !508}
!508 = metadata !{metadata !509, metadata !510, metadata !511, metadata !512, metadata !514, metadata !516, metadata !517, metadata !519}
!509 = metadata !{i32 786689, metadata !504, metadata !"cf", metadata !6, i32 16777767, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 551]
!510 = metadata !{i32 786689, metadata !504, metadata !"post", metadata !6, i32 33554983, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [post] [line 551]
!511 = metadata !{i32 786689, metadata !504, metadata !"data", metadata !6, i32 50332199, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 551]
!512 = metadata !{i32 786688, metadata !513, metadata !"p3p", metadata !6, i32 553, metadata !495, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p3p] [line 553]
!513 = metadata !{i32 786443, metadata !504, i32 552, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!514 = metadata !{i32 786688, metadata !515, metadata !"__s1_len", metadata !6, i32 554, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 554]
!515 = metadata !{i32 786443, metadata !513, i32 554, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!516 = metadata !{i32 786688, metadata !515, metadata !"__s2_len", metadata !6, i32 554, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 554]
!517 = metadata !{i32 786688, metadata !518, metadata !"__s1", metadata !6, i32 554, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 554]
!518 = metadata !{i32 786443, metadata !515, i32 554, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!519 = metadata !{i32 786688, metadata !518, metadata !"__result", metadata !6, i32 554, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 554]
!520 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_expires", metadata !"ngx_http_userid_expires", metadata !"", metadata !6, i32 528, metadata !436, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_userid_expires, null, null, metadata !521, i32 529} ; [ DW_TAG_subprogram ] [line 528] [local] [def] [scope 529] [ngx_http_userid_expires]
!521 = metadata !{metadata !522}
!522 = metadata !{metadata !523, metadata !524, metadata !525, metadata !526, metadata !528, metadata !529, metadata !531, metadata !532, metadata !534, metadata !535, metadata !537, metadata !538, metadata !540}
!523 = metadata !{i32 786689, metadata !520, metadata !"cf", metadata !6, i32 16777744, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 528]
!524 = metadata !{i32 786689, metadata !520, metadata !"cmd", metadata !6, i32 33554960, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 528]
!525 = metadata !{i32 786689, metadata !520, metadata !"conf", metadata !6, i32 50332176, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 528]
!526 = metadata !{i32 786688, metadata !527, metadata !"ucf", metadata !6, i32 530, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ucf] [line 530]
!527 = metadata !{i32 786443, metadata !520, i32 529, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!528 = metadata !{i32 786688, metadata !527, metadata !"value", metadata !6, i32 531, metadata !495, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 531]
!529 = metadata !{i32 786688, metadata !530, metadata !"__s1_len", metadata !6, i32 536, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 536]
!530 = metadata !{i32 786443, metadata !527, i32 536, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!531 = metadata !{i32 786688, metadata !530, metadata !"__s2_len", metadata !6, i32 536, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 536]
!532 = metadata !{i32 786688, metadata !533, metadata !"__s1", metadata !6, i32 536, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 536]
!533 = metadata !{i32 786443, metadata !530, i32 536, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!534 = metadata !{i32 786688, metadata !533, metadata !"__result", metadata !6, i32 536, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 536]
!535 = metadata !{i32 786688, metadata !536, metadata !"__s1_len", metadata !6, i32 540, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 540]
!536 = metadata !{i32 786443, metadata !527, i32 540, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!537 = metadata !{i32 786688, metadata !536, metadata !"__s2_len", metadata !6, i32 540, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 540]
!538 = metadata !{i32 786688, metadata !539, metadata !"__s1", metadata !6, i32 540, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 540]
!539 = metadata !{i32 786443, metadata !536, i32 540, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!540 = metadata !{i32 786688, metadata !539, metadata !"__result", metadata !6, i32 540, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 540]
!541 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_path", metadata !"ngx_http_userid_path", metadata !"", metadata !6, i32 512, metadata !505, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_path, null, null, metadata !542, i32 513} ; [ DW_TAG_subprogram ] [line 512] [local] [def] [scope 513] [ngx_http_userid_path]
!542 = metadata !{metadata !543}
!543 = metadata !{metadata !544, metadata !545, metadata !546, metadata !547, metadata !549, metadata !550}
!544 = metadata !{i32 786689, metadata !541, metadata !"cf", metadata !6, i32 16777728, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 512]
!545 = metadata !{i32 786689, metadata !541, metadata !"post", metadata !6, i32 33554944, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [post] [line 512]
!546 = metadata !{i32 786689, metadata !541, metadata !"data", metadata !6, i32 50332160, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 512]
!547 = metadata !{i32 786688, metadata !548, metadata !"path", metadata !6, i32 514, metadata !495, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [path] [line 514]
!548 = metadata !{i32 786443, metadata !541, i32 513, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!549 = metadata !{i32 786688, metadata !548, metadata !"p", metadata !6, i32 515, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 515]
!550 = metadata !{i32 786688, metadata !548, metadata !"new", metadata !6, i32 516, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 516]
!551 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_domain", metadata !"ngx_http_userid_domain", metadata !"", metadata !6, i32 491, metadata !505, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_domain, null, null, metadata !552, i32 492} ; [ DW_TAG_subprogram ] [line 491] [local] [def] [scope 492] [ngx_http_userid_domain]
!552 = metadata !{metadata !553}
!553 = metadata !{metadata !554, metadata !555, metadata !556, metadata !557, metadata !559, metadata !560, metadata !561, metadata !563, metadata !564, metadata !566}
!554 = metadata !{i32 786689, metadata !551, metadata !"cf", metadata !6, i32 16777707, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 491]
!555 = metadata !{i32 786689, metadata !551, metadata !"post", metadata !6, i32 33554923, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [post] [line 491]
!556 = metadata !{i32 786689, metadata !551, metadata !"data", metadata !6, i32 50332139, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 491]
!557 = metadata !{i32 786688, metadata !558, metadata !"domain", metadata !6, i32 493, metadata !495, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [domain] [line 493]
!558 = metadata !{i32 786443, metadata !551, i32 492, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!559 = metadata !{i32 786688, metadata !558, metadata !"p", metadata !6, i32 494, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 494]
!560 = metadata !{i32 786688, metadata !558, metadata !"new", metadata !6, i32 495, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 495]
!561 = metadata !{i32 786688, metadata !562, metadata !"__s1_len", metadata !6, i32 496, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 496]
!562 = metadata !{i32 786443, metadata !558, i32 496, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!563 = metadata !{i32 786688, metadata !562, metadata !"__s2_len", metadata !6, i32 496, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 496]
!564 = metadata !{i32 786688, metadata !565, metadata !"__s1", metadata !6, i32 496, metadata !501, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 496]
!565 = metadata !{i32 786443, metadata !562, i32 496, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!566 = metadata !{i32 786688, metadata !565, metadata !"__result", metadata !6, i32 496, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 496]
!567 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_merge_conf", metadata !"ngx_http_userid_merge_conf", metadata !"", metadata !6, i32 413, metadata !505, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_userid_merge_conf, null, null, metadata !568, i32 414} ; [ DW_TAG_subprogram ] [line 413] [local] [def] [scope 414] [ngx_http_userid_merge_conf]
!568 = metadata !{metadata !569}
!569 = metadata !{metadata !570, metadata !571, metadata !572, metadata !573, metadata !575}
!570 = metadata !{i32 786689, metadata !567, metadata !"cf", metadata !6, i32 16777629, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 413]
!571 = metadata !{i32 786689, metadata !567, metadata !"parent", metadata !6, i32 33554845, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 413]
!572 = metadata !{i32 786689, metadata !567, metadata !"child", metadata !6, i32 50332061, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 413]
!573 = metadata !{i32 786688, metadata !574, metadata !"prev", metadata !6, i32 415, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 415]
!574 = metadata !{i32 786443, metadata !567, i32 414, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!575 = metadata !{i32 786688, metadata !574, metadata !"conf", metadata !6, i32 416, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 416]
!576 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_create_conf", metadata !"ngx_http_userid_create_conf", metadata !"", metadata !6, i32 391, metadata !577, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_userid_create_conf, null, null, metadata !579, i32 392} ; [ DW_TAG_subprogram ] [line 391] [local] [def] [scope 392] [ngx_http_userid_create_conf]
!577 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !578, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!578 = metadata !{metadata !23, metadata !438}
!579 = metadata !{metadata !580}
!580 = metadata !{metadata !581, metadata !582}
!581 = metadata !{i32 786689, metadata !576, metadata !"cf", metadata !6, i32 16777607, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 391]
!582 = metadata !{i32 786688, metadata !583, metadata !"conf", metadata !6, i32 393, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 393]
!583 = metadata !{i32 786443, metadata !576, i32 392, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!584 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_init", metadata !"ngx_http_userid_init", metadata !"", metadata !6, i32 484, metadata !585, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_userid_init, null, null, metadata !587, i32 485} ; [ DW_TAG_subprogram ] [line 484] [local] [def] [scope 485] [ngx_http_userid_init]
!585 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !586, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!586 = metadata !{metadata !9, metadata !438}
!587 = metadata !{metadata !588}
!588 = metadata !{metadata !589}
!589 = metadata !{i32 786689, metadata !584, metadata !"cf", metadata !6, i32 16777700, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 484]
!590 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_filter", metadata !"ngx_http_userid_filter", metadata !"", metadata !6, i32 77, metadata !591, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_userid_filter, null, null, metadata !1700, i32 78} ; [ DW_TAG_subprogram ] [line 77] [local] [def] [scope 78] [ngx_http_userid_filter]
!591 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !592, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!592 = metadata !{metadata !9, metadata !593}
!593 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !594} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!594 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !6, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !595} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!595 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !596, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !597, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!596 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!597 = metadata !{metadata !598, metadata !600, metadata !601, metadata !602, metadata !603, metadata !604, metadata !605, metadata !612, metadata !613, metadata !800, metadata !1225, metadata !1226, metadata !1227, metadata !1228, metadata !1264, metadata !1293, metadata !1305, metadata !1306, metadata !1307, metadata !1308, metadata !1309, metadata !1310, metadata !1311, metadata !1312, metadata !1313, metadata !1314, metadata !1315, metadata !1316, metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1328, metadata !1339, metadata !1346, metadata !1570, metadata !1571, metadata !1572, metadata !1573, metadata !1585, metadata !1586, metadata !1588, metadata !1589, metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1605, metadata !1610, metadata !1618, metadata !1619, metadata !1620, metadata !1621, metadata !1622, metadata !1623, metadata !1624, metadata !1625, metadata !1626, metadata !1627, metadata !1628, metadata !1629, metadata !1630, metadata !1631, metadata !1632, metadata !1633, metadata !1634, metadata !1635, metadata !1636, metadata !1637, metadata !1638, metadata !1639, metadata !1640, metadata !1641, metadata !1642, metadata !1643, metadata !1644, metadata !1645, metadata !1646, metadata !1647, metadata !1648, metadata !1649, metadata !1650, metadata !1651, metadata !1652, metadata !1653, metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1659, metadata !1660, metadata !1661, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1670, metadata !1671, metadata !1672, metadata !1673, metadata !1674, metadata !1675, metadata !1676, metadata !1677, metadata !1681, metadata !1682, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1687, metadata !1688, metadata !1689, metadata !1690, metadata !1691, metadata !1692, metadata !1693, metadata !1694, metadata !1695, metadata !1696, metadata !1697, metadata !1698, metadata !1699}
!598 = metadata !{i32 786445, metadata !595, metadata !"signature", metadata !596, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !599} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!599 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !6, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!600 = metadata !{i32 786445, metadata !595, metadata !"connection", metadata !596, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !204} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!601 = metadata !{i32 786445, metadata !595, metadata !"ctx", metadata !596, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!602 = metadata !{i32 786445, metadata !595, metadata !"main_conf", metadata !596, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!603 = metadata !{i32 786445, metadata !595, metadata !"srv_conf", metadata !596, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!604 = metadata !{i32 786445, metadata !595, metadata !"loc_conf", metadata !596, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !22} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!605 = metadata !{i32 786445, metadata !595, metadata !"read_event_handler", metadata !596, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !606} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!606 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !596, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !607} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!607 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !608} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!609 = metadata !{null, metadata !610}
!610 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !611} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!611 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !596, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !595} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!612 = metadata !{i32 786445, metadata !595, metadata !"write_event_handler", metadata !596, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !606} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!613 = metadata !{i32 786445, metadata !595, metadata !"cache", metadata !596, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !614} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!614 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !615} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!615 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !596, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !616} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!616 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !617, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!617 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!618 = metadata !{metadata !619, metadata !620, metadata !621, metadata !622, metadata !626, metadata !629, metadata !630, metadata !631, metadata !632, metadata !633, metadata !634, metadata !635, metadata !636, metadata !637, metadata !638, metadata !639, metadata !640, metadata !768, metadata !791, metadata !792, metadata !793, metadata !794, metadata !795, metadata !796, metadata !797, metadata !798, metadata !799}
!619 = metadata !{i32 786445, metadata !616, metadata !"file", metadata !617, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!620 = metadata !{i32 786445, metadata !616, metadata !"keys", metadata !617, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !383} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!621 = metadata !{i32 786445, metadata !616, metadata !"crc32", metadata !617, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !599} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!622 = metadata !{i32 786445, metadata !616, metadata !"key", metadata !617, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !623} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!623 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !37, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!624 = metadata !{metadata !625}
!625 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!626 = metadata !{i32 786445, metadata !616, metadata !"uniq", metadata !617, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !627} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!627 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !617, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !628} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!628 = metadata !{i32 786454, null, metadata !"ino_t", metadata !617, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!629 = metadata !{i32 786445, metadata !616, metadata !"valid_sec", metadata !617, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !492} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!630 = metadata !{i32 786445, metadata !616, metadata !"last_modified", metadata !617, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !492} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!631 = metadata !{i32 786445, metadata !616, metadata !"date", metadata !617, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !492} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!632 = metadata !{i32 786445, metadata !616, metadata !"header_start", metadata !617, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !50} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!633 = metadata !{i32 786445, metadata !616, metadata !"body_start", metadata !617, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !50} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!634 = metadata !{i32 786445, metadata !616, metadata !"length", metadata !617, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !66} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!635 = metadata !{i32 786445, metadata !616, metadata !"fs_size", metadata !617, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !66} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!636 = metadata !{i32 786445, metadata !616, metadata !"min_uses", metadata !617, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !46} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!637 = metadata !{i32 786445, metadata !616, metadata !"error", metadata !617, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !46} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!638 = metadata !{i32 786445, metadata !616, metadata !"valid_msec", metadata !617, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !46} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!639 = metadata !{i32 786445, metadata !616, metadata !"buf", metadata !617, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !59} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!640 = metadata !{i32 786445, metadata !616, metadata !"file_cache", metadata !617, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !641} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!641 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !642} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!642 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !617, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !643} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!643 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !617, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !644, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!644 = metadata !{metadata !645, metadata !668, metadata !715, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744}
!645 = metadata !{i32 786445, metadata !643, metadata !"sh", metadata !617, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !646} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!646 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !647} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!647 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !617, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !648} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!648 = metadata !{i32 786451, null, metadata !"", metadata !617, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !649, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!649 = metadata !{metadata !650, metadata !661, metadata !662, metadata !663, metadata !666, metadata !667}
!650 = metadata !{i32 786445, metadata !648, metadata !"rbtree", metadata !617, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !651} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!651 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !617, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !652} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!652 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !248, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!653 = metadata !{metadata !654, metadata !655, metadata !656}
!654 = metadata !{i32 786445, metadata !652, metadata !"root", metadata !248, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !253} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!655 = metadata !{i32 786445, metadata !652, metadata !"sentinel", metadata !248, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !253} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!656 = metadata !{i32 786445, metadata !652, metadata !"insert", metadata !248, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !657} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!657 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !248, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !658} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!658 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !659} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!659 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!660 = metadata !{null, metadata !253, metadata !253, metadata !253}
!661 = metadata !{i32 786445, metadata !648, metadata !"sentinel", metadata !617, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !246} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!662 = metadata !{i32 786445, metadata !648, metadata !"queue", metadata !617, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !355} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!663 = metadata !{i32 786445, metadata !648, metadata !"cold", metadata !617, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !664} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!664 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !617, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !665} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!665 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !150} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!666 = metadata !{i32 786445, metadata !648, metadata !"loading", metadata !617, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !664} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!667 = metadata !{i32 786445, metadata !648, metadata !"size", metadata !617, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!668 = metadata !{i32 786445, metadata !643, metadata !"shpool", metadata !617, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !669} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!669 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !670} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!670 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !617, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !671} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!671 = metadata !{i32 786451, null, metadata !"", metadata !672, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !673, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!672 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!673 = metadata !{metadata !674, metadata !681, metadata !682, metadata !683, metadata !691, metadata !692, metadata !693, metadata !694, metadata !711, metadata !712, metadata !713, metadata !714}
!674 = metadata !{i32 786445, metadata !671, metadata !"lock", metadata !672, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !675} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!675 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !672, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !676} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!676 = metadata !{i32 786451, null, metadata !"", metadata !677, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !678, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!677 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!678 = metadata !{metadata !679, metadata !680}
!679 = metadata !{i32 786445, metadata !676, metadata !"lock", metadata !677, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !664} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!680 = metadata !{i32 786445, metadata !676, metadata !"wait", metadata !677, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !664} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!681 = metadata !{i32 786445, metadata !671, metadata !"min_size", metadata !672, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!682 = metadata !{i32 786445, metadata !671, metadata !"min_shift", metadata !672, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !50} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!683 = metadata !{i32 786445, metadata !671, metadata !"pages", metadata !672, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !684} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!684 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !685} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!685 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !672, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !686} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!686 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !672, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !687, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!687 = metadata !{metadata !688, metadata !689, metadata !690}
!688 = metadata !{i32 786445, metadata !686, metadata !"slab", metadata !672, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!689 = metadata !{i32 786445, metadata !686, metadata !"next", metadata !672, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !684} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!690 = metadata !{i32 786445, metadata !686, metadata !"prev", metadata !672, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!691 = metadata !{i32 786445, metadata !671, metadata !"free", metadata !672, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !685} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!692 = metadata !{i32 786445, metadata !671, metadata !"start", metadata !672, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!693 = metadata !{i32 786445, metadata !671, metadata !"end", metadata !672, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!694 = metadata !{i32 786445, metadata !671, metadata !"mutex", metadata !672, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !695} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!695 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !672, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !696} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!696 = metadata !{i32 786451, null, metadata !"", metadata !677, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !697, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!697 = metadata !{metadata !698, metadata !700, metadata !701, metadata !702, metadata !710}
!698 = metadata !{i32 786445, metadata !696, metadata !"lock", metadata !677, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !699} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!699 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !664} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!700 = metadata !{i32 786445, metadata !696, metadata !"wait", metadata !677, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !699} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!701 = metadata !{i32 786445, metadata !696, metadata !"semaphore", metadata !677, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!702 = metadata !{i32 786445, metadata !696, metadata !"sem", metadata !677, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !703} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!703 = metadata !{i32 786454, null, metadata !"sem_t", metadata !677, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !704} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!704 = metadata !{i32 786455, null, metadata !"", metadata !705, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!705 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!706 = metadata !{metadata !707, metadata !709}
!707 = metadata !{i32 786445, metadata !704, metadata !"__size", metadata !705, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !708} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!708 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !161, metadata !624, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!709 = metadata !{i32 786445, metadata !704, metadata !"__align", metadata !705, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !116} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!710 = metadata !{i32 786445, metadata !696, metadata !"spin", metadata !677, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !46} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!711 = metadata !{i32 786445, metadata !671, metadata !"log_ctx", metadata !672, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!712 = metadata !{i32 786445, metadata !671, metadata !"zero", metadata !672, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !37} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!713 = metadata !{i32 786445, metadata !671, metadata !"data", metadata !672, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!714 = metadata !{i32 786445, metadata !671, metadata !"addr", metadata !672, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !23} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!715 = metadata !{i32 786445, metadata !643, metadata !"path", metadata !617, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !716} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!716 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !717} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!717 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !617, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !718} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!718 = metadata !{i32 786451, null, metadata !"", metadata !79, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !719, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!719 = metadata !{metadata !720, metadata !721, metadata !722, metadata !726, metadata !731, metadata !733, metadata !734, metadata !735}
!720 = metadata !{i32 786445, metadata !718, metadata !"name", metadata !79, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!721 = metadata !{i32 786445, metadata !718, metadata !"len", metadata !79, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !50} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!722 = metadata !{i32 786445, metadata !718, metadata !"level", metadata !79, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !723} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!723 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !50, metadata !724, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!724 = metadata !{metadata !725}
!725 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!726 = metadata !{i32 786445, metadata !718, metadata !"manager", metadata !79, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !727} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!727 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !79, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !728} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!728 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !729} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!729 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !730, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!730 = metadata !{metadata !492, metadata !23}
!731 = metadata !{i32 786445, metadata !718, metadata !"loader", metadata !79, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !732} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!732 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !79, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!733 = metadata !{i32 786445, metadata !718, metadata !"data", metadata !79, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!734 = metadata !{i32 786445, metadata !718, metadata !"conf_file", metadata !79, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !36} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!735 = metadata !{i32 786445, metadata !718, metadata !"line", metadata !79, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!736 = metadata !{i32 786445, metadata !643, metadata !"max_size", metadata !617, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !66} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!737 = metadata !{i32 786445, metadata !643, metadata !"bsize", metadata !617, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !50} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!738 = metadata !{i32 786445, metadata !643, metadata !"inactive", metadata !617, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !492} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!739 = metadata !{i32 786445, metadata !643, metadata !"files", metadata !617, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !46} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!740 = metadata !{i32 786445, metadata !643, metadata !"loader_files", metadata !617, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!741 = metadata !{i32 786445, metadata !643, metadata !"last", metadata !617, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !329} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!742 = metadata !{i32 786445, metadata !643, metadata !"loader_sleep", metadata !617, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !329} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!743 = metadata !{i32 786445, metadata !643, metadata !"loader_threshold", metadata !617, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !329} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!744 = metadata !{i32 786445, metadata !643, metadata !"shm_zone", metadata !617, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !745} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!745 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !746} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!746 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !617, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !747} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!747 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !17, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !748, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!748 = metadata !{metadata !749, metadata !750, metadata !760, metadata !767}
!749 = metadata !{i32 786445, metadata !747, metadata !"data", metadata !17, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!750 = metadata !{i32 786445, metadata !747, metadata !"shm", metadata !17, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !751} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!751 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !17, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !752} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!752 = metadata !{i32 786451, null, metadata !"", metadata !753, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !754, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!753 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!754 = metadata !{metadata !755, metadata !756, metadata !757, metadata !758, metadata !759}
!755 = metadata !{i32 786445, metadata !752, metadata !"addr", metadata !753, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !36} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!756 = metadata !{i32 786445, metadata !752, metadata !"size", metadata !753, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !50} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!757 = metadata !{i32 786445, metadata !752, metadata !"name", metadata !753, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!758 = metadata !{i32 786445, metadata !752, metadata !"log", metadata !753, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!759 = metadata !{i32 786445, metadata !752, metadata !"exists", metadata !753, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!760 = metadata !{i32 786445, metadata !747, metadata !"init", metadata !17, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !761} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!761 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !17, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !762} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!762 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !763} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!763 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !764, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!764 = metadata !{metadata !9, metadata !765, metadata !23}
!765 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !766} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!766 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !17, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !747} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!767 = metadata !{i32 786445, metadata !747, metadata !"tag", metadata !17, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!768 = metadata !{i32 786445, metadata !616, metadata !"node", metadata !617, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !769} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!769 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !770} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!770 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !617, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !771} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!771 = metadata !{i32 786451, null, metadata !"", metadata !617, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !772, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!772 = metadata !{metadata !773, metadata !774, metadata !775, metadata !779, metadata !780, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790}
!773 = metadata !{i32 786445, metadata !771, metadata !"node", metadata !617, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !246} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!774 = metadata !{i32 786445, metadata !771, metadata !"queue", metadata !617, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !355} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!775 = metadata !{i32 786445, metadata !771, metadata !"key", metadata !617, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !776} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!776 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !37, metadata !777, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!777 = metadata !{metadata !778}
!778 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!779 = metadata !{i32 786445, metadata !771, metadata !"count", metadata !617, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !48} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!780 = metadata !{i32 786445, metadata !771, metadata !"uses", metadata !617, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !48} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!781 = metadata !{i32 786445, metadata !771, metadata !"valid_msec", metadata !617, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !48} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!782 = metadata !{i32 786445, metadata !771, metadata !"error", metadata !617, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !48} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!783 = metadata !{i32 786445, metadata !771, metadata !"exists", metadata !617, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !48} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!784 = metadata !{i32 786445, metadata !771, metadata !"updating", metadata !617, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !48} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!785 = metadata !{i32 786445, metadata !771, metadata !"deleting", metadata !617, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !48} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!786 = metadata !{i32 786445, metadata !771, metadata !"uniq", metadata !617, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !627} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!787 = metadata !{i32 786445, metadata !771, metadata !"expire", metadata !617, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !492} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!788 = metadata !{i32 786445, metadata !771, metadata !"valid_sec", metadata !617, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !492} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!789 = metadata !{i32 786445, metadata !771, metadata !"body_start", metadata !617, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !50} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!790 = metadata !{i32 786445, metadata !771, metadata !"fs_size", metadata !617, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !66} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!791 = metadata !{i32 786445, metadata !616, metadata !"lock_timeout", metadata !617, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !329} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!792 = metadata !{i32 786445, metadata !616, metadata !"wait_time", metadata !617, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !329} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!793 = metadata !{i32 786445, metadata !616, metadata !"wait_event", metadata !617, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !212} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!794 = metadata !{i32 786445, metadata !616, metadata !"lock", metadata !617, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !48} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!795 = metadata !{i32 786445, metadata !616, metadata !"waiting", metadata !617, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !48} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!796 = metadata !{i32 786445, metadata !616, metadata !"updated", metadata !617, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !48} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!797 = metadata !{i32 786445, metadata !616, metadata !"updating", metadata !617, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !48} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!798 = metadata !{i32 786445, metadata !616, metadata !"exists", metadata !617, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !48} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!799 = metadata !{i32 786445, metadata !616, metadata !"temp_file", metadata !617, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !48} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!800 = metadata !{i32 786445, metadata !595, metadata !"upstream", metadata !596, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !801} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!801 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !802} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!802 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !596, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !803} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!803 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !804, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !805, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!804 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!805 = metadata !{metadata !806, metadata !813, metadata !814, metadata !850, metadata !926, metadata !927, metadata !948, metadata !957, metadata !1054, metadata !1090, metadata !1163, metadata !1164, metadata !1165, metadata !1166, metadata !1167, metadata !1168, metadata !1172, metadata !1176, metadata !1177, metadata !1181, metadata !1182, metadata !1183, metadata !1184, metadata !1185, metadata !1189, metadata !1193, metadata !1197, metadata !1198, metadata !1210, metadata !1211, metadata !1212, metadata !1213, metadata !1216, metadata !1217, metadata !1218, metadata !1219, metadata !1220, metadata !1221, metadata !1222, metadata !1223, metadata !1224}
!806 = metadata !{i32 786445, metadata !803, metadata !"read_event_handler", metadata !804, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !807} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!807 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !804, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !808} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!808 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !809} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!809 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !810, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!810 = metadata !{null, metadata !610, metadata !811}
!811 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !812} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!812 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !804, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !803} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!813 = metadata !{i32 786445, metadata !803, metadata !"write_event_handler", metadata !804, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !807} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!814 = metadata !{i32 786445, metadata !803, metadata !"peer", metadata !804, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !815} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!815 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !804, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !816} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!816 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !817, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !818, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!817 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!818 = metadata !{metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !831, metadata !836, metadata !837, metadata !846, metadata !847, metadata !848, metadata !849}
!819 = metadata !{i32 786445, metadata !816, metadata !"connection", metadata !817, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!820 = metadata !{i32 786445, metadata !816, metadata !"sockaddr", metadata !817, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !296} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!821 = metadata !{i32 786445, metadata !816, metadata !"socklen", metadata !817, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !307} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!822 = metadata !{i32 786445, metadata !816, metadata !"name", metadata !817, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !495} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!823 = metadata !{i32 786445, metadata !816, metadata !"tries", metadata !817, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!824 = metadata !{i32 786445, metadata !816, metadata !"get", metadata !817, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !825} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!825 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !817, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !826} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!826 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !827} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!827 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !828, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!828 = metadata !{metadata !9, metadata !829, metadata !23}
!829 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !830} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!830 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !817, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !816} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!831 = metadata !{i32 786445, metadata !816, metadata !"free", metadata !817, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !832} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!832 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !817, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !833} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!833 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !834} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!834 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !835, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!835 = metadata !{null, metadata !829, metadata !23, metadata !46}
!836 = metadata !{i32 786445, metadata !816, metadata !"data", metadata !817, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!837 = metadata !{i32 786445, metadata !816, metadata !"local", metadata !817, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !838} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!838 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !839} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!839 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !817, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !840} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!840 = metadata !{i32 786451, null, metadata !"", metadata !841, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !842, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!841 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!842 = metadata !{metadata !843, metadata !844, metadata !845}
!843 = metadata !{i32 786445, metadata !840, metadata !"sockaddr", metadata !841, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !296} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!844 = metadata !{i32 786445, metadata !840, metadata !"socklen", metadata !841, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !307} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!845 = metadata !{i32 786445, metadata !840, metadata !"name", metadata !841, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!846 = metadata !{i32 786445, metadata !816, metadata !"rcvbuf", metadata !817, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !13} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!847 = metadata !{i32 786445, metadata !816, metadata !"log", metadata !817, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!848 = metadata !{i32 786445, metadata !816, metadata !"cached", metadata !817, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !48} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!849 = metadata !{i32 786445, metadata !816, metadata !"log_error", metadata !817, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !48} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!850 = metadata !{i32 786445, metadata !803, metadata !"pipe", metadata !804, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !851} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!851 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !852} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!852 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !804, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !853} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!853 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !854, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !855, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!854 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!855 = metadata !{metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !862, metadata !863, metadata !864, metadata !865, metadata !872, metadata !873, metadata !878, metadata !879, metadata !880, metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !897, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !903, metadata !904, metadata !905, metadata !906, metadata !907, metadata !908, metadata !909, metadata !910, metadata !911, metadata !925}
!856 = metadata !{i32 786445, metadata !853, metadata !"upstream", metadata !854, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!857 = metadata !{i32 786445, metadata !853, metadata !"downstream", metadata !854, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !204} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!858 = metadata !{i32 786445, metadata !853, metadata !"free_raw_bufs", metadata !854, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!859 = metadata !{i32 786445, metadata !853, metadata !"in", metadata !854, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !53} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!860 = metadata !{i32 786445, metadata !853, metadata !"last_in", metadata !854, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !861} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!861 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!862 = metadata !{i32 786445, metadata !853, metadata !"out", metadata !854, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !53} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!863 = metadata !{i32 786445, metadata !853, metadata !"free", metadata !854, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !53} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!864 = metadata !{i32 786445, metadata !853, metadata !"busy", metadata !854, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !53} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!865 = metadata !{i32 786445, metadata !853, metadata !"input_filter", metadata !854, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !866} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!866 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !854, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !867} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!867 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !868} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!868 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !869, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!869 = metadata !{metadata !9, metadata !870, metadata !59}
!870 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !871} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!871 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !854, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !853} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!872 = metadata !{i32 786445, metadata !853, metadata !"input_ctx", metadata !854, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !23} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!873 = metadata !{i32 786445, metadata !853, metadata !"output_filter", metadata !854, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !874} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!874 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !854, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !875} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!875 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !876} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!876 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !877, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!877 = metadata !{metadata !9, metadata !23, metadata !53}
!878 = metadata !{i32 786445, metadata !853, metadata !"output_ctx", metadata !854, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !23} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!879 = metadata !{i32 786445, metadata !853, metadata !"read", metadata !854, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !48} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!880 = metadata !{i32 786445, metadata !853, metadata !"cacheable", metadata !854, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !48} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!881 = metadata !{i32 786445, metadata !853, metadata !"single_buf", metadata !854, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !48} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!882 = metadata !{i32 786445, metadata !853, metadata !"free_bufs", metadata !854, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !48} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!883 = metadata !{i32 786445, metadata !853, metadata !"upstream_done", metadata !854, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !48} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!884 = metadata !{i32 786445, metadata !853, metadata !"upstream_error", metadata !854, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !48} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!885 = metadata !{i32 786445, metadata !853, metadata !"upstream_eof", metadata !854, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !48} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!886 = metadata !{i32 786445, metadata !853, metadata !"upstream_blocked", metadata !854, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !48} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!887 = metadata !{i32 786445, metadata !853, metadata !"downstream_done", metadata !854, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !48} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!888 = metadata !{i32 786445, metadata !853, metadata !"downstream_error", metadata !854, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !48} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!889 = metadata !{i32 786445, metadata !853, metadata !"cyclic_temp_file", metadata !854, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !48} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!890 = metadata !{i32 786445, metadata !853, metadata !"allocated", metadata !854, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !9} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!891 = metadata !{i32 786445, metadata !853, metadata !"bufs", metadata !854, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !892} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!892 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !854, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !893} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!893 = metadata !{i32 786451, null, metadata !"", metadata !56, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !894, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!894 = metadata !{metadata !895, metadata !896}
!895 = metadata !{i32 786445, metadata !893, metadata !"num", metadata !56, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!896 = metadata !{i32 786445, metadata !893, metadata !"size", metadata !56, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !50} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!897 = metadata !{i32 786445, metadata !853, metadata !"tag", metadata !854, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !74} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!898 = metadata !{i32 786445, metadata !853, metadata !"busy_size", metadata !854, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !273} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!899 = metadata !{i32 786445, metadata !853, metadata !"read_length", metadata !854, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !66} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!900 = metadata !{i32 786445, metadata !853, metadata !"length", metadata !854, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !66} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!901 = metadata !{i32 786445, metadata !853, metadata !"max_temp_file_size", metadata !854, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !66} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!902 = metadata !{i32 786445, metadata !853, metadata !"temp_file_write_size", metadata !854, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !273} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!903 = metadata !{i32 786445, metadata !853, metadata !"read_timeout", metadata !854, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !329} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!904 = metadata !{i32 786445, metadata !853, metadata !"send_timeout", metadata !854, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !329} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!905 = metadata !{i32 786445, metadata !853, metadata !"send_lowat", metadata !854, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !273} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!906 = metadata !{i32 786445, metadata !853, metadata !"pool", metadata !854, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!907 = metadata !{i32 786445, metadata !853, metadata !"log", metadata !854, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!908 = metadata !{i32 786445, metadata !853, metadata !"preread_bufs", metadata !854, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !53} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!909 = metadata !{i32 786445, metadata !853, metadata !"preread_size", metadata !854, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !50} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!910 = metadata !{i32 786445, metadata !853, metadata !"buf_to_file", metadata !854, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !59} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!911 = metadata !{i32 786445, metadata !853, metadata !"temp_file", metadata !854, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !912} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!912 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !913} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!913 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !854, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !914} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!914 = metadata !{i32 786451, null, metadata !"", metadata !79, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !915, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!915 = metadata !{metadata !916, metadata !917, metadata !918, metadata !919, metadata !920, metadata !921, metadata !922, metadata !923, metadata !924}
!916 = metadata !{i32 786445, metadata !914, metadata !"file", metadata !79, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !77} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!917 = metadata !{i32 786445, metadata !914, metadata !"offset", metadata !79, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !66} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!918 = metadata !{i32 786445, metadata !914, metadata !"path", metadata !79, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !716} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!919 = metadata !{i32 786445, metadata !914, metadata !"pool", metadata !79, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!920 = metadata !{i32 786445, metadata !914, metadata !"warn", metadata !79, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !160} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!921 = metadata !{i32 786445, metadata !914, metadata !"access", metadata !79, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !46} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!922 = metadata !{i32 786445, metadata !914, metadata !"log_level", metadata !79, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !48} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!923 = metadata !{i32 786445, metadata !914, metadata !"persistent", metadata !79, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !48} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!924 = metadata !{i32 786445, metadata !914, metadata !"clean", metadata !79, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !48} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!925 = metadata !{i32 786445, metadata !853, metadata !"num", metadata !854, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !13} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!926 = metadata !{i32 786445, metadata !803, metadata !"request_bufs", metadata !804, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !53} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!927 = metadata !{i32 786445, metadata !803, metadata !"output", metadata !804, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !928} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!928 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !804, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !929} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!929 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !56, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !930, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!930 = metadata !{metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !947}
!931 = metadata !{i32 786445, metadata !929, metadata !"buf", metadata !56, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!932 = metadata !{i32 786445, metadata !929, metadata !"in", metadata !56, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!933 = metadata !{i32 786445, metadata !929, metadata !"free", metadata !56, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !53} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!934 = metadata !{i32 786445, metadata !929, metadata !"busy", metadata !56, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !53} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!935 = metadata !{i32 786445, metadata !929, metadata !"sendfile", metadata !56, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!936 = metadata !{i32 786445, metadata !929, metadata !"directio", metadata !56, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !48} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!937 = metadata !{i32 786445, metadata !929, metadata !"unaligned", metadata !56, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !48} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!938 = metadata !{i32 786445, metadata !929, metadata !"need_in_memory", metadata !56, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !48} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!939 = metadata !{i32 786445, metadata !929, metadata !"need_in_temp", metadata !56, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !48} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!940 = metadata !{i32 786445, metadata !929, metadata !"alignment", metadata !56, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!941 = metadata !{i32 786445, metadata !929, metadata !"pool", metadata !56, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!942 = metadata !{i32 786445, metadata !929, metadata !"allocated", metadata !56, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!943 = metadata !{i32 786445, metadata !929, metadata !"bufs", metadata !56, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !892} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!944 = metadata !{i32 786445, metadata !929, metadata !"tag", metadata !56, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !74} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!945 = metadata !{i32 786445, metadata !929, metadata !"output_filter", metadata !56, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !946} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!946 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !56, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !875} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!947 = metadata !{i32 786445, metadata !929, metadata !"filter_ctx", metadata !56, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !23} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!948 = metadata !{i32 786445, metadata !803, metadata !"writer", metadata !804, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !949} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!949 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !804, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !950} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!950 = metadata !{i32 786451, null, metadata !"", metadata !56, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !951, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!951 = metadata !{metadata !952, metadata !953, metadata !954, metadata !955, metadata !956}
!952 = metadata !{i32 786445, metadata !950, metadata !"out", metadata !56, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !53} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!953 = metadata !{i32 786445, metadata !950, metadata !"last", metadata !56, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !861} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!954 = metadata !{i32 786445, metadata !950, metadata !"connection", metadata !56, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !204} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!955 = metadata !{i32 786445, metadata !950, metadata !"pool", metadata !56, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!956 = metadata !{i32 786445, metadata !950, metadata !"limit", metadata !56, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !66} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!957 = metadata !{i32 786445, metadata !803, metadata !"conf", metadata !804, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !958} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!958 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !959} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!959 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !804, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !960} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!960 = metadata !{i32 786451, null, metadata !"", metadata !804, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !961, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!961 = metadata !{metadata !962, metadata !992, metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !998, metadata !999, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1010, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043, metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053}
!962 = metadata !{i32 786445, metadata !960, metadata !"upstream", metadata !804, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !963} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!963 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !964} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!964 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !804, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !965} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!965 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !804, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !966, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!966 = metadata !{metadata !967, metadata !982, metadata !983, metadata !984, metadata !985, metadata !986, metadata !987, metadata !988, metadata !991}
!967 = metadata !{i32 786445, metadata !965, metadata !"peer", metadata !804, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !968} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!968 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !804, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !969} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!969 = metadata !{i32 786451, null, metadata !"", metadata !804, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !970, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!970 = metadata !{metadata !971, metadata !976, metadata !981}
!971 = metadata !{i32 786445, metadata !969, metadata !"init_upstream", metadata !804, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !972} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!972 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !804, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !973} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!973 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !974} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!974 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !975, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!975 = metadata !{metadata !9, metadata !438, metadata !963}
!976 = metadata !{i32 786445, metadata !969, metadata !"init", metadata !804, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !977} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!977 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !804, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !978} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!978 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !979} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!979 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !980, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!980 = metadata !{metadata !9, metadata !610, metadata !963}
!981 = metadata !{i32 786445, metadata !969, metadata !"data", metadata !804, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!982 = metadata !{i32 786445, metadata !965, metadata !"srv_conf", metadata !804, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !22} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!983 = metadata !{i32 786445, metadata !965, metadata !"servers", metadata !804, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !444} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!984 = metadata !{i32 786445, metadata !965, metadata !"flags", metadata !804, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!985 = metadata !{i32 786445, metadata !965, metadata !"host", metadata !804, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !84} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!986 = metadata !{i32 786445, metadata !965, metadata !"file_name", metadata !804, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!987 = metadata !{i32 786445, metadata !965, metadata !"line", metadata !804, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !46} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!988 = metadata !{i32 786445, metadata !965, metadata !"port", metadata !804, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !989} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!989 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !804, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !990} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!990 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !804, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!991 = metadata !{i32 786445, metadata !965, metadata !"default_port", metadata !804, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !989} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!992 = metadata !{i32 786445, metadata !960, metadata !"connect_timeout", metadata !804, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !329} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!993 = metadata !{i32 786445, metadata !960, metadata !"send_timeout", metadata !804, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !329} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!994 = metadata !{i32 786445, metadata !960, metadata !"read_timeout", metadata !804, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !329} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!995 = metadata !{i32 786445, metadata !960, metadata !"timeout", metadata !804, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !329} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!996 = metadata !{i32 786445, metadata !960, metadata !"send_lowat", metadata !804, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !50} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!997 = metadata !{i32 786445, metadata !960, metadata !"buffer_size", metadata !804, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !50} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!998 = metadata !{i32 786445, metadata !960, metadata !"busy_buffers_size", metadata !804, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !50} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!999 = metadata !{i32 786445, metadata !960, metadata !"max_temp_file_size", metadata !804, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !50} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!1000 = metadata !{i32 786445, metadata !960, metadata !"temp_file_write_size", metadata !804, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !50} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!1001 = metadata !{i32 786445, metadata !960, metadata !"busy_buffers_size_conf", metadata !804, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !50} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!1002 = metadata !{i32 786445, metadata !960, metadata !"max_temp_file_size_conf", metadata !804, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !50} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!1003 = metadata !{i32 786445, metadata !960, metadata !"temp_file_write_size_conf", metadata !804, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !50} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!1004 = metadata !{i32 786445, metadata !960, metadata !"bufs", metadata !804, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !892} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!1005 = metadata !{i32 786445, metadata !960, metadata !"ignore_headers", metadata !804, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !46} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!1006 = metadata !{i32 786445, metadata !960, metadata !"next_upstream", metadata !804, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !46} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!1007 = metadata !{i32 786445, metadata !960, metadata !"store_access", metadata !804, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !46} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!1008 = metadata !{i32 786445, metadata !960, metadata !"buffering", metadata !804, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !1009} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!1009 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !804, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!1010 = metadata !{i32 786445, metadata !960, metadata !"pass_request_headers", metadata !804, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !1009} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!1011 = metadata !{i32 786445, metadata !960, metadata !"pass_request_body", metadata !804, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !1009} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!1012 = metadata !{i32 786445, metadata !960, metadata !"ignore_client_abort", metadata !804, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !1009} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!1013 = metadata !{i32 786445, metadata !960, metadata !"intercept_errors", metadata !804, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !1009} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!1014 = metadata !{i32 786445, metadata !960, metadata !"cyclic_temp_file", metadata !804, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !1009} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!1015 = metadata !{i32 786445, metadata !960, metadata !"temp_path", metadata !804, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !716} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!1016 = metadata !{i32 786445, metadata !960, metadata !"hide_headers_hash", metadata !804, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !1017} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!1017 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !804, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1018} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!1018 = metadata !{i32 786451, null, metadata !"", metadata !1019, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1020, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1019 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1020 = metadata !{metadata !1021, metadata !1035}
!1021 = metadata !{i32 786445, metadata !1018, metadata !"buckets", metadata !1019, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1022} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!1022 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1023} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1023 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1024} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!1024 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !1019, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !1025} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!1025 = metadata !{i32 786451, null, metadata !"", metadata !1019, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !1026, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!1026 = metadata !{metadata !1027, metadata !1028, metadata !1031}
!1027 = metadata !{i32 786445, metadata !1025, metadata !"value", metadata !1019, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!1028 = metadata !{i32 786445, metadata !1025, metadata !"len", metadata !1019, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !1029} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!1029 = metadata !{i32 786454, null, metadata !"u_short", metadata !1019, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !1030} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!1030 = metadata !{i32 786454, null, metadata !"__u_short", metadata !1019, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!1031 = metadata !{i32 786445, metadata !1025, metadata !"name", metadata !1019, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !1032} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!1032 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !37, metadata !1033, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!1033 = metadata !{metadata !1034}
!1034 = metadata !{i32 786465, i64 0, i64 0}      ; [ DW_TAG_subrange_type ] [0, 0]
!1035 = metadata !{i32 786445, metadata !1018, metadata !"size", metadata !1019, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!1036 = metadata !{i32 786445, metadata !960, metadata !"hide_headers", metadata !804, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !444} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!1037 = metadata !{i32 786445, metadata !960, metadata !"pass_headers", metadata !804, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !444} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!1038 = metadata !{i32 786445, metadata !960, metadata !"local", metadata !804, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !838} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!1039 = metadata !{i32 786445, metadata !960, metadata !"cache", metadata !804, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !745} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!1040 = metadata !{i32 786445, metadata !960, metadata !"cache_min_uses", metadata !804, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !46} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!1041 = metadata !{i32 786445, metadata !960, metadata !"cache_use_stale", metadata !804, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !46} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!1042 = metadata !{i32 786445, metadata !960, metadata !"cache_methods", metadata !804, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !46} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!1043 = metadata !{i32 786445, metadata !960, metadata !"cache_lock", metadata !804, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !1009} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!1044 = metadata !{i32 786445, metadata !960, metadata !"cache_lock_timeout", metadata !804, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !329} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!1045 = metadata !{i32 786445, metadata !960, metadata !"cache_valid", metadata !804, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !444} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!1046 = metadata !{i32 786445, metadata !960, metadata !"cache_bypass", metadata !804, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !444} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!1047 = metadata !{i32 786445, metadata !960, metadata !"no_cache", metadata !804, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !444} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!1048 = metadata !{i32 786445, metadata !960, metadata !"store_lengths", metadata !804, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !444} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!1049 = metadata !{i32 786445, metadata !960, metadata !"store_values", metadata !804, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !444} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!1050 = metadata !{i32 786445, metadata !960, metadata !"store", metadata !804, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !13} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!1051 = metadata !{i32 786445, metadata !960, metadata !"intercept_404", metadata !804, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !48} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!1052 = metadata !{i32 786445, metadata !960, metadata !"change_buffering", metadata !804, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !48} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!1053 = metadata !{i32 786445, metadata !960, metadata !"module", metadata !804, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !84} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!1054 = metadata !{i32 786445, metadata !803, metadata !"headers_in", metadata !804, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !1055} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!1055 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !804, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1056} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1056 = metadata !{i32 786451, null, metadata !"", metadata !804, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !1057, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!1057 = metadata !{metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1070, metadata !1071, metadata !1072, metadata !1073, metadata !1074, metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089}
!1058 = metadata !{i32 786445, metadata !1056, metadata !"headers", metadata !804, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !393} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!1059 = metadata !{i32 786445, metadata !1056, metadata !"status_n", metadata !804, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !46} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!1060 = metadata !{i32 786445, metadata !1056, metadata !"status_line", metadata !804, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!1061 = metadata !{i32 786445, metadata !1056, metadata !"status", metadata !804, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !1062} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!1062 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1063} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!1063 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !804, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1064} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!1064 = metadata !{i32 786451, null, metadata !"", metadata !1019, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !1065, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!1065 = metadata !{metadata !1066, metadata !1067, metadata !1068, metadata !1069}
!1066 = metadata !{i32 786445, metadata !1064, metadata !"hash", metadata !1019, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!1067 = metadata !{i32 786445, metadata !1064, metadata !"key", metadata !1019, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !84} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!1068 = metadata !{i32 786445, metadata !1064, metadata !"value", metadata !1019, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !84} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!1069 = metadata !{i32 786445, metadata !1064, metadata !"lowcase_key", metadata !1019, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !36} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1070 = metadata !{i32 786445, metadata !1056, metadata !"date", metadata !804, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !1062} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1071 = metadata !{i32 786445, metadata !1056, metadata !"server", metadata !804, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !1062} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1072 = metadata !{i32 786445, metadata !1056, metadata !"connection", metadata !804, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !1062} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1073 = metadata !{i32 786445, metadata !1056, metadata !"expires", metadata !804, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !1062} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1074 = metadata !{i32 786445, metadata !1056, metadata !"etag", metadata !804, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !1062} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1075 = metadata !{i32 786445, metadata !1056, metadata !"x_accel_expires", metadata !804, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !1062} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1076 = metadata !{i32 786445, metadata !1056, metadata !"x_accel_redirect", metadata !804, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !1062} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1077 = metadata !{i32 786445, metadata !1056, metadata !"x_accel_limit_rate", metadata !804, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !1062} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1078 = metadata !{i32 786445, metadata !1056, metadata !"content_type", metadata !804, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1079 = metadata !{i32 786445, metadata !1056, metadata !"content_length", metadata !804, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1080 = metadata !{i32 786445, metadata !1056, metadata !"last_modified", metadata !804, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !1062} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1081 = metadata !{i32 786445, metadata !1056, metadata !"location", metadata !804, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !1062} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1082 = metadata !{i32 786445, metadata !1056, metadata !"accept_ranges", metadata !804, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !1062} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1083 = metadata !{i32 786445, metadata !1056, metadata !"www_authenticate", metadata !804, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !1062} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1084 = metadata !{i32 786445, metadata !1056, metadata !"transfer_encoding", metadata !804, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !1062} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1085 = metadata !{i32 786445, metadata !1056, metadata !"content_encoding", metadata !804, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1086 = metadata !{i32 786445, metadata !1056, metadata !"content_length_n", metadata !804, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !66} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1087 = metadata !{i32 786445, metadata !1056, metadata !"cache_control", metadata !804, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !383} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1088 = metadata !{i32 786445, metadata !1056, metadata !"connection_close", metadata !804, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !48} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1089 = metadata !{i32 786445, metadata !1056, metadata !"chunked", metadata !804, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !48} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1090 = metadata !{i32 786445, metadata !803, metadata !"resolved", metadata !804, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1091} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1091 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1092} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1092 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !804, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1093} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1093 = metadata !{i32 786451, null, metadata !"", metadata !804, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1094, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1094 = metadata !{metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099, metadata !1102, metadata !1103, metadata !1104}
!1095 = metadata !{i32 786445, metadata !1093, metadata !"host", metadata !804, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1096 = metadata !{i32 786445, metadata !1093, metadata !"port", metadata !804, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !989} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1097 = metadata !{i32 786445, metadata !1093, metadata !"no_port", metadata !804, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !46} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1098 = metadata !{i32 786445, metadata !1093, metadata !"naddrs", metadata !804, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1099 = metadata !{i32 786445, metadata !1093, metadata !"addrs", metadata !804, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1100} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1100 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1101} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1101 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !804, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !599} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1102 = metadata !{i32 786445, metadata !1093, metadata !"sockaddr", metadata !804, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !296} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1103 = metadata !{i32 786445, metadata !1093, metadata !"socklen", metadata !804, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !307} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1104 = metadata !{i32 786445, metadata !1093, metadata !"ctx", metadata !804, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1105} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1105 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1106} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1106 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !804, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1107} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1107 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1108, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1109, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1108 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1109 = metadata !{metadata !1110, metadata !1113, metadata !1136, metadata !1146, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1158, metadata !1159, metadata !1160, metadata !1161, metadata !1162}
!1110 = metadata !{i32 786445, metadata !1107, metadata !"next", metadata !1108, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1111} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1111 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1112} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1112 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1108, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1107} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1113 = metadata !{i32 786445, metadata !1107, metadata !"resolver", metadata !1108, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1114} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1114 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1115} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1115 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1108, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1116} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1116 = metadata !{i32 786451, null, metadata !"", metadata !1108, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1117, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1117 = metadata !{metadata !1118, metadata !1119, metadata !1120, metadata !1121, metadata !1122, metadata !1123, metadata !1124, metadata !1125, metadata !1126, metadata !1127, metadata !1128, metadata !1129, metadata !1130, metadata !1131, metadata !1132, metadata !1133, metadata !1134, metadata !1135}
!1118 = metadata !{i32 786445, metadata !1116, metadata !"event", metadata !1108, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1119 = metadata !{i32 786445, metadata !1116, metadata !"dummy", metadata !1108, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1120 = metadata !{i32 786445, metadata !1116, metadata !"log", metadata !1108, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !133} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1121 = metadata !{i32 786445, metadata !1116, metadata !"ident", metadata !1108, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1122 = metadata !{i32 786445, metadata !1116, metadata !"udp_connections", metadata !1108, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !383} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1123 = metadata !{i32 786445, metadata !1116, metadata !"last_connection", metadata !1108, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !46} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1124 = metadata !{i32 786445, metadata !1116, metadata !"name_rbtree", metadata !1108, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !651} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1125 = metadata !{i32 786445, metadata !1116, metadata !"name_sentinel", metadata !1108, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !246} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1126 = metadata !{i32 786445, metadata !1116, metadata !"addr_rbtree", metadata !1108, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !651} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1127 = metadata !{i32 786445, metadata !1116, metadata !"addr_sentinel", metadata !1108, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !246} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1128 = metadata !{i32 786445, metadata !1116, metadata !"name_resend_queue", metadata !1108, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !355} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1129 = metadata !{i32 786445, metadata !1116, metadata !"addr_resend_queue", metadata !1108, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !355} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1130 = metadata !{i32 786445, metadata !1116, metadata !"name_expire_queue", metadata !1108, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !355} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1131 = metadata !{i32 786445, metadata !1116, metadata !"addr_expire_queue", metadata !1108, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !355} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1132 = metadata !{i32 786445, metadata !1116, metadata !"resend_timeout", metadata !1108, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !492} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1133 = metadata !{i32 786445, metadata !1116, metadata !"expire", metadata !1108, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !492} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1134 = metadata !{i32 786445, metadata !1116, metadata !"valid", metadata !1108, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !492} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1135 = metadata !{i32 786445, metadata !1116, metadata !"log_level", metadata !1108, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !46} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1136 = metadata !{i32 786445, metadata !1107, metadata !"udp_connection", metadata !1108, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1137} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1137 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1138} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1138 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1108, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1139} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1139 = metadata !{i32 786451, null, metadata !"", metadata !1108, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1140, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1140 = metadata !{metadata !1141, metadata !1142, metadata !1143, metadata !1144, metadata !1145}
!1141 = metadata !{i32 786445, metadata !1139, metadata !"connection", metadata !1108, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !204} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1142 = metadata !{i32 786445, metadata !1139, metadata !"sockaddr", metadata !1108, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !296} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1143 = metadata !{i32 786445, metadata !1139, metadata !"socklen", metadata !1108, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !307} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1144 = metadata !{i32 786445, metadata !1139, metadata !"server", metadata !1108, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !84} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1145 = metadata !{i32 786445, metadata !1139, metadata !"log", metadata !1108, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !134} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1146 = metadata !{i32 786445, metadata !1107, metadata !"ident", metadata !1108, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1147 = metadata !{i32 786445, metadata !1107, metadata !"state", metadata !1108, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1148 = metadata !{i32 786445, metadata !1107, metadata !"type", metadata !1108, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1149 = metadata !{i32 786445, metadata !1107, metadata !"name", metadata !1108, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1150 = metadata !{i32 786445, metadata !1107, metadata !"naddrs", metadata !1108, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1151 = metadata !{i32 786445, metadata !1107, metadata !"addrs", metadata !1108, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !1100} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1152 = metadata !{i32 786445, metadata !1107, metadata !"addr", metadata !1108, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !1101} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1153 = metadata !{i32 786445, metadata !1107, metadata !"handler", metadata !1108, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1154} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1154 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1108, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1155} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1155 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1156} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1157 = metadata !{null, metadata !1111}
!1158 = metadata !{i32 786445, metadata !1107, metadata !"data", metadata !1108, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1159 = metadata !{i32 786445, metadata !1107, metadata !"timeout", metadata !1108, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !329} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1160 = metadata !{i32 786445, metadata !1107, metadata !"quick", metadata !1108, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !46} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1161 = metadata !{i32 786445, metadata !1107, metadata !"recursion", metadata !1108, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !46} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1162 = metadata !{i32 786445, metadata !1107, metadata !"event", metadata !1108, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !211} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1163 = metadata !{i32 786445, metadata !803, metadata !"buffer", metadata !804, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !60} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1164 = metadata !{i32 786445, metadata !803, metadata !"length", metadata !804, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !66} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1165 = metadata !{i32 786445, metadata !803, metadata !"out_bufs", metadata !804, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !53} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1166 = metadata !{i32 786445, metadata !803, metadata !"busy_bufs", metadata !804, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !53} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1167 = metadata !{i32 786445, metadata !803, metadata !"free_bufs", metadata !804, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !53} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1168 = metadata !{i32 786445, metadata !803, metadata !"input_filter_init", metadata !804, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1169} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1169 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1170} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1171 = metadata !{metadata !9, metadata !23}
!1172 = metadata !{i32 786445, metadata !803, metadata !"input_filter", metadata !804, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1173} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1173 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1174} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1174 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1175, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1175 = metadata !{metadata !9, metadata !23, metadata !273}
!1176 = metadata !{i32 786445, metadata !803, metadata !"input_filter_ctx", metadata !804, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !23} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1177 = metadata !{i32 786445, metadata !803, metadata !"create_key", metadata !804, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1178} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1178 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1179} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1180 = metadata !{metadata !9, metadata !610}
!1181 = metadata !{i32 786445, metadata !803, metadata !"create_request", metadata !804, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1178} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1182 = metadata !{i32 786445, metadata !803, metadata !"reinit_request", metadata !804, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1178} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1183 = metadata !{i32 786445, metadata !803, metadata !"process_header", metadata !804, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1178} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1184 = metadata !{i32 786445, metadata !803, metadata !"abort_request", metadata !804, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !607} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1185 = metadata !{i32 786445, metadata !803, metadata !"finalize_request", metadata !804, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1186} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1186 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1187} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1187 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1188, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1188 = metadata !{null, metadata !610, metadata !9}
!1189 = metadata !{i32 786445, metadata !803, metadata !"rewrite_redirect", metadata !804, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1190} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1190 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1191} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1192 = metadata !{metadata !9, metadata !610, metadata !1062, metadata !50}
!1193 = metadata !{i32 786445, metadata !803, metadata !"rewrite_cookie", metadata !804, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1194} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1194 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1195} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1195 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1196 = metadata !{metadata !9, metadata !610, metadata !1062}
!1197 = metadata !{i32 786445, metadata !803, metadata !"timeout", metadata !804, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !329} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1198 = metadata !{i32 786445, metadata !803, metadata !"state", metadata !804, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1199} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1199 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1200} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1200 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !804, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1201} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1201 = metadata !{i32 786451, null, metadata !"", metadata !804, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1202, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1202 = metadata !{metadata !1203, metadata !1204, metadata !1205, metadata !1206, metadata !1207, metadata !1208, metadata !1209}
!1203 = metadata !{i32 786445, metadata !1201, metadata !"bl_time", metadata !804, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !329} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1204 = metadata !{i32 786445, metadata !1201, metadata !"bl_state", metadata !804, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1205 = metadata !{i32 786445, metadata !1201, metadata !"status", metadata !804, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1206 = metadata !{i32 786445, metadata !1201, metadata !"response_sec", metadata !804, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !492} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1207 = metadata !{i32 786445, metadata !1201, metadata !"response_msec", metadata !804, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1208 = metadata !{i32 786445, metadata !1201, metadata !"response_length", metadata !804, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !66} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1209 = metadata !{i32 786445, metadata !1201, metadata !"peer", metadata !804, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !495} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1210 = metadata !{i32 786445, metadata !803, metadata !"method", metadata !804, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !84} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1211 = metadata !{i32 786445, metadata !803, metadata !"schema", metadata !804, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !84} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1212 = metadata !{i32 786445, metadata !803, metadata !"uri", metadata !804, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !84} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1213 = metadata !{i32 786445, metadata !803, metadata !"cleanup", metadata !804, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1214} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1215} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1215 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !804, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !194} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1216 = metadata !{i32 786445, metadata !803, metadata !"store", metadata !804, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !48} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1217 = metadata !{i32 786445, metadata !803, metadata !"cacheable", metadata !804, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !48} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1218 = metadata !{i32 786445, metadata !803, metadata !"accel", metadata !804, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !48} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1219 = metadata !{i32 786445, metadata !803, metadata !"ssl", metadata !804, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !48} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1220 = metadata !{i32 786445, metadata !803, metadata !"cache_status", metadata !804, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !48} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1221 = metadata !{i32 786445, metadata !803, metadata !"buffering", metadata !804, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !48} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1222 = metadata !{i32 786445, metadata !803, metadata !"keepalive", metadata !804, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !48} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1223 = metadata !{i32 786445, metadata !803, metadata !"request_sent", metadata !804, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !48} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1224 = metadata !{i32 786445, metadata !803, metadata !"header_sent", metadata !804, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !48} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1225 = metadata !{i32 786445, metadata !595, metadata !"upstream_states", metadata !596, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !444} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1226 = metadata !{i32 786445, metadata !595, metadata !"pool", metadata !596, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !25} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1227 = metadata !{i32 786445, metadata !595, metadata !"header_in", metadata !596, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !59} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1228 = metadata !{i32 786445, metadata !595, metadata !"headers_in", metadata !596, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1229} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1229 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !596, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1230} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1230 = metadata !{i32 786451, null, metadata !"", metadata !596, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1231, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1231 = metadata !{metadata !1232, metadata !1233, metadata !1234, metadata !1235, metadata !1236, metadata !1237, metadata !1238, metadata !1239, metadata !1240, metadata !1241, metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246, metadata !1247, metadata !1248, metadata !1249, metadata !1250, metadata !1251, metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1257, metadata !1258, metadata !1259, metadata !1260, metadata !1261, metadata !1262, metadata !1263}
!1232 = metadata !{i32 786445, metadata !1230, metadata !"headers", metadata !596, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !393} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1233 = metadata !{i32 786445, metadata !1230, metadata !"host", metadata !596, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !1062} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1234 = metadata !{i32 786445, metadata !1230, metadata !"connection", metadata !596, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !1062} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1235 = metadata !{i32 786445, metadata !1230, metadata !"if_modified_since", metadata !596, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !1062} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1236 = metadata !{i32 786445, metadata !1230, metadata !"if_unmodified_since", metadata !596, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !1062} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1237 = metadata !{i32 786445, metadata !1230, metadata !"user_agent", metadata !596, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !1062} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1238 = metadata !{i32 786445, metadata !1230, metadata !"referer", metadata !596, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !1062} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1239 = metadata !{i32 786445, metadata !1230, metadata !"content_length", metadata !596, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1240 = metadata !{i32 786445, metadata !1230, metadata !"content_type", metadata !596, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1241 = metadata !{i32 786445, metadata !1230, metadata !"range", metadata !596, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !1062} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1242 = metadata !{i32 786445, metadata !1230, metadata !"if_range", metadata !596, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !1062} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1243 = metadata !{i32 786445, metadata !1230, metadata !"transfer_encoding", metadata !596, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !1062} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1244 = metadata !{i32 786445, metadata !1230, metadata !"expect", metadata !596, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !1062} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1245 = metadata !{i32 786445, metadata !1230, metadata !"accept_encoding", metadata !596, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !1062} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1246 = metadata !{i32 786445, metadata !1230, metadata !"via", metadata !596, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !1062} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1247 = metadata !{i32 786445, metadata !1230, metadata !"authorization", metadata !596, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !1062} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1248 = metadata !{i32 786445, metadata !1230, metadata !"keep_alive", metadata !596, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !1062} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1249 = metadata !{i32 786445, metadata !1230, metadata !"x_forwarded_for", metadata !596, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !1062} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1250 = metadata !{i32 786445, metadata !1230, metadata !"user", metadata !596, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !84} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1251 = metadata !{i32 786445, metadata !1230, metadata !"passwd", metadata !596, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !84} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1252 = metadata !{i32 786445, metadata !1230, metadata !"cookies", metadata !596, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !383} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1253 = metadata !{i32 786445, metadata !1230, metadata !"server", metadata !596, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !84} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1254 = metadata !{i32 786445, metadata !1230, metadata !"content_length_n", metadata !596, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !66} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1255 = metadata !{i32 786445, metadata !1230, metadata !"keep_alive_n", metadata !596, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !492} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1256 = metadata !{i32 786445, metadata !1230, metadata !"connection_type", metadata !596, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !48} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1257 = metadata !{i32 786445, metadata !1230, metadata !"msie", metadata !596, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !48} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1258 = metadata !{i32 786445, metadata !1230, metadata !"msie6", metadata !596, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !48} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1259 = metadata !{i32 786445, metadata !1230, metadata !"opera", metadata !596, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !48} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1260 = metadata !{i32 786445, metadata !1230, metadata !"gecko", metadata !596, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !48} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1261 = metadata !{i32 786445, metadata !1230, metadata !"chrome", metadata !596, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !48} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1262 = metadata !{i32 786445, metadata !1230, metadata !"safari", metadata !596, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !48} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1263 = metadata !{i32 786445, metadata !1230, metadata !"konqueror", metadata !596, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !48} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1264 = metadata !{i32 786445, metadata !595, metadata !"headers_out", metadata !596, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1265} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1265 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !596, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1266} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1266 = metadata !{i32 786451, null, metadata !"", metadata !596, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1267, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1267 = metadata !{metadata !1268, metadata !1269, metadata !1270, metadata !1271, metadata !1272, metadata !1273, metadata !1274, metadata !1275, metadata !1276, metadata !1277, metadata !1278, metadata !1279, metadata !1280, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287, metadata !1288, metadata !1289, metadata !1290, metadata !1291, metadata !1292}
!1268 = metadata !{i32 786445, metadata !1266, metadata !"headers", metadata !596, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !393} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1269 = metadata !{i32 786445, metadata !1266, metadata !"status", metadata !596, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !46} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1270 = metadata !{i32 786445, metadata !1266, metadata !"status_line", metadata !596, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1271 = metadata !{i32 786445, metadata !1266, metadata !"server", metadata !596, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !1062} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1272 = metadata !{i32 786445, metadata !1266, metadata !"date", metadata !596, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !1062} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1273 = metadata !{i32 786445, metadata !1266, metadata !"content_length", metadata !596, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1274 = metadata !{i32 786445, metadata !1266, metadata !"content_encoding", metadata !596, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1275 = metadata !{i32 786445, metadata !1266, metadata !"location", metadata !596, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !1062} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1276 = metadata !{i32 786445, metadata !1266, metadata !"refresh", metadata !596, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !1062} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1277 = metadata !{i32 786445, metadata !1266, metadata !"last_modified", metadata !596, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !1062} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1278 = metadata !{i32 786445, metadata !1266, metadata !"content_range", metadata !596, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !1062} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1279 = metadata !{i32 786445, metadata !1266, metadata !"accept_ranges", metadata !596, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !1062} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1280 = metadata !{i32 786445, metadata !1266, metadata !"www_authenticate", metadata !596, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !1062} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1281 = metadata !{i32 786445, metadata !1266, metadata !"expires", metadata !596, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !1062} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1282 = metadata !{i32 786445, metadata !1266, metadata !"etag", metadata !596, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !1062} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1283 = metadata !{i32 786445, metadata !1266, metadata !"override_charset", metadata !596, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !495} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1284 = metadata !{i32 786445, metadata !1266, metadata !"content_type_len", metadata !596, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !50} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1285 = metadata !{i32 786445, metadata !1266, metadata !"content_type", metadata !596, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !84} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1286 = metadata !{i32 786445, metadata !1266, metadata !"charset", metadata !596, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !84} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1287 = metadata !{i32 786445, metadata !1266, metadata !"content_type_lowcase", metadata !596, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !36} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1288 = metadata !{i32 786445, metadata !1266, metadata !"content_type_hash", metadata !596, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !46} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1289 = metadata !{i32 786445, metadata !1266, metadata !"cache_control", metadata !596, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !383} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1290 = metadata !{i32 786445, metadata !1266, metadata !"content_length_n", metadata !596, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !66} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1291 = metadata !{i32 786445, metadata !1266, metadata !"date_time", metadata !596, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !492} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1292 = metadata !{i32 786445, metadata !1266, metadata !"last_modified_time", metadata !596, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !492} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1293 = metadata !{i32 786445, metadata !595, metadata !"request_body", metadata !596, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1294} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1294 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1295} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1295 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !596, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1296} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1296 = metadata !{i32 786451, null, metadata !"", metadata !596, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1297, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1297 = metadata !{metadata !1298, metadata !1299, metadata !1300, metadata !1301, metadata !1302, metadata !1303}
!1298 = metadata !{i32 786445, metadata !1296, metadata !"temp_file", metadata !596, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !912} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1299 = metadata !{i32 786445, metadata !1296, metadata !"bufs", metadata !596, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1300 = metadata !{i32 786445, metadata !1296, metadata !"buf", metadata !596, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !59} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1301 = metadata !{i32 786445, metadata !1296, metadata !"rest", metadata !596, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !66} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1302 = metadata !{i32 786445, metadata !1296, metadata !"to_write", metadata !596, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !53} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1303 = metadata !{i32 786445, metadata !1296, metadata !"post_handler", metadata !596, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1304} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1304 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !596, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !607} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1305 = metadata !{i32 786445, metadata !595, metadata !"lingering_time", metadata !596, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !492} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1306 = metadata !{i32 786445, metadata !595, metadata !"start_sec", metadata !596, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !492} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1307 = metadata !{i32 786445, metadata !595, metadata !"start_msec", metadata !596, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !329} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1308 = metadata !{i32 786445, metadata !595, metadata !"method", metadata !596, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !46} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1309 = metadata !{i32 786445, metadata !595, metadata !"http_version", metadata !596, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !46} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1310 = metadata !{i32 786445, metadata !595, metadata !"request_line", metadata !596, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !84} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1311 = metadata !{i32 786445, metadata !595, metadata !"uri", metadata !596, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !84} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1312 = metadata !{i32 786445, metadata !595, metadata !"args", metadata !596, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !84} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1313 = metadata !{i32 786445, metadata !595, metadata !"exten", metadata !596, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !84} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1314 = metadata !{i32 786445, metadata !595, metadata !"unparsed_uri", metadata !596, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !84} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1315 = metadata !{i32 786445, metadata !595, metadata !"method_name", metadata !596, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !84} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1316 = metadata !{i32 786445, metadata !595, metadata !"http_protocol", metadata !596, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !84} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1317 = metadata !{i32 786445, metadata !595, metadata !"out", metadata !596, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !53} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1318 = metadata !{i32 786445, metadata !595, metadata !"main", metadata !596, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !610} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1319 = metadata !{i32 786445, metadata !595, metadata !"parent", metadata !596, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !610} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1320 = metadata !{i32 786445, metadata !595, metadata !"postponed", metadata !596, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1321} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1321 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1322} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1322 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !596, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1323} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1323 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !596, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1324, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1324 = metadata !{metadata !1325, metadata !1326, metadata !1327}
!1325 = metadata !{i32 786445, metadata !1323, metadata !"request", metadata !596, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !610} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1326 = metadata !{i32 786445, metadata !1323, metadata !"out", metadata !596, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !53} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1327 = metadata !{i32 786445, metadata !1323, metadata !"next", metadata !596, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1321} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1328 = metadata !{i32 786445, metadata !595, metadata !"post_subrequest", metadata !596, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1329} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1329 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1330} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1330 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !596, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1331} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1331 = metadata !{i32 786451, null, metadata !"", metadata !596, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1332, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1332 = metadata !{metadata !1333, metadata !1338}
!1333 = metadata !{i32 786445, metadata !1331, metadata !"handler", metadata !596, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1334} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1334 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !596, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1335} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1335 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1336} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1336 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1337, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1337 = metadata !{metadata !9, metadata !610, metadata !23, metadata !9}
!1338 = metadata !{i32 786445, metadata !1331, metadata !"data", metadata !596, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1339 = metadata !{i32 786445, metadata !595, metadata !"posted_requests", metadata !596, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1340} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1340 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1341} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1341 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !596, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1342} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1342 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !596, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1343, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1343 = metadata !{metadata !1344, metadata !1345}
!1344 = metadata !{i32 786445, metadata !1342, metadata !"request", metadata !596, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !610} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1345 = metadata !{i32 786445, metadata !1342, metadata !"next", metadata !596, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1340} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1346 = metadata !{i32 786445, metadata !595, metadata !"virtual_names", metadata !596, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1347} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1347 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1348} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1348 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !596, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1349} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1349 = metadata !{i32 786451, null, metadata !"", metadata !596, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1350, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1350 = metadata !{metadata !1351, metadata !1364, metadata !1365}
!1351 = metadata !{i32 786445, metadata !1349, metadata !"names", metadata !596, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1352} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1352 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !596, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1353} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1353 = metadata !{i32 786451, null, metadata !"", metadata !1019, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1354, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1354 = metadata !{metadata !1355, metadata !1356, metadata !1363}
!1355 = metadata !{i32 786445, metadata !1353, metadata !"hash", metadata !1019, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !1017} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1356 = metadata !{i32 786445, metadata !1353, metadata !"wc_head", metadata !1019, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1357} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1357 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1358} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1358 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !1019, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1359} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1359 = metadata !{i32 786451, null, metadata !"", metadata !1019, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1360, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1360 = metadata !{metadata !1361, metadata !1362}
!1361 = metadata !{i32 786445, metadata !1359, metadata !"hash", metadata !1019, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !1017} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1362 = metadata !{i32 786445, metadata !1359, metadata !"value", metadata !1019, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1363 = metadata !{i32 786445, metadata !1353, metadata !"wc_tail", metadata !1019, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1357} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1364 = metadata !{i32 786445, metadata !1349, metadata !"nregex", metadata !596, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1365 = metadata !{i32 786445, metadata !1349, metadata !"regex", metadata !596, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1366} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1366 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1367} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1367 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !596, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1368} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1368 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1369, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1370, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1369 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1370 = metadata !{metadata !1371, metadata !1413, metadata !1569}
!1371 = metadata !{i32 786445, metadata !1368, metadata !"regex", metadata !1369, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1372} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1372 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1373} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1373 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1369, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1374} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1374 = metadata !{i32 786451, null, metadata !"", metadata !1375, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1376, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1375 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1376 = metadata !{metadata !1377, metadata !1403, metadata !1404, metadata !1411, metadata !1412}
!1377 = metadata !{i32 786445, metadata !1374, metadata !"regex", metadata !1375, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1378} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1378 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1379} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1379 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !1375, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1380} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1380 = metadata !{i32 786451, null, metadata !"", metadata !1381, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1382, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1381 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1382 = metadata !{metadata !1383, metadata !1388}
!1383 = metadata !{i32 786445, metadata !1380, metadata !"code", metadata !1381, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1384} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1384 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1385} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1385 = metadata !{i32 786454, null, metadata !"pcre", metadata !1381, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1386} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1386 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1387, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1387 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1388 = metadata !{i32 786445, metadata !1380, metadata !"extra", metadata !1381, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1389} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1389 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1390} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1390 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1381, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1391} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1391 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1387, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1392, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1392 = metadata !{metadata !1393, metadata !1394, metadata !1395, metadata !1396, metadata !1397, metadata !1398, metadata !1399, metadata !1402}
!1393 = metadata !{i32 786445, metadata !1391, metadata !"flags", metadata !1387, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1394 = metadata !{i32 786445, metadata !1391, metadata !"study_data", metadata !1387, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1395 = metadata !{i32 786445, metadata !1391, metadata !"match_limit", metadata !1387, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !102} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1396 = metadata !{i32 786445, metadata !1391, metadata !"callout_data", metadata !1387, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !23} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1397 = metadata !{i32 786445, metadata !1391, metadata !"tables", metadata !1387, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !501} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1398 = metadata !{i32 786445, metadata !1391, metadata !"match_limit_recursion", metadata !1387, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !102} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1399 = metadata !{i32 786445, metadata !1391, metadata !"mark", metadata !1387, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1400} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1400 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1401} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1401 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1402 = metadata !{i32 786445, metadata !1391, metadata !"executable_jit", metadata !1387, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !23} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1403 = metadata !{i32 786445, metadata !1374, metadata !"ncaptures", metadata !1375, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1404 = metadata !{i32 786445, metadata !1374, metadata !"variables", metadata !1375, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1405} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1405 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1406} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1406 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !1375, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1407} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1407 = metadata !{i32 786451, null, metadata !"", metadata !1375, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1408, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1408 = metadata !{metadata !1409, metadata !1410}
!1409 = metadata !{i32 786445, metadata !1407, metadata !"capture", metadata !1375, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1410 = metadata !{i32 786445, metadata !1407, metadata !"index", metadata !1375, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1411 = metadata !{i32 786445, metadata !1374, metadata !"nvariables", metadata !1375, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !46} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1412 = metadata !{i32 786445, metadata !1374, metadata !"name", metadata !1375, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1413 = metadata !{i32 786445, metadata !1368, metadata !"server", metadata !1369, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1414} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1414 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1415} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1415 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1369, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1416} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1416 = metadata !{i32 786451, null, metadata !"", metadata !1369, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1417, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1417 = metadata !{metadata !1418, metadata !1419, metadata !1428, metadata !1429, metadata !1430, metadata !1431, metadata !1432, metadata !1433, metadata !1434, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439}
!1418 = metadata !{i32 786445, metadata !1416, metadata !"server_names", metadata !1369, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !383} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1419 = metadata !{i32 786445, metadata !1416, metadata !"ctx", metadata !1369, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1420} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1420 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1421} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1421 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1369, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1422} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1422 = metadata !{i32 786451, null, metadata !"", metadata !1423, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1424, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1423 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1424 = metadata !{metadata !1425, metadata !1426, metadata !1427}
!1425 = metadata !{i32 786445, metadata !1422, metadata !"main_conf", metadata !1423, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1426 = metadata !{i32 786445, metadata !1422, metadata !"srv_conf", metadata !1423, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1427 = metadata !{i32 786445, metadata !1422, metadata !"loc_conf", metadata !1423, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !22} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1428 = metadata !{i32 786445, metadata !1416, metadata !"server_name", metadata !1369, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !84} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1429 = metadata !{i32 786445, metadata !1416, metadata !"connection_pool_size", metadata !1369, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !50} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1430 = metadata !{i32 786445, metadata !1416, metadata !"request_pool_size", metadata !1369, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !50} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1431 = metadata !{i32 786445, metadata !1416, metadata !"client_header_buffer_size", metadata !1369, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !50} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1432 = metadata !{i32 786445, metadata !1416, metadata !"large_client_header_buffers", metadata !1369, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !892} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1433 = metadata !{i32 786445, metadata !1416, metadata !"client_header_timeout", metadata !1369, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !329} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1434 = metadata !{i32 786445, metadata !1416, metadata !"ignore_invalid_headers", metadata !1369, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !1009} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1435 = metadata !{i32 786445, metadata !1416, metadata !"merge_slashes", metadata !1369, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !1009} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1436 = metadata !{i32 786445, metadata !1416, metadata !"underscores_in_headers", metadata !1369, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !1009} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1437 = metadata !{i32 786445, metadata !1416, metadata !"listen", metadata !1369, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !48} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1438 = metadata !{i32 786445, metadata !1416, metadata !"captures", metadata !1369, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !48} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1439 = metadata !{i32 786445, metadata !1416, metadata !"named_locations", metadata !1369, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1440} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1440 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1441} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1441 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1442} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1442 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1369, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1443} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1443 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1369, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1444, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1444 = metadata !{metadata !1445, metadata !1446, metadata !1447, metadata !1448, metadata !1449, metadata !1450, metadata !1451, metadata !1452, metadata !1453, metadata !1454, metadata !1467, metadata !1468, metadata !1469, metadata !1470, metadata !1471, metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1477, metadata !1478, metadata !1479, metadata !1480, metadata !1481, metadata !1482, metadata !1483, metadata !1484, metadata !1485, metadata !1486, metadata !1487, metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1493, metadata !1494, metadata !1495, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1501, metadata !1502, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1537, metadata !1538, metadata !1548, metadata !1549, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568}
!1445 = metadata !{i32 786445, metadata !1443, metadata !"name", metadata !1369, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1446 = metadata !{i32 786445, metadata !1443, metadata !"regex", metadata !1369, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1372} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1447 = metadata !{i32 786445, metadata !1443, metadata !"noname", metadata !1369, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1448 = metadata !{i32 786445, metadata !1443, metadata !"lmt_excpt", metadata !1369, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !48} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1449 = metadata !{i32 786445, metadata !1443, metadata !"named", metadata !1369, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !48} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1450 = metadata !{i32 786445, metadata !1443, metadata !"exact_match", metadata !1369, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !48} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1451 = metadata !{i32 786445, metadata !1443, metadata !"noregex", metadata !1369, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !48} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1452 = metadata !{i32 786445, metadata !1443, metadata !"auto_redirect", metadata !1369, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !48} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1453 = metadata !{i32 786445, metadata !1443, metadata !"gzip_disable_msie6", metadata !1369, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !48} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1454 = metadata !{i32 786445, metadata !1443, metadata !"static_locations", metadata !1369, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1455} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1455 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1456} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1456 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1369, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1457} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1457 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1369, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1458, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1458 = metadata !{metadata !1459, metadata !1460, metadata !1461, metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466}
!1459 = metadata !{i32 786445, metadata !1457, metadata !"left", metadata !1369, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1455} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1460 = metadata !{i32 786445, metadata !1457, metadata !"right", metadata !1369, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1455} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1461 = metadata !{i32 786445, metadata !1457, metadata !"tree", metadata !1369, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1455} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1462 = metadata !{i32 786445, metadata !1457, metadata !"exact", metadata !1369, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1441} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1463 = metadata !{i32 786445, metadata !1457, metadata !"inclusive", metadata !1369, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1441} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1464 = metadata !{i32 786445, metadata !1457, metadata !"auto_redirect", metadata !1369, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !37} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1465 = metadata !{i32 786445, metadata !1457, metadata !"len", metadata !1369, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !37} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1466 = metadata !{i32 786445, metadata !1457, metadata !"name", metadata !1369, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !1032} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1467 = metadata !{i32 786445, metadata !1443, metadata !"regex_locations", metadata !1369, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1440} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1468 = metadata !{i32 786445, metadata !1443, metadata !"loc_conf", metadata !1369, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1469 = metadata !{i32 786445, metadata !1443, metadata !"limit_except", metadata !1369, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !599} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1470 = metadata !{i32 786445, metadata !1443, metadata !"limit_except_loc_conf", metadata !1369, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1471 = metadata !{i32 786445, metadata !1443, metadata !"handler", metadata !1369, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1472} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1472 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1369, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1178} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1473 = metadata !{i32 786445, metadata !1443, metadata !"alias", metadata !1369, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !50} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1474 = metadata !{i32 786445, metadata !1443, metadata !"root", metadata !1369, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !84} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1475 = metadata !{i32 786445, metadata !1443, metadata !"post_action", metadata !1369, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !84} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1476 = metadata !{i32 786445, metadata !1443, metadata !"root_lengths", metadata !1369, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !444} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1477 = metadata !{i32 786445, metadata !1443, metadata !"root_values", metadata !1369, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !444} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1478 = metadata !{i32 786445, metadata !1443, metadata !"types", metadata !1369, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !444} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1479 = metadata !{i32 786445, metadata !1443, metadata !"types_hash", metadata !1369, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !1017} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1480 = metadata !{i32 786445, metadata !1443, metadata !"default_type", metadata !1369, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !84} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1481 = metadata !{i32 786445, metadata !1443, metadata !"client_max_body_size", metadata !1369, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !66} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1482 = metadata !{i32 786445, metadata !1443, metadata !"directio", metadata !1369, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !66} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1483 = metadata !{i32 786445, metadata !1443, metadata !"directio_alignment", metadata !1369, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !66} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1484 = metadata !{i32 786445, metadata !1443, metadata !"client_body_buffer_size", metadata !1369, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !50} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1485 = metadata !{i32 786445, metadata !1443, metadata !"send_lowat", metadata !1369, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !50} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1486 = metadata !{i32 786445, metadata !1443, metadata !"postpone_output", metadata !1369, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !50} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1487 = metadata !{i32 786445, metadata !1443, metadata !"limit_rate", metadata !1369, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !50} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1488 = metadata !{i32 786445, metadata !1443, metadata !"limit_rate_after", metadata !1369, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !50} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1489 = metadata !{i32 786445, metadata !1443, metadata !"sendfile_max_chunk", metadata !1369, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !50} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1490 = metadata !{i32 786445, metadata !1443, metadata !"read_ahead", metadata !1369, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !50} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1491 = metadata !{i32 786445, metadata !1443, metadata !"client_body_timeout", metadata !1369, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !329} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1492 = metadata !{i32 786445, metadata !1443, metadata !"send_timeout", metadata !1369, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !329} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1493 = metadata !{i32 786445, metadata !1443, metadata !"keepalive_timeout", metadata !1369, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !329} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1494 = metadata !{i32 786445, metadata !1443, metadata !"lingering_time", metadata !1369, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !329} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1495 = metadata !{i32 786445, metadata !1443, metadata !"lingering_timeout", metadata !1369, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !329} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1496 = metadata !{i32 786445, metadata !1443, metadata !"resolver_timeout", metadata !1369, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !329} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1497 = metadata !{i32 786445, metadata !1443, metadata !"resolver", metadata !1369, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1114} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1498 = metadata !{i32 786445, metadata !1443, metadata !"keepalive_header", metadata !1369, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !492} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1499 = metadata !{i32 786445, metadata !1443, metadata !"keepalive_requests", metadata !1369, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !46} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1500 = metadata !{i32 786445, metadata !1443, metadata !"keepalive_disable", metadata !1369, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !46} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1501 = metadata !{i32 786445, metadata !1443, metadata !"satisfy", metadata !1369, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !46} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1502 = metadata !{i32 786445, metadata !1443, metadata !"lingering_close", metadata !1369, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !46} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1503 = metadata !{i32 786445, metadata !1443, metadata !"if_modified_since", metadata !1369, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !46} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1504 = metadata !{i32 786445, metadata !1443, metadata !"max_ranges", metadata !1369, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !46} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1505 = metadata !{i32 786445, metadata !1443, metadata !"client_body_in_file_only", metadata !1369, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !46} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1506 = metadata !{i32 786445, metadata !1443, metadata !"client_body_in_single_buffer", metadata !1369, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !1009} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1507 = metadata !{i32 786445, metadata !1443, metadata !"internal", metadata !1369, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !1009} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1508 = metadata !{i32 786445, metadata !1443, metadata !"sendfile", metadata !1369, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !1009} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1509 = metadata !{i32 786445, metadata !1443, metadata !"tcp_nopush", metadata !1369, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !1009} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1510 = metadata !{i32 786445, metadata !1443, metadata !"tcp_nodelay", metadata !1369, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !1009} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1511 = metadata !{i32 786445, metadata !1443, metadata !"reset_timedout_connection", metadata !1369, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !1009} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1512 = metadata !{i32 786445, metadata !1443, metadata !"server_name_in_redirect", metadata !1369, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !1009} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1513 = metadata !{i32 786445, metadata !1443, metadata !"port_in_redirect", metadata !1369, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !1009} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1514 = metadata !{i32 786445, metadata !1443, metadata !"msie_padding", metadata !1369, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !1009} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1515 = metadata !{i32 786445, metadata !1443, metadata !"msie_refresh", metadata !1369, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !1009} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1516 = metadata !{i32 786445, metadata !1443, metadata !"log_not_found", metadata !1369, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !1009} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1517 = metadata !{i32 786445, metadata !1443, metadata !"log_subrequest", metadata !1369, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !1009} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1518 = metadata !{i32 786445, metadata !1443, metadata !"recursive_error_pages", metadata !1369, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !1009} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1519 = metadata !{i32 786445, metadata !1443, metadata !"server_tokens", metadata !1369, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !1009} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1520 = metadata !{i32 786445, metadata !1443, metadata !"chunked_transfer_encoding", metadata !1369, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !1009} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1521 = metadata !{i32 786445, metadata !1443, metadata !"gzip_vary", metadata !1369, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !1009} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1522 = metadata !{i32 786445, metadata !1443, metadata !"gzip_http_version", metadata !1369, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !46} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1523 = metadata !{i32 786445, metadata !1443, metadata !"gzip_proxied", metadata !1369, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !46} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1524 = metadata !{i32 786445, metadata !1443, metadata !"gzip_disable", metadata !1369, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !444} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1525 = metadata !{i32 786445, metadata !1443, metadata !"disable_symlinks", metadata !1369, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !46} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1526 = metadata !{i32 786445, metadata !1443, metadata !"disable_symlinks_from", metadata !1369, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1527} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1527 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1528} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1528 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1369, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1529} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1529 = metadata !{i32 786451, null, metadata !"", metadata !1530, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1531, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1530 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1531 = metadata !{metadata !1532, metadata !1533, metadata !1535, metadata !1536}
!1532 = metadata !{i32 786445, metadata !1529, metadata !"value", metadata !1530, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1533 = metadata !{i32 786445, metadata !1529, metadata !"flushes", metadata !1530, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1534} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1534 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1535 = metadata !{i32 786445, metadata !1529, metadata !"lengths", metadata !1530, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !23} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1536 = metadata !{i32 786445, metadata !1529, metadata !"values", metadata !1530, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1537 = metadata !{i32 786445, metadata !1443, metadata !"error_pages", metadata !1369, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !444} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1538 = metadata !{i32 786445, metadata !1443, metadata !"try_files", metadata !1369, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1539} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1539 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1540} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1540 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1369, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1541} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1541 = metadata !{i32 786451, null, metadata !"", metadata !1369, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1542, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1542 = metadata !{metadata !1543, metadata !1544, metadata !1545, metadata !1546, metadata !1547}
!1543 = metadata !{i32 786445, metadata !1541, metadata !"lengths", metadata !1369, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !444} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1544 = metadata !{i32 786445, metadata !1541, metadata !"values", metadata !1369, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !444} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1545 = metadata !{i32 786445, metadata !1541, metadata !"name", metadata !1369, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1546 = metadata !{i32 786445, metadata !1541, metadata !"code", metadata !1369, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1547 = metadata !{i32 786445, metadata !1541, metadata !"test_dir", metadata !1369, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !48} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1548 = metadata !{i32 786445, metadata !1443, metadata !"client_body_temp_path", metadata !1369, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !716} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1549 = metadata !{i32 786445, metadata !1443, metadata !"open_file_cache", metadata !1369, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1550} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1550 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1551} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1551 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1369, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1552} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1552 = metadata !{i32 786451, null, metadata !"", metadata !1553, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1554, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1553 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1554 = metadata !{metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560}
!1555 = metadata !{i32 786445, metadata !1552, metadata !"rbtree", metadata !1553, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !651} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1556 = metadata !{i32 786445, metadata !1552, metadata !"sentinel", metadata !1553, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !246} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1557 = metadata !{i32 786445, metadata !1552, metadata !"expire_queue", metadata !1553, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !355} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1558 = metadata !{i32 786445, metadata !1552, metadata !"current", metadata !1553, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1559 = metadata !{i32 786445, metadata !1552, metadata !"max", metadata !1553, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !46} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1560 = metadata !{i32 786445, metadata !1552, metadata !"inactive", metadata !1553, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !492} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1561 = metadata !{i32 786445, metadata !1443, metadata !"open_file_cache_valid", metadata !1369, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !492} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1562 = metadata !{i32 786445, metadata !1443, metadata !"open_file_cache_min_uses", metadata !1369, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !46} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1563 = metadata !{i32 786445, metadata !1443, metadata !"open_file_cache_errors", metadata !1369, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !1009} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1564 = metadata !{i32 786445, metadata !1443, metadata !"open_file_cache_events", metadata !1369, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !1009} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1565 = metadata !{i32 786445, metadata !1443, metadata !"error_log", metadata !1369, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !133} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1566 = metadata !{i32 786445, metadata !1443, metadata !"types_hash_max_size", metadata !1369, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !46} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1567 = metadata !{i32 786445, metadata !1443, metadata !"types_hash_bucket_size", metadata !1369, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !46} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1568 = metadata !{i32 786445, metadata !1443, metadata !"locations", metadata !1369, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !360} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1569 = metadata !{i32 786445, metadata !1368, metadata !"name", metadata !1369, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1570 = metadata !{i32 786445, metadata !595, metadata !"phase_handler", metadata !596, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !9} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1571 = metadata !{i32 786445, metadata !595, metadata !"content_handler", metadata !596, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1472} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1572 = metadata !{i32 786445, metadata !595, metadata !"access_code", metadata !596, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !46} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1573 = metadata !{i32 786445, metadata !595, metadata !"variables", metadata !596, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1574} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1574 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1575} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1575 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !596, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1576} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1576 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !596, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1577} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1577 = metadata !{i32 786451, null, metadata !"", metadata !38, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1578, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1578 = metadata !{metadata !1579, metadata !1580, metadata !1581, metadata !1582, metadata !1583, metadata !1584}
!1579 = metadata !{i32 786445, metadata !1577, metadata !"len", metadata !38, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1580 = metadata !{i32 786445, metadata !1577, metadata !"valid", metadata !38, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !48} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1581 = metadata !{i32 786445, metadata !1577, metadata !"no_cacheable", metadata !38, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !48} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1582 = metadata !{i32 786445, metadata !1577, metadata !"not_found", metadata !38, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !48} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1583 = metadata !{i32 786445, metadata !1577, metadata !"escape", metadata !38, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !48} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1584 = metadata !{i32 786445, metadata !1577, metadata !"data", metadata !38, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !36} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1585 = metadata !{i32 786445, metadata !595, metadata !"ncaptures", metadata !596, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !46} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1586 = metadata !{i32 786445, metadata !595, metadata !"captures", metadata !596, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1587} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1587 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1588 = metadata !{i32 786445, metadata !595, metadata !"captures_data", metadata !596, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !36} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1589 = metadata !{i32 786445, metadata !595, metadata !"limit_rate", metadata !596, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !50} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1590 = metadata !{i32 786445, metadata !595, metadata !"header_size", metadata !596, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !50} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1591 = metadata !{i32 786445, metadata !595, metadata !"request_length", metadata !596, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !66} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1592 = metadata !{i32 786445, metadata !595, metadata !"err_status", metadata !596, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !46} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1593 = metadata !{i32 786445, metadata !595, metadata !"http_connection", metadata !596, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1594} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1594 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1595} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1595 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !596, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1596} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1596 = metadata !{i32 786451, null, metadata !"", metadata !596, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1597, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1597 = metadata !{metadata !1598, metadata !1599, metadata !1601, metadata !1602, metadata !1603, metadata !1604}
!1598 = metadata !{i32 786445, metadata !1596, metadata !"request", metadata !596, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !610} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1599 = metadata !{i32 786445, metadata !1596, metadata !"busy", metadata !596, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1600} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1600 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !59} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1601 = metadata !{i32 786445, metadata !1596, metadata !"nbusy", metadata !596, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1602 = metadata !{i32 786445, metadata !1596, metadata !"free", metadata !596, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1600} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1603 = metadata !{i32 786445, metadata !1596, metadata !"nfree", metadata !596, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1604 = metadata !{i32 786445, metadata !1596, metadata !"pipeline", metadata !596, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1605 = metadata !{i32 786445, metadata !595, metadata !"log_handler", metadata !596, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1606} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1606 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !596, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1607} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1607 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1608} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1609 = metadata !{metadata !36, metadata !610, metadata !610, metadata !36, metadata !50}
!1610 = metadata !{i32 786445, metadata !595, metadata !"cleanup", metadata !596, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1611} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1611 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1612} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1612 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !596, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1613} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1613 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !596, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1614, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1614 = metadata !{metadata !1615, metadata !1616, metadata !1617}
!1615 = metadata !{i32 786445, metadata !1613, metadata !"handler", metadata !596, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1215} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1616 = metadata !{i32 786445, metadata !1613, metadata !"data", metadata !596, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !23} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1617 = metadata !{i32 786445, metadata !1613, metadata !"next", metadata !596, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1611} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1618 = metadata !{i32 786445, metadata !595, metadata !"subrequests", metadata !596, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !48} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1619 = metadata !{i32 786445, metadata !595, metadata !"count", metadata !596, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !48} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1620 = metadata !{i32 786445, metadata !595, metadata !"blocked", metadata !596, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !48} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1621 = metadata !{i32 786445, metadata !595, metadata !"aio", metadata !596, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !48} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1622 = metadata !{i32 786445, metadata !595, metadata !"http_state", metadata !596, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !48} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1623 = metadata !{i32 786445, metadata !595, metadata !"complex_uri", metadata !596, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !48} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1624 = metadata !{i32 786445, metadata !595, metadata !"quoted_uri", metadata !596, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !48} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1625 = metadata !{i32 786445, metadata !595, metadata !"plus_in_uri", metadata !596, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !48} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1626 = metadata !{i32 786445, metadata !595, metadata !"space_in_uri", metadata !596, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !48} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1627 = metadata !{i32 786445, metadata !595, metadata !"invalid_header", metadata !596, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !48} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1628 = metadata !{i32 786445, metadata !595, metadata !"add_uri_to_alias", metadata !596, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !48} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1629 = metadata !{i32 786445, metadata !595, metadata !"valid_location", metadata !596, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !48} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1630 = metadata !{i32 786445, metadata !595, metadata !"valid_unparsed_uri", metadata !596, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !48} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1631 = metadata !{i32 786445, metadata !595, metadata !"uri_changed", metadata !596, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !48} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1632 = metadata !{i32 786445, metadata !595, metadata !"uri_changes", metadata !596, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !48} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1633 = metadata !{i32 786445, metadata !595, metadata !"request_body_in_single_buf", metadata !596, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !48} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1634 = metadata !{i32 786445, metadata !595, metadata !"request_body_in_file_only", metadata !596, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !48} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1635 = metadata !{i32 786445, metadata !595, metadata !"request_body_in_persistent_file", metadata !596, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !48} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1636 = metadata !{i32 786445, metadata !595, metadata !"request_body_in_clean_file", metadata !596, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !48} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1637 = metadata !{i32 786445, metadata !595, metadata !"request_body_file_group_access", metadata !596, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !48} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1638 = metadata !{i32 786445, metadata !595, metadata !"request_body_file_log_level", metadata !596, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !48} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1639 = metadata !{i32 786445, metadata !595, metadata !"subrequest_in_memory", metadata !596, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !48} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1640 = metadata !{i32 786445, metadata !595, metadata !"waited", metadata !596, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !48} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1641 = metadata !{i32 786445, metadata !595, metadata !"cached", metadata !596, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !48} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1642 = metadata !{i32 786445, metadata !595, metadata !"gzip_tested", metadata !596, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !48} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1643 = metadata !{i32 786445, metadata !595, metadata !"gzip_ok", metadata !596, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !48} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1644 = metadata !{i32 786445, metadata !595, metadata !"gzip_vary", metadata !596, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !48} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1645 = metadata !{i32 786445, metadata !595, metadata !"proxy", metadata !596, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !48} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1646 = metadata !{i32 786445, metadata !595, metadata !"bypass_cache", metadata !596, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !48} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1647 = metadata !{i32 786445, metadata !595, metadata !"no_cache", metadata !596, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !48} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1648 = metadata !{i32 786445, metadata !595, metadata !"limit_conn_set", metadata !596, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !48} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1649 = metadata !{i32 786445, metadata !595, metadata !"limit_req_set", metadata !596, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !48} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1650 = metadata !{i32 786445, metadata !595, metadata !"pipeline", metadata !596, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !48} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1651 = metadata !{i32 786445, metadata !595, metadata !"plain_http", metadata !596, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !48} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1652 = metadata !{i32 786445, metadata !595, metadata !"chunked", metadata !596, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !48} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1653 = metadata !{i32 786445, metadata !595, metadata !"header_only", metadata !596, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !48} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1654 = metadata !{i32 786445, metadata !595, metadata !"keepalive", metadata !596, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !48} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1655 = metadata !{i32 786445, metadata !595, metadata !"lingering_close", metadata !596, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !48} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1656 = metadata !{i32 786445, metadata !595, metadata !"discard_body", metadata !596, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !48} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1657 = metadata !{i32 786445, metadata !595, metadata !"internal", metadata !596, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !48} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1658 = metadata !{i32 786445, metadata !595, metadata !"error_page", metadata !596, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !48} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1659 = metadata !{i32 786445, metadata !595, metadata !"ignore_content_encoding", metadata !596, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !48} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1660 = metadata !{i32 786445, metadata !595, metadata !"filter_finalize", metadata !596, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !48} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1661 = metadata !{i32 786445, metadata !595, metadata !"post_action", metadata !596, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !48} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1662 = metadata !{i32 786445, metadata !595, metadata !"request_complete", metadata !596, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !48} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1663 = metadata !{i32 786445, metadata !595, metadata !"request_output", metadata !596, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !48} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1664 = metadata !{i32 786445, metadata !595, metadata !"header_sent", metadata !596, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !48} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1665 = metadata !{i32 786445, metadata !595, metadata !"expect_tested", metadata !596, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !48} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1666 = metadata !{i32 786445, metadata !595, metadata !"root_tested", metadata !596, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !48} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1667 = metadata !{i32 786445, metadata !595, metadata !"done", metadata !596, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !48} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1668 = metadata !{i32 786445, metadata !595, metadata !"logged", metadata !596, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !48} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1669 = metadata !{i32 786445, metadata !595, metadata !"buffered", metadata !596, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !48} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1670 = metadata !{i32 786445, metadata !595, metadata !"main_filter_need_in_memory", metadata !596, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !48} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1671 = metadata !{i32 786445, metadata !595, metadata !"filter_need_in_memory", metadata !596, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !48} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1672 = metadata !{i32 786445, metadata !595, metadata !"filter_need_temporary", metadata !596, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !48} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1673 = metadata !{i32 786445, metadata !595, metadata !"allow_ranges", metadata !596, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !48} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1674 = metadata !{i32 786445, metadata !595, metadata !"state", metadata !596, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !46} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1675 = metadata !{i32 786445, metadata !595, metadata !"header_hash", metadata !596, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !46} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1676 = metadata !{i32 786445, metadata !595, metadata !"lowcase_index", metadata !596, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !46} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1677 = metadata !{i32 786445, metadata !595, metadata !"lowcase_header", metadata !596, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1678} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1678 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !37, metadata !1679, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1679 = metadata !{metadata !1680}
!1680 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1681 = metadata !{i32 786445, metadata !595, metadata !"header_name_start", metadata !596, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !36} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1682 = metadata !{i32 786445, metadata !595, metadata !"header_name_end", metadata !596, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !36} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1683 = metadata !{i32 786445, metadata !595, metadata !"header_start", metadata !596, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !36} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1684 = metadata !{i32 786445, metadata !595, metadata !"header_end", metadata !596, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !36} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1685 = metadata !{i32 786445, metadata !595, metadata !"uri_start", metadata !596, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !36} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1686 = metadata !{i32 786445, metadata !595, metadata !"uri_end", metadata !596, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !36} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1687 = metadata !{i32 786445, metadata !595, metadata !"uri_ext", metadata !596, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !36} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1688 = metadata !{i32 786445, metadata !595, metadata !"args_start", metadata !596, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !36} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1689 = metadata !{i32 786445, metadata !595, metadata !"request_start", metadata !596, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !36} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1690 = metadata !{i32 786445, metadata !595, metadata !"request_end", metadata !596, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !36} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1691 = metadata !{i32 786445, metadata !595, metadata !"method_end", metadata !596, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !36} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1692 = metadata !{i32 786445, metadata !595, metadata !"schema_start", metadata !596, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !36} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1693 = metadata !{i32 786445, metadata !595, metadata !"schema_end", metadata !596, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !36} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1694 = metadata !{i32 786445, metadata !595, metadata !"host_start", metadata !596, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !36} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1695 = metadata !{i32 786445, metadata !595, metadata !"host_end", metadata !596, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !36} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1696 = metadata !{i32 786445, metadata !595, metadata !"port_start", metadata !596, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !36} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1697 = metadata !{i32 786445, metadata !595, metadata !"port_end", metadata !596, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !36} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1698 = metadata !{i32 786445, metadata !595, metadata !"http_minor", metadata !596, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !48} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1699 = metadata !{i32 786445, metadata !595, metadata !"http_major", metadata !596, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !48} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1700 = metadata !{metadata !1701}
!1701 = metadata !{metadata !1702, metadata !1703, metadata !1716}
!1702 = metadata !{i32 786689, metadata !590, metadata !"r", metadata !6, i32 16777293, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 77]
!1703 = metadata !{i32 786688, metadata !1704, metadata !"ctx", metadata !6, i32 79, metadata !1705, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 79]
!1704 = metadata !{i32 786443, metadata !590, i32 78, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1705 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1706} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_userid_ctx_t]
!1706 = metadata !{i32 786454, null, metadata !"ngx_http_userid_ctx_t", metadata !6, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !1707} ; [ DW_TAG_typedef ] [ngx_http_userid_ctx_t] [line 27, size 0, align 0, offset 0] [from ]
!1707 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 23, i64 352, i64 32, i32 0, i32 0, null, metadata !1708, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 352, align 32, offset 0] [from ]
!1708 = metadata !{metadata !1709, metadata !1713, metadata !1714, metadata !1715}
!1709 = metadata !{i32 786445, metadata !1707, metadata !"uid_got", metadata !6, i32 24, i64 128, i64 32, i64 0, i32 0, metadata !1710} ; [ DW_TAG_member ] [uid_got] [line 24, size 128, align 32, offset 0] [from ]
!1710 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !599, metadata !1711, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from uint32_t]
!1711 = metadata !{metadata !1712}
!1712 = metadata !{i32 786465, i64 0, i64 3}      ; [ DW_TAG_subrange_type ] [0, 3]
!1713 = metadata !{i32 786445, metadata !1707, metadata !"uid_set", metadata !6, i32 25, i64 128, i64 32, i64 128, i32 0, metadata !1710} ; [ DW_TAG_member ] [uid_set] [line 25, size 128, align 32, offset 128] [from ]
!1714 = metadata !{i32 786445, metadata !1707, metadata !"cookie", metadata !6, i32 26, i64 64, i64 32, i64 256, i32 0, metadata !84} ; [ DW_TAG_member ] [cookie] [line 26, size 64, align 32, offset 256] [from ngx_str_t]
!1715 = metadata !{i32 786445, metadata !1707, metadata !"reset", metadata !6, i32 27, i64 32, i64 32, i64 320, i32 0, metadata !46} ; [ DW_TAG_member ] [reset] [line 27, size 32, align 32, offset 320] [from ngx_uint_t]
!1716 = metadata !{i32 786688, metadata !1704, metadata !"conf", metadata !6, i32 80, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 80]
!1717 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_set_uid", metadata !"ngx_http_userid_set_uid", metadata !"", metadata !6, i32 190, metadata !1718, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1720, i32 191} ; [ DW_TAG_subprogram ] [line 190] [local] [def] [scope 191] [ngx_http_userid_set_uid]
!1718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1719 = metadata !{metadata !9, metadata !593, metadata !1705, metadata !481}
!1720 = metadata !{metadata !1721}
!1721 = metadata !{metadata !1722, metadata !1723, metadata !1724, metadata !1725, metadata !1727, metadata !1728, metadata !1729, metadata !1730, metadata !1731, metadata !1732}
!1722 = metadata !{i32 786689, metadata !1717, metadata !"r", metadata !6, i32 16777406, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 190]
!1723 = metadata !{i32 786689, metadata !1717, metadata !"ctx", metadata !6, i32 33554622, metadata !1705, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 190]
!1724 = metadata !{i32 786689, metadata !1717, metadata !"conf", metadata !6, i32 50331838, metadata !481, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 190]
!1725 = metadata !{i32 786688, metadata !1726, metadata !"cookie", metadata !6, i32 192, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cookie] [line 192]
!1726 = metadata !{i32 786443, metadata !1717, i32 191, i32 0, metadata !6, i32 64} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1727 = metadata !{i32 786688, metadata !1726, metadata !"p", metadata !6, i32 193, metadata !36, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 193]
!1728 = metadata !{i32 786688, metadata !1726, metadata !"len", metadata !6, i32 194, metadata !50, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 194]
!1729 = metadata !{i32 786688, metadata !1726, metadata !"src", metadata !6, i32 195, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 195]
!1730 = metadata !{i32 786688, metadata !1726, metadata !"dst", metadata !6, i32 196, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 196]
!1731 = metadata !{i32 786688, metadata !1726, metadata !"set_cookie", metadata !6, i32 197, metadata !1062, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [set_cookie] [line 197]
!1732 = metadata !{i32 786688, metadata !1726, metadata !"p3p", metadata !6, i32 198, metadata !1062, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p3p] [line 198]
!1733 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_create_uid", metadata !"ngx_http_userid_create_uid", metadata !"", metadata !6, i32 266, metadata !1718, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_userid_ctx_t*, %struct.ngx_http_userid_conf_t*)* @ngx_http_userid_create_uid, null, null, metadata !1734, i32 267} ; [ DW_TAG_subprogram ] [line 266] [local] [def] [scope 267] [ngx_http_userid_create_uid]
!1734 = metadata !{metadata !1735}
!1735 = metadata !{metadata !1736, metadata !1737, metadata !1738, metadata !1739, metadata !1741, metadata !1756, metadata !1757, metadata !1761, metadata !1762, metadata !1764, metadata !1765, metadata !1767, metadata !1768, metadata !1770}
!1736 = metadata !{i32 786689, metadata !1733, metadata !"r", metadata !6, i32 16777482, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 266]
!1737 = metadata !{i32 786689, metadata !1733, metadata !"ctx", metadata !6, i32 33554698, metadata !1705, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx] [line 266]
!1738 = metadata !{i32 786689, metadata !1733, metadata !"conf", metadata !6, i32 50331914, metadata !481, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 266]
!1739 = metadata !{i32 786688, metadata !1740, metadata !"c", metadata !6, i32 268, metadata !204, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 268]
!1740 = metadata !{i32 786443, metadata !1733, i32 267, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1741 = metadata !{i32 786688, metadata !1740, metadata !"sin", metadata !6, i32 269, metadata !1742, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sin] [line 269]
!1742 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1743} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr_in]
!1743 = metadata !{i32 786451, null, metadata !"sockaddr_in", metadata !1744, i32 225, i64 128, i64 32, i32 0, i32 0, null, metadata !1745, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr_in] [line 225, size 128, align 32, offset 0] [from ]
!1744 = metadata !{i32 786473, metadata !"/usr/include/netinet/in.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1745 = metadata !{metadata !1746, metadata !1747, metadata !1748, metadata !1752}
!1746 = metadata !{i32 786445, metadata !1743, metadata !"sin_family", metadata !1744, i32 227, i64 16, i64 16, i64 0, i32 0, metadata !301} ; [ DW_TAG_member ] [sin_family] [line 227, size 16, align 16, offset 0] [from sa_family_t]
!1747 = metadata !{i32 786445, metadata !1743, metadata !"sin_port", metadata !1744, i32 228, i64 16, i64 16, i64 16, i32 0, metadata !989} ; [ DW_TAG_member ] [sin_port] [line 228, size 16, align 16, offset 16] [from in_port_t]
!1748 = metadata !{i32 786445, metadata !1743, metadata !"sin_addr", metadata !1744, i32 229, i64 32, i64 32, i64 32, i32 0, metadata !1749} ; [ DW_TAG_member ] [sin_addr] [line 229, size 32, align 32, offset 32] [from in_addr]
!1749 = metadata !{i32 786451, null, metadata !"in_addr", metadata !1744, i32 142, i64 32, i64 32, i32 0, i32 0, null, metadata !1750, i32 0, i32 0} ; [ DW_TAG_structure_type ] [in_addr] [line 142, size 32, align 32, offset 0] [from ]
!1750 = metadata !{metadata !1751}
!1751 = metadata !{i32 786445, metadata !1749, metadata !"s_addr", metadata !1744, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !1101} ; [ DW_TAG_member ] [s_addr] [line 144, size 32, align 32, offset 0] [from in_addr_t]
!1752 = metadata !{i32 786445, metadata !1743, metadata !"sin_zero", metadata !1744, i32 232, i64 64, i64 8, i64 64, i32 0, metadata !1753} ; [ DW_TAG_member ] [sin_zero] [line 232, size 64, align 8, offset 64] [from ]
!1753 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 8, i32 0, i32 0, metadata !40, metadata !1754, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from unsigned char]
!1754 = metadata !{metadata !1755}
!1755 = metadata !{i32 786465, i64 0, i64 7}      ; [ DW_TAG_subrange_type ] [0, 7]
!1756 = metadata !{i32 786688, metadata !1740, metadata !"vv", metadata !6, i32 270, metadata !1574, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vv] [line 270]
!1757 = metadata !{i32 786688, metadata !1758, metadata !"__v", metadata !6, i32 331, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__v] [line 331]
!1758 = metadata !{i32 786443, metadata !1759, i32 331, i32 0, metadata !6, i32 94} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1759 = metadata !{i32 786443, metadata !1760, i32 330, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1760 = metadata !{i32 786443, metadata !1740, i32 312, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1761 = metadata !{i32 786688, metadata !1758, metadata !"__x", metadata !6, i32 331, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__x] [line 331]
!1762 = metadata !{i32 786688, metadata !1763, metadata !"__v", metadata !6, i32 333, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__v] [line 333]
!1763 = metadata !{i32 786443, metadata !1760, i32 333, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1764 = metadata !{i32 786688, metadata !1763, metadata !"__x", metadata !6, i32 333, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__x] [line 333]
!1765 = metadata !{i32 786688, metadata !1766, metadata !"__v", metadata !6, i32 334, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__v] [line 334]
!1766 = metadata !{i32 786443, metadata !1760, i32 334, i32 0, metadata !6, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1767 = metadata !{i32 786688, metadata !1766, metadata !"__x", metadata !6, i32 334, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__x] [line 334]
!1768 = metadata !{i32 786688, metadata !1769, metadata !"__v", metadata !6, i32 335, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__v] [line 335]
!1769 = metadata !{i32 786443, metadata !1760, i32 335, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1770 = metadata !{i32 786688, metadata !1769, metadata !"__x", metadata !6, i32 335, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__x] [line 335]
!1771 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_get_uid", metadata !"ngx_http_userid_get_uid", metadata !"", metadata !6, i32 141, metadata !1772, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ngx_http_userid_ctx_t* (%struct.ngx_http_request_s*, %struct.ngx_http_userid_conf_t*)* @ngx_http_userid_get_uid, null, null, metadata !1774, i32 142} ; [ DW_TAG_subprogram ] [line 141] [local] [def] [scope 142] [ngx_http_userid_get_uid]
!1772 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1773, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1773 = metadata !{metadata !1705, metadata !593, metadata !481}
!1774 = metadata !{metadata !1775}
!1775 = metadata !{metadata !1776, metadata !1777, metadata !1778, metadata !1780, metadata !1781, metadata !1782, metadata !1784}
!1776 = metadata !{i32 786689, metadata !1771, metadata !"r", metadata !6, i32 16777357, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 141]
!1777 = metadata !{i32 786689, metadata !1771, metadata !"conf", metadata !6, i32 33554573, metadata !481, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 141]
!1778 = metadata !{i32 786688, metadata !1779, metadata !"n", metadata !6, i32 143, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 143]
!1779 = metadata !{i32 786443, metadata !1771, i32 142, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1780 = metadata !{i32 786688, metadata !1779, metadata !"src", metadata !6, i32 144, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 144]
!1781 = metadata !{i32 786688, metadata !1779, metadata !"dst", metadata !6, i32 145, metadata !84, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 145]
!1782 = metadata !{i32 786688, metadata !1779, metadata !"cookies", metadata !6, i32 146, metadata !1783, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cookies] [line 146]
!1783 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1062} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1784 = metadata !{i32 786688, metadata !1779, metadata !"ctx", metadata !6, i32 147, metadata !1705, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 147]
!1785 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_add_variables", metadata !"ngx_http_userid_add_variables", metadata !"", metadata !6, i32 364, metadata !585, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*)* @ngx_http_userid_add_variables, null, null, metadata !1786, i32 365} ; [ DW_TAG_subprogram ] [line 364] [local] [def] [scope 365] [ngx_http_userid_add_variables]
!1786 = metadata !{metadata !1787}
!1787 = metadata !{metadata !1788, metadata !1789, metadata !1791}
!1788 = metadata !{i32 786689, metadata !1785, metadata !"cf", metadata !6, i32 16777580, metadata !438, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 364]
!1789 = metadata !{i32 786688, metadata !1790, metadata !"n", metadata !6, i32 366, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 366]
!1790 = metadata !{i32 786443, metadata !1785, i32 365, i32 0, metadata !6, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1791 = metadata !{i32 786688, metadata !1790, metadata !"var", metadata !6, i32 367, metadata !1792, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 367]
!1792 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1793} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_t]
!1793 = metadata !{i32 786454, null, metadata !"ngx_http_variable_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1794} ; [ DW_TAG_typedef ] [ngx_http_variable_t] [line 21, size 0, align 0, offset 0] [from ngx_http_variable_s]
!1794 = metadata !{i32 786451, null, metadata !"ngx_http_variable_s", metadata !1375, i32 35, i64 224, i64 32, i32 0, i32 0, null, metadata !1795, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_variable_s] [line 35, size 224, align 32, offset 0] [from ]
!1795 = metadata !{metadata !1796, metadata !1797, metadata !1802, metadata !1807, metadata !1808, metadata !1809}
!1796 = metadata !{i32 786445, metadata !1794, metadata !"name", metadata !1375, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!1797 = metadata !{i32 786445, metadata !1794, metadata !"set_handler", metadata !1375, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !1798} ; [ DW_TAG_member ] [set_handler] [line 37, size 32, align 32, offset 64] [from ngx_http_set_variable_pt]
!1798 = metadata !{i32 786454, null, metadata !"ngx_http_set_variable_pt", metadata !1375, i32 23, i64 0, i64 0, i64 0, i32 0, metadata !1799} ; [ DW_TAG_typedef ] [ngx_http_set_variable_pt] [line 23, size 0, align 0, offset 0] [from ]
!1799 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1800} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1800 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1801, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1801 = metadata !{null, metadata !593, metadata !1574, metadata !47}
!1802 = metadata !{i32 786445, metadata !1794, metadata !"get_handler", metadata !1375, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !1803} ; [ DW_TAG_member ] [get_handler] [line 38, size 32, align 32, offset 96] [from ngx_http_get_variable_pt]
!1803 = metadata !{i32 786454, null, metadata !"ngx_http_get_variable_pt", metadata !1375, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !1804} ; [ DW_TAG_typedef ] [ngx_http_get_variable_pt] [line 25, size 0, align 0, offset 0] [from ]
!1804 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1805} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1806 = metadata !{metadata !9, metadata !593, metadata !1574, metadata !47}
!1807 = metadata !{i32 786445, metadata !1794, metadata !"data", metadata !1375, i32 39, i64 32, i64 32, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 128] [from uintptr_t]
!1808 = metadata !{i32 786445, metadata !1794, metadata !"flags", metadata !1375, i32 40, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [flags] [line 40, size 32, align 32, offset 160] [from ngx_uint_t]
!1809 = metadata !{i32 786445, metadata !1794, metadata !"index", metadata !1375, i32 41, i64 32, i64 32, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [index] [line 41, size 32, align 32, offset 192] [from ngx_uint_t]
!1810 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_reset_variable", metadata !"ngx_http_userid_reset_variable", metadata !"", metadata !6, i32 358, metadata !1805, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_userid_reset_variable, null, null, metadata !1811, i32 359} ; [ DW_TAG_subprogram ] [line 358] [local] [def] [scope 359] [ngx_http_userid_reset_variable]
!1811 = metadata !{metadata !1812}
!1812 = metadata !{metadata !1813, metadata !1814, metadata !1815}
!1813 = metadata !{i32 786689, metadata !1810, metadata !"r", metadata !6, i32 16777574, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 358]
!1814 = metadata !{i32 786689, metadata !1810, metadata !"v", metadata !6, i32 33554790, metadata !1574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 358]
!1815 = metadata !{i32 786689, metadata !1810, metadata !"data", metadata !6, i32 50332006, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 358]
!1816 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_set_variable", metadata !"ngx_http_userid_set_variable", metadata !"", metadata !6, i32 118, metadata !1805, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_userid_set_variable, null, null, metadata !1817, i32 119} ; [ DW_TAG_subprogram ] [line 118] [local] [def] [scope 119] [ngx_http_userid_set_variable]
!1817 = metadata !{metadata !1818}
!1818 = metadata !{metadata !1819, metadata !1820, metadata !1821, metadata !1822, metadata !1824}
!1819 = metadata !{i32 786689, metadata !1816, metadata !"r", metadata !6, i32 16777334, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 118]
!1820 = metadata !{i32 786689, metadata !1816, metadata !"v", metadata !6, i32 33554550, metadata !1574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 118]
!1821 = metadata !{i32 786689, metadata !1816, metadata !"data", metadata !6, i32 50331766, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 118]
!1822 = metadata !{i32 786688, metadata !1823, metadata !"ctx", metadata !6, i32 120, metadata !1705, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 120]
!1823 = metadata !{i32 786443, metadata !1816, i32 119, i32 0, metadata !6, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1824 = metadata !{i32 786688, metadata !1823, metadata !"conf", metadata !6, i32 121, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 121]
!1825 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_variable", metadata !"ngx_http_userid_variable", metadata !"", metadata !6, i32 344, metadata !1826, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, %struct.ngx_str_t*, i32*)* @ngx_http_userid_variable, null, null, metadata !1829, i32 345} ; [ DW_TAG_subprogram ] [line 344] [local] [def] [scope 345] [ngx_http_userid_variable]
!1826 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1827, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1827 = metadata !{metadata !9, metadata !593, metadata !1574, metadata !495, metadata !1828}
!1828 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !599} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uint32_t]
!1829 = metadata !{metadata !1830}
!1830 = metadata !{metadata !1831, metadata !1832, metadata !1833, metadata !1834}
!1831 = metadata !{i32 786689, metadata !1825, metadata !"r", metadata !6, i32 16777560, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 344]
!1832 = metadata !{i32 786689, metadata !1825, metadata !"v", metadata !6, i32 33554776, metadata !1574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 344]
!1833 = metadata !{i32 786689, metadata !1825, metadata !"name", metadata !6, i32 50331992, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 344]
!1834 = metadata !{i32 786689, metadata !1825, metadata !"uid", metadata !6, i32 67109208, metadata !1828, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uid] [line 344]
!1835 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_userid_got_variable", metadata !"ngx_http_userid_got_variable", metadata !"", metadata !6, i32 98, metadata !1805, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_userid_got_variable, null, null, metadata !1836, i32 99} ; [ DW_TAG_subprogram ] [line 98] [local] [def] [scope 99] [ngx_http_userid_got_variable]
!1836 = metadata !{metadata !1837}
!1837 = metadata !{metadata !1838, metadata !1839, metadata !1840, metadata !1841, metadata !1843}
!1838 = metadata !{i32 786689, metadata !1835, metadata !"r", metadata !6, i32 16777314, metadata !593, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 98]
!1839 = metadata !{i32 786689, metadata !1835, metadata !"v", metadata !6, i32 33554530, metadata !1574, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 98]
!1840 = metadata !{i32 786689, metadata !1835, metadata !"data", metadata !6, i32 50331746, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 98]
!1841 = metadata !{i32 786688, metadata !1842, metadata !"ctx", metadata !6, i32 100, metadata !1705, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 100]
!1842 = metadata !{i32 786443, metadata !1835, i32 99, i32 0, metadata !6, i32 119} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1843 = metadata !{i32 786688, metadata !1842, metadata !"conf", metadata !6, i32 101, metadata !481, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 101]
!1844 = metadata !{metadata !1845}
!1845 = metadata !{metadata !1846, metadata !1882, metadata !1883, metadata !1887, metadata !1890, metadata !1891, metadata !1892, metadata !1901, metadata !1918, metadata !1922, metadata !1923, metadata !1924, metadata !1925, metadata !1927, metadata !1928, metadata !1929}
!1846 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_filter_module", metadata !"ngx_http_userid_filter_module", metadata !"", metadata !6, i32 61, metadata !1847, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_userid_filter_module} ; [ DW_TAG_variable ] [ngx_http_userid_filter_module] [line 61] [def]
!1847 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1848} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1848 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !10, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1849, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1849 = metadata !{metadata !1850, metadata !1851, metadata !1852, metadata !1853, metadata !1854, metadata !1855, metadata !1856, metadata !1857, metadata !1858, metadata !1859, metadata !1860, metadata !1864, metadata !1866, metadata !1867, metadata !1868, metadata !1872, metadata !1873, metadata !1874, metadata !1875, metadata !1876, metadata !1877, metadata !1878, metadata !1879, metadata !1880, metadata !1881}
!1850 = metadata !{i32 786445, metadata !1848, metadata !"ctx_index", metadata !10, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !46} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1851 = metadata !{i32 786445, metadata !1848, metadata !"index", metadata !10, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !46} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1852 = metadata !{i32 786445, metadata !1848, metadata !"spare0", metadata !10, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1853 = metadata !{i32 786445, metadata !1848, metadata !"spare1", metadata !10, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !46} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1854 = metadata !{i32 786445, metadata !1848, metadata !"spare2", metadata !10, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1855 = metadata !{i32 786445, metadata !1848, metadata !"spare3", metadata !10, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !46} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1856 = metadata !{i32 786445, metadata !1848, metadata !"version", metadata !10, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !46} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1857 = metadata !{i32 786445, metadata !1848, metadata !"ctx", metadata !10, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !23} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1858 = metadata !{i32 786445, metadata !1848, metadata !"commands", metadata !10, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !464} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1859 = metadata !{i32 786445, metadata !1848, metadata !"type", metadata !10, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !46} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1860 = metadata !{i32 786445, metadata !1848, metadata !"init_master", metadata !10, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1861} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1861 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1862} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1862 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1863, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1863 = metadata !{metadata !9, metadata !133}
!1864 = metadata !{i32 786445, metadata !1848, metadata !"init_module", metadata !10, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1865} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1865 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !7} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1866 = metadata !{i32 786445, metadata !1848, metadata !"init_process", metadata !10, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1865} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1867 = metadata !{i32 786445, metadata !1848, metadata !"init_thread", metadata !10, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1865} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1868 = metadata !{i32 786445, metadata !1848, metadata !"exit_thread", metadata !10, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1869} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1869 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1870} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1870 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1871, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1871 = metadata !{null, metadata !14}
!1872 = metadata !{i32 786445, metadata !1848, metadata !"exit_process", metadata !10, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1869} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1873 = metadata !{i32 786445, metadata !1848, metadata !"exit_master", metadata !10, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1869} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1874 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook0", metadata !10, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1875 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook1", metadata !10, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1876 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook2", metadata !10, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1877 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook3", metadata !10, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1878 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook4", metadata !10, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1879 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook5", metadata !10, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1880 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook6", metadata !10, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1881 = metadata !{i32 786445, metadata !1848, metadata !"spare_hook7", metadata !10, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !47} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1882 = metadata !{i32 786484, i32 0, null, metadata !"start_value", metadata !"start_value", metadata !"", metadata !6, i32 42, metadata !599, i32 1, i32 1, i32* @start_value} ; [ DW_TAG_variable ] [start_value] [line 42] [local] [def]
!1883 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_commands", metadata !"ngx_http_userid_commands", metadata !"", metadata !6, i32 51, metadata !1884, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_userid_commands} ; [ DW_TAG_variable ] [ngx_http_userid_commands] [line 51] [local] [def]
!1884 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2016, i64 32, i32 0, i32 0, metadata !465, metadata !1885, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2016, align 32, offset 0] [from ngx_command_t]
!1885 = metadata !{metadata !1886}
!1886 = metadata !{i32 786465, i64 0, i64 8}      ; [ DW_TAG_subrange_type ] [0, 8]
!1887 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_p3p_p", metadata !"ngx_http_userid_p3p_p", metadata !"", metadata !6, i32 50, metadata !1888, i32 1, i32 1, i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_userid_p3p_p} ; [ DW_TAG_variable ] [ngx_http_userid_p3p_p] [line 50] [local] [def]
!1888 = metadata !{i32 786454, null, metadata !"ngx_conf_post_handler_pt", metadata !6, i32 185, i64 0, i64 0, i64 0, i32 0, metadata !1889} ; [ DW_TAG_typedef ] [ngx_conf_post_handler_pt] [line 185, size 0, align 0, offset 0] [from ]
!1889 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !505} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1890 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_path_p", metadata !"ngx_http_userid_path_p", metadata !"", metadata !6, i32 49, metadata !1888, i32 1, i32 1, i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_userid_path_p} ; [ DW_TAG_variable ] [ngx_http_userid_path_p] [line 49] [local] [def]
!1891 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_domain_p", metadata !"ngx_http_userid_domain_p", metadata !"", metadata !6, i32 48, metadata !1888, i32 1, i32 1, i8* (%struct.ngx_conf_s*, i8*, i8*)** @ngx_http_userid_domain_p} ; [ DW_TAG_variable ] [ngx_http_userid_domain_p] [line 48] [local] [def]
!1892 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_state", metadata !"ngx_http_userid_state", metadata !"", metadata !6, i32 47, metadata !1893, i32 1, i32 1, [5 x %struct.ngx_conf_enum_t]* @ngx_http_userid_state} ; [ DW_TAG_variable ] [ngx_http_userid_state] [line 47] [local] [def]
!1893 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 480, i64 32, i32 0, i32 0, metadata !1894, metadata !1899, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 480, align 32, offset 0] [from ngx_conf_enum_t]
!1894 = metadata !{i32 786454, null, metadata !"ngx_conf_enum_t", metadata !6, i32 210, i64 0, i64 0, i64 0, i32 0, metadata !1895} ; [ DW_TAG_typedef ] [ngx_conf_enum_t] [line 210, size 0, align 0, offset 0] [from ]
!1895 = metadata !{i32 786451, null, metadata !"", metadata !10, i32 207, i64 96, i64 32, i32 0, i32 0, null, metadata !1896, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 207, size 96, align 32, offset 0] [from ]
!1896 = metadata !{metadata !1897, metadata !1898}
!1897 = metadata !{i32 786445, metadata !1895, metadata !"name", metadata !10, i32 208, i64 64, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [name] [line 208, size 64, align 32, offset 0] [from ngx_str_t]
!1898 = metadata !{i32 786445, metadata !1895, metadata !"value", metadata !10, i32 209, i64 32, i64 32, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [value] [line 209, size 32, align 32, offset 64] [from ngx_uint_t]
!1899 = metadata !{metadata !1900}
!1900 = metadata !{i32 786465, i64 0, i64 4}      ; [ DW_TAG_subrange_type ] [0, 4]
!1901 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_filter_module_ctx", metadata !"ngx_http_userid_filter_module_ctx", metadata !"", metadata !6, i32 52, metadata !1902, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_userid_filter_module_ctx} ; [ DW_TAG_variable ] [ngx_http_userid_filter_module_ctx] [line 52] [local] [def]
!1902 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1903} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1903 = metadata !{i32 786451, null, metadata !"", metadata !1423, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1904, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1904 = metadata !{metadata !1905, metadata !1907, metadata !1908, metadata !1910, metadata !1914, metadata !1915, metadata !1916, metadata !1917}
!1905 = metadata !{i32 786445, metadata !1903, metadata !"preconfiguration", metadata !1423, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1906} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1906 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !585} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1907 = metadata !{i32 786445, metadata !1903, metadata !"postconfiguration", metadata !1423, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1906} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1908 = metadata !{i32 786445, metadata !1903, metadata !"create_main_conf", metadata !1423, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1909} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1909 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !577} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1910 = metadata !{i32 786445, metadata !1903, metadata !"init_main_conf", metadata !1423, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1911} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1911 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1912} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1912 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1913, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1913 = metadata !{metadata !160, metadata !438, metadata !23}
!1914 = metadata !{i32 786445, metadata !1903, metadata !"create_srv_conf", metadata !1423, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1909} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1915 = metadata !{i32 786445, metadata !1903, metadata !"merge_srv_conf", metadata !1423, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1889} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1916 = metadata !{i32 786445, metadata !1903, metadata !"create_loc_conf", metadata !1423, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1909} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1917 = metadata !{i32 786445, metadata !1903, metadata !"merge_loc_conf", metadata !1423, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1889} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1918 = metadata !{i32 786484, i32 0, null, metadata !"expires", metadata !"expires", metadata !"", metadata !6, i32 45, metadata !1919, i32 1, i32 1, [38 x i8]* @expires} ; [ DW_TAG_variable ] [expires] [line 45] [local] [def]
!1919 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 304, i64 8, i32 0, i32 0, metadata !37, metadata !1920, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 304, align 8, offset 0] [from u_char]
!1920 = metadata !{metadata !1921}
!1921 = metadata !{i32 786465, i64 0, i64 37}     ; [ DW_TAG_subrange_type ] [0, 37]
!1922 = metadata !{i32 786484, i32 0, null, metadata !"sequencer_v2", metadata !"sequencer_v2", metadata !"", metadata !6, i32 44, metadata !599, i32 1, i32 1, i32* @sequencer_v2} ; [ DW_TAG_variable ] [sequencer_v2] [line 44] [local] [def]
!1923 = metadata !{i32 786484, i32 0, null, metadata !"sequencer_v1", metadata !"sequencer_v1", metadata !"", metadata !6, i32 43, metadata !599, i32 1, i32 1, i32* @sequencer_v1} ; [ DW_TAG_variable ] [sequencer_v1] [line 43] [local] [def]
!1924 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_reset_index", metadata !"ngx_http_userid_reset_index", metadata !"", metadata !6, i32 75, metadata !46, i32 1, i32 1, i32* @ngx_http_userid_reset_index} ; [ DW_TAG_variable ] [ngx_http_userid_reset_index] [line 75] [local] [def]
!1925 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_next_header_filter", metadata !"ngx_http_next_header_filter", metadata !"", metadata !6, i32 46, metadata !1926, i32 1, i32 1, i32 (%struct.ngx_http_request_s*)** @ngx_http_next_header_filter} ; [ DW_TAG_variable ] [ngx_http_next_header_filter] [line 46] [local] [def]
!1926 = metadata !{i32 786454, null, metadata !"ngx_http_output_header_filter_pt", metadata !6, i32 504, i64 0, i64 0, i64 0, i32 0, metadata !1178} ; [ DW_TAG_typedef ] [ngx_http_output_header_filter_pt] [line 504, size 0, align 0, offset 0] [from ]
!1927 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_reset", metadata !"ngx_http_userid_reset", metadata !"", metadata !6, i32 74, metadata !84, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_userid_reset} ; [ DW_TAG_variable ] [ngx_http_userid_reset] [line 74] [local] [def]
!1928 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_set", metadata !"ngx_http_userid_set", metadata !"", metadata !6, i32 73, metadata !84, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_userid_set} ; [ DW_TAG_variable ] [ngx_http_userid_set] [line 73] [local] [def]
!1929 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_userid_got", metadata !"ngx_http_userid_got", metadata !"", metadata !6, i32 72, metadata !84, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_userid_got} ; [ DW_TAG_variable ] [ngx_http_userid_got] [line 72] [local] [def]
!1930 = metadata !{i32 580, i32 0, metadata !5, null}
!1931 = metadata !{i32 582, i32 0, metadata !428, null}
!1932 = metadata !{i32 583, i32 0, metadata !428, null}
!1933 = metadata !{i32 586, i32 0, metadata !428, null}
!1934 = metadata !{metadata !"long", metadata !1935}
!1935 = metadata !{metadata !"omnipotent char", metadata !1936}
!1936 = metadata !{metadata !"Simple C/C++ TBAA"}
!1937 = metadata !{metadata !"int", metadata !1935}
!1938 = metadata !{i32 587, i32 0, metadata !428, null}
!1939 = metadata !{i32 528, i32 0, metadata !520, null}
!1940 = metadata !{i32 532, i32 0, metadata !527, null}
!1941 = metadata !{i32 535, i32 0, metadata !527, null}
!1942 = metadata !{metadata !"any pointer", metadata !1935}
!1943 = metadata !{i32 536, i32 0, metadata !530, null}
!1944 = metadata !{i32 536, i32 0, metadata !533, null}
!1945 = metadata !{i32 3}
!1946 = metadata !{i32 536, i32 0, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !533, i32 536, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1948 = metadata !{i32 536, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !1947, i32 536, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1950 = metadata !{i32 537, i32 0, metadata !1951, null}
!1951 = metadata !{i32 786443, metadata !527, i32 536, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1952 = metadata !{i32 538, i32 0, metadata !1951, null}
!1953 = metadata !{i32 540, i32 0, metadata !536, null}
!1954 = metadata !{i32 540, i32 0, metadata !539, null}
!1955 = metadata !{i32 540, i32 0, metadata !1956, null}
!1956 = metadata !{i32 786443, metadata !539, i32 540, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1957 = metadata !{i32 540, i32 0, metadata !1958, null}
!1958 = metadata !{i32 786443, metadata !1956, i32 540, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1959 = metadata !{i32 541, i32 0, metadata !1960, null}
!1960 = metadata !{i32 786443, metadata !527, i32 540, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1961 = metadata !{i32 542, i32 0, metadata !1960, null}
!1962 = metadata !{i32 544, i32 0, metadata !527, null}
!1963 = metadata !{i32 545, i32 0, metadata !527, null}
!1964 = metadata !{i32 549, i32 0, metadata !527, null}
!1965 = metadata !{i32 561, i32 0, metadata !435, null}
!1966 = metadata !{i32 565, i32 0, metadata !480, null}
!1967 = metadata !{i32 568, i32 0, metadata !480, null}
!1968 = metadata !{i32 569, i32 0, metadata !497, null}
!1969 = metadata !{i32 569, i32 0, metadata !500, null}
!1970 = metadata !{i32 569, i32 0, metadata !1971, null}
!1971 = metadata !{i32 786443, metadata !500, i32 569, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1972 = metadata !{i32 569, i32 0, metadata !1973, null}
!1973 = metadata !{i32 786443, metadata !1971, i32 569, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1974 = metadata !{i32 570, i32 0, metadata !1975, null}
!1975 = metadata !{i32 786443, metadata !480, i32 569, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1976 = metadata !{i32 571, i32 0, metadata !1975, null}
!1977 = metadata !{i32 573, i32 0, metadata !480, null}
!1978 = metadata !{i32 576, i32 0, metadata !480, null}
!1979 = metadata !{i32 577, i32 0, metadata !480, null}
!1980 = metadata !{i32 578, i32 0, metadata !480, null}
!1981 = metadata !{i32 551, i32 0, metadata !504, null}
!1982 = metadata !{i32 554, i32 0, metadata !515, null}
!1983 = metadata !{i32 554, i32 0, metadata !1984, null}
!1984 = metadata !{i32 786443, metadata !1985, i32 554, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1985 = metadata !{i32 786443, metadata !518, i32 554, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1986 = metadata !{i32 555, i32 0, metadata !1987, null}
!1987 = metadata !{i32 786443, metadata !513, i32 554, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!1988 = metadata !{i32 556, i32 0, metadata !1987, null}
!1989 = metadata !{i32 557, i32 0, metadata !1987, null}
!1990 = metadata !{i32 558, i32 0, metadata !513, null}
!1991 = metadata !{i32 512, i32 0, metadata !541, null}
!1992 = metadata !{i32 517, i32 0, metadata !548, null}
!1993 = metadata !{i32 518, i32 0, metadata !548, null}
!1994 = metadata !{i32 521, i32 0, metadata !548, null}
!1995 = metadata !{i32 522, i32 0, metadata !548, null}
!1996 = metadata !{i32 523, i32 0, metadata !548, null}
!1997 = metadata !{i32 524, i32 0, metadata !548, null}
!1998 = metadata !{i32 525, i32 0, metadata !548, null}
!1999 = metadata !{i32 526, i32 0, metadata !548, null}
!2000 = metadata !{i32 491, i32 0, metadata !551, null}
!2001 = metadata !{i32 496, i32 0, metadata !562, null}
!2002 = metadata !{i32 496, i32 0, metadata !2003, null}
!2003 = metadata !{i32 786443, metadata !2004, i32 496, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2004 = metadata !{i32 786443, metadata !565, i32 496, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2005 = metadata !{i32 497, i32 0, metadata !2006, null}
!2006 = metadata !{i32 786443, metadata !558, i32 496, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2007 = metadata !{i32 498, i32 0, metadata !2006, null}
!2008 = metadata !{i32 499, i32 0, metadata !2006, null}
!2009 = metadata !{i32 501, i32 0, metadata !558, null}
!2010 = metadata !{i32 502, i32 0, metadata !558, null}
!2011 = metadata !{i32 505, i32 0, metadata !558, null}
!2012 = metadata !{i32 506, i32 0, metadata !558, null}
!2013 = metadata !{i32 507, i32 0, metadata !558, null}
!2014 = metadata !{i32 508, i32 0, metadata !558, null}
!2015 = metadata !{i32 509, i32 0, metadata !558, null}
!2016 = metadata !{i32 510, i32 0, metadata !558, null}
!2017 = metadata !{i32 364, i32 0, metadata !1785, null}
!2018 = metadata !{i32 368, i32 0, metadata !1790, null}
!2019 = metadata !{i32 369, i32 0, metadata !1790, null}
!2020 = metadata !{i32 372, i32 0, metadata !1790, null}
!2021 = metadata !{i32 373, i32 0, metadata !1790, null}
!2022 = metadata !{i32 374, i32 0, metadata !1790, null}
!2023 = metadata !{i32 377, i32 0, metadata !1790, null}
!2024 = metadata !{i32 378, i32 0, metadata !1790, null}
!2025 = metadata !{i32 379, i32 0, metadata !1790, null}
!2026 = metadata !{i32 382, i32 0, metadata !1790, null}
!2027 = metadata !{i32 383, i32 0, metadata !1790, null}
!2028 = metadata !{i32 384, i32 0, metadata !1790, null}
!2029 = metadata !{i32 387, i32 0, metadata !1790, null}
!2030 = metadata !{i32 388, i32 0, metadata !1790, null}
!2031 = metadata !{i32 389, i32 0, metadata !1790, null}
!2032 = metadata !{i32 484, i32 0, metadata !584, null}
!2033 = metadata !{i32 486, i32 0, metadata !2034, null}
!2034 = metadata !{i32 786443, metadata !584, i32 485, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2035 = metadata !{i32 487, i32 0, metadata !2034, null}
!2036 = metadata !{i32 488, i32 0, metadata !2034, null}
!2037 = metadata !{i32 391, i32 0, metadata !576, null}
!2038 = metadata !{i32 394, i32 0, metadata !583, null}
!2039 = metadata !{i32 395, i32 0, metadata !583, null}
!2040 = metadata !{i32 406, i32 0, metadata !583, null}
!2041 = metadata !{i32 407, i32 0, metadata !583, null}
!2042 = metadata !{i32 408, i32 0, metadata !583, null}
!2043 = metadata !{i32 409, i32 0, metadata !583, null}
!2044 = metadata !{i32 410, i32 0, metadata !583, null}
!2045 = metadata !{i32 411, i32 0, metadata !583, null}
!2046 = metadata !{i32 413, i32 0, metadata !567, null}
!2047 = metadata !{i32 417, i32 0, metadata !574, null}
!2048 = metadata !{i32 418, i32 0, metadata !2049, null}
!2049 = metadata !{i32 786443, metadata !574, i32 417, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2050 = metadata !{i32 419, i32 0, metadata !2049, null}
!2051 = metadata !{i32 421, i32 0, metadata !574, null}
!2052 = metadata !{i32 422, i32 0, metadata !2053, null}
!2053 = metadata !{i32 786443, metadata !574, i32 421, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2054 = metadata !{i32 423, i32 0, metadata !2055, null}
!2055 = metadata !{i32 786443, metadata !2053, i32 422, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2056 = metadata !{i32 424, i32 0, metadata !2055, null}
!2057 = metadata !{i32 425, i32 0, metadata !2055, null}
!2058 = metadata !{i32 427, i32 0, metadata !2059, null}
!2059 = metadata !{i32 786443, metadata !2053, i32 426, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2060 = metadata !{i32 428, i32 0, metadata !2059, null}
!2061 = metadata !{i32 432, i32 0, metadata !574, null}
!2062 = metadata !{i32 433, i32 0, metadata !2063, null}
!2063 = metadata !{i32 786443, metadata !574, i32 432, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2064 = metadata !{i32 434, i32 0, metadata !2065, null}
!2065 = metadata !{i32 786443, metadata !2063, i32 433, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2066 = metadata !{i32 435, i32 0, metadata !2065, null}
!2067 = metadata !{i32 436, i32 0, metadata !2065, null}
!2068 = metadata !{i32 438, i32 0, metadata !2069, null}
!2069 = metadata !{i32 786443, metadata !2063, i32 437, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2070 = metadata !{i32 439, i32 0, metadata !2069, null}
!2071 = metadata !{i32 443, i32 0, metadata !574, null}
!2072 = metadata !{i32 444, i32 0, metadata !2073, null}
!2073 = metadata !{i32 786443, metadata !574, i32 443, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2074 = metadata !{i32 445, i32 0, metadata !2075, null}
!2075 = metadata !{i32 786443, metadata !2073, i32 444, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2076 = metadata !{i32 446, i32 0, metadata !2075, null}
!2077 = metadata !{i32 447, i32 0, metadata !2075, null}
!2078 = metadata !{i32 449, i32 0, metadata !2079, null}
!2079 = metadata !{i32 786443, metadata !2073, i32 448, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2080 = metadata !{i32 450, i32 0, metadata !2079, null}
!2081 = metadata !{i32 454, i32 0, metadata !574, null}
!2082 = metadata !{i32 455, i32 0, metadata !2083, null}
!2083 = metadata !{i32 786443, metadata !574, i32 454, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2084 = metadata !{i32 456, i32 0, metadata !2085, null}
!2085 = metadata !{i32 786443, metadata !2083, i32 455, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2086 = metadata !{i32 457, i32 0, metadata !2085, null}
!2087 = metadata !{i32 458, i32 0, metadata !2085, null}
!2088 = metadata !{i32 460, i32 0, metadata !2089, null}
!2089 = metadata !{i32 786443, metadata !2083, i32 459, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2090 = metadata !{i32 461, i32 0, metadata !2089, null}
!2091 = metadata !{i32 465, i32 0, metadata !574, null}
!2092 = metadata !{i32 466, i32 0, metadata !2093, null}
!2093 = metadata !{i32 786443, metadata !574, i32 465, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2094 = metadata !{i32 467, i32 0, metadata !2093, null}
!2095 = metadata !{i32 469, i32 0, metadata !574, null}
!2096 = metadata !{i32 470, i32 0, metadata !2097, null}
!2097 = metadata !{i32 786443, metadata !574, i32 469, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2098 = metadata !{i32 471, i32 0, metadata !2097, null}
!2099 = metadata !{i32 473, i32 0, metadata !574, null}
!2100 = metadata !{i32 474, i32 0, metadata !2101, null}
!2101 = metadata !{i32 786443, metadata !574, i32 473, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2102 = metadata !{i32 475, i32 0, metadata !2103, null}
!2103 = metadata !{i32 786443, metadata !2101, i32 474, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2104 = metadata !{i32 476, i32 0, metadata !2103, null}
!2105 = metadata !{i32 478, i32 0, metadata !2106, null}
!2106 = metadata !{i32 786443, metadata !2101, i32 477, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2107 = metadata !{i32 481, i32 0, metadata !574, null}
!2108 = metadata !{i32 77, i32 0, metadata !590, null}
!2109 = metadata !{i32 81, i32 0, metadata !1704, null}
!2110 = metadata !{i32 82, i32 0, metadata !2111, null}
!2111 = metadata !{i32 786443, metadata !1704, i32 81, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2112 = metadata !{i32 84, i32 0, metadata !1704, null}
!2113 = metadata !{i32 85, i32 0, metadata !1704, null}
!2114 = metadata !{i32 86, i32 0, metadata !2115, null}
!2115 = metadata !{i32 786443, metadata !1704, i32 85, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2116 = metadata !{i32 88, i32 0, metadata !1704, null}
!2117 = metadata !{i32 89, i32 0, metadata !1704, null}
!2118 = metadata !{i32 190, i32 0, metadata !1717, metadata !2119}
!2119 = metadata !{i32 92, i32 0, metadata !1704, null}
!2120 = metadata !{i32 786689, metadata !1717, metadata !"r", metadata !6, i32 16777406, metadata !593, i32 0, metadata !2119} ; [ DW_TAG_arg_variable ] [r] [line 190]
!2121 = metadata !{i32 786689, metadata !1717, metadata !"ctx", metadata !6, i32 33554622, metadata !1705, i32 0, metadata !2119} ; [ DW_TAG_arg_variable ] [ctx] [line 190]
!2122 = metadata !{i32 786689, metadata !1717, metadata !"conf", metadata !6, i32 50331838, metadata !481, i32 0, metadata !2119} ; [ DW_TAG_arg_variable ] [conf] [line 190]
!2123 = metadata !{i32 195, i32 0, metadata !1726, metadata !2119}
!2124 = metadata !{i32 196, i32 0, metadata !1726, metadata !2119}
!2125 = metadata !{i32 199, i32 0, metadata !1726, metadata !2119}
!2126 = metadata !{i32 202, i32 0, metadata !1726, metadata !2119}
!2127 = metadata !{i32 205, i32 0, metadata !1726, metadata !2119}
!2128 = metadata !{i32 786688, metadata !1726, metadata !"len", metadata !6, i32 194, metadata !50, i32 0, metadata !2119} ; [ DW_TAG_auto_variable ] [len] [line 194]
!2129 = metadata !{i32 206, i32 0, metadata !1726, metadata !2119}
!2130 = metadata !{i32 207, i32 0, metadata !2131, metadata !2119}
!2131 = metadata !{i32 786443, metadata !1726, i32 206, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2132 = metadata !{i32 209, i32 0, metadata !1726, metadata !2119}
!2133 = metadata !{i32 210, i32 0, metadata !2134, metadata !2119}
!2134 = metadata !{i32 786443, metadata !1726, i32 209, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2135 = metadata !{i32 212, i32 0, metadata !1726, metadata !2119}
!2136 = metadata !{i32 786688, metadata !1726, metadata !"cookie", metadata !6, i32 192, metadata !36, i32 0, metadata !2119} ; [ DW_TAG_auto_variable ] [cookie] [line 192]
!2137 = metadata !{i32 213, i32 0, metadata !1726, metadata !2119}
!2138 = metadata !{i32 216, i32 0, metadata !1726, metadata !2119}
!2139 = metadata !{i32 217, i32 0, metadata !1726, metadata !2119}
!2140 = metadata !{i32 786688, metadata !1726, metadata !"p", metadata !6, i32 193, metadata !36, i32 0, metadata !2119} ; [ DW_TAG_auto_variable ] [p] [line 193]
!2141 = metadata !{i32 218, i32 0, metadata !1726, metadata !2119}
!2142 = metadata !{i32 219, i32 0, metadata !2143, metadata !2119}
!2143 = metadata !{i32 786443, metadata !1726, i32 218, i32 0, metadata !6, i32 70} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2144 = metadata !{i32 220, i32 0, metadata !2143, metadata !2119}
!2145 = metadata !{i32 221, i32 0, metadata !2143, metadata !2119}
!2146 = metadata !{i32 222, i32 0, metadata !2143, metadata !2119}
!2147 = metadata !{i32 223, i32 0, metadata !2143, metadata !2119}
!2148 = metadata !{i32 224, i32 0, metadata !2143, metadata !2119}
!2149 = metadata !{i32 225, i32 0, metadata !2150, metadata !2119}
!2150 = metadata !{i32 786443, metadata !2143, i32 224, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2151 = metadata !{i32 226, i32 0, metadata !2150, metadata !2119}
!2152 = metadata !{i32 229, i32 0, metadata !2153, metadata !2119}
!2153 = metadata !{i32 786443, metadata !1726, i32 228, i32 0, metadata !6, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2154 = metadata !{i32 230, i32 0, metadata !2153, metadata !2119}
!2155 = metadata !{i32 231, i32 0, metadata !2153, metadata !2119}
!2156 = metadata !{i32 233, i32 0, metadata !1726, metadata !2119}
!2157 = metadata !{i32 234, i32 0, metadata !2158, metadata !2119}
!2158 = metadata !{i32 786443, metadata !1726, i32 233, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2159 = metadata !{i32 235, i32 0, metadata !2158, metadata !2119}
!2160 = metadata !{i32 237, i32 0, metadata !2161, metadata !2119}
!2161 = metadata !{i32 786443, metadata !1726, i32 236, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2162 = metadata !{i32 238, i32 0, metadata !2161, metadata !2119}
!2163 = metadata !{i32 239, i32 0, metadata !2161, metadata !2119}
!2164 = metadata !{i32 240, i32 0, metadata !1726, metadata !2119}
!2165 = metadata !{i32 241, i32 0, metadata !1726, metadata !2119}
!2166 = metadata !{i32 242, i32 0, metadata !1726, metadata !2119}
!2167 = metadata !{i32 243, i32 0, metadata !1726, metadata !2119}
!2168 = metadata !{i32 246, i32 0, metadata !1726, metadata !2119}
!2169 = metadata !{i32 247, i32 0, metadata !1726, metadata !2119}
!2170 = metadata !{i32 248, i32 0, metadata !1726, metadata !2119}
!2171 = metadata !{i32 249, i32 0, metadata !1726, metadata !2119}
!2172 = metadata !{i32 250, i32 0, metadata !1726, metadata !2119}
!2173 = metadata !{i32 252, i32 0, metadata !1726, metadata !2119}
!2174 = metadata !{i32 255, i32 0, metadata !1726, metadata !2119}
!2175 = metadata !{i32 256, i32 0, metadata !1726, metadata !2119}
!2176 = metadata !{i32 259, i32 0, metadata !1726, metadata !2119}
!2177 = metadata !{i32 260, i32 0, metadata !1726, metadata !2119}
!2178 = metadata !{i32 261, i32 0, metadata !1726, metadata !2119}
!2179 = metadata !{i32 262, i32 0, metadata !1726, metadata !2119}
!2180 = metadata !{i32 263, i32 0, metadata !1726, metadata !2119}
!2181 = metadata !{i32 264, i32 0, metadata !1726, metadata !2119}
!2182 = metadata !{i32 93, i32 0, metadata !2183, null}
!2183 = metadata !{i32 786443, metadata !1704, i32 92, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2184 = metadata !{i32 96, i32 0, metadata !1704, null}
!2185 = metadata !{i32 141, i32 0, metadata !1771, null}
!2186 = metadata !{i32 144, i32 0, metadata !1779, null}
!2187 = metadata !{i32 145, i32 0, metadata !1779, null}
!2188 = metadata !{i32 148, i32 0, metadata !1779, null}
!2189 = metadata !{i32 149, i32 0, metadata !1779, null}
!2190 = metadata !{i32 153, i32 0, metadata !2191, null}
!2191 = metadata !{i32 786443, metadata !1779, i32 152, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2192 = metadata !{i32 154, i32 0, metadata !2191, null}
!2193 = metadata !{i32 157, i32 0, metadata !2191, null}
!2194 = metadata !{i32 160, i32 0, metadata !1779, null}
!2195 = metadata !{i32 161, i32 0, metadata !1779, null}
!2196 = metadata !{i32 165, i32 0, metadata !1779, null}
!2197 = metadata !{i32 166, i32 0, metadata !2198, null}
!2198 = metadata !{i32 786443, metadata !1779, i32 165, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2199 = metadata !{i32 167, i32 0, metadata !2198, null}
!2200 = metadata !{i32 168, i32 0, metadata !2198, null}
!2201 = metadata !{i32 171, i32 0, metadata !1779, null}
!2202 = metadata !{i32 178, i32 0, metadata !1779, null}
!2203 = metadata !{i32 179, i32 0, metadata !1779, null}
!2204 = metadata !{i32 180, i32 0, metadata !1779, null}
!2205 = metadata !{i32 181, i32 0, metadata !2206, null}
!2206 = metadata !{i32 786443, metadata !1779, i32 180, i32 0, metadata !6, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2207 = metadata !{i32 182, i32 0, metadata !2206, null}
!2208 = metadata !{i32 183, i32 0, metadata !2206, null}
!2209 = metadata !{i32 188, i32 0, metadata !1779, null}
!2210 = metadata !{i32 266, i32 0, metadata !1733, null}
!2211 = metadata !{i32 273, i32 0, metadata !1740, null}
!2212 = metadata !{i32 276, i32 0, metadata !1740, null}
!2213 = metadata !{i32 277, i32 0, metadata !2214, null}
!2214 = metadata !{i32 786443, metadata !1740, i32 276, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2215 = metadata !{i32 278, i32 0, metadata !2214, null}
!2216 = metadata !{i32 279, i32 0, metadata !2217, null}
!2217 = metadata !{i32 786443, metadata !2214, i32 278, i32 0, metadata !6, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2218 = metadata !{i32 282, i32 0, metadata !2217, null}
!2219 = metadata !{i32 283, i32 0, metadata !2217, null}
!2220 = metadata !{i32 284, i32 0, metadata !2217, null}
!2221 = metadata !{i32 285, i32 0, metadata !2217, null}
!2222 = metadata !{i32 286, i32 0, metadata !2217, null}
!2223 = metadata !{i32 289, i32 0, metadata !2224, null}
!2224 = metadata !{i32 786443, metadata !2214, i32 288, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2225 = metadata !{i32 290, i32 0, metadata !2224, null}
!2226 = metadata !{i32 291, i32 0, metadata !2227, null}
!2227 = metadata !{i32 786443, metadata !2224, i32 290, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2228 = metadata !{i32 292, i32 0, metadata !2227, null}
!2229 = metadata !{i32 300, i32 0, metadata !1740, null}
!2230 = metadata !{i32 301, i32 0, metadata !2231, null}
!2231 = metadata !{i32 786443, metadata !1740, i32 300, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2232 = metadata !{i32 302, i32 0, metadata !2233, null}
!2233 = metadata !{i32 786443, metadata !2231, i32 301, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2234 = metadata !{i32 303, i32 0, metadata !2233, null}
!2235 = metadata !{i32 305, i32 0, metadata !2236, null}
!2236 = metadata !{i32 786443, metadata !2231, i32 304, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2237 = metadata !{i32 307, i32 0, metadata !2231, null}
!2238 = metadata !{i32 308, i32 0, metadata !2231, null}
!2239 = metadata !{i32 309, i32 0, metadata !2231, null}
!2240 = metadata !{i32 310, i32 0, metadata !2231, null}
!2241 = metadata !{i32 311, i32 0, metadata !2231, null}
!2242 = metadata !{i32 313, i32 0, metadata !1760, null}
!2243 = metadata !{i32 314, i32 0, metadata !2244, null}
!2244 = metadata !{i32 786443, metadata !1760, i32 313, i32 0, metadata !6, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2245 = metadata !{i32 315, i32 0, metadata !2244, null}
!2246 = metadata !{i32 324, i32 0, metadata !2247, null}
!2247 = metadata !{i32 786443, metadata !2248, i32 320, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2248 = metadata !{i32 786443, metadata !2244, i32 318, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2249 = metadata !{i32 325, i32 0, metadata !2247, null}
!2250 = metadata !{i32 329, i32 0, metadata !2244, null}
!2251 = metadata !{i32 331, i32 0, metadata !1758, null}
!2252 = metadata !{i32 -2145927441}               
!2253 = metadata !{i32 333, i32 0, metadata !1763, null}
!2254 = metadata !{i32 -2145926950}               
!2255 = metadata !{i32 334, i32 0, metadata !1766, null}
!2256 = metadata !{i32 -2145926465}               
!2257 = metadata !{i32 335, i32 0, metadata !1769, null}
!2258 = metadata !{i32 -2145926005}               
!2259 = metadata !{i32 336, i32 0, metadata !1760, null}
!2260 = metadata !{i32 337, i32 0, metadata !1760, null}
!2261 = metadata !{i32 338, i32 0, metadata !2262, null}
!2262 = metadata !{i32 786443, metadata !1760, i32 337, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2263 = metadata !{i32 339, i32 0, metadata !2262, null}
!2264 = metadata !{i32 342, i32 0, metadata !1740, null}
!2265 = metadata !{i32 98, i32 0, metadata !1835, null}
!2266 = metadata !{i32 102, i32 0, metadata !1842, null}
!2267 = metadata !{i32 103, i32 0, metadata !1842, null}
!2268 = metadata !{i32 104, i32 0, metadata !2269, null}
!2269 = metadata !{i32 786443, metadata !1842, i32 103, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2270 = metadata !{i32 105, i32 0, metadata !2269, null}
!2271 = metadata !{i32 107, i32 0, metadata !1842, null}
!2272 = metadata !{i32 108, i32 0, metadata !1842, null}
!2273 = metadata !{i32 111, i32 0, metadata !1842, null}
!2274 = metadata !{i32 112, i32 0, metadata !2275, null}
!2275 = metadata !{i32 786443, metadata !1842, i32 111, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2276 = metadata !{i32 114, i32 0, metadata !1842, null}
!2277 = metadata !{i32 115, i32 0, metadata !1842, null}
!2278 = metadata !{i32 116, i32 0, metadata !1842, null}
!2279 = metadata !{i32 118, i32 0, metadata !1816, null}
!2280 = metadata !{i32 122, i32 0, metadata !1823, null}
!2281 = metadata !{i32 123, i32 0, metadata !1823, null}
!2282 = metadata !{i32 124, i32 0, metadata !2283, null}
!2283 = metadata !{i32 786443, metadata !1823, i32 123, i32 0, metadata !6, i32 113} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2284 = metadata !{i32 125, i32 0, metadata !2283, null}
!2285 = metadata !{i32 127, i32 0, metadata !1823, null}
!2286 = metadata !{i32 128, i32 0, metadata !1823, null}
!2287 = metadata !{i32 131, i32 0, metadata !1823, null}
!2288 = metadata !{i32 134, i32 0, metadata !1823, null}
!2289 = metadata !{i32 135, i32 0, metadata !2290, null}
!2290 = metadata !{i32 786443, metadata !1823, i32 134, i32 0, metadata !6, i32 116} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2291 = metadata !{i32 136, i32 0, metadata !2290, null}
!2292 = metadata !{i32 138, i32 0, metadata !1823, null}
!2293 = metadata !{i32 139, i32 0, metadata !1823, null}
!2294 = metadata !{i32 358, i32 0, metadata !1810, null}
!2295 = metadata !{i32 360, i32 0, metadata !2296, null}
!2296 = metadata !{i32 786443, metadata !1810, i32 359, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2297 = metadata !{i32 361, i32 0, metadata !2296, null}
!2298 = metadata !{i32 344, i32 0, metadata !1825, null}
!2299 = metadata !{i32 346, i32 0, metadata !2300, null}
!2300 = metadata !{i32 786443, metadata !1825, i32 345, i32 0, metadata !6, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_userid_filter_module.c]
!2301 = metadata !{i32 347, i32 0, metadata !2300, null}
!2302 = metadata !{i32 348, i32 0, metadata !2300, null}
!2303 = metadata !{i32 351, i32 0, metadata !2300, null}
!2304 = metadata !{i32 353, i32 0, metadata !2300, null}
!2305 = metadata !{i32 354, i32 0, metadata !2300, null}
!2306 = metadata !{i32 355, i32 0, metadata !2300, null}
!2307 = metadata !{i32 356, i32 0, metadata !2300, null}
