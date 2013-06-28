; ModuleID = 'src/http/modules/ngx_http_memcached_module.c'
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
%struct.ngx_conf_bitmask_t = type { %struct.ngx_str_t, i32 }
%struct.ngx_url_t = type { %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, i16, i16, i32, i8, i32, [110 x i8], %struct.ngx_addr_t*, i32, i8* }
%struct.ngx_addr_t = type { %struct.sockaddr*, i32, %struct.ngx_str_t }
%struct.ngx_http_upstream_srv_conf_s = type { %struct.ngx_http_upstream_peer_t, i8**, %struct.ngx_array_s*, i32, %struct.ngx_str_t, i8*, i32, i16, i16 }
%struct.ngx_http_upstream_peer_t = type { i32 (%struct.ngx_conf_s*, %struct.ngx_http_upstream_srv_conf_s*)*, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_upstream_srv_conf_s*)*, i8* }
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
%struct.ngx_event_pipe_s = type { %struct.ngx_connection_s*, %struct.ngx_connection_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s**, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, i32 (%struct.ngx_event_pipe_s*, %struct.ngx_buf_s*)*, i8*, i32 (i8*, %struct.ngx_chain_s*)*, i8*, i8, i8, i32, %struct.ngx_bufs_t, i8*, i32, i64, i64, i64, i32, i32, i32, i32, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_chain_s*, i32, %struct.ngx_buf_s*, %struct.ngx_temp_file_t*, i32 }
%struct.ngx_bufs_t = type { i32, i32 }
%struct.ngx_temp_file_t = type { %struct.ngx_file_s, i64, %struct.ngx_path_t*, %struct.ngx_pool_s*, i8*, i32, i8, i8 }
%struct.ngx_output_chain_ctx_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, %struct.ngx_chain_s*, i8, i64, %struct.ngx_pool_s*, i32, %struct.ngx_bufs_t, i8*, i32 (i8*, %struct.ngx_chain_s*)*, i8* }
%struct.ngx_chain_writer_ctx_t = type { %struct.ngx_chain_s*, %struct.ngx_chain_s**, %struct.ngx_connection_s*, %struct.ngx_pool_s*, i64 }
%struct.ngx_http_upstream_conf_t = type { %struct.ngx_http_upstream_srv_conf_s*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_bufs_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_path_t*, %struct.ngx_hash_t, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_addr_t*, %struct.ngx_shm_zone_s*, i32, i32, i32, i32, i32, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, i8, %struct.ngx_str_t }
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

@ngx_http_memcached_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_memcached_create_loc_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_memcached_merge_loc_conf }, align 4
@ngx_http_memcached_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_memcached_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([8 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_memcached_commands to [8 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"memcached_pass\00", align 1
@.str1 = private unnamed_addr constant [15 x i8] c"memcached_bind\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"memcached_connect_timeout\00", align 1
@.str3 = private unnamed_addr constant [23 x i8] c"memcached_send_timeout\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"memcached_buffer_size\00", align 1
@.str5 = private unnamed_addr constant [23 x i8] c"memcached_read_timeout\00", align 1
@.str6 = private unnamed_addr constant [24 x i8] c"memcached_next_upstream\00", align 1
@ngx_http_memcached_next_upstream_masks = internal global [6 x %struct.ngx_conf_bitmask_t] [%struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str7, i32 0, i32 0) }, i32 2 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 7, i8* getelementptr inbounds ([8 x i8]* @.str8, i32 0, i32 0) }, i32 4 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str9, i32 0, i32 0) }, i32 8 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str10, i32 0, i32 0) }, i32 256 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str11, i32 0, i32 0) }, i32 -2147483648 }, %struct.ngx_conf_bitmask_t zeroinitializer], align 4
@ngx_http_memcached_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0) }, i32 1207959554, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_memcached_pass, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str1, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_upstream_bind_set_slot, i32 8, i32 116, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 25, i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 8, i32 4, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 22, i8* getelementptr inbounds ([23 x i8]* @.str3, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 8, i32 8, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 21, i8* getelementptr inbounds ([22 x i8]* @.str4, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 24, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 22, i8* getelementptr inbounds ([23 x i8]* @.str5, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 8, i32 12, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 23, i8* getelementptr inbounds ([24 x i8]* @.str6, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_bitmask_slot, i32 8, i32 64, i8* bitcast ([6 x %struct.ngx_conf_bitmask_t]* @ngx_http_memcached_next_upstream_masks to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str7 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str9 = private unnamed_addr constant [17 x i8] c"invalid_response\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"not_found\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str12 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_core_module = external global %struct.ngx_module_s
@ngx_http_memcached_key = internal global %struct.ngx_str_t { i32 13, i8* getelementptr inbounds ([14 x i8]* @.str13, i32 0, i32 0) }, align 4
@.str13 = private unnamed_addr constant [14 x i8] c"memcached_key\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"memcached://\00", align 1
@ngx_http_memcached_end = internal global [8 x i8] c"\0D\0AEND\0D\0A\00", align 1
@.str15 = private unnamed_addr constant [31 x i8] c"memcached sent invalid trailer\00", align 1
@0 = internal unnamed_addr constant [10 x i8] c"long long\00"
@1 = internal unnamed_addr constant [8 x i8] c"ssize_t\00"
@2 = internal unnamed_addr constant [3 x i8] c"-=\00"
@3 = internal unnamed_addr constant [3 x i8] c"+=\00"
@.str16 = private unnamed_addr constant [7 x i8] c"VALUE \00", align 1
@.str17 = private unnamed_addr constant [57 x i8] c"memcached sent invalid key in response \22%V\22 for key \22%V\22\00", align 1
@.str18 = private unnamed_addr constant [60 x i8] c"memcached sent invalid length in response \22%V\22 for key \22%V\22\00", align 1
@.str19 = private unnamed_addr constant [5 x i8] c"END\0D\00", align 1
@.str20 = private unnamed_addr constant [37 x i8] c"key: \22%V\22 was not found by memcached\00", align 1
@.str21 = private unnamed_addr constant [38 x i8] c"memcached sent invalid response: \22%V\22\00", align 1
@4 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@5 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@.str22 = private unnamed_addr constant [41 x i8] c"the \22$memcached_key\22 variable is not set\00", align 1
@6 = internal unnamed_addr constant [2 x i8] c"*\00"
@7 = internal unnamed_addr constant [2 x i8] c"+\00"
@8 = internal unnamed_addr constant [2 x i8] c"-\00"
@ngx_pagesize = external global i32
@9 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@10 = internal unnamed_addr constant [4 x i8] c"int\00"
@11 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@12 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@13 = internal unnamed_addr constant [45 x i8] c"src/http/modules/ngx_http_memcached_module.c\00"

define internal i8* @ngx_http_memcached_pass(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  %u = alloca %struct.ngx_url_t, align 8
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !1783
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !1783
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !1783
  call void @llvm.dbg.declare(metadata !{%struct.ngx_url_t* %u}, metadata !1586), !dbg !1784
  %upstream1 = bitcast i8* %conf to %struct.ngx_http_upstream_srv_conf_s**, !dbg !1785
  %0 = load %struct.ngx_http_upstream_srv_conf_s** %upstream1, align 4, !dbg !1785, !tbaa !1786
  %tobool = icmp eq %struct.ngx_http_upstream_srv_conf_s* %0, null, !dbg !1785
  br i1 %tobool, label %if.end, label %return, !dbg !1785

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1789
  %1 = load %struct.ngx_array_s** %args, align 4, !dbg !1789, !tbaa !1786
  %elts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 0, !dbg !1789
  %2 = load i8** %elts, align 4, !dbg !1789, !tbaa !1786
  %3 = bitcast %struct.ngx_url_t* %u to i8*, !dbg !1790
  call void @llvm.memset.p0i8.i32(i8* %3, i8 0, i32 172, i32 8, i1 false), !dbg !1790
  %arrayidx = getelementptr inbounds i8* %2, i32 8, !dbg !1791
  %4 = bitcast i8* %arrayidx to i64*, !dbg !1791
  %5 = bitcast %struct.ngx_url_t* %u to i64*, !dbg !1791
  %6 = load i64* %4, align 4, !dbg !1791
  store i64 %6, i64* %5, align 8, !dbg !1791
  %7 = getelementptr %struct.ngx_url_t* %u, i32 0, i32 7, !dbg !1792
  %8 = bitcast i8* %7 to i32*, !dbg !1792
  store i32 4, i32* %8, align 8, !dbg !1792
  %call = call %struct.ngx_http_upstream_srv_conf_s* @ngx_http_upstream_add(%struct.ngx_conf_s* %cf, %struct.ngx_url_t* %u, i32 0) nounwind, !dbg !1793
  store %struct.ngx_http_upstream_srv_conf_s* %call, %struct.ngx_http_upstream_srv_conf_s** %upstream1, align 4, !dbg !1793, !tbaa !1786
  %cmp = icmp eq %struct.ngx_http_upstream_srv_conf_s* %call, null, !dbg !1794
  br i1 %cmp, label %return, label %if.end11, !dbg !1794

if.end11:                                         ; preds = %if.end
  %9 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !1795, !tbaa !1796
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !1795
  %10 = load i8** %ctx, align 4, !dbg !1795, !tbaa !1786
  %loc_conf = getelementptr inbounds i8* %10, i32 8, !dbg !1795
  %11 = bitcast i8* %loc_conf to i8***, !dbg !1795
  %12 = load i8*** %11, align 4, !dbg !1795, !tbaa !1786
  %arrayidx12 = getelementptr inbounds i8** %12, i32 %9, !dbg !1795
  %13 = load i8** %arrayidx12, align 4, !dbg !1795, !tbaa !1786
  %handler = getelementptr inbounds i8* %13, i32 36, !dbg !1797
  %14 = bitcast i8* %handler to i32 (%struct.ngx_http_request_s*)**, !dbg !1797
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_handler, i32 (%struct.ngx_http_request_s*)** %14, align 4, !dbg !1797, !tbaa !1786
  %len = bitcast i8* %13 to i32*, !dbg !1798
  %15 = load i32* %len, align 4, !dbg !1798, !tbaa !1796
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %15, i32 1), !dbg !1798
  %17 = extractvalue { i32, i1 } %16, 0, !dbg !1798
  %18 = extractvalue { i32, i1 } %16, 1, !dbg !1798
  br i1 %18, label %ioc_bb15, label %cont16, !dbg !1798

ioc_bb15:                                         ; preds = %if.end11
  %19 = zext i32 %15 to i64, !dbg !1798
  call void @__ioc_report_sub_overflow(i32 397, i32 42, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %19, i64 1, i8 5) nounwind, !dbg !1798
  br label %cont16, !dbg !1798

cont16:                                           ; preds = %if.end11, %ioc_bb15
  %data = getelementptr inbounds i8* %13, i32 4, !dbg !1798
  %20 = bitcast i8* %data to i8**, !dbg !1798
  %21 = load i8** %20, align 4, !dbg !1798, !tbaa !1786
  %arrayidx18 = getelementptr inbounds i8* %21, i32 %17, !dbg !1798
  %22 = load i8* %arrayidx18, align 1, !dbg !1798, !tbaa !1787
  %cmp19 = icmp eq i8 %22, 47, !dbg !1798
  br i1 %cmp19, label %cont23, label %if.end25, !dbg !1798

cont23:                                           ; preds = %cont16
  %bf.field.offs24 = getelementptr i8* %13, i32 12, !dbg !1799
  %23 = bitcast i8* %bf.field.offs24 to i32*, !dbg !1799
  %24 = load i32* %23, align 4, !dbg !1799
  %25 = or i32 %24, 32, !dbg !1799
  store i32 %25, i32* %23, align 4, !dbg !1799
  br label %if.end25, !dbg !1801

if.end25:                                         ; preds = %cont23, %cont16
  %call26 = call i32 @ngx_http_get_variable_index(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* @ngx_http_memcached_key) nounwind, !dbg !1802
  %index = getelementptr inbounds i8* %conf, i32 176, !dbg !1802
  %26 = bitcast i8* %index to i32*, !dbg !1802
  store i32 %call26, i32* %26, align 4, !dbg !1802, !tbaa !1796
  %cmp30 = icmp eq i32 %call26, -1, !dbg !1803
  %. = select i1 %cmp30, i8* inttoptr (i32 -1 to i8*), i8* null, !dbg !1803
  ret i8* %., !dbg !1803

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i8* [ getelementptr inbounds ([13 x i8]* @.str12, i32 0, i32 0), %entry ], [ inttoptr (i32 -1 to i8*), %if.end ]
  ret i8* %retval.0, !dbg !1804
}

declare i8* @ngx_http_upstream_bind_set_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_msec_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_size_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_bitmask_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare %struct.ngx_http_upstream_srv_conf_s* @ngx_http_upstream_add(%struct.ngx_conf_s*, %struct.ngx_url_t*, i32)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

define internal i32 @ngx_http_memcached_handler(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1615), !dbg !1805
  %method = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 19, !dbg !1806
  %0 = load i32* %method, align 4, !dbg !1806, !tbaa !1796
  %and = and i32 %0, 6, !dbg !1806
  %tobool = icmp eq i32 %and, 0, !dbg !1806
  br i1 %tobool, label %return, label %if.end, !dbg !1806

if.end:                                           ; preds = %entry
  %call = tail call i32 @ngx_http_discard_request_body(%struct.ngx_http_request_s* %r) nounwind, !dbg !1807
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1616), !dbg !1807
  %cmp = icmp eq i32 %call, 0, !dbg !1808
  br i1 %cmp, label %if.end2, label %return, !dbg !1808

if.end2:                                          ; preds = %if.end
  %call3 = tail call i32 @ngx_http_set_content_type(%struct.ngx_http_request_s* %r) nounwind, !dbg !1809
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1809
  br i1 %cmp4, label %if.end6, label %return, !dbg !1809

if.end6:                                          ; preds = %if.end2
  %call7 = tail call i32 @ngx_http_upstream_create(%struct.ngx_http_request_s* %r) nounwind, !dbg !1810
  %cmp8 = icmp eq i32 %call7, 0, !dbg !1810
  br i1 %cmp8, label %if.end10, label %return, !dbg !1810

if.end10:                                         ; preds = %if.end6
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !1811
  %1 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !1811, !tbaa !1786
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %1}, i64 0, metadata !1618), !dbg !1811
  %len = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 29, i32 0, !dbg !1812
  store i32 12, i32* %len, align 4, !dbg !1812, !tbaa !1796
  %data = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 29, i32 1, !dbg !1813
  store i8* getelementptr inbounds ([13 x i8]* @.str14, i32 0, i32 0), i8** %data, align 4, !dbg !1813, !tbaa !1786
  %tag = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 5, i32 9, !dbg !1814
  store i8* bitcast (%struct.ngx_module_s* @ngx_http_memcached_module to i8*), i8** %tag, align 4, !dbg !1814, !tbaa !1786
  %2 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_memcached_module, i32 0, i32 0), align 4, !dbg !1815, !tbaa !1796
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !1815
  %3 = load i8*** %loc_conf, align 4, !dbg !1815, !tbaa !1786
  %arrayidx = getelementptr inbounds i8** %3, i32 %2, !dbg !1815
  %4 = load i8** %arrayidx, align 4, !dbg !1815, !tbaa !1786
  %upstream16 = bitcast i8* %4 to %struct.ngx_http_upstream_conf_t*, !dbg !1816
  %conf = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 7, !dbg !1816
  store %struct.ngx_http_upstream_conf_t* %upstream16, %struct.ngx_http_upstream_conf_t** %conf, align 4, !dbg !1816, !tbaa !1786
  %create_request = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 19, !dbg !1817
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_create_request, i32 (%struct.ngx_http_request_s*)** %create_request, align 4, !dbg !1817, !tbaa !1786
  %reinit_request = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 20, !dbg !1818
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_reinit_request, i32 (%struct.ngx_http_request_s*)** %reinit_request, align 4, !dbg !1818, !tbaa !1786
  %process_header = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 21, !dbg !1819
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_process_header, i32 (%struct.ngx_http_request_s*)** %process_header, align 4, !dbg !1819, !tbaa !1786
  %abort_request = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 22, !dbg !1820
  store void (%struct.ngx_http_request_s*)* @ngx_http_memcached_abort_request, void (%struct.ngx_http_request_s*)** %abort_request, align 4, !dbg !1820, !tbaa !1786
  %finalize_request = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 23, !dbg !1821
  store void (%struct.ngx_http_request_s*, i32)* @ngx_http_memcached_finalize_request, void (%struct.ngx_http_request_s*, i32)** %finalize_request, align 4, !dbg !1821, !tbaa !1786
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !1822
  %5 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1822, !tbaa !1786
  %call17 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %5, i32 16) nounwind, !dbg !1822
  %cmp18 = icmp eq i8* %call17, null, !dbg !1823
  br i1 %cmp18, label %return, label %cont24, !dbg !1823

cont24:                                           ; preds = %if.end10
  %rest = bitcast i8* %call17 to i32*, !dbg !1824
  store i32 7, i32* %rest, align 4, !dbg !1824, !tbaa !1796
  %request = getelementptr inbounds i8* %call17, i32 4, !dbg !1825
  %6 = bitcast i8* %request to %struct.ngx_http_request_s**, !dbg !1825
  store %struct.ngx_http_request_s* %r, %struct.ngx_http_request_s** %6, align 4, !dbg !1825, !tbaa !1786
  %7 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_memcached_module, i32 0, i32 0), align 4, !dbg !1826, !tbaa !1796
  %ctx25 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !1826
  %8 = load i8*** %ctx25, align 4, !dbg !1826, !tbaa !1786
  %arrayidx26 = getelementptr inbounds i8** %8, i32 %7, !dbg !1826
  store i8* %call17, i8** %arrayidx26, align 4, !dbg !1826, !tbaa !1786
  %input_filter_init = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 15, !dbg !1827
  store i32 (i8*)* @ngx_http_memcached_filter_init, i32 (i8*)** %input_filter_init, align 4, !dbg !1827, !tbaa !1786
  %input_filter = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 16, !dbg !1828
  store i32 (i8*, i32)* @ngx_http_memcached_filter, i32 (i8*, i32)** %input_filter, align 4, !dbg !1828, !tbaa !1786
  %input_filter_ctx = getelementptr inbounds %struct.ngx_http_upstream_s* %1, i32 0, i32 17, !dbg !1829
  store i8* %call17, i8** %input_filter_ctx, align 4, !dbg !1829, !tbaa !1786
  %main = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 29, !dbg !1830
  %9 = load %struct.ngx_http_request_s** %main, align 4, !dbg !1830, !tbaa !1786
  %10 = getelementptr %struct.ngx_http_request_s* %9, i32 0, i32 49, !dbg !1830
  %11 = bitcast i8* %10 to i32*, !dbg !1830
  %12 = load i32* %11, align 4, !dbg !1830
  %13 = add i32 %12, 256, !dbg !1830
  %14 = and i32 %13, 65280, !dbg !1830
  %15 = and i32 %12, -65281, !dbg !1830
  %16 = or i32 %14, %15, !dbg !1830
  store i32 %16, i32* %11, align 4, !dbg !1830
  tail call void @ngx_http_upstream_init(%struct.ngx_http_request_s* %r) nounwind, !dbg !1831
  br label %return, !dbg !1832

return:                                           ; preds = %if.end10, %if.end6, %if.end2, %if.end, %entry, %cont24
  %retval.0 = phi i32 [ -4, %cont24 ], [ 405, %entry ], [ %call, %if.end ], [ 500, %if.end2 ], [ 500, %if.end6 ], [ 500, %if.end10 ]
  ret i32 %retval.0, !dbg !1833
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare i32 @ngx_http_get_variable_index(%struct.ngx_conf_s*, %struct.ngx_str_t*)

declare i32 @ngx_http_discard_request_body(%struct.ngx_http_request_s*)

declare i32 @ngx_http_set_content_type(%struct.ngx_http_request_s*)

declare i32 @ngx_http_upstream_create(%struct.ngx_http_request_s*)

define internal i32 @ngx_http_memcached_create_request(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1679), !dbg !1834
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_memcached_module, i32 0, i32 0), align 4, !dbg !1835, !tbaa !1796
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !1835
  %1 = load i8*** %loc_conf, align 4, !dbg !1835, !tbaa !1786
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !1835
  %2 = load i8** %arrayidx, align 4, !dbg !1835, !tbaa !1786
  %index = getelementptr inbounds i8* %2, i32 176, !dbg !1836
  %3 = bitcast i8* %index to i32*, !dbg !1836
  %4 = load i32* %3, align 4, !dbg !1836, !tbaa !1796
  %5 = icmp sgt i32 %4, -1, !dbg !1836
  br i1 %5, label %cont, label %ioc_bb, !dbg !1836

ioc_bb:                                           ; preds = %entry
  %6 = sext i32 %4 to i64, !dbg !1836
  tail call void @__ioc_report_conversion(i32 107, i32 40, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %6, i8 1) nounwind, !dbg !1836
  br label %cont, !dbg !1836

cont:                                             ; preds = %ioc_bb, %entry
  %call = tail call %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s* %r, i32 %4) nounwind, !dbg !1836
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %call}, i64 0, metadata !1686), !dbg !1836
  %cmp = icmp eq %struct.ngx_variable_value_t* %call, null, !dbg !1837
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1837

lor.lhs.false:                                    ; preds = %cont
  %7 = bitcast %struct.ngx_variable_value_t* %call to i32*, !dbg !1837
  %8 = load i32* %7, align 4, !dbg !1837
  %bf.clear = and i32 %8, 1073741824, !dbg !1837
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !1837
  br i1 %tobool, label %cont7, label %if.then, !dbg !1837

cont7:                                            ; preds = %lor.lhs.false
  %bf.clear4 = and i32 %8, 268435455, !dbg !1837
  %cmp8 = icmp eq i32 %bf.clear4, 0, !dbg !1837
  br i1 %cmp8, label %if.then, label %cont21, !dbg !1837

if.then:                                          ; preds = %lor.lhs.false, %cont7, %cont
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !1838
  %9 = load %struct.ngx_connection_s** %connection, align 4, !dbg !1838, !tbaa !1786
  %log = getelementptr inbounds %struct.ngx_connection_s* %9, i32 0, i32 10, !dbg !1838
  %10 = load %struct.ngx_log_s** %log, align 4, !dbg !1838, !tbaa !1786
  %log_level = getelementptr inbounds %struct.ngx_log_s* %10, i32 0, i32 0, !dbg !1838
  %11 = load i32* %log_level, align 4, !dbg !1838, !tbaa !1796
  %cmp11 = icmp ugt i32 %11, 3, !dbg !1838
  br i1 %cmp11, label %cont14, label %return, !dbg !1838

cont14:                                           ; preds = %if.then
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %10, i32 0, i8* getelementptr inbounds ([41 x i8]* @.str22, i32 0, i32 0)) nounwind, !dbg !1840
  br label %return, !dbg !1840

cont21:                                           ; preds = %cont7
  %data = getelementptr inbounds %struct.ngx_variable_value_t* %call, i32 0, i32 1, !dbg !1841
  %12 = load i8** %data, align 4, !dbg !1841, !tbaa !1786
  %call25 = tail call i32 @ngx_escape_uri(i8* null, i8* %12, i32 %bf.clear4, i32 5) nounwind, !dbg !1841
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call25, i32 2), !dbg !1841
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !1841
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !1841
  br i1 %15, label %ioc_bb26, label %cont31, !dbg !1841

ioc_bb26:                                         ; preds = %cont21
  %16 = zext i32 %call25 to i64, !dbg !1841
  tail call void @__ioc_report_mul_overflow(i32 113, i32 14, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @6, i32 0, i32 0), i64 2, i64 %16, i8 5) nounwind, !dbg !1841
  br label %cont31, !dbg !1841

cont31:                                           ; preds = %cont21, %ioc_bb26
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !1682), !dbg !1841
  %17 = load i32* %7, align 4, !dbg !1842
  %bf.clear32 = and i32 %17, 268435455, !dbg !1842
  %18 = add nuw i32 %bf.clear32, 4, !dbg !1842
  %19 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %18, i32 %14), !dbg !1842
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !1842
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !1842
  br i1 %21, label %ioc_bb35, label %cont36, !dbg !1842

ioc_bb35:                                         ; preds = %cont31
  %22 = zext i32 %14 to i64, !dbg !1842
  %23 = zext i32 %18 to i64, !dbg !1842
  tail call void @__ioc_report_add_overflow(i32 114, i32 40, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %23, i64 %22, i8 5) nounwind, !dbg !1842
  br label %cont36, !dbg !1842

cont36:                                           ; preds = %cont31, %ioc_bb35
  %24 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %20, i32 3), !dbg !1842
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !1842
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !1842
  br i1 %26, label %ioc_bb37, label %cont40, !dbg !1842

ioc_bb37:                                         ; preds = %cont36
  %27 = zext i32 %20 to i64, !dbg !1842
  tail call void @__ioc_report_add_overflow(i32 114, i32 49, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @7, i32 0, i32 0), i64 %27, i64 3, i8 5) nounwind, !dbg !1842
  br label %cont40, !dbg !1842

cont40:                                           ; preds = %ioc_bb37, %cont36
  %28 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %25, i32 1), !dbg !1842
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !1842
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !1842
  br i1 %30, label %ioc_bb41, label %cont42, !dbg !1842

ioc_bb41:                                         ; preds = %cont40
  %31 = zext i32 %25 to i64, !dbg !1842
  tail call void @__ioc_report_sub_overflow(i32 114, i32 66, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %31, i64 1, i8 5) nounwind, !dbg !1842
  br label %cont42, !dbg !1842

cont42:                                           ; preds = %cont40, %ioc_bb41
  tail call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !1680), !dbg !1842
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !1843
  %32 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1843, !tbaa !1786
  %call43 = tail call %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s* %32, i32 %29) nounwind, !dbg !1843
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %call43}, i64 0, metadata !1683), !dbg !1843
  %cmp44 = icmp eq %struct.ngx_buf_s* %call43, null, !dbg !1844
  br i1 %cmp44, label %return, label %if.end48, !dbg !1844

if.end48:                                         ; preds = %cont42
  %33 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1845, !tbaa !1786
  %call50 = tail call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %33) nounwind, !dbg !1845
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call50}, i64 0, metadata !1684), !dbg !1845
  %cmp51 = icmp eq %struct.ngx_chain_s* %call50, null, !dbg !1846
  br i1 %cmp51, label %return, label %if.end55, !dbg !1846

