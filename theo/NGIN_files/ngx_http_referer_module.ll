; ModuleID = 'src/http/modules/ngx_http_referer_module.c'
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
%struct.ngx_http_referer_conf_t = type { %struct.ngx_hash_combined_t, %struct.ngx_array_s*, i32, i32, %struct.ngx_hash_keys_arrays_t*, i32, i32 }
%struct.ngx_hash_combined_t = type { %struct.ngx_hash_t, %struct.ngx_hash_wildcard_t*, %struct.ngx_hash_wildcard_t* }
%struct.ngx_hash_t = type { %struct.ngx_hash_elt_t**, i32 }
%struct.ngx_hash_elt_t = type { i8*, i16, [1 x i8] }
%struct.ngx_hash_wildcard_t = type { %struct.ngx_hash_t, i8* }
%struct.ngx_hash_keys_arrays_t = type { i32, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s* }
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
%struct.ngx_http_connection_t = type { %struct.ngx_http_request_s*, %struct.ngx_buf_s**, i32, %struct.ngx_buf_s**, i32, i32 }
%struct.ngx_http_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_http_cleanup_s* }
%struct.ngx_regex_compile_t = type { %struct.ngx_str_t, %struct.ngx_pool_s*, i32, %struct.ngx_regex_t*, i32, i32, i32, i8*, %struct.ngx_str_t }
%struct.ngx_hash_init_t = type { %struct.ngx_hash_t*, i32 (i8*, i32)*, i32, i32, i8*, %struct.ngx_pool_s*, %struct.ngx_pool_s* }
%struct.ngx_hash_key_t = type { %struct.ngx_str_t, i32, i8* }

@ngx_http_referer_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_referer_create_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_referer_merge_conf }, align 4
@ngx_http_referer_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_referer_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([4 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_referer_commands to [4 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"valid_referers\00", align 1
@.str1 = private unnamed_addr constant [22 x i8] c"referer_hash_max_size\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"referer_hash_bucket_size\00", align 1
@ngx_http_referer_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str, i32 0, i32 0) }, i32 201328640, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_valid_referers, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 21, i8* getelementptr inbounds ([22 x i8]* @.str1, i32 0, i32 0) }, i32 201326594, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 8, i32 32, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 24, i8* getelementptr inbounds ([25 x i8]* @.str2, i32 0, i32 0) }, i32 201326594, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 8, i32 36, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str3 = private unnamed_addr constant [16 x i8] c"invalid_referer\00", align 1
@.str4 = private unnamed_addr constant [21 x i8] c"invalid referer \22%V\22\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@.str7 = private unnamed_addr constant [13 x i8] c"server_names\00", align 1
@ngx_http_core_module = external global %struct.ngx_module_s
@.str8 = private unnamed_addr constant [34 x i8] c"invalid hostname or wildcard \22%V\22\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"conflicting parameter \22%V\22\00", align 1
@.str10 = private unnamed_addr constant [20 x i8] c"empty regex in \22%V\22\00", align 1
@0 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@.str11 = private unnamed_addr constant [3 x i8] c"%V\00", align 1
@.str12 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str13 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@1 = internal unnamed_addr constant [2 x i8] c"*\00"
@2 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@ngx_http_variable_true_value = external global %struct.ngx_variable_value_t
@3 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@ngx_http_variable_null_value = external global %struct.ngx_variable_value_t
@.str14 = private unnamed_addr constant [107 x i8] c"the \22none\22 or \22blocked\22 referers are specified in the \22valid_referers\22 directive without any valid referer\00", align 1
@ngx_cacheline_size = external global i32
@4 = internal unnamed_addr constant [2 x i8] c"+\00"
@5 = internal unnamed_addr constant [2 x i8] c"-\00"
@.str15 = private unnamed_addr constant [13 x i8] c"referer_hash\00", align 1
@6 = internal unnamed_addr constant [4 x i8] c"int\00"
@7 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@8 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@9 = internal unnamed_addr constant [43 x i8] c"src/http/modules/ngx_http_referer_module.c\00"

define internal i8* @ngx_http_valid_referers(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  %uri = alloca %struct.ngx_str_t, align 4
  %name = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !1835
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !1835
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !1835
  %0 = bitcast i8* %conf to %struct.ngx_http_referer_conf_t*, !dbg !1836
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_referer_conf_t* %0}, i64 0, metadata !462), !dbg !1836
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %uri}, metadata !525), !dbg !1837
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %name}, metadata !526), !dbg !1838
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !1839
  store i32 15, i32* %len, align 4, !dbg !1839, !tbaa !1840
  %data = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !1843
  store i8* getelementptr inbounds ([16 x i8]* @.str3, i32 0, i32 0), i8** %data, align 4, !dbg !1843, !tbaa !1844
  %call = call %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %name, i32 9) nounwind, !dbg !1845
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_variable_s* %call}, i64 0, metadata !529), !dbg !1845
  %cmp = icmp eq %struct.ngx_http_variable_s* %call, null, !dbg !1846
  br i1 %cmp, label %return, label %if.end, !dbg !1846

if.end:                                           ; preds = %entry
  %get_handler = getelementptr inbounds %struct.ngx_http_variable_s* %call, i32 0, i32 2, !dbg !1847
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_referer_variable, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)** %get_handler, align 4, !dbg !1847, !tbaa !1844
  %keys = getelementptr inbounds i8* %conf, i32 28, !dbg !1848
  %1 = bitcast i8* %keys to %struct.ngx_hash_keys_arrays_t**, !dbg !1848
  %2 = load %struct.ngx_hash_keys_arrays_t** %1, align 4, !dbg !1848, !tbaa !1844
  %cmp7 = icmp eq %struct.ngx_hash_keys_arrays_t* %2, null, !dbg !1848
  br i1 %cmp7, label %if.then8, label %if.end31, !dbg !1848

if.then8:                                         ; preds = %if.end
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !1849
  %3 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !1849, !tbaa !1844
  %call9 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %3, i32 84) nounwind, !dbg !1849
  %4 = bitcast i8* %call9 to %struct.ngx_hash_keys_arrays_t*, !dbg !1849
  store %struct.ngx_hash_keys_arrays_t* %4, %struct.ngx_hash_keys_arrays_t** %1, align 4, !dbg !1849, !tbaa !1844
  %cmp12 = icmp eq i8* %call9, null, !dbg !1851
  br i1 %cmp12, label %return, label %if.end16, !dbg !1851

if.end16:                                         ; preds = %if.then8
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1852
  %5 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1852, !tbaa !1844
  %pool18 = getelementptr inbounds i8* %call9, i32 4, !dbg !1852
  %6 = bitcast i8* %pool18 to %struct.ngx_pool_s**, !dbg !1852
  store %struct.ngx_pool_s* %5, %struct.ngx_pool_s** %6, align 4, !dbg !1852, !tbaa !1844
  %7 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1853, !tbaa !1844
  %8 = load %struct.ngx_hash_keys_arrays_t** %1, align 4, !dbg !1853, !tbaa !1844
  %temp_pool21 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %8, i32 0, i32 2, !dbg !1853
  store %struct.ngx_pool_s* %7, %struct.ngx_pool_s** %temp_pool21, align 4, !dbg !1853, !tbaa !1844
  %9 = load %struct.ngx_hash_keys_arrays_t** %1, align 4, !dbg !1854, !tbaa !1844
  %call25 = call i32 @ngx_hash_keys_array_init(%struct.ngx_hash_keys_arrays_t* %9, i32 1) nounwind, !dbg !1854
  %cmp26 = icmp eq i32 %call25, 0, !dbg !1854
  br i1 %cmp26, label %if.end31, label %return, !dbg !1854

if.end31:                                         ; preds = %if.end16, %if.end
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !1855
  %10 = load %struct.ngx_array_s** %args, align 4, !dbg !1855, !tbaa !1844
  %elts = getelementptr inbounds %struct.ngx_array_s* %10, i32 0, i32 0, !dbg !1855
  %11 = load i8** %elts, align 4, !dbg !1855, !tbaa !1844
  %12 = bitcast i8* %11 to %struct.ngx_str_t*, !dbg !1855
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %12}, i64 0, metadata !523), !dbg !1855
  call void @llvm.dbg.value(metadata !1856, i64 0, metadata !527), !dbg !1857
  %nelts450 = getelementptr inbounds %struct.ngx_array_s* %10, i32 0, i32 1, !dbg !1857
  %13 = load i32* %nelts450, align 4, !dbg !1857, !tbaa !1840
  %cmp35451 = icmp ugt i32 %13, 1, !dbg !1857
  br i1 %cmp35451, label %for.body.lr.ph, label %return, !dbg !1857

for.body.lr.ph:                                   ; preds = %if.end31
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 1) to i32), i32 ptrtoint ([5 x i8]* @.str5 to i32)), !dbg !1858
  %no_referer = getelementptr inbounds i8* %conf, i32 20, !dbg !1859
  %15 = bitcast i8* %no_referer to i32*, !dbg !1859
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 1) to i32), i32 ptrtoint ([8 x i8]* @.str6 to i32)), !dbg !1861
  %blocked_referer = getelementptr inbounds i8* %conf, i32 24, !dbg !1862
  %17 = bitcast i8* %blocked_referer to i32*, !dbg !1862
  %len187 = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 0, !dbg !1864
  %data188 = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 1, !dbg !1865
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 1) to i32), i32 ptrtoint ([13 x i8]* @.str7 to i32)), !dbg !1866
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !1867
  br label %for.body, !dbg !1857

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.0452 = phi i32 [ 1, %for.body.lr.ph ], [ %52, %for.cond.backedge ]
  %arrayidx = getelementptr inbounds %struct.ngx_str_t* %12, i32 %i.0452, !dbg !1869
  %len36 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !1869
  %19 = load i32* %len36, align 4, !dbg !1869, !tbaa !1840
  %cmp39 = icmp eq i32 %19, 0, !dbg !1869
  br i1 %cmp39, label %cont42, label %if.end46, !dbg !1869

cont42:                                           ; preds = %for.body
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str4, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !1870
  br label %return, !dbg !1872

if.end46:                                         ; preds = %for.body
  %20 = extractvalue { i32, i1 } %14, 1, !dbg !1858
  br i1 %20, label %ioc_bb47, label %cont50, !dbg !1858

ioc_bb47:                                         ; preds = %if.end46
  call void @__ioc_report_sub_overflow(i32 290, i32 9, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([5 x i8]* @.str5 to i32) to i64), i8 5) nounwind, !dbg !1858
  br label %cont50, !dbg !1858

cont50:                                           ; preds = %ioc_bb47, %if.end46
  %data104 = getelementptr inbounds %struct.ngx_str_t* %12, i32 %i.0452, i32 1, !dbg !1873
  %21 = load i8** %data104, align 4, !dbg !1873, !tbaa !1844
  %call105 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !1873
  %cmp106 = icmp eq i32 %call105, 0, !dbg !1873
  br i1 %cmp106, label %if.then108, label %if.end109, !dbg !1873

if.then108:                                       ; preds = %cont50
  store i32 1, i32* %15, align 4, !dbg !1859, !tbaa !1840
  br label %for.inc350, !dbg !1876

if.end109:                                        ; preds = %cont50
  %22 = extractvalue { i32, i1 } %16, 1, !dbg !1861
  br i1 %22, label %ioc_bb112, label %cont115, !dbg !1861

ioc_bb112:                                        ; preds = %if.end109
  call void @__ioc_report_sub_overflow(i32 294, i32 9, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([8 x i8]* @.str6 to i32) to i64), i8 5) nounwind, !dbg !1861
  %.pre = load i8** %data104, align 4, !dbg !1877, !tbaa !1844
  br label %cont115, !dbg !1861

cont115:                                          ; preds = %ioc_bb112, %if.end109
  %23 = phi i8* [ %.pre, %ioc_bb112 ], [ %21, %if.end109 ]
  %call178 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([8 x i8]* @.str6, i32 0, i32 0)) nounwind, !dbg !1877
  %cmp181 = icmp eq i32 %call178, 0, !dbg !1877
  br i1 %cmp181, label %if.then183, label %cont186, !dbg !1877

if.then183:                                       ; preds = %cont115
  store i32 1, i32* %17, align 4, !dbg !1862, !tbaa !1840
  br label %for.inc350, !dbg !1880

cont186:                                          ; preds = %cont115
  store i32 0, i32* %len187, align 4, !dbg !1864, !tbaa !1840
  store i8* null, i8** %data188, align 4, !dbg !1865, !tbaa !1844
  %24 = extractvalue { i32, i1 } %18, 1, !dbg !1866
  br i1 %24, label %ioc_bb191, label %cont194, !dbg !1866

ioc_bb191:                                        ; preds = %cont186
  call void @__ioc_report_sub_overflow(i32 300, i32 9, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([13 x i8]* @.str7 to i32) to i64), i8 5) nounwind, !dbg !1866
  %.pre456 = load i8** %data104, align 4, !dbg !1881, !tbaa !1844
  br label %cont194, !dbg !1866

cont194:                                          ; preds = %ioc_bb191, %cont186
  %25 = phi i8* [ %.pre456, %ioc_bb191 ], [ %23, %cont186 ]
  %call257 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8]* @.str7, i32 0, i32 0)) nounwind, !dbg !1881
  %cmp260 = icmp eq i32 %call257, 0, !dbg !1881
  br i1 %cmp260, label %if.then262, label %if.end300, !dbg !1881

if.then262:                                       ; preds = %cont194
  %26 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !1867, !tbaa !1840
  %27 = load i8** %ctx, align 4, !dbg !1867, !tbaa !1844
  %srv_conf = getelementptr inbounds i8* %27, i32 4, !dbg !1867
  %28 = bitcast i8* %srv_conf to i8***, !dbg !1867
  %29 = load i8*** %28, align 4, !dbg !1867, !tbaa !1844
  %arrayidx263 = getelementptr inbounds i8** %29, i32 %26, !dbg !1867
  %30 = load i8** %arrayidx263, align 4, !dbg !1867, !tbaa !1844
  %elts264 = bitcast i8* %30 to i8**, !dbg !1884
  %31 = load i8** %elts264, align 4, !dbg !1884, !tbaa !1844
  %32 = bitcast i8* %31 to %struct.ngx_http_server_name_s*, !dbg !1884
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_server_name_s* %32}, i64 0, metadata !1627), !dbg !1884
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !528), !dbg !1885
  %nelts269 = getelementptr inbounds i8* %30, i32 4, !dbg !1885
  %33 = bitcast i8* %nelts269 to i32*, !dbg !1885
  %34 = load i32* %33, align 4, !dbg !1885, !tbaa !1840
  %cmp270446 = icmp eq i32 %34, 0, !dbg !1885
  br i1 %cmp270446, label %for.inc350, label %for.body272, !dbg !1885

for.body272:                                      ; preds = %if.then262, %for.cond267.backedge
  %n.0447 = phi i32 [ %39, %for.cond267.backedge ], [ 0, %if.then262 ]
  %regex = getelementptr inbounds %struct.ngx_http_server_name_s* %32, i32 %n.0447, i32 0, !dbg !1887
  %35 = load %struct.ngx_http_regex_t** %regex, align 4, !dbg !1887, !tbaa !1844
  %tobool = icmp eq %struct.ngx_http_regex_t* %35, null, !dbg !1887
  br i1 %tobool, label %if.end287, label %if.then274, !dbg !1887

if.then274:                                       ; preds = %for.body272
  %name276 = getelementptr inbounds %struct.ngx_http_server_name_s* %32, i32 %n.0447, i32 2, !dbg !1889
  %regex279 = getelementptr inbounds %struct.ngx_http_regex_t* %35, i32 0, i32 0, !dbg !1889
  %36 = load %struct.ngx_regex_t** %regex279, align 4, !dbg !1889, !tbaa !1844
  %call280 = call fastcc i8* @ngx_http_add_regex_referer(%struct.ngx_conf_s* %cf, %struct.ngx_http_referer_conf_t* %0, %struct.ngx_str_t* %name276, %struct.ngx_regex_t* %36), !dbg !1889
  %cmp281 = icmp eq i8* %call280, null, !dbg !1889
  br i1 %cmp281, label %for.inc, label %return, !dbg !1889

if.end287:                                        ; preds = %for.body272
  %37 = load %struct.ngx_hash_keys_arrays_t** %1, align 4, !dbg !1891, !tbaa !1844
  %name290 = getelementptr inbounds %struct.ngx_http_server_name_s* %32, i32 %n.0447, i32 2, !dbg !1891
  %call291 = call fastcc i8* @ngx_http_add_referer(%struct.ngx_conf_s* %cf, %struct.ngx_hash_keys_arrays_t* %37, %struct.ngx_str_t* %name290, %struct.ngx_str_t* %uri), !dbg !1891
  %cmp292 = icmp eq i8* %call291, null, !dbg !1891
  br i1 %cmp292, label %for.inc, label %return, !dbg !1891

for.inc:                                          ; preds = %if.then274, %if.end287
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0447, i32 1), !dbg !1885
  %39 = extractvalue { i32, i1 } %38, 0, !dbg !1885
  %40 = extractvalue { i32, i1 } %38, 1, !dbg !1885
  br i1 %40, label %ioc_bb298, label %for.cond267.backedge, !dbg !1885

for.cond267.backedge:                             ; preds = %for.inc, %ioc_bb298
  %41 = load i32* %33, align 4, !dbg !1885, !tbaa !1840
  %cmp270 = icmp ult i32 %39, %41, !dbg !1885
  br i1 %cmp270, label %for.body272, label %for.inc350, !dbg !1885

ioc_bb298:                                        ; preds = %for.inc
  %42 = zext i32 %n.0447 to i64, !dbg !1885
  call void @__ioc_report_add_overflow(i32 303, i32 52, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %42, i64 1, i8 5) nounwind, !dbg !1885
  br label %for.cond267.backedge, !dbg !1885

if.end300:                                        ; preds = %cont194
  %43 = load i8* %25, align 1, !dbg !1892, !tbaa !1841
  %cmp305 = icmp eq i8 %43, 126, !dbg !1892
  br i1 %cmp305, label %if.then307, label %if.end316, !dbg !1892

if.then307:                                       ; preds = %if.end300
  %call309 = call fastcc i8* @ngx_http_add_regex_referer(%struct.ngx_conf_s* %cf, %struct.ngx_http_referer_conf_t* %0, %struct.ngx_str_t* %arrayidx, %struct.ngx_regex_t* null), !dbg !1893
  %cmp310 = icmp eq i8* %call309, null, !dbg !1893
  br i1 %cmp310, label %for.inc350, label %return, !dbg !1893

if.end316:                                        ; preds = %if.end300
  %call319 = call i8* @strchr(i8* %25, i32 47) nounwind, !dbg !1895
  call void @llvm.dbg.value(metadata !{i8* %call319}, i64 0, metadata !522), !dbg !1895
  %tobool320 = icmp eq i8* %call319, null, !dbg !1896
  br i1 %tobool320, label %if.end340, label %if.then321, !dbg !1896

if.then321:                                       ; preds = %if.end316
  %44 = load i32* %len36, align 4, !dbg !1897, !tbaa !1840
  %add.ptr = getelementptr inbounds i8* %25, i32 %44, !dbg !1897
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr to i32, !dbg !1897
  %sub.ptr.rhs.cast = ptrtoint i8* %call319 to i32, !dbg !1897
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1897
  %45 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1897
  br i1 %45, label %cont327, label %ioc_bb326, !dbg !1897

ioc_bb326:                                        ; preds = %if.then321
  %46 = sext i32 %sub.ptr.sub to i64, !dbg !1897
  call void @__ioc_report_conversion(i32 326, i32 17, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %46, i8 1) nounwind, !dbg !1897
  %.pre457 = load i8** %data104, align 4, !dbg !1899, !tbaa !1844
  br label %cont327, !dbg !1897

cont327:                                          ; preds = %ioc_bb326, %if.then321
  %47 = phi i8* [ %.pre457, %ioc_bb326 ], [ %25, %if.then321 ]
  store i32 %sub.ptr.sub, i32* %len187, align 4, !dbg !1897, !tbaa !1840
  store i8* %call319, i8** %data188, align 4, !dbg !1900, !tbaa !1844
  %sub.ptr.rhs.cast333 = ptrtoint i8* %47 to i32, !dbg !1899
  %sub.ptr.sub334 = sub i32 %sub.ptr.rhs.cast, %sub.ptr.rhs.cast333, !dbg !1899
  %48 = icmp sgt i32 %sub.ptr.sub334, -1, !dbg !1899
  br i1 %48, label %cont337, label %ioc_bb336, !dbg !1899

ioc_bb336:                                        ; preds = %cont327
  %49 = sext i32 %sub.ptr.sub334 to i64, !dbg !1899
  call void @__ioc_report_conversion(i32 328, i32 22, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %49, i8 1) nounwind, !dbg !1899
  br label %cont337, !dbg !1899

cont337:                                          ; preds = %ioc_bb336, %cont327
  store i32 %sub.ptr.sub334, i32* %len36, align 4, !dbg !1899, !tbaa !1840
  br label %if.end340, !dbg !1901

if.end340:                                        ; preds = %if.end316, %cont337
  %50 = load %struct.ngx_hash_keys_arrays_t** %1, align 4, !dbg !1902, !tbaa !1844
  %call343 = call fastcc i8* @ngx_http_add_referer(%struct.ngx_conf_s* %cf, %struct.ngx_hash_keys_arrays_t* %50, %struct.ngx_str_t* %arrayidx, %struct.ngx_str_t* %uri), !dbg !1902
  %cmp344 = icmp eq i8* %call343, null, !dbg !1902
  br i1 %cmp344, label %for.inc350, label %return, !dbg !1902

for.inc350:                                       ; preds = %if.then262, %for.cond267.backedge, %if.then307, %if.end340, %if.then183, %if.then108
  %51 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0452, i32 1), !dbg !1857
  %52 = extractvalue { i32, i1 } %51, 0, !dbg !1857
  %53 = extractvalue { i32, i1 } %51, 1, !dbg !1857
  br i1 %53, label %ioc_bb351, label %for.cond.backedge, !dbg !1857

for.cond.backedge:                                ; preds = %for.inc350, %ioc_bb351
  %54 = load %struct.ngx_array_s** %args, align 4, !dbg !1857, !tbaa !1844
  %nelts = getelementptr inbounds %struct.ngx_array_s* %54, i32 0, i32 1, !dbg !1857
  %55 = load i32* %nelts, align 4, !dbg !1857, !tbaa !1840
  %cmp35 = icmp ult i32 %52, %55, !dbg !1857
  br i1 %cmp35, label %for.body, label %return, !dbg !1857

ioc_bb351:                                        ; preds = %for.inc350
  %56 = zext i32 %i.0452 to i64, !dbg !1857
  call void @__ioc_report_add_overflow(i32 285, i32 41, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %56, i64 1, i8 5) nounwind, !dbg !1857
  br label %for.cond.backedge, !dbg !1857

return:                                           ; preds = %if.end31, %if.end340, %if.then307, %for.cond.backedge, %if.end287, %if.then274, %if.end16, %if.then8, %entry, %cont42
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont42 ], [ inttoptr (i32 -1 to i8*), %entry ], [ inttoptr (i32 -1 to i8*), %if.then8 ], [ inttoptr (i32 -1 to i8*), %if.end16 ], [ inttoptr (i32 -1 to i8*), %if.then274 ], [ inttoptr (i32 -1 to i8*), %if.end287 ], [ null, %if.end31 ], [ inttoptr (i32 -1 to i8*), %if.end340 ], [ inttoptr (i32 -1 to i8*), %if.then307 ], [ null, %for.cond.backedge ]
  ret i8* %retval.0, !dbg !1903
}

declare i8* @ngx_conf_set_num_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.ngx_http_variable_s* @ngx_http_add_variable(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32)

define internal i32 @ngx_http_referer_variable(%struct.ngx_http_request_s* nocapture %r, %struct.ngx_variable_value_t* nocapture %v, i32 %data) nounwind {
entry:
  %buf = alloca [256 x i8], align 1
  %referer94 = alloca %struct.ngx_str_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1698), !dbg !1904
  call void @llvm.dbg.value(metadata !{%struct.ngx_variable_value_t* %v}, i64 0, metadata !1699), !dbg !1904
  call void @llvm.dbg.value(metadata !{i32 %data}, i64 0, metadata !1700), !dbg !1904
  call void @llvm.dbg.declare(metadata !{[256 x i8]* %buf}, metadata !1710), !dbg !1905
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_referer_module, i32 0, i32 0), align 4, !dbg !1906, !tbaa !1840
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !1906
  %1 = load i8*** %loc_conf, align 4, !dbg !1906, !tbaa !1844
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !1906
  %2 = load i8** %arrayidx, align 4, !dbg !1906, !tbaa !1844
  %hash = bitcast i8* %2 to %struct.ngx_hash_combined_t*, !dbg !1907
  %buckets = bitcast i8* %2 to %struct.ngx_hash_elt_t***, !dbg !1907
  %3 = load %struct.ngx_hash_elt_t*** %buckets, align 4, !dbg !1907, !tbaa !1844
  %cmp = icmp eq %struct.ngx_hash_elt_t** %3, null, !dbg !1907
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1907

land.lhs.true:                                    ; preds = %entry
  %wc_head = getelementptr inbounds i8* %2, i32 8, !dbg !1907
  %4 = bitcast i8* %wc_head to %struct.ngx_hash_wildcard_t**, !dbg !1907
  %5 = load %struct.ngx_hash_wildcard_t** %4, align 4, !dbg !1907, !tbaa !1844
  %cmp3 = icmp eq %struct.ngx_hash_wildcard_t* %5, null, !dbg !1907
  br i1 %cmp3, label %land.lhs.true4, label %if.end, !dbg !1907

land.lhs.true4:                                   ; preds = %land.lhs.true
  %wc_tail = getelementptr inbounds i8* %2, i32 12, !dbg !1907
  %6 = bitcast i8* %wc_tail to %struct.ngx_hash_wildcard_t**, !dbg !1907
  %7 = load %struct.ngx_hash_wildcard_t** %6, align 4, !dbg !1907, !tbaa !1844
  %cmp6 = icmp eq %struct.ngx_hash_wildcard_t* %7, null, !dbg !1907
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !1907

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %regex = getelementptr inbounds i8* %2, i32 16, !dbg !1907
  %8 = bitcast i8* %regex to %struct.ngx_array_s**, !dbg !1907
  %9 = load %struct.ngx_array_s** %8, align 4, !dbg !1907, !tbaa !1844
  %cmp8 = icmp eq %struct.ngx_array_s* %9, null, !dbg !1907
  br i1 %cmp8, label %valid, label %if.end, !dbg !1907

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true4, %land.lhs.true, %entry
  %referer = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 13, i32 6, !dbg !1908
  %10 = load %struct.ngx_table_elt_t** %referer, align 4, !dbg !1908, !tbaa !1844
  %cmp9 = icmp eq %struct.ngx_table_elt_t* %10, null, !dbg !1908
  br i1 %cmp9, label %if.then10, label %if.end13, !dbg !1908

if.then10:                                        ; preds = %if.end
  %no_referer = getelementptr inbounds i8* %2, i32 20, !dbg !1909
  %11 = bitcast i8* %no_referer to i32*, !dbg !1909
  %12 = load i32* %11, align 4, !dbg !1909, !tbaa !1840
  %tobool = icmp eq i32 %12, 0, !dbg !1909
  br i1 %tobool, label %invalid, label %valid, !dbg !1909

if.end13:                                         ; preds = %if.end
  %len16 = getelementptr inbounds %struct.ngx_table_elt_t* %10, i32 0, i32 2, i32 0, !dbg !1911
  %13 = load i32* %len16, align 4, !dbg !1911, !tbaa !1840
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !1705), !dbg !1911
  %data20 = getelementptr inbounds %struct.ngx_table_elt_t* %10, i32 0, i32 2, i32 1, !dbg !1912
  %14 = load i8** %data20, align 4, !dbg !1912, !tbaa !1844
  call void @llvm.dbg.value(metadata !{i8* %14}, i64 0, metadata !1703), !dbg !1912
  %cmp23 = icmp ugt i32 %13, 10, !dbg !1913
  br i1 %cmp23, label %if.then24, label %if.end38, !dbg !1913

if.then24:                                        ; preds = %if.end13
  %add.ptr = getelementptr inbounds i8* %14, i32 %13, !dbg !1914
  call void @llvm.dbg.value(metadata !{i8* %add.ptr}, i64 0, metadata !1704), !dbg !1914
  %call = call i32 @ngx_strncasecmp(i8* %14, i8* getelementptr inbounds ([8 x i8]* @.str12, i32 0, i32 0), i32 7) nounwind, !dbg !1916
  %cmp27 = icmp eq i32 %call, 0, !dbg !1916
  br i1 %cmp27, label %if.then28, label %cont31, !dbg !1916