if.end55:                                         ; preds = %if.end48
  %buf = getelementptr inbounds %struct.ngx_chain_s* %call50, i32 0, i32 0, !dbg !1847
  store %struct.ngx_buf_s* %call43, %struct.ngx_buf_s** %buf, align 4, !dbg !1847, !tbaa !1786
  %next = getelementptr inbounds %struct.ngx_chain_s* %call50, i32 0, i32 1, !dbg !1848
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next, align 4, !dbg !1848, !tbaa !1786
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !1849
  %34 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !1849, !tbaa !1786
  %request_bufs = getelementptr inbounds %struct.ngx_http_upstream_s* %34, i32 0, i32 4, !dbg !1849
  store %struct.ngx_chain_s* %call50, %struct.ngx_chain_s** %request_bufs, align 4, !dbg !1849, !tbaa !1786
  %last = getelementptr inbounds %struct.ngx_buf_s* %call43, i32 0, i32 1, !dbg !1850
  %35 = load i8** %last, align 4, !dbg !1850, !tbaa !1786
  %incdec.ptr = getelementptr inbounds i8* %35, i32 1, !dbg !1850
  store i8* %incdec.ptr, i8** %last, align 4, !dbg !1850, !tbaa !1786
  store i8 103, i8* %35, align 1, !dbg !1850, !tbaa !1787
  %36 = load i8** %last, align 4, !dbg !1851, !tbaa !1786
  %incdec.ptr61 = getelementptr inbounds i8* %36, i32 1, !dbg !1851
  store i8* %incdec.ptr61, i8** %last, align 4, !dbg !1851, !tbaa !1786
  store i8 101, i8* %36, align 1, !dbg !1851, !tbaa !1787
  %37 = load i8** %last, align 4, !dbg !1852, !tbaa !1786
  %incdec.ptr65 = getelementptr inbounds i8* %37, i32 1, !dbg !1852
  store i8* %incdec.ptr65, i8** %last, align 4, !dbg !1852, !tbaa !1786
  store i8 116, i8* %37, align 1, !dbg !1852, !tbaa !1787
  %38 = load i8** %last, align 4, !dbg !1853, !tbaa !1786
  %incdec.ptr69 = getelementptr inbounds i8* %38, i32 1, !dbg !1853
  store i8* %incdec.ptr69, i8** %last, align 4, !dbg !1853, !tbaa !1786
  store i8 32, i8* %38, align 1, !dbg !1853, !tbaa !1787
  %39 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_memcached_module, i32 0, i32 0), align 4, !dbg !1854, !tbaa !1796
  %ctx70 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !1854
  %40 = load i8*** %ctx70, align 4, !dbg !1854, !tbaa !1786
  %arrayidx71 = getelementptr inbounds i8** %40, i32 %39, !dbg !1854
  %41 = load i8** %arrayidx71, align 4, !dbg !1854, !tbaa !1786
  %42 = load i8** %last, align 4, !dbg !1855, !tbaa !1786
  %key = getelementptr inbounds i8* %41, i32 8, !dbg !1855
  %data73 = getelementptr inbounds i8* %41, i32 12, !dbg !1855
  %43 = bitcast i8* %data73 to i8**, !dbg !1855
  store i8* %42, i8** %43, align 4, !dbg !1855, !tbaa !1786
  %cmp76 = icmp eq i32 %14, 0, !dbg !1856
  %44 = load i8** %last, align 4, !dbg !1857, !tbaa !1786
  %45 = load i8** %data, align 4, !dbg !1857, !tbaa !1786
  %46 = load i32* %7, align 4, !dbg !1857
  %bf.clear80 = and i32 %46, 268435455, !dbg !1857
  br i1 %cmp76, label %if.then77, label %cont90, !dbg !1856

if.then77:                                        ; preds = %if.end55
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %44, i8* %45, i32 %bf.clear80, i32 1, i1 false), !dbg !1857
  %47 = load i32* %7, align 4, !dbg !1857
  %bf.clear81 = and i32 %47, 268435455, !dbg !1857
  %add.ptr = getelementptr inbounds i8* %44, i32 %bf.clear81, !dbg !1857
  br label %if.end93, !dbg !1859

cont90:                                           ; preds = %if.end55
  %call91 = tail call i32 @ngx_escape_uri(i8* %44, i8* %45, i32 %bf.clear80, i32 5) nounwind, !dbg !1860
  %48 = inttoptr i32 %call91 to i8*, !dbg !1860
  br label %if.end93

if.end93:                                         ; preds = %cont90, %if.then77
  %storemerge = phi i8* [ %48, %cont90 ], [ %add.ptr, %if.then77 ]
  store i8* %storemerge, i8** %last, align 4, !dbg !1857
  %49 = load i8** %43, align 4, !dbg !1862, !tbaa !1786
  %sub.ptr.lhs.cast = ptrtoint i8* %storemerge to i32, !dbg !1862
  %sub.ptr.rhs.cast = ptrtoint i8* %49 to i32, !dbg !1862
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1862
  %50 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1862
  br i1 %50, label %cont99, label %ioc_bb98, !dbg !1862

ioc_bb98:                                         ; preds = %if.end93
  %51 = sext i32 %sub.ptr.sub to i64, !dbg !1862
  tail call void @__ioc_report_conversion(i32 138, i32 20, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %51, i8 1) nounwind, !dbg !1862
  %.pre = load i8** %last, align 4, !dbg !1863, !tbaa !1786
  br label %cont99, !dbg !1862

cont99:                                           ; preds = %ioc_bb98, %if.end93
  %52 = phi i8* [ %.pre, %ioc_bb98 ], [ %storemerge, %if.end93 ]
  %len101 = bitcast i8* %key to i32*, !dbg !1862
  store i32 %sub.ptr.sub, i32* %len101, align 4, !dbg !1862, !tbaa !1796
  %incdec.ptr105 = getelementptr inbounds i8* %52, i32 1, !dbg !1863
  store i8* %incdec.ptr105, i8** %last, align 4, !dbg !1863, !tbaa !1786
  store i8 13, i8* %52, align 1, !dbg !1863, !tbaa !1787
  %53 = load i8** %last, align 4, !dbg !1864, !tbaa !1786
  %incdec.ptr109 = getelementptr inbounds i8* %53, i32 1, !dbg !1864
  store i8* %incdec.ptr109, i8** %last, align 4, !dbg !1864, !tbaa !1786
  store i8 10, i8* %53, align 1, !dbg !1864, !tbaa !1787
  br label %return, !dbg !1865

return:                                           ; preds = %if.end48, %cont42, %cont14, %if.then, %cont99
  %retval.0 = phi i32 [ 0, %cont99 ], [ -1, %if.then ], [ -1, %cont14 ], [ -1, %cont42 ], [ -1, %if.end48 ]
  ret i32 %retval.0, !dbg !1866
}

define internal i32 @ngx_http_memcached_reinit_request(%struct.ngx_http_request_s* nocapture %r) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1675), !dbg !1867
  ret i32 0, !dbg !1868
}

define internal i32 @ngx_http_memcached_process_header(%struct.ngx_http_request_s* nocapture %r) nounwind {
entry:
  %line = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1659), !dbg !1870
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %line}, metadata !1663), !dbg !1871
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !1872
  %0 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !1872, !tbaa !1786
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %0}, i64 0, metadata !1664), !dbg !1872
  %pos = getelementptr inbounds %struct.ngx_http_upstream_s* %0, i32 0, i32 10, i32 0, !dbg !1873
  %1 = load i8** %pos, align 4, !dbg !1873, !tbaa !1786
  call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !1660), !dbg !1873
  %last = getelementptr inbounds %struct.ngx_http_upstream_s* %0, i32 0, i32 10, i32 1, !dbg !1873
  %2 = load i8** %last, align 4, !dbg !1873, !tbaa !1786
  br label %for.cond, !dbg !1873

for.cond:                                         ; preds = %cont, %entry
  %p.0 = phi i8* [ %1, %entry ], [ %incdec.ptr, %cont ]
  %cmp = icmp ult i8* %p.0, %2, !dbg !1873
  br i1 %cmp, label %cont, label %return, !dbg !1873

cont:                                             ; preds = %for.cond
  %3 = load i8* %p.0, align 1, !dbg !1875, !tbaa !1787
  %cmp2 = icmp eq i8 %3, 10, !dbg !1875
  %incdec.ptr = getelementptr inbounds i8* %p.0, i32 1, !dbg !1873
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1660), !dbg !1873
  br i1 %cmp2, label %cont7, label %for.cond, !dbg !1875

cont7:                                            ; preds = %cont
  store i8 0, i8* %p.0, align 1, !dbg !1877, !tbaa !1787
  %4 = load i8** %pos, align 4, !dbg !1878, !tbaa !1786
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i32, !dbg !1878
  %sub.ptr.rhs.cast = ptrtoint i8* %4 to i32, !dbg !1878
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1878
  %5 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub, i32 1), !dbg !1878
  %6 = extractvalue { i32, i1 } %5, 0, !dbg !1878
  %7 = extractvalue { i32, i1 } %5, 1, !dbg !1878
  br i1 %7, label %ioc_bb10, label %cont11, !dbg !1878

ioc_bb10:                                         ; preds = %cont7
  %8 = sext i32 %sub.ptr.sub to i64, !dbg !1878
  call void @__ioc_report_sub_overflow(i32 166, i32 35, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %8, i64 1, i8 13) nounwind, !dbg !1878
  br label %cont11, !dbg !1878

cont11:                                           ; preds = %cont7, %ioc_bb10
  %9 = icmp sgt i32 %6, -1, !dbg !1878
  br i1 %9, label %cont13, label %ioc_bb12, !dbg !1878

ioc_bb12:                                         ; preds = %cont11
  %10 = sext i32 %6 to i64, !dbg !1878
  call void @__ioc_report_conversion(i32 166, i32 14, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %10, i8 1) nounwind, !dbg !1878
  br label %cont13, !dbg !1878

cont13:                                           ; preds = %cont11, %ioc_bb12
  %len14 = getelementptr inbounds %struct.ngx_str_t* %line, i32 0, i32 0, !dbg !1878
  store i32 %6, i32* %len14, align 4, !dbg !1878, !tbaa !1796
  %11 = load i8** %pos, align 4, !dbg !1879, !tbaa !1786
  %data = getelementptr inbounds %struct.ngx_str_t* %line, i32 0, i32 1, !dbg !1879
  store i8* %11, i8** %data, align 4, !dbg !1879, !tbaa !1786
  %12 = load i8** %pos, align 4, !dbg !1880, !tbaa !1786
  call void @llvm.dbg.value(metadata !{i8* %12}, i64 0, metadata !1660), !dbg !1880
  %13 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_memcached_module, i32 0, i32 0), align 4, !dbg !1881, !tbaa !1796
  %ctx19 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !1881
  %14 = load i8*** %ctx19, align 4, !dbg !1881, !tbaa !1786
  %arrayidx = getelementptr inbounds i8** %14, i32 %13, !dbg !1881
  %15 = load i8** %arrayidx, align 4, !dbg !1881, !tbaa !1786
  %call = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([7 x i8]* @.str16, i32 0, i32 0), i32 6) nounwind readonly, !dbg !1882
  %cmp24 = icmp eq i32 %call, 0, !dbg !1882
  br i1 %cmp24, label %cont30, label %if.end116, !dbg !1882

cont30:                                           ; preds = %cont13
  %add.ptr = getelementptr inbounds i8* %12, i32 6, !dbg !1883
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !1660), !dbg !1883
  %key = getelementptr inbounds i8* %15, i32 8, !dbg !1885
  %data31 = getelementptr inbounds i8* %15, i32 12, !dbg !1885
  %16 = bitcast i8* %data31 to i8**, !dbg !1885
  %17 = load i8** %16, align 4, !dbg !1885, !tbaa !1786
  %len33 = bitcast i8* %key to i32*, !dbg !1885
  %18 = load i32* %len33, align 4, !dbg !1885, !tbaa !1796
  %call34 = call i32 @strncmp(i8* %add.ptr, i8* %17, i32 %18) nounwind readonly, !dbg !1885
  %cmp35 = icmp eq i32 %call34, 0, !dbg !1885
  br i1 %cmp35, label %if.end49, label %if.then37, !dbg !1885

if.then37:                                        ; preds = %cont30
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !1886
  %19 = load %struct.ngx_connection_s** %connection, align 4, !dbg !1886, !tbaa !1786
  %log = getelementptr inbounds %struct.ngx_connection_s* %19, i32 0, i32 10, !dbg !1886
  %20 = load %struct.ngx_log_s** %log, align 4, !dbg !1886, !tbaa !1786
  %log_level = getelementptr inbounds %struct.ngx_log_s* %20, i32 0, i32 0, !dbg !1886
  %21 = load i32* %log_level, align 4, !dbg !1886, !tbaa !1796
  %cmp40 = icmp ugt i32 %21, 3, !dbg !1886
  br i1 %cmp40, label %cont44, label %return, !dbg !1886

cont44:                                           ; preds = %if.then37
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %20, i32 0, i8* getelementptr inbounds ([57 x i8]* @.str17, i32 0, i32 0), %struct.ngx_str_t* %line, i8* %key) nounwind, !dbg !1888
  br label %return, !dbg !1888

if.end49:                                         ; preds = %cont30
  %add.ptr.sum = add i32 %18, 6, !dbg !1889
  %add.ptr52 = getelementptr inbounds i8* %12, i32 %add.ptr.sum, !dbg !1889
  call void @llvm.dbg.value(metadata !{i8* %add.ptr52}, i64 0, metadata !1660), !dbg !1889
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr53}, i64 0, metadata !1660), !dbg !1890
  %22 = load i8* %add.ptr52, align 1, !dbg !1890, !tbaa !1787
  %cmp55 = icmp eq i8 %22, 32, !dbg !1890
  br i1 %cmp55, label %while.cond.preheader, label %no_valid, !dbg !1890

while.cond.preheader:                             ; preds = %if.end49
  %add.ptr52.sum = add i32 %18, 7, !dbg !1890
  %incdec.ptr53 = getelementptr inbounds i8* %12, i32 %add.ptr52.sum, !dbg !1890
  br label %while.cond, !dbg !1891

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %p.1 = phi i8* [ %incdec.ptr59, %while.body ], [ %incdec.ptr53, %while.cond.preheader ]
  %23 = load i8* %p.1, align 1, !dbg !1891, !tbaa !1787
  %tobool = icmp eq i8 %23, 0, !dbg !1891
  br i1 %tobool, label %no_valid, label %while.body, !dbg !1891

while.body:                                       ; preds = %while.cond
  %incdec.ptr59 = getelementptr inbounds i8* %p.1, i32 1, !dbg !1892
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr59}, i64 0, metadata !1660), !dbg !1892
  %cmp61 = icmp eq i8 %23, 32, !dbg !1892
  br i1 %cmp61, label %while.cond65, label %while.cond, !dbg !1892

while.cond65:                                     ; preds = %while.body, %land.rhs
  %p.2 = phi i8* [ %incdec.ptr68, %land.rhs ], [ %incdec.ptr59, %while.body ]
  %24 = load i8* %p.2, align 1, !dbg !1894, !tbaa !1787
  %tobool67 = icmp eq i8 %24, 0, !dbg !1894
  br i1 %tobool67, label %while.end75, label %land.rhs, !dbg !1894

land.rhs:                                         ; preds = %while.cond65
  %incdec.ptr68 = getelementptr inbounds i8* %p.2, i32 1, !dbg !1894
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr68}, i64 0, metadata !1660), !dbg !1894
  %cmp72 = icmp eq i8 %24, 13, !dbg !1894
  br i1 %cmp72, label %while.end75, label %while.cond65

while.end75:                                      ; preds = %land.rhs, %while.cond65
  %p.3 = phi i8* [ %incdec.ptr68, %land.rhs ], [ %p.2, %while.cond65 ]
  %sub.ptr.lhs.cast76 = ptrtoint i8* %p.3 to i32, !dbg !1895
  %sub.ptr.rhs.cast77 = ptrtoint i8* %incdec.ptr59 to i32, !dbg !1895
  %sub.ptr.sub78 = sub i32 %sub.ptr.lhs.cast76, %sub.ptr.rhs.cast77, !dbg !1895
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %sub.ptr.sub78, i32 1), !dbg !1895
  %26 = extractvalue { i32, i1 } %25, 0, !dbg !1895
  %27 = extractvalue { i32, i1 } %25, 1, !dbg !1895
  br i1 %27, label %ioc_bb79, label %cont80, !dbg !1895

ioc_bb79:                                         ; preds = %while.end75
  %28 = sext i32 %sub.ptr.sub78 to i64, !dbg !1895
  call void @__ioc_report_sub_overflow(i32 194, i32 63, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %28, i64 1, i8 13) nounwind, !dbg !1895
  br label %cont80, !dbg !1895

cont80:                                           ; preds = %while.end75, %ioc_bb79
  %29 = icmp sgt i32 %26, -1, !dbg !1895
  br i1 %29, label %cont83, label %ioc_bb82, !dbg !1895

ioc_bb82:                                         ; preds = %cont80
  %30 = sext i32 %26 to i64, !dbg !1895
  call void @__ioc_report_conversion(i32 194, i32 54, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %30, i8 1) nounwind, !dbg !1895
  br label %cont83, !dbg !1895

cont83:                                           ; preds = %ioc_bb82, %cont80
  %call84 = call i64 @ngx_atoof(i8* %incdec.ptr59, i32 %26) nounwind, !dbg !1895
  %content_length_n = getelementptr inbounds %struct.ngx_http_upstream_s* %0, i32 0, i32 8, i32 20, !dbg !1895
  store i64 %call84, i64* %content_length_n, align 4, !dbg !1895, !tbaa !1896
  %cmp90 = icmp eq i64 %call84, -1, !dbg !1897
  br i1 %cmp90, label %if.then92, label %cont109, !dbg !1897

if.then92:                                        ; preds = %cont83
  %connection93 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !1898
  %31 = load %struct.ngx_connection_s** %connection93, align 4, !dbg !1898, !tbaa !1786
  %log94 = getelementptr inbounds %struct.ngx_connection_s* %31, i32 0, i32 10, !dbg !1898
  %32 = load %struct.ngx_log_s** %log94, align 4, !dbg !1898, !tbaa !1786
  %log_level95 = getelementptr inbounds %struct.ngx_log_s* %32, i32 0, i32 0, !dbg !1898
  %33 = load i32* %log_level95, align 4, !dbg !1898, !tbaa !1796
  %cmp98 = icmp ugt i32 %33, 3, !dbg !1898
  br i1 %cmp98, label %cont102, label %return, !dbg !1898

cont102:                                          ; preds = %if.then92
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %32, i32 0, i8* getelementptr inbounds ([60 x i8]* @.str18, i32 0, i32 0), %struct.ngx_str_t* %line, i8* %key) nounwind, !dbg !1900
  br label %return, !dbg !1900

cont109:                                          ; preds = %cont83
  %status_n = getelementptr inbounds %struct.ngx_http_upstream_s* %0, i32 0, i32 8, i32 1, !dbg !1901
  store i32 200, i32* %status_n, align 4, !dbg !1901, !tbaa !1796
  %state = getelementptr inbounds %struct.ngx_http_upstream_s* %0, i32 0, i32 27, !dbg !1902
  %34 = load %struct.ngx_http_upstream_state_t** %state, align 4, !dbg !1902, !tbaa !1786
  %status = getelementptr inbounds %struct.ngx_http_upstream_state_t* %34, i32 0, i32 2, !dbg !1902
  store i32 200, i32* %status, align 4, !dbg !1902, !tbaa !1796
  %add.ptr113 = getelementptr inbounds i8* %p.3, i32 1, !dbg !1903
  store i8* %add.ptr113, i8** %pos, align 4, !dbg !1903, !tbaa !1786
  br label %return, !dbg !1904

if.end116:                                        ; preds = %cont13
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str19 to i32)), !dbg !1905
  %36 = extractvalue { i32, i1 } %35, 1, !dbg !1905
  br i1 %36, label %ioc_bb117, label %cont120, !dbg !1905

ioc_bb117:                                        ; preds = %if.end116
  call void @__ioc_report_sub_overflow(i32 205, i32 7, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str19 to i32) to i64), i8 5) nounwind, !dbg !1905
  br label %cont120, !dbg !1905

cont120:                                          ; preds = %ioc_bb117, %if.end116
  %call174 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8]* @.str19, i32 0, i32 0)) nounwind, !dbg !1906
  %cmp175 = icmp eq i32 %call174, 0, !dbg !1906
  br i1 %cmp175, label %if.then177, label %no_valid, !dbg !1906

if.then177:                                       ; preds = %cont120
  %connection178 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !1909
  %37 = load %struct.ngx_connection_s** %connection178, align 4, !dbg !1909, !tbaa !1786
  %log179 = getelementptr inbounds %struct.ngx_connection_s* %37, i32 0, i32 10, !dbg !1909
  %38 = load %struct.ngx_log_s** %log179, align 4, !dbg !1909, !tbaa !1786
  %log_level180 = getelementptr inbounds %struct.ngx_log_s* %38, i32 0, i32 0, !dbg !1909
  %39 = load i32* %log_level180, align 4, !dbg !1909, !tbaa !1796
  %cmp183 = icmp ugt i32 %39, 6, !dbg !1909
  br i1 %cmp183, label %cont187, label %cont193, !dbg !1909

cont187:                                          ; preds = %if.then177
  %key190 = getelementptr inbounds i8* %15, i32 8, !dbg !1911
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 7, %struct.ngx_log_s* %38, i32 0, i8* getelementptr inbounds ([37 x i8]* @.str20, i32 0, i32 0), i8* %key190) nounwind, !dbg !1911
  br label %cont193, !dbg !1911

cont193:                                          ; preds = %if.then177, %cont187
  %status_n195 = getelementptr inbounds %struct.ngx_http_upstream_s* %0, i32 0, i32 8, i32 1, !dbg !1912
  store i32 404, i32* %status_n195, align 4, !dbg !1912, !tbaa !1796
  %state198 = getelementptr inbounds %struct.ngx_http_upstream_s* %0, i32 0, i32 27, !dbg !1913
  %40 = load %struct.ngx_http_upstream_state_t** %state198, align 4, !dbg !1913, !tbaa !1786
  %status199 = getelementptr inbounds %struct.ngx_http_upstream_state_t* %40, i32 0, i32 2, !dbg !1913
  store i32 404, i32* %status199, align 4, !dbg !1913, !tbaa !1796
  %41 = getelementptr %struct.ngx_http_upstream_s* %0, i32 0, i32 32, !dbg !1914
  %42 = bitcast i8* %41 to i32*, !dbg !1914
  %43 = load i32* %42, align 4, !dbg !1914
  %44 = or i32 %43, 256, !dbg !1914
  store i32 %44, i32* %42, align 4, !dbg !1914
  br label %return, !dbg !1915

no_valid:                                         ; preds = %while.cond, %if.end49, %cont120
  %connection203 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !1916
  %45 = load %struct.ngx_connection_s** %connection203, align 4, !dbg !1916, !tbaa !1786
  %log204 = getelementptr inbounds %struct.ngx_connection_s* %45, i32 0, i32 10, !dbg !1916
  %46 = load %struct.ngx_log_s** %log204, align 4, !dbg !1916, !tbaa !1786
  %log_level205 = getelementptr inbounds %struct.ngx_log_s* %46, i32 0, i32 0, !dbg !1916
  %47 = load i32* %log_level205, align 4, !dbg !1916, !tbaa !1796
  %cmp208 = icmp ugt i32 %47, 3, !dbg !1916
  br i1 %cmp208, label %cont212, label %return, !dbg !1916

cont212:                                          ; preds = %no_valid
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %46, i32 0, i8* getelementptr inbounds ([38 x i8]* @.str21, i32 0, i32 0), %struct.ngx_str_t* %line) nounwind, !dbg !1917
  br label %return, !dbg !1917

return:                                           ; preds = %for.cond, %no_valid, %cont212, %if.then92, %cont102, %if.then37, %cont44, %cont193, %cont109
  %retval.0 = phi i32 [ 0, %cont109 ], [ 0, %cont193 ], [ 40, %cont44 ], [ 40, %if.then37 ], [ 40, %cont102 ], [ 40, %if.then92 ], [ 40, %cont212 ], [ 40, %no_valid ], [ -2, %for.cond ]
  ret i32 %retval.0, !dbg !1918
}

define internal void @ngx_http_memcached_abort_request(%struct.ngx_http_request_s* nocapture %r) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1655), !dbg !1919
  ret void, !dbg !1920
}

define internal void @ngx_http_memcached_finalize_request(%struct.ngx_http_request_s* nocapture %r, i32 %rc) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1650), !dbg !1922
  tail call void @llvm.dbg.value(metadata !{i32 %rc}, i64 0, metadata !1651), !dbg !1922
  ret void, !dbg !1923
}

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

define internal i32 @ngx_http_memcached_filter_init(i8* nocapture %data) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !1643), !dbg !1925
  %request = getelementptr inbounds i8* %data, i32 4, !dbg !1926
  %0 = bitcast i8* %request to %struct.ngx_http_request_s**, !dbg !1926
  %1 = load %struct.ngx_http_request_s** %0, align 4, !dbg !1926, !tbaa !1786
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %1, i32 0, i32 9, !dbg !1926
  %2 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !1926, !tbaa !1786
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %2}, i64 0, metadata !1646), !dbg !1926
  %length = getelementptr inbounds %struct.ngx_http_upstream_s* %2, i32 0, i32 11, !dbg !1927
  %3 = load i64* %length, align 4, !dbg !1927, !tbaa !1896
  %4 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %3, i64 7), !dbg !1927
  %5 = extractvalue { i64, i1 } %4, 0, !dbg !1927
  %6 = extractvalue { i64, i1 } %4, 1, !dbg !1927
  br i1 %6, label %ioc_bb3, label %cont4, !dbg !1927

ioc_bb3:                                          ; preds = %entry
  tail call void @__ioc_report_add_overflow(i32 224, i32 15, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @3, i32 0, i32 0), i64 %3, i64 7, i8 14) nounwind, !dbg !1927
  br label %cont4, !dbg !1927

cont4:                                            ; preds = %entry, %ioc_bb3
  store i64 %5, i64* %length, align 4, !dbg !1927, !tbaa !1896
  ret i32 0, !dbg !1928
}

define internal i32 @ngx_http_memcached_filter(i8* nocapture %data, i32 %bytes) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %data}, i64 0, metadata !1631), !dbg !1929
  tail call void @llvm.dbg.value(metadata !{i32 %bytes}, i64 0, metadata !1632), !dbg !1929
  %request = getelementptr inbounds i8* %data, i32 4, !dbg !1930
  %0 = bitcast i8* %request to %struct.ngx_http_request_s**, !dbg !1930
  %1 = load %struct.ngx_http_request_s** %0, align 4, !dbg !1930, !tbaa !1786
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %1, i32 0, i32 9, !dbg !1930
  %2 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !1930, !tbaa !1786
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %2}, i64 0, metadata !1639), !dbg !1930
  %length = getelementptr inbounds %struct.ngx_http_upstream_s* %2, i32 0, i32 11, !dbg !1931
  %3 = load i64* %length, align 4, !dbg !1931, !tbaa !1896
  %rest = bitcast i8* %data to i32*, !dbg !1931
  %4 = load i32* %rest, align 4, !dbg !1931, !tbaa !1796
  %5 = icmp sgt i32 %4, -1, !dbg !1931
  br i1 %5, label %cont, label %ioc_bb, !dbg !1931

ioc_bb:                                           ; preds = %entry
  %6 = zext i32 %4 to i64, !dbg !1931
  tail call void @__ioc_report_conversion(i32 238, i32 33, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %6, i8 0) nounwind, !dbg !1931
  br label %cont, !dbg !1931

cont:                                             ; preds = %ioc_bb, %entry
  %conv = sext i32 %4 to i64, !dbg !1931
  %cmp = icmp eq i64 %3, %conv, !dbg !1931
  br i1 %cmp, label %if.then, label %if.end47, !dbg !1931

if.then:                                          ; preds = %cont
  %last2 = getelementptr inbounds %struct.ngx_http_upstream_s* %2, i32 0, i32 10, i32 1, !dbg !1932
  %7 = load i8** %last2, align 4, !dbg !1932, !tbaa !1786
  %8 = load i32* %rest, align 4, !dbg !1932, !tbaa !1796
  %.sum = sub i32 7, %8, !dbg !1932
  %add.ptr8 = getelementptr inbounds [8 x i8]* @ngx_http_memcached_end, i32 0, i32 %.sum, !dbg !1932
  %9 = sext i32 %bytes to i64, !dbg !1932
  %10 = icmp sgt i32 %bytes, -1, !dbg !1932
  br i1 %10, label %cont10, label %ioc_bb9, !dbg !1932

ioc_bb9:                                          ; preds = %if.then
  tail call void @__ioc_report_conversion(i32 239, i32 9, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %9, i8 1) nounwind, !dbg !1932
  br label %cont10, !dbg !1932

cont10:                                           ; preds = %ioc_bb9, %if.then
  %call = tail call i32 @strncmp(i8* %7, i8* %add.ptr8, i32 %bytes) nounwind readonly, !dbg !1932
  %cmp11 = icmp eq i32 %call, 0, !dbg !1932
  br i1 %cmp11, label %if.end29, label %cont16, !dbg !1932

cont16:                                           ; preds = %cont10
  %11 = load %struct.ngx_http_request_s** %0, align 4, !dbg !1934, !tbaa !1786
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %11, i32 0, i32 1, !dbg !1934
  %12 = load %struct.ngx_connection_s** %connection, align 4, !dbg !1934, !tbaa !1786
  %log = getelementptr inbounds %struct.ngx_connection_s* %12, i32 0, i32 10, !dbg !1934
  %13 = load %struct.ngx_log_s** %log, align 4, !dbg !1934, !tbaa !1786
  %log_level = getelementptr inbounds %struct.ngx_log_s* %13, i32 0, i32 0, !dbg !1934
  %14 = load i32* %log_level, align 4, !dbg !1934, !tbaa !1796
  %cmp17 = icmp ugt i32 %14, 3, !dbg !1934
  br i1 %cmp17, label %cont21, label %if.end, !dbg !1934

cont21:                                           ; preds = %cont16
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %13, i32 0, i8* getelementptr inbounds ([31 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !1936
  br label %if.end, !dbg !1936

if.end:                                           ; preds = %cont21, %cont16
  store i64 0, i64* %length, align 4, !dbg !1937, !tbaa !1896
  store i32 0, i32* %rest, align 4, !dbg !1938, !tbaa !1796
  br label %return, !dbg !1939

if.end29:                                         ; preds = %cont10
  %15 = load i64* %length, align 4, !dbg !1940, !tbaa !1896
  %16 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %15, i64 %9), !dbg !1940
  %17 = extractvalue { i64, i1 } %16, 0, !dbg !1940
  %18 = extractvalue { i64, i1 } %16, 1, !dbg !1940
  br i1 %18, label %ioc_bb32, label %cont33, !dbg !1940

ioc_bb32:                                         ; preds = %if.end29
  tail call void @__ioc_report_sub_overflow(i32 246, i32 17, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %15, i64 %9, i8 14) nounwind, !dbg !1940
  br label %cont33, !dbg !1940

cont33:                                           ; preds = %if.end29, %ioc_bb32
  store i64 %17, i64* %length, align 4, !dbg !1940, !tbaa !1896
  br i1 %10, label %cont36, label %ioc_bb35, !dbg !1941

ioc_bb35:                                         ; preds = %cont33
  tail call void @__ioc_report_conversion(i32 247, i32 20, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %9, i8 1) nounwind, !dbg !1941
  br label %cont36, !dbg !1941

cont36:                                           ; preds = %cont33, %ioc_bb35
  %19 = load i32* %rest, align 4, !dbg !1941, !tbaa !1796
  %20 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %19, i32 %bytes), !dbg !1941
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !1941
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !1941
  br i1 %22, label %ioc_bb38, label %cont39, !dbg !1941

ioc_bb38:                                         ; preds = %cont36
  %23 = zext i32 %bytes to i64, !dbg !1941
  %24 = zext i32 %19 to i64, !dbg !1941
  tail call void @__ioc_report_sub_overflow(i32 247, i32 17, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %24, i64 %23, i8 5) nounwind, !dbg !1941
  br label %cont39, !dbg !1941

cont39:                                           ; preds = %cont36, %ioc_bb38
  store i32 %21, i32* %rest, align 4, !dbg !1941, !tbaa !1796
  %25 = load i64* %length, align 4, !dbg !1942, !tbaa !1896
  %cmp41 = icmp eq i64 %25, 0, !dbg !1942
  br i1 %cmp41, label %cont45, label %return, !dbg !1942

cont45:                                           ; preds = %cont39
  %26 = getelementptr %struct.ngx_http_upstream_s* %2, i32 0, i32 32, !dbg !1943
  %27 = bitcast i8* %26 to i32*, !dbg !1943
  %28 = load i32* %27, align 4, !dbg !1943
  %29 = or i32 %28, 256, !dbg !1943
  store i32 %29, i32* %27, align 4, !dbg !1943
  br label %return, !dbg !1945

if.end47:                                         ; preds = %cont
  %out_bufs = getelementptr inbounds %struct.ngx_http_upstream_s* %2, i32 0, i32 12, !dbg !1946
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s** %out_bufs}, i64 0, metadata !1638), !dbg !1946
  br label %for.cond, !dbg !1946

for.cond:                                         ; preds = %for.cond, %if.end47
  %cl.0.in = phi %struct.ngx_chain_s** [ %out_bufs, %if.end47 ], [ %next, %for.cond ]
  %cl.0 = load %struct.ngx_chain_s** %cl.0.in, align 4, !dbg !1946
  %tobool = icmp eq %struct.ngx_chain_s* %cl.0, null, !dbg !1946
  %next = getelementptr inbounds %struct.ngx_chain_s* %cl.0, i32 0, i32 1, !dbg !1948
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s** %next}, i64 0, metadata !1638), !dbg !1948
  br i1 %tobool, label %for.end, label %for.cond, !dbg !1946

for.end:                                          ; preds = %for.cond
  %30 = load %struct.ngx_http_request_s** %0, align 4, !dbg !1950, !tbaa !1786
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %30, i32 0, i32 11, !dbg !1950
  %31 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1950, !tbaa !1786
  %free_bufs = getelementptr inbounds %struct.ngx_http_upstream_s* %2, i32 0, i32 14, !dbg !1950
  %call51 = tail call %struct.ngx_chain_s* @ngx_chain_get_free_buf(%struct.ngx_pool_s* %31, %struct.ngx_chain_s** %free_bufs) nounwind, !dbg !1950
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call51}, i64 0, metadata !1637), !dbg !1950
  %cmp52 = icmp eq %struct.ngx_chain_s* %call51, null, !dbg !1951
  br i1 %cmp52, label %return, label %cont59, !dbg !1951

cont59:                                           ; preds = %for.end
  %buf = getelementptr inbounds %struct.ngx_chain_s* %call51, i32 0, i32 0, !dbg !1952
  %32 = load %struct.ngx_buf_s** %buf, align 4, !dbg !1952, !tbaa !1786
  %33 = getelementptr %struct.ngx_buf_s* %32, i32 0, i32 9, !dbg !1952
  %34 = bitcast i8* %33 to i32*, !dbg !1952
  %35 = load i32* %34, align 4, !dbg !1952
  %36 = or i32 %35, 32, !dbg !1952
  store i32 %36, i32* %34, align 4, !dbg !1952
  %37 = load %struct.ngx_buf_s** %buf, align 4, !dbg !1953, !tbaa !1786
  %38 = getelementptr %struct.ngx_buf_s* %37, i32 0, i32 9, !dbg !1953
  %39 = bitcast i8* %38 to i32*, !dbg !1953
  %40 = load i32* %39, align 4, !dbg !1953
  %41 = or i32 %40, 2, !dbg !1953
  store i32 %41, i32* %39, align 4, !dbg !1953
  store %struct.ngx_chain_s* %call51, %struct.ngx_chain_s** %cl.0.in, align 4, !dbg !1954, !tbaa !1786
  %last65 = getelementptr inbounds %struct.ngx_http_upstream_s* %2, i32 0, i32 10, i32 1, !dbg !1955
  %42 = load i8** %last65, align 4, !dbg !1955, !tbaa !1786
  tail call void @llvm.dbg.value(metadata !{i8* %42}, i64 0, metadata !1635), !dbg !1955
  %43 = load %struct.ngx_buf_s** %buf, align 4, !dbg !1956, !tbaa !1786
  %pos = getelementptr inbounds %struct.ngx_buf_s* %43, i32 0, i32 0, !dbg !1956
  store i8* %42, i8** %pos, align 4, !dbg !1956, !tbaa !1786
  %44 = load i8** %last65, align 4, !dbg !1957, !tbaa !1786
  %add.ptr68 = getelementptr inbounds i8* %44, i32 %bytes, !dbg !1957
  store i8* %add.ptr68, i8** %last65, align 4, !dbg !1957, !tbaa !1786
  %45 = load %struct.ngx_buf_s** %buf, align 4, !dbg !1958, !tbaa !1786
  %last71 = getelementptr inbounds %struct.ngx_buf_s* %45, i32 0, i32 1, !dbg !1958
  store i8* %add.ptr68, i8** %last71, align 4, !dbg !1958, !tbaa !1786
  %tag = getelementptr inbounds %struct.ngx_http_upstream_s* %2, i32 0, i32 5, i32 9, !dbg !1959
  %46 = load i8** %tag, align 4, !dbg !1959, !tbaa !1786
  %47 = load %struct.ngx_buf_s** %buf, align 4, !dbg !1959, !tbaa !1786
  %tag73 = getelementptr inbounds %struct.ngx_buf_s* %47, i32 0, i32 6, !dbg !1959
  store i8* %46, i8** %tag73, align 4, !dbg !1959, !tbaa !1786
  %48 = load i64* %length, align 4, !dbg !1960, !tbaa !1896
  %49 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %48, i64 7), !dbg !1960
  %50 = extractvalue { i64, i1 } %49, 0, !dbg !1960
  %51 = extractvalue { i64, i1 } %49, 1, !dbg !1960
  br i1 %51, label %ioc_bb80, label %cont81, !dbg !1960

ioc_bb80:                                         ; preds = %cont59
  tail call void @__ioc_report_sub_overflow(i32 269, i32 40, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %48, i64 7, i8 14) nounwind, !dbg !1960
  br label %cont81, !dbg !1960

cont81:                                           ; preds = %cont59, %ioc_bb80
  %.off = add i64 %50, 2147483648, !dbg !1960
  %52 = icmp ult i64 %.off, 4294967296, !dbg !1960
  br i1 %52, label %cont84, label %ioc_bb83, !dbg !1960

ioc_bb83:                                         ; preds = %cont81
  tail call void @__ioc_report_conversion(i32 269, i32 27, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i64 %50, i8 1) nounwind, !dbg !1960
  br label %cont84, !dbg !1960

cont84:                                           ; preds = %ioc_bb83, %cont81
  %conv85 = trunc i64 %50 to i32, !dbg !1960
  %cmp86 = icmp slt i32 %conv85, %bytes, !dbg !1960
  br i1 %cmp86, label %if.end93, label %if.then88, !dbg !1960

if.then88:                                        ; preds = %cont84
  %conv89 = sext i32 %bytes to i64, !dbg !1961
  %53 = load i64* %length, align 4, !dbg !1961, !tbaa !1896
  %54 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %53, i64 %conv89), !dbg !1961
  %55 = extractvalue { i64, i1 } %54, 0, !dbg !1961
  %56 = extractvalue { i64, i1 } %54, 1, !dbg !1961
  br i1 %56, label %ioc_bb91, label %cont92, !dbg !1961

ioc_bb91:                                         ; preds = %if.then88
  tail call void @__ioc_report_sub_overflow(i32 270, i32 17, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %53, i64 %conv89, i8 14) nounwind, !dbg !1961
  br label %cont92, !dbg !1961

cont92:                                           ; preds = %if.then88, %ioc_bb91
  store i64 %55, i64* %length, align 4, !dbg !1961, !tbaa !1896
  br label %return, !dbg !1963

if.end93:                                         ; preds = %cont84
  %57 = load i64* %length, align 4, !dbg !1964, !tbaa !1896
  %58 = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %57, i64 7), !dbg !1964
  %59 = extractvalue { i64, i1 } %58, 0, !dbg !1964
  %60 = extractvalue { i64, i1 } %58, 1, !dbg !1964
  br i1 %60, label %ioc_bb100, label %cont101, !dbg !1964

ioc_bb100:                                        ; preds = %if.end93
  tail call void @__ioc_report_sub_overflow(i32 273, i32 23, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @8, i32 0, i32 0), i64 %57, i64 7, i8 14) nounwind, !dbg !1964
  br label %cont101, !dbg !1964

cont101:                                          ; preds = %if.end93, %ioc_bb100
  %idx.ext = trunc i64 %59 to i32, !dbg !1964
  %add.ptr102 = getelementptr inbounds i8* %42, i32 %idx.ext, !dbg !1964
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr102}, i64 0, metadata !1635), !dbg !1964
  %61 = load i8** %last65, align 4, !dbg !1965, !tbaa !1786
  %sub.ptr.lhs.cast = ptrtoint i8* %61 to i32, !dbg !1965
  %sub.ptr.rhs.cast = ptrtoint i8* %add.ptr102 to i32, !dbg !1965
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1965
  %62 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1965
  br i1 %62, label %cont106, label %ioc_bb105, !dbg !1965

ioc_bb105:                                        ; preds = %cont101
  %63 = sext i32 %sub.ptr.sub to i64, !dbg !1965
  tail call void @__ioc_report_conversion(i32 274, i32 7, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %63, i8 1) nounwind, !dbg !1965
  br label %cont106, !dbg !1965

cont106:                                          ; preds = %ioc_bb105, %cont101
  %call107 = tail call i32 @strncmp(i8* %add.ptr102, i8* getelementptr inbounds ([8 x i8]* @ngx_http_memcached_end, i32 0, i32 0), i32 %sub.ptr.sub) nounwind readonly, !dbg !1965
  %cmp108 = icmp eq i32 %call107, 0, !dbg !1965
  br i1 %cmp108, label %if.end133, label %cont116, !dbg !1965

cont116:                                          ; preds = %cont106
  %64 = load %struct.ngx_http_request_s** %0, align 4, !dbg !1966, !tbaa !1786
  %connection112 = getelementptr inbounds %struct.ngx_http_request_s* %64, i32 0, i32 1, !dbg !1966
  %65 = load %struct.ngx_connection_s** %connection112, align 4, !dbg !1966, !tbaa !1786
  %log113 = getelementptr inbounds %struct.ngx_connection_s* %65, i32 0, i32 10, !dbg !1966
  %66 = load %struct.ngx_log_s** %log113, align 4, !dbg !1966, !tbaa !1786
  %log_level114 = getelementptr inbounds %struct.ngx_log_s* %66, i32 0, i32 0, !dbg !1966
  %67 = load i32* %log_level114, align 4, !dbg !1966, !tbaa !1796
  %cmp117 = icmp ugt i32 %67, 3, !dbg !1966
  br i1 %cmp117, label %cont121, label %if.end125, !dbg !1966

cont121:                                          ; preds = %cont116
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %66, i32 0, i8* getelementptr inbounds ([31 x i8]* @.str15, i32 0, i32 0)) nounwind, !dbg !1968
  br label %if.end125, !dbg !1968

if.end125:                                        ; preds = %cont121, %cont116
  store i8* %add.ptr102, i8** %last65, align 4, !dbg !1969, !tbaa !1786
  %68 = load %struct.ngx_buf_s** %buf, align 4, !dbg !1970, !tbaa !1786
  %last128 = getelementptr inbounds %struct.ngx_buf_s* %68, i32 0, i32 1, !dbg !1970
  store i8* %add.ptr102, i8** %last128, align 4, !dbg !1970, !tbaa !1786
  store i64 0, i64* %length, align 4, !dbg !1971, !tbaa !1896
  store i32 0, i32* %rest, align 4, !dbg !1972, !tbaa !1796
  br label %return, !dbg !1973

if.end133:                                        ; preds = %cont106
  %69 = load i8** %last65, align 4, !dbg !1974, !tbaa !1786
  %sub.ptr.lhs.cast135 = ptrtoint i8* %69 to i32, !dbg !1974
  %sub.ptr.sub137 = sub i32 %sub.ptr.lhs.cast135, %sub.ptr.rhs.cast, !dbg !1974
  %70 = icmp sgt i32 %sub.ptr.sub137, -1, !dbg !1974
  br i1 %70, label %cont140, label %ioc_bb139, !dbg !1974

ioc_bb139:                                        ; preds = %if.end133
  %71 = sext i32 %sub.ptr.sub137 to i64, !dbg !1974
  tail call void @__ioc_report_conversion(i32 283, i32 18, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 %71, i8 1) nounwind, !dbg !1974
  br label %cont140, !dbg !1974

cont140:                                          ; preds = %ioc_bb139, %if.end133
  %72 = load i32* %rest, align 4, !dbg !1974, !tbaa !1796
  %73 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %72, i32 %sub.ptr.sub137), !dbg !1974
  %74 = extractvalue { i32, i1 } %73, 0, !dbg !1974
  %75 = extractvalue { i32, i1 } %73, 1, !dbg !1974
  br i1 %75, label %ioc_bb142, label %cont143, !dbg !1974

ioc_bb142:                                        ; preds = %cont140
  %76 = zext i32 %sub.ptr.sub137 to i64, !dbg !1974
  %77 = zext i32 %72 to i64, !dbg !1974
  tail call void @__ioc_report_sub_overflow(i32 283, i32 15, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %77, i64 %76, i8 5) nounwind, !dbg !1974
  br label %cont143, !dbg !1974

cont143:                                          ; preds = %cont140, %ioc_bb142
  store i32 %74, i32* %rest, align 4, !dbg !1974, !tbaa !1796
  store i8* %add.ptr102, i8** %last65, align 4, !dbg !1975, !tbaa !1786
  %78 = load %struct.ngx_buf_s** %buf, align 4, !dbg !1976, !tbaa !1786
  %last146 = getelementptr inbounds %struct.ngx_buf_s* %78, i32 0, i32 1, !dbg !1976
  store i8* %add.ptr102, i8** %last146, align 4, !dbg !1976, !tbaa !1786
  %conv148 = zext i32 %74 to i64, !dbg !1977
  store i64 %conv148, i64* %length, align 4, !dbg !1977, !tbaa !1896
  %cmp151 = icmp eq i32 %74, 0, !dbg !1978
  br i1 %cmp151, label %cont155, label %return, !dbg !1978

cont155:                                          ; preds = %cont143
  %79 = getelementptr %struct.ngx_http_upstream_s* %2, i32 0, i32 32, !dbg !1979
  %80 = bitcast i8* %79 to i32*, !dbg !1979
  %81 = load i32* %80, align 4, !dbg !1979
  %82 = or i32 %81, 256, !dbg !1979
  store i32 %82, i32* %80, align 4, !dbg !1979
  br label %return, !dbg !1981

return:                                           ; preds = %cont143, %cont155, %for.end, %cont39, %cont45, %if.end125, %cont92, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %cont92 ], [ 0, %if.end125 ], [ 0, %cont45 ], [ 0, %cont39 ], [ -1, %for.end ], [ 0, %cont155 ], [ 0, %cont143 ]
  ret i32 %retval.0, !dbg !1982
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @ngx_http_upstream_init(%struct.ngx_http_request_s*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) nounwind readnone

declare %struct.ngx_chain_s* @ngx_chain_get_free_buf(%struct.ngx_pool_s*, %struct.ngx_chain_s**)

declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) nounwind readnone

declare i64 @ngx_atoof(i8*, i32)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare %struct.ngx_variable_value_t* @ngx_http_get_indexed_variable(%struct.ngx_http_request_s*, i32)

declare i32 @ngx_escape_uri(i8*, i8*, i32, i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s*, i32)

declare %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s*)

define internal i8* @ngx_http_memcached_create_loc_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1704), !dbg !1983
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1984
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1984, !tbaa !1786
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 180) nounwind, !dbg !1984
  %cmp = icmp eq i8* %call, null, !dbg !1985
  br i1 %cmp, label %return, label %ioc_bb1, !dbg !1985

ioc_bb1:                                          ; preds = %entry
  tail call void @__ioc_report_conversion(i32 321, i32 52, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1986
  %connect_timeout = getelementptr inbounds i8* %call, i32 4, !dbg !1986
  %1 = bitcast i8* %connect_timeout to i32*, !dbg !1986
  store i32 -1, i32* %1, align 4, !dbg !1986, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 322, i32 49, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1987
  %send_timeout = getelementptr inbounds i8* %call, i32 8, !dbg !1987
  %2 = bitcast i8* %send_timeout to i32*, !dbg !1987
  store i32 -1, i32* %2, align 4, !dbg !1987, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 323, i32 49, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1988
  %read_timeout = getelementptr inbounds i8* %call, i32 12, !dbg !1988
  %3 = bitcast i8* %read_timeout to i32*, !dbg !1988
  store i32 -1, i32* %3, align 4, !dbg !1988, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 324, i32 44, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !1989
  %buffer_size = getelementptr inbounds i8* %call, i32 24, !dbg !1989
  %4 = bitcast i8* %buffer_size to i32*, !dbg !1989
  store i32 -1, i32* %4, align 4, !dbg !1989, !tbaa !1796
  %cyclic_temp_file = getelementptr inbounds i8* %call, i32 92, !dbg !1990
  %5 = bitcast i8* %cyclic_temp_file to i32*, !dbg !1990
  store i32 0, i32* %5, align 4, !dbg !1990, !tbaa !1796
  %buffering = getelementptr inbounds i8* %call, i32 72, !dbg !1991
  %6 = bitcast i8* %buffering to i32*, !dbg !1991
  store i32 0, i32* %6, align 4, !dbg !1991, !tbaa !1796
  %ignore_client_abort = getelementptr inbounds i8* %call, i32 84, !dbg !1992
  %7 = bitcast i8* %ignore_client_abort to i32*, !dbg !1992
  store i32 0, i32* %7, align 4, !dbg !1992, !tbaa !1796
  %send_lowat = getelementptr inbounds i8* %call, i32 20, !dbg !1993
  %8 = bitcast i8* %send_lowat to i32*, !dbg !1993
  store i32 0, i32* %8, align 4, !dbg !1993, !tbaa !1796
  %bufs = getelementptr inbounds i8* %call, i32 52, !dbg !1994
  %num = bitcast i8* %bufs to i32*, !dbg !1994
  store i32 0, i32* %num, align 4, !dbg !1994, !tbaa !1796
  %busy_buffers_size = getelementptr inbounds i8* %call, i32 28, !dbg !1995
  %9 = bitcast i8* %busy_buffers_size to i32*, !dbg !1995
  store i32 0, i32* %9, align 4, !dbg !1995, !tbaa !1796
  %max_temp_file_size = getelementptr inbounds i8* %call, i32 32, !dbg !1996
  %10 = bitcast i8* %max_temp_file_size to i32*, !dbg !1996
  store i32 0, i32* %10, align 4, !dbg !1996, !tbaa !1796
  %temp_file_write_size = getelementptr inbounds i8* %call, i32 36, !dbg !1997
  %11 = bitcast i8* %temp_file_write_size to i32*, !dbg !1997
  store i32 0, i32* %11, align 4, !dbg !1997, !tbaa !1796
  %intercept_errors = getelementptr inbounds i8* %call, i32 88, !dbg !1998
  %12 = bitcast i8* %intercept_errors to i32*, !dbg !1998
  store i32 1, i32* %12, align 4, !dbg !1998, !tbaa !1796
  %bf.field.offs = getelementptr i8* %call, i32 164, !dbg !1999
  %13 = bitcast i8* %bf.field.offs to i32*, !dbg !1999
  %14 = load i32* %13, align 4, !dbg !1999
  %15 = or i32 %14, 4, !dbg !1999
  store i32 %15, i32* %13, align 4, !dbg !1999
  %pass_request_headers = getelementptr inbounds i8* %call, i32 76, !dbg !2000
  %16 = bitcast i8* %pass_request_headers to i32*, !dbg !2000
  store i32 0, i32* %16, align 4, !dbg !2000, !tbaa !1796
  %pass_request_body = getelementptr inbounds i8* %call, i32 80, !dbg !2001
  %17 = bitcast i8* %pass_request_body to i32*, !dbg !2001
  store i32 0, i32* %17, align 4, !dbg !2001, !tbaa !1796
  %index = getelementptr inbounds i8* %call, i32 176, !dbg !2002
  %18 = bitcast i8* %index to i32*, !dbg !2002
  store i32 -1, i32* %18, align 4, !dbg !2002, !tbaa !1796
  br label %return, !dbg !2003

return:                                           ; preds = %entry, %ioc_bb1
  %retval.0 = phi i8* [ %call, %ioc_bb1 ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2004
}

define internal noalias i8* @ngx_http_memcached_merge_loc_conf(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %parent, i8* nocapture %child) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1693), !dbg !2005
  tail call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !1694), !dbg !2005
  tail call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !1695), !dbg !2005
  %connect_timeout = getelementptr inbounds i8* %child, i32 4, !dbg !2006
  %0 = bitcast i8* %connect_timeout to i32*, !dbg !2006
  %1 = load i32* %0, align 4, !dbg !2006, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 346, i32 57, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2006
  %cmp = icmp eq i32 %1, -1, !dbg !2006
  br i1 %cmp, label %if.then, label %if.end, !dbg !2006

if.then:                                          ; preds = %entry
  %connect_timeout4 = getelementptr inbounds i8* %parent, i32 4, !dbg !2007
  %2 = bitcast i8* %connect_timeout4 to i32*, !dbg !2007
  %3 = load i32* %2, align 4, !dbg !2007, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 347, i32 91, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2007
  %cmp10 = icmp eq i32 %3, -1, !dbg !2007
  br i1 %cmp10, label %cond.end, label %cond.false, !dbg !2007

cond.false:                                       ; preds = %if.then
  %4 = load i32* %2, align 4, !dbg !2007, !tbaa !1796
  br label %cond.end, !dbg !2007

cond.end:                                         ; preds = %if.then, %cond.false
  %cond = phi i32 [ %4, %cond.false ], [ 60000, %if.then ], !dbg !2007
  store i32 %cond, i32* %0, align 4, !dbg !2007, !tbaa !1796
  br label %if.end, !dbg !2009

if.end:                                           ; preds = %cond.end, %entry
  %send_timeout = getelementptr inbounds i8* %child, i32 8, !dbg !2010
  %5 = bitcast i8* %send_timeout to i32*, !dbg !2010
  %6 = load i32* %5, align 4, !dbg !2010, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 350, i32 54, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2010
  %cmp23 = icmp eq i32 %6, -1, !dbg !2010
  br i1 %cmp23, label %if.then24, label %if.end43, !dbg !2010

if.then24:                                        ; preds = %if.end
  %send_timeout26 = getelementptr inbounds i8* %parent, i32 8, !dbg !2011
  %7 = bitcast i8* %send_timeout26 to i32*, !dbg !2011
  %8 = load i32* %7, align 4, !dbg !2011, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 351, i32 85, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2011
  %cmp32 = icmp eq i32 %8, -1, !dbg !2011
  br i1 %cmp32, label %cond.end39, label %cond.false36, !dbg !2011

cond.false36:                                     ; preds = %if.then24
  %9 = load i32* %7, align 4, !dbg !2011, !tbaa !1796
  br label %cond.end39, !dbg !2011

cond.end39:                                       ; preds = %if.then24, %cond.false36
  %cond40 = phi i32 [ %9, %cond.false36 ], [ 60000, %if.then24 ], !dbg !2011
  store i32 %cond40, i32* %5, align 4, !dbg !2011, !tbaa !1796
  br label %if.end43, !dbg !2013

if.end43:                                         ; preds = %cond.end39, %if.end
  %read_timeout = getelementptr inbounds i8* %child, i32 12, !dbg !2014
  %10 = bitcast i8* %read_timeout to i32*, !dbg !2014
  %11 = load i32* %10, align 4, !dbg !2014, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 354, i32 54, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2014
  %cmp50 = icmp eq i32 %11, -1, !dbg !2014
  br i1 %cmp50, label %if.then51, label %if.end70, !dbg !2014

if.then51:                                        ; preds = %if.end43
  %read_timeout53 = getelementptr inbounds i8* %parent, i32 12, !dbg !2015
  %12 = bitcast i8* %read_timeout53 to i32*, !dbg !2015
  %13 = load i32* %12, align 4, !dbg !2015, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 355, i32 85, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2015
  %cmp59 = icmp eq i32 %13, -1, !dbg !2015
  br i1 %cmp59, label %cond.end66, label %cond.false63, !dbg !2015

cond.false63:                                     ; preds = %if.then51
  %14 = load i32* %12, align 4, !dbg !2015, !tbaa !1796
  br label %cond.end66, !dbg !2015