if.then28:                                        ; preds = %if.then24
  %add.ptr29 = getelementptr inbounds i8* %14, i32 7, !dbg !1917
  call void @llvm.dbg.value(metadata !{i8* %add.ptr29}, i64 0, metadata !1703), !dbg !1917
  br label %cont45, !dbg !1919

cont31:                                           ; preds = %if.then24
  %call32 = call i32 @ngx_strncasecmp(i8* %14, i8* getelementptr inbounds ([9 x i8]* @.str13, i32 0, i32 0), i32 8) nounwind, !dbg !1920
  %cmp33 = icmp eq i32 %call32, 0, !dbg !1920
  br i1 %cmp33, label %if.then34, label %if.end38, !dbg !1920

if.then34:                                        ; preds = %cont31
  %add.ptr35 = getelementptr inbounds i8* %14, i32 8, !dbg !1921
  call void @llvm.dbg.value(metadata !{i8* %add.ptr35}, i64 0, metadata !1703), !dbg !1921
  br label %cont45, !dbg !1923

if.end38:                                         ; preds = %cont31, %if.end13
  %blocked_referer = getelementptr inbounds i8* %2, i32 24, !dbg !1924
  %15 = bitcast i8* %blocked_referer to i32*, !dbg !1924
  %16 = load i32* %15, align 4, !dbg !1924, !tbaa !1840
  %tobool39 = icmp eq i32 %16, 0, !dbg !1924
  br i1 %tobool39, label %invalid, label %valid, !dbg !1924

cont45:                                           ; preds = %if.then34, %if.then28
  %ref.0 = phi i8* [ %add.ptr29, %if.then28 ], [ %add.ptr35, %if.then34 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1707), !dbg !1925
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1708), !dbg !1926
  call void @llvm.dbg.value(metadata !{i8* %ref.0}, i64 0, metadata !1701), !dbg !1927
  br label %for.cond, !dbg !1927

for.cond:                                         ; preds = %cont78, %cont45
  %i.0 = phi i32 [ 0, %cont45 ], [ %24, %cont78 ]
  %key.0 = phi i32 [ 0, %cont45 ], [ %29, %cont78 ]
  %p.0 = phi i8* [ %ref.0, %cont45 ], [ %incdec.ptr, %cont78 ]
  %cmp46 = icmp ult i8* %p.0, %add.ptr, !dbg !1927
  br i1 %cmp46, label %for.body, label %for.end, !dbg !1927

for.body:                                         ; preds = %for.cond
  %17 = load i8* %p.0, align 1, !dbg !1929, !tbaa !1841
  switch i8 %17, label %if.end53 [
    i8 47, label %for.end
    i8 58, label %for.end
  ], !dbg !1929

if.end53:                                         ; preds = %for.body
  %.off = add i8 %17, -65, !dbg !1931
  %18 = icmp ult i8 %.off, 26, !dbg !1931
  %or = or i8 %17, 32, !dbg !1931
  %or.conv = select i1 %18, i8 %or, i8 %17, !dbg !1931
  %arrayidx66 = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 %i.0, !dbg !1931
  store i8 %or.conv, i8* %arrayidx66, align 1, !dbg !1931, !tbaa !1841
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %key.0, i32 31), !dbg !1932
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !1932
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !1932
  br i1 %21, label %ioc_bb69, label %cont70, !dbg !1932

ioc_bb69:                                         ; preds = %if.end53
  %22 = zext i32 %key.0 to i64, !dbg !1932
  call void @__ioc_report_mul_overflow(i32 99, i32 30, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @1, i32 0, i32 0), i64 %22, i64 31, i8 5) nounwind, !dbg !1932
  br label %cont70, !dbg !1932

cont70:                                           ; preds = %if.end53, %ioc_bb69
  %23 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0, i32 1), !dbg !1932
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !1932
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !1932
  br i1 %25, label %ioc_bb71, label %cont72, !dbg !1932

ioc_bb71:                                         ; preds = %cont70
  %26 = zext i32 %i.0 to i64, !dbg !1932
  call void @__ioc_report_add_overflow(i32 99, i32 42, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @2, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind, !dbg !1932
  br label %cont72, !dbg !1932

cont72:                                           ; preds = %cont70, %ioc_bb71
  call void @llvm.dbg.value(metadata !{i32 %24}, i64 0, metadata !1707), !dbg !1932
  %27 = load i8* %arrayidx66, align 1, !dbg !1932, !tbaa !1841
  %conv74 = zext i8 %27 to i32, !dbg !1932
  %28 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %20, i32 %conv74), !dbg !1932
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !1932
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !1932
  br i1 %30, label %ioc_bb75, label %cont78, !dbg !1932

ioc_bb75:                                         ; preds = %cont72
  %31 = zext i8 %27 to i64, !dbg !1932
  %32 = zext i32 %20 to i64, !dbg !1932
  call void @__ioc_report_add_overflow(i32 99, i32 35, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %32, i64 %31, i8 5) nounwind, !dbg !1932
  br label %cont78, !dbg !1932

cont78:                                           ; preds = %ioc_bb75, %cont72
  call void @llvm.dbg.value(metadata !{i32 %29}, i64 0, metadata !1708), !dbg !1932
  %cmp79 = icmp eq i32 %24, 256, !dbg !1933
  %incdec.ptr = getelementptr inbounds i8* %p.0, i32 1, !dbg !1927
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr}, i64 0, metadata !1701), !dbg !1927
  br i1 %cmp79, label %invalid, label %for.cond, !dbg !1933

for.end:                                          ; preds = %for.body, %for.body, %for.cond
  %arraydecay = getelementptr inbounds [256 x i8]* %buf, i32 0, i32 0, !dbg !1934
  %sub.ptr.lhs.cast = ptrtoint i8* %p.0 to i32, !dbg !1934
  %sub.ptr.rhs.cast = ptrtoint i8* %ref.0 to i32, !dbg !1934
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1934
  %33 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !1934
  br i1 %33, label %cont86, label %ioc_bb85, !dbg !1934

ioc_bb85:                                         ; preds = %for.end
  %34 = sext i32 %sub.ptr.sub to i64, !dbg !1934
  call void @__ioc_report_conversion(i32 104, i32 55, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %34, i8 1) nounwind, !dbg !1934
  br label %cont86, !dbg !1934

cont86:                                           ; preds = %ioc_bb85, %for.end
  %call87 = call i8* @ngx_hash_find_combined(%struct.ngx_hash_combined_t* %hash, i32 %key.0, i8* %arraydecay, i32 %sub.ptr.sub) nounwind, !dbg !1934
  %tobool88 = icmp eq i8* %call87, null, !dbg !1935
  br i1 %tobool88, label %if.end90, label %for.cond115, !dbg !1935

if.end90:                                         ; preds = %cont86
  %regex91 = getelementptr inbounds i8* %2, i32 16, !dbg !1936
  %35 = bitcast i8* %regex91 to %struct.ngx_array_s**, !dbg !1936
  %36 = load %struct.ngx_array_s** %35, align 4, !dbg !1936, !tbaa !1844
  %tobool92 = icmp eq %struct.ngx_array_s* %36, null, !dbg !1936
  br i1 %tobool92, label %invalid, label %cont96, !dbg !1936

cont96:                                           ; preds = %if.end90
  call void @llvm.dbg.declare(metadata !{%struct.ngx_str_t* %referer94}, metadata !1716), !dbg !1937
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %13, i32 7), !dbg !1938
  %38 = extractvalue { i32, i1 } %37, 0, !dbg !1938
  %39 = extractvalue { i32, i1 } %37, 1, !dbg !1938
  br i1 %39, label %ioc_bb97, label %cont98, !dbg !1938

ioc_bb97:                                         ; preds = %cont96
  %40 = zext i32 %13 to i64, !dbg !1938
  call void @__ioc_report_sub_overflow(i32 112, i32 23, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %40, i64 7, i8 5) nounwind, !dbg !1938
  br label %cont98, !dbg !1938

cont98:                                           ; preds = %cont96, %ioc_bb97
  %len99 = getelementptr inbounds %struct.ngx_str_t* %referer94, i32 0, i32 0, !dbg !1938
  store i32 %38, i32* %len99, align 4, !dbg !1938, !tbaa !1840
  %data100 = getelementptr inbounds %struct.ngx_str_t* %referer94, i32 0, i32 1, !dbg !1939
  store i8* %ref.0, i8** %data100, align 4, !dbg !1939, !tbaa !1844
  %41 = load %struct.ngx_array_s** %35, align 4, !dbg !1940, !tbaa !1844
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !1940
  %42 = load %struct.ngx_connection_s** %connection, align 4, !dbg !1940, !tbaa !1844
  %log = getelementptr inbounds %struct.ngx_connection_s* %42, i32 0, i32 10, !dbg !1940
  %43 = load %struct.ngx_log_s** %log, align 4, !dbg !1940, !tbaa !1844
  %call102 = call i32 @ngx_regex_exec_array(%struct.ngx_array_s* %41, %struct.ngx_str_t* %referer94, %struct.ngx_log_s* %43) nounwind, !dbg !1940
  call void @llvm.dbg.value(metadata !{i32 %call102}, i64 0, metadata !1714), !dbg !1940
  switch i32 %call102, label %invalid [
    i32 0, label %valid
    i32 -1, label %return
  ], !dbg !1941

invalid:                                          ; preds = %cont78, %cont98, %if.then10, %lor.lhs.false140, %if.end90, %if.end38, %if.end136
  %44 = bitcast %struct.ngx_variable_value_t* %v to i64*, !dbg !1942
  %45 = load i64* bitcast (%struct.ngx_variable_value_t* @ngx_http_variable_true_value to i64*), align 4, !dbg !1942
  store i64 %45, i64* %44, align 4, !dbg !1942
  br label %return, !dbg !1943

for.cond115:                                      ; preds = %cont86, %for.body118
  %p.1 = phi i8* [ %incdec.ptr125, %for.body118 ], [ %p.0, %cont86 ]
  %cmp116 = icmp ult i8* %p.1, %add.ptr, !dbg !1944
  br i1 %cmp116, label %for.body118, label %for.end126, !dbg !1944

for.body118:                                      ; preds = %for.cond115
  %46 = load i8* %p.1, align 1, !dbg !1946, !tbaa !1841
  %cmp120 = icmp eq i8 %46, 47, !dbg !1946
  %incdec.ptr125 = getelementptr inbounds i8* %p.1, i32 1, !dbg !1944
  call void @llvm.dbg.value(metadata !{i8* %incdec.ptr125}, i64 0, metadata !1701), !dbg !1944
  br i1 %cmp120, label %for.end126, label %for.cond115, !dbg !1946

for.end126:                                       ; preds = %for.body118, %for.cond115
  %sub.ptr.lhs.cast127 = ptrtoint i8* %add.ptr to i32, !dbg !1948
  %sub.ptr.rhs.cast128 = ptrtoint i8* %p.1 to i32, !dbg !1948
  %sub.ptr.sub129 = sub i32 %sub.ptr.lhs.cast127, %sub.ptr.rhs.cast128, !dbg !1948
  %47 = icmp sgt i32 %sub.ptr.sub129, -1, !dbg !1948
  br i1 %47, label %cont132, label %ioc_bb131, !dbg !1948

ioc_bb131:                                        ; preds = %for.end126
  %48 = sext i32 %sub.ptr.sub129 to i64, !dbg !1948
  call void @__ioc_report_conversion(i32 134, i32 9, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 %48, i8 1) nounwind, !dbg !1948
  br label %cont132, !dbg !1948

cont132:                                          ; preds = %ioc_bb131, %for.end126
  call void @llvm.dbg.value(metadata !{i32 %sub.ptr.sub129}, i64 0, metadata !1705), !dbg !1948
  %cmp133 = icmp eq i8* %call87, inttoptr (i32 4 to i8*), !dbg !1949
  br i1 %cmp133, label %valid, label %if.end136, !dbg !1949

if.end136:                                        ; preds = %cont132
  %len137 = bitcast i8* %call87 to i32*, !dbg !1950
  %49 = load i32* %len137, align 4, !dbg !1950, !tbaa !1840
  %cmp138 = icmp ult i32 %sub.ptr.sub129, %49, !dbg !1950
  br i1 %cmp138, label %invalid, label %lor.lhs.false140, !dbg !1950

lor.lhs.false140:                                 ; preds = %if.end136
  %data141 = getelementptr inbounds i8* %call87, i32 4, !dbg !1950
  %50 = bitcast i8* %data141 to i8**, !dbg !1950
  %51 = load i8** %50, align 4, !dbg !1950, !tbaa !1844
  %call143 = call i32 @strncmp(i8* %51, i8* %p.1, i32 %49) nounwind readonly, !dbg !1950
  %cmp144 = icmp eq i32 %call143, 0, !dbg !1950
  br i1 %cmp144, label %valid, label %invalid, !dbg !1950

valid:                                            ; preds = %cont98, %if.then10, %lor.lhs.false140, %if.end38, %cont132, %land.lhs.true7
  %52 = bitcast %struct.ngx_variable_value_t* %v to i64*, !dbg !1951
  %53 = load i64* bitcast (%struct.ngx_variable_value_t* @ngx_http_variable_null_value to i64*), align 4, !dbg !1951
  store i64 %53, i64* %52, align 4, !dbg !1951
  br label %return, !dbg !1952

return:                                           ; preds = %cont98, %valid, %invalid
  %retval.0 = phi i32 [ 0, %valid ], [ 0, %invalid ], [ -1, %cont98 ]
  ret i32 %retval.0, !dbg !1953
}

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_hash_keys_array_init(%struct.ngx_hash_keys_arrays_t*, i32)

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

define internal fastcc i8* @ngx_http_add_regex_referer(%struct.ngx_conf_s* %cf, %struct.ngx_http_referer_conf_t* nocapture %rlcf, %struct.ngx_str_t* %name, %struct.ngx_regex_t* %regex) nounwind {
entry:
  %rc = alloca %struct.ngx_regex_compile_t, align 8
  %errstr = alloca [1024 x i8], align 1
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1666), !dbg !1954
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_referer_conf_t* %rlcf}, i64 0, metadata !1667), !dbg !1954
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %name}, i64 0, metadata !1668), !dbg !1954
  call void @llvm.dbg.value(metadata !{%struct.ngx_regex_t* %regex}, i64 0, metadata !1669), !dbg !1954
  call void @llvm.dbg.declare(metadata !{%struct.ngx_regex_compile_t* %rc}, metadata !1678), !dbg !1955
  call void @llvm.dbg.declare(metadata !{[1024 x i8]* %errstr}, metadata !1691), !dbg !1956
  %len = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 0, !dbg !1957
  %0 = load i32* %len, align 4, !dbg !1957, !tbaa !1840
  %cmp = icmp eq i32 %0, 1, !dbg !1957
  br i1 %cmp, label %cont2, label %if.end, !dbg !1957

cont2:                                            ; preds = %entry
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str10, i32 0, i32 0), %struct.ngx_str_t* %name) nounwind, !dbg !1958
  br label %return, !dbg !1960

if.end:                                           ; preds = %entry
  %regex5 = getelementptr inbounds %struct.ngx_http_referer_conf_t* %rlcf, i32 0, i32 1, !dbg !1961
  %1 = load %struct.ngx_array_s** %regex5, align 4, !dbg !1961, !tbaa !1844
  %cmp8 = icmp eq %struct.ngx_array_s* %1, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !1961
  br i1 %cmp8, label %cont11, label %if.end19, !dbg !1961

cont11:                                           ; preds = %if.end
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1962
  %2 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1962, !tbaa !1844
  %call = call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %2, i32 2, i32 8) nounwind, !dbg !1962
  store %struct.ngx_array_s* %call, %struct.ngx_array_s** %regex5, align 4, !dbg !1962, !tbaa !1844
  %cmp14 = icmp eq %struct.ngx_array_s* %call, null, !dbg !1964
  br i1 %cmp14, label %return, label %if.end19, !dbg !1964

if.end19:                                         ; preds = %cont11, %if.end
  %3 = phi %struct.ngx_array_s* [ %call, %cont11 ], [ %1, %if.end ]
  %call21 = call i8* @ngx_array_push(%struct.ngx_array_s* %3) nounwind, !dbg !1965
  %cmp22 = icmp eq i8* %call21, null, !dbg !1966
  br i1 %cmp22, label %return, label %if.end26, !dbg !1966

if.end26:                                         ; preds = %if.end19
  %tobool = icmp eq %struct.ngx_regex_t* %regex, null, !dbg !1967
  br i1 %tobool, label %if.end30, label %if.then27, !dbg !1967

if.then27:                                        ; preds = %if.end26
  %regex28 = bitcast i8* %call21 to %struct.ngx_regex_t**, !dbg !1968
  store %struct.ngx_regex_t* %regex, %struct.ngx_regex_t** %regex28, align 4, !dbg !1968, !tbaa !1844
  %data = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !1970
  %4 = load i8** %data, align 4, !dbg !1970, !tbaa !1844
  %name29 = getelementptr inbounds i8* %call21, i32 4, !dbg !1970
  %5 = bitcast i8* %name29 to i8**, !dbg !1970
  store i8* %4, i8** %5, align 4, !dbg !1970, !tbaa !1844
  br label %return, !dbg !1971

if.end30:                                         ; preds = %if.end26
  %6 = load i32* %len, align 4, !dbg !1972, !tbaa !1840
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %6, i32 1), !dbg !1972
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !1972
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !1972
  br i1 %9, label %ioc_bb32, label %cont33, !dbg !1972

ioc_bb32:                                         ; preds = %if.end30
  %10 = zext i32 %6 to i64, !dbg !1972
  call void @__ioc_report_sub_overflow(i32 389, i32 14, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @0, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind, !dbg !1972
  br label %cont33, !dbg !1972

cont33:                                           ; preds = %if.end30, %ioc_bb32
  store i32 %8, i32* %len, align 4, !dbg !1972, !tbaa !1840
  %data34 = getelementptr inbounds %struct.ngx_str_t* %name, i32 0, i32 1, !dbg !1973
  %11 = load i8** %data34, align 4, !dbg !1973, !tbaa !1844
  %incdec.ptr = getelementptr inbounds i8* %11, i32 1, !dbg !1973
  store i8* %incdec.ptr, i8** %data34, align 4, !dbg !1973, !tbaa !1844
  %12 = bitcast %struct.ngx_regex_compile_t* %rc to i8*, !dbg !1974
  call void @llvm.memset.p0i8.i32(i8* %12, i8 0, i32 40, i32 8, i1 false), !dbg !1974
  %13 = bitcast %struct.ngx_str_t* %name to i64*, !dbg !1975
  %14 = bitcast %struct.ngx_regex_compile_t* %rc to i64*, !dbg !1975
  %15 = load i64* %13, align 4, !dbg !1975
  store i64 %15, i64* %14, align 8, !dbg !1975
  %pool35 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1976
  %16 = load %struct.ngx_pool_s** %pool35, align 4, !dbg !1976, !tbaa !1844
  %pool36 = getelementptr inbounds %struct.ngx_regex_compile_t* %rc, i32 0, i32 1, !dbg !1976
  store %struct.ngx_pool_s* %16, %struct.ngx_pool_s** %pool36, align 8, !dbg !1976, !tbaa !1844
  %options = getelementptr inbounds %struct.ngx_regex_compile_t* %rc, i32 0, i32 2, !dbg !1977
  store i32 1, i32* %options, align 4, !dbg !1977, !tbaa !1840
  %err = getelementptr inbounds %struct.ngx_regex_compile_t* %rc, i32 0, i32 8, !dbg !1978
  %len39 = getelementptr inbounds %struct.ngx_str_t* %err, i32 0, i32 0, !dbg !1978
  store i32 1024, i32* %len39, align 4, !dbg !1978, !tbaa !1840
  %arraydecay = getelementptr inbounds [1024 x i8]* %errstr, i32 0, i32 0, !dbg !1979
  %data41 = getelementptr inbounds %struct.ngx_regex_compile_t* %rc, i32 0, i32 8, i32 1, !dbg !1979
  store i8* %arraydecay, i8** %data41, align 4, !dbg !1979, !tbaa !1844
  %call42 = call i32 @ngx_regex_compile(%struct.ngx_regex_compile_t* %rc) nounwind, !dbg !1980
  %cmp43 = icmp eq i32 %call42, 0, !dbg !1980
  br i1 %cmp43, label %if.end50, label %cont46, !dbg !1980

cont46:                                           ; preds = %cont33
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([3 x i8]* @.str11, i32 0, i32 0), %struct.ngx_str_t* %err) nounwind, !dbg !1981
  br label %return, !dbg !1983

if.end50:                                         ; preds = %cont33
  %regex51 = getelementptr inbounds %struct.ngx_regex_compile_t* %rc, i32 0, i32 3, !dbg !1984
  %17 = load %struct.ngx_regex_t** %regex51, align 8, !dbg !1984, !tbaa !1844
  %regex52 = bitcast i8* %call21 to %struct.ngx_regex_t**, !dbg !1984
  store %struct.ngx_regex_t* %17, %struct.ngx_regex_t** %regex52, align 4, !dbg !1984, !tbaa !1844
  %18 = load i8** %data34, align 4, !dbg !1985, !tbaa !1844
  %name54 = getelementptr inbounds i8* %call21, i32 4, !dbg !1985
  %19 = bitcast i8* %name54 to i8**, !dbg !1985
  store i8* %18, i8** %19, align 4, !dbg !1985, !tbaa !1844
  br label %return, !dbg !1986

return:                                           ; preds = %if.end19, %cont11, %if.end50, %cont46, %if.then27, %cont2
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont2 ], [ null, %if.then27 ], [ inttoptr (i32 -1 to i8*), %cont46 ], [ null, %if.end50 ], [ inttoptr (i32 -1 to i8*), %cont11 ], [ inttoptr (i32 -1 to i8*), %if.end19 ]
  ret i8* %retval.0, !dbg !1987
}

define internal fastcc i8* @ngx_http_add_referer(%struct.ngx_conf_s* %cf, %struct.ngx_hash_keys_arrays_t* %keys, %struct.ngx_str_t* %value, %struct.ngx_str_t* nocapture %uri) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1654), !dbg !1988
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_keys_arrays_t* %keys}, i64 0, metadata !1655), !dbg !1988
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %value}, i64 0, metadata !1656), !dbg !1988
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %uri}, i64 0, metadata !1657), !dbg !1988
  %len = getelementptr inbounds %struct.ngx_str_t* %uri, i32 0, i32 0, !dbg !1989
  %0 = load i32* %len, align 4, !dbg !1989, !tbaa !1840
  %cmp = icmp eq i32 %0, 0, !dbg !1989
  br i1 %cmp, label %cont7, label %if.else, !dbg !1989

if.else:                                          ; preds = %entry
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !1990
  %1 = load %struct.ngx_pool_s** %pool, align 4, !dbg !1990, !tbaa !1844
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %1, i32 8) nounwind, !dbg !1990
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %2}, i64 0, metadata !1660), !dbg !1990
  %cmp1 = icmp eq i8* %call, null, !dbg !1992
  br i1 %cmp1, label %return, label %if.end, !dbg !1992

if.end:                                           ; preds = %if.else
  %2 = bitcast i8* %call to %struct.ngx_str_t*, !dbg !1990
  %3 = bitcast %struct.ngx_str_t* %uri to i64*, !dbg !1993
  %4 = bitcast i8* %call to i64*, !dbg !1993
  %5 = load i64* %3, align 4, !dbg !1993
  store i64 %5, i64* %4, align 4, !dbg !1993
  br label %cont7

cont7:                                            ; preds = %if.end, %entry
  %u.0 = phi %struct.ngx_str_t* [ %2, %if.end ], [ inttoptr (i32 4 to %struct.ngx_str_t*), %entry ]
  %6 = bitcast %struct.ngx_str_t* %u.0 to i8*, !dbg !1994
  %call8 = tail call i32 @ngx_hash_add_key(%struct.ngx_hash_keys_arrays_t* %keys, %struct.ngx_str_t* %value, i8* %6, i32 1) nounwind, !dbg !1994
  tail call void @llvm.dbg.value(metadata !{i32 %call8}, i64 0, metadata !1658), !dbg !1994
  switch i32 %call8, label %cont27 [
    i32 0, label %return
    i32 -5, label %cont17
    i32 -3, label %cont24
  ], !dbg !1995

cont17:                                           ; preds = %cont7
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str8, i32 0, i32 0), %struct.ngx_str_t* %value) nounwind, !dbg !1996
  br label %cont27, !dbg !1998

cont24:                                           ; preds = %cont7
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([27 x i8]* @.str9, i32 0, i32 0), %struct.ngx_str_t* %value) nounwind, !dbg !1999
  br label %cont27, !dbg !2001

cont27:                                           ; preds = %cont17, %cont24, %cont7
  br label %return, !dbg !2002

return:                                           ; preds = %cont7, %if.else, %cont27
  %retval.0 = phi i8* [ inttoptr (i32 -1 to i8*), %cont27 ], [ inttoptr (i32 -1 to i8*), %if.else ], [ null, %cont7 ]
  ret i8* %retval.0, !dbg !2003
}

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @strchr(i8*, i32) nounwind readonly

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @ngx_hash_add_key(%struct.ngx_hash_keys_arrays_t*, %struct.ngx_str_t*, i8*, i32)

declare %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s*, i32, i32)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @ngx_regex_compile(%struct.ngx_regex_compile_t*)

declare i32 @ngx_strncasecmp(i8*, i8*, i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_hash_find_combined(%struct.ngx_hash_combined_t*, i32, i8*, i32)

declare i32 @ngx_regex_exec_array(%struct.ngx_array_s*, %struct.ngx_str_t*, %struct.ngx_log_s*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define internal i8* @ngx_http_referer_create_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1768), !dbg !2004
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2005
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2005, !tbaa !1844
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 40) nounwind, !dbg !2005
  %cmp = icmp eq i8* %call, null, !dbg !2006
  br i1 %cmp, label %return, label %cont, !dbg !2006

cont:                                             ; preds = %entry
  %regex = getelementptr inbounds i8* %call, i32 16, !dbg !2007
  %1 = bitcast i8* %regex to %struct.ngx_array_s**, !dbg !2007
  store %struct.ngx_array_s* inttoptr (i32 -1 to %struct.ngx_array_s*), %struct.ngx_array_s** %1, align 4, !dbg !2007, !tbaa !1844
  %no_referer = getelementptr inbounds i8* %call, i32 20, !dbg !2008
  %2 = bitcast i8* %no_referer to i32*, !dbg !2008
  store i32 -1, i32* %2, align 4, !dbg !2008, !tbaa !1840
  %blocked_referer = getelementptr inbounds i8* %call, i32 24, !dbg !2009
  %3 = bitcast i8* %blocked_referer to i32*, !dbg !2009
  store i32 -1, i32* %3, align 4, !dbg !2009, !tbaa !1840
  tail call void @__ioc_report_conversion(i32 158, i32 49, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2010
  %referer_hash_max_size = getelementptr inbounds i8* %call, i32 32, !dbg !2010
  %4 = bitcast i8* %referer_hash_max_size to i32*, !dbg !2010
  store i32 -1, i32* %4, align 4, !dbg !2010, !tbaa !1840
  tail call void @__ioc_report_conversion(i32 159, i32 52, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2011
  %referer_hash_bucket_size = getelementptr inbounds i8* %call, i32 36, !dbg !2011
  %5 = bitcast i8* %referer_hash_bucket_size to i32*, !dbg !2011
  store i32 -1, i32* %5, align 4, !dbg !2011, !tbaa !1840
  br label %return, !dbg !2012

return:                                           ; preds = %entry, %cont
  %retval.0 = phi i8* [ %call, %cont ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2013
}

define internal i8* @ngx_http_referer_merge_conf(%struct.ngx_conf_s* nocapture %cf, i8* nocapture %parent, i8* %child) nounwind {
entry:
  %hash = alloca %struct.ngx_hash_init_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1722), !dbg !2014
  call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !1723), !dbg !2014
  call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !1724), !dbg !2014
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %hash}, metadata !1728), !dbg !2015
  %keys = getelementptr inbounds i8* %child, i32 28, !dbg !2016
  %0 = bitcast i8* %keys to %struct.ngx_hash_keys_arrays_t**, !dbg !2016
  %1 = load %struct.ngx_hash_keys_arrays_t** %0, align 4, !dbg !2016, !tbaa !1844
  %cmp = icmp eq %struct.ngx_hash_keys_arrays_t* %1, null, !dbg !2016
  br i1 %cmp, label %if.then, label %if.end86, !dbg !2016