cond.end66:                                       ; preds = %if.then51, %cond.false63
  %cond67 = phi i32 [ %14, %cond.false63 ], [ 60000, %if.then51 ], !dbg !2015
  store i32 %cond67, i32* %10, align 4, !dbg !2015, !tbaa !1796
  br label %if.end70, !dbg !2017

if.end70:                                         ; preds = %cond.end66, %if.end43
  %buffer_size = getelementptr inbounds i8* %child, i32 24, !dbg !2018
  %15 = bitcast i8* %buffer_size to i32*, !dbg !2018
  %16 = load i32* %15, align 4, !dbg !2018, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 358, i32 49, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2018
  %cmp77 = icmp eq i32 %16, -1, !dbg !2018
  br i1 %cmp77, label %if.then78, label %if.end95, !dbg !2018

if.then78:                                        ; preds = %if.end70
  %buffer_size80 = getelementptr inbounds i8* %parent, i32 24, !dbg !2019
  %17 = bitcast i8* %buffer_size80 to i32*, !dbg !2019
  %18 = load i32* %17, align 4, !dbg !2019, !tbaa !1796
  tail call void @__ioc_report_conversion(i32 359, i32 79, i8* getelementptr inbounds ([45 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @12, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2019
  %cmp86 = icmp eq i32 %18, -1, !dbg !2019
  %cond92.in = select i1 %cmp86, i32* @ngx_pagesize, i32* %17, !dbg !2019
  %cond92 = load i32* %cond92.in, align 4, !dbg !2019
  store i32 %cond92, i32* %15, align 4, !dbg !2019, !tbaa !1796
  br label %if.end95, !dbg !2021

if.end95:                                         ; preds = %if.then78, %if.end70
  %next_upstream = getelementptr inbounds i8* %child, i32 64, !dbg !2022
  %19 = bitcast i8* %next_upstream to i32*, !dbg !2022
  %20 = load i32* %19, align 4, !dbg !2022, !tbaa !1796
  %cmp99 = icmp eq i32 %20, 0, !dbg !2022
  br i1 %cmp99, label %if.then100, label %if.end116, !dbg !2022

if.then100:                                       ; preds = %if.end95
  %next_upstream102 = getelementptr inbounds i8* %parent, i32 64, !dbg !2023
  %21 = bitcast i8* %next_upstream102 to i32*, !dbg !2023
  %22 = load i32* %21, align 4, !dbg !2023, !tbaa !1796
  %cmp105 = icmp eq i32 %22, 0, !dbg !2023
  %. = select i1 %cmp105, i32 7, i32 %22, !dbg !2023
  store i32 %., i32* %19, align 4, !dbg !2023, !tbaa !1796
  br label %if.end116, !dbg !2025

if.end116:                                        ; preds = %if.then100, %if.end95
  %23 = phi i32 [ %., %if.then100 ], [ %20, %if.end95 ], !dbg !2026
  %tobool = icmp slt i32 %23, 0, !dbg !2026
  br i1 %tobool, label %cont121, label %if.end124, !dbg !2026

cont121:                                          ; preds = %if.end116
  store i32 -2147483647, i32* %19, align 4, !dbg !2027, !tbaa !1796
  br label %if.end124, !dbg !2029

if.end124:                                        ; preds = %cont121, %if.end116
  %upstream126 = bitcast i8* %child to %struct.ngx_http_upstream_srv_conf_s**, !dbg !2030
  %24 = load %struct.ngx_http_upstream_srv_conf_s** %upstream126, align 4, !dbg !2030, !tbaa !1786
  %cmp127 = icmp eq %struct.ngx_http_upstream_srv_conf_s* %24, null, !dbg !2030
  br i1 %cmp127, label %if.then128, label %if.end133, !dbg !2030

if.then128:                                       ; preds = %if.end124
  %upstream130 = bitcast i8* %parent to %struct.ngx_http_upstream_srv_conf_s**, !dbg !2031
  %25 = load %struct.ngx_http_upstream_srv_conf_s** %upstream130, align 4, !dbg !2031, !tbaa !1786
  store %struct.ngx_http_upstream_srv_conf_s* %25, %struct.ngx_http_upstream_srv_conf_s** %upstream126, align 4, !dbg !2031, !tbaa !1786
  br label %if.end133, !dbg !2033

if.end133:                                        ; preds = %if.then128, %if.end124
  %index = getelementptr inbounds i8* %child, i32 176, !dbg !2034
  %26 = bitcast i8* %index to i32*, !dbg !2034
  %27 = load i32* %26, align 4, !dbg !2034, !tbaa !1796
  %cmp136 = icmp eq i32 %27, -1, !dbg !2034
  br i1 %cmp136, label %if.then137, label %if.end140, !dbg !2034

if.then137:                                       ; preds = %if.end133
  %index138 = getelementptr inbounds i8* %parent, i32 176, !dbg !2035
  %28 = bitcast i8* %index138 to i32*, !dbg !2035
  %29 = load i32* %28, align 4, !dbg !2035, !tbaa !1796
  store i32 %29, i32* %26, align 4, !dbg !2035, !tbaa !1796
  br label %if.end140, !dbg !2037

if.end140:                                        ; preds = %if.then137, %if.end133
  ret i8* null, !dbg !2038
}

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_memcached_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1707} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !1612, metadata !1628, metadata !1640, metadata !1647, metadata !1652, metadata !1656, metadata !1672, metadata !1676, metadata !1688, metadata !1699}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_pass", metadata !"ngx_http_memcached_pass", metadata !"", metadata !6, i32 378, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_memcached_pass, null, null, metadata !457, i32 379} ; [ DW_TAG_subprogram ] [line 378] [local] [def] [scope 379] [ngx_http_memcached_pass]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_memcached_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
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
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !1585, metadata !1586, metadata !1611}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16777594, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 378]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33554810, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 378]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50332026, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 378]
!462 = metadata !{i32 786688, metadata !463, metadata !"mlcf", metadata !6, i32 380, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mlcf] [line 380]
!463 = metadata !{i32 786443, metadata !5, i32 379, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_memcached_loc_conf_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_http_memcached_loc_conf_t", metadata !6, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_http_memcached_loc_conf_t] [line 10, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 8, i64 1440, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 8, size 1440, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !1584}
!468 = metadata !{i32 786445, metadata !466, metadata !"upstream", metadata !6, i32 9, i64 1408, i64 32, i64 0, i32 0, metadata !469} ; [ DW_TAG_member ] [upstream] [line 9, size 1408, align 32, offset 0] [from ngx_http_upstream_conf_t]
!469 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !6, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !470} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!470 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !472, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!471 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!472 = metadata !{metadata !473, metadata !1542, metadata !1543, metadata !1544, metadata !1545, metadata !1546, metadata !1547, metadata !1548, metadata !1549, metadata !1550, metadata !1551, metadata !1552, metadata !1553, metadata !1554, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572, metadata !1573, metadata !1574, metadata !1575, metadata !1576, metadata !1577, metadata !1578, metadata !1579, metadata !1580, metadata !1581, metadata !1582, metadata !1583}
!473 = metadata !{i32 786445, metadata !470, metadata !"upstream", metadata !471, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !474} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!474 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !475} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!475 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !471, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !476} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!476 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !471, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !477, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!477 = metadata !{metadata !478, metadata !1534, metadata !1535, metadata !1536, metadata !1537, metadata !1538, metadata !1539, metadata !1540, metadata !1541}
!478 = metadata !{i32 786445, metadata !476, metadata !"peer", metadata !471, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !479} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!479 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !471, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !480} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!480 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !481, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!481 = metadata !{metadata !482, metadata !490, metadata !1533}
!482 = metadata !{i32 786445, metadata !480, metadata !"init_upstream", metadata !471, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !483} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!483 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !471, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !484} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!484 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !485} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!486 = metadata !{metadata !487, metadata !11, metadata !474}
!487 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !488} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!488 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !489} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!489 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!490 = metadata !{i32 786445, metadata !480, metadata !"init", metadata !471, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !491} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!491 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !471, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !492} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!492 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !493} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!493 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !494, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!494 = metadata !{metadata !487, metadata !495, metadata !474}
!495 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !496} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!496 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !471, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !497} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!497 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !498, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !499, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!498 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!499 = metadata !{metadata !500, metadata !502, metadata !503, metadata !504, metadata !505, metadata !506, metadata !507, metadata !514, metadata !515, metadata !703, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1076, metadata !1105, metadata !1117, metadata !1118, metadata !1119, metadata !1120, metadata !1121, metadata !1122, metadata !1123, metadata !1124, metadata !1125, metadata !1126, metadata !1127, metadata !1128, metadata !1129, metadata !1130, metadata !1131, metadata !1132, metadata !1140, metadata !1151, metadata !1158, metadata !1403, metadata !1404, metadata !1405, metadata !1406, metadata !1418, metadata !1419, metadata !1421, metadata !1422, metadata !1423, metadata !1424, metadata !1425, metadata !1426, metadata !1438, metadata !1443, metadata !1451, metadata !1452, metadata !1453, metadata !1454, metadata !1455, metadata !1456, metadata !1457, metadata !1458, metadata !1459, metadata !1460, metadata !1461, metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466, metadata !1467, metadata !1468, metadata !1469, metadata !1470, metadata !1471, metadata !1472, metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1477, metadata !1478, metadata !1479, metadata !1480, metadata !1481, metadata !1482, metadata !1483, metadata !1484, metadata !1485, metadata !1486, metadata !1487, metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1493, metadata !1494, metadata !1495, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1501, metadata !1502, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508, metadata !1509, metadata !1510, metadata !1514, metadata !1515, metadata !1516, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1531, metadata !1532}
!500 = metadata !{i32 786445, metadata !497, metadata !"signature", metadata !498, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !501} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!501 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !498, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!502 = metadata !{i32 786445, metadata !497, metadata !"connection", metadata !498, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!503 = metadata !{i32 786445, metadata !497, metadata !"ctx", metadata !498, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!504 = metadata !{i32 786445, metadata !497, metadata !"main_conf", metadata !498, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!505 = metadata !{i32 786445, metadata !497, metadata !"srv_conf", metadata !498, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!506 = metadata !{i32 786445, metadata !497, metadata !"loc_conf", metadata !498, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!507 = metadata !{i32 786445, metadata !497, metadata !"read_event_handler", metadata !498, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !508} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!508 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !498, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !509} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!509 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !510} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!511 = metadata !{null, metadata !512}
!512 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !513} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!513 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !498, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !497} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!514 = metadata !{i32 786445, metadata !497, metadata !"write_event_handler", metadata !498, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !508} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!515 = metadata !{i32 786445, metadata !497, metadata !"cache", metadata !498, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !516} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!516 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !517} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!517 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !498, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !518} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!518 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !519, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !520, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!519 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!520 = metadata !{metadata !521, metadata !522, metadata !523, metadata !524, metadata !528, metadata !531, metadata !533, metadata !534, metadata !535, metadata !536, metadata !537, metadata !538, metadata !539, metadata !540, metadata !541, metadata !542, metadata !543, metadata !671, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700, metadata !701, metadata !702}
!521 = metadata !{i32 786445, metadata !518, metadata !"file", metadata !519, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!522 = metadata !{i32 786445, metadata !518, metadata !"keys", metadata !519, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!523 = metadata !{i32 786445, metadata !518, metadata !"crc32", metadata !519, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !501} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!524 = metadata !{i32 786445, metadata !518, metadata !"key", metadata !519, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !525} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!525 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !526, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!526 = metadata !{metadata !527}
!527 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!528 = metadata !{i32 786445, metadata !518, metadata !"uniq", metadata !519, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !529} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!529 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !519, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !530} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!530 = metadata !{i32 786454, null, metadata !"ino_t", metadata !519, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!531 = metadata !{i32 786445, metadata !518, metadata !"valid_sec", metadata !519, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !532} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!532 = metadata !{i32 786454, null, metadata !"time_t", metadata !519, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!533 = metadata !{i32 786445, metadata !518, metadata !"last_modified", metadata !519, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !532} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!534 = metadata !{i32 786445, metadata !518, metadata !"date", metadata !519, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !532} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!535 = metadata !{i32 786445, metadata !518, metadata !"header_start", metadata !519, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!536 = metadata !{i32 786445, metadata !518, metadata !"body_start", metadata !519, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!537 = metadata !{i32 786445, metadata !518, metadata !"length", metadata !519, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!538 = metadata !{i32 786445, metadata !518, metadata !"fs_size", metadata !519, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!539 = metadata !{i32 786445, metadata !518, metadata !"min_uses", metadata !519, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!540 = metadata !{i32 786445, metadata !518, metadata !"error", metadata !519, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!541 = metadata !{i32 786445, metadata !518, metadata !"valid_msec", metadata !519, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!542 = metadata !{i32 786445, metadata !518, metadata !"buf", metadata !519, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!543 = metadata !{i32 786445, metadata !518, metadata !"file_cache", metadata !519, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !544} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!544 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!545 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !519, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !546} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!546 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !519, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !547, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!547 = metadata !{metadata !548, metadata !571, metadata !618, metadata !639, metadata !640, metadata !641, metadata !642, metadata !643, metadata !644, metadata !645, metadata !646, metadata !647}
!548 = metadata !{i32 786445, metadata !546, metadata !"sh", metadata !519, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !549} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!549 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!550 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !519, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!551 = metadata !{i32 786451, null, metadata !"", metadata !519, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !552, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!552 = metadata !{metadata !553, metadata !564, metadata !565, metadata !566, metadata !569, metadata !570}
!553 = metadata !{i32 786445, metadata !551, metadata !"rbtree", metadata !519, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !554} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!554 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !519, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !555} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!555 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !556, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!556 = metadata !{metadata !557, metadata !558, metadata !559}
!557 = metadata !{i32 786445, metadata !555, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!558 = metadata !{i32 786445, metadata !555, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!559 = metadata !{i32 786445, metadata !555, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !560} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!560 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !561} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!561 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !562} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!563 = metadata !{null, metadata !266, metadata !266, metadata !266}
!564 = metadata !{i32 786445, metadata !551, metadata !"sentinel", metadata !519, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!565 = metadata !{i32 786445, metadata !551, metadata !"queue", metadata !519, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!566 = metadata !{i32 786445, metadata !551, metadata !"cold", metadata !519, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !567} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!567 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !519, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !568} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!568 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!569 = metadata !{i32 786445, metadata !551, metadata !"loading", metadata !519, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !567} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!570 = metadata !{i32 786445, metadata !551, metadata !"size", metadata !519, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!571 = metadata !{i32 786445, metadata !546, metadata !"shpool", metadata !519, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !572} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!572 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !573} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!573 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !519, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !574} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!574 = metadata !{i32 786451, null, metadata !"", metadata !575, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!575 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!576 = metadata !{metadata !577, metadata !584, metadata !585, metadata !586, metadata !594, metadata !595, metadata !596, metadata !597, metadata !614, metadata !615, metadata !616, metadata !617}
!577 = metadata !{i32 786445, metadata !574, metadata !"lock", metadata !575, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !578} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!578 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !575, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !579} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!579 = metadata !{i32 786451, null, metadata !"", metadata !580, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !581, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!580 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!581 = metadata !{metadata !582, metadata !583}
!582 = metadata !{i32 786445, metadata !579, metadata !"lock", metadata !580, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !567} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!583 = metadata !{i32 786445, metadata !579, metadata !"wait", metadata !580, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !567} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!584 = metadata !{i32 786445, metadata !574, metadata !"min_size", metadata !575, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!585 = metadata !{i32 786445, metadata !574, metadata !"min_shift", metadata !575, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!586 = metadata !{i32 786445, metadata !574, metadata !"pages", metadata !575, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !587} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!587 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !588} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!588 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !575, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !589} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!589 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !575, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !590, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!590 = metadata !{metadata !591, metadata !592, metadata !593}
!591 = metadata !{i32 786445, metadata !589, metadata !"slab", metadata !575, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!592 = metadata !{i32 786445, metadata !589, metadata !"next", metadata !575, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !587} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!593 = metadata !{i32 786445, metadata !589, metadata !"prev", metadata !575, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!594 = metadata !{i32 786445, metadata !574, metadata !"free", metadata !575, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !588} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!595 = metadata !{i32 786445, metadata !574, metadata !"start", metadata !575, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!596 = metadata !{i32 786445, metadata !574, metadata !"end", metadata !575, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!597 = metadata !{i32 786445, metadata !574, metadata !"mutex", metadata !575, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !598} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!598 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !575, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !599} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!599 = metadata !{i32 786451, null, metadata !"", metadata !580, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!600 = metadata !{metadata !601, metadata !603, metadata !604, metadata !605, metadata !613}
!601 = metadata !{i32 786445, metadata !599, metadata !"lock", metadata !580, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !602} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!602 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !567} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!603 = metadata !{i32 786445, metadata !599, metadata !"wait", metadata !580, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !602} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!604 = metadata !{i32 786445, metadata !599, metadata !"semaphore", metadata !580, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!605 = metadata !{i32 786445, metadata !599, metadata !"sem", metadata !580, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !606} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!606 = metadata !{i32 786454, null, metadata !"sem_t", metadata !580, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !607} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!607 = metadata !{i32 786455, null, metadata !"", metadata !608, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!608 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!609 = metadata !{metadata !610, metadata !612}
!610 = metadata !{i32 786445, metadata !607, metadata !"__size", metadata !608, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !611} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!611 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !526, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!612 = metadata !{i32 786445, metadata !607, metadata !"__align", metadata !608, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!613 = metadata !{i32 786445, metadata !599, metadata !"spin", metadata !580, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!614 = metadata !{i32 786445, metadata !574, metadata !"log_ctx", metadata !575, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!615 = metadata !{i32 786445, metadata !574, metadata !"zero", metadata !575, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!616 = metadata !{i32 786445, metadata !574, metadata !"data", metadata !575, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!617 = metadata !{i32 786445, metadata !574, metadata !"addr", metadata !575, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!618 = metadata !{i32 786445, metadata !546, metadata !"path", metadata !519, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !619} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!619 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !620} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!620 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !519, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !621} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!621 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !622, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!622 = metadata !{metadata !623, metadata !624, metadata !625, metadata !629, metadata !634, metadata !636, metadata !637, metadata !638}
!623 = metadata !{i32 786445, metadata !621, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!624 = metadata !{i32 786445, metadata !621, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!625 = metadata !{i32 786445, metadata !621, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !626} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!626 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !627, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!627 = metadata !{metadata !628}
!628 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!629 = metadata !{i32 786445, metadata !621, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !630} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!630 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !631} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!631 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !632} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!632 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !633, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!633 = metadata !{metadata !532, metadata !24}
!634 = metadata !{i32 786445, metadata !621, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !635} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!635 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!636 = metadata !{i32 786445, metadata !621, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!637 = metadata !{i32 786445, metadata !621, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!638 = metadata !{i32 786445, metadata !621, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!639 = metadata !{i32 786445, metadata !546, metadata !"max_size", metadata !519, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!640 = metadata !{i32 786445, metadata !546, metadata !"bsize", metadata !519, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!641 = metadata !{i32 786445, metadata !546, metadata !"inactive", metadata !519, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !532} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!642 = metadata !{i32 786445, metadata !546, metadata !"files", metadata !519, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!643 = metadata !{i32 786445, metadata !546, metadata !"loader_files", metadata !519, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!644 = metadata !{i32 786445, metadata !546, metadata !"last", metadata !519, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!645 = metadata !{i32 786445, metadata !546, metadata !"loader_sleep", metadata !519, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!646 = metadata !{i32 786445, metadata !546, metadata !"loader_threshold", metadata !519, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!647 = metadata !{i32 786445, metadata !546, metadata !"shm_zone", metadata !519, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !648} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!648 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !649} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!649 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !519, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !650} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!650 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !651, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!651 = metadata !{metadata !652, metadata !653, metadata !663, metadata !670}
!652 = metadata !{i32 786445, metadata !650, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!653 = metadata !{i32 786445, metadata !650, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !654} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!654 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !655} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!655 = metadata !{i32 786451, null, metadata !"", metadata !656, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !657, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!656 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!657 = metadata !{metadata !658, metadata !659, metadata !660, metadata !661, metadata !662}
!658 = metadata !{i32 786445, metadata !655, metadata !"addr", metadata !656, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!659 = metadata !{i32 786445, metadata !655, metadata !"size", metadata !656, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!660 = metadata !{i32 786445, metadata !655, metadata !"name", metadata !656, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!661 = metadata !{i32 786445, metadata !655, metadata !"log", metadata !656, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!662 = metadata !{i32 786445, metadata !655, metadata !"exists", metadata !656, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!663 = metadata !{i32 786445, metadata !650, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !664} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!664 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !665} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!665 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !666} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!666 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !667, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!667 = metadata !{metadata !487, metadata !668, metadata !24}
!668 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !669} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!669 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !650} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!670 = metadata !{i32 786445, metadata !650, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!671 = metadata !{i32 786445, metadata !518, metadata !"node", metadata !519, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !672} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!672 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !673} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!673 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !519, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !674} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!674 = metadata !{i32 786451, null, metadata !"", metadata !519, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!675 = metadata !{metadata !676, metadata !677, metadata !678, metadata !682, metadata !683, metadata !684, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693}
!676 = metadata !{i32 786445, metadata !674, metadata !"node", metadata !519, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!677 = metadata !{i32 786445, metadata !674, metadata !"queue", metadata !519, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!678 = metadata !{i32 786445, metadata !674, metadata !"key", metadata !519, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !679} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!679 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !680, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!680 = metadata !{metadata !681}
!681 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!682 = metadata !{i32 786445, metadata !674, metadata !"count", metadata !519, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!683 = metadata !{i32 786445, metadata !674, metadata !"uses", metadata !519, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!684 = metadata !{i32 786445, metadata !674, metadata !"valid_msec", metadata !519, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!685 = metadata !{i32 786445, metadata !674, metadata !"error", metadata !519, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!686 = metadata !{i32 786445, metadata !674, metadata !"exists", metadata !519, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!687 = metadata !{i32 786445, metadata !674, metadata !"updating", metadata !519, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!688 = metadata !{i32 786445, metadata !674, metadata !"deleting", metadata !519, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!689 = metadata !{i32 786445, metadata !674, metadata !"uniq", metadata !519, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !529} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!690 = metadata !{i32 786445, metadata !674, metadata !"expire", metadata !519, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !532} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!691 = metadata !{i32 786445, metadata !674, metadata !"valid_sec", metadata !519, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !532} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!692 = metadata !{i32 786445, metadata !674, metadata !"body_start", metadata !519, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!693 = metadata !{i32 786445, metadata !674, metadata !"fs_size", metadata !519, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!694 = metadata !{i32 786445, metadata !518, metadata !"lock_timeout", metadata !519, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!695 = metadata !{i32 786445, metadata !518, metadata !"wait_time", metadata !519, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!696 = metadata !{i32 786445, metadata !518, metadata !"wait_event", metadata !519, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!697 = metadata !{i32 786445, metadata !518, metadata !"lock", metadata !519, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!698 = metadata !{i32 786445, metadata !518, metadata !"waiting", metadata !519, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!699 = metadata !{i32 786445, metadata !518, metadata !"updated", metadata !519, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!700 = metadata !{i32 786445, metadata !518, metadata !"updating", metadata !519, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!701 = metadata !{i32 786445, metadata !518, metadata !"exists", metadata !519, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!702 = metadata !{i32 786445, metadata !518, metadata !"temp_file", metadata !519, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!703 = metadata !{i32 786445, metadata !497, metadata !"upstream", metadata !498, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !704} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!704 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !705} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!705 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !498, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !706} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!706 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !471, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !707, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!707 = metadata !{metadata !708, metadata !715, metadata !716, metadata !753, metadata !829, metadata !830, metadata !851, metadata !860, metadata !863, metadata !900, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980, metadata !984, metadata !988, metadata !989, metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !1001, metadata !1005, metadata !1009, metadata !1010, metadata !1022, metadata !1023, metadata !1024, metadata !1025, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034, metadata !1035, metadata !1036}
!708 = metadata !{i32 786445, metadata !706, metadata !"read_event_handler", metadata !471, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !709} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!709 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !471, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !710} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!710 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !711} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!711 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !712, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!712 = metadata !{null, metadata !512, metadata !713}
!713 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !714} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!714 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !471, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !706} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!715 = metadata !{i32 786445, metadata !706, metadata !"write_event_handler", metadata !471, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !709} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!716 = metadata !{i32 786445, metadata !706, metadata !"peer", metadata !471, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !717} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!717 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !471, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !718} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!718 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !719, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!719 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!720 = metadata !{metadata !721, metadata !722, metadata !723, metadata !724, metadata !726, metadata !727, metadata !734, metadata !739, metadata !740, metadata !749, metadata !750, metadata !751, metadata !752}
!721 = metadata !{i32 786445, metadata !718, metadata !"connection", metadata !719, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!722 = metadata !{i32 786445, metadata !718, metadata !"sockaddr", metadata !719, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!723 = metadata !{i32 786445, metadata !718, metadata !"socklen", metadata !719, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!724 = metadata !{i32 786445, metadata !718, metadata !"name", metadata !719, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !725} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!725 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!726 = metadata !{i32 786445, metadata !718, metadata !"tries", metadata !719, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!727 = metadata !{i32 786445, metadata !718, metadata !"get", metadata !719, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !728} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!728 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !719, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !729} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!729 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !730} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!731 = metadata !{metadata !487, metadata !732, metadata !24}
!732 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !733} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!733 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !719, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !718} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!734 = metadata !{i32 786445, metadata !718, metadata !"free", metadata !719, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !735} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!735 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !719, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !736} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!736 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !737} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!737 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !738, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!738 = metadata !{null, metadata !732, metadata !24, metadata !26}
!739 = metadata !{i32 786445, metadata !718, metadata !"data", metadata !719, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!740 = metadata !{i32 786445, metadata !718, metadata !"local", metadata !719, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !741} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!741 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !742} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!742 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !719, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !743} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!743 = metadata !{i32 786451, null, metadata !"", metadata !744, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !745, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!744 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!745 = metadata !{metadata !746, metadata !747, metadata !748}
!746 = metadata !{i32 786445, metadata !743, metadata !"sockaddr", metadata !744, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!747 = metadata !{i32 786445, metadata !743, metadata !"socklen", metadata !744, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!748 = metadata !{i32 786445, metadata !743, metadata !"name", metadata !744, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!749 = metadata !{i32 786445, metadata !718, metadata !"rcvbuf", metadata !719, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!750 = metadata !{i32 786445, metadata !718, metadata !"log", metadata !719, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!751 = metadata !{i32 786445, metadata !718, metadata !"cached", metadata !719, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!752 = metadata !{i32 786445, metadata !718, metadata !"log_error", metadata !719, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!753 = metadata !{i32 786445, metadata !706, metadata !"pipe", metadata !471, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !754} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!754 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !755} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!755 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !471, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !756} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!756 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !757, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !758, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!757 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!758 = metadata !{metadata !759, metadata !760, metadata !761, metadata !762, metadata !763, metadata !765, metadata !766, metadata !767, metadata !768, metadata !775, metadata !776, metadata !781, metadata !782, metadata !783, metadata !784, metadata !785, metadata !786, metadata !787, metadata !788, metadata !789, metadata !790, metadata !791, metadata !792, metadata !793, metadata !794, metadata !800, metadata !801, metadata !802, metadata !803, metadata !804, metadata !805, metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !811, metadata !812, metadata !813, metadata !814, metadata !828}
!759 = metadata !{i32 786445, metadata !756, metadata !"upstream", metadata !757, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!760 = metadata !{i32 786445, metadata !756, metadata !"downstream", metadata !757, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!761 = metadata !{i32 786445, metadata !756, metadata !"free_raw_bufs", metadata !757, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!762 = metadata !{i32 786445, metadata !756, metadata !"in", metadata !757, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!763 = metadata !{i32 786445, metadata !756, metadata !"last_in", metadata !757, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !764} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!764 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!765 = metadata !{i32 786445, metadata !756, metadata !"out", metadata !757, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!766 = metadata !{i32 786445, metadata !756, metadata !"free", metadata !757, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!767 = metadata !{i32 786445, metadata !756, metadata !"busy", metadata !757, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!768 = metadata !{i32 786445, metadata !756, metadata !"input_filter", metadata !757, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !769} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!769 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !757, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !770} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!770 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !771} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!771 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !772, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!772 = metadata !{metadata !487, metadata !773, metadata !62}
!773 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !774} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!774 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !757, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !756} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!775 = metadata !{i32 786445, metadata !756, metadata !"input_ctx", metadata !757, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!776 = metadata !{i32 786445, metadata !756, metadata !"output_filter", metadata !757, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !777} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!777 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !757, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !778} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!778 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !779} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!779 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !780, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!780 = metadata !{metadata !487, metadata !24, metadata !56}
!781 = metadata !{i32 786445, metadata !756, metadata !"output_ctx", metadata !757, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!782 = metadata !{i32 786445, metadata !756, metadata !"read", metadata !757, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!783 = metadata !{i32 786445, metadata !756, metadata !"cacheable", metadata !757, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!784 = metadata !{i32 786445, metadata !756, metadata !"single_buf", metadata !757, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!785 = metadata !{i32 786445, metadata !756, metadata !"free_bufs", metadata !757, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!786 = metadata !{i32 786445, metadata !756, metadata !"upstream_done", metadata !757, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!787 = metadata !{i32 786445, metadata !756, metadata !"upstream_error", metadata !757, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!788 = metadata !{i32 786445, metadata !756, metadata !"upstream_eof", metadata !757, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!789 = metadata !{i32 786445, metadata !756, metadata !"upstream_blocked", metadata !757, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!790 = metadata !{i32 786445, metadata !756, metadata !"downstream_done", metadata !757, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!791 = metadata !{i32 786445, metadata !756, metadata !"downstream_error", metadata !757, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!792 = metadata !{i32 786445, metadata !756, metadata !"cyclic_temp_file", metadata !757, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!793 = metadata !{i32 786445, metadata !756, metadata !"allocated", metadata !757, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !487} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!794 = metadata !{i32 786445, metadata !756, metadata !"bufs", metadata !757, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !795} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!795 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !757, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !796} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!796 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !797, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!797 = metadata !{metadata !798, metadata !799}
!798 = metadata !{i32 786445, metadata !796, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !487} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!799 = metadata !{i32 786445, metadata !796, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!800 = metadata !{i32 786445, metadata !756, metadata !"tag", metadata !757, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!801 = metadata !{i32 786445, metadata !756, metadata !"busy_size", metadata !757, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!802 = metadata !{i32 786445, metadata !756, metadata !"read_length", metadata !757, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!803 = metadata !{i32 786445, metadata !756, metadata !"length", metadata !757, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!804 = metadata !{i32 786445, metadata !756, metadata !"max_temp_file_size", metadata !757, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!805 = metadata !{i32 786445, metadata !756, metadata !"temp_file_write_size", metadata !757, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!806 = metadata !{i32 786445, metadata !756, metadata !"read_timeout", metadata !757, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!807 = metadata !{i32 786445, metadata !756, metadata !"send_timeout", metadata !757, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!808 = metadata !{i32 786445, metadata !756, metadata !"send_lowat", metadata !757, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!809 = metadata !{i32 786445, metadata !756, metadata !"pool", metadata !757, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!810 = metadata !{i32 786445, metadata !756, metadata !"log", metadata !757, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!811 = metadata !{i32 786445, metadata !756, metadata !"preread_bufs", metadata !757, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!812 = metadata !{i32 786445, metadata !756, metadata !"preread_size", metadata !757, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!813 = metadata !{i32 786445, metadata !756, metadata !"buf_to_file", metadata !757, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!814 = metadata !{i32 786445, metadata !756, metadata !"temp_file", metadata !757, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !815} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!815 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !816} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!816 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !757, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !817} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!817 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !818, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!818 = metadata !{metadata !819, metadata !820, metadata !821, metadata !822, metadata !823, metadata !824, metadata !825, metadata !826, metadata !827}
!819 = metadata !{i32 786445, metadata !817, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!820 = metadata !{i32 786445, metadata !817, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!821 = metadata !{i32 786445, metadata !817, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !619} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!822 = metadata !{i32 786445, metadata !817, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!823 = metadata !{i32 786445, metadata !817, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!824 = metadata !{i32 786445, metadata !817, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!825 = metadata !{i32 786445, metadata !817, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!826 = metadata !{i32 786445, metadata !817, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!827 = metadata !{i32 786445, metadata !817, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!828 = metadata !{i32 786445, metadata !756, metadata !"num", metadata !757, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!829 = metadata !{i32 786445, metadata !706, metadata !"request_bufs", metadata !471, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!830 = metadata !{i32 786445, metadata !706, metadata !"output", metadata !471, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !831} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!831 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !471, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !832} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!832 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !833, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!833 = metadata !{metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !850}
!834 = metadata !{i32 786445, metadata !832, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!835 = metadata !{i32 786445, metadata !832, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!836 = metadata !{i32 786445, metadata !832, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!837 = metadata !{i32 786445, metadata !832, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!838 = metadata !{i32 786445, metadata !832, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!839 = metadata !{i32 786445, metadata !832, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!840 = metadata !{i32 786445, metadata !832, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!841 = metadata !{i32 786445, metadata !832, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!842 = metadata !{i32 786445, metadata !832, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!843 = metadata !{i32 786445, metadata !832, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!844 = metadata !{i32 786445, metadata !832, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!845 = metadata !{i32 786445, metadata !832, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !487} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!846 = metadata !{i32 786445, metadata !832, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !795} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!847 = metadata !{i32 786445, metadata !832, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!848 = metadata !{i32 786445, metadata !832, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !849} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!849 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !778} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!850 = metadata !{i32 786445, metadata !832, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!851 = metadata !{i32 786445, metadata !706, metadata !"writer", metadata !471, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !852} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!852 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !471, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !853} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!853 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !854, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!854 = metadata !{metadata !855, metadata !856, metadata !857, metadata !858, metadata !859}
!855 = metadata !{i32 786445, metadata !853, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!856 = metadata !{i32 786445, metadata !853, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !764} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!857 = metadata !{i32 786445, metadata !853, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!858 = metadata !{i32 786445, metadata !853, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!859 = metadata !{i32 786445, metadata !853, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!860 = metadata !{i32 786445, metadata !706, metadata !"conf", metadata !471, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !861} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!861 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !862} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!862 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !471, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !470} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!863 = metadata !{i32 786445, metadata !706, metadata !"headers_in", metadata !471, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !864} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!864 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !471, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !865} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!865 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !866, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!866 = metadata !{metadata !867, metadata !868, metadata !869, metadata !870, metadata !880, metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899}
!867 = metadata !{i32 786445, metadata !865, metadata !"headers", metadata !471, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!868 = metadata !{i32 786445, metadata !865, metadata !"status_n", metadata !471, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!869 = metadata !{i32 786445, metadata !865, metadata !"status_line", metadata !471, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!870 = metadata !{i32 786445, metadata !865, metadata !"status", metadata !471, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !871} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!871 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !872} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!872 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !471, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !873} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!873 = metadata !{i32 786451, null, metadata !"", metadata !874, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !875, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!874 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!875 = metadata !{metadata !876, metadata !877, metadata !878, metadata !879}
!876 = metadata !{i32 786445, metadata !873, metadata !"hash", metadata !874, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!877 = metadata !{i32 786445, metadata !873, metadata !"key", metadata !874, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!878 = metadata !{i32 786445, metadata !873, metadata !"value", metadata !874, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!879 = metadata !{i32 786445, metadata !873, metadata !"lowcase_key", metadata !874, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!880 = metadata !{i32 786445, metadata !865, metadata !"date", metadata !471, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !871} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!881 = metadata !{i32 786445, metadata !865, metadata !"server", metadata !471, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !871} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!882 = metadata !{i32 786445, metadata !865, metadata !"connection", metadata !471, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !871} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!883 = metadata !{i32 786445, metadata !865, metadata !"expires", metadata !471, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !871} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!884 = metadata !{i32 786445, metadata !865, metadata !"etag", metadata !471, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !871} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!885 = metadata !{i32 786445, metadata !865, metadata !"x_accel_expires", metadata !471, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !871} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!886 = metadata !{i32 786445, metadata !865, metadata !"x_accel_redirect", metadata !471, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !871} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!887 = metadata !{i32 786445, metadata !865, metadata !"x_accel_limit_rate", metadata !471, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !871} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!888 = metadata !{i32 786445, metadata !865, metadata !"content_type", metadata !471, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !871} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!889 = metadata !{i32 786445, metadata !865, metadata !"content_length", metadata !471, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !871} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!890 = metadata !{i32 786445, metadata !865, metadata !"last_modified", metadata !471, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !871} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!891 = metadata !{i32 786445, metadata !865, metadata !"location", metadata !471, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !871} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!892 = metadata !{i32 786445, metadata !865, metadata !"accept_ranges", metadata !471, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !871} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!893 = metadata !{i32 786445, metadata !865, metadata !"www_authenticate", metadata !471, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !871} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!894 = metadata !{i32 786445, metadata !865, metadata !"transfer_encoding", metadata !471, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !871} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!895 = metadata !{i32 786445, metadata !865, metadata !"content_encoding", metadata !471, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !871} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!896 = metadata !{i32 786445, metadata !865, metadata !"content_length_n", metadata !471, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!897 = metadata !{i32 786445, metadata !865, metadata !"cache_control", metadata !471, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!898 = metadata !{i32 786445, metadata !865, metadata !"connection_close", metadata !471, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!899 = metadata !{i32 786445, metadata !865, metadata !"chunked", metadata !471, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!900 = metadata !{i32 786445, metadata !706, metadata !"resolved", metadata !471, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !901} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!901 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !902} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!902 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !471, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !903} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!903 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !904, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!904 = metadata !{metadata !905, metadata !906, metadata !909, metadata !910, metadata !911, metadata !914, metadata !915, metadata !916}
!905 = metadata !{i32 786445, metadata !903, metadata !"host", metadata !471, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!906 = metadata !{i32 786445, metadata !903, metadata !"port", metadata !471, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !907} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!907 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !471, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !908} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!908 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !471, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!909 = metadata !{i32 786445, metadata !903, metadata !"no_port", metadata !471, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!910 = metadata !{i32 786445, metadata !903, metadata !"naddrs", metadata !471, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!911 = metadata !{i32 786445, metadata !903, metadata !"addrs", metadata !471, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !912} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!912 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !913} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!913 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !471, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !501} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!914 = metadata !{i32 786445, metadata !903, metadata !"sockaddr", metadata !471, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!915 = metadata !{i32 786445, metadata !903, metadata !"socklen", metadata !471, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!916 = metadata !{i32 786445, metadata !903, metadata !"ctx", metadata !471, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !917} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!917 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !918} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!918 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !471, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !919} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!919 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !920, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !921, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!920 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!921 = metadata !{metadata !922, metadata !925, metadata !948, metadata !958, metadata !959, metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974}
!922 = metadata !{i32 786445, metadata !919, metadata !"next", metadata !920, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !923} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!923 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !924} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!924 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !920, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !919} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!925 = metadata !{i32 786445, metadata !919, metadata !"resolver", metadata !920, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !926} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!926 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !927} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!927 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !920, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !928} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!928 = metadata !{i32 786451, null, metadata !"", metadata !920, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !929, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!929 = metadata !{metadata !930, metadata !931, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947}
!930 = metadata !{i32 786445, metadata !928, metadata !"event", metadata !920, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!931 = metadata !{i32 786445, metadata !928, metadata !"dummy", metadata !920, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!932 = metadata !{i32 786445, metadata !928, metadata !"log", metadata !920, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!933 = metadata !{i32 786445, metadata !928, metadata !"ident", metadata !920, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !487} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!934 = metadata !{i32 786445, metadata !928, metadata !"udp_connections", metadata !920, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!935 = metadata !{i32 786445, metadata !928, metadata !"last_connection", metadata !920, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!936 = metadata !{i32 786445, metadata !928, metadata !"name_rbtree", metadata !920, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !554} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!937 = metadata !{i32 786445, metadata !928, metadata !"name_sentinel", metadata !920, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!938 = metadata !{i32 786445, metadata !928, metadata !"addr_rbtree", metadata !920, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !554} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!939 = metadata !{i32 786445, metadata !928, metadata !"addr_sentinel", metadata !920, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!940 = metadata !{i32 786445, metadata !928, metadata !"name_resend_queue", metadata !920, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!941 = metadata !{i32 786445, metadata !928, metadata !"addr_resend_queue", metadata !920, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!942 = metadata !{i32 786445, metadata !928, metadata !"name_expire_queue", metadata !920, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!943 = metadata !{i32 786445, metadata !928, metadata !"addr_expire_queue", metadata !920, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!944 = metadata !{i32 786445, metadata !928, metadata !"resend_timeout", metadata !920, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !532} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!945 = metadata !{i32 786445, metadata !928, metadata !"expire", metadata !920, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !532} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!946 = metadata !{i32 786445, metadata !928, metadata !"valid", metadata !920, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !532} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!947 = metadata !{i32 786445, metadata !928, metadata !"log_level", metadata !920, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!948 = metadata !{i32 786445, metadata !919, metadata !"udp_connection", metadata !920, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !949} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!949 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !950} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!950 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !920, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !951} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!951 = metadata !{i32 786451, null, metadata !"", metadata !920, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !952, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!952 = metadata !{metadata !953, metadata !954, metadata !955, metadata !956, metadata !957}
!953 = metadata !{i32 786445, metadata !951, metadata !"connection", metadata !920, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!954 = metadata !{i32 786445, metadata !951, metadata !"sockaddr", metadata !920, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!955 = metadata !{i32 786445, metadata !951, metadata !"socklen", metadata !920, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!956 = metadata !{i32 786445, metadata !951, metadata !"server", metadata !920, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!957 = metadata !{i32 786445, metadata !951, metadata !"log", metadata !920, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!958 = metadata !{i32 786445, metadata !919, metadata !"ident", metadata !920, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !487} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!959 = metadata !{i32 786445, metadata !919, metadata !"state", metadata !920, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !487} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!960 = metadata !{i32 786445, metadata !919, metadata !"type", metadata !920, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !487} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!961 = metadata !{i32 786445, metadata !919, metadata !"name", metadata !920, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!962 = metadata !{i32 786445, metadata !919, metadata !"naddrs", metadata !920, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!963 = metadata !{i32 786445, metadata !919, metadata !"addrs", metadata !920, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !912} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!964 = metadata !{i32 786445, metadata !919, metadata !"addr", metadata !920, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !913} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!965 = metadata !{i32 786445, metadata !919, metadata !"handler", metadata !920, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !966} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!966 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !920, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !967} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!967 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !968} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!968 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !969, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!969 = metadata !{null, metadata !923}
!970 = metadata !{i32 786445, metadata !919, metadata !"data", metadata !920, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!971 = metadata !{i32 786445, metadata !919, metadata !"timeout", metadata !920, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!972 = metadata !{i32 786445, metadata !919, metadata !"quick", metadata !920, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!973 = metadata !{i32 786445, metadata !919, metadata !"recursion", metadata !920, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!974 = metadata !{i32 786445, metadata !919, metadata !"event", metadata !920, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!975 = metadata !{i32 786445, metadata !706, metadata !"buffer", metadata !471, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!976 = metadata !{i32 786445, metadata !706, metadata !"length", metadata !471, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!977 = metadata !{i32 786445, metadata !706, metadata !"out_bufs", metadata !471, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!978 = metadata !{i32 786445, metadata !706, metadata !"busy_bufs", metadata !471, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!979 = metadata !{i32 786445, metadata !706, metadata !"free_bufs", metadata !471, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!980 = metadata !{i32 786445, metadata !706, metadata !"input_filter_init", metadata !471, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !981} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!981 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !982} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!982 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !983, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!983 = metadata !{metadata !487, metadata !24}
!984 = metadata !{i32 786445, metadata !706, metadata !"input_filter", metadata !471, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !985} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!985 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !986} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!986 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !987, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!987 = metadata !{metadata !487, metadata !24, metadata !286}
!988 = metadata !{i32 786445, metadata !706, metadata !"input_filter_ctx", metadata !471, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!989 = metadata !{i32 786445, metadata !706, metadata !"create_key", metadata !471, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !990} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!990 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !991} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!991 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !992, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!992 = metadata !{metadata !487, metadata !512}
!993 = metadata !{i32 786445, metadata !706, metadata !"create_request", metadata !471, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !990} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!994 = metadata !{i32 786445, metadata !706, metadata !"reinit_request", metadata !471, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !990} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!995 = metadata !{i32 786445, metadata !706, metadata !"process_header", metadata !471, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !990} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!996 = metadata !{i32 786445, metadata !706, metadata !"abort_request", metadata !471, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !509} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!997 = metadata !{i32 786445, metadata !706, metadata !"finalize_request", metadata !471, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !998} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!998 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !999} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!999 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1000, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1000 = metadata !{null, metadata !512, metadata !487}
!1001 = metadata !{i32 786445, metadata !706, metadata !"rewrite_redirect", metadata !471, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1002} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1002 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1003} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1003 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1004, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1004 = metadata !{metadata !487, metadata !512, metadata !871, metadata !30}
!1005 = metadata !{i32 786445, metadata !706, metadata !"rewrite_cookie", metadata !471, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1006} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1006 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1007} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1007 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1008, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1008 = metadata !{metadata !487, metadata !512, metadata !871}
!1009 = metadata !{i32 786445, metadata !706, metadata !"timeout", metadata !471, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1010 = metadata !{i32 786445, metadata !706, metadata !"state", metadata !471, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1011} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1011 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1012} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1012 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !471, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1013} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1013 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1014, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1014 = metadata !{metadata !1015, metadata !1016, metadata !1017, metadata !1018, metadata !1019, metadata !1020, metadata !1021}
!1015 = metadata !{i32 786445, metadata !1013, metadata !"bl_time", metadata !471, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1016 = metadata !{i32 786445, metadata !1013, metadata !"bl_state", metadata !471, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1017 = metadata !{i32 786445, metadata !1013, metadata !"status", metadata !471, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1018 = metadata !{i32 786445, metadata !1013, metadata !"response_sec", metadata !471, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !532} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1019 = metadata !{i32 786445, metadata !1013, metadata !"response_msec", metadata !471, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1020 = metadata !{i32 786445, metadata !1013, metadata !"response_length", metadata !471, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1021 = metadata !{i32 786445, metadata !1013, metadata !"peer", metadata !471, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !725} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1022 = metadata !{i32 786445, metadata !706, metadata !"method", metadata !471, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1023 = metadata !{i32 786445, metadata !706, metadata !"schema", metadata !471, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1024 = metadata !{i32 786445, metadata !706, metadata !"uri", metadata !471, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1025 = metadata !{i32 786445, metadata !706, metadata !"cleanup", metadata !471, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1026} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1026 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1027} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1027 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !471, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1028 = metadata !{i32 786445, metadata !706, metadata !"store", metadata !471, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1029 = metadata !{i32 786445, metadata !706, metadata !"cacheable", metadata !471, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1030 = metadata !{i32 786445, metadata !706, metadata !"accel", metadata !471, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1031 = metadata !{i32 786445, metadata !706, metadata !"ssl", metadata !471, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1032 = metadata !{i32 786445, metadata !706, metadata !"cache_status", metadata !471, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1033 = metadata !{i32 786445, metadata !706, metadata !"buffering", metadata !471, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1034 = metadata !{i32 786445, metadata !706, metadata !"keepalive", metadata !471, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1035 = metadata !{i32 786445, metadata !706, metadata !"request_sent", metadata !471, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1036 = metadata !{i32 786445, metadata !706, metadata !"header_sent", metadata !471, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1037 = metadata !{i32 786445, metadata !497, metadata !"upstream_states", metadata !498, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1038 = metadata !{i32 786445, metadata !497, metadata !"pool", metadata !498, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1039 = metadata !{i32 786445, metadata !497, metadata !"header_in", metadata !498, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1040 = metadata !{i32 786445, metadata !497, metadata !"headers_in", metadata !498, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1041} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1041 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !498, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1042} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1042 = metadata !{i32 786451, null, metadata !"", metadata !498, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1043, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1043 = metadata !{metadata !1044, metadata !1045, metadata !1046, metadata !1047, metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1065, metadata !1066, metadata !1067, metadata !1068, metadata !1069, metadata !1070, metadata !1071, metadata !1072, metadata !1073, metadata !1074, metadata !1075}
!1044 = metadata !{i32 786445, metadata !1042, metadata !"headers", metadata !498, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1045 = metadata !{i32 786445, metadata !1042, metadata !"host", metadata !498, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !871} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1046 = metadata !{i32 786445, metadata !1042, metadata !"connection", metadata !498, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !871} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1047 = metadata !{i32 786445, metadata !1042, metadata !"if_modified_since", metadata !498, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !871} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1048 = metadata !{i32 786445, metadata !1042, metadata !"if_unmodified_since", metadata !498, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !871} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1049 = metadata !{i32 786445, metadata !1042, metadata !"user_agent", metadata !498, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !871} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1050 = metadata !{i32 786445, metadata !1042, metadata !"referer", metadata !498, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !871} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1051 = metadata !{i32 786445, metadata !1042, metadata !"content_length", metadata !498, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !871} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1052 = metadata !{i32 786445, metadata !1042, metadata !"content_type", metadata !498, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !871} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1053 = metadata !{i32 786445, metadata !1042, metadata !"range", metadata !498, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !871} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1054 = metadata !{i32 786445, metadata !1042, metadata !"if_range", metadata !498, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !871} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1055 = metadata !{i32 786445, metadata !1042, metadata !"transfer_encoding", metadata !498, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !871} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1056 = metadata !{i32 786445, metadata !1042, metadata !"expect", metadata !498, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !871} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1057 = metadata !{i32 786445, metadata !1042, metadata !"accept_encoding", metadata !498, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !871} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1058 = metadata !{i32 786445, metadata !1042, metadata !"via", metadata !498, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !871} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1059 = metadata !{i32 786445, metadata !1042, metadata !"authorization", metadata !498, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !871} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1060 = metadata !{i32 786445, metadata !1042, metadata !"keep_alive", metadata !498, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !871} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1061 = metadata !{i32 786445, metadata !1042, metadata !"x_forwarded_for", metadata !498, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !871} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1062 = metadata !{i32 786445, metadata !1042, metadata !"user", metadata !498, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1063 = metadata !{i32 786445, metadata !1042, metadata !"passwd", metadata !498, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1064 = metadata !{i32 786445, metadata !1042, metadata !"cookies", metadata !498, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1065 = metadata !{i32 786445, metadata !1042, metadata !"server", metadata !498, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1066 = metadata !{i32 786445, metadata !1042, metadata !"content_length_n", metadata !498, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1067 = metadata !{i32 786445, metadata !1042, metadata !"keep_alive_n", metadata !498, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !532} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1068 = metadata !{i32 786445, metadata !1042, metadata !"connection_type", metadata !498, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1069 = metadata !{i32 786445, metadata !1042, metadata !"msie", metadata !498, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1070 = metadata !{i32 786445, metadata !1042, metadata !"msie6", metadata !498, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1071 = metadata !{i32 786445, metadata !1042, metadata !"opera", metadata !498, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1072 = metadata !{i32 786445, metadata !1042, metadata !"gecko", metadata !498, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1073 = metadata !{i32 786445, metadata !1042, metadata !"chrome", metadata !498, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1074 = metadata !{i32 786445, metadata !1042, metadata !"safari", metadata !498, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1075 = metadata !{i32 786445, metadata !1042, metadata !"konqueror", metadata !498, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1076 = metadata !{i32 786445, metadata !497, metadata !"headers_out", metadata !498, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1077} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1077 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !498, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1078} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1078 = metadata !{i32 786451, null, metadata !"", metadata !498, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1079, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1079 = metadata !{metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092, metadata !1093, metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099, metadata !1100, metadata !1101, metadata !1102, metadata !1103, metadata !1104}
!1080 = metadata !{i32 786445, metadata !1078, metadata !"headers", metadata !498, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1081 = metadata !{i32 786445, metadata !1078, metadata !"status", metadata !498, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1082 = metadata !{i32 786445, metadata !1078, metadata !"status_line", metadata !498, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1083 = metadata !{i32 786445, metadata !1078, metadata !"server", metadata !498, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !871} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1084 = metadata !{i32 786445, metadata !1078, metadata !"date", metadata !498, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !871} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1085 = metadata !{i32 786445, metadata !1078, metadata !"content_length", metadata !498, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !871} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1086 = metadata !{i32 786445, metadata !1078, metadata !"content_encoding", metadata !498, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !871} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1087 = metadata !{i32 786445, metadata !1078, metadata !"location", metadata !498, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !871} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1088 = metadata !{i32 786445, metadata !1078, metadata !"refresh", metadata !498, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !871} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1089 = metadata !{i32 786445, metadata !1078, metadata !"last_modified", metadata !498, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !871} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1090 = metadata !{i32 786445, metadata !1078, metadata !"content_range", metadata !498, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !871} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1091 = metadata !{i32 786445, metadata !1078, metadata !"accept_ranges", metadata !498, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !871} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1092 = metadata !{i32 786445, metadata !1078, metadata !"www_authenticate", metadata !498, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !871} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1093 = metadata !{i32 786445, metadata !1078, metadata !"expires", metadata !498, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !871} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1094 = metadata !{i32 786445, metadata !1078, metadata !"etag", metadata !498, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !871} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1095 = metadata !{i32 786445, metadata !1078, metadata !"override_charset", metadata !498, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !725} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1096 = metadata !{i32 786445, metadata !1078, metadata !"content_type_len", metadata !498, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1097 = metadata !{i32 786445, metadata !1078, metadata !"content_type", metadata !498, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1098 = metadata !{i32 786445, metadata !1078, metadata !"charset", metadata !498, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1099 = metadata !{i32 786445, metadata !1078, metadata !"content_type_lowcase", metadata !498, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1100 = metadata !{i32 786445, metadata !1078, metadata !"content_type_hash", metadata !498, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1101 = metadata !{i32 786445, metadata !1078, metadata !"cache_control", metadata !498, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1102 = metadata !{i32 786445, metadata !1078, metadata !"content_length_n", metadata !498, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1103 = metadata !{i32 786445, metadata !1078, metadata !"date_time", metadata !498, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !532} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1104 = metadata !{i32 786445, metadata !1078, metadata !"last_modified_time", metadata !498, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !532} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1105 = metadata !{i32 786445, metadata !497, metadata !"request_body", metadata !498, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1106} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1107} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1107 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !498, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1108} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1108 = metadata !{i32 786451, null, metadata !"", metadata !498, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1109, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1109 = metadata !{metadata !1110, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115}
!1110 = metadata !{i32 786445, metadata !1108, metadata !"temp_file", metadata !498, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !815} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1111 = metadata !{i32 786445, metadata !1108, metadata !"bufs", metadata !498, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1112 = metadata !{i32 786445, metadata !1108, metadata !"buf", metadata !498, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1113 = metadata !{i32 786445, metadata !1108, metadata !"rest", metadata !498, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1114 = metadata !{i32 786445, metadata !1108, metadata !"to_write", metadata !498, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1115 = metadata !{i32 786445, metadata !1108, metadata !"post_handler", metadata !498, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1116} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1116 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !498, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !509} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1117 = metadata !{i32 786445, metadata !497, metadata !"lingering_time", metadata !498, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !532} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1118 = metadata !{i32 786445, metadata !497, metadata !"start_sec", metadata !498, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !532} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1119 = metadata !{i32 786445, metadata !497, metadata !"start_msec", metadata !498, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1120 = metadata !{i32 786445, metadata !497, metadata !"method", metadata !498, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1121 = metadata !{i32 786445, metadata !497, metadata !"http_version", metadata !498, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1122 = metadata !{i32 786445, metadata !497, metadata !"request_line", metadata !498, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1123 = metadata !{i32 786445, metadata !497, metadata !"uri", metadata !498, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1124 = metadata !{i32 786445, metadata !497, metadata !"args", metadata !498, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1125 = metadata !{i32 786445, metadata !497, metadata !"exten", metadata !498, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1126 = metadata !{i32 786445, metadata !497, metadata !"unparsed_uri", metadata !498, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1127 = metadata !{i32 786445, metadata !497, metadata !"method_name", metadata !498, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1128 = metadata !{i32 786445, metadata !497, metadata !"http_protocol", metadata !498, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1129 = metadata !{i32 786445, metadata !497, metadata !"out", metadata !498, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1130 = metadata !{i32 786445, metadata !497, metadata !"main", metadata !498, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !512} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1131 = metadata !{i32 786445, metadata !497, metadata !"parent", metadata !498, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !512} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1132 = metadata !{i32 786445, metadata !497, metadata !"postponed", metadata !498, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1133} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1133 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1134} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1134 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !498, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1135} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1135 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !498, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1136, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1136 = metadata !{metadata !1137, metadata !1138, metadata !1139}
!1137 = metadata !{i32 786445, metadata !1135, metadata !"request", metadata !498, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !512} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1138 = metadata !{i32 786445, metadata !1135, metadata !"out", metadata !498, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1139 = metadata !{i32 786445, metadata !1135, metadata !"next", metadata !498, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1133} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1140 = metadata !{i32 786445, metadata !497, metadata !"post_subrequest", metadata !498, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1141} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1141 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1142} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1142 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !498, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1143} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1143 = metadata !{i32 786451, null, metadata !"", metadata !498, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1144, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1144 = metadata !{metadata !1145, metadata !1150}
!1145 = metadata !{i32 786445, metadata !1143, metadata !"handler", metadata !498, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1146} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1146 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !498, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1147} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1148} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1149 = metadata !{metadata !487, metadata !512, metadata !24, metadata !487}
!1150 = metadata !{i32 786445, metadata !1143, metadata !"data", metadata !498, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1151 = metadata !{i32 786445, metadata !497, metadata !"posted_requests", metadata !498, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1152} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1152 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1153} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1153 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !498, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1154} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1154 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !498, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1155, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1155 = metadata !{metadata !1156, metadata !1157}
!1156 = metadata !{i32 786445, metadata !1154, metadata !"request", metadata !498, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !512} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1157 = metadata !{i32 786445, metadata !1154, metadata !"next", metadata !498, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1152} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1158 = metadata !{i32 786445, metadata !497, metadata !"virtual_names", metadata !498, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1159} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1159 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1160} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1160 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !498, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1161} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1161 = metadata !{i32 786451, null, metadata !"", metadata !498, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1162, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1162 = metadata !{metadata !1163, metadata !1194, metadata !1195}
!1163 = metadata !{i32 786445, metadata !1161, metadata !"names", metadata !498, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1164} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1164 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !498, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1165} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1165 = metadata !{i32 786451, null, metadata !"", metadata !874, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1166, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1166 = metadata !{metadata !1167, metadata !1186, metadata !1193}
!1167 = metadata !{i32 786445, metadata !1165, metadata !"hash", metadata !874, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !1168} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1168 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !874, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1169} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!1169 = metadata !{i32 786451, null, metadata !"", metadata !874, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1170, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1170 = metadata !{metadata !1171, metadata !1185}
!1171 = metadata !{i32 786445, metadata !1169, metadata !"buckets", metadata !874, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1172} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!1172 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1173} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1173 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1174} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!1174 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !874, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !1175} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!1175 = metadata !{i32 786451, null, metadata !"", metadata !874, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !1176, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!1176 = metadata !{metadata !1177, metadata !1178, metadata !1181}
!1177 = metadata !{i32 786445, metadata !1175, metadata !"value", metadata !874, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!1178 = metadata !{i32 786445, metadata !1175, metadata !"len", metadata !874, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !1179} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!1179 = metadata !{i32 786454, null, metadata !"u_short", metadata !874, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !1180} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!1180 = metadata !{i32 786454, null, metadata !"__u_short", metadata !874, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!1181 = metadata !{i32 786445, metadata !1175, metadata !"name", metadata !874, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !1182} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!1182 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !1183, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!1183 = metadata !{metadata !1184}
!1184 = metadata !{i32 786465, i64 0, i64 0}      ; [ DW_TAG_subrange_type ] [0, 0]
!1185 = metadata !{i32 786445, metadata !1169, metadata !"size", metadata !874, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!1186 = metadata !{i32 786445, metadata !1165, metadata !"wc_head", metadata !874, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1187} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1187 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1188} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1188 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !874, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1189} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1189 = metadata !{i32 786451, null, metadata !"", metadata !874, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1190, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1190 = metadata !{metadata !1191, metadata !1192}
!1191 = metadata !{i32 786445, metadata !1189, metadata !"hash", metadata !874, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !1168} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1192 = metadata !{i32 786445, metadata !1189, metadata !"value", metadata !874, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1193 = metadata !{i32 786445, metadata !1165, metadata !"wc_tail", metadata !874, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1187} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1194 = metadata !{i32 786445, metadata !1161, metadata !"nregex", metadata !498, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1195 = metadata !{i32 786445, metadata !1161, metadata !"regex", metadata !498, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1196} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1196 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1197} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1197 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !498, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1198} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1198 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1199, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1200, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1199 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1200 = metadata !{metadata !1201, metadata !1245, metadata !1402}
!1201 = metadata !{i32 786445, metadata !1198, metadata !"regex", metadata !1199, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1202} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1202 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1203} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1203 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1199, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1204} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1204 = metadata !{i32 786451, null, metadata !"", metadata !1205, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1206, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1205 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1206 = metadata !{metadata !1207, metadata !1235, metadata !1236, metadata !1243, metadata !1244}
!1207 = metadata !{i32 786445, metadata !1204, metadata !"regex", metadata !1205, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1208} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1208 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1209} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1209 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !1205, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1210} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1210 = metadata !{i32 786451, null, metadata !"", metadata !1211, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1212, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1211 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1212 = metadata !{metadata !1213, metadata !1218}
!1213 = metadata !{i32 786445, metadata !1210, metadata !"code", metadata !1211, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1214} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1215} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1215 = metadata !{i32 786454, null, metadata !"pcre", metadata !1211, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1216} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1216 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1217, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1217 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1218 = metadata !{i32 786445, metadata !1210, metadata !"extra", metadata !1211, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1219} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1219 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1220} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1220 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1211, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1221} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1221 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1217, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1222, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1222 = metadata !{metadata !1223, metadata !1224, metadata !1225, metadata !1226, metadata !1227, metadata !1230, metadata !1231, metadata !1234}
!1223 = metadata !{i32 786445, metadata !1221, metadata !"flags", metadata !1217, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1224 = metadata !{i32 786445, metadata !1221, metadata !"study_data", metadata !1217, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1225 = metadata !{i32 786445, metadata !1221, metadata !"match_limit", metadata !1217, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1226 = metadata !{i32 786445, metadata !1221, metadata !"callout_data", metadata !1217, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1227 = metadata !{i32 786445, metadata !1221, metadata !"tables", metadata !1217, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !1228} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1228 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1229} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1229 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!1230 = metadata !{i32 786445, metadata !1221, metadata !"match_limit_recursion", metadata !1217, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1231 = metadata !{i32 786445, metadata !1221, metadata !"mark", metadata !1217, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1232} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1232 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1233} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1233 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1234 = metadata !{i32 786445, metadata !1221, metadata !"executable_jit", metadata !1217, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1235 = metadata !{i32 786445, metadata !1204, metadata !"ncaptures", metadata !1205, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1236 = metadata !{i32 786445, metadata !1204, metadata !"variables", metadata !1205, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1237} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1237 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1238} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1238 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !1205, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1239} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1239 = metadata !{i32 786451, null, metadata !"", metadata !1205, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1240, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1240 = metadata !{metadata !1241, metadata !1242}
!1241 = metadata !{i32 786445, metadata !1239, metadata !"capture", metadata !1205, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1242 = metadata !{i32 786445, metadata !1239, metadata !"index", metadata !1205, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !487} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1243 = metadata !{i32 786445, metadata !1204, metadata !"nvariables", metadata !1205, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1244 = metadata !{i32 786445, metadata !1204, metadata !"name", metadata !1205, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1245 = metadata !{i32 786445, metadata !1198, metadata !"server", metadata !1199, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1246} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1246 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1247} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1247 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1199, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1248} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1248 = metadata !{i32 786451, null, metadata !"", metadata !1199, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1249, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1249 = metadata !{metadata !1250, metadata !1251, metadata !1260, metadata !1261, metadata !1262, metadata !1263, metadata !1264, metadata !1265, metadata !1266, metadata !1268, metadata !1269, metadata !1270, metadata !1271, metadata !1272}
!1250 = metadata !{i32 786445, metadata !1248, metadata !"server_names", metadata !1199, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1251 = metadata !{i32 786445, metadata !1248, metadata !"ctx", metadata !1199, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1252} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1252 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1253} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1253 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1199, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1254} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1254 = metadata !{i32 786451, null, metadata !"", metadata !1255, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1256, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1255 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1256 = metadata !{metadata !1257, metadata !1258, metadata !1259}
!1257 = metadata !{i32 786445, metadata !1254, metadata !"main_conf", metadata !1255, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1258 = metadata !{i32 786445, metadata !1254, metadata !"srv_conf", metadata !1255, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1259 = metadata !{i32 786445, metadata !1254, metadata !"loc_conf", metadata !1255, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1260 = metadata !{i32 786445, metadata !1248, metadata !"server_name", metadata !1199, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1261 = metadata !{i32 786445, metadata !1248, metadata !"connection_pool_size", metadata !1199, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1262 = metadata !{i32 786445, metadata !1248, metadata !"request_pool_size", metadata !1199, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1263 = metadata !{i32 786445, metadata !1248, metadata !"client_header_buffer_size", metadata !1199, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1264 = metadata !{i32 786445, metadata !1248, metadata !"large_client_header_buffers", metadata !1199, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !795} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1265 = metadata !{i32 786445, metadata !1248, metadata !"client_header_timeout", metadata !1199, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1266 = metadata !{i32 786445, metadata !1248, metadata !"ignore_invalid_headers", metadata !1199, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !1267} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1267 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !1199, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !488} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!1268 = metadata !{i32 786445, metadata !1248, metadata !"merge_slashes", metadata !1199, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !1267} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1269 = metadata !{i32 786445, metadata !1248, metadata !"underscores_in_headers", metadata !1199, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !1267} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1270 = metadata !{i32 786445, metadata !1248, metadata !"listen", metadata !1199, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1271 = metadata !{i32 786445, metadata !1248, metadata !"captures", metadata !1199, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1272 = metadata !{i32 786445, metadata !1248, metadata !"named_locations", metadata !1199, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1273} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1273 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1274} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1274 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1275} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1275 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1199, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1276} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1276 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1199, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1277, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1277 = metadata !{metadata !1278, metadata !1279, metadata !1280, metadata !1281, metadata !1282, metadata !1283, metadata !1284, metadata !1285, metadata !1286, metadata !1287, metadata !1300, metadata !1301, metadata !1302, metadata !1303, metadata !1304, metadata !1306, metadata !1307, metadata !1308, metadata !1309, metadata !1310, metadata !1311, metadata !1312, metadata !1313, metadata !1314, metadata !1315, metadata !1316, metadata !1317, metadata !1318, metadata !1319, metadata !1320, metadata !1321, metadata !1322, metadata !1323, metadata !1324, metadata !1325, metadata !1326, metadata !1327, metadata !1328, metadata !1329, metadata !1330, metadata !1331, metadata !1332, metadata !1333, metadata !1334, metadata !1335, metadata !1336, metadata !1337, metadata !1338, metadata !1339, metadata !1340, metadata !1341, metadata !1342, metadata !1343, metadata !1344, metadata !1345, metadata !1346, metadata !1347, metadata !1348, metadata !1349, metadata !1350, metadata !1351, metadata !1352, metadata !1353, metadata !1354, metadata !1355, metadata !1356, metadata !1357, metadata !1358, metadata !1359, metadata !1370, metadata !1371, metadata !1381, metadata !1382, metadata !1394, metadata !1395, metadata !1396, metadata !1397, metadata !1398, metadata !1399, metadata !1400, metadata !1401}
!1278 = metadata !{i32 786445, metadata !1276, metadata !"name", metadata !1199, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1279 = metadata !{i32 786445, metadata !1276, metadata !"regex", metadata !1199, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1202} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1280 = metadata !{i32 786445, metadata !1276, metadata !"noname", metadata !1199, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1281 = metadata !{i32 786445, metadata !1276, metadata !"lmt_excpt", metadata !1199, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1282 = metadata !{i32 786445, metadata !1276, metadata !"named", metadata !1199, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1283 = metadata !{i32 786445, metadata !1276, metadata !"exact_match", metadata !1199, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1284 = metadata !{i32 786445, metadata !1276, metadata !"noregex", metadata !1199, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1285 = metadata !{i32 786445, metadata !1276, metadata !"auto_redirect", metadata !1199, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1286 = metadata !{i32 786445, metadata !1276, metadata !"gzip_disable_msie6", metadata !1199, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1287 = metadata !{i32 786445, metadata !1276, metadata !"static_locations", metadata !1199, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1288} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1288 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1289} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1289 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1199, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1290} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1290 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1199, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1291, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1291 = metadata !{metadata !1292, metadata !1293, metadata !1294, metadata !1295, metadata !1296, metadata !1297, metadata !1298, metadata !1299}
!1292 = metadata !{i32 786445, metadata !1290, metadata !"left", metadata !1199, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1288} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1293 = metadata !{i32 786445, metadata !1290, metadata !"right", metadata !1199, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1288} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1294 = metadata !{i32 786445, metadata !1290, metadata !"tree", metadata !1199, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1288} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1295 = metadata !{i32 786445, metadata !1290, metadata !"exact", metadata !1199, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1274} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1296 = metadata !{i32 786445, metadata !1290, metadata !"inclusive", metadata !1199, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1274} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1297 = metadata !{i32 786445, metadata !1290, metadata !"auto_redirect", metadata !1199, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1298 = metadata !{i32 786445, metadata !1290, metadata !"len", metadata !1199, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1299 = metadata !{i32 786445, metadata !1290, metadata !"name", metadata !1199, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !1182} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1300 = metadata !{i32 786445, metadata !1276, metadata !"regex_locations", metadata !1199, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1273} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1301 = metadata !{i32 786445, metadata !1276, metadata !"loc_conf", metadata !1199, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1302 = metadata !{i32 786445, metadata !1276, metadata !"limit_except", metadata !1199, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !501} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1303 = metadata !{i32 786445, metadata !1276, metadata !"limit_except_loc_conf", metadata !1199, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1304 = metadata !{i32 786445, metadata !1276, metadata !"handler", metadata !1199, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1305} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1305 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1199, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !990} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1306 = metadata !{i32 786445, metadata !1276, metadata !"alias", metadata !1199, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1307 = metadata !{i32 786445, metadata !1276, metadata !"root", metadata !1199, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1308 = metadata !{i32 786445, metadata !1276, metadata !"post_action", metadata !1199, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1309 = metadata !{i32 786445, metadata !1276, metadata !"root_lengths", metadata !1199, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1310 = metadata !{i32 786445, metadata !1276, metadata !"root_values", metadata !1199, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1311 = metadata !{i32 786445, metadata !1276, metadata !"types", metadata !1199, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1312 = metadata !{i32 786445, metadata !1276, metadata !"types_hash", metadata !1199, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !1168} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1313 = metadata !{i32 786445, metadata !1276, metadata !"default_type", metadata !1199, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1314 = metadata !{i32 786445, metadata !1276, metadata !"client_max_body_size", metadata !1199, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1315 = metadata !{i32 786445, metadata !1276, metadata !"directio", metadata !1199, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1316 = metadata !{i32 786445, metadata !1276, metadata !"directio_alignment", metadata !1199, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1317 = metadata !{i32 786445, metadata !1276, metadata !"client_body_buffer_size", metadata !1199, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1318 = metadata !{i32 786445, metadata !1276, metadata !"send_lowat", metadata !1199, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1319 = metadata !{i32 786445, metadata !1276, metadata !"postpone_output", metadata !1199, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1320 = metadata !{i32 786445, metadata !1276, metadata !"limit_rate", metadata !1199, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1321 = metadata !{i32 786445, metadata !1276, metadata !"limit_rate_after", metadata !1199, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1322 = metadata !{i32 786445, metadata !1276, metadata !"sendfile_max_chunk", metadata !1199, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1323 = metadata !{i32 786445, metadata !1276, metadata !"read_ahead", metadata !1199, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1324 = metadata !{i32 786445, metadata !1276, metadata !"client_body_timeout", metadata !1199, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1325 = metadata !{i32 786445, metadata !1276, metadata !"send_timeout", metadata !1199, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1326 = metadata !{i32 786445, metadata !1276, metadata !"keepalive_timeout", metadata !1199, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1327 = metadata !{i32 786445, metadata !1276, metadata !"lingering_time", metadata !1199, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1328 = metadata !{i32 786445, metadata !1276, metadata !"lingering_timeout", metadata !1199, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1329 = metadata !{i32 786445, metadata !1276, metadata !"resolver_timeout", metadata !1199, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1330 = metadata !{i32 786445, metadata !1276, metadata !"resolver", metadata !1199, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !926} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1331 = metadata !{i32 786445, metadata !1276, metadata !"keepalive_header", metadata !1199, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !532} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1332 = metadata !{i32 786445, metadata !1276, metadata !"keepalive_requests", metadata !1199, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1333 = metadata !{i32 786445, metadata !1276, metadata !"keepalive_disable", metadata !1199, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1334 = metadata !{i32 786445, metadata !1276, metadata !"satisfy", metadata !1199, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1335 = metadata !{i32 786445, metadata !1276, metadata !"lingering_close", metadata !1199, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1336 = metadata !{i32 786445, metadata !1276, metadata !"if_modified_since", metadata !1199, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1337 = metadata !{i32 786445, metadata !1276, metadata !"max_ranges", metadata !1199, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1338 = metadata !{i32 786445, metadata !1276, metadata !"client_body_in_file_only", metadata !1199, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1339 = metadata !{i32 786445, metadata !1276, metadata !"client_body_in_single_buffer", metadata !1199, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !1267} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1340 = metadata !{i32 786445, metadata !1276, metadata !"internal", metadata !1199, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !1267} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1341 = metadata !{i32 786445, metadata !1276, metadata !"sendfile", metadata !1199, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !1267} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1342 = metadata !{i32 786445, metadata !1276, metadata !"tcp_nopush", metadata !1199, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !1267} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1343 = metadata !{i32 786445, metadata !1276, metadata !"tcp_nodelay", metadata !1199, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !1267} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1344 = metadata !{i32 786445, metadata !1276, metadata !"reset_timedout_connection", metadata !1199, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !1267} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1345 = metadata !{i32 786445, metadata !1276, metadata !"server_name_in_redirect", metadata !1199, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !1267} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1346 = metadata !{i32 786445, metadata !1276, metadata !"port_in_redirect", metadata !1199, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !1267} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1347 = metadata !{i32 786445, metadata !1276, metadata !"msie_padding", metadata !1199, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !1267} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1348 = metadata !{i32 786445, metadata !1276, metadata !"msie_refresh", metadata !1199, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !1267} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1349 = metadata !{i32 786445, metadata !1276, metadata !"log_not_found", metadata !1199, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !1267} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1350 = metadata !{i32 786445, metadata !1276, metadata !"log_subrequest", metadata !1199, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !1267} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1351 = metadata !{i32 786445, metadata !1276, metadata !"recursive_error_pages", metadata !1199, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !1267} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1352 = metadata !{i32 786445, metadata !1276, metadata !"server_tokens", metadata !1199, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !1267} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1353 = metadata !{i32 786445, metadata !1276, metadata !"chunked_transfer_encoding", metadata !1199, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !1267} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1354 = metadata !{i32 786445, metadata !1276, metadata !"gzip_vary", metadata !1199, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !1267} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1355 = metadata !{i32 786445, metadata !1276, metadata !"gzip_http_version", metadata !1199, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1356 = metadata !{i32 786445, metadata !1276, metadata !"gzip_proxied", metadata !1199, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1357 = metadata !{i32 786445, metadata !1276, metadata !"gzip_disable", metadata !1199, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1358 = metadata !{i32 786445, metadata !1276, metadata !"disable_symlinks", metadata !1199, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1359 = metadata !{i32 786445, metadata !1276, metadata !"disable_symlinks_from", metadata !1199, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1360} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1360 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1361} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1361 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1199, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1362} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1362 = metadata !{i32 786451, null, metadata !"", metadata !1363, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1364, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1363 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1364 = metadata !{metadata !1365, metadata !1366, metadata !1368, metadata !1369}
!1365 = metadata !{i32 786445, metadata !1362, metadata !"value", metadata !1363, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1366 = metadata !{i32 786445, metadata !1362, metadata !"flushes", metadata !1363, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1367} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1367 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1368 = metadata !{i32 786445, metadata !1362, metadata !"lengths", metadata !1363, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1369 = metadata !{i32 786445, metadata !1362, metadata !"values", metadata !1363, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1370 = metadata !{i32 786445, metadata !1276, metadata !"error_pages", metadata !1199, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1371 = metadata !{i32 786445, metadata !1276, metadata !"try_files", metadata !1199, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1372} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1372 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1373} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1373 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1199, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1374} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1374 = metadata !{i32 786451, null, metadata !"", metadata !1199, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1375, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1375 = metadata !{metadata !1376, metadata !1377, metadata !1378, metadata !1379, metadata !1380}
!1376 = metadata !{i32 786445, metadata !1374, metadata !"lengths", metadata !1199, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1377 = metadata !{i32 786445, metadata !1374, metadata !"values", metadata !1199, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1378 = metadata !{i32 786445, metadata !1374, metadata !"name", metadata !1199, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1379 = metadata !{i32 786445, metadata !1374, metadata !"code", metadata !1199, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1380 = metadata !{i32 786445, metadata !1374, metadata !"test_dir", metadata !1199, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1381 = metadata !{i32 786445, metadata !1276, metadata !"client_body_temp_path", metadata !1199, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !619} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1382 = metadata !{i32 786445, metadata !1276, metadata !"open_file_cache", metadata !1199, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1383} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1383 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1384} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1384 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1199, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1385} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1385 = metadata !{i32 786451, null, metadata !"", metadata !1386, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1387, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1386 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1387 = metadata !{metadata !1388, metadata !1389, metadata !1390, metadata !1391, metadata !1392, metadata !1393}
!1388 = metadata !{i32 786445, metadata !1385, metadata !"rbtree", metadata !1386, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !554} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1389 = metadata !{i32 786445, metadata !1385, metadata !"sentinel", metadata !1386, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1390 = metadata !{i32 786445, metadata !1385, metadata !"expire_queue", metadata !1386, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1391 = metadata !{i32 786445, metadata !1385, metadata !"current", metadata !1386, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1392 = metadata !{i32 786445, metadata !1385, metadata !"max", metadata !1386, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1393 = metadata !{i32 786445, metadata !1385, metadata !"inactive", metadata !1386, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !532} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1394 = metadata !{i32 786445, metadata !1276, metadata !"open_file_cache_valid", metadata !1199, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !532} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1395 = metadata !{i32 786445, metadata !1276, metadata !"open_file_cache_min_uses", metadata !1199, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1396 = metadata !{i32 786445, metadata !1276, metadata !"open_file_cache_errors", metadata !1199, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !1267} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1397 = metadata !{i32 786445, metadata !1276, metadata !"open_file_cache_events", metadata !1199, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !1267} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1398 = metadata !{i32 786445, metadata !1276, metadata !"error_log", metadata !1199, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1399 = metadata !{i32 786445, metadata !1276, metadata !"types_hash_max_size", metadata !1199, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1400 = metadata !{i32 786445, metadata !1276, metadata !"types_hash_bucket_size", metadata !1199, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1401 = metadata !{i32 786445, metadata !1276, metadata !"locations", metadata !1199, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1402 = metadata !{i32 786445, metadata !1198, metadata !"name", metadata !1199, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1403 = metadata !{i32 786445, metadata !497, metadata !"phase_handler", metadata !498, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !487} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1404 = metadata !{i32 786445, metadata !497, metadata !"content_handler", metadata !498, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1305} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1405 = metadata !{i32 786445, metadata !497, metadata !"access_code", metadata !498, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1406 = metadata !{i32 786445, metadata !497, metadata !"variables", metadata !498, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1407} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1407 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1408} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1408 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !498, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1409} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1409 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !498, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1410} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1410 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1411, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1411 = metadata !{metadata !1412, metadata !1413, metadata !1414, metadata !1415, metadata !1416, metadata !1417}
!1412 = metadata !{i32 786445, metadata !1410, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1413 = metadata !{i32 786445, metadata !1410, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1414 = metadata !{i32 786445, metadata !1410, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1415 = metadata !{i32 786445, metadata !1410, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1416 = metadata !{i32 786445, metadata !1410, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1417 = metadata !{i32 786445, metadata !1410, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1418 = metadata !{i32 786445, metadata !497, metadata !"ncaptures", metadata !498, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1419 = metadata !{i32 786445, metadata !497, metadata !"captures", metadata !498, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1420} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1420 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1421 = metadata !{i32 786445, metadata !497, metadata !"captures_data", metadata !498, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1422 = metadata !{i32 786445, metadata !497, metadata !"limit_rate", metadata !498, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1423 = metadata !{i32 786445, metadata !497, metadata !"header_size", metadata !498, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1424 = metadata !{i32 786445, metadata !497, metadata !"request_length", metadata !498, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1425 = metadata !{i32 786445, metadata !497, metadata !"err_status", metadata !498, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1426 = metadata !{i32 786445, metadata !497, metadata !"http_connection", metadata !498, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1427} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1427 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1428} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1428 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !498, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1429} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1429 = metadata !{i32 786451, null, metadata !"", metadata !498, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1430, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1430 = metadata !{metadata !1431, metadata !1432, metadata !1434, metadata !1435, metadata !1436, metadata !1437}
!1431 = metadata !{i32 786445, metadata !1429, metadata !"request", metadata !498, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !512} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1432 = metadata !{i32 786445, metadata !1429, metadata !"busy", metadata !498, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1433} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1433 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1434 = metadata !{i32 786445, metadata !1429, metadata !"nbusy", metadata !498, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !487} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1435 = metadata !{i32 786445, metadata !1429, metadata !"free", metadata !498, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1433} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1436 = metadata !{i32 786445, metadata !1429, metadata !"nfree", metadata !498, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !487} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1437 = metadata !{i32 786445, metadata !1429, metadata !"pipeline", metadata !498, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1438 = metadata !{i32 786445, metadata !497, metadata !"log_handler", metadata !498, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1439} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1439 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !498, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1440} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1440 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1441} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1441 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1442, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1442 = metadata !{metadata !44, metadata !512, metadata !512, metadata !44, metadata !30}
!1443 = metadata !{i32 786445, metadata !497, metadata !"cleanup", metadata !498, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1444} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1444 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1445} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1445 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !498, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1446} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1446 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !498, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1447, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1447 = metadata !{metadata !1448, metadata !1449, metadata !1450}
!1448 = metadata !{i32 786445, metadata !1446, metadata !"handler", metadata !498, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1027} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1449 = metadata !{i32 786445, metadata !1446, metadata !"data", metadata !498, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1450 = metadata !{i32 786445, metadata !1446, metadata !"next", metadata !498, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1444} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1451 = metadata !{i32 786445, metadata !497, metadata !"subrequests", metadata !498, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1452 = metadata !{i32 786445, metadata !497, metadata !"count", metadata !498, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1453 = metadata !{i32 786445, metadata !497, metadata !"blocked", metadata !498, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1454 = metadata !{i32 786445, metadata !497, metadata !"aio", metadata !498, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1455 = metadata !{i32 786445, metadata !497, metadata !"http_state", metadata !498, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1456 = metadata !{i32 786445, metadata !497, metadata !"complex_uri", metadata !498, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1457 = metadata !{i32 786445, metadata !497, metadata !"quoted_uri", metadata !498, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1458 = metadata !{i32 786445, metadata !497, metadata !"plus_in_uri", metadata !498, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1459 = metadata !{i32 786445, metadata !497, metadata !"space_in_uri", metadata !498, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1460 = metadata !{i32 786445, metadata !497, metadata !"invalid_header", metadata !498, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1461 = metadata !{i32 786445, metadata !497, metadata !"add_uri_to_alias", metadata !498, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1462 = metadata !{i32 786445, metadata !497, metadata !"valid_location", metadata !498, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1463 = metadata !{i32 786445, metadata !497, metadata !"valid_unparsed_uri", metadata !498, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1464 = metadata !{i32 786445, metadata !497, metadata !"uri_changed", metadata !498, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1465 = metadata !{i32 786445, metadata !497, metadata !"uri_changes", metadata !498, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1466 = metadata !{i32 786445, metadata !497, metadata !"request_body_in_single_buf", metadata !498, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1467 = metadata !{i32 786445, metadata !497, metadata !"request_body_in_file_only", metadata !498, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1468 = metadata !{i32 786445, metadata !497, metadata !"request_body_in_persistent_file", metadata !498, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1469 = metadata !{i32 786445, metadata !497, metadata !"request_body_in_clean_file", metadata !498, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1470 = metadata !{i32 786445, metadata !497, metadata !"request_body_file_group_access", metadata !498, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1471 = metadata !{i32 786445, metadata !497, metadata !"request_body_file_log_level", metadata !498, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1472 = metadata !{i32 786445, metadata !497, metadata !"subrequest_in_memory", metadata !498, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1473 = metadata !{i32 786445, metadata !497, metadata !"waited", metadata !498, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1474 = metadata !{i32 786445, metadata !497, metadata !"cached", metadata !498, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1475 = metadata !{i32 786445, metadata !497, metadata !"gzip_tested", metadata !498, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1476 = metadata !{i32 786445, metadata !497, metadata !"gzip_ok", metadata !498, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1477 = metadata !{i32 786445, metadata !497, metadata !"gzip_vary", metadata !498, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1478 = metadata !{i32 786445, metadata !497, metadata !"proxy", metadata !498, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1479 = metadata !{i32 786445, metadata !497, metadata !"bypass_cache", metadata !498, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1480 = metadata !{i32 786445, metadata !497, metadata !"no_cache", metadata !498, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1481 = metadata !{i32 786445, metadata !497, metadata !"limit_conn_set", metadata !498, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1482 = metadata !{i32 786445, metadata !497, metadata !"limit_req_set", metadata !498, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1483 = metadata !{i32 786445, metadata !497, metadata !"pipeline", metadata !498, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1484 = metadata !{i32 786445, metadata !497, metadata !"plain_http", metadata !498, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1485 = metadata !{i32 786445, metadata !497, metadata !"chunked", metadata !498, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1486 = metadata !{i32 786445, metadata !497, metadata !"header_only", metadata !498, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1487 = metadata !{i32 786445, metadata !497, metadata !"keepalive", metadata !498, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1488 = metadata !{i32 786445, metadata !497, metadata !"lingering_close", metadata !498, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1489 = metadata !{i32 786445, metadata !497, metadata !"discard_body", metadata !498, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1490 = metadata !{i32 786445, metadata !497, metadata !"internal", metadata !498, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1491 = metadata !{i32 786445, metadata !497, metadata !"error_page", metadata !498, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1492 = metadata !{i32 786445, metadata !497, metadata !"ignore_content_encoding", metadata !498, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1493 = metadata !{i32 786445, metadata !497, metadata !"filter_finalize", metadata !498, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1494 = metadata !{i32 786445, metadata !497, metadata !"post_action", metadata !498, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1495 = metadata !{i32 786445, metadata !497, metadata !"request_complete", metadata !498, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1496 = metadata !{i32 786445, metadata !497, metadata !"request_output", metadata !498, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1497 = metadata !{i32 786445, metadata !497, metadata !"header_sent", metadata !498, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1498 = metadata !{i32 786445, metadata !497, metadata !"expect_tested", metadata !498, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1499 = metadata !{i32 786445, metadata !497, metadata !"root_tested", metadata !498, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1500 = metadata !{i32 786445, metadata !497, metadata !"done", metadata !498, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1501 = metadata !{i32 786445, metadata !497, metadata !"logged", metadata !498, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1502 = metadata !{i32 786445, metadata !497, metadata !"buffered", metadata !498, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1503 = metadata !{i32 786445, metadata !497, metadata !"main_filter_need_in_memory", metadata !498, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1504 = metadata !{i32 786445, metadata !497, metadata !"filter_need_in_memory", metadata !498, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1505 = metadata !{i32 786445, metadata !497, metadata !"filter_need_temporary", metadata !498, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1506 = metadata !{i32 786445, metadata !497, metadata !"allow_ranges", metadata !498, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1507 = metadata !{i32 786445, metadata !497, metadata !"state", metadata !498, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1508 = metadata !{i32 786445, metadata !497, metadata !"header_hash", metadata !498, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1509 = metadata !{i32 786445, metadata !497, metadata !"lowcase_index", metadata !498, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1510 = metadata !{i32 786445, metadata !497, metadata !"lowcase_header", metadata !498, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1511} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1511 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1512, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1512 = metadata !{metadata !1513}
!1513 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1514 = metadata !{i32 786445, metadata !497, metadata !"header_name_start", metadata !498, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1515 = metadata !{i32 786445, metadata !497, metadata !"header_name_end", metadata !498, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1516 = metadata !{i32 786445, metadata !497, metadata !"header_start", metadata !498, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1517 = metadata !{i32 786445, metadata !497, metadata !"header_end", metadata !498, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1518 = metadata !{i32 786445, metadata !497, metadata !"uri_start", metadata !498, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1519 = metadata !{i32 786445, metadata !497, metadata !"uri_end", metadata !498, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1520 = metadata !{i32 786445, metadata !497, metadata !"uri_ext", metadata !498, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1521 = metadata !{i32 786445, metadata !497, metadata !"args_start", metadata !498, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1522 = metadata !{i32 786445, metadata !497, metadata !"request_start", metadata !498, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1523 = metadata !{i32 786445, metadata !497, metadata !"request_end", metadata !498, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1524 = metadata !{i32 786445, metadata !497, metadata !"method_end", metadata !498, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1525 = metadata !{i32 786445, metadata !497, metadata !"schema_start", metadata !498, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1526 = metadata !{i32 786445, metadata !497, metadata !"schema_end", metadata !498, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1527 = metadata !{i32 786445, metadata !497, metadata !"host_start", metadata !498, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1528 = metadata !{i32 786445, metadata !497, metadata !"host_end", metadata !498, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1529 = metadata !{i32 786445, metadata !497, metadata !"port_start", metadata !498, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1530 = metadata !{i32 786445, metadata !497, metadata !"port_end", metadata !498, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1531 = metadata !{i32 786445, metadata !497, metadata !"http_minor", metadata !498, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1532 = metadata !{i32 786445, metadata !497, metadata !"http_major", metadata !498, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1533 = metadata !{i32 786445, metadata !480, metadata !"data", metadata !471, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!1534 = metadata !{i32 786445, metadata !476, metadata !"srv_conf", metadata !471, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!1535 = metadata !{i32 786445, metadata !476, metadata !"servers", metadata !471, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!1536 = metadata !{i32 786445, metadata !476, metadata !"flags", metadata !471, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!1537 = metadata !{i32 786445, metadata !476, metadata !"host", metadata !471, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!1538 = metadata !{i32 786445, metadata !476, metadata !"file_name", metadata !471, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!1539 = metadata !{i32 786445, metadata !476, metadata !"line", metadata !471, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!1540 = metadata !{i32 786445, metadata !476, metadata !"port", metadata !471, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !907} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!1541 = metadata !{i32 786445, metadata !476, metadata !"default_port", metadata !471, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !907} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!1542 = metadata !{i32 786445, metadata !470, metadata !"connect_timeout", metadata !471, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!1543 = metadata !{i32 786445, metadata !470, metadata !"send_timeout", metadata !471, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!1544 = metadata !{i32 786445, metadata !470, metadata !"read_timeout", metadata !471, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!1545 = metadata !{i32 786445, metadata !470, metadata !"timeout", metadata !471, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!1546 = metadata !{i32 786445, metadata !470, metadata !"send_lowat", metadata !471, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!1547 = metadata !{i32 786445, metadata !470, metadata !"buffer_size", metadata !471, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!1548 = metadata !{i32 786445, metadata !470, metadata !"busy_buffers_size", metadata !471, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!1549 = metadata !{i32 786445, metadata !470, metadata !"max_temp_file_size", metadata !471, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!1550 = metadata !{i32 786445, metadata !470, metadata !"temp_file_write_size", metadata !471, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!1551 = metadata !{i32 786445, metadata !470, metadata !"busy_buffers_size_conf", metadata !471, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!1552 = metadata !{i32 786445, metadata !470, metadata !"max_temp_file_size_conf", metadata !471, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!1553 = metadata !{i32 786445, metadata !470, metadata !"temp_file_write_size_conf", metadata !471, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!1554 = metadata !{i32 786445, metadata !470, metadata !"bufs", metadata !471, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !795} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!1555 = metadata !{i32 786445, metadata !470, metadata !"ignore_headers", metadata !471, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!1556 = metadata !{i32 786445, metadata !470, metadata !"next_upstream", metadata !471, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!1557 = metadata !{i32 786445, metadata !470, metadata !"store_access", metadata !471, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!1558 = metadata !{i32 786445, metadata !470, metadata !"buffering", metadata !471, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !1267} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!1559 = metadata !{i32 786445, metadata !470, metadata !"pass_request_headers", metadata !471, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !1267} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!1560 = metadata !{i32 786445, metadata !470, metadata !"pass_request_body", metadata !471, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !1267} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!1561 = metadata !{i32 786445, metadata !470, metadata !"ignore_client_abort", metadata !471, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !1267} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!1562 = metadata !{i32 786445, metadata !470, metadata !"intercept_errors", metadata !471, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !1267} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!1563 = metadata !{i32 786445, metadata !470, metadata !"cyclic_temp_file", metadata !471, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !1267} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!1564 = metadata !{i32 786445, metadata !470, metadata !"temp_path", metadata !471, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !619} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!1565 = metadata !{i32 786445, metadata !470, metadata !"hide_headers_hash", metadata !471, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !1168} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!1566 = metadata !{i32 786445, metadata !470, metadata !"hide_headers", metadata !471, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!1567 = metadata !{i32 786445, metadata !470, metadata !"pass_headers", metadata !471, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!1568 = metadata !{i32 786445, metadata !470, metadata !"local", metadata !471, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !741} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!1569 = metadata !{i32 786445, metadata !470, metadata !"cache", metadata !471, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !648} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!1570 = metadata !{i32 786445, metadata !470, metadata !"cache_min_uses", metadata !471, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!1571 = metadata !{i32 786445, metadata !470, metadata !"cache_use_stale", metadata !471, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!1572 = metadata !{i32 786445, metadata !470, metadata !"cache_methods", metadata !471, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!1573 = metadata !{i32 786445, metadata !470, metadata !"cache_lock", metadata !471, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !1267} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!1574 = metadata !{i32 786445, metadata !470, metadata !"cache_lock_timeout", metadata !471, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!1575 = metadata !{i32 786445, metadata !470, metadata !"cache_valid", metadata !471, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!1576 = metadata !{i32 786445, metadata !470, metadata !"cache_bypass", metadata !471, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!1577 = metadata !{i32 786445, metadata !470, metadata !"no_cache", metadata !471, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!1578 = metadata !{i32 786445, metadata !470, metadata !"store_lengths", metadata !471, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!1579 = metadata !{i32 786445, metadata !470, metadata !"store_values", metadata !471, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!1580 = metadata !{i32 786445, metadata !470, metadata !"store", metadata !471, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!1581 = metadata !{i32 786445, metadata !470, metadata !"intercept_404", metadata !471, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!1582 = metadata !{i32 786445, metadata !470, metadata !"change_buffering", metadata !471, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!1583 = metadata !{i32 786445, metadata !470, metadata !"module", metadata !471, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!1584 = metadata !{i32 786445, metadata !466, metadata !"index", metadata !6, i32 10, i64 32, i64 32, i64 1408, i32 0, metadata !487} ; [ DW_TAG_member ] [index] [line 10, size 32, align 32, offset 1408] [from ngx_int_t]
!1585 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 381, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 381]
!1586 = metadata !{i32 786688, metadata !463, metadata !"u", metadata !6, i32 382, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 382]
!1587 = metadata !{i32 786454, null, metadata !"ngx_url_t", metadata !6, i32 102, i64 0, i64 0, i64 0, i32 0, metadata !1588} ; [ DW_TAG_typedef ] [ngx_url_t] [line 102, size 0, align 0, offset 0] [from ]
!1588 = metadata !{i32 786451, null, metadata !"", metadata !744, i32 77, i64 1376, i64 32, i32 0, i32 0, null, metadata !1589, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 77, size 1376, align 32, offset 0] [from ]
!1589 = metadata !{metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597, metadata !1598, metadata !1599, metadata !1600, metadata !1601, metadata !1602, metadata !1603, metadata !1604, metadata !1608, metadata !1609, metadata !1610}
!1590 = metadata !{i32 786445, metadata !1588, metadata !"url", metadata !744, i32 78, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [url] [line 78, size 64, align 32, offset 0] [from ngx_str_t]
!1591 = metadata !{i32 786445, metadata !1588, metadata !"host", metadata !744, i32 79, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 79, size 64, align 32, offset 64] [from ngx_str_t]
!1592 = metadata !{i32 786445, metadata !1588, metadata !"port_text", metadata !744, i32 80, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [port_text] [line 80, size 64, align 32, offset 128] [from ngx_str_t]
!1593 = metadata !{i32 786445, metadata !1588, metadata !"uri", metadata !744, i32 81, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 81, size 64, align 32, offset 192] [from ngx_str_t]
!1594 = metadata !{i32 786445, metadata !1588, metadata !"port", metadata !744, i32 83, i64 16, i64 16, i64 256, i32 0, metadata !907} ; [ DW_TAG_member ] [port] [line 83, size 16, align 16, offset 256] [from in_port_t]
!1595 = metadata !{i32 786445, metadata !1588, metadata !"default_port", metadata !744, i32 84, i64 16, i64 16, i64 272, i32 0, metadata !907} ; [ DW_TAG_member ] [default_port] [line 84, size 16, align 16, offset 272] [from in_port_t]
!1596 = metadata !{i32 786445, metadata !1588, metadata !"family", metadata !744, i32 85, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [family] [line 85, size 32, align 32, offset 288] [from int]
!1597 = metadata !{i32 786445, metadata !1588, metadata !"listen", metadata !744, i32 87, i64 1, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 87, size 1, align 32, offset 320] [from unsigned int]
!1598 = metadata !{i32 786445, metadata !1588, metadata !"uri_part", metadata !744, i32 88, i64 1, i64 32, i64 321, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_part] [line 88, size 1, align 32, offset 321] [from unsigned int]
!1599 = metadata !{i32 786445, metadata !1588, metadata !"no_resolve", metadata !744, i32 89, i64 1, i64 32, i64 322, i32 0, metadata !28} ; [ DW_TAG_member ] [no_resolve] [line 89, size 1, align 32, offset 322] [from unsigned int]
!1600 = metadata !{i32 786445, metadata !1588, metadata !"one_addr", metadata !744, i32 90, i64 1, i64 32, i64 323, i32 0, metadata !28} ; [ DW_TAG_member ] [one_addr] [line 90, size 1, align 32, offset 323] [from unsigned int]
!1601 = metadata !{i32 786445, metadata !1588, metadata !"no_port", metadata !744, i32 92, i64 1, i64 32, i64 324, i32 0, metadata !28} ; [ DW_TAG_member ] [no_port] [line 92, size 1, align 32, offset 324] [from unsigned int]
!1602 = metadata !{i32 786445, metadata !1588, metadata !"wildcard", metadata !744, i32 93, i64 1, i64 32, i64 325, i32 0, metadata !28} ; [ DW_TAG_member ] [wildcard] [line 93, size 1, align 32, offset 325] [from unsigned int]
!1603 = metadata !{i32 786445, metadata !1588, metadata !"socklen", metadata !744, i32 95, i64 32, i64 32, i64 352, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 95, size 32, align 32, offset 352] [from socklen_t]
!1604 = metadata !{i32 786445, metadata !1588, metadata !"sockaddr", metadata !744, i32 96, i64 880, i64 8, i64 384, i32 0, metadata !1605} ; [ DW_TAG_member ] [sockaddr] [line 96, size 880, align 8, offset 384] [from ]
!1605 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 880, i64 8, i32 0, i32 0, metadata !45, metadata !1606, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 880, align 8, offset 0] [from u_char]
!1606 = metadata !{metadata !1607}
!1607 = metadata !{i32 786465, i64 0, i64 109}    ; [ DW_TAG_subrange_type ] [0, 109]
!1608 = metadata !{i32 786445, metadata !1588, metadata !"addrs", metadata !744, i32 98, i64 32, i64 32, i64 1280, i32 0, metadata !741} ; [ DW_TAG_member ] [addrs] [line 98, size 32, align 32, offset 1280] [from ]
!1609 = metadata !{i32 786445, metadata !1588, metadata !"naddrs", metadata !744, i32 99, i64 32, i64 32, i64 1312, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 99, size 32, align 32, offset 1312] [from ngx_uint_t]
!1610 = metadata !{i32 786445, metadata !1588, metadata !"err", metadata !744, i32 101, i64 32, i64 32, i64 1344, i32 0, metadata !9} ; [ DW_TAG_member ] [err] [line 101, size 32, align 32, offset 1344] [from ]
!1611 = metadata !{i32 786688, metadata !463, metadata !"clcf", metadata !6, i32 383, metadata !1274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 383]
!1612 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_handler", metadata !"ngx_http_memcached_handler", metadata !"", metadata !6, i32 51, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_handler, null, null, metadata !1613, i32 52} ; [ DW_TAG_subprogram ] [line 51] [local] [def] [scope 52] [ngx_http_memcached_handler]
!1613 = metadata !{metadata !1614}
!1614 = metadata !{metadata !1615, metadata !1616, metadata !1618, metadata !1619, metadata !1627}
!1615 = metadata !{i32 786689, metadata !1612, metadata !"r", metadata !6, i32 16777267, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 51]
!1616 = metadata !{i32 786688, metadata !1617, metadata !"rc", metadata !6, i32 53, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 53]
!1617 = metadata !{i32 786443, metadata !1612, i32 52, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1618 = metadata !{i32 786688, metadata !1617, metadata !"u", metadata !6, i32 54, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 54]
!1619 = metadata !{i32 786688, metadata !1617, metadata !"ctx", metadata !6, i32 55, metadata !1620, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 55]
!1620 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1621} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_memcached_ctx_t]
!1621 = metadata !{i32 786454, null, metadata !"ngx_http_memcached_ctx_t", metadata !6, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !1622} ; [ DW_TAG_typedef ] [ngx_http_memcached_ctx_t] [line 14, size 0, align 0, offset 0] [from ]
!1622 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 11, i64 128, i64 32, i32 0, i32 0, null, metadata !1623, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 11, size 128, align 32, offset 0] [from ]
!1623 = metadata !{metadata !1624, metadata !1625, metadata !1626}
!1624 = metadata !{i32 786445, metadata !1622, metadata !"rest", metadata !6, i32 12, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [rest] [line 12, size 32, align 32, offset 0] [from size_t]
!1625 = metadata !{i32 786445, metadata !1622, metadata !"request", metadata !6, i32 13, i64 32, i64 32, i64 32, i32 0, metadata !495} ; [ DW_TAG_member ] [request] [line 13, size 32, align 32, offset 32] [from ]
!1626 = metadata !{i32 786445, metadata !1622, metadata !"key", metadata !6, i32 14, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 14, size 64, align 32, offset 64] [from ngx_str_t]
!1627 = metadata !{i32 786688, metadata !1617, metadata !"mlcf", metadata !6, i32 56, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mlcf] [line 56]
!1628 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_filter", metadata !"ngx_http_memcached_filter", metadata !"", metadata !6, i32 228, metadata !986, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i32)* @ngx_http_memcached_filter, null, null, metadata !1629, i32 229} ; [ DW_TAG_subprogram ] [line 228] [local] [def] [scope 229] [ngx_http_memcached_filter]
!1629 = metadata !{metadata !1630}
!1630 = metadata !{metadata !1631, metadata !1632, metadata !1633, metadata !1635, metadata !1636, metadata !1637, metadata !1638, metadata !1639}
!1631 = metadata !{i32 786689, metadata !1628, metadata !"data", metadata !6, i32 16777444, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 228]
!1632 = metadata !{i32 786689, metadata !1628, metadata !"bytes", metadata !6, i32 33554660, metadata !286, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bytes] [line 228]
!1633 = metadata !{i32 786688, metadata !1634, metadata !"ctx", metadata !6, i32 230, metadata !1620, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 230]
!1634 = metadata !{i32 786443, metadata !1628, i32 229, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1635 = metadata !{i32 786688, metadata !1634, metadata !"last", metadata !6, i32 231, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 231]
!1636 = metadata !{i32 786688, metadata !1634, metadata !"b", metadata !6, i32 232, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 232]
!1637 = metadata !{i32 786688, metadata !1634, metadata !"cl", metadata !6, i32 233, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 233]
!1638 = metadata !{i32 786688, metadata !1634, metadata !"ll", metadata !6, i32 234, metadata !764, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ll] [line 234]
!1639 = metadata !{i32 786688, metadata !1634, metadata !"u", metadata !6, i32 235, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 235]
!1640 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_filter_init", metadata !"ngx_http_memcached_filter_init", metadata !"", metadata !6, i32 219, metadata !982, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*)* @ngx_http_memcached_filter_init, null, null, metadata !1641, i32 220} ; [ DW_TAG_subprogram ] [line 219] [local] [def] [scope 220] [ngx_http_memcached_filter_init]
!1641 = metadata !{metadata !1642}
!1642 = metadata !{metadata !1643, metadata !1644, metadata !1646}
!1643 = metadata !{i32 786689, metadata !1640, metadata !"data", metadata !6, i32 16777435, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 219]
!1644 = metadata !{i32 786688, metadata !1645, metadata !"ctx", metadata !6, i32 221, metadata !1620, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 221]
!1645 = metadata !{i32 786443, metadata !1640, i32 220, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1646 = metadata !{i32 786688, metadata !1645, metadata !"u", metadata !6, i32 222, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 222]
!1647 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_finalize_request", metadata !"ngx_http_memcached_finalize_request", metadata !"", metadata !6, i32 299, metadata !999, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_request_s*, i32)* @ngx_http_memcached_finalize_request, null, null, metadata !1648, i32 300} ; [ DW_TAG_subprogram ] [line 299] [local] [def] [scope 300] [ngx_http_memcached_finalize_request]
!1648 = metadata !{metadata !1649}
!1649 = metadata !{metadata !1650, metadata !1651}
!1650 = metadata !{i32 786689, metadata !1647, metadata !"r", metadata !6, i32 16777515, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 299]
!1651 = metadata !{i32 786689, metadata !1647, metadata !"rc", metadata !6, i32 33554731, metadata !487, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 299]
!1652 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_abort_request", metadata !"ngx_http_memcached_abort_request", metadata !"", metadata !6, i32 293, metadata !510, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_request_s*)* @ngx_http_memcached_abort_request, null, null, metadata !1653, i32 294} ; [ DW_TAG_subprogram ] [line 293] [local] [def] [scope 294] [ngx_http_memcached_abort_request]
!1653 = metadata !{metadata !1654}
!1654 = metadata !{metadata !1655}
!1655 = metadata !{i32 786689, metadata !1652, metadata !"r", metadata !6, i32 16777509, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 293]
!1656 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_process_header", metadata !"ngx_http_memcached_process_header", metadata !"", metadata !6, i32 150, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_process_header, null, null, metadata !1657, i32 151} ; [ DW_TAG_subprogram ] [line 150] [local] [def] [scope 151] [ngx_http_memcached_process_header]
!1657 = metadata !{metadata !1658}
!1658 = metadata !{metadata !1659, metadata !1660, metadata !1662, metadata !1663, metadata !1664, metadata !1665, metadata !1666, metadata !1668, metadata !1669, metadata !1671}
!1659 = metadata !{i32 786689, metadata !1656, metadata !"r", metadata !6, i32 16777366, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 150]
!1660 = metadata !{i32 786688, metadata !1661, metadata !"p", metadata !6, i32 152, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 152]
!1661 = metadata !{i32 786443, metadata !1656, i32 151, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1662 = metadata !{i32 786688, metadata !1661, metadata !"len", metadata !6, i32 153, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 153]
!1663 = metadata !{i32 786688, metadata !1661, metadata !"line", metadata !6, i32 154, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [line] [line 154]
!1664 = metadata !{i32 786688, metadata !1661, metadata !"u", metadata !6, i32 155, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 155]
!1665 = metadata !{i32 786688, metadata !1661, metadata !"ctx", metadata !6, i32 156, metadata !1620, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 156]
!1666 = metadata !{i32 786688, metadata !1667, metadata !"__s1_len", metadata !6, i32 205, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 205]
!1667 = metadata !{i32 786443, metadata !1661, i32 205, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1668 = metadata !{i32 786688, metadata !1667, metadata !"__s2_len", metadata !6, i32 205, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 205]
!1669 = metadata !{i32 786688, metadata !1670, metadata !"__s1", metadata !6, i32 205, metadata !1228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 205]
!1670 = metadata !{i32 786443, metadata !1667, i32 205, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1671 = metadata !{i32 786688, metadata !1670, metadata !"__result", metadata !6, i32 205, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 205]
!1672 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_reinit_request", metadata !"ngx_http_memcached_reinit_request", metadata !"", metadata !6, i32 145, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_reinit_request, null, null, metadata !1673, i32 146} ; [ DW_TAG_subprogram ] [line 145] [local] [def] [scope 146] [ngx_http_memcached_reinit_request]
!1673 = metadata !{metadata !1674}
!1674 = metadata !{metadata !1675}
!1675 = metadata !{i32 786689, metadata !1672, metadata !"r", metadata !6, i32 16777361, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 145]
!1676 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_create_request", metadata !"ngx_http_memcached_create_request", metadata !"", metadata !6, i32 97, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_memcached_create_request, null, null, metadata !1677, i32 98} ; [ DW_TAG_subprogram ] [line 97] [local] [def] [scope 98] [ngx_http_memcached_create_request]
!1677 = metadata !{metadata !1678}
!1678 = metadata !{metadata !1679, metadata !1680, metadata !1682, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1687}
!1679 = metadata !{i32 786689, metadata !1676, metadata !"r", metadata !6, i32 16777313, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 97]
!1680 = metadata !{i32 786688, metadata !1681, metadata !"len", metadata !6, i32 99, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 99]
!1681 = metadata !{i32 786443, metadata !1676, i32 98, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1682 = metadata !{i32 786688, metadata !1681, metadata !"escape", metadata !6, i32 100, metadata !27, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [escape] [line 100]
!1683 = metadata !{i32 786688, metadata !1681, metadata !"b", metadata !6, i32 101, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 101]
!1684 = metadata !{i32 786688, metadata !1681, metadata !"cl", metadata !6, i32 102, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 102]
!1685 = metadata !{i32 786688, metadata !1681, metadata !"ctx", metadata !6, i32 103, metadata !1620, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 103]
!1686 = metadata !{i32 786688, metadata !1681, metadata !"vv", metadata !6, i32 104, metadata !1407, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vv] [line 104]
!1687 = metadata !{i32 786688, metadata !1681, metadata !"mlcf", metadata !6, i32 105, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mlcf] [line 105]
!1688 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_merge_loc_conf", metadata !"ngx_http_memcached_merge_loc_conf", metadata !"", metadata !6, i32 342, metadata !1689, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_memcached_merge_loc_conf, null, null, metadata !1691, i32 343} ; [ DW_TAG_subprogram ] [line 342] [local] [def] [scope 343] [ngx_http_memcached_merge_loc_conf]
!1689 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1690, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1690 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!1691 = metadata !{metadata !1692}
!1692 = metadata !{metadata !1693, metadata !1694, metadata !1695, metadata !1696, metadata !1698}
!1693 = metadata !{i32 786689, metadata !1688, metadata !"cf", metadata !6, i32 16777558, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 342]
!1694 = metadata !{i32 786689, metadata !1688, metadata !"parent", metadata !6, i32 33554774, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 342]
!1695 = metadata !{i32 786689, metadata !1688, metadata !"child", metadata !6, i32 50331990, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 342]
!1696 = metadata !{i32 786688, metadata !1697, metadata !"prev", metadata !6, i32 344, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 344]
!1697 = metadata !{i32 786443, metadata !1688, i32 343, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1698 = metadata !{i32 786688, metadata !1697, metadata !"conf", metadata !6, i32 345, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 345]
!1699 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_memcached_create_loc_conf", metadata !"ngx_http_memcached_create_loc_conf", metadata !"", metadata !6, i32 305, metadata !1700, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_memcached_create_loc_conf, null, null, metadata !1702, i32 306} ; [ DW_TAG_subprogram ] [line 305] [local] [def] [scope 306] [ngx_http_memcached_create_loc_conf]
!1700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1701 = metadata !{metadata !24, metadata !11}
!1702 = metadata !{metadata !1703}
!1703 = metadata !{metadata !1704, metadata !1705}
!1704 = metadata !{i32 786689, metadata !1699, metadata !"cf", metadata !6, i32 16777521, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 305]
!1705 = metadata !{i32 786688, metadata !1706, metadata !"conf", metadata !6, i32 307, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 307]
!1706 = metadata !{i32 786443, metadata !1699, i32 306, i32 0, metadata !6, i32 56} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1707 = metadata !{metadata !1708}
!1708 = metadata !{metadata !1709, metadata !1747, metadata !1751, metadata !1760, metadata !1761, metadata !1763}
!1709 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_memcached_module", metadata !"ngx_http_memcached_module", metadata !"", metadata !6, i32 36, metadata !1710, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_memcached_module} ; [ DW_TAG_variable ] [ngx_http_memcached_module] [line 36] [def]
!1710 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1711} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1711 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1712, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1712 = metadata !{metadata !1713, metadata !1714, metadata !1715, metadata !1716, metadata !1717, metadata !1718, metadata !1719, metadata !1720, metadata !1721, metadata !1722, metadata !1723, metadata !1727, metadata !1731, metadata !1732, metadata !1733, metadata !1737, metadata !1738, metadata !1739, metadata !1740, metadata !1741, metadata !1742, metadata !1743, metadata !1744, metadata !1745, metadata !1746}
!1713 = metadata !{i32 786445, metadata !1711, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1714 = metadata !{i32 786445, metadata !1711, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1715 = metadata !{i32 786445, metadata !1711, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1716 = metadata !{i32 786445, metadata !1711, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1717 = metadata !{i32 786445, metadata !1711, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1718 = metadata !{i32 786445, metadata !1711, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1719 = metadata !{i32 786445, metadata !1711, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1720 = metadata !{i32 786445, metadata !1711, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1721 = metadata !{i32 786445, metadata !1711, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1722 = metadata !{i32 786445, metadata !1711, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1723 = metadata !{i32 786445, metadata !1711, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1724} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1724 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1725} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1725 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1726, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1726 = metadata !{metadata !487, metadata !137}
!1727 = metadata !{i32 786445, metadata !1711, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1728} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1728 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1729} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1729 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1730, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1730 = metadata !{metadata !487, metadata !203}
!1731 = metadata !{i32 786445, metadata !1711, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1728} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1732 = metadata !{i32 786445, metadata !1711, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1728} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1733 = metadata !{i32 786445, metadata !1711, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1734} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1734 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1735} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1735 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1736, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1736 = metadata !{null, metadata !203}
!1737 = metadata !{i32 786445, metadata !1711, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1734} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1738 = metadata !{i32 786445, metadata !1711, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1734} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1739 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1740 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1741 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1742 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1743 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1744 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1745 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1746 = metadata !{i32 786445, metadata !1711, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1747 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_memcached_commands", metadata !"ngx_http_memcached_commands", metadata !"", metadata !6, i32 26, metadata !1748, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_memcached_commands} ; [ DW_TAG_variable ] [ngx_http_memcached_commands] [line 26] [local] [def]
!1748 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1792, i64 32, i32 0, i32 0, metadata !448, metadata !1749, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1792, align 32, offset 0] [from ngx_command_t]
!1749 = metadata !{metadata !1750}
!1750 = metadata !{i32 786465, i64 0, i64 7}      ; [ DW_TAG_subrange_type ] [0, 7]
!1751 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_memcached_next_upstream_masks", metadata !"ngx_http_memcached_next_upstream_masks", metadata !"", metadata !6, i32 25, metadata !1752, i32 1, i32 1, [6 x %struct.ngx_conf_bitmask_t]* @ngx_http_memcached_next_upstream_masks} ; [ DW_TAG_variable ] [ngx_http_memcached_next_upstream_masks] [line 25] [local] [def]
!1752 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 576, i64 32, i32 0, i32 0, metadata !1753, metadata !1758, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 576, align 32, offset 0] [from ngx_conf_bitmask_t]
!1753 = metadata !{i32 786454, null, metadata !"ngx_conf_bitmask_t", metadata !6, i32 218, i64 0, i64 0, i64 0, i32 0, metadata !1754} ; [ DW_TAG_typedef ] [ngx_conf_bitmask_t] [line 218, size 0, align 0, offset 0] [from ]
!1754 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 215, i64 96, i64 32, i32 0, i32 0, null, metadata !1755, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 215, size 96, align 32, offset 0] [from ]
!1755 = metadata !{metadata !1756, metadata !1757}
!1756 = metadata !{i32 786445, metadata !1754, metadata !"name", metadata !13, i32 216, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 216, size 64, align 32, offset 0] [from ngx_str_t]
!1757 = metadata !{i32 786445, metadata !1754, metadata !"mask", metadata !13, i32 217, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [mask] [line 217, size 32, align 32, offset 64] [from ngx_uint_t]
!1758 = metadata !{metadata !1759}
!1759 = metadata !{i32 786465, i64 0, i64 5}      ; [ DW_TAG_subrange_type ] [0, 5]
!1760 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_memcached_key", metadata !"ngx_http_memcached_key", metadata !"", metadata !6, i32 47, metadata !88, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_memcached_key} ; [ DW_TAG_variable ] [ngx_http_memcached_key] [line 47] [local] [def]
!1761 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_memcached_end", metadata !"ngx_http_memcached_end", metadata !"", metadata !6, i32 49, metadata !1762, i32 1, i32 1, [8 x i8]* @ngx_http_memcached_end} ; [ DW_TAG_variable ] [ngx_http_memcached_end] [line 49] [local] [def]
!1762 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 8, i32 0, i32 0, metadata !45, metadata !1749, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from u_char]
!1763 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_memcached_module_ctx", metadata !"ngx_http_memcached_module_ctx", metadata !"", metadata !6, i32 27, metadata !1764, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_memcached_module_ctx} ; [ DW_TAG_variable ] [ngx_http_memcached_module_ctx] [line 27] [local] [def]
!1764 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1765} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1765 = metadata !{i32 786451, null, metadata !"", metadata !1255, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1766, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1766 = metadata !{metadata !1767, metadata !1771, metadata !1772, metadata !1774, metadata !1778, metadata !1779, metadata !1781, metadata !1782}
!1767 = metadata !{i32 786445, metadata !1765, metadata !"preconfiguration", metadata !1255, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1768} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1768 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1769} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1769 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1770, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1770 = metadata !{metadata !487, metadata !11}
!1771 = metadata !{i32 786445, metadata !1765, metadata !"postconfiguration", metadata !1255, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1768} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1772 = metadata !{i32 786445, metadata !1765, metadata !"create_main_conf", metadata !1255, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1773} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1773 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1700} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1774 = metadata !{i32 786445, metadata !1765, metadata !"init_main_conf", metadata !1255, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1775} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1775 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1776} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1776 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1777, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1777 = metadata !{metadata !9, metadata !11, metadata !24}
!1778 = metadata !{i32 786445, metadata !1765, metadata !"create_srv_conf", metadata !1255, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1773} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1779 = metadata !{i32 786445, metadata !1765, metadata !"merge_srv_conf", metadata !1255, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1780} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1780 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1689} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1781 = metadata !{i32 786445, metadata !1765, metadata !"create_loc_conf", metadata !1255, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1773} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1782 = metadata !{i32 786445, metadata !1765, metadata !"merge_loc_conf", metadata !1255, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1780} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1783 = metadata !{i32 378, i32 0, metadata !5, null}
!1784 = metadata !{i32 382, i32 0, metadata !463, null}
!1785 = metadata !{i32 384, i32 0, metadata !463, null}
!1786 = metadata !{metadata !"any pointer", metadata !1787}
!1787 = metadata !{metadata !"omnipotent char", metadata !1788}
!1788 = metadata !{metadata !"Simple C/C++ TBAA"}
!1789 = metadata !{i32 387, i32 0, metadata !463, null}
!1790 = metadata !{i32 388, i32 0, metadata !463, null}
!1791 = metadata !{i32 389, i32 0, metadata !463, null}
!1792 = metadata !{i32 390, i32 0, metadata !463, null}
!1793 = metadata !{i32 391, i32 0, metadata !463, null}
!1794 = metadata !{i32 392, i32 0, metadata !463, null}
!1795 = metadata !{i32 395, i32 0, metadata !463, null}
!1796 = metadata !{metadata !"int", metadata !1787}
!1797 = metadata !{i32 396, i32 0, metadata !463, null}
!1798 = metadata !{i32 397, i32 0, metadata !463, null}
!1799 = metadata !{i32 398, i32 0, metadata !1800, null}
!1800 = metadata !{i32 786443, metadata !463, i32 397, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1801 = metadata !{i32 399, i32 0, metadata !1800, null}
!1802 = metadata !{i32 400, i32 0, metadata !463, null}
!1803 = metadata !{i32 401, i32 0, metadata !463, null}
!1804 = metadata !{i32 405, i32 0, metadata !463, null}
!1805 = metadata !{i32 51, i32 0, metadata !1612, null}
!1806 = metadata !{i32 57, i32 0, metadata !1617, null}
!1807 = metadata !{i32 60, i32 0, metadata !1617, null}
!1808 = metadata !{i32 61, i32 0, metadata !1617, null}
!1809 = metadata !{i32 64, i32 0, metadata !1617, null}
!1810 = metadata !{i32 67, i32 0, metadata !1617, null}
!1811 = metadata !{i32 70, i32 0, metadata !1617, null}
!1812 = metadata !{i32 71, i32 0, metadata !1617, null}
!1813 = metadata !{i32 72, i32 0, metadata !1617, null}
!1814 = metadata !{i32 73, i32 0, metadata !1617, null}
!1815 = metadata !{i32 74, i32 0, metadata !1617, null}
!1816 = metadata !{i32 75, i32 0, metadata !1617, null}
!1817 = metadata !{i32 76, i32 0, metadata !1617, null}
!1818 = metadata !{i32 77, i32 0, metadata !1617, null}
!1819 = metadata !{i32 78, i32 0, metadata !1617, null}
!1820 = metadata !{i32 79, i32 0, metadata !1617, null}
!1821 = metadata !{i32 80, i32 0, metadata !1617, null}
!1822 = metadata !{i32 81, i32 0, metadata !1617, null}
!1823 = metadata !{i32 82, i32 0, metadata !1617, null}
!1824 = metadata !{i32 85, i32 0, metadata !1617, null}
!1825 = metadata !{i32 86, i32 0, metadata !1617, null}
!1826 = metadata !{i32 87, i32 0, metadata !1617, null}
!1827 = metadata !{i32 89, i32 0, metadata !1617, null}
!1828 = metadata !{i32 90, i32 0, metadata !1617, null}
!1829 = metadata !{i32 91, i32 0, metadata !1617, null}
!1830 = metadata !{i32 92, i32 0, metadata !1617, null}
!1831 = metadata !{i32 93, i32 0, metadata !1617, null}
!1832 = metadata !{i32 94, i32 0, metadata !1617, null}
!1833 = metadata !{i32 95, i32 0, metadata !1617, null}
!1834 = metadata !{i32 97, i32 0, metadata !1676, null}
!1835 = metadata !{i32 106, i32 0, metadata !1681, null}
!1836 = metadata !{i32 107, i32 0, metadata !1681, null}
!1837 = metadata !{i32 108, i32 0, metadata !1681, null}
!1838 = metadata !{i32 109, i32 0, metadata !1839, null}
!1839 = metadata !{i32 786443, metadata !1681, i32 108, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1840 = metadata !{i32 110, i32 0, metadata !1839, null}
!1841 = metadata !{i32 113, i32 0, metadata !1681, null}
!1842 = metadata !{i32 114, i32 0, metadata !1681, null}
!1843 = metadata !{i32 115, i32 0, metadata !1681, null}
!1844 = metadata !{i32 116, i32 0, metadata !1681, null}
!1845 = metadata !{i32 119, i32 0, metadata !1681, null}
!1846 = metadata !{i32 120, i32 0, metadata !1681, null}
!1847 = metadata !{i32 123, i32 0, metadata !1681, null}
!1848 = metadata !{i32 124, i32 0, metadata !1681, null}
!1849 = metadata !{i32 125, i32 0, metadata !1681, null}
!1850 = metadata !{i32 126, i32 0, metadata !1681, null}
!1851 = metadata !{i32 127, i32 0, metadata !1681, null}
!1852 = metadata !{i32 128, i32 0, metadata !1681, null}
!1853 = metadata !{i32 129, i32 0, metadata !1681, null}
!1854 = metadata !{i32 130, i32 0, metadata !1681, null}
!1855 = metadata !{i32 131, i32 0, metadata !1681, null}
!1856 = metadata !{i32 132, i32 0, metadata !1681, null}
!1857 = metadata !{i32 133, i32 0, metadata !1858, null}
!1858 = metadata !{i32 786443, metadata !1681, i32 132, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1859 = metadata !{i32 134, i32 0, metadata !1858, null}
!1860 = metadata !{i32 136, i32 0, metadata !1861, null}
!1861 = metadata !{i32 786443, metadata !1681, i32 135, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1862 = metadata !{i32 138, i32 0, metadata !1681, null}
!1863 = metadata !{i32 140, i32 0, metadata !1681, null}
!1864 = metadata !{i32 141, i32 0, metadata !1681, null}
!1865 = metadata !{i32 142, i32 0, metadata !1681, null}
!1866 = metadata !{i32 143, i32 0, metadata !1681, null}
!1867 = metadata !{i32 145, i32 0, metadata !1672, null}
!1868 = metadata !{i32 147, i32 0, metadata !1869, null}
!1869 = metadata !{i32 786443, metadata !1672, i32 146, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1870 = metadata !{i32 150, i32 0, metadata !1656, null}
!1871 = metadata !{i32 154, i32 0, metadata !1661, null}
!1872 = metadata !{i32 157, i32 0, metadata !1661, null}
!1873 = metadata !{i32 158, i32 0, metadata !1874, null}
!1874 = metadata !{i32 786443, metadata !1661, i32 158, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1875 = metadata !{i32 159, i32 0, metadata !1876, null}
!1876 = metadata !{i32 786443, metadata !1874, i32 158, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1877 = metadata !{i32 165, i32 0, metadata !1661, null}
!1878 = metadata !{i32 166, i32 0, metadata !1661, null}
!1879 = metadata !{i32 167, i32 0, metadata !1661, null}
!1880 = metadata !{i32 169, i32 0, metadata !1661, null}
!1881 = metadata !{i32 170, i32 0, metadata !1661, null}
!1882 = metadata !{i32 171, i32 0, metadata !1661, null}
!1883 = metadata !{i32 172, i32 0, metadata !1884, null}
!1884 = metadata !{i32 786443, metadata !1661, i32 171, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1885 = metadata !{i32 173, i32 0, metadata !1884, null}
!1886 = metadata !{i32 174, i32 0, metadata !1887, null}
!1887 = metadata !{i32 786443, metadata !1884, i32 173, i32 0, metadata !6, i32 29} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1888 = metadata !{i32 175, i32 0, metadata !1887, null}
!1889 = metadata !{i32 178, i32 0, metadata !1884, null}
!1890 = metadata !{i32 179, i32 0, metadata !1884, null}
!1891 = metadata !{i32 183, i32 0, metadata !1884, null}
!1892 = metadata !{i32 184, i32 0, metadata !1893, null}
!1893 = metadata !{i32 786443, metadata !1884, i32 183, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1894 = metadata !{i32 192, i32 0, metadata !1884, null}
!1895 = metadata !{i32 194, i32 0, metadata !1884, null}
!1896 = metadata !{metadata !"long long", metadata !1787}
!1897 = metadata !{i32 195, i32 0, metadata !1884, null}
!1898 = metadata !{i32 196, i32 0, metadata !1899, null}
!1899 = metadata !{i32 786443, metadata !1884, i32 195, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1900 = metadata !{i32 197, i32 0, metadata !1899, null}
!1901 = metadata !{i32 200, i32 0, metadata !1884, null}
!1902 = metadata !{i32 201, i32 0, metadata !1884, null}
!1903 = metadata !{i32 202, i32 0, metadata !1884, null}
!1904 = metadata !{i32 203, i32 0, metadata !1884, null}
!1905 = metadata !{i32 205, i32 0, metadata !1667, null}
!1906 = metadata !{i32 205, i32 0, metadata !1907, null}
!1907 = metadata !{i32 786443, metadata !1908, i32 205, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1908 = metadata !{i32 786443, metadata !1670, i32 205, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1909 = metadata !{i32 206, i32 0, metadata !1910, null}
!1910 = metadata !{i32 786443, metadata !1661, i32 205, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1911 = metadata !{i32 207, i32 0, metadata !1910, null}
!1912 = metadata !{i32 208, i32 0, metadata !1910, null}
!1913 = metadata !{i32 209, i32 0, metadata !1910, null}
!1914 = metadata !{i32 210, i32 0, metadata !1910, null}
!1915 = metadata !{i32 211, i32 0, metadata !1910, null}
!1916 = metadata !{i32 214, i32 0, metadata !1661, null}
!1917 = metadata !{i32 215, i32 0, metadata !1661, null}
!1918 = metadata !{i32 217, i32 0, metadata !1661, null}
!1919 = metadata !{i32 293, i32 0, metadata !1652, null}
!1920 = metadata !{i32 296, i32 0, metadata !1921, null}
!1921 = metadata !{i32 786443, metadata !1652, i32 294, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1922 = metadata !{i32 299, i32 0, metadata !1647, null}
!1923 = metadata !{i32 302, i32 0, metadata !1924, null}
!1924 = metadata !{i32 786443, metadata !1647, i32 300, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1925 = metadata !{i32 219, i32 0, metadata !1640, null}
!1926 = metadata !{i32 223, i32 0, metadata !1645, null}
!1927 = metadata !{i32 224, i32 0, metadata !1645, null}
!1928 = metadata !{i32 225, i32 0, metadata !1645, null}
!1929 = metadata !{i32 228, i32 0, metadata !1628, null}
!1930 = metadata !{i32 236, i32 0, metadata !1634, null}
!1931 = metadata !{i32 238, i32 0, metadata !1634, null}
!1932 = metadata !{i32 239, i32 0, metadata !1933, null}
!1933 = metadata !{i32 786443, metadata !1634, i32 238, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1934 = metadata !{i32 240, i32 0, metadata !1935, null}
!1935 = metadata !{i32 786443, metadata !1933, i32 239, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1936 = metadata !{i32 241, i32 0, metadata !1935, null}
!1937 = metadata !{i32 242, i32 0, metadata !1935, null}
!1938 = metadata !{i32 243, i32 0, metadata !1935, null}
!1939 = metadata !{i32 244, i32 0, metadata !1935, null}
!1940 = metadata !{i32 246, i32 0, metadata !1933, null}
!1941 = metadata !{i32 247, i32 0, metadata !1933, null}
!1942 = metadata !{i32 248, i32 0, metadata !1933, null}
!1943 = metadata !{i32 249, i32 0, metadata !1944, null}
!1944 = metadata !{i32 786443, metadata !1933, i32 248, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1945 = metadata !{i32 250, i32 0, metadata !1944, null}
!1946 = metadata !{i32 253, i32 0, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !1634, i32 253, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1948 = metadata !{i32 254, i32 0, metadata !1949, null}
!1949 = metadata !{i32 786443, metadata !1947, i32 253, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1950 = metadata !{i32 256, i32 0, metadata !1634, null}
!1951 = metadata !{i32 257, i32 0, metadata !1634, null}
!1952 = metadata !{i32 260, i32 0, metadata !1634, null}
!1953 = metadata !{i32 261, i32 0, metadata !1634, null}
!1954 = metadata !{i32 262, i32 0, metadata !1634, null}
!1955 = metadata !{i32 263, i32 0, metadata !1634, null}
!1956 = metadata !{i32 264, i32 0, metadata !1634, null}
!1957 = metadata !{i32 265, i32 0, metadata !1634, null}
!1958 = metadata !{i32 266, i32 0, metadata !1634, null}
!1959 = metadata !{i32 267, i32 0, metadata !1634, null}
!1960 = metadata !{i32 269, i32 0, metadata !1634, null}
!1961 = metadata !{i32 270, i32 0, metadata !1962, null}
!1962 = metadata !{i32 786443, metadata !1634, i32 269, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1963 = metadata !{i32 271, i32 0, metadata !1962, null}
!1964 = metadata !{i32 273, i32 0, metadata !1634, null}
!1965 = metadata !{i32 274, i32 0, metadata !1634, null}
!1966 = metadata !{i32 275, i32 0, metadata !1967, null}
!1967 = metadata !{i32 786443, metadata !1634, i32 274, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1968 = metadata !{i32 276, i32 0, metadata !1967, null}
!1969 = metadata !{i32 277, i32 0, metadata !1967, null}
!1970 = metadata !{i32 278, i32 0, metadata !1967, null}
!1971 = metadata !{i32 279, i32 0, metadata !1967, null}
!1972 = metadata !{i32 280, i32 0, metadata !1967, null}
!1973 = metadata !{i32 281, i32 0, metadata !1967, null}
!1974 = metadata !{i32 283, i32 0, metadata !1634, null}
!1975 = metadata !{i32 284, i32 0, metadata !1634, null}
!1976 = metadata !{i32 285, i32 0, metadata !1634, null}
!1977 = metadata !{i32 286, i32 0, metadata !1634, null}
!1978 = metadata !{i32 287, i32 0, metadata !1634, null}
!1979 = metadata !{i32 288, i32 0, metadata !1980, null}
!1980 = metadata !{i32 786443, metadata !1634, i32 287, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!1981 = metadata !{i32 289, i32 0, metadata !1980, null}
!1982 = metadata !{i32 291, i32 0, metadata !1634, null}
!1983 = metadata !{i32 305, i32 0, metadata !1699, null}
!1984 = metadata !{i32 308, i32 0, metadata !1706, null}
!1985 = metadata !{i32 309, i32 0, metadata !1706, null}
!1986 = metadata !{i32 321, i32 0, metadata !1706, null}
!1987 = metadata !{i32 322, i32 0, metadata !1706, null}
!1988 = metadata !{i32 323, i32 0, metadata !1706, null}
!1989 = metadata !{i32 324, i32 0, metadata !1706, null}
!1990 = metadata !{i32 326, i32 0, metadata !1706, null}
!1991 = metadata !{i32 327, i32 0, metadata !1706, null}
!1992 = metadata !{i32 328, i32 0, metadata !1706, null}
!1993 = metadata !{i32 329, i32 0, metadata !1706, null}
!1994 = metadata !{i32 330, i32 0, metadata !1706, null}
!1995 = metadata !{i32 331, i32 0, metadata !1706, null}
!1996 = metadata !{i32 332, i32 0, metadata !1706, null}
!1997 = metadata !{i32 333, i32 0, metadata !1706, null}
!1998 = metadata !{i32 334, i32 0, metadata !1706, null}
!1999 = metadata !{i32 335, i32 0, metadata !1706, null}
!2000 = metadata !{i32 336, i32 0, metadata !1706, null}
!2001 = metadata !{i32 337, i32 0, metadata !1706, null}
!2002 = metadata !{i32 338, i32 0, metadata !1706, null}
!2003 = metadata !{i32 339, i32 0, metadata !1706, null}
!2004 = metadata !{i32 340, i32 0, metadata !1706, null}
!2005 = metadata !{i32 342, i32 0, metadata !1688, null}
!2006 = metadata !{i32 346, i32 0, metadata !1697, null}
!2007 = metadata !{i32 347, i32 0, metadata !2008, null}
!2008 = metadata !{i32 786443, metadata !1697, i32 346, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2009 = metadata !{i32 348, i32 0, metadata !2008, null}
!2010 = metadata !{i32 350, i32 0, metadata !1697, null}
!2011 = metadata !{i32 351, i32 0, metadata !2012, null}
!2012 = metadata !{i32 786443, metadata !1697, i32 350, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2013 = metadata !{i32 352, i32 0, metadata !2012, null}
!2014 = metadata !{i32 354, i32 0, metadata !1697, null}
!2015 = metadata !{i32 355, i32 0, metadata !2016, null}
!2016 = metadata !{i32 786443, metadata !1697, i32 354, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2017 = metadata !{i32 356, i32 0, metadata !2016, null}
!2018 = metadata !{i32 358, i32 0, metadata !1697, null}
!2019 = metadata !{i32 359, i32 0, metadata !2020, null}
!2020 = metadata !{i32 786443, metadata !1697, i32 358, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2021 = metadata !{i32 360, i32 0, metadata !2020, null}
!2022 = metadata !{i32 362, i32 0, metadata !1697, null}
!2023 = metadata !{i32 363, i32 0, metadata !2024, null}
!2024 = metadata !{i32 786443, metadata !1697, i32 362, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2025 = metadata !{i32 364, i32 0, metadata !2024, null}
!2026 = metadata !{i32 366, i32 0, metadata !1697, null}
!2027 = metadata !{i32 367, i32 0, metadata !2028, null}
!2028 = metadata !{i32 786443, metadata !1697, i32 366, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2029 = metadata !{i32 368, i32 0, metadata !2028, null}
!2030 = metadata !{i32 369, i32 0, metadata !1697, null}
!2031 = metadata !{i32 370, i32 0, metadata !2032, null}
!2032 = metadata !{i32 786443, metadata !1697, i32 369, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2033 = metadata !{i32 371, i32 0, metadata !2032, null}
!2034 = metadata !{i32 372, i32 0, metadata !1697, null}
!2035 = metadata !{i32 373, i32 0, metadata !2036, null}
!2036 = metadata !{i32 786443, metadata !1697, i32 372, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_memcached_module.c]
!2037 = metadata !{i32 374, i32 0, metadata !2036, null}
!2038 = metadata !{i32 375, i32 0, metadata !1697, null}