if.then:                                          ; preds = %entry
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %child, i8* %parent, i32 16, i32 4, i1 false), !dbg !2017, !tbaa.struct !2019
  %regex = getelementptr inbounds i8* %child, i32 16, !dbg !2020
  %2 = bitcast i8* %regex to %struct.ngx_array_s**, !dbg !2020
  %3 = load %struct.ngx_array_s** %2, align 4, !dbg !2020, !tbaa !1844
  %cmp3 = icmp eq %struct.ngx_array_s* %3, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2020
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !2020

if.then4:                                         ; preds = %if.then
  %regex5 = getelementptr inbounds i8* %parent, i32 16, !dbg !2021
  %4 = bitcast i8* %regex5 to %struct.ngx_array_s**, !dbg !2021
  %5 = load %struct.ngx_array_s** %4, align 4, !dbg !2021, !tbaa !1844
  %cmp8 = icmp eq %struct.ngx_array_s* %5, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2021
  %. = select i1 %cmp8, %struct.ngx_array_s* null, %struct.ngx_array_s* %5, !dbg !2021
  store %struct.ngx_array_s* %., %struct.ngx_array_s** %2, align 4, !dbg !2021, !tbaa !1844
  br label %if.end, !dbg !2023

if.end:                                           ; preds = %if.then4, %if.then
  %no_referer = getelementptr inbounds i8* %child, i32 20, !dbg !2024
  %6 = bitcast i8* %no_referer to i32*, !dbg !2024
  %7 = load i32* %6, align 4, !dbg !2024, !tbaa !1840
  %cmp13 = icmp eq i32 %7, -1, !dbg !2024
  br i1 %cmp13, label %if.then14, label %if.end25, !dbg !2024

if.then14:                                        ; preds = %if.end
  %no_referer15 = getelementptr inbounds i8* %parent, i32 20, !dbg !2025
  %8 = bitcast i8* %no_referer15 to i32*, !dbg !2025
  %9 = load i32* %8, align 4, !dbg !2025, !tbaa !1840
  %cmp18 = icmp eq i32 %9, -1, !dbg !2025
  %.356 = select i1 %cmp18, i32 0, i32 %9, !dbg !2025
  store i32 %.356, i32* %6, align 4, !dbg !2025, !tbaa !1840
  br label %if.end25, !dbg !2027

if.end25:                                         ; preds = %if.then14, %if.end
  %blocked_referer = getelementptr inbounds i8* %child, i32 24, !dbg !2028
  %10 = bitcast i8* %blocked_referer to i32*, !dbg !2028
  %11 = load i32* %10, align 4, !dbg !2028, !tbaa !1840
  %cmp28 = icmp eq i32 %11, -1, !dbg !2028
  br i1 %cmp28, label %if.then29, label %if.end40, !dbg !2028

if.then29:                                        ; preds = %if.end25
  %blocked_referer30 = getelementptr inbounds i8* %parent, i32 24, !dbg !2029
  %12 = bitcast i8* %blocked_referer30 to i32*, !dbg !2029
  %13 = load i32* %12, align 4, !dbg !2029, !tbaa !1840
  %cmp33 = icmp eq i32 %13, -1, !dbg !2029
  %.357 = select i1 %cmp33, i32 0, i32 %13, !dbg !2029
  store i32 %.357, i32* %10, align 4, !dbg !2029, !tbaa !1840
  br label %if.end40, !dbg !2031

if.end40:                                         ; preds = %if.then29, %if.end25
  %referer_hash_max_size = getelementptr inbounds i8* %child, i32 32, !dbg !2032
  %14 = bitcast i8* %referer_hash_max_size to i32*, !dbg !2032
  %15 = load i32* %14, align 4, !dbg !2032, !tbaa !1840
  call void @__ioc_report_conversion(i32 184, i32 56, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2032
  %cmp45 = icmp eq i32 %15, -1, !dbg !2032
  br i1 %cmp45, label %if.then46, label %if.end62, !dbg !2032

if.then46:                                        ; preds = %if.end40
  %referer_hash_max_size47 = getelementptr inbounds i8* %parent, i32 32, !dbg !2033
  %16 = bitcast i8* %referer_hash_max_size47 to i32*, !dbg !2033
  %17 = load i32* %16, align 4, !dbg !2033, !tbaa !1840
  call void @__ioc_report_conversion(i32 185, i32 87, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2033
  %cmp53 = icmp eq i32 %17, -1, !dbg !2033
  br i1 %cmp53, label %cond.end59, label %cond.false57, !dbg !2033

cond.false57:                                     ; preds = %if.then46
  %18 = load i32* %16, align 4, !dbg !2033, !tbaa !1840
  br label %cond.end59, !dbg !2033

cond.end59:                                       ; preds = %if.then46, %cond.false57
  %cond60 = phi i32 [ %18, %cond.false57 ], [ 2048, %if.then46 ], !dbg !2033
  store i32 %cond60, i32* %14, align 4, !dbg !2033, !tbaa !1840
  br label %if.end62, !dbg !2035

if.end62:                                         ; preds = %cond.end59, %if.end40
  %referer_hash_bucket_size = getelementptr inbounds i8* %child, i32 36, !dbg !2036
  %19 = bitcast i8* %referer_hash_bucket_size to i32*, !dbg !2036
  %20 = load i32* %19, align 4, !dbg !2036, !tbaa !1840
  call void @__ioc_report_conversion(i32 188, i32 59, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2036
  %cmp68 = icmp eq i32 %20, -1, !dbg !2036
  br i1 %cmp68, label %if.then69, label %return, !dbg !2036

if.then69:                                        ; preds = %if.end62
  %referer_hash_bucket_size70 = getelementptr inbounds i8* %parent, i32 36, !dbg !2037
  %21 = bitcast i8* %referer_hash_bucket_size70 to i32*, !dbg !2037
  %22 = load i32* %21, align 4, !dbg !2037, !tbaa !1840
  call void @__ioc_report_conversion(i32 189, i32 93, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2037
  %cmp76 = icmp eq i32 %22, -1, !dbg !2037
  br i1 %cmp76, label %cond.end82, label %cond.false80, !dbg !2037

cond.false80:                                     ; preds = %if.then69
  %23 = load i32* %21, align 4, !dbg !2037, !tbaa !1840
  br label %cond.end82, !dbg !2037

cond.end82:                                       ; preds = %if.then69, %cond.false80
  %cond83 = phi i32 [ %23, %cond.false80 ], [ 64, %if.then69 ], !dbg !2037
  store i32 %cond83, i32* %19, align 4, !dbg !2037, !tbaa !1840
  br label %return, !dbg !2039

if.end86:                                         ; preds = %entry
  %no_referer87 = getelementptr inbounds i8* %child, i32 20, !dbg !2040
  %24 = bitcast i8* %no_referer87 to i32*, !dbg !2040
  %25 = load i32* %24, align 4, !dbg !2040, !tbaa !1840
  %cmp88 = icmp eq i32 %25, 1, !dbg !2040
  br i1 %cmp88, label %cont94, label %lor.lhs.false, !dbg !2040

lor.lhs.false:                                    ; preds = %if.end86
  %blocked_referer89 = getelementptr inbounds i8* %child, i32 24, !dbg !2040
  %26 = bitcast i8* %blocked_referer89 to i32*, !dbg !2040
  %27 = load i32* %26, align 4, !dbg !2040, !tbaa !1840
  %cmp90 = icmp eq i32 %27, 1, !dbg !2040
  br i1 %cmp90, label %cont94, label %if.end119, !dbg !2040

cont94:                                           ; preds = %if.end86, %lor.lhs.false
  %nelts = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %1, i32 0, i32 3, i32 1, !dbg !2040
  %28 = load i32* %nelts, align 4, !dbg !2040, !tbaa !1840
  %cmp95 = icmp eq i32 %28, 0, !dbg !2040
  br i1 %cmp95, label %cont100, label %if.end119, !dbg !2040

cont100:                                          ; preds = %cont94
  %nelts98 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %1, i32 0, i32 5, i32 1, !dbg !2040
  %29 = load i32* %nelts98, align 4, !dbg !2040, !tbaa !1840
  %cmp101 = icmp eq i32 %29, 0, !dbg !2040
  br i1 %cmp101, label %cont106, label %if.end119, !dbg !2040

cont106:                                          ; preds = %cont100
  %nelts104 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %1, i32 0, i32 7, i32 1, !dbg !2040
  %30 = load i32* %nelts104, align 4, !dbg !2040, !tbaa !1840
  %cmp107 = icmp eq i32 %30, 0, !dbg !2040
  br i1 %cmp107, label %if.then108, label %if.end119, !dbg !2040

if.then108:                                       ; preds = %cont106
  %log = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 6, !dbg !2041
  %31 = load %struct.ngx_log_s** %log, align 4, !dbg !2041, !tbaa !1844
  %log_level = getelementptr inbounds %struct.ngx_log_s* %31, i32 0, i32 0, !dbg !2041
  %32 = load i32* %log_level, align 4, !dbg !2041, !tbaa !1840
  %cmp111 = icmp eq i32 %32, 0, !dbg !2041
  br i1 %cmp111, label %return, label %cont114, !dbg !2041

cont114:                                          ; preds = %if.then108
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %31, i32 0, i8* getelementptr inbounds ([107 x i8]* @.str14, i32 0, i32 0)) nounwind, !dbg !2043
  br label %return, !dbg !2043

if.end119:                                        ; preds = %cont106, %cont100, %cont94, %lor.lhs.false
  %referer_hash_max_size120 = getelementptr inbounds i8* %child, i32 32, !dbg !2044
  %33 = bitcast i8* %referer_hash_max_size120 to i32*, !dbg !2044
  %34 = load i32* %33, align 4, !dbg !2044, !tbaa !1840
  call void @__ioc_report_conversion(i32 199, i32 54, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2044
  %cmp126 = icmp eq i32 %34, -1, !dbg !2044
  br i1 %cmp126, label %if.then127, label %if.end143, !dbg !2044

if.then127:                                       ; preds = %if.end119
  %referer_hash_max_size128 = getelementptr inbounds i8* %parent, i32 32, !dbg !2045
  %35 = bitcast i8* %referer_hash_max_size128 to i32*, !dbg !2045
  %36 = load i32* %35, align 4, !dbg !2045, !tbaa !1840
  call void @__ioc_report_conversion(i32 200, i32 85, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2045
  %cmp134 = icmp eq i32 %36, -1, !dbg !2045
  br i1 %cmp134, label %cond.end140, label %cond.false138, !dbg !2045

cond.false138:                                    ; preds = %if.then127
  %37 = load i32* %35, align 4, !dbg !2045, !tbaa !1840
  br label %cond.end140, !dbg !2045

cond.end140:                                      ; preds = %if.then127, %cond.false138
  %cond141 = phi i32 [ %37, %cond.false138 ], [ 2048, %if.then127 ], !dbg !2045
  store i32 %cond141, i32* %33, align 4, !dbg !2045, !tbaa !1840
  br label %if.end143, !dbg !2047

if.end143:                                        ; preds = %cond.end140, %if.end119
  %referer_hash_bucket_size144 = getelementptr inbounds i8* %child, i32 36, !dbg !2048
  %38 = bitcast i8* %referer_hash_bucket_size144 to i32*, !dbg !2048
  %39 = load i32* %38, align 4, !dbg !2048, !tbaa !1840
  call void @__ioc_report_conversion(i32 203, i32 57, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2048
  %cmp150 = icmp eq i32 %39, -1, !dbg !2048
  br i1 %cmp150, label %if.then151, label %if.end143.if.end167_crit_edge, !dbg !2048

if.end143.if.end167_crit_edge:                    ; preds = %if.end143
  %.pre359 = load i32* %38, align 4, !dbg !2049, !tbaa !1840
  br label %if.end167, !dbg !2048

if.then151:                                       ; preds = %if.end143
  %referer_hash_bucket_size152 = getelementptr inbounds i8* %parent, i32 36, !dbg !2050
  %40 = bitcast i8* %referer_hash_bucket_size152 to i32*, !dbg !2050
  %41 = load i32* %40, align 4, !dbg !2050, !tbaa !1840
  call void @__ioc_report_conversion(i32 204, i32 91, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @8, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2050
  %cmp158 = icmp eq i32 %41, -1, !dbg !2050
  br i1 %cmp158, label %cond.end164, label %cond.false162, !dbg !2050

cond.false162:                                    ; preds = %if.then151
  %42 = load i32* %40, align 4, !dbg !2050, !tbaa !1840
  br label %cond.end164, !dbg !2050

cond.end164:                                      ; preds = %if.then151, %cond.false162
  %cond165 = phi i32 [ %42, %cond.false162 ], [ 64, %if.then151 ], !dbg !2050
  store i32 %cond165, i32* %38, align 4, !dbg !2050, !tbaa !1840
  br label %if.end167, !dbg !2052

if.end167:                                        ; preds = %if.end143.if.end167_crit_edge, %cond.end164
  %43 = phi i32 [ %.pre359, %if.end143.if.end167_crit_edge ], [ %cond165, %cond.end164 ]
  %44 = load i32* @ngx_cacheline_size, align 4, !dbg !2049, !tbaa !1840
  %45 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %44, i32 1), !dbg !2049
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !2049
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !2049
  br i1 %47, label %ioc_bb171, label %cont172, !dbg !2049

ioc_bb171:                                        ; preds = %if.end167
  %48 = zext i32 %44 to i64, !dbg !2049
  call void @__ioc_report_sub_overflow(i32 207, i32 93, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %48, i64 1, i8 5) nounwind, !dbg !2049
  br label %cont172, !dbg !2049

cont172:                                          ; preds = %if.end167, %ioc_bb171
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %43, i32 %46), !dbg !2049
  %50 = extractvalue { i32, i1 } %49, 0, !dbg !2049
  %51 = extractvalue { i32, i1 } %49, 1, !dbg !2049
  br i1 %51, label %ioc_bb173, label %cont174, !dbg !2049

ioc_bb173:                                        ; preds = %cont172
  %52 = zext i32 %46 to i64, !dbg !2049
  %53 = zext i32 %43 to i64, !dbg !2049
  call void @__ioc_report_add_overflow(i32 207, i32 71, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %53, i64 %52, i8 5) nounwind, !dbg !2049
  br label %cont174, !dbg !2049

cont174:                                          ; preds = %cont172, %ioc_bb173
  %54 = load i32* @ngx_cacheline_size, align 4, !dbg !2049, !tbaa !1840
  %55 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %54, i32 1), !dbg !2049
  %56 = extractvalue { i32, i1 } %55, 0, !dbg !2049
  %57 = extractvalue { i32, i1 } %55, 1, !dbg !2049
  br i1 %57, label %ioc_bb177, label %cont178, !dbg !2049

ioc_bb177:                                        ; preds = %cont174
  %58 = zext i32 %54 to i64, !dbg !2049
  call void @__ioc_report_sub_overflow(i32 207, i32 121, i8* getelementptr inbounds ([43 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %58, i64 1, i8 5) nounwind, !dbg !2049
  br label %cont178, !dbg !2049

cont178:                                          ; preds = %cont174, %ioc_bb177
  %neg = xor i32 %56, -1, !dbg !2049
  %and = and i32 %50, %neg, !dbg !2049
  store i32 %and, i32* %38, align 4, !dbg !2049, !tbaa !1840
  %key = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 1, !dbg !2053
  store i32 (i8*, i32)* @ngx_hash_key_lc, i32 (i8*, i32)** %key, align 4, !dbg !2053, !tbaa !1844
  %59 = load i32* %33, align 4, !dbg !2054, !tbaa !1840
  %max_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 2, !dbg !2054
  store i32 %59, i32* %max_size, align 4, !dbg !2054, !tbaa !1840
  %bucket_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 3, !dbg !2055
  store i32 %and, i32* %bucket_size, align 4, !dbg !2055, !tbaa !1840
  %name = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 4, !dbg !2056
  store i8* getelementptr inbounds ([13 x i8]* @.str15, i32 0, i32 0), i8** %name, align 4, !dbg !2056, !tbaa !1844
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2057
  %60 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2057, !tbaa !1844
  %pool182 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 5, !dbg !2057
  store %struct.ngx_pool_s* %60, %struct.ngx_pool_s** %pool182, align 4, !dbg !2057, !tbaa !1844
  %61 = load %struct.ngx_hash_keys_arrays_t** %0, align 4, !dbg !2058, !tbaa !1844
  %nelts185 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %61, i32 0, i32 3, i32 1, !dbg !2058
  %62 = load i32* %nelts185, align 4, !dbg !2058, !tbaa !1840
  %tobool = icmp eq i32 %62, 0, !dbg !2058
  br i1 %tobool, label %if.end200, label %if.then186, !dbg !2058

if.then186:                                       ; preds = %cont178
  %hash188 = bitcast i8* %child to %struct.ngx_hash_t*, !dbg !2059
  %hash189 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !2059
  store %struct.ngx_hash_t* %hash188, %struct.ngx_hash_t** %hash189, align 4, !dbg !2059, !tbaa !1844
  %temp_pool = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !2061
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2061, !tbaa !1844
  %elts = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %61, i32 0, i32 3, i32 0, !dbg !2062
  %63 = load i8** %elts, align 4, !dbg !2062, !tbaa !1844
  %64 = bitcast i8* %63 to %struct.ngx_hash_key_t*, !dbg !2062
  %call = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %64, i32 %62) nounwind, !dbg !2062
  %cmp195 = icmp eq i32 %call, 0, !dbg !2062
  br i1 %cmp195, label %if.then186.if.end200_crit_edge, label %return, !dbg !2062

if.then186.if.end200_crit_edge:                   ; preds = %if.then186
  %.pre360 = load %struct.ngx_hash_keys_arrays_t** %0, align 4, !dbg !2063, !tbaa !1844
  br label %if.end200, !dbg !2062

if.end200:                                        ; preds = %if.then186.if.end200_crit_edge, %cont178
  %65 = phi %struct.ngx_hash_keys_arrays_t* [ %.pre360, %if.then186.if.end200_crit_edge ], [ %61, %cont178 ]
  %nelts203 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %65, i32 0, i32 5, i32 1, !dbg !2063
  %66 = load i32* %nelts203, align 4, !dbg !2063, !tbaa !1840
  %tobool204 = icmp eq i32 %66, 0, !dbg !2063
  br i1 %tobool204, label %if.end229, label %if.then205, !dbg !2063

if.then205:                                       ; preds = %if.end200
  %elts208 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %65, i32 0, i32 5, i32 0, !dbg !2064
  %67 = load i8** %elts208, align 4, !dbg !2064, !tbaa !1844
  call void @qsort(i8* %67, i32 %66, i32 16, i32 (i8*, i8*)* @ngx_http_cmp_referer_wildcards) nounwind, !dbg !2064
  %hash212 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !2066
  store %struct.ngx_hash_t* null, %struct.ngx_hash_t** %hash212, align 4, !dbg !2066, !tbaa !1844
  %temp_pool213 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2067
  %68 = load %struct.ngx_pool_s** %temp_pool213, align 4, !dbg !2067, !tbaa !1844
  %temp_pool214 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !2067
  store %struct.ngx_pool_s* %68, %struct.ngx_pool_s** %temp_pool214, align 4, !dbg !2067, !tbaa !1844
  %69 = load %struct.ngx_hash_keys_arrays_t** %0, align 4, !dbg !2068, !tbaa !1844
  %elts217 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %69, i32 0, i32 5, i32 0, !dbg !2068
  %70 = load i8** %elts217, align 4, !dbg !2068, !tbaa !1844
  %71 = bitcast i8* %70 to %struct.ngx_hash_key_t*, !dbg !2068
  %nelts220 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %69, i32 0, i32 5, i32 1, !dbg !2068
  %72 = load i32* %nelts220, align 4, !dbg !2068, !tbaa !1840
  %call221 = call i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %71, i32 %72) nounwind, !dbg !2068
  %cmp222 = icmp eq i32 %call221, 0, !dbg !2068
  br i1 %cmp222, label %if.end226, label %return, !dbg !2068

if.end226:                                        ; preds = %if.then205
  %73 = load %struct.ngx_hash_t** %hash212, align 4, !dbg !2069, !tbaa !1844
  %74 = bitcast %struct.ngx_hash_t* %73 to %struct.ngx_hash_wildcard_t*, !dbg !2069
  %wc_head = getelementptr inbounds i8* %child, i32 8, !dbg !2069
  %75 = bitcast i8* %wc_head to %struct.ngx_hash_wildcard_t**, !dbg !2069
  store %struct.ngx_hash_wildcard_t* %74, %struct.ngx_hash_wildcard_t** %75, align 4, !dbg !2069, !tbaa !1844
  %.pre = load %struct.ngx_hash_keys_arrays_t** %0, align 4, !dbg !2070, !tbaa !1844
  br label %if.end229, !dbg !2071

if.end229:                                        ; preds = %if.end200, %if.end226
  %76 = phi %struct.ngx_hash_keys_arrays_t* [ %65, %if.end200 ], [ %.pre, %if.end226 ]
  %nelts232 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %76, i32 0, i32 7, i32 1, !dbg !2070
  %77 = load i32* %nelts232, align 4, !dbg !2070, !tbaa !1840
  %tobool233 = icmp eq i32 %77, 0, !dbg !2070
  br i1 %tobool233, label %if.end258, label %if.then234, !dbg !2070

if.then234:                                       ; preds = %if.end229
  %elts237 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %76, i32 0, i32 7, i32 0, !dbg !2072
  %78 = load i8** %elts237, align 4, !dbg !2072, !tbaa !1844
  call void @qsort(i8* %78, i32 %77, i32 16, i32 (i8*, i8*)* @ngx_http_cmp_referer_wildcards) nounwind, !dbg !2072
  %hash241 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !2074
  store %struct.ngx_hash_t* null, %struct.ngx_hash_t** %hash241, align 4, !dbg !2074, !tbaa !1844
  %temp_pool242 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2075
  %79 = load %struct.ngx_pool_s** %temp_pool242, align 4, !dbg !2075, !tbaa !1844
  %temp_pool243 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !2075
  store %struct.ngx_pool_s* %79, %struct.ngx_pool_s** %temp_pool243, align 4, !dbg !2075, !tbaa !1844
  %80 = load %struct.ngx_hash_keys_arrays_t** %0, align 4, !dbg !2076, !tbaa !1844
  %elts246 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %80, i32 0, i32 7, i32 0, !dbg !2076
  %81 = load i8** %elts246, align 4, !dbg !2076, !tbaa !1844
  %82 = bitcast i8* %81 to %struct.ngx_hash_key_t*, !dbg !2076
  %nelts249 = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %80, i32 0, i32 7, i32 1, !dbg !2076
  %83 = load i32* %nelts249, align 4, !dbg !2076, !tbaa !1840
  %call250 = call i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %82, i32 %83) nounwind, !dbg !2076
  %cmp251 = icmp eq i32 %call250, 0, !dbg !2076
  br i1 %cmp251, label %if.end255, label %return, !dbg !2076

if.end255:                                        ; preds = %if.then234
  %84 = load %struct.ngx_hash_t** %hash241, align 4, !dbg !2077, !tbaa !1844
  %85 = bitcast %struct.ngx_hash_t* %84 to %struct.ngx_hash_wildcard_t*, !dbg !2077
  %wc_tail = getelementptr inbounds i8* %child, i32 12, !dbg !2077
  %86 = bitcast i8* %wc_tail to %struct.ngx_hash_wildcard_t**, !dbg !2077
  store %struct.ngx_hash_wildcard_t* %85, %struct.ngx_hash_wildcard_t** %86, align 4, !dbg !2077, !tbaa !1844
  br label %if.end258, !dbg !2078

if.end258:                                        ; preds = %if.end229, %if.end255
  %regex259 = getelementptr inbounds i8* %child, i32 16, !dbg !2079
  %87 = bitcast i8* %regex259 to %struct.ngx_array_s**, !dbg !2079
  %88 = load %struct.ngx_array_s** %87, align 4, !dbg !2079, !tbaa !1844
  %cmp262 = icmp eq %struct.ngx_array_s* %88, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2079
  br i1 %cmp262, label %if.then263, label %if.end274, !dbg !2079

if.then263:                                       ; preds = %if.end258
  %regex264 = getelementptr inbounds i8* %parent, i32 16, !dbg !2080
  %89 = bitcast i8* %regex264 to %struct.ngx_array_s**, !dbg !2080
  %90 = load %struct.ngx_array_s** %89, align 4, !dbg !2080, !tbaa !1844
  %cmp267 = icmp eq %struct.ngx_array_s* %90, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2080
  %.358 = select i1 %cmp267, %struct.ngx_array_s* null, %struct.ngx_array_s* %90, !dbg !2080
  store %struct.ngx_array_s* %.358, %struct.ngx_array_s** %87, align 4, !dbg !2080, !tbaa !1844
  br label %if.end274, !dbg !2082

if.end274:                                        ; preds = %if.then263, %if.end258
  %91 = load i32* %24, align 4, !dbg !2083, !tbaa !1840
  %cmp278 = icmp eq i32 %91, -1, !dbg !2083
  br i1 %cmp278, label %if.then279, label %if.end281, !dbg !2083

if.then279:                                       ; preds = %if.end274
  store i32 0, i32* %24, align 4, !dbg !2084, !tbaa !1840
  br label %if.end281, !dbg !2086

if.end281:                                        ; preds = %if.then279, %if.end274
  %blocked_referer282 = getelementptr inbounds i8* %child, i32 24, !dbg !2087
  %92 = bitcast i8* %blocked_referer282 to i32*, !dbg !2087
  %93 = load i32* %92, align 4, !dbg !2087, !tbaa !1840
  %cmp285 = icmp eq i32 %93, -1, !dbg !2087
  br i1 %cmp285, label %if.then286, label %if.end288, !dbg !2087

if.then286:                                       ; preds = %if.end281
  store i32 0, i32* %92, align 4, !dbg !2088, !tbaa !1840
  br label %if.end288, !dbg !2090

if.end288:                                        ; preds = %if.then286, %if.end281
  store %struct.ngx_hash_keys_arrays_t* null, %struct.ngx_hash_keys_arrays_t** %0, align 4, !dbg !2091, !tbaa !1844
  br label %return, !dbg !2092

return:                                           ; preds = %if.then234, %if.then205, %if.then186, %if.then108, %cont114, %if.end62, %cond.end82, %if.end288
  %retval.0 = phi i8* [ null, %if.end288 ], [ null, %cond.end82 ], [ null, %if.end62 ], [ inttoptr (i32 -1 to i8*), %cont114 ], [ inttoptr (i32 -1 to i8*), %if.then108 ], [ inttoptr (i32 -1 to i8*), %if.then186 ], [ inttoptr (i32 -1 to i8*), %if.then205 ], [ inttoptr (i32 -1 to i8*), %if.then234 ]
  ret i8* %retval.0, !dbg !2093
}

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32 @ngx_hash_key_lc(i8*, i32)

declare i32 @ngx_hash_init(%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)* nocapture)

define internal i32 @ngx_http_cmp_referer_wildcards(i8* nocapture %one, i8* nocapture %two) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %one}, i64 0, metadata !1751), !dbg !2094
  tail call void @llvm.dbg.value(metadata !{i8* %two}, i64 0, metadata !1752), !dbg !2094
  %data = getelementptr inbounds i8* %one, i32 4, !dbg !2095
  %0 = bitcast i8* %data to i8**, !dbg !2095
  %1 = load i8** %0, align 4, !dbg !2095, !tbaa !1844
  %data2 = getelementptr inbounds i8* %two, i32 4, !dbg !2095
  %2 = bitcast i8* %data2 to i8**, !dbg !2095
  %3 = load i8** %2, align 4, !dbg !2095, !tbaa !1844
  %call = tail call i32 @ngx_dns_strcmp(i8* %1, i8* %3) nounwind, !dbg !2095
  ret i32 %call, !dbg !2095
}

declare i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)

declare i32 @ngx_dns_strcmp(i8*, i8*)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_referer_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1771} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !1649, metadata !1661, metadata !1695, metadata !1717, metadata !1744, metadata !1763}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_valid_referers", metadata !"ngx_http_valid_referers", metadata !"", metadata !6, i32 254, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_valid_referers, null, null, metadata !457, i32 255} ; [ DW_TAG_subprogram ] [line 254] [local] [def] [scope 255] [ngx_http_valid_referers]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_referer_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
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
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !522, metadata !523, metadata !525, metadata !526, metadata !527, metadata !528, metadata !529, metadata !1627, metadata !1628, metadata !1629, metadata !1633, metadata !1634, metadata !1636, metadata !1637, metadata !1639, metadata !1640, metadata !1642, metadata !1643, metadata !1645, metadata !1646, metadata !1648}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16777470, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 254]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33554686, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 254]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50331902, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 254]
!462 = metadata !{i32 786688, metadata !463, metadata !"rlcf", metadata !6, i32 256, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlcf] [line 256]
!463 = metadata !{i32 786443, metadata !5, i32 255, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_referer_conf_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_http_referer_conf_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_http_referer_conf_t] [line 21, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 12, i64 320, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 12, size 320, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !500, metadata !501, metadata !505, metadata !506, metadata !520, metadata !521}
!468 = metadata !{i32 786445, metadata !466, metadata !"hash", metadata !6, i32 13, i64 128, i64 32, i64 0, i32 0, metadata !469} ; [ DW_TAG_member ] [hash] [line 13, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!469 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !6, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !470} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!470 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !472, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!471 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!472 = metadata !{metadata !473, metadata !492, metadata !499}
!473 = metadata !{i32 786445, metadata !470, metadata !"hash", metadata !471, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !474} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!474 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !471, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !475} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!475 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !476, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!476 = metadata !{metadata !477, metadata !491}
!477 = metadata !{i32 786445, metadata !475, metadata !"buckets", metadata !471, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !478} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!478 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !479} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!479 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !480} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!480 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !471, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !481} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!481 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !482, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!482 = metadata !{metadata !483, metadata !484, metadata !487}
!483 = metadata !{i32 786445, metadata !481, metadata !"value", metadata !471, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!484 = metadata !{i32 786445, metadata !481, metadata !"len", metadata !471, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !485} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!485 = metadata !{i32 786454, null, metadata !"u_short", metadata !471, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !486} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!486 = metadata !{i32 786454, null, metadata !"__u_short", metadata !471, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!487 = metadata !{i32 786445, metadata !481, metadata !"name", metadata !471, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !488} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!488 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !45, metadata !489, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!489 = metadata !{metadata !490}
!490 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!491 = metadata !{i32 786445, metadata !475, metadata !"size", metadata !471, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!492 = metadata !{i32 786445, metadata !470, metadata !"wc_head", metadata !471, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !493} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!493 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !494} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!494 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !471, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !495} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!495 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !496, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!496 = metadata !{metadata !497, metadata !498}
!497 = metadata !{i32 786445, metadata !495, metadata !"hash", metadata !471, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !474} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!498 = metadata !{i32 786445, metadata !495, metadata !"value", metadata !471, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!499 = metadata !{i32 786445, metadata !470, metadata !"wc_tail", metadata !471, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !493} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!500 = metadata !{i32 786445, metadata !466, metadata !"regex", metadata !6, i32 15, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [regex] [line 15, size 32, align 32, offset 128] [from ]
!501 = metadata !{i32 786445, metadata !466, metadata !"no_referer", metadata !6, i32 17, i64 32, i64 32, i64 160, i32 0, metadata !502} ; [ DW_TAG_member ] [no_referer] [line 17, size 32, align 32, offset 160] [from ngx_flag_t]
!502 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !6, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!503 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !13, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !504} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!504 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !13, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!505 = metadata !{i32 786445, metadata !466, metadata !"blocked_referer", metadata !6, i32 18, i64 32, i64 32, i64 192, i32 0, metadata !502} ; [ DW_TAG_member ] [blocked_referer] [line 18, size 32, align 32, offset 192] [from ngx_flag_t]
!506 = metadata !{i32 786445, metadata !466, metadata !"keys", metadata !6, i32 19, i64 32, i64 32, i64 224, i32 0, metadata !507} ; [ DW_TAG_member ] [keys] [line 19, size 32, align 32, offset 224] [from ]
!507 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !508} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!508 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !6, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !509} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!509 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !510, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!510 = metadata !{metadata !511, metadata !512, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519}
!511 = metadata !{i32 786445, metadata !509, metadata !"hsize", metadata !471, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!512 = metadata !{i32 786445, metadata !509, metadata !"pool", metadata !471, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!513 = metadata !{i32 786445, metadata !509, metadata !"temp_pool", metadata !471, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!514 = metadata !{i32 786445, metadata !509, metadata !"keys", metadata !471, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!515 = metadata !{i32 786445, metadata !509, metadata !"keys_hash", metadata !471, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !18} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!516 = metadata !{i32 786445, metadata !509, metadata !"dns_wc_head", metadata !471, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!517 = metadata !{i32 786445, metadata !509, metadata !"dns_wc_head_hash", metadata !471, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!518 = metadata !{i32 786445, metadata !509, metadata !"dns_wc_tail", metadata !471, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !19} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!519 = metadata !{i32 786445, metadata !509, metadata !"dns_wc_tail_hash", metadata !471, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !18} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!520 = metadata !{i32 786445, metadata !466, metadata !"referer_hash_max_size", metadata !6, i32 20, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [referer_hash_max_size] [line 20, size 32, align 32, offset 256] [from ngx_uint_t]
!521 = metadata !{i32 786445, metadata !466, metadata !"referer_hash_bucket_size", metadata !6, i32 21, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [referer_hash_bucket_size] [line 21, size 32, align 32, offset 288] [from ngx_uint_t]
!522 = metadata !{i32 786688, metadata !463, metadata !"p", metadata !6, i32 257, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 257]
!523 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 258, metadata !524, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 258]
!524 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!525 = metadata !{i32 786688, metadata !463, metadata !"uri", metadata !6, i32 259, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uri] [line 259]
!526 = metadata !{i32 786688, metadata !463, metadata !"name", metadata !6, i32 260, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 260]
!527 = metadata !{i32 786688, metadata !463, metadata !"i", metadata !6, i32 261, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 261]
!528 = metadata !{i32 786688, metadata !463, metadata !"n", metadata !6, i32 262, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 262]
!529 = metadata !{i32 786688, metadata !463, metadata !"var", metadata !6, i32 263, metadata !530, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [var] [line 263]
!530 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !531} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_t]
!531 = metadata !{i32 786454, null, metadata !"ngx_http_variable_t", metadata !6, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !532} ; [ DW_TAG_typedef ] [ngx_http_variable_t] [line 21, size 0, align 0, offset 0] [from ngx_http_variable_s]
!532 = metadata !{i32 786451, null, metadata !"ngx_http_variable_s", metadata !533, i32 35, i64 224, i64 32, i32 0, i32 0, null, metadata !534, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_variable_s] [line 35, size 224, align 32, offset 0] [from ]
!533 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!534 = metadata !{metadata !535, metadata !536, metadata !1619, metadata !1624, metadata !1625, metadata !1626}
!535 = metadata !{i32 786445, metadata !532, metadata !"name", metadata !533, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!536 = metadata !{i32 786445, metadata !532, metadata !"set_handler", metadata !533, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !537} ; [ DW_TAG_member ] [set_handler] [line 37, size 32, align 32, offset 64] [from ngx_http_set_variable_pt]
!537 = metadata !{i32 786454, null, metadata !"ngx_http_set_variable_pt", metadata !533, i32 23, i64 0, i64 0, i64 0, i32 0, metadata !538} ; [ DW_TAG_typedef ] [ngx_http_set_variable_pt] [line 23, size 0, align 0, offset 0] [from ]
!538 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !539} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!540 = metadata !{null, metadata !541, metadata !1493, metadata !27}
!541 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !542} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!542 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !533, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !543} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!543 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !544, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !545, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!544 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!545 = metadata !{metadata !546, metadata !548, metadata !549, metadata !550, metadata !551, metadata !552, metadata !553, metadata !560, metadata !561, metadata !750, metadata !1155, metadata !1156, metadata !1157, metadata !1158, metadata !1194, metadata !1223, metadata !1235, metadata !1236, metadata !1237, metadata !1238, metadata !1239, metadata !1240, metadata !1241, metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246, metadata !1247, metadata !1248, metadata !1249, metadata !1250, metadata !1258, metadata !1269, metadata !1276, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1504, metadata !1505, metadata !1507, metadata !1508, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1524, metadata !1529, metadata !1537, metadata !1538, metadata !1539, metadata !1540, metadata !1541, metadata !1542, metadata !1543, metadata !1544, metadata !1545, metadata !1546, metadata !1547, metadata !1548, metadata !1549, metadata !1550, metadata !1551, metadata !1552, metadata !1553, metadata !1554, metadata !1555, metadata !1556, metadata !1557, metadata !1558, metadata !1559, metadata !1560, metadata !1561, metadata !1562, metadata !1563, metadata !1564, metadata !1565, metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571, metadata !1572, metadata !1573, metadata !1574, metadata !1575, metadata !1576, metadata !1577, metadata !1578, metadata !1579, metadata !1580, metadata !1581, metadata !1582, metadata !1583, metadata !1584, metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1589, metadata !1590, metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1600, metadata !1601, metadata !1602, metadata !1603, metadata !1604, metadata !1605, metadata !1606, metadata !1607, metadata !1608, metadata !1609, metadata !1610, metadata !1611, metadata !1612, metadata !1613, metadata !1614, metadata !1615, metadata !1616, metadata !1617, metadata !1618}
!546 = metadata !{i32 786445, metadata !543, metadata !"signature", metadata !544, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !547} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!547 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !544, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!548 = metadata !{i32 786445, metadata !543, metadata !"connection", metadata !544, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!549 = metadata !{i32 786445, metadata !543, metadata !"ctx", metadata !544, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!550 = metadata !{i32 786445, metadata !543, metadata !"main_conf", metadata !544, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!551 = metadata !{i32 786445, metadata !543, metadata !"srv_conf", metadata !544, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!552 = metadata !{i32 786445, metadata !543, metadata !"loc_conf", metadata !544, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!553 = metadata !{i32 786445, metadata !543, metadata !"read_event_handler", metadata !544, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !554} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!554 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !544, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !555} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!555 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !556} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!556 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !557, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!557 = metadata !{null, metadata !558}
!558 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !559} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!559 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !544, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !543} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!560 = metadata !{i32 786445, metadata !543, metadata !"write_event_handler", metadata !544, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !554} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!561 = metadata !{i32 786445, metadata !543, metadata !"cache", metadata !544, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !562} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!562 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !563} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!563 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !544, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !564} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!564 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !565, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!565 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!566 = metadata !{metadata !567, metadata !568, metadata !569, metadata !570, metadata !574, metadata !577, metadata !579, metadata !580, metadata !581, metadata !582, metadata !583, metadata !584, metadata !585, metadata !586, metadata !587, metadata !588, metadata !589, metadata !718, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749}
!567 = metadata !{i32 786445, metadata !564, metadata !"file", metadata !565, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!568 = metadata !{i32 786445, metadata !564, metadata !"keys", metadata !565, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !19} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!569 = metadata !{i32 786445, metadata !564, metadata !"crc32", metadata !565, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !547} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!570 = metadata !{i32 786445, metadata !564, metadata !"key", metadata !565, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !571} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!571 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !45, metadata !572, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!572 = metadata !{metadata !573}
!573 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!574 = metadata !{i32 786445, metadata !564, metadata !"uniq", metadata !565, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !575} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!575 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !565, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !576} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!576 = metadata !{i32 786454, null, metadata !"ino_t", metadata !565, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !133} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!577 = metadata !{i32 786445, metadata !564, metadata !"valid_sec", metadata !565, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !578} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!578 = metadata !{i32 786454, null, metadata !"time_t", metadata !565, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !128} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!579 = metadata !{i32 786445, metadata !564, metadata !"last_modified", metadata !565, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !578} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!580 = metadata !{i32 786445, metadata !564, metadata !"date", metadata !565, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !578} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!581 = metadata !{i32 786445, metadata !564, metadata !"header_start", metadata !565, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!582 = metadata !{i32 786445, metadata !564, metadata !"body_start", metadata !565, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!583 = metadata !{i32 786445, metadata !564, metadata !"length", metadata !565, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!584 = metadata !{i32 786445, metadata !564, metadata !"fs_size", metadata !565, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!585 = metadata !{i32 786445, metadata !564, metadata !"min_uses", metadata !565, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !26} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!586 = metadata !{i32 786445, metadata !564, metadata !"error", metadata !565, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !26} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!587 = metadata !{i32 786445, metadata !564, metadata !"valid_msec", metadata !565, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !26} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!588 = metadata !{i32 786445, metadata !564, metadata !"buf", metadata !565, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!589 = metadata !{i32 786445, metadata !564, metadata !"file_cache", metadata !565, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !590} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!590 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !591} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!591 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !565, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !592} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!592 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !565, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !593, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!593 = metadata !{metadata !594, metadata !617, metadata !664, metadata !685, metadata !686, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !693}
!594 = metadata !{i32 786445, metadata !592, metadata !"sh", metadata !565, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !595} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!595 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !596} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!596 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !565, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !597} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!597 = metadata !{i32 786451, null, metadata !"", metadata !565, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !598, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!598 = metadata !{metadata !599, metadata !610, metadata !611, metadata !612, metadata !615, metadata !616}
!599 = metadata !{i32 786445, metadata !597, metadata !"rbtree", metadata !565, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !600} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!600 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !565, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !601} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!601 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !261, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !602, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!602 = metadata !{metadata !603, metadata !604, metadata !605}
!603 = metadata !{i32 786445, metadata !601, metadata !"root", metadata !261, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !266} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!604 = metadata !{i32 786445, metadata !601, metadata !"sentinel", metadata !261, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !266} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!605 = metadata !{i32 786445, metadata !601, metadata !"insert", metadata !261, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !606} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!606 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !261, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !607} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!607 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !608} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!608 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!609 = metadata !{null, metadata !266, metadata !266, metadata !266}
!610 = metadata !{i32 786445, metadata !597, metadata !"sentinel", metadata !565, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!611 = metadata !{i32 786445, metadata !597, metadata !"queue", metadata !565, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!612 = metadata !{i32 786445, metadata !597, metadata !"cold", metadata !565, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !613} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!613 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !565, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !614} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!614 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!615 = metadata !{i32 786445, metadata !597, metadata !"loading", metadata !565, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !613} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!616 = metadata !{i32 786445, metadata !597, metadata !"size", metadata !565, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !69} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!617 = metadata !{i32 786445, metadata !592, metadata !"shpool", metadata !565, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !618} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!618 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !619} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!619 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !565, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !620} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!620 = metadata !{i32 786451, null, metadata !"", metadata !621, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !622, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!621 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!622 = metadata !{metadata !623, metadata !630, metadata !631, metadata !632, metadata !640, metadata !641, metadata !642, metadata !643, metadata !660, metadata !661, metadata !662, metadata !663}
!623 = metadata !{i32 786445, metadata !620, metadata !"lock", metadata !621, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !624} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!624 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !621, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !625} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!625 = metadata !{i32 786451, null, metadata !"", metadata !626, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !627, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!626 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!627 = metadata !{metadata !628, metadata !629}
!628 = metadata !{i32 786445, metadata !625, metadata !"lock", metadata !626, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !613} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!629 = metadata !{i32 786445, metadata !625, metadata !"wait", metadata !626, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !613} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!630 = metadata !{i32 786445, metadata !620, metadata !"min_size", metadata !621, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!631 = metadata !{i32 786445, metadata !620, metadata !"min_shift", metadata !621, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!632 = metadata !{i32 786445, metadata !620, metadata !"pages", metadata !621, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !633} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!633 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !634} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!634 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !621, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !635} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!635 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !621, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !636, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!636 = metadata !{metadata !637, metadata !638, metadata !639}
!637 = metadata !{i32 786445, metadata !635, metadata !"slab", metadata !621, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!638 = metadata !{i32 786445, metadata !635, metadata !"next", metadata !621, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !633} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!639 = metadata !{i32 786445, metadata !635, metadata !"prev", metadata !621, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !27} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!640 = metadata !{i32 786445, metadata !620, metadata !"free", metadata !621, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !634} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!641 = metadata !{i32 786445, metadata !620, metadata !"start", metadata !621, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!642 = metadata !{i32 786445, metadata !620, metadata !"end", metadata !621, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!643 = metadata !{i32 786445, metadata !620, metadata !"mutex", metadata !621, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !644} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!644 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !621, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !645} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!645 = metadata !{i32 786451, null, metadata !"", metadata !626, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !646, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!646 = metadata !{metadata !647, metadata !649, metadata !650, metadata !651, metadata !659}
!647 = metadata !{i32 786445, metadata !645, metadata !"lock", metadata !626, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !648} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!648 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !613} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!649 = metadata !{i32 786445, metadata !645, metadata !"wait", metadata !626, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !648} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!650 = metadata !{i32 786445, metadata !645, metadata !"semaphore", metadata !626, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!651 = metadata !{i32 786445, metadata !645, metadata !"sem", metadata !626, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !652} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!652 = metadata !{i32 786454, null, metadata !"sem_t", metadata !626, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !653} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!653 = metadata !{i32 786455, null, metadata !"", metadata !654, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !655, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!654 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!655 = metadata !{metadata !656, metadata !658}
!656 = metadata !{i32 786445, metadata !653, metadata !"__size", metadata !654, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !657} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!657 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !10, metadata !572, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!658 = metadata !{i32 786445, metadata !653, metadata !"__align", metadata !654, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !120} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!659 = metadata !{i32 786445, metadata !645, metadata !"spin", metadata !626, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!660 = metadata !{i32 786445, metadata !620, metadata !"log_ctx", metadata !621, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!661 = metadata !{i32 786445, metadata !620, metadata !"zero", metadata !621, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !45} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!662 = metadata !{i32 786445, metadata !620, metadata !"data", metadata !621, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!663 = metadata !{i32 786445, metadata !620, metadata !"addr", metadata !621, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !24} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!664 = metadata !{i32 786445, metadata !592, metadata !"path", metadata !565, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !665} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!665 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !666} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!666 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !565, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !667} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!667 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !668, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!668 = metadata !{metadata !669, metadata !670, metadata !671, metadata !675, metadata !680, metadata !682, metadata !683, metadata !684}
!669 = metadata !{i32 786445, metadata !667, metadata !"name", metadata !82, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!670 = metadata !{i32 786445, metadata !667, metadata !"len", metadata !82, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!671 = metadata !{i32 786445, metadata !667, metadata !"level", metadata !82, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !672} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!672 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !30, metadata !673, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!673 = metadata !{metadata !674}
!674 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!675 = metadata !{i32 786445, metadata !667, metadata !"manager", metadata !82, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !676} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!676 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !82, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !677} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!677 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !678} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!678 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !679, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!679 = metadata !{metadata !578, metadata !24}
!680 = metadata !{i32 786445, metadata !667, metadata !"loader", metadata !82, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !681} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!681 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !82, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!682 = metadata !{i32 786445, metadata !667, metadata !"data", metadata !82, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!683 = metadata !{i32 786445, metadata !667, metadata !"conf_file", metadata !82, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !44} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!684 = metadata !{i32 786445, metadata !667, metadata !"line", metadata !82, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!685 = metadata !{i32 786445, metadata !592, metadata !"max_size", metadata !565, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!686 = metadata !{i32 786445, metadata !592, metadata !"bsize", metadata !565, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!687 = metadata !{i32 786445, metadata !592, metadata !"inactive", metadata !565, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !578} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!688 = metadata !{i32 786445, metadata !592, metadata !"files", metadata !565, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!689 = metadata !{i32 786445, metadata !592, metadata !"loader_files", metadata !565, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!690 = metadata !{i32 786445, metadata !592, metadata !"last", metadata !565, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !342} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!691 = metadata !{i32 786445, metadata !592, metadata !"loader_sleep", metadata !565, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!692 = metadata !{i32 786445, metadata !592, metadata !"loader_threshold", metadata !565, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !342} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!693 = metadata !{i32 786445, metadata !592, metadata !"shm_zone", metadata !565, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !694} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!694 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !695} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!695 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !565, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !696} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!696 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !206, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !697, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!697 = metadata !{metadata !698, metadata !699, metadata !709, metadata !717}
!698 = metadata !{i32 786445, metadata !696, metadata !"data", metadata !206, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!699 = metadata !{i32 786445, metadata !696, metadata !"shm", metadata !206, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !700} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!700 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !206, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !701} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!701 = metadata !{i32 786451, null, metadata !"", metadata !702, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !703, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!702 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!703 = metadata !{metadata !704, metadata !705, metadata !706, metadata !707, metadata !708}
!704 = metadata !{i32 786445, metadata !701, metadata !"addr", metadata !702, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!705 = metadata !{i32 786445, metadata !701, metadata !"size", metadata !702, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!706 = metadata !{i32 786445, metadata !701, metadata !"name", metadata !702, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!707 = metadata !{i32 786445, metadata !701, metadata !"log", metadata !702, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!708 = metadata !{i32 786445, metadata !701, metadata !"exists", metadata !702, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!709 = metadata !{i32 786445, metadata !696, metadata !"init", metadata !206, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !710} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!710 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !206, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !711} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!711 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !712} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!712 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !713, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!713 = metadata !{metadata !714, metadata !715, metadata !24}
!714 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !13, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !503} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!715 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !716} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!716 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !206, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !696} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!717 = metadata !{i32 786445, metadata !696, metadata !"tag", metadata !206, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!718 = metadata !{i32 786445, metadata !564, metadata !"node", metadata !565, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !719} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!719 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !720} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!720 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !565, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !721} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!721 = metadata !{i32 786451, null, metadata !"", metadata !565, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !722, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!722 = metadata !{metadata !723, metadata !724, metadata !725, metadata !729, metadata !730, metadata !731, metadata !732, metadata !733, metadata !734, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740}
!723 = metadata !{i32 786445, metadata !721, metadata !"node", metadata !565, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !259} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!724 = metadata !{i32 786445, metadata !721, metadata !"queue", metadata !565, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !368} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!725 = metadata !{i32 786445, metadata !721, metadata !"key", metadata !565, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !726} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!726 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !45, metadata !727, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!727 = metadata !{metadata !728}
!728 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!729 = metadata !{i32 786445, metadata !721, metadata !"count", metadata !565, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!730 = metadata !{i32 786445, metadata !721, metadata !"uses", metadata !565, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !28} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!731 = metadata !{i32 786445, metadata !721, metadata !"valid_msec", metadata !565, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!732 = metadata !{i32 786445, metadata !721, metadata !"error", metadata !565, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !28} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!733 = metadata !{i32 786445, metadata !721, metadata !"exists", metadata !565, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!734 = metadata !{i32 786445, metadata !721, metadata !"updating", metadata !565, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!735 = metadata !{i32 786445, metadata !721, metadata !"deleting", metadata !565, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !28} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!736 = metadata !{i32 786445, metadata !721, metadata !"uniq", metadata !565, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !575} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!737 = metadata !{i32 786445, metadata !721, metadata !"expire", metadata !565, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !578} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!738 = metadata !{i32 786445, metadata !721, metadata !"valid_sec", metadata !565, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !578} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!739 = metadata !{i32 786445, metadata !721, metadata !"body_start", metadata !565, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!740 = metadata !{i32 786445, metadata !721, metadata !"fs_size", metadata !565, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !69} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!741 = metadata !{i32 786445, metadata !564, metadata !"lock_timeout", metadata !565, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !342} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!742 = metadata !{i32 786445, metadata !564, metadata !"wait_time", metadata !565, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !342} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!743 = metadata !{i32 786445, metadata !564, metadata !"wait_event", metadata !565, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !225} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!744 = metadata !{i32 786445, metadata !564, metadata !"lock", metadata !565, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !28} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!745 = metadata !{i32 786445, metadata !564, metadata !"waiting", metadata !565, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !28} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!746 = metadata !{i32 786445, metadata !564, metadata !"updated", metadata !565, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !28} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!747 = metadata !{i32 786445, metadata !564, metadata !"updating", metadata !565, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !28} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!748 = metadata !{i32 786445, metadata !564, metadata !"exists", metadata !565, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !28} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!749 = metadata !{i32 786445, metadata !564, metadata !"temp_file", metadata !565, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !28} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!750 = metadata !{i32 786445, metadata !543, metadata !"upstream", metadata !544, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !751} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!751 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !752} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!752 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !544, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !753} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!753 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !754, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !755, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!754 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!755 = metadata !{metadata !756, metadata !763, metadata !764, metadata !800, metadata !876, metadata !877, metadata !898, metadata !907, metadata !984, metadata !1020, metadata !1093, metadata !1094, metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1102, metadata !1106, metadata !1107, metadata !1111, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1119, metadata !1123, metadata !1127, metadata !1128, metadata !1140, metadata !1141, metadata !1142, metadata !1143, metadata !1146, metadata !1147, metadata !1148, metadata !1149, metadata !1150, metadata !1151, metadata !1152, metadata !1153, metadata !1154}
!756 = metadata !{i32 786445, metadata !753, metadata !"read_event_handler", metadata !754, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !757} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!757 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !754, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !758} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!758 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !759} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!759 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !760, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!760 = metadata !{null, metadata !558, metadata !761}
!761 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !762} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!762 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !754, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !753} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!763 = metadata !{i32 786445, metadata !753, metadata !"write_event_handler", metadata !754, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !757} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!764 = metadata !{i32 786445, metadata !753, metadata !"peer", metadata !754, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !765} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!765 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !754, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !766} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!766 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !767, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !768, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!767 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!768 = metadata !{metadata !769, metadata !770, metadata !771, metadata !772, metadata !773, metadata !774, metadata !781, metadata !786, metadata !787, metadata !796, metadata !797, metadata !798, metadata !799}
!769 = metadata !{i32 786445, metadata !766, metadata !"connection", metadata !767, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!770 = metadata !{i32 786445, metadata !766, metadata !"sockaddr", metadata !767, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!771 = metadata !{i32 786445, metadata !766, metadata !"socklen", metadata !767, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!772 = metadata !{i32 786445, metadata !766, metadata !"name", metadata !767, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !524} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!773 = metadata !{i32 786445, metadata !766, metadata !"tries", metadata !767, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!774 = metadata !{i32 786445, metadata !766, metadata !"get", metadata !767, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !775} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!775 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !767, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !776} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!776 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !777} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!777 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !778, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!778 = metadata !{metadata !714, metadata !779, metadata !24}
!779 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !780} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!780 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !767, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !766} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!781 = metadata !{i32 786445, metadata !766, metadata !"free", metadata !767, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !782} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!782 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !767, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !783} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!783 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !784} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!785 = metadata !{null, metadata !779, metadata !24, metadata !26}
!786 = metadata !{i32 786445, metadata !766, metadata !"data", metadata !767, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!787 = metadata !{i32 786445, metadata !766, metadata !"local", metadata !767, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !788} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!788 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !789} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!789 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !767, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !790} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!790 = metadata !{i32 786451, null, metadata !"", metadata !791, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !792, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!791 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!792 = metadata !{metadata !793, metadata !794, metadata !795}
!793 = metadata !{i32 786445, metadata !790, metadata !"sockaddr", metadata !791, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!794 = metadata !{i32 786445, metadata !790, metadata !"socklen", metadata !791, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!795 = metadata !{i32 786445, metadata !790, metadata !"name", metadata !791, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!796 = metadata !{i32 786445, metadata !766, metadata !"rcvbuf", metadata !767, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!797 = metadata !{i32 786445, metadata !766, metadata !"log", metadata !767, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!798 = metadata !{i32 786445, metadata !766, metadata !"cached", metadata !767, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!799 = metadata !{i32 786445, metadata !766, metadata !"log_error", metadata !767, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !28} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!800 = metadata !{i32 786445, metadata !753, metadata !"pipe", metadata !754, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !801} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!801 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !802} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!802 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !754, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !803} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!803 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !804, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !805, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!804 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!805 = metadata !{metadata !806, metadata !807, metadata !808, metadata !809, metadata !810, metadata !812, metadata !813, metadata !814, metadata !815, metadata !822, metadata !823, metadata !828, metadata !829, metadata !830, metadata !831, metadata !832, metadata !833, metadata !834, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !847, metadata !848, metadata !849, metadata !850, metadata !851, metadata !852, metadata !853, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !875}
!806 = metadata !{i32 786445, metadata !803, metadata !"upstream", metadata !804, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!807 = metadata !{i32 786445, metadata !803, metadata !"downstream", metadata !804, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !217} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!808 = metadata !{i32 786445, metadata !803, metadata !"free_raw_bufs", metadata !804, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!809 = metadata !{i32 786445, metadata !803, metadata !"in", metadata !804, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!810 = metadata !{i32 786445, metadata !803, metadata !"last_in", metadata !804, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !811} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!811 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!812 = metadata !{i32 786445, metadata !803, metadata !"out", metadata !804, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!813 = metadata !{i32 786445, metadata !803, metadata !"free", metadata !804, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!814 = metadata !{i32 786445, metadata !803, metadata !"busy", metadata !804, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!815 = metadata !{i32 786445, metadata !803, metadata !"input_filter", metadata !804, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !816} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!816 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !804, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !817} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!817 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !818} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!818 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !819, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!819 = metadata !{metadata !714, metadata !820, metadata !62}
!820 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !821} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!821 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !804, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !803} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!822 = metadata !{i32 786445, metadata !803, metadata !"input_ctx", metadata !804, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!823 = metadata !{i32 786445, metadata !803, metadata !"output_filter", metadata !804, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !824} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!824 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !804, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !825} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!825 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !826} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!826 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !827, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!827 = metadata !{metadata !714, metadata !24, metadata !56}
!828 = metadata !{i32 786445, metadata !803, metadata !"output_ctx", metadata !804, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !24} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!829 = metadata !{i32 786445, metadata !803, metadata !"read", metadata !804, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!830 = metadata !{i32 786445, metadata !803, metadata !"cacheable", metadata !804, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!831 = metadata !{i32 786445, metadata !803, metadata !"single_buf", metadata !804, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !28} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!832 = metadata !{i32 786445, metadata !803, metadata !"free_bufs", metadata !804, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !28} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!833 = metadata !{i32 786445, metadata !803, metadata !"upstream_done", metadata !804, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!834 = metadata !{i32 786445, metadata !803, metadata !"upstream_error", metadata !804, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!835 = metadata !{i32 786445, metadata !803, metadata !"upstream_eof", metadata !804, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!836 = metadata !{i32 786445, metadata !803, metadata !"upstream_blocked", metadata !804, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !28} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!837 = metadata !{i32 786445, metadata !803, metadata !"downstream_done", metadata !804, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!838 = metadata !{i32 786445, metadata !803, metadata !"downstream_error", metadata !804, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !28} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!839 = metadata !{i32 786445, metadata !803, metadata !"cyclic_temp_file", metadata !804, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !28} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!840 = metadata !{i32 786445, metadata !803, metadata !"allocated", metadata !804, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !714} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!841 = metadata !{i32 786445, metadata !803, metadata !"bufs", metadata !804, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !842} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!842 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !804, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !843} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!843 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !844, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!844 = metadata !{metadata !845, metadata !846}
!845 = metadata !{i32 786445, metadata !843, metadata !"num", metadata !59, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !714} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!846 = metadata !{i32 786445, metadata !843, metadata !"size", metadata !59, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!847 = metadata !{i32 786445, metadata !803, metadata !"tag", metadata !804, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!848 = metadata !{i32 786445, metadata !803, metadata !"busy_size", metadata !804, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !286} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!849 = metadata !{i32 786445, metadata !803, metadata !"read_length", metadata !804, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !69} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!850 = metadata !{i32 786445, metadata !803, metadata !"length", metadata !804, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!851 = metadata !{i32 786445, metadata !803, metadata !"max_temp_file_size", metadata !804, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!852 = metadata !{i32 786445, metadata !803, metadata !"temp_file_write_size", metadata !804, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !286} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!853 = metadata !{i32 786445, metadata !803, metadata !"read_timeout", metadata !804, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!854 = metadata !{i32 786445, metadata !803, metadata !"send_timeout", metadata !804, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!855 = metadata !{i32 786445, metadata !803, metadata !"send_lowat", metadata !804, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !286} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!856 = metadata !{i32 786445, metadata !803, metadata !"pool", metadata !804, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!857 = metadata !{i32 786445, metadata !803, metadata !"log", metadata !804, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!858 = metadata !{i32 786445, metadata !803, metadata !"preread_bufs", metadata !804, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !56} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!859 = metadata !{i32 786445, metadata !803, metadata !"preread_size", metadata !804, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!860 = metadata !{i32 786445, metadata !803, metadata !"buf_to_file", metadata !804, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !62} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!861 = metadata !{i32 786445, metadata !803, metadata !"temp_file", metadata !804, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !862} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!862 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !863} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!863 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !804, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !864} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!864 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !865, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!865 = metadata !{metadata !866, metadata !867, metadata !868, metadata !869, metadata !870, metadata !871, metadata !872, metadata !873, metadata !874}
!866 = metadata !{i32 786445, metadata !864, metadata !"file", metadata !82, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!867 = metadata !{i32 786445, metadata !864, metadata !"offset", metadata !82, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !69} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!868 = metadata !{i32 786445, metadata !864, metadata !"path", metadata !82, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !665} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!869 = metadata !{i32 786445, metadata !864, metadata !"pool", metadata !82, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!870 = metadata !{i32 786445, metadata !864, metadata !"warn", metadata !82, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !9} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!871 = metadata !{i32 786445, metadata !864, metadata !"access", metadata !82, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !26} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!872 = metadata !{i32 786445, metadata !864, metadata !"log_level", metadata !82, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !28} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!873 = metadata !{i32 786445, metadata !864, metadata !"persistent", metadata !82, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !28} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!874 = metadata !{i32 786445, metadata !864, metadata !"clean", metadata !82, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !28} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!875 = metadata !{i32 786445, metadata !803, metadata !"num", metadata !804, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !86} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!876 = metadata !{i32 786445, metadata !753, metadata !"request_bufs", metadata !754, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !56} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!877 = metadata !{i32 786445, metadata !753, metadata !"output", metadata !754, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !878} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!878 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !754, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !879} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!879 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !59, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !880, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!880 = metadata !{metadata !881, metadata !882, metadata !883, metadata !884, metadata !885, metadata !886, metadata !887, metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !897}
!881 = metadata !{i32 786445, metadata !879, metadata !"buf", metadata !59, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!882 = metadata !{i32 786445, metadata !879, metadata !"in", metadata !59, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!883 = metadata !{i32 786445, metadata !879, metadata !"free", metadata !59, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !56} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!884 = metadata !{i32 786445, metadata !879, metadata !"busy", metadata !59, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !56} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!885 = metadata !{i32 786445, metadata !879, metadata !"sendfile", metadata !59, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!886 = metadata !{i32 786445, metadata !879, metadata !"directio", metadata !59, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !28} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!887 = metadata !{i32 786445, metadata !879, metadata !"unaligned", metadata !59, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !28} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!888 = metadata !{i32 786445, metadata !879, metadata !"need_in_memory", metadata !59, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!889 = metadata !{i32 786445, metadata !879, metadata !"need_in_temp", metadata !59, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !28} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!890 = metadata !{i32 786445, metadata !879, metadata !"alignment", metadata !59, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!891 = metadata !{i32 786445, metadata !879, metadata !"pool", metadata !59, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!892 = metadata !{i32 786445, metadata !879, metadata !"allocated", metadata !59, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !714} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!893 = metadata !{i32 786445, metadata !879, metadata !"bufs", metadata !59, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !842} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!894 = metadata !{i32 786445, metadata !879, metadata !"tag", metadata !59, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !77} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!895 = metadata !{i32 786445, metadata !879, metadata !"output_filter", metadata !59, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !896} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!896 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !59, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !825} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!897 = metadata !{i32 786445, metadata !879, metadata !"filter_ctx", metadata !59, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !24} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!898 = metadata !{i32 786445, metadata !753, metadata !"writer", metadata !754, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !899} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!899 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !754, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !900} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!900 = metadata !{i32 786451, null, metadata !"", metadata !59, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !901, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!901 = metadata !{metadata !902, metadata !903, metadata !904, metadata !905, metadata !906}
!902 = metadata !{i32 786445, metadata !900, metadata !"out", metadata !59, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!903 = metadata !{i32 786445, metadata !900, metadata !"last", metadata !59, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !811} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!904 = metadata !{i32 786445, metadata !900, metadata !"connection", metadata !59, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!905 = metadata !{i32 786445, metadata !900, metadata !"pool", metadata !59, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!906 = metadata !{i32 786445, metadata !900, metadata !"limit", metadata !59, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !69} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!907 = metadata !{i32 786445, metadata !753, metadata !"conf", metadata !754, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !908} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!908 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !909} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!909 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !754, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !910} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!910 = metadata !{i32 786451, null, metadata !"", metadata !754, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !911, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!911 = metadata !{metadata !912, metadata !942, metadata !943, metadata !944, metadata !945, metadata !946, metadata !947, metadata !948, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !966, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !974, metadata !975, metadata !976, metadata !977, metadata !978, metadata !979, metadata !980, metadata !981, metadata !982, metadata !983}
!912 = metadata !{i32 786445, metadata !910, metadata !"upstream", metadata !754, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !913} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!913 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !914} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!914 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !754, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !915} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!915 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !754, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !916, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!916 = metadata !{metadata !917, metadata !932, metadata !933, metadata !934, metadata !935, metadata !936, metadata !937, metadata !938, metadata !941}
!917 = metadata !{i32 786445, metadata !915, metadata !"peer", metadata !754, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !918} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!918 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !754, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !919} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!919 = metadata !{i32 786451, null, metadata !"", metadata !754, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !920, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!920 = metadata !{metadata !921, metadata !926, metadata !931}
!921 = metadata !{i32 786445, metadata !919, metadata !"init_upstream", metadata !754, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !922} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!922 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !754, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !923} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!923 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !924} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!924 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !925, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!925 = metadata !{metadata !714, metadata !11, metadata !913}
!926 = metadata !{i32 786445, metadata !919, metadata !"init", metadata !754, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !927} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!927 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !754, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !928} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!928 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !929} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!929 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !930, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!930 = metadata !{metadata !714, metadata !558, metadata !913}
!931 = metadata !{i32 786445, metadata !919, metadata !"data", metadata !754, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!932 = metadata !{i32 786445, metadata !915, metadata !"srv_conf", metadata !754, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!933 = metadata !{i32 786445, metadata !915, metadata !"servers", metadata !754, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !18} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!934 = metadata !{i32 786445, metadata !915, metadata !"flags", metadata !754, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!935 = metadata !{i32 786445, metadata !915, metadata !"host", metadata !754, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!936 = metadata !{i32 786445, metadata !915, metadata !"file_name", metadata !754, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!937 = metadata !{i32 786445, metadata !915, metadata !"line", metadata !754, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!938 = metadata !{i32 786445, metadata !915, metadata !"port", metadata !754, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !939} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!939 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !754, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !940} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!940 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !754, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!941 = metadata !{i32 786445, metadata !915, metadata !"default_port", metadata !754, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !939} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!942 = metadata !{i32 786445, metadata !910, metadata !"connect_timeout", metadata !754, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !342} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!943 = metadata !{i32 786445, metadata !910, metadata !"send_timeout", metadata !754, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!944 = metadata !{i32 786445, metadata !910, metadata !"read_timeout", metadata !754, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !342} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!945 = metadata !{i32 786445, metadata !910, metadata !"timeout", metadata !754, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!946 = metadata !{i32 786445, metadata !910, metadata !"send_lowat", metadata !754, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!947 = metadata !{i32 786445, metadata !910, metadata !"buffer_size", metadata !754, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!948 = metadata !{i32 786445, metadata !910, metadata !"busy_buffers_size", metadata !754, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!949 = metadata !{i32 786445, metadata !910, metadata !"max_temp_file_size", metadata !754, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!950 = metadata !{i32 786445, metadata !910, metadata !"temp_file_write_size", metadata !754, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!951 = metadata !{i32 786445, metadata !910, metadata !"busy_buffers_size_conf", metadata !754, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!952 = metadata !{i32 786445, metadata !910, metadata !"max_temp_file_size_conf", metadata !754, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!953 = metadata !{i32 786445, metadata !910, metadata !"temp_file_write_size_conf", metadata !754, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !30} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!954 = metadata !{i32 786445, metadata !910, metadata !"bufs", metadata !754, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !842} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!955 = metadata !{i32 786445, metadata !910, metadata !"ignore_headers", metadata !754, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!956 = metadata !{i32 786445, metadata !910, metadata !"next_upstream", metadata !754, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !26} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!957 = metadata !{i32 786445, metadata !910, metadata !"store_access", metadata !754, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !26} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!958 = metadata !{i32 786445, metadata !910, metadata !"buffering", metadata !754, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !502} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!959 = metadata !{i32 786445, metadata !910, metadata !"pass_request_headers", metadata !754, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !502} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!960 = metadata !{i32 786445, metadata !910, metadata !"pass_request_body", metadata !754, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !502} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!961 = metadata !{i32 786445, metadata !910, metadata !"ignore_client_abort", metadata !754, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !502} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!962 = metadata !{i32 786445, metadata !910, metadata !"intercept_errors", metadata !754, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !502} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!963 = metadata !{i32 786445, metadata !910, metadata !"cyclic_temp_file", metadata !754, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !502} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!964 = metadata !{i32 786445, metadata !910, metadata !"temp_path", metadata !754, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !665} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!965 = metadata !{i32 786445, metadata !910, metadata !"hide_headers_hash", metadata !754, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !474} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!966 = metadata !{i32 786445, metadata !910, metadata !"hide_headers", metadata !754, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !18} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!967 = metadata !{i32 786445, metadata !910, metadata !"pass_headers", metadata !754, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !18} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!968 = metadata !{i32 786445, metadata !910, metadata !"local", metadata !754, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !788} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!969 = metadata !{i32 786445, metadata !910, metadata !"cache", metadata !754, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !694} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!970 = metadata !{i32 786445, metadata !910, metadata !"cache_min_uses", metadata !754, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!971 = metadata !{i32 786445, metadata !910, metadata !"cache_use_stale", metadata !754, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!972 = metadata !{i32 786445, metadata !910, metadata !"cache_methods", metadata !754, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!973 = metadata !{i32 786445, metadata !910, metadata !"cache_lock", metadata !754, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !502} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!974 = metadata !{i32 786445, metadata !910, metadata !"cache_lock_timeout", metadata !754, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!975 = metadata !{i32 786445, metadata !910, metadata !"cache_valid", metadata !754, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!976 = metadata !{i32 786445, metadata !910, metadata !"cache_bypass", metadata !754, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !18} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!977 = metadata !{i32 786445, metadata !910, metadata !"no_cache", metadata !754, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !18} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!978 = metadata !{i32 786445, metadata !910, metadata !"store_lengths", metadata !754, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !18} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!979 = metadata !{i32 786445, metadata !910, metadata !"store_values", metadata !754, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !18} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!980 = metadata !{i32 786445, metadata !910, metadata !"store", metadata !754, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !86} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!981 = metadata !{i32 786445, metadata !910, metadata !"intercept_404", metadata !754, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !28} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!982 = metadata !{i32 786445, metadata !910, metadata !"change_buffering", metadata !754, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !28} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!983 = metadata !{i32 786445, metadata !910, metadata !"module", metadata !754, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !88} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!984 = metadata !{i32 786445, metadata !753, metadata !"headers_in", metadata !754, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !985} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!985 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !754, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !986} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!986 = metadata !{i32 786451, null, metadata !"", metadata !754, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !987, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!987 = metadata !{metadata !988, metadata !989, metadata !990, metadata !991, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007, metadata !1008, metadata !1009, metadata !1010, metadata !1011, metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1016, metadata !1017, metadata !1018, metadata !1019}
!988 = metadata !{i32 786445, metadata !986, metadata !"headers", metadata !754, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!989 = metadata !{i32 786445, metadata !986, metadata !"status_n", metadata !754, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!990 = metadata !{i32 786445, metadata !986, metadata !"status_line", metadata !754, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!991 = metadata !{i32 786445, metadata !986, metadata !"status", metadata !754, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !992} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!992 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !993} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!993 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !754, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !994} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!994 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !995, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!995 = metadata !{metadata !996, metadata !997, metadata !998, metadata !999}
!996 = metadata !{i32 786445, metadata !994, metadata !"hash", metadata !471, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!997 = metadata !{i32 786445, metadata !994, metadata !"key", metadata !471, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!998 = metadata !{i32 786445, metadata !994, metadata !"value", metadata !471, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!999 = metadata !{i32 786445, metadata !994, metadata !"lowcase_key", metadata !471, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !44} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1000 = metadata !{i32 786445, metadata !986, metadata !"date", metadata !754, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !992} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1001 = metadata !{i32 786445, metadata !986, metadata !"server", metadata !754, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !992} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1002 = metadata !{i32 786445, metadata !986, metadata !"connection", metadata !754, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !992} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1003 = metadata !{i32 786445, metadata !986, metadata !"expires", metadata !754, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !992} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1004 = metadata !{i32 786445, metadata !986, metadata !"etag", metadata !754, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !992} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1005 = metadata !{i32 786445, metadata !986, metadata !"x_accel_expires", metadata !754, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !992} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1006 = metadata !{i32 786445, metadata !986, metadata !"x_accel_redirect", metadata !754, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !992} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1007 = metadata !{i32 786445, metadata !986, metadata !"x_accel_limit_rate", metadata !754, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !992} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1008 = metadata !{i32 786445, metadata !986, metadata !"content_type", metadata !754, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !992} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1009 = metadata !{i32 786445, metadata !986, metadata !"content_length", metadata !754, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !992} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1010 = metadata !{i32 786445, metadata !986, metadata !"last_modified", metadata !754, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !992} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1011 = metadata !{i32 786445, metadata !986, metadata !"location", metadata !754, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !992} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1012 = metadata !{i32 786445, metadata !986, metadata !"accept_ranges", metadata !754, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !992} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1013 = metadata !{i32 786445, metadata !986, metadata !"www_authenticate", metadata !754, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !992} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1014 = metadata !{i32 786445, metadata !986, metadata !"transfer_encoding", metadata !754, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !992} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1015 = metadata !{i32 786445, metadata !986, metadata !"content_encoding", metadata !754, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !992} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1016 = metadata !{i32 786445, metadata !986, metadata !"content_length_n", metadata !754, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1017 = metadata !{i32 786445, metadata !986, metadata !"cache_control", metadata !754, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1018 = metadata !{i32 786445, metadata !986, metadata !"connection_close", metadata !754, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1019 = metadata !{i32 786445, metadata !986, metadata !"chunked", metadata !754, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1020 = metadata !{i32 786445, metadata !753, metadata !"resolved", metadata !754, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1021} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1021 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1022} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1022 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !754, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1023} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1023 = metadata !{i32 786451, null, metadata !"", metadata !754, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1024, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1024 = metadata !{metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1032, metadata !1033, metadata !1034}
!1025 = metadata !{i32 786445, metadata !1023, metadata !"host", metadata !754, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1026 = metadata !{i32 786445, metadata !1023, metadata !"port", metadata !754, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !939} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1027 = metadata !{i32 786445, metadata !1023, metadata !"no_port", metadata !754, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1028 = metadata !{i32 786445, metadata !1023, metadata !"naddrs", metadata !754, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1029 = metadata !{i32 786445, metadata !1023, metadata !"addrs", metadata !754, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1030} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1030 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1031} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1031 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !754, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !547} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1032 = metadata !{i32 786445, metadata !1023, metadata !"sockaddr", metadata !754, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1033 = metadata !{i32 786445, metadata !1023, metadata !"socklen", metadata !754, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1034 = metadata !{i32 786445, metadata !1023, metadata !"ctx", metadata !754, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1035} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1035 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1036} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1036 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !754, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1037} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1037 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1038, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1039, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1038 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1039 = metadata !{metadata !1040, metadata !1043, metadata !1066, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1088, metadata !1089, metadata !1090, metadata !1091, metadata !1092}
!1040 = metadata !{i32 786445, metadata !1037, metadata !"next", metadata !1038, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1041} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1041 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1042} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1042 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1038, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1037} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1043 = metadata !{i32 786445, metadata !1037, metadata !"resolver", metadata !1038, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1044} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1044 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1045} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1045 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1038, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1046} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1046 = metadata !{i32 786451, null, metadata !"", metadata !1038, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1047, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1047 = metadata !{metadata !1048, metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1054, metadata !1055, metadata !1056, metadata !1057, metadata !1058, metadata !1059, metadata !1060, metadata !1061, metadata !1062, metadata !1063, metadata !1064, metadata !1065}
!1048 = metadata !{i32 786445, metadata !1046, metadata !"event", metadata !1038, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1049 = metadata !{i32 786445, metadata !1046, metadata !"dummy", metadata !1038, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1050 = metadata !{i32 786445, metadata !1046, metadata !"log", metadata !1038, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !137} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1051 = metadata !{i32 786445, metadata !1046, metadata !"ident", metadata !1038, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !714} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1052 = metadata !{i32 786445, metadata !1046, metadata !"udp_connections", metadata !1038, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1053 = metadata !{i32 786445, metadata !1046, metadata !"last_connection", metadata !1038, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1054 = metadata !{i32 786445, metadata !1046, metadata !"name_rbtree", metadata !1038, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !600} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1055 = metadata !{i32 786445, metadata !1046, metadata !"name_sentinel", metadata !1038, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !259} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1056 = metadata !{i32 786445, metadata !1046, metadata !"addr_rbtree", metadata !1038, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !600} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1057 = metadata !{i32 786445, metadata !1046, metadata !"addr_sentinel", metadata !1038, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !259} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1058 = metadata !{i32 786445, metadata !1046, metadata !"name_resend_queue", metadata !1038, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !368} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1059 = metadata !{i32 786445, metadata !1046, metadata !"addr_resend_queue", metadata !1038, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1060 = metadata !{i32 786445, metadata !1046, metadata !"name_expire_queue", metadata !1038, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !368} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1061 = metadata !{i32 786445, metadata !1046, metadata !"addr_expire_queue", metadata !1038, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !368} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1062 = metadata !{i32 786445, metadata !1046, metadata !"resend_timeout", metadata !1038, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !578} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1063 = metadata !{i32 786445, metadata !1046, metadata !"expire", metadata !1038, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !578} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1064 = metadata !{i32 786445, metadata !1046, metadata !"valid", metadata !1038, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !578} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1065 = metadata !{i32 786445, metadata !1046, metadata !"log_level", metadata !1038, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !26} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1066 = metadata !{i32 786445, metadata !1037, metadata !"udp_connection", metadata !1038, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1067} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1067 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1068} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1068 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1038, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1069} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1069 = metadata !{i32 786451, null, metadata !"", metadata !1038, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1070, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1070 = metadata !{metadata !1071, metadata !1072, metadata !1073, metadata !1074, metadata !1075}
!1071 = metadata !{i32 786445, metadata !1069, metadata !"connection", metadata !1038, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !217} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1072 = metadata !{i32 786445, metadata !1069, metadata !"sockaddr", metadata !1038, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !309} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1073 = metadata !{i32 786445, metadata !1069, metadata !"socklen", metadata !1038, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1074 = metadata !{i32 786445, metadata !1069, metadata !"server", metadata !1038, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1075 = metadata !{i32 786445, metadata !1069, metadata !"log", metadata !1038, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !138} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1076 = metadata !{i32 786445, metadata !1037, metadata !"ident", metadata !1038, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !714} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1077 = metadata !{i32 786445, metadata !1037, metadata !"state", metadata !1038, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !714} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1078 = metadata !{i32 786445, metadata !1037, metadata !"type", metadata !1038, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !714} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1079 = metadata !{i32 786445, metadata !1037, metadata !"name", metadata !1038, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1080 = metadata !{i32 786445, metadata !1037, metadata !"naddrs", metadata !1038, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1081 = metadata !{i32 786445, metadata !1037, metadata !"addrs", metadata !1038, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !1030} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1082 = metadata !{i32 786445, metadata !1037, metadata !"addr", metadata !1038, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !1031} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1083 = metadata !{i32 786445, metadata !1037, metadata !"handler", metadata !1038, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1084} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1084 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1038, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1085} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1085 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1086} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1086 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1087, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1087 = metadata !{null, metadata !1041}
!1088 = metadata !{i32 786445, metadata !1037, metadata !"data", metadata !1038, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1089 = metadata !{i32 786445, metadata !1037, metadata !"timeout", metadata !1038, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1090 = metadata !{i32 786445, metadata !1037, metadata !"quick", metadata !1038, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !26} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1091 = metadata !{i32 786445, metadata !1037, metadata !"recursion", metadata !1038, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !26} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1092 = metadata !{i32 786445, metadata !1037, metadata !"event", metadata !1038, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !224} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1093 = metadata !{i32 786445, metadata !753, metadata !"buffer", metadata !754, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !63} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1094 = metadata !{i32 786445, metadata !753, metadata !"length", metadata !754, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !69} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1095 = metadata !{i32 786445, metadata !753, metadata !"out_bufs", metadata !754, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !56} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1096 = metadata !{i32 786445, metadata !753, metadata !"busy_bufs", metadata !754, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !56} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1097 = metadata !{i32 786445, metadata !753, metadata !"free_bufs", metadata !754, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !56} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1098 = metadata !{i32 786445, metadata !753, metadata !"input_filter_init", metadata !754, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1099} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1099 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1100} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1101 = metadata !{metadata !714, metadata !24}
!1102 = metadata !{i32 786445, metadata !753, metadata !"input_filter", metadata !754, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1103} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1103 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1104} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1105 = metadata !{metadata !714, metadata !24, metadata !286}
!1106 = metadata !{i32 786445, metadata !753, metadata !"input_filter_ctx", metadata !754, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !24} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1107 = metadata !{i32 786445, metadata !753, metadata !"create_key", metadata !754, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1108} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1108 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1109} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1110 = metadata !{metadata !714, metadata !558}
!1111 = metadata !{i32 786445, metadata !753, metadata !"create_request", metadata !754, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1108} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1112 = metadata !{i32 786445, metadata !753, metadata !"reinit_request", metadata !754, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1108} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1113 = metadata !{i32 786445, metadata !753, metadata !"process_header", metadata !754, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1108} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1114 = metadata !{i32 786445, metadata !753, metadata !"abort_request", metadata !754, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !555} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1115 = metadata !{i32 786445, metadata !753, metadata !"finalize_request", metadata !754, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1116} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1116 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1117} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1118 = metadata !{null, metadata !558, metadata !714}
!1119 = metadata !{i32 786445, metadata !753, metadata !"rewrite_redirect", metadata !754, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1120} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1120 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1121} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1122 = metadata !{metadata !714, metadata !558, metadata !992, metadata !30}
!1123 = metadata !{i32 786445, metadata !753, metadata !"rewrite_cookie", metadata !754, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1124} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1124 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1125} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1125 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1126, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1126 = metadata !{metadata !714, metadata !558, metadata !992}
!1127 = metadata !{i32 786445, metadata !753, metadata !"timeout", metadata !754, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !342} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1128 = metadata !{i32 786445, metadata !753, metadata !"state", metadata !754, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1129} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1129 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1130} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1130 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !754, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1131} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1131 = metadata !{i32 786451, null, metadata !"", metadata !754, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1132, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1132 = metadata !{metadata !1133, metadata !1134, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139}
!1133 = metadata !{i32 786445, metadata !1131, metadata !"bl_time", metadata !754, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !342} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1134 = metadata !{i32 786445, metadata !1131, metadata !"bl_state", metadata !754, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1135 = metadata !{i32 786445, metadata !1131, metadata !"status", metadata !754, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1136 = metadata !{i32 786445, metadata !1131, metadata !"response_sec", metadata !754, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !578} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1137 = metadata !{i32 786445, metadata !1131, metadata !"response_msec", metadata !754, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1138 = metadata !{i32 786445, metadata !1131, metadata !"response_length", metadata !754, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !69} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1139 = metadata !{i32 786445, metadata !1131, metadata !"peer", metadata !754, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !524} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1140 = metadata !{i32 786445, metadata !753, metadata !"method", metadata !754, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !88} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1141 = metadata !{i32 786445, metadata !753, metadata !"schema", metadata !754, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !88} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1142 = metadata !{i32 786445, metadata !753, metadata !"uri", metadata !754, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1143 = metadata !{i32 786445, metadata !753, metadata !"cleanup", metadata !754, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1144} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1144 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1145} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1145 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !754, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !196} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1146 = metadata !{i32 786445, metadata !753, metadata !"store", metadata !754, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !28} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1147 = metadata !{i32 786445, metadata !753, metadata !"cacheable", metadata !754, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !28} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1148 = metadata !{i32 786445, metadata !753, metadata !"accel", metadata !754, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !28} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1149 = metadata !{i32 786445, metadata !753, metadata !"ssl", metadata !754, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !28} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1150 = metadata !{i32 786445, metadata !753, metadata !"cache_status", metadata !754, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !28} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1151 = metadata !{i32 786445, metadata !753, metadata !"buffering", metadata !754, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !28} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1152 = metadata !{i32 786445, metadata !753, metadata !"keepalive", metadata !754, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1153 = metadata !{i32 786445, metadata !753, metadata !"request_sent", metadata !754, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !28} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1154 = metadata !{i32 786445, metadata !753, metadata !"header_sent", metadata !754, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1155 = metadata !{i32 786445, metadata !543, metadata !"upstream_states", metadata !544, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !18} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1156 = metadata !{i32 786445, metadata !543, metadata !"pool", metadata !544, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1157 = metadata !{i32 786445, metadata !543, metadata !"header_in", metadata !544, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !62} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1158 = metadata !{i32 786445, metadata !543, metadata !"headers_in", metadata !544, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1159} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1159 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !544, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1160} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1160 = metadata !{i32 786451, null, metadata !"", metadata !544, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1161, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1161 = metadata !{metadata !1162, metadata !1163, metadata !1164, metadata !1165, metadata !1166, metadata !1167, metadata !1168, metadata !1169, metadata !1170, metadata !1171, metadata !1172, metadata !1173, metadata !1174, metadata !1175, metadata !1176, metadata !1177, metadata !1178, metadata !1179, metadata !1180, metadata !1181, metadata !1182, metadata !1183, metadata !1184, metadata !1185, metadata !1186, metadata !1187, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1192, metadata !1193}
!1162 = metadata !{i32 786445, metadata !1160, metadata !"headers", metadata !544, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1163 = metadata !{i32 786445, metadata !1160, metadata !"host", metadata !544, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !992} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1164 = metadata !{i32 786445, metadata !1160, metadata !"connection", metadata !544, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !992} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1165 = metadata !{i32 786445, metadata !1160, metadata !"if_modified_since", metadata !544, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !992} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1166 = metadata !{i32 786445, metadata !1160, metadata !"if_unmodified_since", metadata !544, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !992} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1167 = metadata !{i32 786445, metadata !1160, metadata !"user_agent", metadata !544, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !992} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1168 = metadata !{i32 786445, metadata !1160, metadata !"referer", metadata !544, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !992} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1169 = metadata !{i32 786445, metadata !1160, metadata !"content_length", metadata !544, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !992} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1170 = metadata !{i32 786445, metadata !1160, metadata !"content_type", metadata !544, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !992} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1171 = metadata !{i32 786445, metadata !1160, metadata !"range", metadata !544, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !992} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1172 = metadata !{i32 786445, metadata !1160, metadata !"if_range", metadata !544, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !992} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1173 = metadata !{i32 786445, metadata !1160, metadata !"transfer_encoding", metadata !544, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !992} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1174 = metadata !{i32 786445, metadata !1160, metadata !"expect", metadata !544, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !992} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1175 = metadata !{i32 786445, metadata !1160, metadata !"accept_encoding", metadata !544, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !992} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1176 = metadata !{i32 786445, metadata !1160, metadata !"via", metadata !544, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !992} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1177 = metadata !{i32 786445, metadata !1160, metadata !"authorization", metadata !544, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !992} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1178 = metadata !{i32 786445, metadata !1160, metadata !"keep_alive", metadata !544, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !992} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1179 = metadata !{i32 786445, metadata !1160, metadata !"x_forwarded_for", metadata !544, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !992} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1180 = metadata !{i32 786445, metadata !1160, metadata !"user", metadata !544, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1181 = metadata !{i32 786445, metadata !1160, metadata !"passwd", metadata !544, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1182 = metadata !{i32 786445, metadata !1160, metadata !"cookies", metadata !544, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !19} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1183 = metadata !{i32 786445, metadata !1160, metadata !"server", metadata !544, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !88} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1184 = metadata !{i32 786445, metadata !1160, metadata !"content_length_n", metadata !544, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1185 = metadata !{i32 786445, metadata !1160, metadata !"keep_alive_n", metadata !544, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !578} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1186 = metadata !{i32 786445, metadata !1160, metadata !"connection_type", metadata !544, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !28} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1187 = metadata !{i32 786445, metadata !1160, metadata !"msie", metadata !544, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !28} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1188 = metadata !{i32 786445, metadata !1160, metadata !"msie6", metadata !544, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !28} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1189 = metadata !{i32 786445, metadata !1160, metadata !"opera", metadata !544, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !28} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1190 = metadata !{i32 786445, metadata !1160, metadata !"gecko", metadata !544, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !28} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1191 = metadata !{i32 786445, metadata !1160, metadata !"chrome", metadata !544, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !28} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1192 = metadata !{i32 786445, metadata !1160, metadata !"safari", metadata !544, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !28} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1193 = metadata !{i32 786445, metadata !1160, metadata !"konqueror", metadata !544, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !28} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1194 = metadata !{i32 786445, metadata !543, metadata !"headers_out", metadata !544, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1195} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1195 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !544, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1196} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1196 = metadata !{i32 786451, null, metadata !"", metadata !544, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1197, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1197 = metadata !{metadata !1198, metadata !1199, metadata !1200, metadata !1201, metadata !1202, metadata !1203, metadata !1204, metadata !1205, metadata !1206, metadata !1207, metadata !1208, metadata !1209, metadata !1210, metadata !1211, metadata !1212, metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217, metadata !1218, metadata !1219, metadata !1220, metadata !1221, metadata !1222}
!1198 = metadata !{i32 786445, metadata !1196, metadata !"headers", metadata !544, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !398} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1199 = metadata !{i32 786445, metadata !1196, metadata !"status", metadata !544, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1200 = metadata !{i32 786445, metadata !1196, metadata !"status_line", metadata !544, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !88} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1201 = metadata !{i32 786445, metadata !1196, metadata !"server", metadata !544, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !992} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1202 = metadata !{i32 786445, metadata !1196, metadata !"date", metadata !544, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !992} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1203 = metadata !{i32 786445, metadata !1196, metadata !"content_length", metadata !544, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !992} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1204 = metadata !{i32 786445, metadata !1196, metadata !"content_encoding", metadata !544, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !992} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1205 = metadata !{i32 786445, metadata !1196, metadata !"location", metadata !544, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !992} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1206 = metadata !{i32 786445, metadata !1196, metadata !"refresh", metadata !544, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !992} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1207 = metadata !{i32 786445, metadata !1196, metadata !"last_modified", metadata !544, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !992} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1208 = metadata !{i32 786445, metadata !1196, metadata !"content_range", metadata !544, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !992} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1209 = metadata !{i32 786445, metadata !1196, metadata !"accept_ranges", metadata !544, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !992} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1210 = metadata !{i32 786445, metadata !1196, metadata !"www_authenticate", metadata !544, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !992} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1211 = metadata !{i32 786445, metadata !1196, metadata !"expires", metadata !544, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !992} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1212 = metadata !{i32 786445, metadata !1196, metadata !"etag", metadata !544, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !992} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1213 = metadata !{i32 786445, metadata !1196, metadata !"override_charset", metadata !544, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !524} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1214 = metadata !{i32 786445, metadata !1196, metadata !"content_type_len", metadata !544, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1215 = metadata !{i32 786445, metadata !1196, metadata !"content_type", metadata !544, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !88} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1216 = metadata !{i32 786445, metadata !1196, metadata !"charset", metadata !544, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !88} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1217 = metadata !{i32 786445, metadata !1196, metadata !"content_type_lowcase", metadata !544, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !44} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1218 = metadata !{i32 786445, metadata !1196, metadata !"content_type_hash", metadata !544, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1219 = metadata !{i32 786445, metadata !1196, metadata !"cache_control", metadata !544, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !19} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1220 = metadata !{i32 786445, metadata !1196, metadata !"content_length_n", metadata !544, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !69} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1221 = metadata !{i32 786445, metadata !1196, metadata !"date_time", metadata !544, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !578} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1222 = metadata !{i32 786445, metadata !1196, metadata !"last_modified_time", metadata !544, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !578} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1223 = metadata !{i32 786445, metadata !543, metadata !"request_body", metadata !544, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1224} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1224 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1225} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1225 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !544, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1226} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1226 = metadata !{i32 786451, null, metadata !"", metadata !544, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1227, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1227 = metadata !{metadata !1228, metadata !1229, metadata !1230, metadata !1231, metadata !1232, metadata !1233}
!1228 = metadata !{i32 786445, metadata !1226, metadata !"temp_file", metadata !544, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !862} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1229 = metadata !{i32 786445, metadata !1226, metadata !"bufs", metadata !544, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1230 = metadata !{i32 786445, metadata !1226, metadata !"buf", metadata !544, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !62} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1231 = metadata !{i32 786445, metadata !1226, metadata !"rest", metadata !544, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !69} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1232 = metadata !{i32 786445, metadata !1226, metadata !"to_write", metadata !544, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !56} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1233 = metadata !{i32 786445, metadata !1226, metadata !"post_handler", metadata !544, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1234} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1234 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !544, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !555} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1235 = metadata !{i32 786445, metadata !543, metadata !"lingering_time", metadata !544, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !578} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1236 = metadata !{i32 786445, metadata !543, metadata !"start_sec", metadata !544, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !578} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1237 = metadata !{i32 786445, metadata !543, metadata !"start_msec", metadata !544, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !342} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1238 = metadata !{i32 786445, metadata !543, metadata !"method", metadata !544, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !26} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1239 = metadata !{i32 786445, metadata !543, metadata !"http_version", metadata !544, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1240 = metadata !{i32 786445, metadata !543, metadata !"request_line", metadata !544, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !88} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1241 = metadata !{i32 786445, metadata !543, metadata !"uri", metadata !544, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1242 = metadata !{i32 786445, metadata !543, metadata !"args", metadata !544, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !88} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1243 = metadata !{i32 786445, metadata !543, metadata !"exten", metadata !544, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !88} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1244 = metadata !{i32 786445, metadata !543, metadata !"unparsed_uri", metadata !544, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !88} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1245 = metadata !{i32 786445, metadata !543, metadata !"method_name", metadata !544, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !88} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1246 = metadata !{i32 786445, metadata !543, metadata !"http_protocol", metadata !544, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !88} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1247 = metadata !{i32 786445, metadata !543, metadata !"out", metadata !544, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1248 = metadata !{i32 786445, metadata !543, metadata !"main", metadata !544, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !558} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1249 = metadata !{i32 786445, metadata !543, metadata !"parent", metadata !544, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !558} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1250 = metadata !{i32 786445, metadata !543, metadata !"postponed", metadata !544, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1251} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1251 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1252} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1252 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !544, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1253} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1253 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !544, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1254, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1254 = metadata !{metadata !1255, metadata !1256, metadata !1257}
!1255 = metadata !{i32 786445, metadata !1253, metadata !"request", metadata !544, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !558} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1256 = metadata !{i32 786445, metadata !1253, metadata !"out", metadata !544, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !56} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1257 = metadata !{i32 786445, metadata !1253, metadata !"next", metadata !544, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1251} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1258 = metadata !{i32 786445, metadata !543, metadata !"post_subrequest", metadata !544, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1259} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1259 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1260} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1260 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !544, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1261} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1261 = metadata !{i32 786451, null, metadata !"", metadata !544, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1262, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1262 = metadata !{metadata !1263, metadata !1268}
!1263 = metadata !{i32 786445, metadata !1261, metadata !"handler", metadata !544, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1264} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1264 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !544, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1265} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1265 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1266} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1267 = metadata !{metadata !714, metadata !558, metadata !24, metadata !714}
!1268 = metadata !{i32 786445, metadata !1261, metadata !"data", metadata !544, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1269 = metadata !{i32 786445, metadata !543, metadata !"posted_requests", metadata !544, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1270} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1270 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1271} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1271 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !544, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1272} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1272 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !544, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1273, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1273 = metadata !{metadata !1274, metadata !1275}
!1274 = metadata !{i32 786445, metadata !1272, metadata !"request", metadata !544, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !558} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1275 = metadata !{i32 786445, metadata !1272, metadata !"next", metadata !544, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1270} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1276 = metadata !{i32 786445, metadata !543, metadata !"virtual_names", metadata !544, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1277} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1277 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1278} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1278 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !544, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1279} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1279 = metadata !{i32 786451, null, metadata !"", metadata !544, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1280, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1280 = metadata !{metadata !1281, metadata !1282, metadata !1283}
!1281 = metadata !{i32 786445, metadata !1279, metadata !"names", metadata !544, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !469} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1282 = metadata !{i32 786445, metadata !1279, metadata !"nregex", metadata !544, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1283 = metadata !{i32 786445, metadata !1279, metadata !"regex", metadata !544, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1284} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1284 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1285} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1285 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !544, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1286} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1286 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !1287, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1288, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1287 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1288 = metadata !{metadata !1289, metadata !1332, metadata !1488}
!1289 = metadata !{i32 786445, metadata !1286, metadata !"regex", metadata !1287, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !1290} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1290 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1291} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!1291 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !1287, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !1292} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!1292 = metadata !{i32 786451, null, metadata !"", metadata !533, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !1293, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!1293 = metadata !{metadata !1294, metadata !1322, metadata !1323, metadata !1330, metadata !1331}
!1294 = metadata !{i32 786445, metadata !1292, metadata !"regex", metadata !533, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !1295} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!1295 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1296} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!1296 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !533, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !1297} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!1297 = metadata !{i32 786451, null, metadata !"", metadata !1298, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !1299, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!1298 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1299 = metadata !{metadata !1300, metadata !1305}
!1300 = metadata !{i32 786445, metadata !1297, metadata !"code", metadata !1298, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !1301} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!1301 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1302} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!1302 = metadata !{i32 786454, null, metadata !"pcre", metadata !1298, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !1303} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!1303 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !1304, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!1304 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1305 = metadata !{i32 786445, metadata !1297, metadata !"extra", metadata !1298, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !1306} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!1306 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1307} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!1307 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !1298, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !1308} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!1308 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !1304, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !1309, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!1309 = metadata !{metadata !1310, metadata !1311, metadata !1312, metadata !1313, metadata !1314, metadata !1317, metadata !1318, metadata !1321}
!1310 = metadata !{i32 786445, metadata !1308, metadata !"flags", metadata !1304, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !106} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!1311 = metadata !{i32 786445, metadata !1308, metadata !"study_data", metadata !1304, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!1312 = metadata !{i32 786445, metadata !1308, metadata !"match_limit", metadata !1304, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!1313 = metadata !{i32 786445, metadata !1308, metadata !"callout_data", metadata !1304, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!1314 = metadata !{i32 786445, metadata !1308, metadata !"tables", metadata !1304, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !1315} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!1315 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1316} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1316 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!1317 = metadata !{i32 786445, metadata !1308, metadata !"match_limit_recursion", metadata !1304, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !106} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!1318 = metadata !{i32 786445, metadata !1308, metadata !"mark", metadata !1304, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !1319} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!1319 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1320} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1320 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!1321 = metadata !{i32 786445, metadata !1308, metadata !"executable_jit", metadata !1304, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!1322 = metadata !{i32 786445, metadata !1292, metadata !"ncaptures", metadata !533, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!1323 = metadata !{i32 786445, metadata !1292, metadata !"variables", metadata !533, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !1324} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!1324 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1325} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!1325 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !533, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !1326} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!1326 = metadata !{i32 786451, null, metadata !"", metadata !533, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !1327, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!1327 = metadata !{metadata !1328, metadata !1329}
!1328 = metadata !{i32 786445, metadata !1326, metadata !"capture", metadata !533, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!1329 = metadata !{i32 786445, metadata !1326, metadata !"index", metadata !533, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !714} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!1330 = metadata !{i32 786445, metadata !1292, metadata !"nvariables", metadata !533, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!1331 = metadata !{i32 786445, metadata !1292, metadata !"name", metadata !533, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!1332 = metadata !{i32 786445, metadata !1286, metadata !"server", metadata !1287, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1333} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1333 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1334} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1334 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !1287, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1335} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1335 = metadata !{i32 786451, null, metadata !"", metadata !1287, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1336, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1336 = metadata !{metadata !1337, metadata !1338, metadata !1347, metadata !1348, metadata !1349, metadata !1350, metadata !1351, metadata !1352, metadata !1353, metadata !1354, metadata !1355, metadata !1356, metadata !1357, metadata !1358}
!1337 = metadata !{i32 786445, metadata !1335, metadata !"server_names", metadata !1287, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1338 = metadata !{i32 786445, metadata !1335, metadata !"ctx", metadata !1287, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1339} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1339 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1340} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1340 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !1287, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1341} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1341 = metadata !{i32 786451, null, metadata !"", metadata !1342, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1343, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1342 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1343 = metadata !{metadata !1344, metadata !1345, metadata !1346}
!1344 = metadata !{i32 786445, metadata !1341, metadata !"main_conf", metadata !1342, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !211} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1345 = metadata !{i32 786445, metadata !1341, metadata !"srv_conf", metadata !1342, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !211} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1346 = metadata !{i32 786445, metadata !1341, metadata !"loc_conf", metadata !1342, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1347 = metadata !{i32 786445, metadata !1335, metadata !"server_name", metadata !1287, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1348 = metadata !{i32 786445, metadata !1335, metadata !"connection_pool_size", metadata !1287, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1349 = metadata !{i32 786445, metadata !1335, metadata !"request_pool_size", metadata !1287, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1350 = metadata !{i32 786445, metadata !1335, metadata !"client_header_buffer_size", metadata !1287, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1351 = metadata !{i32 786445, metadata !1335, metadata !"large_client_header_buffers", metadata !1287, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !842} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1352 = metadata !{i32 786445, metadata !1335, metadata !"client_header_timeout", metadata !1287, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !342} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1353 = metadata !{i32 786445, metadata !1335, metadata !"ignore_invalid_headers", metadata !1287, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !502} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1354 = metadata !{i32 786445, metadata !1335, metadata !"merge_slashes", metadata !1287, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !502} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1355 = metadata !{i32 786445, metadata !1335, metadata !"underscores_in_headers", metadata !1287, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !502} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1356 = metadata !{i32 786445, metadata !1335, metadata !"listen", metadata !1287, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1357 = metadata !{i32 786445, metadata !1335, metadata !"captures", metadata !1287, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !28} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1358 = metadata !{i32 786445, metadata !1335, metadata !"named_locations", metadata !1287, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !1359} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1359 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1360} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1360 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1361} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!1361 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !1287, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !1362} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!1362 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !1287, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !1363, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!1363 = metadata !{metadata !1364, metadata !1365, metadata !1366, metadata !1367, metadata !1368, metadata !1369, metadata !1370, metadata !1371, metadata !1372, metadata !1373, metadata !1386, metadata !1387, metadata !1388, metadata !1389, metadata !1390, metadata !1392, metadata !1393, metadata !1394, metadata !1395, metadata !1396, metadata !1397, metadata !1398, metadata !1399, metadata !1400, metadata !1401, metadata !1402, metadata !1403, metadata !1404, metadata !1405, metadata !1406, metadata !1407, metadata !1408, metadata !1409, metadata !1410, metadata !1411, metadata !1412, metadata !1413, metadata !1414, metadata !1415, metadata !1416, metadata !1417, metadata !1418, metadata !1419, metadata !1420, metadata !1421, metadata !1422, metadata !1423, metadata !1424, metadata !1425, metadata !1426, metadata !1427, metadata !1428, metadata !1429, metadata !1430, metadata !1431, metadata !1432, metadata !1433, metadata !1434, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1442, metadata !1443, metadata !1444, metadata !1445, metadata !1456, metadata !1457, metadata !1467, metadata !1468, metadata !1480, metadata !1481, metadata !1482, metadata !1483, metadata !1484, metadata !1485, metadata !1486, metadata !1487}
!1364 = metadata !{i32 786445, metadata !1362, metadata !"name", metadata !1287, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!1365 = metadata !{i32 786445, metadata !1362, metadata !"regex", metadata !1287, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !1290} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!1366 = metadata !{i32 786445, metadata !1362, metadata !"noname", metadata !1287, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!1367 = metadata !{i32 786445, metadata !1362, metadata !"lmt_excpt", metadata !1287, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!1368 = metadata !{i32 786445, metadata !1362, metadata !"named", metadata !1287, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!1369 = metadata !{i32 786445, metadata !1362, metadata !"exact_match", metadata !1287, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !28} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!1370 = metadata !{i32 786445, metadata !1362, metadata !"noregex", metadata !1287, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !28} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!1371 = metadata !{i32 786445, metadata !1362, metadata !"auto_redirect", metadata !1287, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !28} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!1372 = metadata !{i32 786445, metadata !1362, metadata !"gzip_disable_msie6", metadata !1287, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!1373 = metadata !{i32 786445, metadata !1362, metadata !"static_locations", metadata !1287, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !1374} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!1374 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1375} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!1375 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !1287, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !1376} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!1376 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !1287, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !1377, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!1377 = metadata !{metadata !1378, metadata !1379, metadata !1380, metadata !1381, metadata !1382, metadata !1383, metadata !1384, metadata !1385}
!1378 = metadata !{i32 786445, metadata !1376, metadata !"left", metadata !1287, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !1374} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!1379 = metadata !{i32 786445, metadata !1376, metadata !"right", metadata !1287, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !1374} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!1380 = metadata !{i32 786445, metadata !1376, metadata !"tree", metadata !1287, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !1374} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!1381 = metadata !{i32 786445, metadata !1376, metadata !"exact", metadata !1287, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !1360} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!1382 = metadata !{i32 786445, metadata !1376, metadata !"inclusive", metadata !1287, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !1360} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!1383 = metadata !{i32 786445, metadata !1376, metadata !"auto_redirect", metadata !1287, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !45} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!1384 = metadata !{i32 786445, metadata !1376, metadata !"len", metadata !1287, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !45} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!1385 = metadata !{i32 786445, metadata !1376, metadata !"name", metadata !1287, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !488} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!1386 = metadata !{i32 786445, metadata !1362, metadata !"regex_locations", metadata !1287, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !1359} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!1387 = metadata !{i32 786445, metadata !1362, metadata !"loc_conf", metadata !1287, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !211} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!1388 = metadata !{i32 786445, metadata !1362, metadata !"limit_except", metadata !1287, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !547} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!1389 = metadata !{i32 786445, metadata !1362, metadata !"limit_except_loc_conf", metadata !1287, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !211} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!1390 = metadata !{i32 786445, metadata !1362, metadata !"handler", metadata !1287, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !1391} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!1391 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !1287, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1108} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1392 = metadata !{i32 786445, metadata !1362, metadata !"alias", metadata !1287, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1393 = metadata !{i32 786445, metadata !1362, metadata !"root", metadata !1287, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !88} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1394 = metadata !{i32 786445, metadata !1362, metadata !"post_action", metadata !1287, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !88} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1395 = metadata !{i32 786445, metadata !1362, metadata !"root_lengths", metadata !1287, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !18} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1396 = metadata !{i32 786445, metadata !1362, metadata !"root_values", metadata !1287, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !18} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1397 = metadata !{i32 786445, metadata !1362, metadata !"types", metadata !1287, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !18} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1398 = metadata !{i32 786445, metadata !1362, metadata !"types_hash", metadata !1287, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !474} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1399 = metadata !{i32 786445, metadata !1362, metadata !"default_type", metadata !1287, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !88} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1400 = metadata !{i32 786445, metadata !1362, metadata !"client_max_body_size", metadata !1287, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !69} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1401 = metadata !{i32 786445, metadata !1362, metadata !"directio", metadata !1287, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !69} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1402 = metadata !{i32 786445, metadata !1362, metadata !"directio_alignment", metadata !1287, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !69} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1403 = metadata !{i32 786445, metadata !1362, metadata !"client_body_buffer_size", metadata !1287, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1404 = metadata !{i32 786445, metadata !1362, metadata !"send_lowat", metadata !1287, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1405 = metadata !{i32 786445, metadata !1362, metadata !"postpone_output", metadata !1287, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !30} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1406 = metadata !{i32 786445, metadata !1362, metadata !"limit_rate", metadata !1287, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1407 = metadata !{i32 786445, metadata !1362, metadata !"limit_rate_after", metadata !1287, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1408 = metadata !{i32 786445, metadata !1362, metadata !"sendfile_max_chunk", metadata !1287, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1409 = metadata !{i32 786445, metadata !1362, metadata !"read_ahead", metadata !1287, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1410 = metadata !{i32 786445, metadata !1362, metadata !"client_body_timeout", metadata !1287, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !342} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1411 = metadata !{i32 786445, metadata !1362, metadata !"send_timeout", metadata !1287, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !342} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1412 = metadata !{i32 786445, metadata !1362, metadata !"keepalive_timeout", metadata !1287, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !342} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1413 = metadata !{i32 786445, metadata !1362, metadata !"lingering_time", metadata !1287, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1414 = metadata !{i32 786445, metadata !1362, metadata !"lingering_timeout", metadata !1287, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !342} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1415 = metadata !{i32 786445, metadata !1362, metadata !"resolver_timeout", metadata !1287, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !342} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1416 = metadata !{i32 786445, metadata !1362, metadata !"resolver", metadata !1287, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1044} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1417 = metadata !{i32 786445, metadata !1362, metadata !"keepalive_header", metadata !1287, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !578} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1418 = metadata !{i32 786445, metadata !1362, metadata !"keepalive_requests", metadata !1287, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1419 = metadata !{i32 786445, metadata !1362, metadata !"keepalive_disable", metadata !1287, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !26} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1420 = metadata !{i32 786445, metadata !1362, metadata !"satisfy", metadata !1287, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !26} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1421 = metadata !{i32 786445, metadata !1362, metadata !"lingering_close", metadata !1287, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !26} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1422 = metadata !{i32 786445, metadata !1362, metadata !"if_modified_since", metadata !1287, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !26} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1423 = metadata !{i32 786445, metadata !1362, metadata !"max_ranges", metadata !1287, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !26} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1424 = metadata !{i32 786445, metadata !1362, metadata !"client_body_in_file_only", metadata !1287, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !26} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1425 = metadata !{i32 786445, metadata !1362, metadata !"client_body_in_single_buffer", metadata !1287, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !502} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1426 = metadata !{i32 786445, metadata !1362, metadata !"internal", metadata !1287, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !502} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1427 = metadata !{i32 786445, metadata !1362, metadata !"sendfile", metadata !1287, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !502} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1428 = metadata !{i32 786445, metadata !1362, metadata !"tcp_nopush", metadata !1287, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !502} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1429 = metadata !{i32 786445, metadata !1362, metadata !"tcp_nodelay", metadata !1287, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !502} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1430 = metadata !{i32 786445, metadata !1362, metadata !"reset_timedout_connection", metadata !1287, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !502} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1431 = metadata !{i32 786445, metadata !1362, metadata !"server_name_in_redirect", metadata !1287, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !502} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1432 = metadata !{i32 786445, metadata !1362, metadata !"port_in_redirect", metadata !1287, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !502} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1433 = metadata !{i32 786445, metadata !1362, metadata !"msie_padding", metadata !1287, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !502} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1434 = metadata !{i32 786445, metadata !1362, metadata !"msie_refresh", metadata !1287, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !502} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1435 = metadata !{i32 786445, metadata !1362, metadata !"log_not_found", metadata !1287, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !502} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1436 = metadata !{i32 786445, metadata !1362, metadata !"log_subrequest", metadata !1287, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !502} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1437 = metadata !{i32 786445, metadata !1362, metadata !"recursive_error_pages", metadata !1287, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !502} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1438 = metadata !{i32 786445, metadata !1362, metadata !"server_tokens", metadata !1287, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !502} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1439 = metadata !{i32 786445, metadata !1362, metadata !"chunked_transfer_encoding", metadata !1287, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !502} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1440 = metadata !{i32 786445, metadata !1362, metadata !"gzip_vary", metadata !1287, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !502} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1441 = metadata !{i32 786445, metadata !1362, metadata !"gzip_http_version", metadata !1287, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1442 = metadata !{i32 786445, metadata !1362, metadata !"gzip_proxied", metadata !1287, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !26} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1443 = metadata !{i32 786445, metadata !1362, metadata !"gzip_disable", metadata !1287, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !18} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1444 = metadata !{i32 786445, metadata !1362, metadata !"disable_symlinks", metadata !1287, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !26} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1445 = metadata !{i32 786445, metadata !1362, metadata !"disable_symlinks_from", metadata !1287, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1446} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1446 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1447} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1447 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !1287, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1448} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1448 = metadata !{i32 786451, null, metadata !"", metadata !1449, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1450, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1449 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1450 = metadata !{metadata !1451, metadata !1452, metadata !1454, metadata !1455}
!1451 = metadata !{i32 786445, metadata !1448, metadata !"value", metadata !1449, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1452 = metadata !{i32 786445, metadata !1448, metadata !"flushes", metadata !1449, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1453} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1453 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1454 = metadata !{i32 786445, metadata !1448, metadata !"lengths", metadata !1449, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1455 = metadata !{i32 786445, metadata !1448, metadata !"values", metadata !1449, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !24} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1456 = metadata !{i32 786445, metadata !1362, metadata !"error_pages", metadata !1287, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !18} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1457 = metadata !{i32 786445, metadata !1362, metadata !"try_files", metadata !1287, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1458} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1458 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1459} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1459 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !1287, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1460} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1460 = metadata !{i32 786451, null, metadata !"", metadata !1287, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1461, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1461 = metadata !{metadata !1462, metadata !1463, metadata !1464, metadata !1465, metadata !1466}
!1462 = metadata !{i32 786445, metadata !1460, metadata !"lengths", metadata !1287, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1463 = metadata !{i32 786445, metadata !1460, metadata !"values", metadata !1287, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !18} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1464 = metadata !{i32 786445, metadata !1460, metadata !"name", metadata !1287, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1465 = metadata !{i32 786445, metadata !1460, metadata !"code", metadata !1287, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1466 = metadata !{i32 786445, metadata !1460, metadata !"test_dir", metadata !1287, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !28} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1467 = metadata !{i32 786445, metadata !1362, metadata !"client_body_temp_path", metadata !1287, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !665} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1468 = metadata !{i32 786445, metadata !1362, metadata !"open_file_cache", metadata !1287, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1469} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1469 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1470} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1470 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !1287, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1471} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1471 = metadata !{i32 786451, null, metadata !"", metadata !1472, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1473, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1472 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1473 = metadata !{metadata !1474, metadata !1475, metadata !1476, metadata !1477, metadata !1478, metadata !1479}
!1474 = metadata !{i32 786445, metadata !1471, metadata !"rbtree", metadata !1472, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !600} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1475 = metadata !{i32 786445, metadata !1471, metadata !"sentinel", metadata !1472, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !259} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1476 = metadata !{i32 786445, metadata !1471, metadata !"expire_queue", metadata !1472, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !368} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1477 = metadata !{i32 786445, metadata !1471, metadata !"current", metadata !1472, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !26} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1478 = metadata !{i32 786445, metadata !1471, metadata !"max", metadata !1472, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1479 = metadata !{i32 786445, metadata !1471, metadata !"inactive", metadata !1472, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !578} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1480 = metadata !{i32 786445, metadata !1362, metadata !"open_file_cache_valid", metadata !1287, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !578} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1481 = metadata !{i32 786445, metadata !1362, metadata !"open_file_cache_min_uses", metadata !1287, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !26} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1482 = metadata !{i32 786445, metadata !1362, metadata !"open_file_cache_errors", metadata !1287, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !502} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1483 = metadata !{i32 786445, metadata !1362, metadata !"open_file_cache_events", metadata !1287, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !502} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1484 = metadata !{i32 786445, metadata !1362, metadata !"error_log", metadata !1287, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !137} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1485 = metadata !{i32 786445, metadata !1362, metadata !"types_hash_max_size", metadata !1287, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1486 = metadata !{i32 786445, metadata !1362, metadata !"types_hash_bucket_size", metadata !1287, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !26} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1487 = metadata !{i32 786445, metadata !1362, metadata !"locations", metadata !1287, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !373} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1488 = metadata !{i32 786445, metadata !1286, metadata !"name", metadata !1287, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1489 = metadata !{i32 786445, metadata !543, metadata !"phase_handler", metadata !544, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !714} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1490 = metadata !{i32 786445, metadata !543, metadata !"content_handler", metadata !544, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1391} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1491 = metadata !{i32 786445, metadata !543, metadata !"access_code", metadata !544, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !26} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1492 = metadata !{i32 786445, metadata !543, metadata !"variables", metadata !544, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1493} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1493 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1494} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1494 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !544, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1495} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1495 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !544, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1496} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1496 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1497, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1497 = metadata !{metadata !1498, metadata !1499, metadata !1500, metadata !1501, metadata !1502, metadata !1503}
!1498 = metadata !{i32 786445, metadata !1496, metadata !"len", metadata !31, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1499 = metadata !{i32 786445, metadata !1496, metadata !"valid", metadata !31, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !28} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1500 = metadata !{i32 786445, metadata !1496, metadata !"no_cacheable", metadata !31, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1501 = metadata !{i32 786445, metadata !1496, metadata !"not_found", metadata !31, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !28} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1502 = metadata !{i32 786445, metadata !1496, metadata !"escape", metadata !31, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !28} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1503 = metadata !{i32 786445, metadata !1496, metadata !"data", metadata !31, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1504 = metadata !{i32 786445, metadata !543, metadata !"ncaptures", metadata !544, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1505 = metadata !{i32 786445, metadata !543, metadata !"captures", metadata !544, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1506} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1506 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !86} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1507 = metadata !{i32 786445, metadata !543, metadata !"captures_data", metadata !544, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !44} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1508 = metadata !{i32 786445, metadata !543, metadata !"limit_rate", metadata !544, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !30} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1509 = metadata !{i32 786445, metadata !543, metadata !"header_size", metadata !544, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !30} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1510 = metadata !{i32 786445, metadata !543, metadata !"request_length", metadata !544, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !69} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1511 = metadata !{i32 786445, metadata !543, metadata !"err_status", metadata !544, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !26} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1512 = metadata !{i32 786445, metadata !543, metadata !"http_connection", metadata !544, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1513} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1513 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1514} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1514 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !544, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1515} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1515 = metadata !{i32 786451, null, metadata !"", metadata !544, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1516, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1516 = metadata !{metadata !1517, metadata !1518, metadata !1520, metadata !1521, metadata !1522, metadata !1523}
!1517 = metadata !{i32 786445, metadata !1515, metadata !"request", metadata !544, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !558} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1518 = metadata !{i32 786445, metadata !1515, metadata !"busy", metadata !544, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1519} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1519 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1520 = metadata !{i32 786445, metadata !1515, metadata !"nbusy", metadata !544, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !714} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1521 = metadata !{i32 786445, metadata !1515, metadata !"free", metadata !544, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1519} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1522 = metadata !{i32 786445, metadata !1515, metadata !"nfree", metadata !544, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !714} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1523 = metadata !{i32 786445, metadata !1515, metadata !"pipeline", metadata !544, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1524 = metadata !{i32 786445, metadata !543, metadata !"log_handler", metadata !544, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1525} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1525 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !544, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1526} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1526 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1527} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1527 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1528, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1528 = metadata !{metadata !44, metadata !558, metadata !558, metadata !44, metadata !30}
!1529 = metadata !{i32 786445, metadata !543, metadata !"cleanup", metadata !544, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1530} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1530 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1531} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1531 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !544, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1532} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1532 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !544, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1533, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1533 = metadata !{metadata !1534, metadata !1535, metadata !1536}
!1534 = metadata !{i32 786445, metadata !1532, metadata !"handler", metadata !544, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1145} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1535 = metadata !{i32 786445, metadata !1532, metadata !"data", metadata !544, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !24} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1536 = metadata !{i32 786445, metadata !1532, metadata !"next", metadata !544, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1530} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1537 = metadata !{i32 786445, metadata !543, metadata !"subrequests", metadata !544, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1538 = metadata !{i32 786445, metadata !543, metadata !"count", metadata !544, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !28} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1539 = metadata !{i32 786445, metadata !543, metadata !"blocked", metadata !544, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !28} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1540 = metadata !{i32 786445, metadata !543, metadata !"aio", metadata !544, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !28} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1541 = metadata !{i32 786445, metadata !543, metadata !"http_state", metadata !544, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !28} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1542 = metadata !{i32 786445, metadata !543, metadata !"complex_uri", metadata !544, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !28} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1543 = metadata !{i32 786445, metadata !543, metadata !"quoted_uri", metadata !544, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !28} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1544 = metadata !{i32 786445, metadata !543, metadata !"plus_in_uri", metadata !544, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !28} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1545 = metadata !{i32 786445, metadata !543, metadata !"space_in_uri", metadata !544, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !28} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1546 = metadata !{i32 786445, metadata !543, metadata !"invalid_header", metadata !544, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !28} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1547 = metadata !{i32 786445, metadata !543, metadata !"add_uri_to_alias", metadata !544, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !28} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1548 = metadata !{i32 786445, metadata !543, metadata !"valid_location", metadata !544, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1549 = metadata !{i32 786445, metadata !543, metadata !"valid_unparsed_uri", metadata !544, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !28} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1550 = metadata !{i32 786445, metadata !543, metadata !"uri_changed", metadata !544, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1551 = metadata !{i32 786445, metadata !543, metadata !"uri_changes", metadata !544, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1552 = metadata !{i32 786445, metadata !543, metadata !"request_body_in_single_buf", metadata !544, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1553 = metadata !{i32 786445, metadata !543, metadata !"request_body_in_file_only", metadata !544, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1554 = metadata !{i32 786445, metadata !543, metadata !"request_body_in_persistent_file", metadata !544, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1555 = metadata !{i32 786445, metadata !543, metadata !"request_body_in_clean_file", metadata !544, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1556 = metadata !{i32 786445, metadata !543, metadata !"request_body_file_group_access", metadata !544, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1557 = metadata !{i32 786445, metadata !543, metadata !"request_body_file_log_level", metadata !544, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !28} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1558 = metadata !{i32 786445, metadata !543, metadata !"subrequest_in_memory", metadata !544, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !28} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1559 = metadata !{i32 786445, metadata !543, metadata !"waited", metadata !544, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !28} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1560 = metadata !{i32 786445, metadata !543, metadata !"cached", metadata !544, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !28} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1561 = metadata !{i32 786445, metadata !543, metadata !"gzip_tested", metadata !544, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1562 = metadata !{i32 786445, metadata !543, metadata !"gzip_ok", metadata !544, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1563 = metadata !{i32 786445, metadata !543, metadata !"gzip_vary", metadata !544, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !28} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1564 = metadata !{i32 786445, metadata !543, metadata !"proxy", metadata !544, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !28} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1565 = metadata !{i32 786445, metadata !543, metadata !"bypass_cache", metadata !544, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !28} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1566 = metadata !{i32 786445, metadata !543, metadata !"no_cache", metadata !544, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !28} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1567 = metadata !{i32 786445, metadata !543, metadata !"limit_conn_set", metadata !544, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1568 = metadata !{i32 786445, metadata !543, metadata !"limit_req_set", metadata !544, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !28} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1569 = metadata !{i32 786445, metadata !543, metadata !"pipeline", metadata !544, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !28} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1570 = metadata !{i32 786445, metadata !543, metadata !"plain_http", metadata !544, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !28} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1571 = metadata !{i32 786445, metadata !543, metadata !"chunked", metadata !544, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !28} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1572 = metadata !{i32 786445, metadata !543, metadata !"header_only", metadata !544, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !28} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1573 = metadata !{i32 786445, metadata !543, metadata !"keepalive", metadata !544, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !28} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1574 = metadata !{i32 786445, metadata !543, metadata !"lingering_close", metadata !544, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !28} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1575 = metadata !{i32 786445, metadata !543, metadata !"discard_body", metadata !544, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !28} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1576 = metadata !{i32 786445, metadata !543, metadata !"internal", metadata !544, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !28} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1577 = metadata !{i32 786445, metadata !543, metadata !"error_page", metadata !544, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !28} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1578 = metadata !{i32 786445, metadata !543, metadata !"ignore_content_encoding", metadata !544, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !28} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1579 = metadata !{i32 786445, metadata !543, metadata !"filter_finalize", metadata !544, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1580 = metadata !{i32 786445, metadata !543, metadata !"post_action", metadata !544, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !28} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1581 = metadata !{i32 786445, metadata !543, metadata !"request_complete", metadata !544, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !28} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1582 = metadata !{i32 786445, metadata !543, metadata !"request_output", metadata !544, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !28} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1583 = metadata !{i32 786445, metadata !543, metadata !"header_sent", metadata !544, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !28} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1584 = metadata !{i32 786445, metadata !543, metadata !"expect_tested", metadata !544, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !28} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1585 = metadata !{i32 786445, metadata !543, metadata !"root_tested", metadata !544, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !28} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1586 = metadata !{i32 786445, metadata !543, metadata !"done", metadata !544, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !28} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1587 = metadata !{i32 786445, metadata !543, metadata !"logged", metadata !544, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !28} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1588 = metadata !{i32 786445, metadata !543, metadata !"buffered", metadata !544, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !28} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1589 = metadata !{i32 786445, metadata !543, metadata !"main_filter_need_in_memory", metadata !544, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !28} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1590 = metadata !{i32 786445, metadata !543, metadata !"filter_need_in_memory", metadata !544, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1591 = metadata !{i32 786445, metadata !543, metadata !"filter_need_temporary", metadata !544, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1592 = metadata !{i32 786445, metadata !543, metadata !"allow_ranges", metadata !544, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !28} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1593 = metadata !{i32 786445, metadata !543, metadata !"state", metadata !544, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !26} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1594 = metadata !{i32 786445, metadata !543, metadata !"header_hash", metadata !544, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !26} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1595 = metadata !{i32 786445, metadata !543, metadata !"lowcase_index", metadata !544, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !26} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1596 = metadata !{i32 786445, metadata !543, metadata !"lowcase_header", metadata !544, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1597} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1597 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !45, metadata !1598, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1598 = metadata !{metadata !1599}
!1599 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1600 = metadata !{i32 786445, metadata !543, metadata !"header_name_start", metadata !544, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1601 = metadata !{i32 786445, metadata !543, metadata !"header_name_end", metadata !544, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !44} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1602 = metadata !{i32 786445, metadata !543, metadata !"header_start", metadata !544, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !44} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1603 = metadata !{i32 786445, metadata !543, metadata !"header_end", metadata !544, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !44} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1604 = metadata !{i32 786445, metadata !543, metadata !"uri_start", metadata !544, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1605 = metadata !{i32 786445, metadata !543, metadata !"uri_end", metadata !544, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1606 = metadata !{i32 786445, metadata !543, metadata !"uri_ext", metadata !544, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !44} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1607 = metadata !{i32 786445, metadata !543, metadata !"args_start", metadata !544, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !44} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1608 = metadata !{i32 786445, metadata !543, metadata !"request_start", metadata !544, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !44} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1609 = metadata !{i32 786445, metadata !543, metadata !"request_end", metadata !544, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !44} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1610 = metadata !{i32 786445, metadata !543, metadata !"method_end", metadata !544, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !44} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1611 = metadata !{i32 786445, metadata !543, metadata !"schema_start", metadata !544, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1612 = metadata !{i32 786445, metadata !543, metadata !"schema_end", metadata !544, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !44} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1613 = metadata !{i32 786445, metadata !543, metadata !"host_start", metadata !544, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !44} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1614 = metadata !{i32 786445, metadata !543, metadata !"host_end", metadata !544, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !44} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1615 = metadata !{i32 786445, metadata !543, metadata !"port_start", metadata !544, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !44} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1616 = metadata !{i32 786445, metadata !543, metadata !"port_end", metadata !544, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !44} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1617 = metadata !{i32 786445, metadata !543, metadata !"http_minor", metadata !544, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !28} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1618 = metadata !{i32 786445, metadata !543, metadata !"http_major", metadata !544, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !28} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1619 = metadata !{i32 786445, metadata !532, metadata !"get_handler", metadata !533, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !1620} ; [ DW_TAG_member ] [get_handler] [line 38, size 32, align 32, offset 96] [from ngx_http_get_variable_pt]
!1620 = metadata !{i32 786454, null, metadata !"ngx_http_get_variable_pt", metadata !533, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !1621} ; [ DW_TAG_typedef ] [ngx_http_get_variable_pt] [line 25, size 0, align 0, offset 0] [from ]
!1621 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1622} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1623 = metadata !{metadata !714, metadata !541, metadata !1493, metadata !27}
!1624 = metadata !{i32 786445, metadata !532, metadata !"data", metadata !533, i32 39, i64 32, i64 32, i64 128, i32 0, metadata !27} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 128] [from uintptr_t]
!1625 = metadata !{i32 786445, metadata !532, metadata !"flags", metadata !533, i32 40, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [flags] [line 40, size 32, align 32, offset 160] [from ngx_uint_t]
!1626 = metadata !{i32 786445, metadata !532, metadata !"index", metadata !533, i32 41, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 41, size 32, align 32, offset 192] [from ngx_uint_t]
!1627 = metadata !{i32 786688, metadata !463, metadata !"sn", metadata !6, i32 264, metadata !1284, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sn] [line 264]
!1628 = metadata !{i32 786688, metadata !463, metadata !"cscf", metadata !6, i32 265, metadata !1333, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cscf] [line 265]
!1629 = metadata !{i32 786688, metadata !1630, metadata !"__s1_len", metadata !6, i32 290, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 290]
!1630 = metadata !{i32 786443, metadata !1631, i32 290, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1631 = metadata !{i32 786443, metadata !1632, i32 285, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1632 = metadata !{i32 786443, metadata !463, i32 285, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1633 = metadata !{i32 786688, metadata !1630, metadata !"__s2_len", metadata !6, i32 290, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 290]
!1634 = metadata !{i32 786688, metadata !1635, metadata !"__s1", metadata !6, i32 290, metadata !1315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 290]
!1635 = metadata !{i32 786443, metadata !1630, i32 290, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1636 = metadata !{i32 786688, metadata !1635, metadata !"__result", metadata !6, i32 290, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 290]
!1637 = metadata !{i32 786688, metadata !1638, metadata !"__s1_len", metadata !6, i32 294, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 294]
!1638 = metadata !{i32 786443, metadata !1631, i32 294, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1639 = metadata !{i32 786688, metadata !1638, metadata !"__s2_len", metadata !6, i32 294, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 294]
!1640 = metadata !{i32 786688, metadata !1641, metadata !"__s1", metadata !6, i32 294, metadata !1315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 294]
!1641 = metadata !{i32 786443, metadata !1638, i32 294, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1642 = metadata !{i32 786688, metadata !1641, metadata !"__result", metadata !6, i32 294, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 294]
!1643 = metadata !{i32 786688, metadata !1644, metadata !"__s1_len", metadata !6, i32 300, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 300]
!1644 = metadata !{i32 786443, metadata !1631, i32 300, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1645 = metadata !{i32 786688, metadata !1644, metadata !"__s2_len", metadata !6, i32 300, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 300]
!1646 = metadata !{i32 786688, metadata !1647, metadata !"__s1", metadata !6, i32 300, metadata !1315, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 300]
!1647 = metadata !{i32 786443, metadata !1644, i32 300, i32 0, metadata !6, i32 19} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1648 = metadata !{i32 786688, metadata !1647, metadata !"__result", metadata !6, i32 300, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 300]
!1649 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_referer", metadata !"ngx_http_add_referer", metadata !"", metadata !6, i32 337, metadata !1650, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_hash_keys_arrays_t*, %struct.ngx_str_t*, %struct.ngx_str_t*)* @ngx_http_add_referer, null, null, metadata !1652, i32 338} ; [ DW_TAG_subprogram ] [line 337] [local] [def] [scope 338] [ngx_http_add_referer]
!1650 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1651, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1651 = metadata !{metadata !9, metadata !11, metadata !507, metadata !524, metadata !524}
!1652 = metadata !{metadata !1653}
!1653 = metadata !{metadata !1654, metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1660}
!1654 = metadata !{i32 786689, metadata !1649, metadata !"cf", metadata !6, i32 16777553, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 337]
!1655 = metadata !{i32 786689, metadata !1649, metadata !"keys", metadata !6, i32 33554769, metadata !507, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [keys] [line 337]
!1656 = metadata !{i32 786689, metadata !1649, metadata !"value", metadata !6, i32 50331985, metadata !524, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 337]
!1657 = metadata !{i32 786689, metadata !1649, metadata !"uri", metadata !6, i32 67109201, metadata !524, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [uri] [line 337]
!1658 = metadata !{i32 786688, metadata !1659, metadata !"rc", metadata !6, i32 339, metadata !714, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 339]
!1659 = metadata !{i32 786443, metadata !1649, i32 338, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1660 = metadata !{i32 786688, metadata !1659, metadata !"u", metadata !6, i32 340, metadata !524, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 340]
!1661 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_regex_referer", metadata !"ngx_http_add_regex_referer", metadata !"", metadata !6, i32 364, metadata !1662, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_http_referer_conf_t*, %struct.ngx_str_t*, %struct.ngx_regex_t*)* @ngx_http_add_regex_referer, null, null, metadata !1664, i32 365} ; [ DW_TAG_subprogram ] [line 364] [local] [def] [scope 365] [ngx_http_add_regex_referer]
!1662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1663 = metadata !{metadata !9, metadata !11, metadata !464, metadata !524, metadata !1295}
!1664 = metadata !{metadata !1665}
!1665 = metadata !{metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1670, metadata !1678, metadata !1691}
!1666 = metadata !{i32 786689, metadata !1661, metadata !"cf", metadata !6, i32 16777580, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 364]
!1667 = metadata !{i32 786689, metadata !1661, metadata !"rlcf", metadata !6, i32 33554796, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rlcf] [line 364]
!1668 = metadata !{i32 786689, metadata !1661, metadata !"name", metadata !6, i32 50332012, metadata !524, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [name] [line 364]
!1669 = metadata !{i32 786689, metadata !1661, metadata !"regex", metadata !6, i32 67109228, metadata !1295, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [regex] [line 364]
!1670 = metadata !{i32 786688, metadata !1671, metadata !"re", metadata !6, i32 367, metadata !1672, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [re] [line 367]
!1671 = metadata !{i32 786443, metadata !1661, i32 365, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1672 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1673} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_elt_t]
!1673 = metadata !{i32 786454, null, metadata !"ngx_regex_elt_t", metadata !6, i32 46, i64 0, i64 0, i64 0, i32 0, metadata !1674} ; [ DW_TAG_typedef ] [ngx_regex_elt_t] [line 46, size 0, align 0, offset 0] [from ]
!1674 = metadata !{i32 786451, null, metadata !"", metadata !1298, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !1675, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 43, size 64, align 32, offset 0] [from ]
!1675 = metadata !{metadata !1676, metadata !1677}
!1676 = metadata !{i32 786445, metadata !1674, metadata !"regex", metadata !1298, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !1295} ; [ DW_TAG_member ] [regex] [line 44, size 32, align 32, offset 0] [from ]
!1677 = metadata !{i32 786445, metadata !1674, metadata !"name", metadata !1298, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [name] [line 45, size 32, align 32, offset 32] [from ]
!1678 = metadata !{i32 786688, metadata !1671, metadata !"rc", metadata !6, i32 368, metadata !1679, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 368]
!1679 = metadata !{i32 786454, null, metadata !"ngx_regex_compile_t", metadata !6, i32 40, i64 0, i64 0, i64 0, i32 0, metadata !1680} ; [ DW_TAG_typedef ] [ngx_regex_compile_t] [line 40, size 0, align 0, offset 0] [from ]
!1680 = metadata !{i32 786451, null, metadata !"", metadata !1298, i32 29, i64 352, i64 32, i32 0, i32 0, null, metadata !1681, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 352, align 32, offset 0] [from ]
!1681 = metadata !{metadata !1682, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1687, metadata !1688, metadata !1689, metadata !1690}
!1682 = metadata !{i32 786445, metadata !1680, metadata !"pattern", metadata !1298, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [pattern] [line 30, size 64, align 32, offset 0] [from ngx_str_t]
!1683 = metadata !{i32 786445, metadata !1680, metadata !"pool", metadata !1298, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 31, size 32, align 32, offset 64] [from ]
!1684 = metadata !{i32 786445, metadata !1680, metadata !"options", metadata !1298, i32 32, i64 32, i64 32, i64 96, i32 0, metadata !714} ; [ DW_TAG_member ] [options] [line 32, size 32, align 32, offset 96] [from ngx_int_t]
!1685 = metadata !{i32 786445, metadata !1680, metadata !"regex", metadata !1298, i32 34, i64 32, i64 32, i64 128, i32 0, metadata !1295} ; [ DW_TAG_member ] [regex] [line 34, size 32, align 32, offset 128] [from ]
!1686 = metadata !{i32 786445, metadata !1680, metadata !"captures", metadata !1298, i32 35, i64 32, i64 32, i64 160, i32 0, metadata !86} ; [ DW_TAG_member ] [captures] [line 35, size 32, align 32, offset 160] [from int]
!1687 = metadata !{i32 786445, metadata !1680, metadata !"named_captures", metadata !1298, i32 36, i64 32, i64 32, i64 192, i32 0, metadata !86} ; [ DW_TAG_member ] [named_captures] [line 36, size 32, align 32, offset 192] [from int]
!1688 = metadata !{i32 786445, metadata !1680, metadata !"name_size", metadata !1298, i32 37, i64 32, i64 32, i64 224, i32 0, metadata !86} ; [ DW_TAG_member ] [name_size] [line 37, size 32, align 32, offset 224] [from int]
!1689 = metadata !{i32 786445, metadata !1680, metadata !"names", metadata !1298, i32 38, i64 32, i64 32, i64 256, i32 0, metadata !44} ; [ DW_TAG_member ] [names] [line 38, size 32, align 32, offset 256] [from ]
!1690 = metadata !{i32 786445, metadata !1680, metadata !"err", metadata !1298, i32 39, i64 64, i64 32, i64 288, i32 0, metadata !88} ; [ DW_TAG_member ] [err] [line 39, size 64, align 32, offset 288] [from ngx_str_t]
!1691 = metadata !{i32 786688, metadata !1671, metadata !"errstr", metadata !6, i32 369, metadata !1692, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errstr] [line 369]
!1692 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8192, i64 8, i32 0, i32 0, metadata !45, metadata !1693, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8192, align 8, offset 0] [from u_char]
!1693 = metadata !{metadata !1694}
!1694 = metadata !{i32 786465, i64 0, i64 1023}   ; [ DW_TAG_subrange_type ] [0, 1023]
!1695 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_referer_variable", metadata !"ngx_http_referer_variable", metadata !"", metadata !6, i32 50, metadata !1622, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*, %struct.ngx_variable_value_t*, i32)* @ngx_http_referer_variable, null, null, metadata !1696, i32 51} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [scope 51] [ngx_http_referer_variable]
!1696 = metadata !{metadata !1697}
!1697 = metadata !{metadata !1698, metadata !1699, metadata !1700, metadata !1701, metadata !1703, metadata !1704, metadata !1705, metadata !1706, metadata !1707, metadata !1708, metadata !1709, metadata !1710, metadata !1714, metadata !1716}
!1698 = metadata !{i32 786689, metadata !1695, metadata !"r", metadata !6, i32 16777266, metadata !541, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 50]
!1699 = metadata !{i32 786689, metadata !1695, metadata !"v", metadata !6, i32 33554482, metadata !1493, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [v] [line 50]
!1700 = metadata !{i32 786689, metadata !1695, metadata !"data", metadata !6, i32 50331698, metadata !27, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [data] [line 50]
!1701 = metadata !{i32 786688, metadata !1702, metadata !"p", metadata !6, i32 52, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 52]
!1702 = metadata !{i32 786443, metadata !1695, i32 51, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1703 = metadata !{i32 786688, metadata !1702, metadata !"ref", metadata !6, i32 53, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ref] [line 53]
!1704 = metadata !{i32 786688, metadata !1702, metadata !"last", metadata !6, i32 54, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 54]
!1705 = metadata !{i32 786688, metadata !1702, metadata !"len", metadata !6, i32 55, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 55]
!1706 = metadata !{i32 786688, metadata !1702, metadata !"uri", metadata !6, i32 56, metadata !524, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uri] [line 56]
!1707 = metadata !{i32 786688, metadata !1702, metadata !"i", metadata !6, i32 57, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 57]
!1708 = metadata !{i32 786688, metadata !1702, metadata !"key", metadata !6, i32 58, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 58]
!1709 = metadata !{i32 786688, metadata !1702, metadata !"rlcf", metadata !6, i32 59, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rlcf] [line 59]
!1710 = metadata !{i32 786688, metadata !1702, metadata !"buf", metadata !6, i32 60, metadata !1711, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf] [line 60]
!1711 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 2048, i64 8, i32 0, i32 0, metadata !45, metadata !1712, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 2048, align 8, offset 0] [from u_char]
!1712 = metadata !{metadata !1713}
!1713 = metadata !{i32 786465, i64 0, i64 255}    ; [ DW_TAG_subrange_type ] [0, 255]
!1714 = metadata !{i32 786688, metadata !1715, metadata !"rc", metadata !6, i32 110, metadata !714, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 110]
!1715 = metadata !{i32 786443, metadata !1702, i32 109, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1716 = metadata !{i32 786688, metadata !1715, metadata !"referer", metadata !6, i32 111, metadata !88, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [referer] [line 111]
!1717 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_referer_merge_conf", metadata !"ngx_http_referer_merge_conf", metadata !"", metadata !6, i32 163, metadata !1718, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_referer_merge_conf, null, null, metadata !1720, i32 164} ; [ DW_TAG_subprogram ] [line 163] [local] [def] [scope 164] [ngx_http_referer_merge_conf]
!1718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1719 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!1720 = metadata !{metadata !1721}
!1721 = metadata !{metadata !1722, metadata !1723, metadata !1724, metadata !1725, metadata !1727, metadata !1728}
!1722 = metadata !{i32 786689, metadata !1717, metadata !"cf", metadata !6, i32 16777379, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 163]
!1723 = metadata !{i32 786689, metadata !1717, metadata !"parent", metadata !6, i32 33554595, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 163]
!1724 = metadata !{i32 786689, metadata !1717, metadata !"child", metadata !6, i32 50331811, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 163]
!1725 = metadata !{i32 786688, metadata !1726, metadata !"prev", metadata !6, i32 165, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 165]
!1726 = metadata !{i32 786443, metadata !1717, i32 164, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1727 = metadata !{i32 786688, metadata !1726, metadata !"conf", metadata !6, i32 166, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 166]
!1728 = metadata !{i32 786688, metadata !1726, metadata !"hash", metadata !6, i32 167, metadata !1729, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 167]
!1729 = metadata !{i32 786454, null, metadata !"ngx_hash_init_t", metadata !6, i32 62, i64 0, i64 0, i64 0, i32 0, metadata !1730} ; [ DW_TAG_typedef ] [ngx_hash_init_t] [line 62, size 0, align 0, offset 0] [from ]
!1730 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 52, i64 224, i64 32, i32 0, i32 0, null, metadata !1731, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 52, size 224, align 32, offset 0] [from ]
!1731 = metadata !{metadata !1732, metadata !1734, metadata !1739, metadata !1740, metadata !1741, metadata !1742, metadata !1743}
!1732 = metadata !{i32 786445, metadata !1730, metadata !"hash", metadata !471, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !1733} ; [ DW_TAG_member ] [hash] [line 53, size 32, align 32, offset 0] [from ]
!1733 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !474} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_t]
!1734 = metadata !{i32 786445, metadata !1730, metadata !"key", metadata !471, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !1735} ; [ DW_TAG_member ] [key] [line 54, size 32, align 32, offset 32] [from ngx_hash_key_pt]
!1735 = metadata !{i32 786454, null, metadata !"ngx_hash_key_pt", metadata !471, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1736} ; [ DW_TAG_typedef ] [ngx_hash_key_pt] [line 42, size 0, align 0, offset 0] [from ]
!1736 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1737} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1737 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1738, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1738 = metadata !{metadata !26, metadata !44, metadata !30}
!1739 = metadata !{i32 786445, metadata !1730, metadata !"max_size", metadata !471, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [max_size] [line 56, size 32, align 32, offset 64] [from ngx_uint_t]
!1740 = metadata !{i32 786445, metadata !1730, metadata !"bucket_size", metadata !471, i32 57, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [bucket_size] [line 57, size 32, align 32, offset 96] [from ngx_uint_t]
!1741 = metadata !{i32 786445, metadata !1730, metadata !"name", metadata !471, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 59, size 32, align 32, offset 128] [from ]
!1742 = metadata !{i32 786445, metadata !1730, metadata !"pool", metadata !471, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 60, size 32, align 32, offset 160] [from ]
!1743 = metadata !{i32 786445, metadata !1730, metadata !"temp_pool", metadata !471, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 61, size 32, align 32, offset 192] [from ]
!1744 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_cmp_referer_wildcards", metadata !"ngx_http_cmp_referer_wildcards", metadata !"", metadata !6, i32 408, metadata !1745, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @ngx_http_cmp_referer_wildcards, null, null, metadata !1749, i32 409} ; [ DW_TAG_subprogram ] [line 408] [local] [def] [scope 409] [ngx_http_cmp_referer_wildcards]
!1745 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1746, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1746 = metadata !{metadata !86, metadata !1747, metadata !1747}
!1747 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1748} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1748 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!1749 = metadata !{metadata !1750}
!1750 = metadata !{metadata !1751, metadata !1752, metadata !1753, metadata !1762}
!1751 = metadata !{i32 786689, metadata !1744, metadata !"one", metadata !6, i32 16777624, metadata !1747, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [one] [line 408]
!1752 = metadata !{i32 786689, metadata !1744, metadata !"two", metadata !6, i32 33554840, metadata !1747, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [two] [line 408]
!1753 = metadata !{i32 786688, metadata !1754, metadata !"first", metadata !6, i32 410, metadata !1755, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 410]
!1754 = metadata !{i32 786443, metadata !1744, i32 409, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1755 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1756} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_key_t]
!1756 = metadata !{i32 786454, null, metadata !"ngx_hash_key_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !1757} ; [ DW_TAG_typedef ] [ngx_hash_key_t] [line 39, size 0, align 0, offset 0] [from ]
!1757 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 35, i64 128, i64 32, i32 0, i32 0, null, metadata !1758, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 35, size 128, align 32, offset 0] [from ]
!1758 = metadata !{metadata !1759, metadata !1760, metadata !1761}
!1759 = metadata !{i32 786445, metadata !1757, metadata !"key", metadata !471, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!1760 = metadata !{i32 786445, metadata !1757, metadata !"key_hash", metadata !471, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [key_hash] [line 37, size 32, align 32, offset 64] [from ngx_uint_t]
!1761 = metadata !{i32 786445, metadata !1757, metadata !"value", metadata !471, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 38, size 32, align 32, offset 96] [from ]
!1762 = metadata !{i32 786688, metadata !1754, metadata !"second", metadata !6, i32 411, metadata !1755, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [second] [line 411]
!1763 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_referer_create_conf", metadata !"ngx_http_referer_create_conf", metadata !"", metadata !6, i32 146, metadata !1764, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_referer_create_conf, null, null, metadata !1766, i32 147} ; [ DW_TAG_subprogram ] [line 146] [local] [def] [scope 147] [ngx_http_referer_create_conf]
!1764 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1765, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1765 = metadata !{metadata !24, metadata !11}
!1766 = metadata !{metadata !1767}
!1767 = metadata !{metadata !1768, metadata !1769}
!1768 = metadata !{i32 786689, metadata !1763, metadata !"cf", metadata !6, i32 16777362, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 146]
!1769 = metadata !{i32 786688, metadata !1770, metadata !"conf", metadata !6, i32 148, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 148]
!1770 = metadata !{i32 786443, metadata !1763, i32 147, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1771 = metadata !{metadata !1772}
!1772 = metadata !{metadata !1773, metadata !1811, metadata !1815}
!1773 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_referer_module", metadata !"ngx_http_referer_module", metadata !"", metadata !6, i32 38, metadata !1774, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_referer_module} ; [ DW_TAG_variable ] [ngx_http_referer_module] [line 38] [def]
!1774 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1775} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1775 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1776, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1776 = metadata !{metadata !1777, metadata !1778, metadata !1779, metadata !1780, metadata !1781, metadata !1782, metadata !1783, metadata !1784, metadata !1785, metadata !1786, metadata !1787, metadata !1791, metadata !1795, metadata !1796, metadata !1797, metadata !1801, metadata !1802, metadata !1803, metadata !1804, metadata !1805, metadata !1806, metadata !1807, metadata !1808, metadata !1809, metadata !1810}
!1777 = metadata !{i32 786445, metadata !1775, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1778 = metadata !{i32 786445, metadata !1775, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1779 = metadata !{i32 786445, metadata !1775, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1780 = metadata !{i32 786445, metadata !1775, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1781 = metadata !{i32 786445, metadata !1775, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1782 = metadata !{i32 786445, metadata !1775, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1783 = metadata !{i32 786445, metadata !1775, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1784 = metadata !{i32 786445, metadata !1775, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1785 = metadata !{i32 786445, metadata !1775, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1786 = metadata !{i32 786445, metadata !1775, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1787 = metadata !{i32 786445, metadata !1775, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1788} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1788 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1789} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1789 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1790, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1790 = metadata !{metadata !714, metadata !137}
!1791 = metadata !{i32 786445, metadata !1775, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1792} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1792 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1793} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1793 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1794, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1794 = metadata !{metadata !714, metadata !203}
!1795 = metadata !{i32 786445, metadata !1775, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1792} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1796 = metadata !{i32 786445, metadata !1775, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1792} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1797 = metadata !{i32 786445, metadata !1775, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1798} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1798 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1799} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1799 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1800, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1800 = metadata !{null, metadata !203}
!1801 = metadata !{i32 786445, metadata !1775, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1798} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1802 = metadata !{i32 786445, metadata !1775, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1798} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1803 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1804 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1805 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1806 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1807 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1808 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1809 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1810 = metadata !{i32 786445, metadata !1775, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1811 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_referer_commands", metadata !"ngx_http_referer_commands", metadata !"", metadata !6, i32 28, metadata !1812, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_referer_commands} ; [ DW_TAG_variable ] [ngx_http_referer_commands] [line 28] [local] [def]
!1812 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !448, metadata !1813, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 896, align 32, offset 0] [from ngx_command_t]
!1813 = metadata !{metadata !1814}
!1814 = metadata !{i32 786465, i64 0, i64 3}      ; [ DW_TAG_subrange_type ] [0, 3]
!1815 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_referer_module_ctx", metadata !"ngx_http_referer_module_ctx", metadata !"", metadata !6, i32 29, metadata !1816, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_referer_module_ctx} ; [ DW_TAG_variable ] [ngx_http_referer_module_ctx] [line 29] [local] [def]
!1816 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1817} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1817 = metadata !{i32 786451, null, metadata !"", metadata !1342, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1818, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1818 = metadata !{metadata !1819, metadata !1823, metadata !1824, metadata !1826, metadata !1830, metadata !1831, metadata !1833, metadata !1834}
!1819 = metadata !{i32 786445, metadata !1817, metadata !"preconfiguration", metadata !1342, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1820} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1820 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1821} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1821 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1822, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1822 = metadata !{metadata !714, metadata !11}
!1823 = metadata !{i32 786445, metadata !1817, metadata !"postconfiguration", metadata !1342, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1820} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1824 = metadata !{i32 786445, metadata !1817, metadata !"create_main_conf", metadata !1342, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1825} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1825 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1764} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1826 = metadata !{i32 786445, metadata !1817, metadata !"init_main_conf", metadata !1342, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1827} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1827 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1828} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1828 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1829, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1829 = metadata !{metadata !9, metadata !11, metadata !24}
!1830 = metadata !{i32 786445, metadata !1817, metadata !"create_srv_conf", metadata !1342, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1825} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1831 = metadata !{i32 786445, metadata !1817, metadata !"merge_srv_conf", metadata !1342, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1832} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1832 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1718} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1833 = metadata !{i32 786445, metadata !1817, metadata !"create_loc_conf", metadata !1342, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1825} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1834 = metadata !{i32 786445, metadata !1817, metadata !"merge_loc_conf", metadata !1342, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1832} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1835 = metadata !{i32 254, i32 0, metadata !5, null}
!1836 = metadata !{i32 256, i32 0, metadata !463, null}
!1837 = metadata !{i32 259, i32 0, metadata !463, null}
!1838 = metadata !{i32 260, i32 0, metadata !463, null}
!1839 = metadata !{i32 266, i32 0, metadata !463, null}
!1840 = metadata !{metadata !"int", metadata !1841}
!1841 = metadata !{metadata !"omnipotent char", metadata !1842}
!1842 = metadata !{metadata !"Simple C/C++ TBAA"}
!1843 = metadata !{i32 267, i32 0, metadata !463, null}
!1844 = metadata !{metadata !"any pointer", metadata !1841}
!1845 = metadata !{i32 268, i32 0, metadata !463, null}
!1846 = metadata !{i32 269, i32 0, metadata !463, null}
!1847 = metadata !{i32 272, i32 0, metadata !463, null}
!1848 = metadata !{i32 273, i32 0, metadata !463, null}
!1849 = metadata !{i32 274, i32 0, metadata !1850, null}
!1850 = metadata !{i32 786443, metadata !463, i32 273, i32 0, metadata !6, i32 2} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1851 = metadata !{i32 275, i32 0, metadata !1850, null}
!1852 = metadata !{i32 278, i32 0, metadata !1850, null}
!1853 = metadata !{i32 279, i32 0, metadata !1850, null}
!1854 = metadata !{i32 280, i32 0, metadata !1850, null}
!1855 = metadata !{i32 284, i32 0, metadata !463, null}
!1856 = metadata !{i32 1}
!1857 = metadata !{i32 285, i32 0, metadata !1632, null}
!1858 = metadata !{i32 290, i32 0, metadata !1630, null}
!1859 = metadata !{i32 291, i32 0, metadata !1860, null}
!1860 = metadata !{i32 786443, metadata !1631, i32 290, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1861 = metadata !{i32 294, i32 0, metadata !1638, null}
!1862 = metadata !{i32 295, i32 0, metadata !1863, null}
!1863 = metadata !{i32 786443, metadata !1631, i32 294, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1864 = metadata !{i32 298, i32 0, metadata !1631, null}
!1865 = metadata !{i32 299, i32 0, metadata !1631, null}
!1866 = metadata !{i32 300, i32 0, metadata !1644, null}
!1867 = metadata !{i32 301, i32 0, metadata !1868, null}
!1868 = metadata !{i32 786443, metadata !1631, i32 300, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1869 = metadata !{i32 286, i32 0, metadata !1631, null}
!1870 = metadata !{i32 287, i32 0, metadata !1871, null}
!1871 = metadata !{i32 786443, metadata !1631, i32 286, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1872 = metadata !{i32 288, i32 0, metadata !1871, null}
!1873 = metadata !{i32 290, i32 0, metadata !1874, null}
!1874 = metadata !{i32 786443, metadata !1875, i32 290, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1875 = metadata !{i32 786443, metadata !1635, i32 290, i32 0, metadata !6, i32 10} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1876 = metadata !{i32 292, i32 0, metadata !1860, null}
!1877 = metadata !{i32 294, i32 0, metadata !1878, null}
!1878 = metadata !{i32 786443, metadata !1879, i32 294, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1879 = metadata !{i32 786443, metadata !1641, i32 294, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1880 = metadata !{i32 296, i32 0, metadata !1863, null}
!1881 = metadata !{i32 300, i32 0, metadata !1882, null}
!1882 = metadata !{i32 786443, metadata !1883, i32 300, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1883 = metadata !{i32 786443, metadata !1647, i32 300, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1884 = metadata !{i32 302, i32 0, metadata !1868, null}
!1885 = metadata !{i32 303, i32 0, metadata !1886, null}
!1886 = metadata !{i32 786443, metadata !1868, i32 303, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1887 = metadata !{i32 305, i32 0, metadata !1888, null}
!1888 = metadata !{i32 786443, metadata !1886, i32 303, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1889 = metadata !{i32 306, i32 0, metadata !1890, null}
!1890 = metadata !{i32 786443, metadata !1888, i32 305, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1891 = metadata !{i32 312, i32 0, metadata !1888, null}
!1892 = metadata !{i32 318, i32 0, metadata !1631, null}
!1893 = metadata !{i32 319, i32 0, metadata !1894, null}
!1894 = metadata !{i32 786443, metadata !1631, i32 318, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1895 = metadata !{i32 324, i32 0, metadata !1631, null}
!1896 = metadata !{i32 325, i32 0, metadata !1631, null}
!1897 = metadata !{i32 326, i32 0, metadata !1898, null}
!1898 = metadata !{i32 786443, metadata !1631, i32 325, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1899 = metadata !{i32 328, i32 0, metadata !1898, null}
!1900 = metadata !{i32 327, i32 0, metadata !1898, null}
!1901 = metadata !{i32 329, i32 0, metadata !1898, null}
!1902 = metadata !{i32 330, i32 0, metadata !1631, null}
!1903 = metadata !{i32 335, i32 0, metadata !463, null}
!1904 = metadata !{i32 50, i32 0, metadata !1695, null}
!1905 = metadata !{i32 60, i32 0, metadata !1702, null}
!1906 = metadata !{i32 61, i32 0, metadata !1702, null}
!1907 = metadata !{i32 62, i32 0, metadata !1702, null}
!1908 = metadata !{i32 68, i32 0, metadata !1702, null}
!1909 = metadata !{i32 69, i32 0, metadata !1910, null}
!1910 = metadata !{i32 786443, metadata !1702, i32 68, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1911 = metadata !{i32 74, i32 0, metadata !1702, null}
!1912 = metadata !{i32 75, i32 0, metadata !1702, null}
!1913 = metadata !{i32 76, i32 0, metadata !1702, null}
!1914 = metadata !{i32 77, i32 0, metadata !1915, null}
!1915 = metadata !{i32 786443, metadata !1702, i32 76, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1916 = metadata !{i32 78, i32 0, metadata !1915, null}
!1917 = metadata !{i32 79, i32 0, metadata !1918, null}
!1918 = metadata !{i32 786443, metadata !1915, i32 78, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1919 = metadata !{i32 80, i32 0, metadata !1918, null}
!1920 = metadata !{i32 82, i32 0, metadata !1915, null}
!1921 = metadata !{i32 83, i32 0, metadata !1922, null}
!1922 = metadata !{i32 786443, metadata !1915, i32 82, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1923 = metadata !{i32 84, i32 0, metadata !1922, null}
!1924 = metadata !{i32 87, i32 0, metadata !1702, null}
!1925 = metadata !{i32 92, i32 0, metadata !1702, null}
!1926 = metadata !{i32 93, i32 0, metadata !1702, null}
!1927 = metadata !{i32 94, i32 0, metadata !1928, null}
!1928 = metadata !{i32 786443, metadata !1702, i32 94, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1929 = metadata !{i32 95, i32 0, metadata !1930, null}
!1930 = metadata !{i32 786443, metadata !1928, i32 94, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1931 = metadata !{i32 98, i32 0, metadata !1930, null}
!1932 = metadata !{i32 99, i32 0, metadata !1930, null}
!1933 = metadata !{i32 100, i32 0, metadata !1930, null}
!1934 = metadata !{i32 104, i32 0, metadata !1702, null}
!1935 = metadata !{i32 105, i32 0, metadata !1702, null}
!1936 = metadata !{i32 109, i32 0, metadata !1702, null}
!1937 = metadata !{i32 111, i32 0, metadata !1715, null}
!1938 = metadata !{i32 112, i32 0, metadata !1715, null}
!1939 = metadata !{i32 113, i32 0, metadata !1715, null}
!1940 = metadata !{i32 114, i32 0, metadata !1715, null}
!1941 = metadata !{i32 115, i32 0, metadata !1715, null}
!1942 = metadata !{i32 125, i32 0, metadata !1702, null}
!1943 = metadata !{i32 126, i32 0, metadata !1702, null}
!1944 = metadata !{i32 128, i32 0, metadata !1945, null}
!1945 = metadata !{i32 786443, metadata !1702, i32 128, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1946 = metadata !{i32 129, i32 0, metadata !1947, null}
!1947 = metadata !{i32 786443, metadata !1945, i32 128, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1948 = metadata !{i32 134, i32 0, metadata !1702, null}
!1949 = metadata !{i32 135, i32 0, metadata !1702, null}
!1950 = metadata !{i32 138, i32 0, metadata !1702, null}
!1951 = metadata !{i32 142, i32 0, metadata !1702, null}
!1952 = metadata !{i32 143, i32 0, metadata !1702, null}
!1953 = metadata !{i32 144, i32 0, metadata !1702, null}
!1954 = metadata !{i32 364, i32 0, metadata !1661, null}
!1955 = metadata !{i32 368, i32 0, metadata !1671, null}
!1956 = metadata !{i32 369, i32 0, metadata !1671, null}
!1957 = metadata !{i32 370, i32 0, metadata !1671, null}
!1958 = metadata !{i32 371, i32 0, metadata !1959, null}
!1959 = metadata !{i32 786443, metadata !1671, i32 370, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1960 = metadata !{i32 372, i32 0, metadata !1959, null}
!1961 = metadata !{i32 374, i32 0, metadata !1671, null}
!1962 = metadata !{i32 375, i32 0, metadata !1963, null}
!1963 = metadata !{i32 786443, metadata !1671, i32 374, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1964 = metadata !{i32 376, i32 0, metadata !1963, null}
!1965 = metadata !{i32 380, i32 0, metadata !1671, null}
!1966 = metadata !{i32 381, i32 0, metadata !1671, null}
!1967 = metadata !{i32 384, i32 0, metadata !1671, null}
!1968 = metadata !{i32 385, i32 0, metadata !1969, null}
!1969 = metadata !{i32 786443, metadata !1671, i32 384, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1970 = metadata !{i32 386, i32 0, metadata !1969, null}
!1971 = metadata !{i32 387, i32 0, metadata !1969, null}
!1972 = metadata !{i32 389, i32 0, metadata !1671, null}
!1973 = metadata !{i32 390, i32 0, metadata !1671, null}
!1974 = metadata !{i32 391, i32 0, metadata !1671, null}
!1975 = metadata !{i32 392, i32 0, metadata !1671, null}
!1976 = metadata !{i32 393, i32 0, metadata !1671, null}
!1977 = metadata !{i32 394, i32 0, metadata !1671, null}
!1978 = metadata !{i32 395, i32 0, metadata !1671, null}
!1979 = metadata !{i32 396, i32 0, metadata !1671, null}
!1980 = metadata !{i32 397, i32 0, metadata !1671, null}
!1981 = metadata !{i32 398, i32 0, metadata !1982, null}
!1982 = metadata !{i32 786443, metadata !1671, i32 397, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1983 = metadata !{i32 399, i32 0, metadata !1982, null}
!1984 = metadata !{i32 401, i32 0, metadata !1671, null}
!1985 = metadata !{i32 402, i32 0, metadata !1671, null}
!1986 = metadata !{i32 403, i32 0, metadata !1671, null}
!1987 = metadata !{i32 406, i32 0, metadata !1671, null}
!1988 = metadata !{i32 337, i32 0, metadata !1649, null}
!1989 = metadata !{i32 341, i32 0, metadata !1659, null}
!1990 = metadata !{i32 345, i32 0, metadata !1991, null}
!1991 = metadata !{i32 786443, metadata !1659, i32 344, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1992 = metadata !{i32 346, i32 0, metadata !1991, null}
!1993 = metadata !{i32 349, i32 0, metadata !1991, null}
!1994 = metadata !{i32 351, i32 0, metadata !1659, null}
!1995 = metadata !{i32 352, i32 0, metadata !1659, null}
!1996 = metadata !{i32 356, i32 0, metadata !1997, null}
!1997 = metadata !{i32 786443, metadata !1659, i32 355, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!1998 = metadata !{i32 358, i32 0, metadata !1659, null}
!1999 = metadata !{i32 359, i32 0, metadata !2000, null}
!2000 = metadata !{i32 786443, metadata !1659, i32 358, i32 0, metadata !6, i32 38} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2001 = metadata !{i32 360, i32 0, metadata !2000, null}
!2002 = metadata !{i32 361, i32 0, metadata !1659, null}
!2003 = metadata !{i32 362, i32 0, metadata !1659, null}
!2004 = metadata !{i32 146, i32 0, metadata !1763, null}
!2005 = metadata !{i32 149, i32 0, metadata !1770, null}
!2006 = metadata !{i32 150, i32 0, metadata !1770, null}
!2007 = metadata !{i32 154, i32 0, metadata !1770, null}
!2008 = metadata !{i32 156, i32 0, metadata !1770, null}
!2009 = metadata !{i32 157, i32 0, metadata !1770, null}
!2010 = metadata !{i32 158, i32 0, metadata !1770, null}
!2011 = metadata !{i32 159, i32 0, metadata !1770, null}
!2012 = metadata !{i32 160, i32 0, metadata !1770, null}
!2013 = metadata !{i32 161, i32 0, metadata !1770, null}
!2014 = metadata !{i32 163, i32 0, metadata !1717, null}
!2015 = metadata !{i32 167, i32 0, metadata !1726, null}
!2016 = metadata !{i32 168, i32 0, metadata !1726, null}
!2017 = metadata !{i32 169, i32 0, metadata !2018, null}
!2018 = metadata !{i32 786443, metadata !1726, i32 168, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2019 = metadata !{i64 0, i64 4, metadata !1844, i64 4, i64 4, metadata !1840, i64 8, i64 4, metadata !1844, i64 12, i64 4, metadata !1844}
!2020 = metadata !{i32 171, i32 0, metadata !2018, null}
!2021 = metadata !{i32 172, i32 0, metadata !2022, null}
!2022 = metadata !{i32 786443, metadata !2018, i32 171, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2023 = metadata !{i32 173, i32 0, metadata !2022, null}
!2024 = metadata !{i32 176, i32 0, metadata !2018, null}
!2025 = metadata !{i32 177, i32 0, metadata !2026, null}
!2026 = metadata !{i32 786443, metadata !2018, i32 176, i32 0, metadata !6, i32 70} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2027 = metadata !{i32 178, i32 0, metadata !2026, null}
!2028 = metadata !{i32 180, i32 0, metadata !2018, null}
!2029 = metadata !{i32 181, i32 0, metadata !2030, null}
!2030 = metadata !{i32 786443, metadata !2018, i32 180, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2031 = metadata !{i32 182, i32 0, metadata !2030, null}
!2032 = metadata !{i32 184, i32 0, metadata !2018, null}
!2033 = metadata !{i32 185, i32 0, metadata !2034, null}
!2034 = metadata !{i32 786443, metadata !2018, i32 184, i32 0, metadata !6, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2035 = metadata !{i32 186, i32 0, metadata !2034, null}
!2036 = metadata !{i32 188, i32 0, metadata !2018, null}
!2037 = metadata !{i32 189, i32 0, metadata !2038, null}
!2038 = metadata !{i32 786443, metadata !2018, i32 188, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2039 = metadata !{i32 190, i32 0, metadata !2038, null}
!2040 = metadata !{i32 194, i32 0, metadata !1726, null}
!2041 = metadata !{i32 195, i32 0, metadata !2042, null}
!2042 = metadata !{i32 786443, metadata !1726, i32 194, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2043 = metadata !{i32 196, i32 0, metadata !2042, null}
!2044 = metadata !{i32 199, i32 0, metadata !1726, null}
!2045 = metadata !{i32 200, i32 0, metadata !2046, null}
!2046 = metadata !{i32 786443, metadata !1726, i32 199, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2047 = metadata !{i32 201, i32 0, metadata !2046, null}
!2048 = metadata !{i32 203, i32 0, metadata !1726, null}
!2049 = metadata !{i32 207, i32 0, metadata !1726, null}
!2050 = metadata !{i32 204, i32 0, metadata !2051, null}
!2051 = metadata !{i32 786443, metadata !1726, i32 203, i32 0, metadata !6, i32 76} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2052 = metadata !{i32 205, i32 0, metadata !2051, null}
!2053 = metadata !{i32 208, i32 0, metadata !1726, null}
!2054 = metadata !{i32 209, i32 0, metadata !1726, null}
!2055 = metadata !{i32 210, i32 0, metadata !1726, null}
!2056 = metadata !{i32 211, i32 0, metadata !1726, null}
!2057 = metadata !{i32 212, i32 0, metadata !1726, null}
!2058 = metadata !{i32 213, i32 0, metadata !1726, null}
!2059 = metadata !{i32 214, i32 0, metadata !2060, null}
!2060 = metadata !{i32 786443, metadata !1726, i32 213, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2061 = metadata !{i32 215, i32 0, metadata !2060, null}
!2062 = metadata !{i32 216, i32 0, metadata !2060, null}
!2063 = metadata !{i32 220, i32 0, metadata !1726, null}
!2064 = metadata !{i32 221, i32 0, metadata !2065, null}
!2065 = metadata !{i32 786443, metadata !1726, i32 220, i32 0, metadata !6, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2066 = metadata !{i32 222, i32 0, metadata !2065, null}
!2067 = metadata !{i32 223, i32 0, metadata !2065, null}
!2068 = metadata !{i32 224, i32 0, metadata !2065, null}
!2069 = metadata !{i32 227, i32 0, metadata !2065, null}
!2070 = metadata !{i32 229, i32 0, metadata !1726, null}
!2071 = metadata !{i32 228, i32 0, metadata !2065, null}
!2072 = metadata !{i32 230, i32 0, metadata !2073, null}
!2073 = metadata !{i32 786443, metadata !1726, i32 229, i32 0, metadata !6, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2074 = metadata !{i32 231, i32 0, metadata !2073, null}
!2075 = metadata !{i32 232, i32 0, metadata !2073, null}
!2076 = metadata !{i32 233, i32 0, metadata !2073, null}
!2077 = metadata !{i32 236, i32 0, metadata !2073, null}
!2078 = metadata !{i32 237, i32 0, metadata !2073, null}
!2079 = metadata !{i32 239, i32 0, metadata !1726, null}
!2080 = metadata !{i32 240, i32 0, metadata !2081, null}
!2081 = metadata !{i32 786443, metadata !1726, i32 239, i32 0, metadata !6, i32 83} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2082 = metadata !{i32 241, i32 0, metadata !2081, null}
!2083 = metadata !{i32 244, i32 0, metadata !1726, null}
!2084 = metadata !{i32 245, i32 0, metadata !2085, null}
!2085 = metadata !{i32 786443, metadata !1726, i32 244, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2086 = metadata !{i32 246, i32 0, metadata !2085, null}
!2087 = metadata !{i32 247, i32 0, metadata !1726, null}
!2088 = metadata !{i32 248, i32 0, metadata !2089, null}
!2089 = metadata !{i32 786443, metadata !1726, i32 247, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_referer_module.c]
!2090 = metadata !{i32 249, i32 0, metadata !2089, null}
!2091 = metadata !{i32 250, i32 0, metadata !1726, null}
!2092 = metadata !{i32 251, i32 0, metadata !1726, null}
!2093 = metadata !{i32 252, i32 0, metadata !1726, null}
!2094 = metadata !{i32 408, i32 0, metadata !1744, null}
!2095 = metadata !{i32 414, i32 0, metadata !1754, null}
