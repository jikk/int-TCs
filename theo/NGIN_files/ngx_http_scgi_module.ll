; ModuleID = 'src/http/modules/ngx_http_scgi_module.c'
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
%struct.ngx_path_init_t = type { %struct.ngx_str_t, [3 x i32] }
%struct.ngx_keyval_t = type { %struct.ngx_str_t, %struct.ngx_str_t }
%struct.ngx_url_t = type { %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, i16, i16, i32, i8, i32, [110 x i8], %struct.ngx_addr_t*, i32, i8* }
%struct.ngx_addr_t = type { %struct.sockaddr*, i32, %struct.ngx_str_t }
%struct.ngx_http_script_compile_t = type { %struct.ngx_conf_s*, %struct.ngx_str_t*, %struct.ngx_array_s**, %struct.ngx_array_s**, %struct.ngx_array_s**, i32, i32, i32, i32, i8*, i8 }
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
%struct.ngx_http_compile_complex_value_t = type { %struct.ngx_conf_s*, %struct.ngx_str_t*, %struct.ngx_http_complex_value_t*, i8 }
%struct.ngx_http_script_engine_t = type { i8*, i8*, %struct.ngx_variable_value_t*, %struct.ngx_str_t, %struct.ngx_str_t, i8*, i8, i32, %struct.ngx_http_request_s* }
%struct.ngx_http_status_t = type { i32, i32, i32, i8*, i8* }
%struct.ngx_hash_init_t = type { %struct.ngx_hash_t*, i32 (i8*, i32)*, i32, i32, i8*, %struct.ngx_pool_s*, %struct.ngx_pool_s* }
%struct.ngx_http_upstream_param_t = type { %struct.ngx_str_t, %struct.ngx_str_t, i32 }
%struct.ngx_hash_key_t = type { %struct.ngx_str_t, i32, i8* }

@ngx_http_scgi_module_ctx = internal global %struct.ngx_http_module_t { i32 (%struct.ngx_conf_s*)* null, i32 (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*)* null, i8* (%struct.ngx_conf_s*)* null, i8* (%struct.ngx_conf_s*, i8*, i8*)* null, i8* (%struct.ngx_conf_s*)* @ngx_http_scgi_create_loc_conf, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_scgi_merge_loc_conf }, align 4
@ngx_http_scgi_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_http_module_t* @ngx_http_scgi_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([35 x %struct.ngx_command_s]* bitcast (<{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_scgi_commands to [35 x %struct.ngx_command_s]*), i32 0, i32 0), i32 1347703880, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"scgi_pass\00", align 1
@.str1 = private unnamed_addr constant [11 x i8] c"scgi_store\00", align 1
@.str2 = private unnamed_addr constant [18 x i8] c"scgi_store_access\00", align 1
@.str3 = private unnamed_addr constant [15 x i8] c"scgi_buffering\00", align 1
@.str4 = private unnamed_addr constant [25 x i8] c"scgi_ignore_client_abort\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"scgi_bind\00", align 1
@.str6 = private unnamed_addr constant [21 x i8] c"scgi_connect_timeout\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"scgi_send_timeout\00", align 1
@.str8 = private unnamed_addr constant [17 x i8] c"scgi_buffer_size\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"scgi_pass_request_headers\00", align 1
@.str10 = private unnamed_addr constant [23 x i8] c"scgi_pass_request_body\00", align 1
@.str11 = private unnamed_addr constant [22 x i8] c"scgi_intercept_errors\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"scgi_read_timeout\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"scgi_buffers\00", align 1
@.str14 = private unnamed_addr constant [23 x i8] c"scgi_busy_buffers_size\00", align 1
@.str15 = private unnamed_addr constant [11 x i8] c"scgi_cache\00", align 1
@.str16 = private unnamed_addr constant [15 x i8] c"scgi_cache_key\00", align 1
@.str17 = private unnamed_addr constant [16 x i8] c"scgi_cache_path\00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c"scgi_cache_bypass\00", align 1
@.str19 = private unnamed_addr constant [14 x i8] c"scgi_no_cache\00", align 1
@.str20 = private unnamed_addr constant [17 x i8] c"scgi_cache_valid\00", align 1
@.str21 = private unnamed_addr constant [20 x i8] c"scgi_cache_min_uses\00", align 1
@.str22 = private unnamed_addr constant [21 x i8] c"scgi_cache_use_stale\00", align 1
@ngx_http_scgi_next_upstream_masks = internal global [9 x %struct.ngx_conf_bitmask_t] [%struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 5, i8* getelementptr inbounds ([6 x i8]* @.str34, i32 0, i32 0) }, i32 2 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 7, i8* getelementptr inbounds ([8 x i8]* @.str35, i32 0, i32 0) }, i32 4 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str36, i32 0, i32 0) }, i32 8 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 8, i8* getelementptr inbounds ([9 x i8]* @.str37, i32 0, i32 0) }, i32 16 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 8, i8* getelementptr inbounds ([9 x i8]* @.str38, i32 0, i32 0) }, i32 64 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 8, i8* getelementptr inbounds ([9 x i8]* @.str39, i32 0, i32 0) }, i32 256 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 8, i8* getelementptr inbounds ([9 x i8]* @.str40, i32 0, i32 0) }, i32 512 }, %struct.ngx_conf_bitmask_t { %struct.ngx_str_t { i32 3, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0) }, i32 -2147483648 }, %struct.ngx_conf_bitmask_t zeroinitializer], align 4
@.str23 = private unnamed_addr constant [19 x i8] c"scgi_cache_methods\00", align 1
@ngx_http_upstream_cache_method_mask = external global [0 x %struct.ngx_conf_bitmask_t]
@.str24 = private unnamed_addr constant [16 x i8] c"scgi_cache_lock\00", align 1
@.str25 = private unnamed_addr constant [24 x i8] c"scgi_cache_lock_timeout\00", align 1
@.str26 = private unnamed_addr constant [15 x i8] c"scgi_temp_path\00", align 1
@.str27 = private unnamed_addr constant [24 x i8] c"scgi_max_temp_file_size\00", align 1
@.str28 = private unnamed_addr constant [26 x i8] c"scgi_temp_file_write_size\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"scgi_next_upstream\00", align 1
@.str30 = private unnamed_addr constant [11 x i8] c"scgi_param\00", align 1
@.str31 = private unnamed_addr constant [17 x i8] c"scgi_pass_header\00", align 1
@.str32 = private unnamed_addr constant [17 x i8] c"scgi_hide_header\00", align 1
@.str33 = private unnamed_addr constant [20 x i8] c"scgi_ignore_headers\00", align 1
@ngx_http_upstream_ignore_headers_masks = external global [0 x %struct.ngx_conf_bitmask_t]
@ngx_http_scgi_commands = internal global <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }> <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0) }, i32 1207959554, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_pass, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str1, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_store, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str2, i32 0, i32 0) }, i32 234881038, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_access_slot, i32 8, i32 68, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str3, i32 0, i32 0) }, i32 234881536, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 72, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 24, i8* getelementptr inbounds ([25 x i8]* @.str4, i32 0, i32 0) }, i32 234881536, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 84, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str5, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_upstream_bind_set_slot, i32 8, i32 116, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 20, i8* getelementptr inbounds ([21 x i8]* @.str6, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 8, i32 4, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str7, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 8, i32 8, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str8, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 24, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 25, i8* getelementptr inbounds ([26 x i8]* @.str9, i32 0, i32 0) }, i32 234881536, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 76, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 22, i8* getelementptr inbounds ([23 x i8]* @.str10, i32 0, i32 0) }, i32 234881536, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 80, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 21, i8* getelementptr inbounds ([22 x i8]* @.str11, i32 0, i32 0) }, i32 234881536, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 88, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str12, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 8, i32 12, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 12, i8* getelementptr inbounds ([13 x i8]* @.str13, i32 0, i32 0) }, i32 234881028, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_bufs_slot, i32 8, i32 52, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 22, i8* getelementptr inbounds ([23 x i8]* @.str14, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 40, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str15, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_cache, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str16, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_cache_key, i32 8, i32 0, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str17, i32 0, i32 0) }, i32 33558528, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_file_cache_set_slot, i32 0, i32 0, i8* bitcast (%struct.ngx_module_s* @ngx_http_scgi_module to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str18, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_set_predicate_slot, i32 8, i32 148, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 13, i8* getelementptr inbounds ([14 x i8]* @.str19, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_set_predicate_slot, i32 8, i32 152, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str20, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_file_cache_valid_set_slot, i32 8, i32 144, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 19, i8* getelementptr inbounds ([20 x i8]* @.str21, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_num_slot, i32 8, i32 124, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 20, i8* getelementptr inbounds ([21 x i8]* @.str22, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_bitmask_slot, i32 8, i32 128, i8* bitcast ([9 x %struct.ngx_conf_bitmask_t]* @ngx_http_scgi_next_upstream_masks to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 18, i8* getelementptr inbounds ([19 x i8]* @.str23, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_bitmask_slot, i32 8, i32 132, i8* bitcast ([0 x %struct.ngx_conf_bitmask_t]* @ngx_http_upstream_cache_method_mask to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str24, i32 0, i32 0) }, i32 234881536, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_flag_slot, i32 8, i32 136, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 23, i8* getelementptr inbounds ([24 x i8]* @.str25, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_msec_slot, i32 8, i32 140, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 14, i8* getelementptr inbounds ([15 x i8]* @.str26, i32 0, i32 0) }, i32 234881054, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_path_slot, i32 8, i32 96, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 23, i8* getelementptr inbounds ([24 x i8]* @.str27, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 44, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 25, i8* getelementptr inbounds ([26 x i8]* @.str28, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_size_slot, i32 8, i32 48, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 18, i8* getelementptr inbounds ([19 x i8]* @.str29, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_bitmask_slot, i32 8, i32 64, i8* bitcast ([9 x %struct.ngx_conf_bitmask_t]* @ngx_http_scgi_next_upstream_masks to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str30, i32 0, i32 0) }, i32 234881036, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_upstream_param_set_slot, i32 8, i32 188, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str31, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_array_slot, i32 8, i32 112, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str32, i32 0, i32 0) }, i32 234881026, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_str_array_slot, i32 8, i32 108, i8* null }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } { %struct.ngx_str_t { i32 19, i8* getelementptr inbounds ([20 x i8]* @.str33, i32 0, i32 0) }, i32 234883072, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_conf_set_bitmask_slot, i32 8, i32 60, i8* bitcast ([0 x %struct.ngx_conf_bitmask_t]* @ngx_http_upstream_ignore_headers_masks to i8*) }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } zeroinitializer }>, align 4
@.str34 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str35 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str36 = private unnamed_addr constant [15 x i8] c"invalid_header\00", align 1
@.str37 = private unnamed_addr constant [9 x i8] c"http_500\00", align 1
@.str38 = private unnamed_addr constant [9 x i8] c"http_503\00", align 1
@.str39 = private unnamed_addr constant [9 x i8] c"http_404\00", align 1
@.str40 = private unnamed_addr constant [9 x i8] c"updating\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str42 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@.str43 = private unnamed_addr constant [34 x i8] c"is incompatible with \22scgi_store\22\00", align 1
@.str44 = private unnamed_addr constant [34 x i8] c"is incompatible with \22scgi_cache\22\00", align 1
@.str45 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@ngx_http_core_module = external global %struct.ngx_module_s
@.str46 = private unnamed_addr constant [60 x i8] c"ngx_http_scgi_module does not support subrequests in memory\00", align 1
@.str47 = private unnamed_addr constant [8 x i8] c"scgi://\00", align 1
@0 = internal unnamed_addr constant [11 x i8] c"ngx_flag_t\00"
@ngx_http_upstream_module = external global %struct.ngx_module_s
@.str48 = private unnamed_addr constant [34 x i8] c"upstream sent invalid status \22%V\22\00", align 1
@1 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@.str49 = private unnamed_addr constant [22 x i8] c"302 Moved Temporarily\00", align 1
@.str50 = private unnamed_addr constant [7 x i8] c"200 OK\00", align 1
@.str51 = private unnamed_addr constant [29 x i8] c"upstream sent invalid header\00", align 1
@ngx_http_scgi_create_request.zero = internal global %struct.ngx_str_t { i32 1, i8* getelementptr inbounds ([2 x i8]* @.str52, i32 0, i32 0) }, align 4
@.str52 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str53 = private unnamed_addr constant [25 x i8] c"%ui:CONTENT_LENGTH%Z%V%Z\00", align 1
@2 = internal unnamed_addr constant [3 x i8] c"+=\00"
@.str54 = private unnamed_addr constant [6 x i8] c"HTTP_\00", align 1
@.str55 = private unnamed_addr constant [20 x i8] c"%s in upstream \22%V\22\00", align 1
@ngx_pagesize = external global i32
@.str56 = private unnamed_addr constant [40 x i8] c"there must be at least 2 \22scgi_buffers\22\00", align 1
@.str57 = private unnamed_addr constant [135 x i8] c"\22scgi_busy_buffers_size\22 must be equal to or greater than the maximum of the value of \22scgi_buffer_size\22 and one of the \22scgi_buffers\22\00", align 1
@.str58 = private unnamed_addr constant [91 x i8] c"\22scgi_busy_buffers_size\22 must be less than the size of all \22scgi_buffers\22 minus one buffer\00", align 1
@3 = internal unnamed_addr constant [2 x i8] c"*\00"
@.str59 = private unnamed_addr constant [138 x i8] c"\22scgi_temp_file_write_size\22 must be equal to or greater than the maximum of the value of \22scgi_buffer_size\22 and one of the \22scgi_buffers\22\00", align 1
@.str60 = private unnamed_addr constant [194 x i8] c"\22scgi_max_temp_file_size\22 must be equal to zero to disable temporary files usage or must be equal to or greater than the maximum of the value of \22scgi_buffer_size\22 and one of the \22scgi_buffers\22\00", align 1
@ngx_http_scgi_temp_path = internal global %struct.ngx_path_init_t { %struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str77, i32 0, i32 0) }, [3 x i32] [i32 1, i32 2, i32 0] }, align 4
@.str61 = private unnamed_addr constant [34 x i8] c"\22scgi_cache\22 zone \22%V\22 is unknown\00", align 1
@ngx_cacheline_size = external global i32
@.str62 = private unnamed_addr constant [23 x i8] c"scgi_hide_headers_hash\00", align 1
@ngx_http_scgi_hide_headers = internal global [7 x %struct.ngx_str_t] [%struct.ngx_str_t { i32 6, i8* getelementptr inbounds ([7 x i8]* @.str71, i32 0, i32 0) }, %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str72, i32 0, i32 0) }, %struct.ngx_str_t { i32 16, i8* getelementptr inbounds ([17 x i8]* @.str73, i32 0, i32 0) }, %struct.ngx_str_t { i32 18, i8* getelementptr inbounds ([19 x i8]* @.str74, i32 0, i32 0) }, %struct.ngx_str_t { i32 17, i8* getelementptr inbounds ([18 x i8]* @.str75, i32 0, i32 0) }, %struct.ngx_str_t { i32 15, i8* getelementptr inbounds ([16 x i8]* @.str76, i32 0, i32 0) }, %struct.ngx_str_t zeroinitializer], align 4
@ngx_http_scgi_cache_headers = internal unnamed_addr constant [7 x %struct.ngx_keyval_t] [%struct.ngx_keyval_t { %struct.ngx_str_t { i32 22, i8* getelementptr inbounds ([23 x i8]* @.str64, i32 0, i32 0) }, %struct.ngx_str_t { i32 0, i8* getelementptr inbounds ([1 x i8]* @.str65, i32 0, i32 0) } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i32 24, i8* getelementptr inbounds ([25 x i8]* @.str66, i32 0, i32 0) }, %struct.ngx_str_t { i32 0, i8* getelementptr inbounds ([1 x i8]* @.str65, i32 0, i32 0) } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i32 18, i8* getelementptr inbounds ([19 x i8]* @.str67, i32 0, i32 0) }, %struct.ngx_str_t { i32 0, i8* getelementptr inbounds ([1 x i8]* @.str65, i32 0, i32 0) } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i32 13, i8* getelementptr inbounds ([14 x i8]* @.str68, i32 0, i32 0) }, %struct.ngx_str_t { i32 0, i8* getelementptr inbounds ([1 x i8]* @.str65, i32 0, i32 0) } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i32 10, i8* getelementptr inbounds ([11 x i8]* @.str69, i32 0, i32 0) }, %struct.ngx_str_t { i32 0, i8* getelementptr inbounds ([1 x i8]* @.str65, i32 0, i32 0) } }, %struct.ngx_keyval_t { %struct.ngx_str_t { i32 13, i8* getelementptr inbounds ([14 x i8]* @.str70, i32 0, i32 0) }, %struct.ngx_str_t { i32 0, i8* getelementptr inbounds ([1 x i8]* @.str65, i32 0, i32 0) } }, %struct.ngx_keyval_t zeroinitializer], align 4
@4 = internal unnamed_addr constant [2 x i8] c"-\00"
@5 = internal unnamed_addr constant [2 x i8] c"+\00"
@6 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@.str63 = private unnamed_addr constant [17 x i8] c"scgi_params_hash\00", align 1
@.str64 = private unnamed_addr constant [23 x i8] c"HTTP_IF_MODIFIED_SINCE\00", align 1
@.str65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str66 = private unnamed_addr constant [25 x i8] c"HTTP_IF_UNMODIFIED_SINCE\00", align 1
@.str67 = private unnamed_addr constant [19 x i8] c"HTTP_IF_NONE_MATCH\00", align 1
@.str68 = private unnamed_addr constant [14 x i8] c"HTTP_IF_MATCH\00", align 1
@.str69 = private unnamed_addr constant [11 x i8] c"HTTP_RANGE\00", align 1
@.str70 = private unnamed_addr constant [14 x i8] c"HTTP_IF_RANGE\00", align 1
@.str71 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str72 = private unnamed_addr constant [16 x i8] c"X-Accel-Expires\00", align 1
@.str73 = private unnamed_addr constant [17 x i8] c"X-Accel-Redirect\00", align 1
@.str74 = private unnamed_addr constant [19 x i8] c"X-Accel-Limit-Rate\00", align 1
@.str75 = private unnamed_addr constant [18 x i8] c"X-Accel-Buffering\00", align 1
@.str76 = private unnamed_addr constant [16 x i8] c"X-Accel-Charset\00", align 1
@.str77 = private unnamed_addr constant [10 x i8] c"scgi_temp\00", align 1
@7 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@8 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@9 = internal unnamed_addr constant [4 x i8] c"int\00"
@10 = internal unnamed_addr constant [11 x i8] c"ngx_msec_t\00"
@11 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@12 = internal unnamed_addr constant [40 x i8] c"src/http/modules/ngx_http_scgi_module.c\00"
@.str78 = private unnamed_addr constant [5 x i8] c"scgi\00", align 1

define internal i8* @ngx_http_scgi_pass(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  %u = alloca %struct.ngx_url_t, align 8
  %sc = alloca %struct.ngx_http_script_compile_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1666), !dbg !2034
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1667), !dbg !2034
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1668), !dbg !2034
  call void @llvm.dbg.declare(metadata !{%struct.ngx_url_t* %u}, metadata !1671), !dbg !2035
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_compile_t* %sc}, metadata !1700), !dbg !2036
  %upstream1 = bitcast i8* %conf to %struct.ngx_http_upstream_srv_conf_s**, !dbg !2037
  %0 = load %struct.ngx_http_upstream_srv_conf_s** %upstream1, align 4, !dbg !2037, !tbaa !2038
  %tobool = icmp eq %struct.ngx_http_upstream_srv_conf_s* %0, null, !dbg !2037
  br i1 %tobool, label %lor.lhs.false, label %return, !dbg !2037

lor.lhs.false:                                    ; preds = %entry
  %scgi_lengths = getelementptr inbounds i8* %conf, i32 204, !dbg !2037
  %1 = bitcast i8* %scgi_lengths to %struct.ngx_array_s**, !dbg !2037
  %2 = load %struct.ngx_array_s** %1, align 4, !dbg !2037, !tbaa !2038
  %tobool2 = icmp eq %struct.ngx_array_s* %2, null, !dbg !2037
  br i1 %tobool2, label %if.end, label %return, !dbg !2037

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2041, !tbaa !2042
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2041
  %4 = load i8** %ctx, align 4, !dbg !2041, !tbaa !2038
  %loc_conf = getelementptr inbounds i8* %4, i32 8, !dbg !2041
  %5 = bitcast i8* %loc_conf to i8***, !dbg !2041
  %6 = load i8*** %5, align 4, !dbg !2041, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %6, i32 %3, !dbg !2041
  %7 = load i8** %arrayidx, align 4, !dbg !2041, !tbaa !2038
  %handler = getelementptr inbounds i8* %7, i32 36, !dbg !2043
  %8 = bitcast i8* %handler to i32 (%struct.ngx_http_request_s*)**, !dbg !2043
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_handler, i32 (%struct.ngx_http_request_s*)** %8, align 4, !dbg !2043, !tbaa !2038
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2044
  %9 = load %struct.ngx_array_s** %args, align 4, !dbg !2044, !tbaa !2038
  %elts = getelementptr inbounds %struct.ngx_array_s* %9, i32 0, i32 0, !dbg !2044
  %10 = load i8** %elts, align 4, !dbg !2044, !tbaa !2038
  %arrayidx3 = getelementptr inbounds i8* %10, i32 8, !dbg !2045
  %11 = bitcast i8* %arrayidx3 to %struct.ngx_str_t*, !dbg !2045
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %11}, i64 0, metadata !1697), !dbg !2045
  %call = call i32 @ngx_http_script_variables_count(%struct.ngx_str_t* %11) nounwind, !dbg !2046
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1698), !dbg !2046
  %tobool4 = icmp eq i32 %call, 0, !dbg !2047
  br i1 %tobool4, label %if.end16, label %if.then5, !dbg !2047

if.then5:                                         ; preds = %if.end
  %12 = bitcast %struct.ngx_http_script_compile_t* %sc to i8*, !dbg !2048
  call void @llvm.memset.p0i8.i32(i8* %12, i8 0, i32 40, i32 4, i1 false), !dbg !2048
  %cf6 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 0, !dbg !2050
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf6, align 4, !dbg !2050, !tbaa !2038
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 1, !dbg !2051
  store %struct.ngx_str_t* %11, %struct.ngx_str_t** %source, align 4, !dbg !2051, !tbaa !2038
  %lengths = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 3, !dbg !2052
  store %struct.ngx_array_s** %1, %struct.ngx_array_s*** %lengths, align 4, !dbg !2052, !tbaa !2038
  %scgi_values = getelementptr inbounds i8* %conf, i32 208, !dbg !2053
  %13 = bitcast i8* %scgi_values to %struct.ngx_array_s**, !dbg !2053
  %values = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 4, !dbg !2053
  store %struct.ngx_array_s** %13, %struct.ngx_array_s*** %values, align 4, !dbg !2053, !tbaa !2038
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 5, !dbg !2054
  store i32 %call, i32* %variables, align 4, !dbg !2054, !tbaa !2042
  %14 = getelementptr %struct.ngx_http_script_compile_t* %sc, i32 0, i32 10, !dbg !2055
  %15 = bitcast i8* %14 to i32*, !dbg !2055
  store i32 6, i32* %15, align 4, !dbg !2056
  %call11 = call i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t* %sc) nounwind, !dbg !2057
  %cmp = icmp eq i32 %call11, 0, !dbg !2057
  %. = select i1 %cmp, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2057
  ret i8* %., !dbg !2057

if.end16:                                         ; preds = %if.end
  %16 = bitcast %struct.ngx_url_t* %u to i8*, !dbg !2058
  call void @llvm.memset.p0i8.i32(i8* %16, i8 0, i32 172, i32 8, i1 false), !dbg !2058
  %17 = bitcast i8* %arrayidx3 to i64*, !dbg !2059
  %18 = bitcast %struct.ngx_url_t* %u to i64*, !dbg !2059
  %19 = load i64* %17, align 4, !dbg !2059
  store i64 %19, i64* %18, align 8, !dbg !2059
  %20 = getelementptr %struct.ngx_url_t* %u, i32 0, i32 7, !dbg !2060
  %21 = bitcast i8* %20 to i32*, !dbg !2060
  store i32 4, i32* %21, align 8, !dbg !2060
  %call24 = call %struct.ngx_http_upstream_srv_conf_s* @ngx_http_upstream_add(%struct.ngx_conf_s* %cf, %struct.ngx_url_t* %u, i32 0) nounwind, !dbg !2061
  store %struct.ngx_http_upstream_srv_conf_s* %call24, %struct.ngx_http_upstream_srv_conf_s** %upstream1, align 4, !dbg !2061, !tbaa !2038
  %cmp29 = icmp eq %struct.ngx_http_upstream_srv_conf_s* %call24, null, !dbg !2062
  br i1 %cmp29, label %return, label %if.end33, !dbg !2062

if.end33:                                         ; preds = %if.end16
  %len = bitcast i8* %7 to i32*, !dbg !2063
  %22 = load i32* %len, align 4, !dbg !2063, !tbaa !2042
  %23 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %22, i32 1), !dbg !2063
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !2063
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !2063
  br i1 %25, label %ioc_bb36, label %cont37, !dbg !2063

ioc_bb36:                                         ; preds = %if.end33
  %26 = zext i32 %22 to i64, !dbg !2063
  call void @__ioc_report_sub_overflow(i32 1021, i32 42, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %26, i64 1, i8 5) nounwind, !dbg !2063
  br label %cont37, !dbg !2063

cont37:                                           ; preds = %if.end33, %ioc_bb36
  %data = getelementptr inbounds i8* %7, i32 4, !dbg !2063
  %27 = bitcast i8* %data to i8**, !dbg !2063
  %28 = load i8** %27, align 4, !dbg !2063, !tbaa !2038
  %arrayidx39 = getelementptr inbounds i8* %28, i32 %24, !dbg !2063
  %29 = load i8* %arrayidx39, align 1, !dbg !2063, !tbaa !2039
  %cmp40 = icmp eq i8 %29, 47, !dbg !2063
  br i1 %cmp40, label %cont44, label %return, !dbg !2063

cont44:                                           ; preds = %cont37
  %bf.field.offs45 = getelementptr i8* %7, i32 12, !dbg !2064
  %30 = bitcast i8* %bf.field.offs45 to i32*, !dbg !2064
  %31 = load i32* %30, align 4, !dbg !2064
  %32 = or i32 %31, 32, !dbg !2064
  store i32 %32, i32* %30, align 4, !dbg !2064
  br label %return, !dbg !2066

return:                                           ; preds = %cont37, %cont44, %if.end16, %entry, %lor.lhs.false
  %retval.0 = phi i8* [ getelementptr inbounds ([13 x i8]* @.str42, i32 0, i32 0), %lor.lhs.false ], [ getelementptr inbounds ([13 x i8]* @.str42, i32 0, i32 0), %entry ], [ inttoptr (i32 -1 to i8*), %if.end16 ], [ null, %cont44 ], [ null, %cont37 ]
  ret i8* %retval.0, !dbg !2067
}

define internal i8* @ngx_http_scgi_store(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  %sc = alloca %struct.ngx_http_script_compile_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1622), !dbg !2068
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1623), !dbg !2068
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1624), !dbg !2068
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_compile_t* %sc}, metadata !1628), !dbg !2069
  %bf.field.offs = getelementptr i8* %conf, i32 164, !dbg !2070
  %0 = bitcast i8* %bf.field.offs to i32*, !dbg !2070
  %1 = load i32* %0, align 4, !dbg !2070
  %.mask = and i32 %1, 3, !dbg !2070
  %cmp = icmp eq i32 %.mask, 3, !dbg !2070
  br i1 %cmp, label %lor.lhs.false, label %return, !dbg !2070

lor.lhs.false:                                    ; preds = %entry
  %store_lengths = getelementptr inbounds i8* %conf, i32 156, !dbg !2070
  %2 = bitcast i8* %store_lengths to %struct.ngx_array_s**, !dbg !2070
  %3 = load %struct.ngx_array_s** %2, align 4, !dbg !2070, !tbaa !2038
  %tobool = icmp eq %struct.ngx_array_s* %3, null, !dbg !2070
  br i1 %tobool, label %if.end, label %return, !dbg !2070

if.end:                                           ; preds = %lor.lhs.false
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2071
  %4 = load %struct.ngx_array_s** %args, align 4, !dbg !2071, !tbaa !2038
  %elts = getelementptr inbounds %struct.ngx_array_s* %4, i32 0, i32 0, !dbg !2071
  %5 = load i8** %elts, align 4, !dbg !2071, !tbaa !2038
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str41 to i32)), !dbg !2072
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !2072
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !2072
  br i1 %8, label %ioc_bb2, label %cont5, !dbg !2072

ioc_bb2:                                          ; preds = %if.end
  call void @__ioc_report_sub_overflow(i32 1036, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str41 to i32) to i64), i8 5) nounwind, !dbg !2072
  br label %cont5, !dbg !2072

cont5:                                            ; preds = %ioc_bb2, %if.end
  %cmp6 = icmp eq i32 %7, 1, !dbg !2072
  %data = getelementptr inbounds i8* %5, i32 12, !dbg !2073
  %9 = bitcast i8* %data to i8**, !dbg !2073
  %10 = load i8** %9, align 4, !dbg !2073, !tbaa !2038
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !2072

cond.true:                                        ; preds = %cont5
  call void @llvm.dbg.value(metadata !2074, i64 0, metadata !1653), !dbg !2072
  call void @llvm.dbg.value(metadata !{i8* %10}, i64 0, metadata !1654), !dbg !2073
  %11 = load i8* %10, align 1, !dbg !2073, !tbaa !2039
  %conv = zext i8 %11 to i32, !dbg !2073
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 111), !dbg !2073
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !2073
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !2073
  br i1 %14, label %ioc_bb12, label %land.lhs.true18, !dbg !2073

ioc_bb12:                                         ; preds = %cond.true
  %15 = zext i8 %11 to i64, !dbg !2073
  call void @__ioc_report_sub_overflow(i32 1036, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %15, i64 111, i8 13) nounwind, !dbg !2073
  br label %land.lhs.true18, !dbg !2073

land.lhs.true18:                                  ; preds = %cond.true, %ioc_bb12
  call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !1656), !dbg !2073
  %cmp19 = icmp eq i32 %13, 0, !dbg !2073
  br i1 %cmp19, label %if.then21, label %if.end63, !dbg !2073

if.then21:                                        ; preds = %land.lhs.true18
  %arrayidx22 = getelementptr inbounds i8* %10, i32 1, !dbg !2075
  %16 = load i8* %arrayidx22, align 1, !dbg !2075, !tbaa !2039
  %conv23 = zext i8 %16 to i32, !dbg !2075
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv23, i32 102), !dbg !2075
  %18 = extractvalue { i32, i1 } %17, 0, !dbg !2075
  %19 = extractvalue { i32, i1 } %17, 1, !dbg !2075
  br i1 %19, label %ioc_bb25, label %land.lhs.true31, !dbg !2075

ioc_bb25:                                         ; preds = %if.then21
  %20 = zext i8 %16 to i64, !dbg !2075
  call void @__ioc_report_sub_overflow(i32 1036, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %20, i64 102, i8 13) nounwind, !dbg !2075
  br label %land.lhs.true31, !dbg !2075

land.lhs.true31:                                  ; preds = %if.then21, %ioc_bb25
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !1656), !dbg !2075
  %cmp32 = icmp eq i32 %18, 0, !dbg !2075
  br i1 %cmp32, label %if.then34, label %if.end63, !dbg !2075

if.then34:                                        ; preds = %land.lhs.true31
  %arrayidx35 = getelementptr inbounds i8* %10, i32 2, !dbg !2077
  %21 = load i8* %arrayidx35, align 1, !dbg !2077, !tbaa !2039
  %conv36 = zext i8 %21 to i32, !dbg !2077
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv36, i32 102), !dbg !2077
  %23 = extractvalue { i32, i1 } %22, 0, !dbg !2077
  %24 = extractvalue { i32, i1 } %22, 1, !dbg !2077
  br i1 %24, label %ioc_bb38, label %land.lhs.true44, !dbg !2077

ioc_bb38:                                         ; preds = %if.then34
  %25 = zext i8 %21 to i64, !dbg !2077
  call void @__ioc_report_sub_overflow(i32 1036, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %25, i64 102, i8 13) nounwind, !dbg !2077
  br label %land.lhs.true44, !dbg !2077

land.lhs.true44:                                  ; preds = %if.then34, %ioc_bb38
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !1656), !dbg !2077
  %cmp45 = icmp eq i32 %23, 0, !dbg !2077
  br i1 %cmp45, label %if.then47, label %if.end63, !dbg !2077

if.then47:                                        ; preds = %land.lhs.true44
  %arrayidx48 = getelementptr inbounds i8* %10, i32 3, !dbg !2077
  %26 = load i8* %arrayidx48, align 1, !dbg !2077, !tbaa !2039
  %conv49 = zext i8 %26 to i32, !dbg !2077
  call void @llvm.dbg.value(metadata !{i32 %conv49}, i64 0, metadata !1656), !dbg !2077
  br label %cond.end, !dbg !2077

cond.false:                                       ; preds = %cont5
  %call = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0)) nounwind, !dbg !2077
  br label %cond.end, !dbg !2077

cond.end:                                         ; preds = %if.then47, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ %conv49, %if.then47 ], !dbg !2077
  %cmp58 = icmp eq i32 %cond, 0, !dbg !2077
  br i1 %cmp58, label %if.then60, label %if.end63, !dbg !2077

if.then60:                                        ; preds = %cond.end
  %27 = load i32* %0, align 4, !dbg !2079
  %28 = and i32 %27, -4, !dbg !2079
  store i32 %28, i32* %0, align 4, !dbg !2079
  br label %return, !dbg !2081

if.end63:                                         ; preds = %land.lhs.true18, %land.lhs.true31, %land.lhs.true44, %cond.end
  %cache = getelementptr inbounds i8* %conf, i32 120, !dbg !2082
  %29 = bitcast i8* %cache to %struct.ngx_shm_zone_s**, !dbg !2082
  %30 = load %struct.ngx_shm_zone_s** %29, align 4, !dbg !2082, !tbaa !2038
  %magicptr = ptrtoint %struct.ngx_shm_zone_s* %30 to i32, !dbg !2082
  switch i32 %magicptr, label %return [
    i32 -1, label %if.end75
    i32 0, label %if.end75
  ], !dbg !2082

if.end75:                                         ; preds = %if.end63, %if.end63
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 1) to i32), i32 ptrtoint ([3 x i8]* @.str45 to i32)), !dbg !2083
  %32 = extractvalue { i32, i1 } %31, 0, !dbg !2083
  %33 = extractvalue { i32, i1 } %31, 1, !dbg !2083
  br i1 %33, label %ioc_bb78, label %cont81, !dbg !2083

ioc_bb78:                                         ; preds = %if.end75
  call void @__ioc_report_sub_overflow(i32 1045, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([3 x i8]* @.str45 to i32) to i64), i8 5) nounwind, !dbg !2083
  br label %cont81, !dbg !2083

cont81:                                           ; preds = %if.end75, %ioc_bb78
  %cmp82 = icmp eq i32 %32, 1, !dbg !2083
  %34 = load i8** %9, align 4, !dbg !2084, !tbaa !2038
  br i1 %cmp82, label %cond.true89, label %cond.false141, !dbg !2083

cond.true89:                                      ; preds = %cont81
  call void @llvm.dbg.value(metadata !2085, i64 0, metadata !1659), !dbg !2083
  call void @llvm.dbg.value(metadata !{i8* %34}, i64 0, metadata !1660), !dbg !2084
  %35 = load i8* %34, align 1, !dbg !2084, !tbaa !2039
  %conv95 = zext i8 %35 to i32, !dbg !2084
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv95, i32 111), !dbg !2084
  %37 = extractvalue { i32, i1 } %36, 0, !dbg !2084
  %38 = extractvalue { i32, i1 } %36, 1, !dbg !2084
  br i1 %38, label %ioc_bb97, label %land.lhs.true103, !dbg !2084

ioc_bb97:                                         ; preds = %cond.true89
  %39 = zext i8 %35 to i64, !dbg !2084
  call void @__ioc_report_sub_overflow(i32 1045, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %39, i64 111, i8 13) nounwind, !dbg !2084
  br label %land.lhs.true103, !dbg !2084

land.lhs.true103:                                 ; preds = %cond.true89, %ioc_bb97
  call void @llvm.dbg.value(metadata !{i32 %37}, i64 0, metadata !1662), !dbg !2084
  %cmp104 = icmp eq i32 %37, 0, !dbg !2084
  br i1 %cmp104, label %if.then106, label %if.end152, !dbg !2084

if.then106:                                       ; preds = %land.lhs.true103
  %arrayidx107 = getelementptr inbounds i8* %34, i32 1, !dbg !2086
  %40 = load i8* %arrayidx107, align 1, !dbg !2086, !tbaa !2039
  %conv108 = zext i8 %40 to i32, !dbg !2086
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv108, i32 110), !dbg !2086
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2086
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !2086
  br i1 %43, label %ioc_bb110, label %land.lhs.true116, !dbg !2086

ioc_bb110:                                        ; preds = %if.then106
  %44 = zext i8 %40 to i64, !dbg !2086
  call void @__ioc_report_sub_overflow(i32 1045, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %44, i64 110, i8 13) nounwind, !dbg !2086
  br label %land.lhs.true116, !dbg !2086

land.lhs.true116:                                 ; preds = %if.then106, %ioc_bb110
  call void @llvm.dbg.value(metadata !{i32 %42}, i64 0, metadata !1662), !dbg !2086
  %cmp117 = icmp eq i32 %42, 0, !dbg !2086
  br i1 %cmp117, label %if.then119, label %if.end152, !dbg !2086

if.then119:                                       ; preds = %land.lhs.true116
  %arrayidx120 = getelementptr inbounds i8* %34, i32 2, !dbg !2088
  %45 = load i8* %arrayidx120, align 1, !dbg !2088, !tbaa !2039
  %conv121 = zext i8 %45 to i32, !dbg !2088
  call void @llvm.dbg.value(metadata !{i32 %conv121}, i64 0, metadata !1662), !dbg !2088
  br label %cond.end145, !dbg !2088

cond.false141:                                    ; preds = %cont81
  %call144 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8]* @.str45, i32 0, i32 0)) nounwind, !dbg !2088
  br label %cond.end145, !dbg !2088

cond.end145:                                      ; preds = %if.then119, %cond.false141
  %cond146 = phi i32 [ %call144, %cond.false141 ], [ %conv121, %if.then119 ], !dbg !2088
  %cmp147 = icmp eq i32 %cond146, 0, !dbg !2088
  br i1 %cmp147, label %if.then149, label %if.end152, !dbg !2088

if.then149:                                       ; preds = %cond.end145
  %46 = load i32* %0, align 4, !dbg !2090
  %47 = and i32 %46, -4, !dbg !2090
  %48 = or i32 %47, 1, !dbg !2090
  store i32 %48, i32* %0, align 4, !dbg !2090
  br label %return, !dbg !2092

if.end152:                                        ; preds = %land.lhs.true103, %land.lhs.true116, %cond.end145
  %arrayidx153 = getelementptr inbounds i8* %5, i32 8, !dbg !2093
  %49 = bitcast i8* %arrayidx153 to %struct.ngx_str_t*, !dbg !2093
  %len = bitcast i8* %arrayidx153 to i32*, !dbg !2093
  %50 = load i32* %len, align 4, !dbg !2093, !tbaa !2042
  %51 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %50, i32 1), !dbg !2093
  %52 = extractvalue { i32, i1 } %51, 0, !dbg !2093
  %53 = extractvalue { i32, i1 } %51, 1, !dbg !2093
  br i1 %53, label %ioc_bb154, label %cont155, !dbg !2093

ioc_bb154:                                        ; preds = %if.end152
  %54 = zext i32 %50 to i64, !dbg !2093
  call void @__ioc_report_add_overflow(i32 1050, i32 15, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %54, i64 1, i8 5) nounwind, !dbg !2093
  br label %cont155, !dbg !2093

cont155:                                          ; preds = %if.end152, %ioc_bb154
  store i32 %52, i32* %len, align 4, !dbg !2093, !tbaa !2042
  %55 = bitcast %struct.ngx_http_script_compile_t* %sc to i8*, !dbg !2094
  call void @llvm.memset.p0i8.i32(i8* %55, i8 0, i32 40, i32 4, i1 false), !dbg !2094
  %cf156 = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 0, !dbg !2095
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf156, align 4, !dbg !2095, !tbaa !2038
  %source = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 1, !dbg !2096
  store %struct.ngx_str_t* %49, %struct.ngx_str_t** %source, align 4, !dbg !2096, !tbaa !2038
  %lengths = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 3, !dbg !2097
  store %struct.ngx_array_s** %2, %struct.ngx_array_s*** %lengths, align 4, !dbg !2097, !tbaa !2038
  %store_values = getelementptr inbounds i8* %conf, i32 160, !dbg !2098
  %56 = bitcast i8* %store_values to %struct.ngx_array_s**, !dbg !2098
  %values = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 4, !dbg !2098
  store %struct.ngx_array_s** %56, %struct.ngx_array_s*** %values, align 4, !dbg !2098, !tbaa !2038
  %call162 = call i32 @ngx_http_script_variables_count(%struct.ngx_str_t* %49) nounwind, !dbg !2099
  %variables = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc, i32 0, i32 5, !dbg !2099
  store i32 %call162, i32* %variables, align 4, !dbg !2099, !tbaa !2042
  %57 = getelementptr %struct.ngx_http_script_compile_t* %sc, i32 0, i32 10, !dbg !2100
  %58 = bitcast i8* %57 to i32*, !dbg !2100
  store i32 6, i32* %58, align 4, !dbg !2101
  %call169 = call i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t* %sc) nounwind, !dbg !2102
  %cmp170 = icmp eq i32 %call169, 0, !dbg !2102
  %. = select i1 %cmp170, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2102
  ret i8* %., !dbg !2102

return:                                           ; preds = %if.end63, %entry, %lor.lhs.false, %if.then149, %if.then60
  %retval.0 = phi i8* [ null, %if.then60 ], [ null, %if.then149 ], [ getelementptr inbounds ([13 x i8]* @.str42, i32 0, i32 0), %lor.lhs.false ], [ getelementptr inbounds ([13 x i8]* @.str42, i32 0, i32 0), %entry ], [ getelementptr inbounds ([34 x i8]* @.str44, i32 0, i32 0), %if.end63 ]
  ret i8* %retval.0, !dbg !2103
}

declare i8* @ngx_conf_set_access_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_flag_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_http_upstream_bind_set_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_msec_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_size_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_bufs_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

define internal i8* @ngx_http_scgi_cache(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1607), !dbg !2104
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1608), !dbg !2104
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1609), !dbg !2104
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2105
  %0 = load %struct.ngx_array_s** %args, align 4, !dbg !2105, !tbaa !2038
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !2105
  %1 = load i8** %elts, align 4, !dbg !2105, !tbaa !2038
  %cache = getelementptr inbounds i8* %conf, i32 120, !dbg !2106
  %2 = bitcast i8* %cache to %struct.ngx_shm_zone_s**, !dbg !2106
  %3 = load %struct.ngx_shm_zone_s** %2, align 4, !dbg !2106, !tbaa !2038
  %cmp = icmp eq %struct.ngx_shm_zone_s* %3, inttoptr (i32 -1 to %struct.ngx_shm_zone_s*), !dbg !2106
  br i1 %cmp, label %if.end, label %return, !dbg !2106

if.end:                                           ; preds = %entry
  %4 = tail call { i32, i1 } @llvm.usub.with.overflow.i32(i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 1) to i32), i32 ptrtoint ([4 x i8]* @.str41 to i32)), !dbg !2107
  %5 = extractvalue { i32, i1 } %4, 0, !dbg !2107
  %6 = extractvalue { i32, i1 } %4, 1, !dbg !2107
  br i1 %6, label %ioc_bb1, label %cont4, !dbg !2107

ioc_bb1:                                          ; preds = %if.end
  tail call void @__ioc_report_sub_overflow(i32 1075, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 zext (i32 ptrtoint (i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 1) to i32) to i64), i64 zext (i32 ptrtoint ([4 x i8]* @.str41 to i32) to i64), i8 5) nounwind, !dbg !2107
  br label %cont4, !dbg !2107

cont4:                                            ; preds = %ioc_bb1, %if.end
  %cmp5 = icmp eq i32 %5, 1, !dbg !2107
  %data = getelementptr inbounds i8* %1, i32 12, !dbg !2108
  %7 = bitcast i8* %data to i8**, !dbg !2108
  %8 = load i8** %7, align 4, !dbg !2108, !tbaa !2038
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !2107

cond.true:                                        ; preds = %cont4
  tail call void @llvm.dbg.value(metadata !2074, i64 0, metadata !1615), !dbg !2107
  tail call void @llvm.dbg.value(metadata !{i8* %8}, i64 0, metadata !1616), !dbg !2108
  %9 = load i8* %8, align 1, !dbg !2108, !tbaa !2039
  %conv = zext i8 %9 to i32, !dbg !2108
  %10 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv, i32 111), !dbg !2108
  %11 = extractvalue { i32, i1 } %10, 0, !dbg !2108
  %12 = extractvalue { i32, i1 } %10, 1, !dbg !2108
  br i1 %12, label %ioc_bb11, label %land.lhs.true17, !dbg !2108

ioc_bb11:                                         ; preds = %cond.true
  %13 = zext i8 %9 to i64, !dbg !2108
  tail call void @__ioc_report_sub_overflow(i32 1075, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %13, i64 111, i8 13) nounwind, !dbg !2108
  br label %land.lhs.true17, !dbg !2108

land.lhs.true17:                                  ; preds = %cond.true, %ioc_bb11
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !1618), !dbg !2108
  %cmp18 = icmp eq i32 %11, 0, !dbg !2108
  br i1 %cmp18, label %if.then20, label %if.end62, !dbg !2108

if.then20:                                        ; preds = %land.lhs.true17
  %arrayidx21 = getelementptr inbounds i8* %8, i32 1, !dbg !2109
  %14 = load i8* %arrayidx21, align 1, !dbg !2109, !tbaa !2039
  %conv22 = zext i8 %14 to i32, !dbg !2109
  %15 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv22, i32 102), !dbg !2109
  %16 = extractvalue { i32, i1 } %15, 0, !dbg !2109
  %17 = extractvalue { i32, i1 } %15, 1, !dbg !2109
  br i1 %17, label %ioc_bb24, label %land.lhs.true30, !dbg !2109

ioc_bb24:                                         ; preds = %if.then20
  %18 = zext i8 %14 to i64, !dbg !2109
  tail call void @__ioc_report_sub_overflow(i32 1075, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %18, i64 102, i8 13) nounwind, !dbg !2109
  br label %land.lhs.true30, !dbg !2109

land.lhs.true30:                                  ; preds = %if.then20, %ioc_bb24
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !1618), !dbg !2109
  %cmp31 = icmp eq i32 %16, 0, !dbg !2109
  br i1 %cmp31, label %if.then33, label %if.end62, !dbg !2109

if.then33:                                        ; preds = %land.lhs.true30
  %arrayidx34 = getelementptr inbounds i8* %8, i32 2, !dbg !2111
  %19 = load i8* %arrayidx34, align 1, !dbg !2111, !tbaa !2039
  %conv35 = zext i8 %19 to i32, !dbg !2111
  %20 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %conv35, i32 102), !dbg !2111
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !2111
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !2111
  br i1 %22, label %ioc_bb37, label %land.lhs.true43, !dbg !2111

ioc_bb37:                                         ; preds = %if.then33
  %23 = zext i8 %19 to i64, !dbg !2111
  tail call void @__ioc_report_sub_overflow(i32 1075, i32 7, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %23, i64 102, i8 13) nounwind, !dbg !2111
  br label %land.lhs.true43, !dbg !2111

land.lhs.true43:                                  ; preds = %if.then33, %ioc_bb37
  tail call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !1618), !dbg !2111
  %cmp44 = icmp eq i32 %21, 0, !dbg !2111
  br i1 %cmp44, label %if.then46, label %if.end62, !dbg !2111

if.then46:                                        ; preds = %land.lhs.true43
  %arrayidx47 = getelementptr inbounds i8* %8, i32 3, !dbg !2111
  %24 = load i8* %arrayidx47, align 1, !dbg !2111, !tbaa !2039
  %conv48 = zext i8 %24 to i32, !dbg !2111
  tail call void @llvm.dbg.value(metadata !{i32 %conv48}, i64 0, metadata !1618), !dbg !2111
  br label %cond.end, !dbg !2111

cond.false:                                       ; preds = %cont4
  %call = tail call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str41, i32 0, i32 0)) nounwind, !dbg !2111
  br label %cond.end, !dbg !2111

cond.end:                                         ; preds = %if.then46, %cond.false
  %cond = phi i32 [ %call, %cond.false ], [ %conv48, %if.then46 ], !dbg !2111
  %cmp57 = icmp eq i32 %cond, 0, !dbg !2111
  br i1 %cmp57, label %if.then59, label %if.end62, !dbg !2111

if.then59:                                        ; preds = %cond.end
  store %struct.ngx_shm_zone_s* null, %struct.ngx_shm_zone_s** %2, align 4, !dbg !2113, !tbaa !2038
  br label %return, !dbg !2115

if.end62:                                         ; preds = %land.lhs.true17, %land.lhs.true30, %land.lhs.true43, %cond.end
  %bf.field.offs = getelementptr i8* %conf, i32 164, !dbg !2116
  %25 = bitcast i8* %bf.field.offs to i32*, !dbg !2116
  %26 = load i32* %25, align 4, !dbg !2116
  %27 = shl i32 %26, 30, !dbg !2116
  %cmp64 = icmp sgt i32 %27, 0, !dbg !2116
  br i1 %cmp64, label %return, label %lor.lhs.false, !dbg !2116

lor.lhs.false:                                    ; preds = %if.end62
  %store_lengths = getelementptr inbounds i8* %conf, i32 156, !dbg !2116
  %28 = bitcast i8* %store_lengths to %struct.ngx_array_s**, !dbg !2116
  %29 = load %struct.ngx_array_s** %28, align 4, !dbg !2116, !tbaa !2038
  %tobool = icmp eq %struct.ngx_array_s* %29, null, !dbg !2116
  br i1 %tobool, label %cont71, label %return, !dbg !2116

cont71:                                           ; preds = %lor.lhs.false
  %arrayidx69 = getelementptr inbounds i8* %1, i32 8, !dbg !2117
  %30 = bitcast i8* %arrayidx69 to %struct.ngx_str_t*, !dbg !2117
  %call72 = tail call %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* %30, i32 0, i8* bitcast (%struct.ngx_module_s* @ngx_http_scgi_module to i8*)) nounwind, !dbg !2117
  store %struct.ngx_shm_zone_s* %call72, %struct.ngx_shm_zone_s** %2, align 4, !dbg !2117, !tbaa !2038
  %cmp77 = icmp eq %struct.ngx_shm_zone_s* %call72, null, !dbg !2118
  %. = select i1 %cmp77, i8* inttoptr (i32 -1 to i8*), i8* null, !dbg !2118
  ret i8* %., !dbg !2118

return:                                           ; preds = %if.end62, %lor.lhs.false, %entry, %if.then59
  %retval.0 = phi i8* [ null, %if.then59 ], [ getelementptr inbounds ([13 x i8]* @.str42, i32 0, i32 0), %entry ], [ getelementptr inbounds ([34 x i8]* @.str43, i32 0, i32 0), %lor.lhs.false ], [ getelementptr inbounds ([34 x i8]* @.str43, i32 0, i32 0), %if.end62 ]
  ret i8* %retval.0, !dbg !2119
}

define internal i8* @ngx_http_scgi_cache_key(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* %conf) nounwind {
entry:
  %ccv = alloca %struct.ngx_http_compile_complex_value_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !459), !dbg !2120
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !460), !dbg !2120
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !461), !dbg !2120
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_compile_complex_value_t* %ccv}, metadata !1594), !dbg !2121
  %cache_key = getelementptr inbounds i8* %conf, i32 212, !dbg !2122
  %len = bitcast i8* %cache_key to i32*, !dbg !2122
  %0 = load i32* %len, align 4, !dbg !2122, !tbaa !2042
  %tobool = icmp eq i32 %0, 0, !dbg !2122
  br i1 %tobool, label %if.end, label %return, !dbg !2122

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2123
  %1 = load %struct.ngx_array_s** %args, align 4, !dbg !2123, !tbaa !2038
  %elts = getelementptr inbounds %struct.ngx_array_s* %1, i32 0, i32 0, !dbg !2123
  %2 = load i8** %elts, align 4, !dbg !2123, !tbaa !2038
  %3 = bitcast i8* %cache_key to %struct.ngx_http_complex_value_t*, !dbg !2122
  %4 = bitcast %struct.ngx_http_compile_complex_value_t* %ccv to i8*, !dbg !2124
  call void @llvm.memset.p0i8.i32(i8* %4, i8 0, i32 16, i32 4, i1 false), !dbg !2124
  %cf2 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 0, !dbg !2125
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf2, align 4, !dbg !2125, !tbaa !2038
  %arrayidx = getelementptr inbounds i8* %2, i32 8, !dbg !2126
  %5 = bitcast i8* %arrayidx to %struct.ngx_str_t*, !dbg !2126
  %value3 = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 1, !dbg !2126
  store %struct.ngx_str_t* %5, %struct.ngx_str_t** %value3, align 4, !dbg !2126, !tbaa !2038
  %complex_value = getelementptr inbounds %struct.ngx_http_compile_complex_value_t* %ccv, i32 0, i32 2, !dbg !2127
  store %struct.ngx_http_complex_value_t* %3, %struct.ngx_http_complex_value_t** %complex_value, align 4, !dbg !2127, !tbaa !2038
  %call = call i32 @ngx_http_compile_complex_value(%struct.ngx_http_compile_complex_value_t* %ccv) nounwind, !dbg !2128
  %cmp = icmp eq i32 %call, 0, !dbg !2128
  %. = select i1 %cmp, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2128
  ret i8* %., !dbg !2128

return:                                           ; preds = %entry
  ret i8* getelementptr inbounds ([13 x i8]* @.str42, i32 0, i32 0), !dbg !2129
}

declare i8* @ngx_http_file_cache_set_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_http_set_predicate_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_http_file_cache_valid_set_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_num_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_bitmask_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_path_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_http_upstream_param_set_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare i8* @ngx_conf_set_str_array_slot(%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare i32 @ngx_http_compile_complex_value(%struct.ngx_http_compile_complex_value_t*)

declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare %struct.ngx_shm_zone_s* @ngx_shared_memory_add(%struct.ngx_conf_s*, %struct.ngx_str_t*, i32, i8*)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @ngx_http_script_variables_count(%struct.ngx_str_t*)

declare i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t*)

define internal i32 @ngx_http_scgi_handler(%struct.ngx_http_request_s* %r) nounwind {
entry:
  %url.i = alloca %struct.ngx_url_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1704), !dbg !2130
  %0 = bitcast %struct.ngx_http_request_s* %r to i8*, !dbg !2131
  %1 = getelementptr %struct.ngx_http_request_s* %r, i32 0, i32 53, !dbg !2131
  %2 = bitcast i8* %1 to i32*, !dbg !2131
  %3 = load i32* %2, align 4, !dbg !2131
  %bf.clear = and i32 %3, 262144, !dbg !2131
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2131
  br i1 %tobool, label %if.end6, label %if.then, !dbg !2131

if.then:                                          ; preds = %entry
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2132
  %4 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2132, !tbaa !2038
  %log = getelementptr inbounds %struct.ngx_connection_s* %4, i32 0, i32 10, !dbg !2132
  %5 = load %struct.ngx_log_s** %log, align 4, !dbg !2132, !tbaa !2038
  %log_level = getelementptr inbounds %struct.ngx_log_s* %5, i32 0, i32 0, !dbg !2132
  %6 = load i32* %log_level, align 4, !dbg !2132, !tbaa !2042
  %cmp = icmp ugt i32 %6, 1, !dbg !2132
  br i1 %cmp, label %cont3, label %return, !dbg !2132

cont3:                                            ; preds = %if.then
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 2, %struct.ngx_log_s* %5, i32 0, i8* getelementptr inbounds ([60 x i8]* @.str46, i32 0, i32 0)) nounwind, !dbg !2134
  br label %return, !dbg !2134

if.end6:                                          ; preds = %entry
  %call = call i32 @ngx_http_upstream_create(%struct.ngx_http_request_s* %r) nounwind, !dbg !2135
  %cmp7 = icmp eq i32 %call, 0, !dbg !2135
  br i1 %cmp7, label %if.end9, label %return, !dbg !2135

if.end9:                                          ; preds = %if.end6
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2136
  %7 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2136, !tbaa !2038
  %call10 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %7, i32 20) nounwind, !dbg !2136
  %cmp11 = icmp eq i8* %call10, null, !dbg !2137
  br i1 %cmp11, label %return, label %if.end13, !dbg !2137

if.end13:                                         ; preds = %if.end9
  %8 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_scgi_module, i32 0, i32 0), align 4, !dbg !2138, !tbaa !2042
  %ctx = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !2138
  %9 = load i8*** %ctx, align 4, !dbg !2138, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %9, i32 %8, !dbg !2138
  store i8* %call10, i8** %arrayidx, align 4, !dbg !2138, !tbaa !2038
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2139
  %10 = load i8*** %loc_conf, align 4, !dbg !2139, !tbaa !2038
  %arrayidx14 = getelementptr inbounds i8** %10, i32 %8, !dbg !2139
  %11 = load i8** %arrayidx14, align 4, !dbg !2139, !tbaa !2038
  %scgi_lengths = getelementptr inbounds i8* %11, i32 204, !dbg !2140
  %12 = bitcast i8* %scgi_lengths to %struct.ngx_array_s**, !dbg !2140
  %13 = load %struct.ngx_array_s** %12, align 4, !dbg !2140, !tbaa !2038
  %tobool15 = icmp eq %struct.ngx_array_s* %13, null, !dbg !2140
  br i1 %tobool15, label %if.end13.if.end21_crit_edge, label %if.then16, !dbg !2140

if.end13.if.end21_crit_edge:                      ; preds = %if.end13
  %upstream.pre = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !2141
  br label %if.end21, !dbg !2140

if.then16:                                        ; preds = %if.end13
  %14 = bitcast %struct.ngx_url_t* %url.i to i8*, !dbg !2142
  call void @llvm.lifetime.start(i64 -1, i8* %14) nounwind, !dbg !2142
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !2145) nounwind, !dbg !2142
  call void @llvm.dbg.declare(metadata !{%struct.ngx_url_t* %url.i}, metadata !1846) nounwind, !dbg !2146
  call void @llvm.memset.p0i8.i32(i8* %14, i8 0, i32 172, i32 4, i1 false) nounwind, !dbg !2147
  %url1.i = getelementptr inbounds %struct.ngx_url_t* %url.i, i32 0, i32 0, !dbg !2148
  %15 = load %struct.ngx_array_s** %12, align 4, !dbg !2148, !tbaa !2038
  %elts.i = getelementptr inbounds %struct.ngx_array_s* %15, i32 0, i32 0, !dbg !2148
  %16 = load i8** %elts.i, align 4, !dbg !2148, !tbaa !2038
  %scgi_values.i = getelementptr inbounds i8* %11, i32 208, !dbg !2148
  %17 = bitcast i8* %scgi_values.i to %struct.ngx_array_s**, !dbg !2148
  %18 = load %struct.ngx_array_s** %17, align 4, !dbg !2148, !tbaa !2038
  %elts2.i = getelementptr inbounds %struct.ngx_array_s* %18, i32 0, i32 0, !dbg !2148
  %19 = load i8** %elts2.i, align 4, !dbg !2148, !tbaa !2038
  %call.i = call i8* @ngx_http_script_run(%struct.ngx_http_request_s* %r, %struct.ngx_str_t* %url1.i, i8* %16, i32 0, i8* %19) nounwind, !dbg !2148
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2148
  br i1 %cmp.i, label %return, label %cont6.i, !dbg !2148

cont6.i:                                          ; preds = %if.then16
  %20 = getelementptr %struct.ngx_url_t* %url.i, i32 0, i32 7, !dbg !2149
  %21 = bitcast i8* %20 to i32*, !dbg !2149
  %22 = load i32* %21, align 4, !dbg !2149
  %23 = or i32 %22, 4, !dbg !2149
  store i32 %23, i32* %21, align 4, !dbg !2149
  %24 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2150, !tbaa !2038
  %call7.i = call i32 @ngx_parse_url(%struct.ngx_pool_s* %24, %struct.ngx_url_t* %url.i) nounwind, !dbg !2150
  %cmp8.i = icmp eq i32 %call7.i, 0, !dbg !2150
  br i1 %cmp8.i, label %if.end25.i, label %if.then9.i, !dbg !2150

if.then9.i:                                       ; preds = %cont6.i
  %err.i = getelementptr inbounds %struct.ngx_url_t* %url.i, i32 0, i32 12, !dbg !2151
  %25 = load i8** %err.i, align 4, !dbg !2151, !tbaa !2038
  %tobool.i = icmp eq i8* %25, null, !dbg !2151
  br i1 %tobool.i, label %return, label %if.then10.i, !dbg !2151

if.then10.i:                                      ; preds = %if.then9.i
  %connection.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2153
  %26 = load %struct.ngx_connection_s** %connection.i, align 4, !dbg !2153, !tbaa !2038
  %log.i = getelementptr inbounds %struct.ngx_connection_s* %26, i32 0, i32 10, !dbg !2153
  %27 = load %struct.ngx_log_s** %log.i, align 4, !dbg !2153, !tbaa !2038
  %log_level.i = getelementptr inbounds %struct.ngx_log_s* %27, i32 0, i32 0, !dbg !2153
  %28 = load i32* %log_level.i, align 4, !dbg !2153, !tbaa !2042
  %cmp13.i = icmp ugt i32 %28, 3, !dbg !2153
  br i1 %cmp13.i, label %cont16.i, label %return, !dbg !2153

cont16.i:                                         ; preds = %if.then10.i
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %27, i32 0, i8* getelementptr inbounds ([20 x i8]* @.str55, i32 0, i32 0), i8* %25, %struct.ngx_str_t* %url1.i) nounwind, !dbg !2155
  br label %return, !dbg !2155

if.end25.i:                                       ; preds = %cont6.i
  %upstream.i = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !2156
  %29 = load %struct.ngx_http_upstream_s** %upstream.i, align 4, !dbg !2156, !tbaa !2038
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %29}, i64 0, metadata !2157) nounwind, !dbg !2156
  %30 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2158, !tbaa !2038
  %call27.i = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %30, i32 36) nounwind, !dbg !2158
  %31 = bitcast i8* %call27.i to %struct.ngx_http_upstream_resolved_t*, !dbg !2158
  %resolved.i = getelementptr inbounds %struct.ngx_http_upstream_s* %29, i32 0, i32 9, !dbg !2158
  store %struct.ngx_http_upstream_resolved_t* %31, %struct.ngx_http_upstream_resolved_t** %resolved.i, align 4, !dbg !2158, !tbaa !2038
  %cmp29.i = icmp eq i8* %call27.i, null, !dbg !2159
  br i1 %cmp29.i, label %return, label %if.end33.i, !dbg !2159

if.end33.i:                                       ; preds = %if.end25.i
  %addrs.i = getelementptr inbounds %struct.ngx_url_t* %url.i, i32 0, i32 10, !dbg !2160
  %32 = load %struct.ngx_addr_t** %addrs.i, align 4, !dbg !2160, !tbaa !2038
  %tobool34.i = icmp eq %struct.ngx_addr_t* %32, null, !dbg !2160
  br i1 %tobool34.i, label %if.else.i, label %land.lhs.true.i, !dbg !2160

land.lhs.true.i:                                  ; preds = %if.end33.i
  %sockaddr.i = getelementptr inbounds %struct.ngx_addr_t* %32, i32 0, i32 0, !dbg !2160
  %33 = load %struct.sockaddr** %sockaddr.i, align 4, !dbg !2160, !tbaa !2038
  %tobool36.i = icmp eq %struct.sockaddr* %33, null, !dbg !2160
  br i1 %tobool36.i, label %if.else.i, label %if.then37.i, !dbg !2160

if.then37.i:                                      ; preds = %land.lhs.true.i
  %sockaddr42.i = getelementptr inbounds i8* %call27.i, i32 24, !dbg !2161
  %34 = bitcast i8* %sockaddr42.i to %struct.sockaddr**, !dbg !2161
  store %struct.sockaddr* %33, %struct.sockaddr** %34, align 4, !dbg !2161, !tbaa !2038
  %35 = load %struct.ngx_addr_t** %addrs.i, align 4, !dbg !2163, !tbaa !2038
  %socklen.i = getelementptr inbounds %struct.ngx_addr_t* %35, i32 0, i32 1, !dbg !2163
  %36 = load i32* %socklen.i, align 4, !dbg !2163, !tbaa !2042
  %37 = load %struct.ngx_http_upstream_resolved_t** %resolved.i, align 4, !dbg !2163, !tbaa !2038
  %socklen46.i = getelementptr inbounds %struct.ngx_http_upstream_resolved_t* %37, i32 0, i32 6, !dbg !2163
  store i32 %36, i32* %socklen46.i, align 4, !dbg !2163, !tbaa !2042
  %naddrs.i = getelementptr inbounds %struct.ngx_http_upstream_resolved_t* %37, i32 0, i32 3, !dbg !2164
  store i32 1, i32* %naddrs.i, align 4, !dbg !2164, !tbaa !2042
  %name.i = getelementptr inbounds %struct.ngx_addr_t* %35, i32 0, i32 2, !dbg !2165
  %38 = bitcast %struct.ngx_str_t* %name.i to i64*, !dbg !2165
  %39 = bitcast %struct.ngx_http_upstream_resolved_t* %37 to i64*, !dbg !2165
  %40 = load i64* %38, align 4, !dbg !2165
  store i64 %40, i64* %39, align 4, !dbg !2165
  br label %if.end21, !dbg !2166

if.else.i:                                        ; preds = %land.lhs.true.i, %if.end33.i
  %host55.i = getelementptr inbounds %struct.ngx_url_t* %url.i, i32 0, i32 1, !dbg !2167
  %41 = bitcast %struct.ngx_str_t* %host55.i to i64*, !dbg !2167
  %42 = bitcast i8* %call27.i to i64*, !dbg !2167
  %43 = load i64* %41, align 4, !dbg !2167
  store i64 %43, i64* %42, align 4, !dbg !2167
  %port.i = getelementptr inbounds %struct.ngx_url_t* %url.i, i32 0, i32 4, !dbg !2169
  %44 = load i16* %port.i, align 4, !dbg !2169, !tbaa !2170
  %45 = load %struct.ngx_http_upstream_resolved_t** %resolved.i, align 4, !dbg !2169, !tbaa !2038
  %port57.i = getelementptr inbounds %struct.ngx_http_upstream_resolved_t* %45, i32 0, i32 1, !dbg !2169
  store i16 %44, i16* %port57.i, align 2, !dbg !2169, !tbaa !2170
  %46 = load i32* %21, align 4, !dbg !2171
  %47 = lshr i32 %46, 4, !dbg !2171
  %bf.clear.i = and i32 %47, 1, !dbg !2171
  %no_port.i = getelementptr inbounds %struct.ngx_http_upstream_resolved_t* %45, i32 0, i32 2, !dbg !2171
  store i32 %bf.clear.i, i32* %no_port.i, align 4, !dbg !2171, !tbaa !2042
  br label %if.end21

if.end21:                                         ; preds = %if.end13.if.end21_crit_edge, %if.then37.i, %if.else.i
  %upstream.pre-phi = phi %struct.ngx_http_upstream_s** [ %upstream.pre, %if.end13.if.end21_crit_edge ], [ %upstream.i, %if.then37.i ], [ %upstream.i, %if.else.i ], !dbg !2141
  %48 = load %struct.ngx_http_upstream_s** %upstream.pre-phi, align 4, !dbg !2141, !tbaa !2038
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %48}, i64 0, metadata !1718), !dbg !2141
  %len = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 29, i32 0, !dbg !2172
  store i32 7, i32* %len, align 4, !dbg !2172, !tbaa !2042
  %data = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 29, i32 1, !dbg !2173
  store i8* getelementptr inbounds ([8 x i8]* @.str47, i32 0, i32 0), i8** %data, align 4, !dbg !2173, !tbaa !2038
  %tag = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 5, i32 9, !dbg !2174
  store i8* bitcast (%struct.ngx_module_s* @ngx_http_scgi_module to i8*), i8** %tag, align 4, !dbg !2174, !tbaa !2038
  %upstream27 = bitcast i8* %11 to %struct.ngx_http_upstream_conf_t*, !dbg !2175
  %conf = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 7, !dbg !2175
  store %struct.ngx_http_upstream_conf_t* %upstream27, %struct.ngx_http_upstream_conf_t** %conf, align 4, !dbg !2175, !tbaa !2038
  %create_key = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 18, !dbg !2176
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_create_key, i32 (%struct.ngx_http_request_s*)** %create_key, align 4, !dbg !2176, !tbaa !2038
  %create_request = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 19, !dbg !2177
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_create_request, i32 (%struct.ngx_http_request_s*)** %create_request, align 4, !dbg !2177, !tbaa !2038
  %reinit_request = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 20, !dbg !2178
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_reinit_request, i32 (%struct.ngx_http_request_s*)** %reinit_request, align 4, !dbg !2178, !tbaa !2038
  %process_header = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 21, !dbg !2179
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_process_status_line, i32 (%struct.ngx_http_request_s*)** %process_header, align 4, !dbg !2179, !tbaa !2038
  %abort_request = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 22, !dbg !2180
  store void (%struct.ngx_http_request_s*)* @ngx_http_scgi_abort_request, void (%struct.ngx_http_request_s*)** %abort_request, align 4, !dbg !2180, !tbaa !2038
  %finalize_request = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 23, !dbg !2181
  store void (%struct.ngx_http_request_s*, i32)* @ngx_http_scgi_finalize_request, void (%struct.ngx_http_request_s*, i32)** %finalize_request, align 4, !dbg !2181, !tbaa !2038
  %state = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 60, !dbg !2182
  store i32 0, i32* %state, align 4, !dbg !2182, !tbaa !2042
  %buffering = getelementptr inbounds i8* %11, i32 72, !dbg !2183
  %49 = bitcast i8* %buffering to i32*, !dbg !2183
  %50 = load i32* %49, align 4, !dbg !2183, !tbaa !2042
  %51 = icmp sgt i32 %50, -1, !dbg !2183
  br i1 %51, label %cont32, label %ioc_bb31, !dbg !2183

ioc_bb31:                                         ; preds = %if.end21
  %52 = sext i32 %50 to i64, !dbg !2183
  call void @__ioc_report_conversion(i32 111, i32 20, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %52, i8 1) nounwind, !dbg !2183
  br label %cont32, !dbg !2183

cont32:                                           ; preds = %ioc_bb31, %if.end21
  %53 = getelementptr %struct.ngx_http_upstream_s* %48, i32 0, i32 32, !dbg !2183
  %54 = bitcast i8* %53 to i32*, !dbg !2183
  %bf.value = shl i32 %50, 7, !dbg !2183
  %55 = and i32 %bf.value, 128, !dbg !2183
  %56 = load i32* %54, align 4, !dbg !2183
  %57 = and i32 %56, -129, !dbg !2183
  %58 = or i32 %57, %55, !dbg !2183
  store i32 %58, i32* %54, align 4, !dbg !2183
  %59 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2184, !tbaa !2038
  %call35 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %59, i32 140) nounwind, !dbg !2184
  %60 = bitcast i8* %call35 to %struct.ngx_event_pipe_s*, !dbg !2184
  %pipe = getelementptr inbounds %struct.ngx_http_upstream_s* %48, i32 0, i32 3, !dbg !2184
  store %struct.ngx_event_pipe_s* %60, %struct.ngx_event_pipe_s** %pipe, align 4, !dbg !2184, !tbaa !2038
  %cmp37 = icmp eq i8* %call35, null, !dbg !2185
  br i1 %cmp37, label %return, label %if.end39, !dbg !2185

if.end39:                                         ; preds = %cont32
  %input_filter = getelementptr inbounds i8* %call35, i32 32, !dbg !2186
  %61 = bitcast i8* %input_filter to i32 (%struct.ngx_event_pipe_s*, %struct.ngx_buf_s*)**, !dbg !2186
  store i32 (%struct.ngx_event_pipe_s*, %struct.ngx_buf_s*)* @ngx_event_pipe_copy_input_filter, i32 (%struct.ngx_event_pipe_s*, %struct.ngx_buf_s*)** %61, align 4, !dbg !2186, !tbaa !2038
  %62 = load %struct.ngx_event_pipe_s** %pipe, align 4, !dbg !2187, !tbaa !2038
  %input_ctx = getelementptr inbounds %struct.ngx_event_pipe_s* %62, i32 0, i32 9, !dbg !2187
  store i8* %0, i8** %input_ctx, align 4, !dbg !2187, !tbaa !2038
  %call42 = call i32 @ngx_http_read_client_request_body(%struct.ngx_http_request_s* %r, void (%struct.ngx_http_request_s*)* @ngx_http_upstream_init) nounwind, !dbg !2188
  call void @llvm.dbg.value(metadata !{i32 %call42}, i64 0, metadata !1705), !dbg !2188
  %cmp43 = icmp sgt i32 %call42, 299, !dbg !2189
  %call42. = select i1 %cmp43, i32 %call42, i32 -4, !dbg !2189
  ret i32 %call42., !dbg !2189

return:                                           ; preds = %if.end25.i, %if.then9.i, %if.then10.i, %cont16.i, %if.then16, %cont32, %if.end9, %if.end6, %if.then, %cont3
  ret i32 500, !dbg !2190
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare %struct.ngx_http_upstream_srv_conf_s* @ngx_http_upstream_add(%struct.ngx_conf_s*, %struct.ngx_url_t*, i32)

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32 @ngx_http_upstream_create(%struct.ngx_http_request_s*)

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

define internal i32 @ngx_http_scgi_create_key(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1835), !dbg !2191
  %cache = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 8, !dbg !2192
  %0 = load %struct.ngx_http_cache_s** %cache, align 4, !dbg !2192, !tbaa !2038
  %keys = getelementptr inbounds %struct.ngx_http_cache_s* %0, i32 0, i32 1, !dbg !2192
  %call = tail call i8* @ngx_array_push(%struct.ngx_array_s* %keys) nounwind, !dbg !2192
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %1}, i64 0, metadata !1836), !dbg !2192
  %cmp = icmp eq i8* %call, null, !dbg !2193
  br i1 %cmp, label %return, label %if.end, !dbg !2193

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.ngx_str_t*, !dbg !2192
  %2 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_scgi_module, i32 0, i32 0), align 4, !dbg !2194, !tbaa !2042
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2194
  %3 = load i8*** %loc_conf, align 4, !dbg !2194, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %3, i32 %2, !dbg !2194
  %4 = load i8** %arrayidx, align 4, !dbg !2194, !tbaa !2038
  %cache_key = getelementptr inbounds i8* %4, i32 212, !dbg !2195
  %5 = bitcast i8* %cache_key to %struct.ngx_http_complex_value_t*, !dbg !2195
  %call1 = tail call i32 @ngx_http_complex_value(%struct.ngx_http_request_s* %r, %struct.ngx_http_complex_value_t* %5, %struct.ngx_str_t* %1) nounwind, !dbg !2195
  %not.cmp2 = icmp ne i32 %call1, 0, !dbg !2195
  %. = sext i1 %not.cmp2 to i32, !dbg !2195
  ret i32 %., !dbg !2195

return:                                           ; preds = %entry
  ret i32 -1, !dbg !2196
}

define internal i32 @ngx_http_scgi_create_request(%struct.ngx_http_request_s* %r) nounwind {
entry:
  %e = alloca %struct.ngx_http_script_engine_t, align 4
  %le = alloca %struct.ngx_http_script_engine_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1779), !dbg !2197
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_engine_t* %e}, metadata !1824), !dbg !2198
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_engine_t* %le}, metadata !1825), !dbg !2199
  %content_length1 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 13, i32 7, !dbg !2200
  %0 = load %struct.ngx_table_elt_t** %content_length1, align 4, !dbg !2200, !tbaa !2038
  %tobool = icmp eq %struct.ngx_table_elt_t* %0, null, !dbg !2200
  %value = getelementptr inbounds %struct.ngx_table_elt_t* %0, i32 0, i32 2, !dbg !2200
  %cond = select i1 %tobool, %struct.ngx_str_t* @ngx_http_scgi_create_request.zero, %struct.ngx_str_t* %value, !dbg !2200
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %cond}, i64 0, metadata !1790), !dbg !2200
  %len4 = getelementptr inbounds %struct.ngx_str_t* %cond, i32 0, i32 0, !dbg !2201
  %1 = load i32* %len4, align 4, !dbg !2201, !tbaa !2042
  %2 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 15), !dbg !2201
  %3 = extractvalue { i32, i1 } %2, 0, !dbg !2201
  %4 = extractvalue { i32, i1 } %2, 1, !dbg !2201
  br i1 %4, label %ioc_bb, label %cont6, !dbg !2201

ioc_bb:                                           ; preds = %entry
  %5 = zext i32 %1 to i64, !dbg !2201
  call void @__ioc_report_add_overflow(i32 206, i32 34, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 15, i64 %5, i8 5) nounwind, !dbg !2201
  br label %cont6, !dbg !2201

cont6:                                            ; preds = %ioc_bb, %entry
  %6 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %3, i32 1), !dbg !2201
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !2201
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !2201
  br i1 %8, label %ioc_bb7, label %cont10, !dbg !2201

ioc_bb7:                                          ; preds = %cont6
  %9 = zext i32 %3 to i64, !dbg !2201
  call void @__ioc_report_add_overflow(i32 206, i32 58, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %9, i64 1, i8 5) nounwind, !dbg !2201
  br label %cont10, !dbg !2201

cont10:                                           ; preds = %ioc_bb7, %cont6
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !1785), !dbg !2201
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1795), !dbg !2202
  call void @llvm.dbg.value(metadata !2203, i64 0, metadata !1800), !dbg !2204
  %10 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_scgi_module, i32 0, i32 0), align 4, !dbg !2205, !tbaa !2042
  %loc_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 5, !dbg !2205
  %11 = load i8*** %loc_conf, align 4, !dbg !2205, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %11, i32 %10, !dbg !2205
  %12 = load i8** %arrayidx, align 4, !dbg !2205, !tbaa !2038
  %params_len = getelementptr inbounds i8* %12, i32 180, !dbg !2206
  %13 = bitcast i8* %params_len to %struct.ngx_array_s**, !dbg !2206
  %14 = load %struct.ngx_array_s** %13, align 4, !dbg !2206, !tbaa !2038
  %tobool11 = icmp eq %struct.ngx_array_s* %14, null, !dbg !2206
  br i1 %tobool11, label %if.end41, label %if.then, !dbg !2206

if.then:                                          ; preds = %cont10
  %15 = bitcast %struct.ngx_http_script_engine_t* %le to i8*, !dbg !2207
  call void @llvm.memset.p0i8.i32(i8* %15, i8 0, i32 44, i32 4, i1 false), !dbg !2207
  %flushes = getelementptr inbounds i8* %12, i32 176, !dbg !2209
  %16 = bitcast i8* %flushes to %struct.ngx_array_s**, !dbg !2209
  %17 = load %struct.ngx_array_s** %16, align 4, !dbg !2209, !tbaa !2038
  call void @ngx_http_script_flush_no_cacheable_variables(%struct.ngx_http_request_s* %r, %struct.ngx_array_s* %17) nounwind, !dbg !2209
  %18 = getelementptr %struct.ngx_http_script_engine_t* %le, i32 0, i32 6, !dbg !2210
  %19 = bitcast i8* %18 to i32*, !dbg !2210
  %20 = load i32* %19, align 4, !dbg !2210
  %21 = or i32 %20, 1, !dbg !2210
  store i32 %21, i32* %19, align 4, !dbg !2210
  %22 = load %struct.ngx_array_s** %13, align 4, !dbg !2211, !tbaa !2038
  %elts = getelementptr inbounds %struct.ngx_array_s* %22, i32 0, i32 0, !dbg !2211
  %23 = load i8** %elts, align 4, !dbg !2211, !tbaa !2038
  %ip = getelementptr inbounds %struct.ngx_http_script_engine_t* %le, i32 0, i32 0, !dbg !2211
  store i8* %23, i8** %ip, align 4, !dbg !2211, !tbaa !2038
  %request = getelementptr inbounds %struct.ngx_http_script_engine_t* %le, i32 0, i32 8, !dbg !2212
  store %struct.ngx_http_request_s* %r, %struct.ngx_http_request_s** %request, align 4, !dbg !2212, !tbaa !2038
  br label %while.cond.outer, !dbg !2213

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.then
  %.pre663 = phi i8* [ %23, %if.then ], [ %.pre663.pre, %while.cond.outer.backedge ]
  %len.0.ph = phi i32 [ %7, %if.then ], [ %55, %while.cond.outer.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %for.end
  %24 = phi i8* [ %.pre663, %while.cond.outer ], [ %add.ptr, %for.end ]
  %25 = bitcast i8* %24 to i32*, !dbg !2213
  %26 = load i32* %25, align 4, !dbg !2213, !tbaa !2042
  %tobool16 = icmp eq i32 %26, 0, !dbg !2213
  br i1 %tobool16, label %if.end41, label %while.body, !dbg !2213

while.body:                                       ; preds = %while.cond
  %27 = inttoptr i32 %26 to i32 (%struct.ngx_http_script_engine_t*)*
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_script_engine_t*)* %27}, i64 0, metadata !1827), !dbg !2214
  %call = call i32 %27(%struct.ngx_http_script_engine_t* %le) nounwind, !dbg !2216
  call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1786), !dbg !2216
  %28 = load i8** %ip, align 4, !dbg !2217, !tbaa !2038
  %29 = bitcast i8* %28 to i32 (%struct.ngx_http_script_engine_t*)**, !dbg !2217
  %30 = load i32 (%struct.ngx_http_script_engine_t*)** %29, align 4, !dbg !2217, !tbaa !2038
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_script_engine_t*)* %30}, i64 0, metadata !1827), !dbg !2217
  %call19 = call i32 %30(%struct.ngx_http_script_engine_t* %le) nounwind, !dbg !2218
  call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !1794), !dbg !2218
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1787), !dbg !2219
  %31 = load i8** %ip, align 4, !dbg !2219, !tbaa !2038
  %32 = bitcast i8* %31 to i32*, !dbg !2219
  %33 = load i32* %32, align 4, !dbg !2219, !tbaa !2042
  %tobool23646 = icmp eq i32 %33, 0, !dbg !2219
  br i1 %tobool23646, label %for.end, label %for.body, !dbg !2219

for.body:                                         ; preds = %while.body, %for.cond.backedge
  %34 = phi i8* [ %40, %for.cond.backedge ], [ %31, %while.body ]
  %val_len.0647 = phi i32 [ %38, %for.cond.backedge ], [ 0, %while.body ]
  %35 = bitcast i8* %34 to i32 (%struct.ngx_http_script_engine_t*)**, !dbg !2221
  %36 = load i32 (%struct.ngx_http_script_engine_t*)** %35, align 4, !dbg !2221, !tbaa !2038
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_script_engine_t*)* %36}, i64 0, metadata !1827), !dbg !2221
  %call25 = call i32 %36(%struct.ngx_http_script_engine_t* %le) nounwind, !dbg !2219
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %val_len.0647, i32 %call25), !dbg !2219
  %38 = extractvalue { i32, i1 } %37, 0, !dbg !2219
  %39 = extractvalue { i32, i1 } %37, 1, !dbg !2219
  br i1 %39, label %ioc_bb26, label %for.cond.backedge, !dbg !2219

for.cond.backedge:                                ; preds = %for.body, %ioc_bb26
  %40 = load i8** %ip, align 4, !dbg !2219, !tbaa !2038
  %41 = bitcast i8* %40 to i32*, !dbg !2219
  %42 = load i32* %41, align 4, !dbg !2219, !tbaa !2042
  %tobool23 = icmp eq i32 %42, 0, !dbg !2219
  br i1 %tobool23, label %for.end, label %for.body, !dbg !2219

ioc_bb26:                                         ; preds = %for.body
  %43 = zext i32 %call25 to i64, !dbg !2219
  %44 = zext i32 %val_len.0647 to i64, !dbg !2219
  call void @__ioc_report_add_overflow(i32 221, i32 57, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %44, i64 %43, i8 5) nounwind, !dbg !2219
  br label %for.cond.backedge, !dbg !2219

for.end:                                          ; preds = %for.cond.backedge, %while.body
  %.lcssa645 = phi i8* [ %31, %while.body ], [ %40, %for.cond.backedge ]
  %val_len.0.lcssa = phi i32 [ 0, %while.body ], [ %38, %for.cond.backedge ]
  %add.ptr = getelementptr inbounds i8* %.lcssa645, i32 4, !dbg !2223
  store i8* %add.ptr, i8** %ip, align 4, !dbg !2223, !tbaa !2038
  %tobool29 = icmp ne i32 %call19, 0, !dbg !2224
  %cmp = icmp eq i32 %val_len.0.lcssa, 0, !dbg !2224
  %or.cond = and i1 %tobool29, %cmp, !dbg !2224
  br i1 %or.cond, label %while.cond, label %if.end, !dbg !2224

if.end:                                           ; preds = %for.end
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %call, i32 %val_len.0.lcssa), !dbg !2225
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !2225
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !2225
  br i1 %47, label %ioc_bb33, label %cont36, !dbg !2225

ioc_bb33:                                         ; preds = %if.end
  %48 = zext i32 %val_len.0.lcssa to i64, !dbg !2225
  %49 = zext i32 %call to i64, !dbg !2225
  call void @__ioc_report_add_overflow(i32 228, i32 22, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %49, i64 %48, i8 5) nounwind, !dbg !2225
  br label %cont36, !dbg !2225

cont36:                                           ; preds = %ioc_bb33, %if.end
  %50 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %46, i32 1), !dbg !2225
  %51 = extractvalue { i32, i1 } %50, 0, !dbg !2225
  %52 = extractvalue { i32, i1 } %50, 1, !dbg !2225
  br i1 %52, label %ioc_bb37, label %cont38, !dbg !2225

ioc_bb37:                                         ; preds = %cont36
  %53 = zext i32 %46 to i64, !dbg !2225
  call void @__ioc_report_add_overflow(i32 228, i32 32, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %53, i64 1, i8 5) nounwind, !dbg !2225
  br label %cont38, !dbg !2225

cont38:                                           ; preds = %cont36, %ioc_bb37
  %54 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.0.ph, i32 %51), !dbg !2225
  %55 = extractvalue { i32, i1 } %54, 0, !dbg !2225
  %56 = extractvalue { i32, i1 } %54, 1, !dbg !2225
  br i1 %56, label %ioc_bb39, label %while.cond.outer.backedge, !dbg !2225

while.cond.outer.backedge:                        ; preds = %cont38, %ioc_bb39
  %.pre663.pre = load i8** %ip, align 4, !dbg !2213, !tbaa !2038
  br label %while.cond.outer

ioc_bb39:                                         ; preds = %cont38
  %57 = zext i32 %51 to i64, !dbg !2225
  %58 = zext i32 %len.0.ph to i64, !dbg !2225
  call void @__ioc_report_add_overflow(i32 228, i32 11, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %58, i64 %57, i8 5) nounwind, !dbg !2225
  br label %while.cond.outer.backedge, !dbg !2225

if.end41:                                         ; preds = %while.cond, %cont10
  %len.1 = phi i32 [ %7, %cont10 ], [ %len.0.ph, %while.cond ]
  %pass_request_headers = getelementptr inbounds i8* %12, i32 76, !dbg !2226
  %59 = bitcast i8* %pass_request_headers to i32*, !dbg !2226
  %60 = load i32* %59, align 4, !dbg !2226, !tbaa !2042
  %tobool42 = icmp eq i32 %60, 0, !dbg !2226
  br i1 %tobool42, label %if.end41.if.end189_crit_edge, label %cont45, !dbg !2226

if.end41.if.end189_crit_edge:                     ; preds = %if.end41
  %pool190.pre = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2227
  br label %if.end189, !dbg !2226

cont45:                                           ; preds = %if.end41
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1788), !dbg !2228
  call void @llvm.dbg.value(metadata !2230, i64 0, metadata !1784), !dbg !2231
  %header_params46 = getelementptr inbounds i8* %12, i32 200, !dbg !2232
  %61 = bitcast i8* %header_params46 to i32*, !dbg !2232
  %62 = load i32* %61, align 4, !dbg !2232, !tbaa !2042
  %tobool47 = icmp eq i32 %62, 0, !dbg !2232
  %part70.pre = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 13, i32 0, i32 1, !dbg !2233
  br i1 %tobool47, label %cont45.if.end67_crit_edge, label %cont50, !dbg !2232

cont45.if.end67_crit_edge:                        ; preds = %cont45
  %pool102.pre = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2234
  br label %if.end67, !dbg !2232

cont50:                                           ; preds = %cont45
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1792), !dbg !2239
  call void @llvm.dbg.value(metadata !{%struct.ngx_list_part_s* %part70.pre}, i64 0, metadata !1798), !dbg !2241
  %tobool54641 = icmp eq %struct.ngx_list_part_s* %part70.pre, null, !dbg !2242
  br i1 %tobool54641, label %while.end58, label %while.body55, !dbg !2242

while.body55:                                     ; preds = %cont50, %cont57
  %part.0643 = phi %struct.ngx_list_part_s* [ %69, %cont57 ], [ %part70.pre, %cont50 ]
  %n.0642 = phi i32 [ %65, %cont57 ], [ 0, %cont50 ]
  %nelts = getelementptr inbounds %struct.ngx_list_part_s* %part.0643, i32 0, i32 1, !dbg !2243
  %63 = load i32* %nelts, align 4, !dbg !2243, !tbaa !2042
  %64 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0642, i32 %63), !dbg !2243
  %65 = extractvalue { i32, i1 } %64, 0, !dbg !2243
  %66 = extractvalue { i32, i1 } %64, 1, !dbg !2243
  br i1 %66, label %ioc_bb56, label %cont57, !dbg !2243

ioc_bb56:                                         ; preds = %while.body55
  %67 = zext i32 %63 to i64, !dbg !2243
  %68 = zext i32 %n.0642 to i64, !dbg !2243
  call void @__ioc_report_add_overflow(i32 238, i32 11, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %68, i64 %67, i8 5) nounwind, !dbg !2243
  br label %cont57, !dbg !2243

cont57:                                           ; preds = %while.body55, %ioc_bb56
  call void @llvm.dbg.value(metadata !{i32 %65}, i64 0, metadata !1792), !dbg !2243
  %next = getelementptr inbounds %struct.ngx_list_part_s* %part.0643, i32 0, i32 2, !dbg !2245
  %69 = load %struct.ngx_list_part_s** %next, align 4, !dbg !2245, !tbaa !2038
  call void @llvm.dbg.value(metadata !{%struct.ngx_list_part_s* %69}, i64 0, metadata !1798), !dbg !2245
  %tobool54 = icmp eq %struct.ngx_list_part_s* %69, null, !dbg !2242
  br i1 %tobool54, label %while.end58, label %while.body55, !dbg !2242

while.end58:                                      ; preds = %cont57, %cont50
  %n.0.lcssa = phi i32 [ 0, %cont50 ], [ %65, %cont57 ]
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2246
  %70 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2246, !tbaa !2038
  %71 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n.0.lcssa, i32 4), !dbg !2246
  %72 = extractvalue { i32, i1 } %71, 0, !dbg !2246
  %73 = extractvalue { i32, i1 } %71, 1, !dbg !2246
  br i1 %73, label %ioc_bb59, label %cont60, !dbg !2246

ioc_bb59:                                         ; preds = %while.end58
  %74 = zext i32 %n.0.lcssa to i64, !dbg !2246
  call void @__ioc_report_mul_overflow(i32 241, i32 41, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %74, i64 4, i8 5) nounwind, !dbg !2246
  br label %cont60, !dbg !2246

cont60:                                           ; preds = %while.end58, %ioc_bb59
  %call61 = call i8* @ngx_palloc(%struct.ngx_pool_s* %70, i32 %72) nounwind, !dbg !2246
  %75 = bitcast i8* %call61 to %struct.ngx_table_elt_t**, !dbg !2246
  call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t** %75}, i64 0, metadata !1800), !dbg !2246
  %cmp62 = icmp eq i8* %call61, null, !dbg !2247
  br i1 %cmp62, label %return, label %if.end67, !dbg !2247

if.end67:                                         ; preds = %cont45.if.end67_crit_edge, %cont60
  %pool102.pre-phi = phi %struct.ngx_pool_s** [ %pool102.pre, %cont45.if.end67_crit_edge ], [ %pool, %cont60 ], !dbg !2234
  %ignored.0 = phi %struct.ngx_table_elt_t** [ null, %cont45.if.end67_crit_edge ], [ %75, %cont60 ]
  call void @llvm.dbg.value(metadata !{%struct.ngx_list_part_s* %part70.pre}, i64 0, metadata !1798), !dbg !2233
  call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t* %77}, i64 0, metadata !1799), !dbg !2248
  %elts71 = getelementptr inbounds %struct.ngx_list_part_s* %part70.pre, i32 0, i32 0, !dbg !2248
  %76 = load i8** %elts71, align 4, !dbg !2248, !tbaa !2038
  %77 = bitcast i8* %76 to %struct.ngx_table_elt_t*, !dbg !2248
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1791), !dbg !2249
  %headers_hash = getelementptr inbounds i8* %12, i32 192, !dbg !2250
  %78 = bitcast i8* %headers_hash to %struct.ngx_hash_t*, !dbg !2250
  br label %for.cond74, !dbg !2249

for.cond74:                                       ; preds = %ioc_bb186, %for.inc185, %if.end67
  %len.2 = phi i32 [ %len.1, %if.end67 ], [ %len.3, %for.inc185 ], [ %len.3, %ioc_bb186 ]
  %lowcase_key.0 = phi i8* [ null, %if.end67 ], [ %lowcase_key.3, %for.inc185 ], [ %lowcase_key.3, %ioc_bb186 ]
  %allocated.0 = phi i32 [ 0, %if.end67 ], [ %allocated.3, %for.inc185 ], [ %allocated.3, %ioc_bb186 ]
  %i.0 = phi i32 [ 0, %if.end67 ], [ %137, %for.inc185 ], [ %137, %ioc_bb186 ]
  %header_params.0 = phi i32 [ 0, %if.end67 ], [ %header_params.1, %for.inc185 ], [ %header_params.1, %ioc_bb186 ]
  %part.1 = phi %struct.ngx_list_part_s* [ %part70.pre, %if.end67 ], [ %part.2, %for.inc185 ], [ %part.2, %ioc_bb186 ]
  %header.0 = phi %struct.ngx_table_elt_t* [ %77, %if.end67 ], [ %header.1, %for.inc185 ], [ %header.1, %ioc_bb186 ]
  %nelts75 = getelementptr inbounds %struct.ngx_list_part_s* %part.1, i32 0, i32 1, !dbg !2251
  %79 = load i32* %nelts75, align 4, !dbg !2251, !tbaa !2042
  %cmp76 = icmp ult i32 %i.0, %79, !dbg !2251
  br i1 %cmp76, label %if.end86, label %if.then77, !dbg !2251

if.then77:                                        ; preds = %for.cond74
  %next78 = getelementptr inbounds %struct.ngx_list_part_s* %part.1, i32 0, i32 2, !dbg !2252
  %80 = load %struct.ngx_list_part_s** %next78, align 4, !dbg !2252, !tbaa !2038
  %cmp79 = icmp eq %struct.ngx_list_part_s* %80, null, !dbg !2252
  br i1 %cmp79, label %if.end189, label %cont85, !dbg !2252

cont85:                                           ; preds = %if.then77
  call void @llvm.dbg.value(metadata !{%struct.ngx_list_part_s* %80}, i64 0, metadata !1798), !dbg !2254
  call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t* %82}, i64 0, metadata !1799), !dbg !2255
  %elts83 = getelementptr inbounds %struct.ngx_list_part_s* %80, i32 0, i32 0, !dbg !2255
  %81 = load i8** %elts83, align 4, !dbg !2255, !tbaa !2038
  %82 = bitcast i8* %81 to %struct.ngx_table_elt_t*, !dbg !2255
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1791), !dbg !2256
  br label %if.end86, !dbg !2257

if.end86:                                         ; preds = %for.cond74, %cont85
  %i.1 = phi i32 [ 0, %cont85 ], [ %i.0, %for.cond74 ]
  %part.2 = phi %struct.ngx_list_part_s* [ %80, %cont85 ], [ %part.1, %for.cond74 ]
  %header.1 = phi %struct.ngx_table_elt_t* [ %82, %cont85 ], [ %header.0, %for.cond74 ]
  %83 = load i32* %61, align 4, !dbg !2258, !tbaa !2042
  %tobool88 = icmp eq i32 %83, 0, !dbg !2258
  br i1 %tobool88, label %if.end86.cont164_crit_edge, label %if.then89, !dbg !2258

if.end86.cont164_crit_edge:                       ; preds = %if.end86
  %len167.pre = getelementptr inbounds %struct.ngx_table_elt_t* %header.1, i32 %i.1, i32 1, i32 0, !dbg !2259
  br label %cont164, !dbg !2258

if.then89:                                        ; preds = %if.end86
  %arrayidx90 = getelementptr inbounds %struct.ngx_table_elt_t* %header.1, i32 %i.1, !dbg !2260
  %len92 = getelementptr inbounds %struct.ngx_table_elt_t* %header.1, i32 %i.1, i32 1, i32 0, !dbg !2260
  %84 = load i32* %len92, align 4, !dbg !2260, !tbaa !2042
  %cmp93 = icmp ult i32 %allocated.0, %84, !dbg !2260
  br i1 %cmp93, label %cont99, label %cont113, !dbg !2260

cont99:                                           ; preds = %if.then89
  %85 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %84, i32 16), !dbg !2261
  %86 = extractvalue { i32, i1 } %85, 0, !dbg !2261
  %87 = extractvalue { i32, i1 } %85, 1, !dbg !2261
  br i1 %87, label %ioc_bb100, label %cont101, !dbg !2261

ioc_bb100:                                        ; preds = %cont99
  %88 = zext i32 %84 to i64, !dbg !2261
  call void @__ioc_report_add_overflow(i32 260, i32 41, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %88, i64 16, i8 5) nounwind, !dbg !2261
  br label %cont101, !dbg !2261

cont101:                                          ; preds = %cont99, %ioc_bb100
  call void @llvm.dbg.value(metadata !{i32 %86}, i64 0, metadata !1788), !dbg !2261
  %89 = load %struct.ngx_pool_s** %pool102.pre-phi, align 4, !dbg !2234, !tbaa !2038
  %call103 = call i8* @ngx_pnalloc(%struct.ngx_pool_s* %89, i32 %86) nounwind, !dbg !2234
  call void @llvm.dbg.value(metadata !{i8* %call103}, i64 0, metadata !1784), !dbg !2234
  %cmp104 = icmp eq i8* %call103, null, !dbg !2262
  br i1 %cmp104, label %return, label %cont101.cont113_crit_edge, !dbg !2262

cont101.cont113_crit_edge:                        ; preds = %cont101
  %.pre664 = load i32* %len92, align 4, !dbg !2263, !tbaa !2042
  br label %cont113, !dbg !2262

cont113:                                          ; preds = %cont101.cont113_crit_edge, %if.then89
  %90 = phi i32 [ %.pre664, %cont101.cont113_crit_edge ], [ %84, %if.then89 ]
  %lowcase_key.1 = phi i8* [ %call103, %cont101.cont113_crit_edge ], [ %lowcase_key.0, %if.then89 ]
  %allocated.1 = phi i32 [ %86, %cont101.cont113_crit_edge ], [ %allocated.0, %if.then89 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1793), !dbg !2265
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1792), !dbg !2263
  %cmp118633 = icmp eq i32 %90, 0, !dbg !2263
  br i1 %cmp118633, label %for.end151, label %for.body119.lr.ph, !dbg !2263

for.body119.lr.ph:                                ; preds = %cont113
  %data = getelementptr inbounds %struct.ngx_table_elt_t* %header.1, i32 %i.1, i32 1, i32 1, !dbg !2266
  br label %for.body119, !dbg !2263

for.body119:                                      ; preds = %for.body119.lr.ph, %for.cond114.backedge
  %hash.0635 = phi i32 [ 0, %for.body119.lr.ph ], [ %99, %for.cond114.backedge ]
  %n.1634 = phi i32 [ 0, %for.body119.lr.ph ], [ %104, %for.cond114.backedge ]
  %91 = load i8** %data, align 4, !dbg !2266, !tbaa !2038
  %arrayidx122 = getelementptr inbounds i8* %91, i32 %n.1634, !dbg !2266
  %92 = load i8* %arrayidx122, align 1, !dbg !2266, !tbaa !2039
  call void @llvm.dbg.value(metadata !{i8 %92}, i64 0, metadata !1780), !dbg !2266
  %.off = add i8 %92, -65, !dbg !2268
  %93 = icmp ult i8 %.off, 26, !dbg !2268
  br i1 %93, label %if.then129, label %if.else, !dbg !2268

if.then129:                                       ; preds = %for.body119
  %or = or i8 %92, 32, !dbg !2269
  call void @llvm.dbg.value(metadata !{i8 %or}, i64 0, metadata !1780), !dbg !2269
  br label %cont141, !dbg !2271

if.else:                                          ; preds = %for.body119
  %cmp133 = icmp eq i8 %92, 45, !dbg !2272
  %. = select i1 %cmp133, i8 95, i8 %92, !dbg !2272
  br label %cont141, !dbg !2272

cont141:                                          ; preds = %if.else, %if.then129
  %ch.0 = phi i8 [ %or, %if.then129 ], [ %., %if.else ]
  %94 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %hash.0635, i32 31), !dbg !2273
  %95 = extractvalue { i32, i1 } %94, 0, !dbg !2273
  %96 = extractvalue { i32, i1 } %94, 1, !dbg !2273
  br i1 %96, label %ioc_bb142, label %cont143, !dbg !2273

ioc_bb142:                                        ; preds = %cont141
  %97 = zext i32 %hash.0635 to i64, !dbg !2273
  call void @__ioc_report_mul_overflow(i32 275, i32 38, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %97, i64 31, i8 5) nounwind, !dbg !2273
  br label %cont143, !dbg !2273

cont143:                                          ; preds = %cont141, %ioc_bb142
  %conv144 = zext i8 %ch.0 to i32, !dbg !2273
  %98 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %95, i32 %conv144), !dbg !2273
  %99 = extractvalue { i32, i1 } %98, 0, !dbg !2273
  %100 = extractvalue { i32, i1 } %98, 1, !dbg !2273
  br i1 %100, label %ioc_bb145, label %cont146, !dbg !2273

ioc_bb145:                                        ; preds = %cont143
  %101 = zext i8 %ch.0 to i64, !dbg !2273
  %102 = zext i32 %95 to i64, !dbg !2273
  call void @__ioc_report_add_overflow(i32 275, i32 43, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %102, i64 %101, i8 5) nounwind, !dbg !2273
  br label %cont146, !dbg !2273

cont146:                                          ; preds = %cont143, %ioc_bb145
  call void @llvm.dbg.value(metadata !{i32 %99}, i64 0, metadata !1793), !dbg !2273
  %arrayidx147 = getelementptr inbounds i8* %lowcase_key.1, i32 %n.1634, !dbg !2274
  store i8 %ch.0, i8* %arrayidx147, align 1, !dbg !2274, !tbaa !2039
  %103 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.1634, i32 1), !dbg !2263
  %104 = extractvalue { i32, i1 } %103, 0, !dbg !2263
  %105 = extractvalue { i32, i1 } %103, 1, !dbg !2263
  br i1 %105, label %ioc_bb149, label %for.cond114.backedge, !dbg !2263

for.cond114.backedge:                             ; preds = %cont146, %ioc_bb149
  %106 = load i32* %len92, align 4, !dbg !2263, !tbaa !2042
  %cmp118 = icmp ult i32 %104, %106, !dbg !2263
  br i1 %cmp118, label %for.body119, label %for.end151, !dbg !2263

ioc_bb149:                                        ; preds = %cont146
  %107 = zext i32 %n.1634 to i64, !dbg !2263
  call void @__ioc_report_add_overflow(i32 267, i32 45, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %107, i64 1, i8 5) nounwind, !dbg !2263
  br label %for.cond114.backedge, !dbg !2263

for.end151:                                       ; preds = %for.cond114.backedge, %cont113
  %hash.0.lcssa = phi i32 [ 0, %cont113 ], [ %99, %for.cond114.backedge ]
  %n.1.lcssa = phi i32 [ 0, %cont113 ], [ %104, %for.cond114.backedge ]
  %call152 = call i8* @ngx_hash_find(%struct.ngx_hash_t* %78, i32 %hash.0.lcssa, i8* %lowcase_key.1, i32 %n.1.lcssa) nounwind, !dbg !2250
  %tobool153 = icmp eq i8* %call152, null, !dbg !2250
  br i1 %tobool153, label %cont164, label %if.then154, !dbg !2250

if.then154:                                       ; preds = %for.end151
  %108 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %header_params.0, i32 1), !dbg !2275
  %109 = extractvalue { i32, i1 } %108, 0, !dbg !2275
  %110 = extractvalue { i32, i1 } %108, 1, !dbg !2275
  br i1 %110, label %ioc_bb156, label %cont157, !dbg !2275

ioc_bb156:                                        ; preds = %if.then154
  %111 = zext i32 %header_params.0 to i64, !dbg !2275
  call void @__ioc_report_add_overflow(i32 279, i32 32, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %111, i64 1, i8 5) nounwind, !dbg !2275
  br label %cont157, !dbg !2275

cont157:                                          ; preds = %if.then154, %ioc_bb156
  call void @llvm.dbg.value(metadata !{i32 %109}, i64 0, metadata !1795), !dbg !2275
  %arrayidx158 = getelementptr inbounds %struct.ngx_table_elt_t** %ignored.0, i32 %header_params.0, !dbg !2275
  store %struct.ngx_table_elt_t* %arrayidx90, %struct.ngx_table_elt_t** %arrayidx158, align 4, !dbg !2275, !tbaa !2038
  br label %for.inc185, !dbg !2277

cont164:                                          ; preds = %if.end86.cont164_crit_edge, %for.end151
  %len167.pre-phi = phi i32* [ %len167.pre, %if.end86.cont164_crit_edge ], [ %len92, %for.end151 ], !dbg !2259
  %lowcase_key.2 = phi i8* [ %lowcase_key.0, %if.end86.cont164_crit_edge ], [ %lowcase_key.1, %for.end151 ]
  %allocated.2 = phi i32 [ %allocated.0, %if.end86.cont164_crit_edge ], [ %allocated.1, %for.end151 ]
  %112 = load i32* %len167.pre-phi, align 4, !dbg !2259, !tbaa !2042
  %113 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %112, i32 5), !dbg !2259
  %114 = extractvalue { i32, i1 } %113, 0, !dbg !2259
  %115 = extractvalue { i32, i1 } %113, 1, !dbg !2259
  br i1 %115, label %ioc_bb168, label %cont171, !dbg !2259

ioc_bb168:                                        ; preds = %cont164
  %116 = zext i32 %112 to i64, !dbg !2259
  call void @__ioc_report_add_overflow(i32 283, i32 34, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 5, i64 %116, i8 5) nounwind, !dbg !2259
  br label %cont171, !dbg !2259

cont171:                                          ; preds = %ioc_bb168, %cont164
  %117 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %114, i32 1), !dbg !2259
  %118 = extractvalue { i32, i1 } %117, 0, !dbg !2259
  %119 = extractvalue { i32, i1 } %117, 1, !dbg !2259
  br i1 %119, label %ioc_bb172, label %cont173, !dbg !2259

ioc_bb172:                                        ; preds = %cont171
  %120 = zext i32 %114 to i64, !dbg !2259
  call void @__ioc_report_add_overflow(i32 283, i32 54, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %120, i64 1, i8 5) nounwind, !dbg !2259
  br label %cont173, !dbg !2259

cont173:                                          ; preds = %cont171, %ioc_bb172
  %len176 = getelementptr inbounds %struct.ngx_table_elt_t* %header.1, i32 %i.1, i32 2, i32 0, !dbg !2259
  %121 = load i32* %len176, align 4, !dbg !2259, !tbaa !2042
  %122 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %118, i32 %121), !dbg !2259
  %123 = extractvalue { i32, i1 } %122, 0, !dbg !2259
  %124 = extractvalue { i32, i1 } %122, 1, !dbg !2259
  br i1 %124, label %ioc_bb177, label %cont180, !dbg !2259

ioc_bb177:                                        ; preds = %cont173
  %125 = zext i32 %121 to i64, !dbg !2259
  %126 = zext i32 %118 to i64, !dbg !2259
  call void @__ioc_report_add_overflow(i32 283, i32 58, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %126, i64 %125, i8 5) nounwind, !dbg !2259
  br label %cont180, !dbg !2259

cont180:                                          ; preds = %ioc_bb177, %cont173
  %127 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %123, i32 1), !dbg !2259
  %128 = extractvalue { i32, i1 } %127, 0, !dbg !2259
  %129 = extractvalue { i32, i1 } %127, 1, !dbg !2259
  br i1 %129, label %ioc_bb181, label %cont182, !dbg !2259

ioc_bb181:                                        ; preds = %cont180
  %130 = zext i32 %123 to i64, !dbg !2259
  call void @__ioc_report_add_overflow(i32 283, i32 80, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %130, i64 1, i8 5) nounwind, !dbg !2259
  br label %cont182, !dbg !2259

cont182:                                          ; preds = %cont180, %ioc_bb181
  %131 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.2, i32 %128), !dbg !2259
  %132 = extractvalue { i32, i1 } %131, 0, !dbg !2259
  %133 = extractvalue { i32, i1 } %131, 1, !dbg !2259
  br i1 %133, label %ioc_bb183, label %for.inc185, !dbg !2259

ioc_bb183:                                        ; preds = %cont182
  %134 = zext i32 %128 to i64, !dbg !2259
  %135 = zext i32 %len.2 to i64, !dbg !2259
  call void @__ioc_report_add_overflow(i32 283, i32 11, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %135, i64 %134, i8 5) nounwind, !dbg !2259
  br label %for.inc185, !dbg !2259

for.inc185:                                       ; preds = %ioc_bb183, %cont182, %cont157
  %len.3 = phi i32 [ %len.2, %cont157 ], [ %132, %cont182 ], [ %132, %ioc_bb183 ]
  %lowcase_key.3 = phi i8* [ %lowcase_key.1, %cont157 ], [ %lowcase_key.2, %cont182 ], [ %lowcase_key.2, %ioc_bb183 ]
  %allocated.3 = phi i32 [ %allocated.1, %cont157 ], [ %allocated.2, %cont182 ], [ %allocated.2, %ioc_bb183 ]
  %header_params.1 = phi i32 [ %109, %cont157 ], [ %header_params.0, %cont182 ], [ %header_params.0, %ioc_bb183 ]
  %136 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1, i32 1), !dbg !2249
  %137 = extractvalue { i32, i1 } %136, 0, !dbg !2249
  %138 = extractvalue { i32, i1 } %136, 1, !dbg !2249
  br i1 %138, label %ioc_bb186, label %for.cond74, !dbg !2249

ioc_bb186:                                        ; preds = %for.inc185
  %139 = zext i32 %i.1 to i64, !dbg !2249
  call void @__ioc_report_add_overflow(i32 249, i32 20, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %139, i64 1, i8 5) nounwind, !dbg !2249
  br label %for.cond74, !dbg !2249

if.end189:                                        ; preds = %if.then77, %if.end41.if.end189_crit_edge
  %pool190.pre-phi = phi %struct.ngx_pool_s** [ %pool190.pre, %if.end41.if.end189_crit_edge ], [ %pool102.pre-phi, %if.then77 ], !dbg !2227
  %len.4 = phi i32 [ %len.1, %if.end41.if.end189_crit_edge ], [ %len.2, %if.then77 ]
  %header_params.2 = phi i32 [ 0, %if.end41.if.end189_crit_edge ], [ %header_params.0, %if.then77 ]
  %ignored.1 = phi %struct.ngx_table_elt_t** [ null, %if.end41.if.end189_crit_edge ], [ %ignored.0, %if.then77 ]
  %140 = load %struct.ngx_pool_s** %pool190.pre-phi, align 4, !dbg !2227, !tbaa !2038
  %141 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %len.4, i32 12), !dbg !2227
  %142 = extractvalue { i32, i1 } %141, 0, !dbg !2227
  %143 = extractvalue { i32, i1 } %141, 1, !dbg !2227
  br i1 %143, label %ioc_bb199, label %cont202, !dbg !2227

ioc_bb199:                                        ; preds = %if.end189
  %144 = zext i32 %len.4 to i64, !dbg !2227
  call void @__ioc_report_add_overflow(i32 287, i32 67, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 12, i64 %144, i8 5) nounwind, !dbg !2227
  br label %cont202, !dbg !2227

cont202:                                          ; preds = %ioc_bb199, %if.end189
  %145 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %142, i32 1), !dbg !2227
  %146 = extractvalue { i32, i1 } %145, 0, !dbg !2227
  %147 = extractvalue { i32, i1 } %145, 1, !dbg !2227
  br i1 %147, label %ioc_bb203, label %cont204, !dbg !2227

ioc_bb203:                                        ; preds = %cont202
  %148 = zext i32 %142 to i64, !dbg !2227
  call void @__ioc_report_add_overflow(i32 287, i32 73, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %148, i64 1, i8 5) nounwind, !dbg !2227
  br label %cont204, !dbg !2227

cont204:                                          ; preds = %cont202, %ioc_bb203
  %call205 = call %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s* %140, i32 %146) nounwind, !dbg !2227
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %call205}, i64 0, metadata !1789), !dbg !2227
  %cmp206 = icmp eq %struct.ngx_buf_s* %call205, null, !dbg !2278
  br i1 %cmp206, label %return, label %if.end211, !dbg !2278

if.end211:                                        ; preds = %cont204
  %149 = load %struct.ngx_pool_s** %pool190.pre-phi, align 4, !dbg !2279, !tbaa !2038
  %call213 = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %149) nounwind, !dbg !2279
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call213}, i64 0, metadata !1796), !dbg !2279
  %cmp214 = icmp eq %struct.ngx_chain_s* %call213, null, !dbg !2280
  br i1 %cmp214, label %return, label %if.end219, !dbg !2280

if.end219:                                        ; preds = %if.end211
  %buf = getelementptr inbounds %struct.ngx_chain_s* %call213, i32 0, i32 0, !dbg !2281
  store %struct.ngx_buf_s* %call205, %struct.ngx_buf_s** %buf, align 4, !dbg !2281, !tbaa !2038
  %last = getelementptr inbounds %struct.ngx_buf_s* %call205, i32 0, i32 1, !dbg !2282
  %150 = load i8** %last, align 4, !dbg !2282, !tbaa !2038
  %call240 = call i8* (i8*, i32, i8*, ...)* @ngx_snprintf(i8* %150, i32 48, i8* getelementptr inbounds ([25 x i8]* @.str53, i32 0, i32 0), i32 %len.4, %struct.ngx_str_t* %cond) nounwind, !dbg !2282
  store i8* %call240, i8** %last, align 4, !dbg !2282, !tbaa !2038
  %151 = load %struct.ngx_array_s** %13, align 4, !dbg !2283, !tbaa !2038
  %tobool243 = icmp eq %struct.ngx_array_s* %151, null, !dbg !2283
  br i1 %tobool243, label %if.end314, label %if.then244, !dbg !2283

if.then244:                                       ; preds = %if.end219
  %152 = bitcast %struct.ngx_http_script_engine_t* %e to i8*, !dbg !2284
  call void @llvm.memset.p0i8.i32(i8* %152, i8 0, i32 44, i32 4, i1 false), !dbg !2284
  %params = getelementptr inbounds i8* %12, i32 184, !dbg !2286
  %153 = bitcast i8* %params to %struct.ngx_array_s**, !dbg !2286
  %154 = load %struct.ngx_array_s** %153, align 4, !dbg !2286, !tbaa !2038
  %elts245 = getelementptr inbounds %struct.ngx_array_s* %154, i32 0, i32 0, !dbg !2286
  %155 = load i8** %elts245, align 4, !dbg !2286, !tbaa !2038
  %ip246 = getelementptr inbounds %struct.ngx_http_script_engine_t* %e, i32 0, i32 0, !dbg !2286
  store i8* %155, i8** %ip246, align 4, !dbg !2286, !tbaa !2038
  %156 = load i8** %last, align 4, !dbg !2287, !tbaa !2038
  %pos = getelementptr inbounds %struct.ngx_http_script_engine_t* %e, i32 0, i32 1, !dbg !2287
  store i8* %156, i8** %pos, align 4, !dbg !2287, !tbaa !2038
  %request248 = getelementptr inbounds %struct.ngx_http_script_engine_t* %e, i32 0, i32 8, !dbg !2288
  store %struct.ngx_http_request_s* %r, %struct.ngx_http_request_s** %request248, align 4, !dbg !2288, !tbaa !2038
  %157 = getelementptr %struct.ngx_http_script_engine_t* %e, i32 0, i32 6, !dbg !2289
  %158 = bitcast i8* %157 to i32*, !dbg !2289
  store i32 1, i32* %158, align 4, !dbg !2289
  %159 = load %struct.ngx_array_s** %13, align 4, !dbg !2290, !tbaa !2038
  %elts253 = getelementptr inbounds %struct.ngx_array_s* %159, i32 0, i32 0, !dbg !2290
  %160 = load i8** %elts253, align 4, !dbg !2290, !tbaa !2038
  %ip254 = getelementptr inbounds %struct.ngx_http_script_engine_t* %le, i32 0, i32 0, !dbg !2290
  store i8* %160, i8** %ip254, align 4, !dbg !2290, !tbaa !2038
  %161 = bitcast i8* %160 to i32*, !dbg !2291
  %162 = load i32* %161, align 4, !dbg !2291, !tbaa !2042
  %tobool257632 = icmp eq i32 %162, 0, !dbg !2291
  br i1 %tobool257632, label %while.end311, label %while.body258, !dbg !2291

while.body258:                                    ; preds = %if.then244, %while.cond255.backedge
  %163 = phi i8* [ %196, %while.cond255.backedge ], [ %160, %if.then244 ]
  %164 = bitcast i8* %163 to i32 (%struct.ngx_http_script_engine_t*)**, !dbg !2292
  %165 = load i32 (%struct.ngx_http_script_engine_t*)** %164, align 4, !dbg !2292, !tbaa !2038
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_script_engine_t*)* %165}, i64 0, metadata !1827), !dbg !2292
  %call260 = call i32 %165(%struct.ngx_http_script_engine_t* %le) nounwind, !dbg !2294
  %166 = load i8** %ip254, align 4, !dbg !2295, !tbaa !2038
  %167 = bitcast i8* %166 to i32 (%struct.ngx_http_script_engine_t*)**, !dbg !2295
  %168 = load i32 (%struct.ngx_http_script_engine_t*)** %167, align 4, !dbg !2295, !tbaa !2038
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_script_engine_t*)* %168}, i64 0, metadata !1827), !dbg !2295
  %call262 = call i32 %168(%struct.ngx_http_script_engine_t* %le) nounwind, !dbg !2296
  call void @llvm.dbg.value(metadata !{i32 %call262}, i64 0, metadata !1794), !dbg !2296
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1787), !dbg !2297
  %169 = load i8** %ip254, align 4, !dbg !2297, !tbaa !2038
  %170 = bitcast i8* %169 to i32*, !dbg !2297
  %171 = load i32* %170, align 4, !dbg !2297, !tbaa !2042
  %tobool267624 = icmp eq i32 %171, 0, !dbg !2297
  br i1 %tobool267624, label %for.end274, label %for.body268, !dbg !2297

for.body268:                                      ; preds = %while.body258, %for.cond265.backedge
  %172 = phi i8* [ %178, %for.cond265.backedge ], [ %169, %while.body258 ]
  %val_len.1625 = phi i32 [ %176, %for.cond265.backedge ], [ 0, %while.body258 ]
  %173 = bitcast i8* %172 to i32 (%struct.ngx_http_script_engine_t*)**, !dbg !2299
  %174 = load i32 (%struct.ngx_http_script_engine_t*)** %173, align 4, !dbg !2299, !tbaa !2038
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_script_engine_t*)* %174}, i64 0, metadata !1827), !dbg !2299
  %call271 = call i32 %174(%struct.ngx_http_script_engine_t* %le) nounwind, !dbg !2297
  %175 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %val_len.1625, i32 %call271), !dbg !2297
  %176 = extractvalue { i32, i1 } %175, 0, !dbg !2297
  %177 = extractvalue { i32, i1 } %175, 1, !dbg !2297
  br i1 %177, label %ioc_bb272, label %for.cond265.backedge, !dbg !2297

for.cond265.backedge:                             ; preds = %for.body268, %ioc_bb272
  %178 = load i8** %ip254, align 4, !dbg !2297, !tbaa !2038
  %179 = bitcast i8* %178 to i32*, !dbg !2297
  %180 = load i32* %179, align 4, !dbg !2297, !tbaa !2042
  %tobool267 = icmp eq i32 %180, 0, !dbg !2297
  br i1 %tobool267, label %for.cond265.for.end274_crit_edge, label %for.body268, !dbg !2297

ioc_bb272:                                        ; preds = %for.body268
  %181 = zext i32 %call271 to i64, !dbg !2297
  %182 = zext i32 %val_len.1625 to i64, !dbg !2297
  call void @__ioc_report_add_overflow(i32 310, i32 57, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @2, i32 0, i32 0), i64 %182, i64 %181, i8 5) nounwind, !dbg !2297
  br label %for.cond265.backedge, !dbg !2297

for.cond265.for.end274_crit_edge:                 ; preds = %for.cond265.backedge
  %phitmp = icmp eq i32 %176, 0, !dbg !2297
  br label %for.end274, !dbg !2297

for.end274:                                       ; preds = %for.cond265.for.end274_crit_edge, %while.body258
  %.lcssa = phi i8* [ %178, %for.cond265.for.end274_crit_edge ], [ %169, %while.body258 ]
  %val_len.1.lcssa = phi i1 [ %phitmp, %for.cond265.for.end274_crit_edge ], [ true, %while.body258 ]
  %add.ptr276 = getelementptr inbounds i8* %.lcssa, i32 4, !dbg !2301
  store i8* %add.ptr276, i8** %ip254, align 4, !dbg !2301, !tbaa !2038
  %tobool277 = icmp ne i32 %call262, 0, !dbg !2302
  %or.cond612 = and i1 %tobool277, %val_len.1.lcssa, !dbg !2302
  br i1 %or.cond612, label %cont285, label %if.end298, !dbg !2302

cont285:                                          ; preds = %for.end274
  %183 = load i32* %158, align 4, !dbg !2303
  %184 = or i32 %183, 2, !dbg !2303
  store i32 %184, i32* %158, align 4, !dbg !2303
  %185 = load i8** %ip246, align 4, !dbg !2305, !tbaa !2038
  %186 = bitcast i8* %185 to i32*, !dbg !2305
  %187 = load i32* %186, align 4, !dbg !2305, !tbaa !2042
  %tobool289630 = icmp eq i32 %187, 0, !dbg !2305
  br i1 %tobool289630, label %while.end292, label %while.body290, !dbg !2305

while.body290:                                    ; preds = %cont285, %while.body290
  %188 = phi i8* [ %191, %while.body290 ], [ %185, %cont285 ]
  %189 = bitcast i8* %188 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2306
  %190 = load void (%struct.ngx_http_script_engine_t*)** %189, align 4, !dbg !2306, !tbaa !2038
  call void @llvm.dbg.value(metadata !{void (%struct.ngx_http_script_engine_t*)* %190}, i64 0, metadata !1802), !dbg !2306
  call void %190(%struct.ngx_http_script_engine_t* %e) nounwind, !dbg !2308
  %191 = load i8** %ip246, align 4, !dbg !2305, !tbaa !2038
  %192 = bitcast i8* %191 to i32*, !dbg !2305
  %193 = load i32* %192, align 4, !dbg !2305, !tbaa !2042
  %tobool289 = icmp eq i32 %193, 0, !dbg !2305
  br i1 %tobool289, label %while.cond287.while.end292_crit_edge, label %while.body290, !dbg !2305

while.cond287.while.end292_crit_edge:             ; preds = %while.body290
  %.pre662 = load i32* %158, align 4, !dbg !2309
  br label %while.end292, !dbg !2305

while.end292:                                     ; preds = %while.cond287.while.end292_crit_edge, %cont285
  %194 = phi i32 [ %.pre662, %while.cond287.while.end292_crit_edge ], [ %184, %cont285 ]
  %.lcssa629 = phi i8* [ %191, %while.cond287.while.end292_crit_edge ], [ %185, %cont285 ]
  %add.ptr294 = getelementptr inbounds i8* %.lcssa629, i32 4, !dbg !2310
  store i8* %add.ptr294, i8** %ip246, align 4, !dbg !2310, !tbaa !2038
  %195 = and i32 %194, -3, !dbg !2309
  store i32 %195, i32* %158, align 4, !dbg !2309
  br label %while.cond255.backedge, !dbg !2311

while.cond255.backedge:                           ; preds = %while.end292, %cont307
  %196 = load i8** %ip254, align 4, !dbg !2291, !tbaa !2038
  %197 = bitcast i8* %196 to i32*, !dbg !2291
  %198 = load i32* %197, align 4, !dbg !2291, !tbaa !2042
  %tobool257 = icmp eq i32 %198, 0, !dbg !2291
  br i1 %tobool257, label %while.cond255.while.end311_crit_edge, label %while.body258, !dbg !2291

if.end298:                                        ; preds = %for.end274
  %199 = load i8** %ip246, align 4, !dbg !2312, !tbaa !2038
  %200 = bitcast i8* %199 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2312
  %201 = load void (%struct.ngx_http_script_engine_t*)** %200, align 4, !dbg !2312, !tbaa !2038
  call void @llvm.dbg.value(metadata !{void (%struct.ngx_http_script_engine_t*)* %201}, i64 0, metadata !1802), !dbg !2312
  call void %201(%struct.ngx_http_script_engine_t* %e) nounwind, !dbg !2313
  %202 = load i8** %ip246, align 4, !dbg !2314, !tbaa !2038
  %203 = bitcast i8* %202 to i32*, !dbg !2314
  %204 = load i32* %203, align 4, !dbg !2314, !tbaa !2042
  %tobool302628 = icmp eq i32 %204, 0, !dbg !2314
  br i1 %tobool302628, label %cont307, label %while.body303, !dbg !2314

while.body303:                                    ; preds = %if.end298, %while.body303
  %205 = phi i8* [ %208, %while.body303 ], [ %202, %if.end298 ]
  %206 = bitcast i8* %205 to void (%struct.ngx_http_script_engine_t*)**, !dbg !2315
  %207 = load void (%struct.ngx_http_script_engine_t*)** %206, align 4, !dbg !2315, !tbaa !2038
  call void @llvm.dbg.value(metadata !{void (%struct.ngx_http_script_engine_t*)* %207}, i64 0, metadata !1802), !dbg !2315
  call void %207(%struct.ngx_http_script_engine_t* %e) nounwind, !dbg !2317
  %208 = load i8** %ip246, align 4, !dbg !2314, !tbaa !2038
  %209 = bitcast i8* %208 to i32*, !dbg !2314
  %210 = load i32* %209, align 4, !dbg !2314, !tbaa !2042
  %tobool302 = icmp eq i32 %210, 0, !dbg !2314
  br i1 %tobool302, label %cont307, label %while.body303, !dbg !2314

cont307:                                          ; preds = %while.body303, %if.end298
  %211 = load i8** %pos, align 4, !dbg !2318, !tbaa !2038
  %incdec.ptr = getelementptr inbounds i8* %211, i32 1, !dbg !2318
  store i8* %incdec.ptr, i8** %pos, align 4, !dbg !2318, !tbaa !2038
  store i8 0, i8* %211, align 1, !dbg !2318, !tbaa !2039
  %212 = load i8** %ip246, align 4, !dbg !2319, !tbaa !2038
  %add.ptr310 = getelementptr inbounds i8* %212, i32 4, !dbg !2319
  store i8* %add.ptr310, i8** %ip246, align 4, !dbg !2319, !tbaa !2038
  br label %while.cond255.backedge, !dbg !2320

while.cond255.while.end311_crit_edge:             ; preds = %while.cond255.backedge
  %.pre661 = load i8** %pos, align 4, !dbg !2321, !tbaa !2038
  br label %while.end311, !dbg !2291

while.end311:                                     ; preds = %while.cond255.while.end311_crit_edge, %if.then244
  %213 = phi i8* [ %.pre661, %while.cond255.while.end311_crit_edge ], [ %156, %if.then244 ]
  store i8* %213, i8** %last, align 4, !dbg !2321, !tbaa !2038
  br label %if.end314, !dbg !2322

if.end314:                                        ; preds = %if.end219, %while.end311
  %214 = phi i8* [ %call240, %if.end219 ], [ %213, %while.end311 ]
  %215 = load i32* %59, align 4, !dbg !2323, !tbaa !2042
  %tobool317 = icmp eq i32 %215, 0, !dbg !2323
  br i1 %tobool317, label %cont432, label %if.then318, !dbg !2323

if.then318:                                       ; preds = %if.end314
  %part321 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 13, i32 0, i32 1, !dbg !2324
  call void @llvm.dbg.value(metadata !{%struct.ngx_list_part_s* %part321}, i64 0, metadata !1798), !dbg !2324
  call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t* %217}, i64 0, metadata !1799), !dbg !2326
  %elts322 = getelementptr inbounds %struct.ngx_list_part_s* %part321, i32 0, i32 0, !dbg !2326
  %216 = load i8** %elts322, align 4, !dbg !2326, !tbaa !2038
  %217 = bitcast i8* %216 to %struct.ngx_table_elt_t*, !dbg !2326
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1791), !dbg !2327
  %cmp343620 = icmp eq i32 %header_params.2, 0, !dbg !2329
  br label %for.cond325, !dbg !2327

for.cond325:                                      ; preds = %ioc_bb427, %for.inc426, %if.then318
  %i.2 = phi i32 [ 0, %if.then318 ], [ %244, %for.inc426 ], [ %244, %ioc_bb427 ]
  %part.3 = phi %struct.ngx_list_part_s* [ %part321, %if.then318 ], [ %part.4, %for.inc426 ], [ %part.4, %ioc_bb427 ]
  %header.2 = phi %struct.ngx_table_elt_t* [ %217, %if.then318 ], [ %header.3, %for.inc426 ], [ %header.3, %ioc_bb427 ]
  %nelts326 = getelementptr inbounds %struct.ngx_list_part_s* %part.3, i32 0, i32 1, !dbg !2332
  %218 = load i32* %nelts326, align 4, !dbg !2332, !tbaa !2042
  %cmp327 = icmp ult i32 %i.2, %218, !dbg !2332
  br i1 %cmp327, label %cont341, label %if.then329, !dbg !2332

if.then329:                                       ; preds = %for.cond325
  %next330 = getelementptr inbounds %struct.ngx_list_part_s* %part.3, i32 0, i32 2, !dbg !2333
  %219 = load %struct.ngx_list_part_s** %next330, align 4, !dbg !2333, !tbaa !2038
  %cmp331 = icmp eq %struct.ngx_list_part_s* %219, null, !dbg !2333
  br i1 %cmp331, label %cont432.loopexit, label %cont338, !dbg !2333

cont338:                                          ; preds = %if.then329
  call void @llvm.dbg.value(metadata !{%struct.ngx_list_part_s* %219}, i64 0, metadata !1798), !dbg !2335
  call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t* %221}, i64 0, metadata !1799), !dbg !2336
  %elts336 = getelementptr inbounds %struct.ngx_list_part_s* %219, i32 0, i32 0, !dbg !2336
  %220 = load i8** %elts336, align 4, !dbg !2336, !tbaa !2038
  %221 = bitcast i8* %220 to %struct.ngx_table_elt_t*, !dbg !2336
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1791), !dbg !2337
  br label %cont341, !dbg !2338

cont341:                                          ; preds = %cont338, %for.cond325
  %i.3 = phi i32 [ 0, %cont338 ], [ %i.2, %for.cond325 ]
  %part.4 = phi %struct.ngx_list_part_s* [ %219, %cont338 ], [ %part.3, %for.cond325 ]
  %header.3 = phi %struct.ngx_table_elt_t* [ %221, %cont338 ], [ %header.2, %for.cond325 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1792), !dbg !2329
  br i1 %cmp343620, label %for.end355, label %for.body345.lr.ph, !dbg !2329

for.body345.lr.ph:                                ; preds = %cont341
  %arrayidx346 = getelementptr inbounds %struct.ngx_table_elt_t* %header.3, i32 %i.3, !dbg !2339
  br label %for.body345, !dbg !2329

for.body345:                                      ; preds = %for.body345.lr.ph, %for.cond342.backedge
  %n.2621 = phi i32 [ 0, %for.body345.lr.ph ], [ %224, %for.cond342.backedge ]
  %arrayidx347 = getelementptr inbounds %struct.ngx_table_elt_t** %ignored.1, i32 %n.2621, !dbg !2339
  %222 = load %struct.ngx_table_elt_t** %arrayidx347, align 4, !dbg !2339, !tbaa !2038
  %cmp348 = icmp eq %struct.ngx_table_elt_t* %arrayidx346, %222, !dbg !2339
  br i1 %cmp348, label %for.inc426, label %for.inc352, !dbg !2339

for.inc352:                                       ; preds = %for.body345
  %223 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.2621, i32 1), !dbg !2329
  %224 = extractvalue { i32, i1 } %223, 0, !dbg !2329
  %225 = extractvalue { i32, i1 } %223, 1, !dbg !2329
  br i1 %225, label %ioc_bb353, label %for.cond342.backedge, !dbg !2329

for.cond342.backedge:                             ; preds = %for.inc352, %ioc_bb353
  %cmp343 = icmp ult i32 %224, %header_params.2, !dbg !2329
  br i1 %cmp343, label %for.body345, label %for.end355, !dbg !2329

ioc_bb353:                                        ; preds = %for.inc352
  %226 = zext i32 %n.2621 to i64, !dbg !2329
  call void @__ioc_report_add_overflow(i32 353, i32 39, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %226, i64 1, i8 5) nounwind, !dbg !2329
  br label %for.cond342.backedge, !dbg !2329

for.end355:                                       ; preds = %for.cond342.backedge, %cont341
  %227 = load i8** %last, align 4, !dbg !2341, !tbaa !2038
  call void @llvm.dbg.value(metadata !{i8* %227}, i64 0, metadata !1782), !dbg !2341
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %227, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i32 5, i32 1, i1 false), !dbg !2342
  %add.ptr365 = getelementptr inbounds i8* %227, i32 5, !dbg !2342
  store i8* %add.ptr365, i8** %last, align 4, !dbg !2342, !tbaa !2038
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1792), !dbg !2343
  %len372 = getelementptr inbounds %struct.ngx_table_elt_t* %header.3, i32 %i.3, i32 1, i32 0, !dbg !2343
  %228 = load i32* %len372, align 4, !dbg !2343, !tbaa !2042
  %cmp373622 = icmp eq i32 %228, 0, !dbg !2343
  br i1 %cmp373622, label %cont406, label %for.body375.lr.ph, !dbg !2343

for.body375.lr.ph:                                ; preds = %for.end355
  %data378 = getelementptr inbounds %struct.ngx_table_elt_t* %header.3, i32 %i.3, i32 1, i32 1, !dbg !2345
  br label %for.body375, !dbg !2343

for.body375:                                      ; preds = %for.body375.lr.ph, %for.cond369.backedge
  %n.3623 = phi i32 [ 0, %for.body375.lr.ph ], [ %234, %for.cond369.backedge ]
  %229 = load i8** %data378, align 4, !dbg !2345, !tbaa !2038
  %arrayidx379 = getelementptr inbounds i8* %229, i32 %n.3623, !dbg !2345
  %230 = load i8* %arrayidx379, align 1, !dbg !2345, !tbaa !2039
  call void @llvm.dbg.value(metadata !{i8 %230}, i64 0, metadata !1780), !dbg !2345
  %.off615 = add i8 %230, -97, !dbg !2347
  %231 = icmp ult i8 %.off615, 26, !dbg !2347
  br i1 %231, label %if.then387, label %if.else390, !dbg !2347

if.then387:                                       ; preds = %for.body375
  %and = and i8 %230, -33, !dbg !2348
  call void @llvm.dbg.value(metadata !{i8 %and}, i64 0, metadata !1780), !dbg !2348
  br label %if.end398, !dbg !2350

if.else390:                                       ; preds = %for.body375
  %cmp392 = icmp eq i8 %230, 45, !dbg !2351
  %.614 = select i1 %cmp392, i8 95, i8 %230, !dbg !2351
  br label %if.end398, !dbg !2351

if.end398:                                        ; preds = %if.else390, %if.then387
  %ch.1 = phi i8 [ %and, %if.then387 ], [ %.614, %if.else390 ]
  %232 = load i8** %last, align 4, !dbg !2352, !tbaa !2038
  %incdec.ptr400 = getelementptr inbounds i8* %232, i32 1, !dbg !2352
  store i8* %incdec.ptr400, i8** %last, align 4, !dbg !2352, !tbaa !2038
  store i8 %ch.1, i8* %232, align 1, !dbg !2352, !tbaa !2039
  %233 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.3623, i32 1), !dbg !2343
  %234 = extractvalue { i32, i1 } %233, 0, !dbg !2343
  %235 = extractvalue { i32, i1 } %233, 1, !dbg !2343
  br i1 %235, label %ioc_bb402, label %for.cond369.backedge, !dbg !2343

for.cond369.backedge:                             ; preds = %if.end398, %ioc_bb402
  %236 = load i32* %len372, align 4, !dbg !2343, !tbaa !2042
  %cmp373 = icmp ult i32 %234, %236, !dbg !2343
  br i1 %cmp373, label %for.body375, label %for.cond369.cont406_crit_edge, !dbg !2343

ioc_bb402:                                        ; preds = %if.end398
  %237 = zext i32 %n.3623 to i64, !dbg !2343
  call void @__ioc_report_add_overflow(i32 360, i32 43, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %237, i64 1, i8 5) nounwind, !dbg !2343
  br label %for.cond369.backedge, !dbg !2343

for.cond369.cont406_crit_edge:                    ; preds = %for.cond369.backedge
  %.pre660 = load i8** %last, align 4, !dbg !2353, !tbaa !2038
  br label %cont406, !dbg !2343

cont406:                                          ; preds = %for.end355, %for.cond369.cont406_crit_edge
  %238 = phi i8* [ %add.ptr365, %for.end355 ], [ %.pre660, %for.cond369.cont406_crit_edge ]
  %incdec.ptr408 = getelementptr inbounds i8* %238, i32 1, !dbg !2353
  store i8* %incdec.ptr408, i8** %last, align 4, !dbg !2353, !tbaa !2038
  store i8 0, i8* %238, align 1, !dbg !2353, !tbaa !2039
  %239 = load i8** %last, align 4, !dbg !2354, !tbaa !2038
  call void @llvm.dbg.value(metadata !{i8* %239}, i64 0, metadata !1783), !dbg !2354
  %data412 = getelementptr inbounds %struct.ngx_table_elt_t* %header.3, i32 %i.3, i32 2, i32 1, !dbg !2355
  %240 = load i8** %data412, align 4, !dbg !2355, !tbaa !2038
  %len415 = getelementptr inbounds %struct.ngx_table_elt_t* %header.3, i32 %i.3, i32 2, i32 0, !dbg !2355
  %241 = load i32* %len415, align 4, !dbg !2355, !tbaa !2042
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %239, i8* %240, i32 %241, i32 1, i1 false), !dbg !2355
  %242 = load i32* %len415, align 4, !dbg !2355, !tbaa !2042
  %add.ptr419 = getelementptr inbounds i8* %239, i32 %242, !dbg !2355
  %add.ptr419.sum = add i32 %242, 1, !dbg !2356
  %incdec.ptr424 = getelementptr inbounds i8* %239, i32 %add.ptr419.sum, !dbg !2356
  store i8* %incdec.ptr424, i8** %last, align 4, !dbg !2356, !tbaa !2038
  store i8 0, i8* %add.ptr419, align 1, !dbg !2356, !tbaa !2039
  br label %for.inc426, !dbg !2356

for.inc426:                                       ; preds = %for.body345, %cont406
  %243 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.3, i32 1), !dbg !2327
  %244 = extractvalue { i32, i1 } %243, 0, !dbg !2327
  %245 = extractvalue { i32, i1 } %243, 1, !dbg !2327
  br i1 %245, label %ioc_bb427, label %for.cond325, !dbg !2327

ioc_bb427:                                        ; preds = %for.inc426
  %246 = zext i32 %i.3 to i64, !dbg !2327
  call void @__ioc_report_add_overflow(i32 344, i32 20, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %246, i64 1, i8 5) nounwind, !dbg !2327
  br label %for.cond325, !dbg !2327

cont432.loopexit:                                 ; preds = %if.then329
  %.pre = load i8** %last, align 4, !dbg !2357, !tbaa !2038
  br label %cont432

cont432:                                          ; preds = %cont432.loopexit, %if.end314
  %247 = phi i8* [ %.pre, %cont432.loopexit ], [ %214, %if.end314 ]
  %incdec.ptr434 = getelementptr inbounds i8* %247, i32 1, !dbg !2357
  store i8* %incdec.ptr434, i8** %last, align 4, !dbg !2357, !tbaa !2038
  store i8 44, i8* %247, align 1, !dbg !2357, !tbaa !2039
  %pass_request_body = getelementptr inbounds i8* %12, i32 80, !dbg !2358
  %248 = bitcast i8* %pass_request_body to i32*, !dbg !2358
  %249 = load i32* %248, align 4, !dbg !2358, !tbaa !2042
  %tobool436 = icmp eq i32 %249, 0, !dbg !2358
  %upstream468 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !2359
  %250 = load %struct.ngx_http_upstream_s** %upstream468, align 4, !dbg !2359, !tbaa !2038
  %request_bufs469 = getelementptr inbounds %struct.ngx_http_upstream_s* %250, i32 0, i32 4, !dbg !2359
  br i1 %tobool436, label %if.else467, label %if.then437, !dbg !2358

if.then437:                                       ; preds = %cont432
  %251 = load %struct.ngx_chain_s** %request_bufs469, align 4, !dbg !2361, !tbaa !2038
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %251}, i64 0, metadata !1797), !dbg !2361
  store %struct.ngx_chain_s* %call213, %struct.ngx_chain_s** %request_bufs469, align 4, !dbg !2363, !tbaa !2038
  %tobool442617 = icmp eq %struct.ngx_chain_s* %251, null, !dbg !2364
  br i1 %tobool442617, label %if.end470, label %while.body443, !dbg !2364

while.body443:                                    ; preds = %if.then437, %if.end462
  %body.0619 = phi %struct.ngx_chain_s* [ %257, %if.end462 ], [ %251, %if.then437 ]
  %cl.0618 = phi %struct.ngx_chain_s* [ %call454, %if.end462 ], [ %call213, %if.then437 ]
  %252 = load %struct.ngx_pool_s** %pool190.pre-phi, align 4, !dbg !2365, !tbaa !2038
  %call445 = call i8* @ngx_palloc(%struct.ngx_pool_s* %252, i32 52) nounwind, !dbg !2365
  %253 = bitcast i8* %call445 to %struct.ngx_buf_s*, !dbg !2365
  call void @llvm.dbg.value(metadata !{%struct.ngx_buf_s* %253}, i64 0, metadata !1789), !dbg !2365
  %cmp446 = icmp eq i8* %call445, null, !dbg !2367
  br i1 %cmp446, label %return, label %if.end451, !dbg !2367

if.end451:                                        ; preds = %while.body443
  %buf452 = getelementptr inbounds %struct.ngx_chain_s* %body.0619, i32 0, i32 0, !dbg !2368
  %254 = load %struct.ngx_buf_s** %buf452, align 4, !dbg !2368, !tbaa !2038
  %255 = bitcast %struct.ngx_buf_s* %254 to i8*, !dbg !2368
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call445, i8* %255, i32 52, i32 4, i1 false), !dbg !2368
  %256 = load %struct.ngx_pool_s** %pool190.pre-phi, align 4, !dbg !2369, !tbaa !2038
  %call454 = call %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s* %256) nounwind, !dbg !2369
  %next455 = getelementptr inbounds %struct.ngx_chain_s* %cl.0618, i32 0, i32 1, !dbg !2369
  store %struct.ngx_chain_s* %call454, %struct.ngx_chain_s** %next455, align 4, !dbg !2369, !tbaa !2038
  %cmp457 = icmp eq %struct.ngx_chain_s* %call454, null, !dbg !2370
  br i1 %cmp457, label %return, label %if.end462, !dbg !2370

if.end462:                                        ; preds = %if.end451
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %call454}, i64 0, metadata !1796), !dbg !2371
  %buf464 = getelementptr inbounds %struct.ngx_chain_s* %call454, i32 0, i32 0, !dbg !2372
  store %struct.ngx_buf_s* %253, %struct.ngx_buf_s** %buf464, align 4, !dbg !2372, !tbaa !2038
  %next465 = getelementptr inbounds %struct.ngx_chain_s* %body.0619, i32 0, i32 1, !dbg !2373
  %257 = load %struct.ngx_chain_s** %next465, align 4, !dbg !2373, !tbaa !2038
  call void @llvm.dbg.value(metadata !{%struct.ngx_chain_s* %257}, i64 0, metadata !1797), !dbg !2373
  %tobool442 = icmp eq %struct.ngx_chain_s* %257, null, !dbg !2364
  br i1 %tobool442, label %if.end470, label %while.body443, !dbg !2364

if.else467:                                       ; preds = %cont432
  store %struct.ngx_chain_s* %call213, %struct.ngx_chain_s** %request_bufs469, align 4, !dbg !2359, !tbaa !2038
  br label %if.end470

if.end470:                                        ; preds = %if.then437, %if.end462, %if.else467
  %cl.1 = phi %struct.ngx_chain_s* [ %call213, %if.else467 ], [ %call213, %if.then437 ], [ %call454, %if.end462 ]
  %next471 = getelementptr inbounds %struct.ngx_chain_s* %cl.1, i32 0, i32 1, !dbg !2374
  store %struct.ngx_chain_s* null, %struct.ngx_chain_s** %next471, align 4, !dbg !2374, !tbaa !2038
  br label %return, !dbg !2375

return:                                           ; preds = %cont101, %if.end451, %while.body443, %if.end211, %cont204, %cont60, %if.end470
  %retval.0 = phi i32 [ 0, %if.end470 ], [ -1, %cont60 ], [ -1, %cont204 ], [ -1, %if.end211 ], [ -1, %while.body443 ], [ -1, %if.end451 ], [ -1, %cont101 ]
  ret i32 %retval.0, !dbg !2376
}

define internal i32 @ngx_http_scgi_reinit_request(%struct.ngx_http_request_s* nocapture %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1773), !dbg !2377
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_scgi_module, i32 0, i32 0), align 4, !dbg !2378, !tbaa !2042
  %ctx = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !2378
  %1 = load i8*** %ctx, align 4, !dbg !2378, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2378
  %2 = load i8** %arrayidx, align 4, !dbg !2378, !tbaa !2038
  %cmp = icmp eq i8* %2, null, !dbg !2379
  br i1 %cmp, label %return, label %cont, !dbg !2379

cont:                                             ; preds = %entry
  %code = getelementptr inbounds i8* %2, i32 4, !dbg !2380
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !2381
  call void @llvm.memset.p0i8.i64(i8* %code, i8 0, i64 16, i32 4, i1 false), !dbg !2382
  %3 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !2381, !tbaa !2038
  %process_header = getelementptr inbounds %struct.ngx_http_upstream_s* %3, i32 0, i32 21, !dbg !2381
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_process_status_line, i32 (%struct.ngx_http_request_s*)** %process_header, align 4, !dbg !2381, !tbaa !2038
  %state = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 60, !dbg !2383
  store i32 0, i32* %state, align 4, !dbg !2383, !tbaa !2042
  br label %return, !dbg !2384

return:                                           ; preds = %entry, %cont
  ret i32 0, !dbg !2385
}

define internal i32 @ngx_http_scgi_process_status_line(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1732), !dbg !2386
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_scgi_module, i32 0, i32 0), align 4, !dbg !2387, !tbaa !2042
  %ctx = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 2, !dbg !2387
  %1 = load i8*** %ctx, align 4, !dbg !2387, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2387
  %2 = load i8** %arrayidx, align 4, !dbg !2387, !tbaa !2038
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_status_t* %3}, i64 0, metadata !1736), !dbg !2387
  %cmp = icmp eq i8* %2, null, !dbg !2388
  br i1 %cmp, label %return, label %if.end, !dbg !2388

if.end:                                           ; preds = %entry
  %3 = bitcast i8* %2 to %struct.ngx_http_status_t*, !dbg !2387
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !2389
  %4 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !2389, !tbaa !2038
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %4}, i64 0, metadata !1737), !dbg !2389
  %buffer = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 10, !dbg !2390
  %call = tail call i32 @ngx_http_parse_status_line(%struct.ngx_http_request_s* %r, %struct.ngx_buf_s* %buffer, %struct.ngx_http_status_t* %3) nounwind, !dbg !2390
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1735), !dbg !2390
  switch i32 %call, label %if.end11 [
    i32 -2, label %return
    i32 -1, label %if.then9
  ], !dbg !2391

if.then9:                                         ; preds = %if.end
  %process_header = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 21, !dbg !2392
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_process_header, i32 (%struct.ngx_http_request_s*)** %process_header, align 4, !dbg !2392, !tbaa !2038
  %call10 = tail call i32 @ngx_http_scgi_process_header(%struct.ngx_http_request_s* %r), !dbg !2394
  br label %return, !dbg !2394

if.end11:                                         ; preds = %if.end
  %state = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 27, !dbg !2395
  %5 = load %struct.ngx_http_upstream_state_t** %state, align 4, !dbg !2395, !tbaa !2038
  %tobool = icmp eq %struct.ngx_http_upstream_state_t* %5, null, !dbg !2395
  %code16.pre = getelementptr inbounds i8* %2, i32 4, !dbg !2396
  %.pre = bitcast i8* %code16.pre to i32*, !dbg !2396
  br i1 %tobool, label %if.end15, label %if.then12, !dbg !2395

if.then12:                                        ; preds = %if.end11
  %6 = load i32* %.pre, align 4, !dbg !2397, !tbaa !2042
  %status14 = getelementptr inbounds %struct.ngx_http_upstream_state_t* %5, i32 0, i32 2, !dbg !2397
  store i32 %6, i32* %status14, align 4, !dbg !2397, !tbaa !2042
  br label %if.end15, !dbg !2399

if.end15:                                         ; preds = %if.end11, %if.then12
  %7 = load i32* %.pre, align 4, !dbg !2396, !tbaa !2042
  %status_n = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 8, i32 1, !dbg !2396
  store i32 %7, i32* %status_n, align 4, !dbg !2396, !tbaa !2042
  %end = getelementptr inbounds i8* %2, i32 16, !dbg !2400
  %8 = bitcast i8* %end to i8**, !dbg !2400
  %9 = load i8** %8, align 4, !dbg !2400, !tbaa !2038
  %start = getelementptr inbounds i8* %2, i32 12, !dbg !2400
  %10 = bitcast i8* %start to i8**, !dbg !2400
  %11 = load i8** %10, align 4, !dbg !2400, !tbaa !2038
  %sub.ptr.lhs.cast = ptrtoint i8* %9 to i32, !dbg !2400
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i32, !dbg !2400
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2400
  %12 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2400
  br i1 %12, label %cont18, label %ioc_bb17, !dbg !2400

ioc_bb17:                                         ; preds = %if.end15
  %13 = sext i32 %sub.ptr.sub to i64, !dbg !2400
  tail call void @__ioc_report_conversion(i32 444, i32 9, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %13, i8 1) nounwind, !dbg !2400
  br label %cont18, !dbg !2400

cont18:                                           ; preds = %ioc_bb17, %if.end15
  tail call void @llvm.dbg.value(metadata !{i32 %sub.ptr.sub}, i64 0, metadata !1733), !dbg !2400
  %len20 = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 8, i32 2, i32 0, !dbg !2401
  store i32 %sub.ptr.sub, i32* %len20, align 4, !dbg !2401, !tbaa !2042
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2402
  %14 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2402, !tbaa !2038
  %call21 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %14, i32 %sub.ptr.sub) nounwind, !dbg !2402
  %data = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 8, i32 2, i32 1, !dbg !2402
  store i8* %call21, i8** %data, align 4, !dbg !2402, !tbaa !2038
  %cmp27 = icmp eq i8* %call21, null, !dbg !2403
  br i1 %cmp27, label %return, label %if.end31, !dbg !2403

if.end31:                                         ; preds = %cont18
  %15 = load i8** %10, align 4, !dbg !2404, !tbaa !2038
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call21, i8* %15, i32 %sub.ptr.sub, i32 1, i1 false), !dbg !2404
  %process_header36 = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 21, !dbg !2405
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_process_header, i32 (%struct.ngx_http_request_s*)** %process_header36, align 4, !dbg !2405, !tbaa !2038
  %call37 = tail call i32 @ngx_http_scgi_process_header(%struct.ngx_http_request_s* %r), !dbg !2406
  br label %return, !dbg !2406

return:                                           ; preds = %cont18, %if.end, %entry, %if.end31, %if.then9
  %retval.0 = phi i32 [ %call10, %if.then9 ], [ %call37, %if.end31 ], [ -1, %entry ], [ -2, %if.end ], [ -1, %cont18 ]
  ret i32 %retval.0, !dbg !2407
}

define internal void @ngx_http_scgi_abort_request(%struct.ngx_http_request_s* nocapture %r) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1728), !dbg !2408
  ret void, !dbg !2409
}

define internal void @ngx_http_scgi_finalize_request(%struct.ngx_http_request_s* nocapture %r, i32 %rc) nounwind readnone {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1723), !dbg !2411
  tail call void @llvm.dbg.value(metadata !{i32 %rc}, i64 0, metadata !1724), !dbg !2411
  ret void, !dbg !2412
}

declare i32 @ngx_event_pipe_copy_input_filter(%struct.ngx_event_pipe_s*, %struct.ngx_buf_s*)

declare i32 @ngx_http_read_client_request_body(%struct.ngx_http_request_s*, void (%struct.ngx_http_request_s*)*)

declare void @ngx_http_upstream_init(%struct.ngx_http_request_s*)

declare i32 @ngx_http_parse_status_line(%struct.ngx_http_request_s*, %struct.ngx_buf_s*, %struct.ngx_http_status_t*)

define internal i32 @ngx_http_scgi_process_header(%struct.ngx_http_request_s* %r) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_request_s* %r}, i64 0, metadata !1741), !dbg !2414
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_upstream_module, i32 0, i32 0), align 4, !dbg !2415, !tbaa !2042
  %main_conf = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 3, !dbg !2415
  %1 = load i8*** %main_conf, align 4, !dbg !2415, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %1, i32 %0, !dbg !2415
  %2 = load i8** %arrayidx, align 4, !dbg !2415, !tbaa !2038
  %upstream = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 9, !dbg !2416
  %header_hash = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 61, !dbg !2419
  %header_name_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 65, !dbg !2421
  %header_name_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 64, !dbg !2421
  %header_end = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 67, !dbg !2422
  %header_start = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 66, !dbg !2422
  %pool = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 11, !dbg !2423
  %lowcase_index = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 62, !dbg !2424
  %3 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 63, i32 0, !dbg !2425
  %headers_in_hash = bitcast i8* %2 to %struct.ngx_hash_t*, !dbg !2427
  br label %for.cond, !dbg !2428

for.cond:                                         ; preds = %land.lhs.true, %if.end96, %entry
  %4 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !2416, !tbaa !2038
  %buffer = getelementptr inbounds %struct.ngx_http_upstream_s* %4, i32 0, i32 10, !dbg !2416
  %call = tail call i32 @ngx_http_parse_header_line(%struct.ngx_http_request_s* %r, %struct.ngx_buf_s* %buffer, i32 1) nounwind, !dbg !2416
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !1744), !dbg !2416
  switch i32 %call, label %if.end197 [
    i32 0, label %if.then
    i32 1, label %if.then110
    i32 -2, label %return
  ], !dbg !2429

if.then:                                          ; preds = %for.cond
  %5 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !2430, !tbaa !2038
  %headers = getelementptr inbounds %struct.ngx_http_upstream_s* %5, i32 0, i32 8, i32 0, !dbg !2430
  %call2 = tail call i8* @ngx_list_push(%struct.ngx_list_t* %headers) nounwind, !dbg !2430
  %6 = bitcast i8* %call2 to %struct.ngx_table_elt_t*, !dbg !2430
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_table_elt_t* %6}, i64 0, metadata !1746), !dbg !2430
  %cmp3 = icmp eq i8* %call2, null, !dbg !2431
  br i1 %cmp3, label %return, label %if.end, !dbg !2431

if.end:                                           ; preds = %if.then
  %7 = load i32* %header_hash, align 4, !dbg !2419, !tbaa !2042
  %hash = bitcast i8* %call2 to i32*, !dbg !2419
  store i32 %7, i32* %hash, align 4, !dbg !2419, !tbaa !2042
  %8 = load i8** %header_name_end, align 4, !dbg !2421, !tbaa !2038
  %9 = load i8** %header_name_start, align 4, !dbg !2421, !tbaa !2038
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i32, !dbg !2421
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i32, !dbg !2421
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2421
  %10 = icmp sgt i32 %sub.ptr.sub, -1, !dbg !2421
  br i1 %10, label %cont8, label %ioc_bb7, !dbg !2421

ioc_bb7:                                          ; preds = %if.end
  %11 = sext i32 %sub.ptr.sub to i64, !dbg !2421
  tail call void @__ioc_report_conversion(i32 475, i32 22, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %11, i8 1) nounwind, !dbg !2421
  br label %cont8, !dbg !2421

cont8:                                            ; preds = %ioc_bb7, %if.end
  %key = getelementptr inbounds i8* %call2, i32 4, !dbg !2421
  %len = bitcast i8* %key to i32*, !dbg !2421
  store i32 %sub.ptr.sub, i32* %len, align 4, !dbg !2421, !tbaa !2042
  %12 = load i8** %header_end, align 4, !dbg !2422, !tbaa !2038
  %13 = load i8** %header_start, align 4, !dbg !2422, !tbaa !2038
  %sub.ptr.lhs.cast9 = ptrtoint i8* %12 to i32, !dbg !2422
  %sub.ptr.rhs.cast10 = ptrtoint i8* %13 to i32, !dbg !2422
  %sub.ptr.sub11 = sub i32 %sub.ptr.lhs.cast9, %sub.ptr.rhs.cast10, !dbg !2422
  %14 = icmp sgt i32 %sub.ptr.sub11, -1, !dbg !2422
  br i1 %14, label %cont14, label %ioc_bb13, !dbg !2422

ioc_bb13:                                         ; preds = %cont8
  %15 = sext i32 %sub.ptr.sub11 to i64, !dbg !2422
  tail call void @__ioc_report_conversion(i32 476, i32 24, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %15, i8 1) nounwind, !dbg !2422
  %.pre = load i32* %len, align 4, !dbg !2423, !tbaa !2042
  br label %cont14, !dbg !2422

cont14:                                           ; preds = %ioc_bb13, %cont8
  %16 = phi i32 [ %.pre, %ioc_bb13 ], [ %sub.ptr.sub, %cont8 ]
  %value = getelementptr inbounds i8* %call2, i32 12, !dbg !2422
  %len15 = bitcast i8* %value to i32*, !dbg !2422
  store i32 %sub.ptr.sub11, i32* %len15, align 4, !dbg !2422, !tbaa !2042
  %17 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2423, !tbaa !2038
  %18 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %16, i32 1), !dbg !2423
  %19 = extractvalue { i32, i1 } %18, 0, !dbg !2423
  %20 = extractvalue { i32, i1 } %18, 1, !dbg !2423
  br i1 %20, label %ioc_bb20, label %cont21, !dbg !2423

ioc_bb20:                                         ; preds = %cont14
  %21 = zext i32 %16 to i64, !dbg !2423
  tail call void @__ioc_report_add_overflow(i32 477, i32 59, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %21, i64 1, i8 5) nounwind, !dbg !2423
  %.pre283 = load i32* %len15, align 4, !dbg !2423, !tbaa !2042
  br label %cont21, !dbg !2423

cont21:                                           ; preds = %cont14, %ioc_bb20
  %22 = phi i32 [ %sub.ptr.sub11, %cont14 ], [ %.pre283, %ioc_bb20 ]
  %23 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %19, i32 %22), !dbg !2423
  %24 = extractvalue { i32, i1 } %23, 0, !dbg !2423
  %25 = extractvalue { i32, i1 } %23, 1, !dbg !2423
  br i1 %25, label %ioc_bb24, label %cont27, !dbg !2423

ioc_bb24:                                         ; preds = %cont21
  %26 = zext i32 %22 to i64, !dbg !2423
  %27 = zext i32 %19 to i64, !dbg !2423
  tail call void @__ioc_report_add_overflow(i32 477, i32 63, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %27, i64 %26, i8 5) nounwind, !dbg !2423
  br label %cont27, !dbg !2423

cont27:                                           ; preds = %ioc_bb24, %cont21
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %24, i32 1), !dbg !2423
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !2423
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !2423
  br i1 %30, label %ioc_bb28, label %cont29, !dbg !2423

ioc_bb28:                                         ; preds = %cont27
  %31 = zext i32 %24 to i64, !dbg !2423
  tail call void @__ioc_report_add_overflow(i32 477, i32 80, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %31, i64 1, i8 5) nounwind, !dbg !2423
  br label %cont29, !dbg !2423

cont29:                                           ; preds = %cont27, %ioc_bb28
  %32 = load i32* %len, align 4, !dbg !2423, !tbaa !2042
  %33 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %29, i32 %32), !dbg !2423
  %34 = extractvalue { i32, i1 } %33, 0, !dbg !2423
  %35 = extractvalue { i32, i1 } %33, 1, !dbg !2423
  br i1 %35, label %ioc_bb32, label %cont33, !dbg !2423

ioc_bb32:                                         ; preds = %cont29
  %36 = zext i32 %32 to i64, !dbg !2423
  %37 = zext i32 %29 to i64, !dbg !2423
  tail call void @__ioc_report_add_overflow(i32 477, i32 84, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %37, i64 %36, i8 5) nounwind, !dbg !2423
  br label %cont33, !dbg !2423

cont33:                                           ; preds = %cont29, %ioc_bb32
  %call34 = tail call i8* @ngx_pnalloc(%struct.ngx_pool_s* %17, i32 %34) nounwind, !dbg !2423
  %data = getelementptr inbounds i8* %call2, i32 8, !dbg !2423
  %38 = bitcast i8* %data to i8**, !dbg !2423
  store i8* %call34, i8** %38, align 4, !dbg !2423, !tbaa !2038
  %cmp38 = icmp eq i8* %call34, null, !dbg !2432
  br i1 %cmp38, label %return, label %if.end42, !dbg !2432

if.end42:                                         ; preds = %cont33
  %39 = load i32* %len, align 4, !dbg !2433, !tbaa !2042
  %add.ptr.sum = add i32 %39, 1, !dbg !2433
  %add.ptr47 = getelementptr inbounds i8* %call34, i32 %add.ptr.sum, !dbg !2433
  %data49 = getelementptr inbounds i8* %call2, i32 16, !dbg !2433
  %40 = bitcast i8* %data49 to i8**, !dbg !2433
  store i8* %add.ptr47, i8** %40, align 4, !dbg !2433, !tbaa !2038
  %41 = load i32* %len15, align 4, !dbg !2434, !tbaa !2042
  %add.ptr55.sum = add i32 %39, 2, !dbg !2434
  %add.ptr58.sum = add i32 %add.ptr55.sum, %41, !dbg !2434
  %add.ptr59 = getelementptr inbounds i8* %call34, i32 %add.ptr58.sum, !dbg !2434
  %lowcase_key = getelementptr inbounds i8* %call2, i32 20, !dbg !2434
  %42 = bitcast i8* %lowcase_key to i8**, !dbg !2434
  store i8* %add.ptr59, i8** %42, align 4, !dbg !2434, !tbaa !2038
  %43 = load i8** %header_name_start, align 4, !dbg !2435, !tbaa !2038
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call34, i8* %43, i32 %39, i32 1, i1 false), !dbg !2435
  %44 = load i32* %len, align 4, !dbg !2436, !tbaa !2042
  %45 = load i8** %38, align 4, !dbg !2436, !tbaa !2038
  %arrayidx71 = getelementptr inbounds i8* %45, i32 %44, !dbg !2436
  store i8 0, i8* %arrayidx71, align 1, !dbg !2436, !tbaa !2039
  %46 = load i8** %40, align 4, !dbg !2437, !tbaa !2038
  %47 = load i8** %header_start, align 4, !dbg !2437, !tbaa !2038
  %48 = load i32* %len15, align 4, !dbg !2437, !tbaa !2042
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %46, i8* %47, i32 %48, i32 1, i1 false), !dbg !2437
  %49 = load i32* %len15, align 4, !dbg !2438, !tbaa !2042
  %50 = load i8** %40, align 4, !dbg !2438, !tbaa !2038
  %arrayidx83 = getelementptr inbounds i8* %50, i32 %49, !dbg !2438
  store i8 0, i8* %arrayidx83, align 1, !dbg !2438, !tbaa !2039
  %51 = load i32* %len, align 4, !dbg !2424, !tbaa !2042
  %52 = load i32* %lowcase_index, align 4, !dbg !2424, !tbaa !2042
  %cmp86 = icmp eq i32 %51, %52, !dbg !2424
  %53 = load i8** %42, align 4, !dbg !2425, !tbaa !2038
  br i1 %cmp86, label %if.then87, label %if.else, !dbg !2424

if.then87:                                        ; preds = %if.end42
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %53, i8* %3, i32 %51, i32 1, i1 false), !dbg !2425
  br label %if.end96, !dbg !2439

if.else:                                          ; preds = %if.end42
  %54 = load i8** %38, align 4, !dbg !2440, !tbaa !2038
  tail call void @ngx_strlow(i8* %53, i8* %54, i32 %51) nounwind, !dbg !2440
  br label %if.end96

if.end96:                                         ; preds = %if.else, %if.then87
  %55 = load i32* %hash, align 4, !dbg !2427, !tbaa !2042
  %56 = load i8** %42, align 4, !dbg !2427, !tbaa !2038
  %57 = load i32* %len, align 4, !dbg !2427, !tbaa !2042
  %call101 = tail call i8* @ngx_hash_find(%struct.ngx_hash_t* %headers_in_hash, i32 %55, i8* %56, i32 %57) nounwind, !dbg !2427
  %tobool = icmp eq i8* %call101, null, !dbg !2442
  br i1 %tobool, label %for.cond, label %land.lhs.true, !dbg !2442

land.lhs.true:                                    ; preds = %if.end96
  %handler = getelementptr inbounds i8* %call101, i32 8, !dbg !2442
  %58 = bitcast i8* %handler to i32 (%struct.ngx_http_request_s*, %struct.ngx_table_elt_t*, i32)**, !dbg !2442
  %59 = load i32 (%struct.ngx_http_request_s*, %struct.ngx_table_elt_t*, i32)** %58, align 4, !dbg !2442, !tbaa !2038
  %offset = getelementptr inbounds i8* %call101, i32 12, !dbg !2442
  %60 = bitcast i8* %offset to i32*, !dbg !2442
  %61 = load i32* %60, align 4, !dbg !2442, !tbaa !2042
  %call102 = tail call i32 %59(%struct.ngx_http_request_s* %r, %struct.ngx_table_elt_t* %6, i32 %61) nounwind, !dbg !2442
  %cmp103 = icmp eq i32 %call102, 0, !dbg !2442
  br i1 %cmp103, label %for.cond, label %return, !dbg !2442

if.then110:                                       ; preds = %for.cond
  %62 = load %struct.ngx_http_upstream_s** %upstream, align 4, !dbg !2443, !tbaa !2038
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_s* %62}, i64 0, metadata !1747), !dbg !2443
  %status_n = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 1, !dbg !2445
  %63 = load i32* %status_n, align 4, !dbg !2445, !tbaa !2042
  %tobool113 = icmp eq i32 %63, 0, !dbg !2445
  br i1 %tobool113, label %if.end115, label %return, !dbg !2445

if.end115:                                        ; preds = %if.then110
  %status117 = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 3, !dbg !2446
  %64 = load %struct.ngx_table_elt_t** %status117, align 4, !dbg !2446, !tbaa !2038
  %tobool118 = icmp eq %struct.ngx_table_elt_t* %64, null, !dbg !2446
  br i1 %tobool118, label %if.else148, label %if.then119, !dbg !2446

if.then119:                                       ; preds = %if.end115
  %value122 = getelementptr inbounds %struct.ngx_table_elt_t* %64, i32 0, i32 2, !dbg !2447
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %value122}, i64 0, metadata !1742), !dbg !2447
  %data123 = getelementptr inbounds %struct.ngx_table_elt_t* %64, i32 0, i32 2, i32 1, !dbg !2449
  %65 = load i8** %data123, align 4, !dbg !2449, !tbaa !2038
  %call126 = tail call i32 @ngx_atoi(i8* %65, i32 3) nounwind, !dbg !2449
  tail call void @llvm.dbg.value(metadata !{i32 %call126}, i64 0, metadata !1745), !dbg !2449
  %cmp129 = icmp eq i32 %call126, -1, !dbg !2450
  br i1 %cmp129, label %if.then130, label %if.end140, !dbg !2450

if.then130:                                       ; preds = %if.then119
  %connection = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2451
  %66 = load %struct.ngx_connection_s** %connection, align 4, !dbg !2451, !tbaa !2038
  %log = getelementptr inbounds %struct.ngx_connection_s* %66, i32 0, i32 10, !dbg !2451
  %67 = load %struct.ngx_log_s** %log, align 4, !dbg !2451, !tbaa !2038
  %log_level = getelementptr inbounds %struct.ngx_log_s* %67, i32 0, i32 0, !dbg !2451
  %68 = load i32* %log_level, align 4, !dbg !2451, !tbaa !2042
  %cmp133 = icmp ugt i32 %68, 3, !dbg !2451
  br i1 %cmp133, label %cont136, label %return, !dbg !2451

cont136:                                          ; preds = %if.then130
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %67, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str48, i32 0, i32 0), %struct.ngx_str_t* %value122) nounwind, !dbg !2453
  br label %return, !dbg !2453

if.end140:                                        ; preds = %if.then119
  %69 = icmp sgt i32 %call126, -1, !dbg !2454
  br i1 %69, label %cont143, label %ioc_bb142, !dbg !2454

ioc_bb142:                                        ; preds = %if.end140
  %70 = sext i32 %call126 to i64, !dbg !2454
  tail call void @__ioc_report_conversion(i32 515, i32 36, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %70, i8 1) nounwind, !dbg !2454
  br label %cont143, !dbg !2454

cont143:                                          ; preds = %ioc_bb142, %if.end140
  store i32 %call126, i32* %status_n, align 4, !dbg !2454, !tbaa !2042
  %status_line147 = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 2, !dbg !2455
  %71 = bitcast %struct.ngx_str_t* %value122 to i64*, !dbg !2455
  %72 = bitcast %struct.ngx_str_t* %status_line147 to i64*, !dbg !2455
  %73 = load i64* %71, align 4, !dbg !2455
  store i64 %73, i64* %72, align 4, !dbg !2455
  br label %if.end182, !dbg !2456

if.else148:                                       ; preds = %if.end115
  %location = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 15, !dbg !2457
  %74 = load %struct.ngx_table_elt_t** %location, align 4, !dbg !2457, !tbaa !2038
  %tobool150 = icmp eq %struct.ngx_table_elt_t* %74, null, !dbg !2457
  br i1 %tobool150, label %cont168, label %cont153, !dbg !2457

cont153:                                          ; preds = %if.else148
  store i32 302, i32* %status_n, align 4, !dbg !2458, !tbaa !2042
  %len162 = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 2, i32 0, !dbg !2460
  store i32 21, i32* %len162, align 4, !dbg !2460, !tbaa !2042
  %data165 = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 2, i32 1, !dbg !2461
  store i8* getelementptr inbounds ([22 x i8]* @.str49, i32 0, i32 0), i8** %data165, align 4, !dbg !2461, !tbaa !2038
  br label %if.end182, !dbg !2462

cont168:                                          ; preds = %if.else148
  store i32 200, i32* %status_n, align 4, !dbg !2463, !tbaa !2042
  %len177 = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 2, i32 0, !dbg !2465
  store i32 6, i32* %len177, align 4, !dbg !2465, !tbaa !2042
  %data180 = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 8, i32 2, i32 1, !dbg !2466
  store i8* getelementptr inbounds ([7 x i8]* @.str50, i32 0, i32 0), i8** %data180, align 4, !dbg !2466, !tbaa !2038
  br label %if.end182

if.end182:                                        ; preds = %cont153, %cont168, %cont143
  %75 = phi i32 [ 302, %cont153 ], [ 200, %cont168 ], [ %call126, %cont143 ]
  %state = getelementptr inbounds %struct.ngx_http_upstream_s* %62, i32 0, i32 27, !dbg !2467
  %76 = load %struct.ngx_http_upstream_state_t** %state, align 4, !dbg !2467, !tbaa !2038
  %tobool183 = icmp eq %struct.ngx_http_upstream_state_t* %76, null, !dbg !2467
  br i1 %tobool183, label %return, label %if.then184, !dbg !2467

if.then184:                                       ; preds = %if.end182
  %status188 = getelementptr inbounds %struct.ngx_http_upstream_state_t* %76, i32 0, i32 2, !dbg !2468
  store i32 %75, i32* %status188, align 4, !dbg !2468, !tbaa !2042
  br label %return, !dbg !2470

if.end197:                                        ; preds = %for.cond
  %connection198 = getelementptr inbounds %struct.ngx_http_request_s* %r, i32 0, i32 1, !dbg !2471
  %77 = load %struct.ngx_connection_s** %connection198, align 4, !dbg !2471, !tbaa !2038
  %log199 = getelementptr inbounds %struct.ngx_connection_s* %77, i32 0, i32 10, !dbg !2471
  %78 = load %struct.ngx_log_s** %log199, align 4, !dbg !2471, !tbaa !2038
  %log_level200 = getelementptr inbounds %struct.ngx_log_s* %78, i32 0, i32 0, !dbg !2471
  %79 = load i32* %log_level200, align 4, !dbg !2471, !tbaa !2042
  %cmp203 = icmp ugt i32 %79, 3, !dbg !2471
  br i1 %cmp203, label %cont206, label %return, !dbg !2471

cont206:                                          ; preds = %if.end197
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 4, %struct.ngx_log_s* %78, i32 0, i8* getelementptr inbounds ([29 x i8]* @.str51, i32 0, i32 0)) nounwind, !dbg !2472
  br label %return, !dbg !2472

return:                                           ; preds = %for.cond, %land.lhs.true, %cont33, %if.then, %if.end197, %cont206, %if.then184, %if.end182, %if.then130, %cont136, %if.then110
  %retval.0 = phi i32 [ 0, %if.then110 ], [ 40, %cont136 ], [ 40, %if.then130 ], [ 0, %if.end182 ], [ 0, %if.then184 ], [ 40, %cont206 ], [ 40, %if.end197 ], [ -2, %for.cond ], [ -1, %land.lhs.true ], [ -1, %cont33 ], [ -1, %if.then ]
  ret i32 %retval.0, !dbg !2473
}

declare i8* @ngx_pnalloc(%struct.ngx_pool_s*, i32)

declare i32 @ngx_http_parse_header_line(%struct.ngx_http_request_s*, %struct.ngx_buf_s*, i32)

declare i8* @ngx_list_push(%struct.ngx_list_t*)

declare void @ngx_strlow(i8*, i8*, i32)

declare i8* @ngx_hash_find(%struct.ngx_hash_t*, i32, i8*, i32)

declare i32 @ngx_atoi(i8*, i32)

declare void @ngx_http_script_flush_no_cacheable_variables(%struct.ngx_http_request_s*, %struct.ngx_array_s*)

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare %struct.ngx_buf_s* @ngx_create_temp_buf(%struct.ngx_pool_s*, i32)

declare %struct.ngx_chain_s* @ngx_alloc_chain_link(%struct.ngx_pool_s*)

declare i8* @ngx_snprintf(i8*, i32, i8*, ...)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

declare i32 @ngx_http_complex_value(%struct.ngx_http_request_s*, %struct.ngx_http_complex_value_t*, %struct.ngx_str_t*)

declare i8* @ngx_http_script_run(%struct.ngx_http_request_s*, %struct.ngx_str_t*, i8*, i32, i8*)

declare i32 @ngx_parse_url(%struct.ngx_pool_s*, %struct.ngx_url_t*)

define internal i8* @ngx_http_scgi_create_loc_conf(%struct.ngx_conf_s* nocapture %cf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1945), !dbg !2474
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2475
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2475, !tbaa !2038
  %call = tail call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 232) nounwind, !dbg !2475
  %cmp = icmp eq i8* %call, null, !dbg !2476
  br i1 %cmp, label %return, label %cont, !dbg !2476

cont:                                             ; preds = %entry
  %bf.field.offs = getelementptr i8* %call, i32 164, !dbg !2477
  %1 = bitcast i8* %bf.field.offs to i32*, !dbg !2477
  %2 = load i32* %1, align 4, !dbg !2477
  %3 = or i32 %2, 3, !dbg !2477
  store i32 %3, i32* %1, align 4, !dbg !2477
  tail call void @__ioc_report_conversion(i32 563, i32 49, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2478
  %store_access = getelementptr inbounds i8* %call, i32 68, !dbg !2478
  %4 = bitcast i8* %store_access to i32*, !dbg !2478
  store i32 -1, i32* %4, align 4, !dbg !2478, !tbaa !2042
  %buffering = getelementptr inbounds i8* %call, i32 72, !dbg !2479
  %5 = bitcast i8* %buffering to i32*, !dbg !2479
  store i32 -1, i32* %5, align 4, !dbg !2479, !tbaa !2042
  %ignore_client_abort = getelementptr inbounds i8* %call, i32 84, !dbg !2480
  %6 = bitcast i8* %ignore_client_abort to i32*, !dbg !2480
  store i32 -1, i32* %6, align 4, !dbg !2480, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 566, i32 52, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2481
  %connect_timeout = getelementptr inbounds i8* %call, i32 4, !dbg !2481
  %7 = bitcast i8* %connect_timeout to i32*, !dbg !2481
  store i32 -1, i32* %7, align 4, !dbg !2481, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 567, i32 49, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2482
  %send_timeout = getelementptr inbounds i8* %call, i32 8, !dbg !2482
  %8 = bitcast i8* %send_timeout to i32*, !dbg !2482
  store i32 -1, i32* %8, align 4, !dbg !2482, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 568, i32 49, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2483
  %read_timeout = getelementptr inbounds i8* %call, i32 12, !dbg !2483
  %9 = bitcast i8* %read_timeout to i32*, !dbg !2483
  store i32 -1, i32* %9, align 4, !dbg !2483, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 569, i32 43, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2484
  %send_lowat = getelementptr inbounds i8* %call, i32 20, !dbg !2484
  %10 = bitcast i8* %send_lowat to i32*, !dbg !2484
  store i32 -1, i32* %10, align 4, !dbg !2484, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 570, i32 44, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2485
  %buffer_size = getelementptr inbounds i8* %call, i32 24, !dbg !2485
  %11 = bitcast i8* %buffer_size to i32*, !dbg !2485
  store i32 -1, i32* %11, align 4, !dbg !2485, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 571, i32 55, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2486
  %busy_buffers_size_conf = getelementptr inbounds i8* %call, i32 40, !dbg !2486
  %12 = bitcast i8* %busy_buffers_size_conf to i32*, !dbg !2486
  store i32 -1, i32* %12, align 4, !dbg !2486, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 572, i32 56, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2487
  %max_temp_file_size_conf = getelementptr inbounds i8* %call, i32 44, !dbg !2487
  %13 = bitcast i8* %max_temp_file_size_conf to i32*, !dbg !2487
  store i32 -1, i32* %13, align 4, !dbg !2487, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 573, i32 58, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2488
  %temp_file_write_size_conf = getelementptr inbounds i8* %call, i32 48, !dbg !2488
  %14 = bitcast i8* %temp_file_write_size_conf to i32*, !dbg !2488
  store i32 -1, i32* %14, align 4, !dbg !2488, !tbaa !2042
  %pass_request_headers = getelementptr inbounds i8* %call, i32 76, !dbg !2489
  %15 = bitcast i8* %pass_request_headers to i32*, !dbg !2489
  store i32 -1, i32* %15, align 4, !dbg !2489, !tbaa !2042
  %pass_request_body = getelementptr inbounds i8* %call, i32 80, !dbg !2490
  %16 = bitcast i8* %pass_request_body to i32*, !dbg !2490
  store i32 -1, i32* %16, align 4, !dbg !2490, !tbaa !2042
  %cache = getelementptr inbounds i8* %call, i32 120, !dbg !2491
  %17 = bitcast i8* %cache to %struct.ngx_shm_zone_s**, !dbg !2491
  store %struct.ngx_shm_zone_s* inttoptr (i32 -1 to %struct.ngx_shm_zone_s*), %struct.ngx_shm_zone_s** %17, align 4, !dbg !2491, !tbaa !2038
  tail call void @__ioc_report_conversion(i32 578, i32 51, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2492
  %cache_min_uses = getelementptr inbounds i8* %call, i32 124, !dbg !2492
  %18 = bitcast i8* %cache_min_uses to i32*, !dbg !2492
  store i32 -1, i32* %18, align 4, !dbg !2492, !tbaa !2042
  %cache_bypass = getelementptr inbounds i8* %call, i32 148, !dbg !2493
  %19 = bitcast i8* %cache_bypass to %struct.ngx_array_s**, !dbg !2493
  store %struct.ngx_array_s* inttoptr (i32 -1 to %struct.ngx_array_s*), %struct.ngx_array_s** %19, align 4, !dbg !2493, !tbaa !2038
  %no_cache = getelementptr inbounds i8* %call, i32 152, !dbg !2494
  %20 = bitcast i8* %no_cache to %struct.ngx_array_s**, !dbg !2494
  store %struct.ngx_array_s* inttoptr (i32 -1 to %struct.ngx_array_s*), %struct.ngx_array_s** %20, align 4, !dbg !2494, !tbaa !2038
  %cache_valid = getelementptr inbounds i8* %call, i32 144, !dbg !2495
  %21 = bitcast i8* %cache_valid to %struct.ngx_array_s**, !dbg !2495
  store %struct.ngx_array_s* inttoptr (i32 -1 to %struct.ngx_array_s*), %struct.ngx_array_s** %21, align 4, !dbg !2495, !tbaa !2038
  %cache_lock = getelementptr inbounds i8* %call, i32 136, !dbg !2496
  %22 = bitcast i8* %cache_lock to i32*, !dbg !2496
  store i32 -1, i32* %22, align 4, !dbg !2496, !tbaa !2042
  tail call void @__ioc_report_conversion(i32 583, i32 55, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2497
  %cache_lock_timeout = getelementptr inbounds i8* %call, i32 140, !dbg !2497
  %23 = bitcast i8* %cache_lock_timeout to i32*, !dbg !2497
  store i32 -1, i32* %23, align 4, !dbg !2497, !tbaa !2042
  %hide_headers = getelementptr inbounds i8* %call, i32 108, !dbg !2498
  %24 = bitcast i8* %hide_headers to %struct.ngx_array_s**, !dbg !2498
  store %struct.ngx_array_s* inttoptr (i32 -1 to %struct.ngx_array_s*), %struct.ngx_array_s** %24, align 4, !dbg !2498, !tbaa !2038
  %pass_headers = getelementptr inbounds i8* %call, i32 112, !dbg !2499
  %25 = bitcast i8* %pass_headers to %struct.ngx_array_s**, !dbg !2499
  store %struct.ngx_array_s* inttoptr (i32 -1 to %struct.ngx_array_s*), %struct.ngx_array_s** %25, align 4, !dbg !2499, !tbaa !2038
  %intercept_errors = getelementptr inbounds i8* %call, i32 88, !dbg !2500
  %26 = bitcast i8* %intercept_errors to i32*, !dbg !2500
  store i32 -1, i32* %26, align 4, !dbg !2500, !tbaa !2042
  %cyclic_temp_file = getelementptr inbounds i8* %call, i32 92, !dbg !2501
  %27 = bitcast i8* %cyclic_temp_file to i32*, !dbg !2501
  store i32 0, i32* %27, align 4, !dbg !2501, !tbaa !2042
  %28 = load i32* %1, align 4, !dbg !2502
  %29 = or i32 %28, 8, !dbg !2502
  store i32 %29, i32* %1, align 4, !dbg !2502
  %module = getelementptr inbounds i8* %call, i32 168, !dbg !2503
  %len = bitcast i8* %module to i32*, !dbg !2503
  store i32 4, i32* %len, align 4, !dbg !2503, !tbaa !2042
  %data = getelementptr inbounds i8* %call, i32 172, !dbg !2504
  %30 = bitcast i8* %data to i8**, !dbg !2504
  store i8* getelementptr inbounds ([5 x i8]* @.str78, i32 0, i32 0), i8** %30, align 4, !dbg !2504, !tbaa !2038
  br label %return, !dbg !2505

return:                                           ; preds = %entry, %cont
  %retval.0 = phi i8* [ %call, %cont ], [ null, %entry ]
  ret i8* %retval.0, !dbg !2506
}

define internal i8* @ngx_http_scgi_merge_loc_conf(%struct.ngx_conf_s* %cf, i8* %parent, i8* %child) nounwind {
entry:
  %headers_names.i = alloca %struct.ngx_array_s, align 4
  %params_merged.i = alloca %struct.ngx_array_s, align 4
  %hash.i = alloca %struct.ngx_hash_init_t, align 4
  %sc.i = alloca %struct.ngx_http_script_compile_t, align 4
  %hash = alloca %struct.ngx_hash_init_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1854), !dbg !2507
  call void @llvm.dbg.value(metadata !{i8* %parent}, i64 0, metadata !1855), !dbg !2507
  call void @llvm.dbg.value(metadata !{i8* %child}, i64 0, metadata !1856), !dbg !2507
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %hash}, metadata !1861), !dbg !2508
  %upstream = bitcast i8* %child to %struct.ngx_http_upstream_conf_t*, !dbg !2509
  %bf.field.offs = getelementptr i8* %child, i32 164, !dbg !2509
  %0 = bitcast i8* %bf.field.offs to i32*, !dbg !2509
  %1 = load i32* %0, align 4, !dbg !2509
  %2 = shl i32 %1, 30, !dbg !2509
  %bf.val.sext = ashr exact i32 %2, 30, !dbg !2509
  switch i32 %bf.val.sext, label %if.end [
    i32 0, label %if.end31
    i32 -1, label %if.then6
  ], !dbg !2509

if.then6:                                         ; preds = %entry
  %bf.field.offs8 = getelementptr i8* %parent, i32 164, !dbg !2510
  %3 = bitcast i8* %bf.field.offs8 to i32*, !dbg !2510
  %4 = load i32* %3, align 4, !dbg !2510
  %.mask = and i32 %4, 3, !dbg !2510
  %cmp13 = icmp eq i32 %.mask, 3, !dbg !2510
  %..mask = select i1 %cmp13, i32 0, i32 %.mask, !dbg !2510
  %5 = and i32 %1, -4, !dbg !2510
  %6 = or i32 %..mask, %5, !dbg !2510
  store i32 %6, i32* %0, align 4, !dbg !2510
  br label %if.end, !dbg !2513

if.end:                                           ; preds = %entry, %if.then6
  %store_lengths = getelementptr inbounds i8* %child, i32 156, !dbg !2514
  %7 = bitcast i8* %store_lengths to %struct.ngx_array_s**, !dbg !2514
  %8 = load %struct.ngx_array_s** %7, align 4, !dbg !2514, !tbaa !2038
  %cmp21 = icmp eq %struct.ngx_array_s* %8, null, !dbg !2514
  br i1 %cmp21, label %if.then22, label %if.end31, !dbg !2514

if.then22:                                        ; preds = %if.end
  %store_lengths24 = getelementptr inbounds i8* %parent, i32 156, !dbg !2515
  %9 = bitcast i8* %store_lengths24 to %struct.ngx_array_s**, !dbg !2515
  %10 = load %struct.ngx_array_s** %9, align 4, !dbg !2515, !tbaa !2038
  store %struct.ngx_array_s* %10, %struct.ngx_array_s** %7, align 4, !dbg !2515, !tbaa !2038
  %store_values = getelementptr inbounds i8* %parent, i32 160, !dbg !2517
  %11 = bitcast i8* %store_values to %struct.ngx_array_s**, !dbg !2517
  %12 = load %struct.ngx_array_s** %11, align 4, !dbg !2517, !tbaa !2038
  %store_values29 = getelementptr inbounds i8* %child, i32 160, !dbg !2517
  %13 = bitcast i8* %store_values29 to %struct.ngx_array_s**, !dbg !2517
  store %struct.ngx_array_s* %12, %struct.ngx_array_s** %13, align 4, !dbg !2517, !tbaa !2038
  br label %if.end31, !dbg !2518

if.end31:                                         ; preds = %entry, %if.end, %if.then22
  %store_access = getelementptr inbounds i8* %child, i32 68, !dbg !2519
  %14 = bitcast i8* %store_access to i32*, !dbg !2519
  %15 = load i32* %14, align 4, !dbg !2519, !tbaa !2042
  call void @__ioc_report_conversion(i32 613, i32 54, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2519
  %cmp37 = icmp eq i32 %15, -1, !dbg !2519
  br i1 %cmp37, label %if.then38, label %if.end57, !dbg !2519

if.then38:                                        ; preds = %if.end31
  %store_access40 = getelementptr inbounds i8* %parent, i32 68, !dbg !2520
  %16 = bitcast i8* %store_access40 to i32*, !dbg !2520
  %17 = load i32* %16, align 4, !dbg !2520, !tbaa !2042
  call void @__ioc_report_conversion(i32 614, i32 85, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2520
  %cmp46 = icmp eq i32 %17, -1, !dbg !2520
  br i1 %cmp46, label %cond.end53, label %cond.false50, !dbg !2520

cond.false50:                                     ; preds = %if.then38
  %18 = load i32* %16, align 4, !dbg !2520, !tbaa !2042
  br label %cond.end53, !dbg !2520

cond.end53:                                       ; preds = %if.then38, %cond.false50
  %cond54 = phi i32 [ %18, %cond.false50 ], [ 384, %if.then38 ], !dbg !2520
  store i32 %cond54, i32* %14, align 4, !dbg !2520, !tbaa !2042
  br label %if.end57, !dbg !2522

if.end57:                                         ; preds = %cond.end53, %if.end31
  %buffering = getelementptr inbounds i8* %child, i32 72, !dbg !2523
  %19 = bitcast i8* %buffering to i32*, !dbg !2523
  %20 = load i32* %19, align 4, !dbg !2523, !tbaa !2042
  %cmp61 = icmp eq i32 %20, -1, !dbg !2523
  br i1 %cmp61, label %if.then62, label %if.end76, !dbg !2523

if.then62:                                        ; preds = %if.end57
  %buffering64 = getelementptr inbounds i8* %parent, i32 72, !dbg !2524
  %21 = bitcast i8* %buffering64 to i32*, !dbg !2524
  %22 = load i32* %21, align 4, !dbg !2524, !tbaa !2042
  %cmp67 = icmp eq i32 %22, -1, !dbg !2524
  %.1078 = select i1 %cmp67, i32 1, i32 %22, !dbg !2524
  store i32 %.1078, i32* %19, align 4, !dbg !2524, !tbaa !2042
  br label %if.end76, !dbg !2526

if.end76:                                         ; preds = %if.then62, %if.end57
  %ignore_client_abort = getelementptr inbounds i8* %child, i32 84, !dbg !2527
  %23 = bitcast i8* %ignore_client_abort to i32*, !dbg !2527
  %24 = load i32* %23, align 4, !dbg !2527, !tbaa !2042
  %cmp80 = icmp eq i32 %24, -1, !dbg !2527
  br i1 %cmp80, label %if.then81, label %if.end95, !dbg !2527

if.then81:                                        ; preds = %if.end76
  %ignore_client_abort83 = getelementptr inbounds i8* %parent, i32 84, !dbg !2528
  %25 = bitcast i8* %ignore_client_abort83 to i32*, !dbg !2528
  %26 = load i32* %25, align 4, !dbg !2528, !tbaa !2042
  %cmp86 = icmp eq i32 %26, -1, !dbg !2528
  %.1079 = select i1 %cmp86, i32 0, i32 %26, !dbg !2528
  store i32 %.1079, i32* %23, align 4, !dbg !2528, !tbaa !2042
  br label %if.end95, !dbg !2530

if.end95:                                         ; preds = %if.then81, %if.end76
  %connect_timeout = getelementptr inbounds i8* %child, i32 4, !dbg !2531
  %27 = bitcast i8* %connect_timeout to i32*, !dbg !2531
  %28 = load i32* %27, align 4, !dbg !2531, !tbaa !2042
  call void @__ioc_report_conversion(i32 625, i32 57, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2531
  %cmp102 = icmp eq i32 %28, -1, !dbg !2531
  br i1 %cmp102, label %if.then103, label %if.end122, !dbg !2531

if.then103:                                       ; preds = %if.end95
  %connect_timeout105 = getelementptr inbounds i8* %parent, i32 4, !dbg !2532
  %29 = bitcast i8* %connect_timeout105 to i32*, !dbg !2532
  %30 = load i32* %29, align 4, !dbg !2532, !tbaa !2042
  call void @__ioc_report_conversion(i32 626, i32 91, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2532
  %cmp111 = icmp eq i32 %30, -1, !dbg !2532
  br i1 %cmp111, label %cond.end118, label %cond.false115, !dbg !2532

cond.false115:                                    ; preds = %if.then103
  %31 = load i32* %29, align 4, !dbg !2532, !tbaa !2042
  br label %cond.end118, !dbg !2532

cond.end118:                                      ; preds = %if.then103, %cond.false115
  %cond119 = phi i32 [ %31, %cond.false115 ], [ 60000, %if.then103 ], !dbg !2532
  store i32 %cond119, i32* %27, align 4, !dbg !2532, !tbaa !2042
  br label %if.end122, !dbg !2534

if.end122:                                        ; preds = %cond.end118, %if.end95
  %send_timeout = getelementptr inbounds i8* %child, i32 8, !dbg !2535
  %32 = bitcast i8* %send_timeout to i32*, !dbg !2535
  %33 = load i32* %32, align 4, !dbg !2535, !tbaa !2042
  call void @__ioc_report_conversion(i32 629, i32 54, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2535
  %cmp129 = icmp eq i32 %33, -1, !dbg !2535
  br i1 %cmp129, label %if.then130, label %if.end149, !dbg !2535

if.then130:                                       ; preds = %if.end122
  %send_timeout132 = getelementptr inbounds i8* %parent, i32 8, !dbg !2536
  %34 = bitcast i8* %send_timeout132 to i32*, !dbg !2536
  %35 = load i32* %34, align 4, !dbg !2536, !tbaa !2042
  call void @__ioc_report_conversion(i32 630, i32 85, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2536
  %cmp138 = icmp eq i32 %35, -1, !dbg !2536
  br i1 %cmp138, label %cond.end145, label %cond.false142, !dbg !2536

cond.false142:                                    ; preds = %if.then130
  %36 = load i32* %34, align 4, !dbg !2536, !tbaa !2042
  br label %cond.end145, !dbg !2536

cond.end145:                                      ; preds = %if.then130, %cond.false142
  %cond146 = phi i32 [ %36, %cond.false142 ], [ 60000, %if.then130 ], !dbg !2536
  store i32 %cond146, i32* %32, align 4, !dbg !2536, !tbaa !2042
  br label %if.end149, !dbg !2538

if.end149:                                        ; preds = %cond.end145, %if.end122
  %read_timeout = getelementptr inbounds i8* %child, i32 12, !dbg !2539
  %37 = bitcast i8* %read_timeout to i32*, !dbg !2539
  %38 = load i32* %37, align 4, !dbg !2539, !tbaa !2042
  call void @__ioc_report_conversion(i32 633, i32 54, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2539
  %cmp156 = icmp eq i32 %38, -1, !dbg !2539
  br i1 %cmp156, label %if.then157, label %if.end176, !dbg !2539

if.then157:                                       ; preds = %if.end149
  %read_timeout159 = getelementptr inbounds i8* %parent, i32 12, !dbg !2540
  %39 = bitcast i8* %read_timeout159 to i32*, !dbg !2540
  %40 = load i32* %39, align 4, !dbg !2540, !tbaa !2042
  call void @__ioc_report_conversion(i32 634, i32 85, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2540
  %cmp165 = icmp eq i32 %40, -1, !dbg !2540
  br i1 %cmp165, label %cond.end172, label %cond.false169, !dbg !2540

cond.false169:                                    ; preds = %if.then157
  %41 = load i32* %39, align 4, !dbg !2540, !tbaa !2042
  br label %cond.end172, !dbg !2540

cond.end172:                                      ; preds = %if.then157, %cond.false169
  %cond173 = phi i32 [ %41, %cond.false169 ], [ 60000, %if.then157 ], !dbg !2540
  store i32 %cond173, i32* %37, align 4, !dbg !2540, !tbaa !2042
  br label %if.end176, !dbg !2542

if.end176:                                        ; preds = %cond.end172, %if.end149
  %send_lowat = getelementptr inbounds i8* %child, i32 20, !dbg !2543
  %42 = bitcast i8* %send_lowat to i32*, !dbg !2543
  %43 = load i32* %42, align 4, !dbg !2543, !tbaa !2042
  call void @__ioc_report_conversion(i32 637, i32 48, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2543
  %cmp183 = icmp eq i32 %43, -1, !dbg !2543
  br i1 %cmp183, label %if.then184, label %if.end203, !dbg !2543

if.then184:                                       ; preds = %if.end176
  %send_lowat186 = getelementptr inbounds i8* %parent, i32 20, !dbg !2544
  %44 = bitcast i8* %send_lowat186 to i32*, !dbg !2544
  %45 = load i32* %44, align 4, !dbg !2544, !tbaa !2042
  call void @__ioc_report_conversion(i32 638, i32 77, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2544
  %cmp192 = icmp eq i32 %45, -1, !dbg !2544
  br i1 %cmp192, label %cond.end199, label %cond.false196, !dbg !2544

cond.false196:                                    ; preds = %if.then184
  %46 = load i32* %44, align 4, !dbg !2544, !tbaa !2042
  br label %cond.end199, !dbg !2544

cond.end199:                                      ; preds = %if.then184, %cond.false196
  %cond200 = phi i32 [ %46, %cond.false196 ], [ 0, %if.then184 ], !dbg !2544
  store i32 %cond200, i32* %42, align 4, !dbg !2544, !tbaa !2042
  br label %if.end203, !dbg !2546

if.end203:                                        ; preds = %cond.end199, %if.end176
  %buffer_size = getelementptr inbounds i8* %child, i32 24, !dbg !2547
  %47 = bitcast i8* %buffer_size to i32*, !dbg !2547
  %48 = load i32* %47, align 4, !dbg !2547, !tbaa !2042
  call void @__ioc_report_conversion(i32 641, i32 49, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2547
  %cmp210 = icmp eq i32 %48, -1, !dbg !2547
  br i1 %cmp210, label %if.then211, label %if.end228, !dbg !2547

if.then211:                                       ; preds = %if.end203
  %buffer_size213 = getelementptr inbounds i8* %parent, i32 24, !dbg !2548
  %49 = bitcast i8* %buffer_size213 to i32*, !dbg !2548
  %50 = load i32* %49, align 4, !dbg !2548, !tbaa !2042
  call void @__ioc_report_conversion(i32 642, i32 79, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2548
  %cmp219 = icmp eq i32 %50, -1, !dbg !2548
  %cond225.in = select i1 %cmp219, i32* @ngx_pagesize, i32* %49, !dbg !2548
  %cond225 = load i32* %cond225.in, align 4, !dbg !2548
  store i32 %cond225, i32* %47, align 4, !dbg !2548, !tbaa !2042
  br label %if.end228, !dbg !2550

if.end228:                                        ; preds = %if.then211, %if.end203
  %bufs = getelementptr inbounds i8* %child, i32 52, !dbg !2551
  %num = bitcast i8* %bufs to i32*, !dbg !2551
  %51 = load i32* %num, align 4, !dbg !2551, !tbaa !2042
  %cmp230 = icmp eq i32 %51, 0, !dbg !2551
  br i1 %cmp230, label %if.then231, label %if.end255, !dbg !2551

if.then231:                                       ; preds = %if.end228
  %bufs233 = getelementptr inbounds i8* %parent, i32 52, !dbg !2552
  %num234 = bitcast i8* %bufs233 to i32*, !dbg !2552
  %52 = load i32* %num234, align 4, !dbg !2552, !tbaa !2042
  %tobool = icmp eq i32 %52, 0, !dbg !2552
  br i1 %tobool, label %if.end255.thread, label %if.then235, !dbg !2552

if.then235:                                       ; preds = %if.then231
  store i32 %52, i32* %num, align 4, !dbg !2554, !tbaa !2042
  %size244 = getelementptr inbounds i8* %parent, i32 56, !dbg !2556
  %53 = bitcast i8* %size244 to i32*, !dbg !2556
  %54 = load i32* %53, align 4, !dbg !2556, !tbaa !2042
  %size247 = getelementptr inbounds i8* %child, i32 56, !dbg !2556
  %55 = bitcast i8* %size247 to i32*, !dbg !2556
  store i32 %54, i32* %55, align 4, !dbg !2556, !tbaa !2042
  br label %if.end255, !dbg !2557

if.end255.thread:                                 ; preds = %if.then231
  store i32 8, i32* %num, align 4, !dbg !2558, !tbaa !2042
  %56 = load i32* @ngx_pagesize, align 4, !dbg !2560, !tbaa !2042
  %size253 = getelementptr inbounds i8* %child, i32 56, !dbg !2560
  %57 = bitcast i8* %size253 to i32*, !dbg !2560
  store i32 %56, i32* %57, align 4, !dbg !2560, !tbaa !2042
  br label %if.end265, !dbg !2561

if.end255:                                        ; preds = %if.then235, %if.end228
  %58 = phi i32 [ %51, %if.end228 ], [ %52, %if.then235 ], !dbg !2561
  %cmp259 = icmp slt i32 %58, 2, !dbg !2561
  br i1 %cmp259, label %cont262, label %if.end265, !dbg !2561

cont262:                                          ; preds = %if.end255
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([40 x i8]* @.str56, i32 0, i32 0)) nounwind, !dbg !2562
  br label %return, !dbg !2564

if.end265:                                        ; preds = %if.end255.thread, %if.end255
  %59 = load i32* %47, align 4, !dbg !2565, !tbaa !2042
  call void @llvm.dbg.value(metadata !{i32 %59}, i64 0, metadata !1860), !dbg !2565
  %size270 = getelementptr inbounds i8* %child, i32 56, !dbg !2566
  %60 = bitcast i8* %size270 to i32*, !dbg !2566
  %61 = load i32* %60, align 4, !dbg !2566, !tbaa !2042
  %cmp271 = icmp ult i32 %59, %61, !dbg !2566
  %. = select i1 %cmp271, i32 %61, i32 %59, !dbg !2566
  %busy_buffers_size_conf = getelementptr inbounds i8* %child, i32 40, !dbg !2567
  %62 = bitcast i8* %busy_buffers_size_conf to i32*, !dbg !2567
  %63 = load i32* %62, align 4, !dbg !2567, !tbaa !2042
  call void @__ioc_report_conversion(i32 664, i32 60, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2567
  %cmp283 = icmp eq i32 %63, -1, !dbg !2567
  br i1 %cmp283, label %if.then284, label %if.end306thread-pre-split, !dbg !2567

if.then284:                                       ; preds = %if.end265
  %busy_buffers_size_conf286 = getelementptr inbounds i8* %parent, i32 40, !dbg !2568
  %64 = bitcast i8* %busy_buffers_size_conf286 to i32*, !dbg !2568
  %65 = load i32* %64, align 4, !dbg !2568, !tbaa !2042
  call void @__ioc_report_conversion(i32 665, i32 101, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2568
  %cmp292 = icmp eq i32 %65, -1, !dbg !2568
  br i1 %cmp292, label %ioc_bb297, label %cond.false299, !dbg !2568

ioc_bb297:                                        ; preds = %if.then284
  call void @__ioc_report_conversion(i32 665, i32 117, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2568
  br label %cond.end302, !dbg !2568

cond.false299:                                    ; preds = %if.then284
  %66 = load i32* %64, align 4, !dbg !2568, !tbaa !2042
  br label %cond.end302, !dbg !2568

cond.end302:                                      ; preds = %ioc_bb297, %cond.false299
  %cond303 = phi i32 [ %66, %cond.false299 ], [ -1, %ioc_bb297 ], !dbg !2568
  store i32 %cond303, i32* %62, align 4, !dbg !2568, !tbaa !2042
  br label %if.end306, !dbg !2570

if.end306thread-pre-split:                        ; preds = %if.end265
  %.pr1075 = load i32* %62, align 4, !dbg !2571, !tbaa !2042
  br label %if.end306

if.end306:                                        ; preds = %if.end306thread-pre-split, %cond.end302
  %67 = phi i32 [ %.pr1075, %if.end306thread-pre-split ], [ %cond303, %cond.end302 ], !dbg !2571
  call void @__ioc_report_conversion(i32 668, i32 60, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2571
  %cmp314 = icmp eq i32 %67, -1, !dbg !2571
  br i1 %cmp314, label %cont317, label %if.else321, !dbg !2571

cont317:                                          ; preds = %if.end306
  %68 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %., i32 2), !dbg !2572
  %69 = extractvalue { i32, i1 } %68, 0, !dbg !2572
  %70 = extractvalue { i32, i1 } %68, 1, !dbg !2572
  br i1 %70, label %ioc_bb318, label %cont319, !dbg !2572

ioc_bb318:                                        ; preds = %cont317
  %71 = zext i32 %. to i64, !dbg !2572
  call void @__ioc_report_mul_overflow(i32 669, i32 44, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 2, i64 %71, i8 5) nounwind, !dbg !2572
  br label %cont319, !dbg !2572

cont319:                                          ; preds = %cont317, %ioc_bb318
  %busy_buffers_size = getelementptr inbounds i8* %child, i32 28, !dbg !2572
  %72 = bitcast i8* %busy_buffers_size to i32*, !dbg !2572
  store i32 %69, i32* %72, align 4, !dbg !2572, !tbaa !2042
  br label %if.end326, !dbg !2574

if.else321:                                       ; preds = %if.end306
  %73 = load i32* %62, align 4, !dbg !2575, !tbaa !2042
  %busy_buffers_size325 = getelementptr inbounds i8* %child, i32 28, !dbg !2575
  %74 = bitcast i8* %busy_buffers_size325 to i32*, !dbg !2575
  store i32 %73, i32* %74, align 4, !dbg !2575, !tbaa !2042
  br label %if.end326

if.end326:                                        ; preds = %if.else321, %cont319
  %75 = phi i32 [ %73, %if.else321 ], [ %69, %cont319 ]
  %cmp329 = icmp ult i32 %75, %., !dbg !2577
  br i1 %cmp329, label %cont332, label %if.end335, !dbg !2577

cont332:                                          ; preds = %if.end326
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([135 x i8]* @.str57, i32 0, i32 0)) nounwind, !dbg !2578
  br label %return, !dbg !2580

if.end335:                                        ; preds = %if.end326
  %76 = load i32* %num, align 4, !dbg !2581, !tbaa !2042
  %77 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %76, i32 1), !dbg !2581
  %78 = extractvalue { i32, i1 } %77, 0, !dbg !2581
  %79 = extractvalue { i32, i1 } %77, 1, !dbg !2581
  br i1 %79, label %ioc_bb341, label %cont342, !dbg !2581

ioc_bb341:                                        ; preds = %if.end335
  %80 = sext i32 %76 to i64, !dbg !2581
  call void @__ioc_report_sub_overflow(i32 678, i32 71, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %80, i64 1, i8 13) nounwind, !dbg !2581
  br label %cont342, !dbg !2581

cont342:                                          ; preds = %if.end335, %ioc_bb341
  %81 = icmp sgt i32 %78, -1, !dbg !2581
  br i1 %81, label %cont345, label %ioc_bb344, !dbg !2581

ioc_bb344:                                        ; preds = %cont342
  %82 = sext i32 %78 to i64, !dbg !2581
  call void @__ioc_report_conversion(i32 678, i32 44, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 %82, i8 1) nounwind, !dbg !2581
  br label %cont345, !dbg !2581

cont345:                                          ; preds = %ioc_bb344, %cont342
  %83 = load i32* %60, align 4, !dbg !2581, !tbaa !2042
  %84 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %78, i32 %83), !dbg !2581
  %85 = extractvalue { i32, i1 } %84, 0, !dbg !2581
  %86 = extractvalue { i32, i1 } %84, 1, !dbg !2581
  br i1 %86, label %ioc_bb349, label %cont350, !dbg !2581

ioc_bb349:                                        ; preds = %cont345
  %87 = zext i32 %83 to i64, !dbg !2581
  %88 = zext i32 %78 to i64, !dbg !2581
  call void @__ioc_report_mul_overflow(i32 678, i32 76, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 %88, i64 %87, i8 5) nounwind, !dbg !2581
  br label %cont350, !dbg !2581

cont350:                                          ; preds = %cont345, %ioc_bb349
  %cmp351 = icmp ugt i32 %75, %85, !dbg !2581
  br i1 %cmp351, label %cont354, label %if.end357, !dbg !2581

cont354:                                          ; preds = %cont350
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([91 x i8]* @.str58, i32 0, i32 0)) nounwind, !dbg !2582
  br label %return, !dbg !2584

if.end357:                                        ; preds = %cont350
  %temp_file_write_size_conf = getelementptr inbounds i8* %child, i32 48, !dbg !2585
  %89 = bitcast i8* %temp_file_write_size_conf to i32*, !dbg !2585
  %90 = load i32* %89, align 4, !dbg !2585, !tbaa !2042
  call void @__ioc_report_conversion(i32 682, i32 63, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2585
  %cmp364 = icmp eq i32 %90, -1, !dbg !2585
  br i1 %cmp364, label %if.then365, label %if.end387thread-pre-split, !dbg !2585

if.then365:                                       ; preds = %if.end357
  %temp_file_write_size_conf367 = getelementptr inbounds i8* %parent, i32 48, !dbg !2586
  %91 = bitcast i8* %temp_file_write_size_conf367 to i32*, !dbg !2586
  %92 = load i32* %91, align 4, !dbg !2586, !tbaa !2042
  call void @__ioc_report_conversion(i32 683, i32 107, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2586
  %cmp373 = icmp eq i32 %92, -1, !dbg !2586
  br i1 %cmp373, label %ioc_bb378, label %cond.false380, !dbg !2586

ioc_bb378:                                        ; preds = %if.then365
  call void @__ioc_report_conversion(i32 683, i32 123, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2586
  br label %cond.end383, !dbg !2586

cond.false380:                                    ; preds = %if.then365
  %93 = load i32* %91, align 4, !dbg !2586, !tbaa !2042
  br label %cond.end383, !dbg !2586

cond.end383:                                      ; preds = %ioc_bb378, %cond.false380
  %cond384 = phi i32 [ %93, %cond.false380 ], [ -1, %ioc_bb378 ], !dbg !2586
  store i32 %cond384, i32* %89, align 4, !dbg !2586, !tbaa !2042
  br label %if.end387, !dbg !2588

if.end387thread-pre-split:                        ; preds = %if.end357
  %.pr1076 = load i32* %89, align 4, !dbg !2589, !tbaa !2042
  br label %if.end387

if.end387:                                        ; preds = %if.end387thread-pre-split, %cond.end383
  %94 = phi i32 [ %.pr1076, %if.end387thread-pre-split ], [ %cond384, %cond.end383 ], !dbg !2589
  call void @__ioc_report_conversion(i32 686, i32 63, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2589
  %cmp395 = icmp eq i32 %94, -1, !dbg !2589
  br i1 %cmp395, label %cont398, label %if.else402, !dbg !2589

cont398:                                          ; preds = %if.end387
  %95 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %., i32 2), !dbg !2590
  %96 = extractvalue { i32, i1 } %95, 0, !dbg !2590
  %97 = extractvalue { i32, i1 } %95, 1, !dbg !2590
  br i1 %97, label %ioc_bb399, label %cont400, !dbg !2590

ioc_bb399:                                        ; preds = %cont398
  %98 = zext i32 %. to i64, !dbg !2590
  call void @__ioc_report_mul_overflow(i32 687, i32 47, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @3, i32 0, i32 0), i64 2, i64 %98, i8 5) nounwind, !dbg !2590
  br label %cont400, !dbg !2590

cont400:                                          ; preds = %cont398, %ioc_bb399
  %temp_file_write_size = getelementptr inbounds i8* %child, i32 36, !dbg !2590
  %99 = bitcast i8* %temp_file_write_size to i32*, !dbg !2590
  store i32 %96, i32* %99, align 4, !dbg !2590, !tbaa !2042
  br label %if.end407, !dbg !2592

if.else402:                                       ; preds = %if.end387
  %100 = load i32* %89, align 4, !dbg !2593, !tbaa !2042
  %temp_file_write_size406 = getelementptr inbounds i8* %child, i32 36, !dbg !2593
  %101 = bitcast i8* %temp_file_write_size406 to i32*, !dbg !2593
  store i32 %100, i32* %101, align 4, !dbg !2593, !tbaa !2042
  br label %if.end407

if.end407:                                        ; preds = %if.else402, %cont400
  %102 = phi i32 [ %100, %if.else402 ], [ %96, %cont400 ]
  %cmp410 = icmp ult i32 %102, %., !dbg !2595
  br i1 %cmp410, label %cont413, label %if.end416, !dbg !2595

cont413:                                          ; preds = %if.end407
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([138 x i8]* @.str59, i32 0, i32 0)) nounwind, !dbg !2596
  br label %return, !dbg !2598

if.end416:                                        ; preds = %if.end407
  %max_temp_file_size_conf = getelementptr inbounds i8* %child, i32 44, !dbg !2599
  %103 = bitcast i8* %max_temp_file_size_conf to i32*, !dbg !2599
  %104 = load i32* %103, align 4, !dbg !2599, !tbaa !2042
  call void @__ioc_report_conversion(i32 696, i32 61, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2599
  %cmp423 = icmp eq i32 %104, -1, !dbg !2599
  br i1 %cmp423, label %if.then424, label %if.end446thread-pre-split, !dbg !2599

if.then424:                                       ; preds = %if.end416
  %max_temp_file_size_conf426 = getelementptr inbounds i8* %parent, i32 44, !dbg !2600
  %105 = bitcast i8* %max_temp_file_size_conf426 to i32*, !dbg !2600
  %106 = load i32* %105, align 4, !dbg !2600, !tbaa !2042
  call void @__ioc_report_conversion(i32 697, i32 103, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2600
  %cmp432 = icmp eq i32 %106, -1, !dbg !2600
  br i1 %cmp432, label %ioc_bb437, label %cond.false439, !dbg !2600

ioc_bb437:                                        ; preds = %if.then424
  call void @__ioc_report_conversion(i32 697, i32 119, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2600
  br label %cond.end442, !dbg !2600

cond.false439:                                    ; preds = %if.then424
  %107 = load i32* %105, align 4, !dbg !2600, !tbaa !2042
  br label %cond.end442, !dbg !2600

cond.end442:                                      ; preds = %ioc_bb437, %cond.false439
  %cond443 = phi i32 [ %107, %cond.false439 ], [ -1, %ioc_bb437 ], !dbg !2600
  store i32 %cond443, i32* %103, align 4, !dbg !2600, !tbaa !2042
  br label %if.end446, !dbg !2602

if.end446thread-pre-split:                        ; preds = %if.end416
  %.pr1077 = load i32* %103, align 4, !dbg !2603, !tbaa !2042
  br label %if.end446

if.end446:                                        ; preds = %if.end446thread-pre-split, %cond.end442
  %108 = phi i32 [ %.pr1077, %if.end446thread-pre-split ], [ %cond443, %cond.end442 ], !dbg !2603
  call void @__ioc_report_conversion(i32 700, i32 61, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2603
  %cmp454 = icmp eq i32 %108, -1, !dbg !2603
  br i1 %cmp454, label %cont462, label %if.else464, !dbg !2603

cont462:                                          ; preds = %if.end446
  %max_temp_file_size = getelementptr inbounds i8* %child, i32 32, !dbg !2604
  %109 = bitcast i8* %max_temp_file_size to i32*, !dbg !2604
  store i32 1073741824, i32* %109, align 4, !dbg !2604, !tbaa !2042
  br label %if.end469, !dbg !2606

if.else464:                                       ; preds = %if.end446
  %110 = load i32* %103, align 4, !dbg !2607, !tbaa !2042
  %max_temp_file_size468 = getelementptr inbounds i8* %child, i32 32, !dbg !2607
  %111 = bitcast i8* %max_temp_file_size468 to i32*, !dbg !2607
  store i32 %110, i32* %111, align 4, !dbg !2607, !tbaa !2042
  br label %if.end469

if.end469:                                        ; preds = %if.else464, %cont462
  %112 = phi i32 [ %110, %if.else464 ], [ 1073741824, %cont462 ]
  %cmp474 = icmp ne i32 %112, 0, !dbg !2609
  %cmp477 = icmp ult i32 %112, %., !dbg !2609
  %or.cond = and i1 %cmp474, %cmp477, !dbg !2609
  br i1 %or.cond, label %cont480, label %if.end483, !dbg !2609

cont480:                                          ; preds = %if.end469
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([194 x i8]* @.str60, i32 0, i32 0)) nounwind, !dbg !2610
  br label %return, !dbg !2612

if.end483:                                        ; preds = %if.end469
  %ignore_headers = getelementptr inbounds i8* %child, i32 60, !dbg !2613
  %113 = bitcast i8* %ignore_headers to i32*, !dbg !2613
  %114 = load i32* %113, align 4, !dbg !2613, !tbaa !2042
  %cmp487 = icmp eq i32 %114, 0, !dbg !2613
  br i1 %cmp487, label %if.then488, label %if.end504, !dbg !2613

if.then488:                                       ; preds = %if.end483
  %ignore_headers490 = getelementptr inbounds i8* %parent, i32 60, !dbg !2614
  %115 = bitcast i8* %ignore_headers490 to i32*, !dbg !2614
  %116 = load i32* %115, align 4, !dbg !2614, !tbaa !2042
  %cmp493 = icmp eq i32 %116, 0, !dbg !2614
  %.1080 = select i1 %cmp493, i32 1, i32 %116, !dbg !2614
  store i32 %.1080, i32* %113, align 4, !dbg !2614, !tbaa !2042
  br label %if.end504, !dbg !2616

if.end504:                                        ; preds = %if.then488, %if.end483
  %next_upstream = getelementptr inbounds i8* %child, i32 64, !dbg !2617
  %117 = bitcast i8* %next_upstream to i32*, !dbg !2617
  %118 = load i32* %117, align 4, !dbg !2617, !tbaa !2042
  %cmp508 = icmp eq i32 %118, 0, !dbg !2617
  br i1 %cmp508, label %if.then509, label %if.end525, !dbg !2617

if.then509:                                       ; preds = %if.end504
  %next_upstream511 = getelementptr inbounds i8* %parent, i32 64, !dbg !2618
  %119 = bitcast i8* %next_upstream511 to i32*, !dbg !2618
  %120 = load i32* %119, align 4, !dbg !2618, !tbaa !2042
  %cmp514 = icmp eq i32 %120, 0, !dbg !2618
  %.1081 = select i1 %cmp514, i32 7, i32 %120, !dbg !2618
  store i32 %.1081, i32* %117, align 4, !dbg !2618, !tbaa !2042
  br label %if.end525, !dbg !2620

if.end525:                                        ; preds = %if.then509, %if.end504
  %121 = phi i32 [ %.1081, %if.then509 ], [ %118, %if.end504 ], !dbg !2621
  %tobool528 = icmp slt i32 %121, 0, !dbg !2621
  br i1 %tobool528, label %cont531, label %if.end534, !dbg !2621

cont531:                                          ; preds = %if.end525
  store i32 -2147483647, i32* %117, align 4, !dbg !2622, !tbaa !2042
  br label %if.end534, !dbg !2624

if.end534:                                        ; preds = %cont531, %if.end525
  %temp_path = getelementptr inbounds i8* %child, i32 96, !dbg !2625
  %122 = bitcast i8* %temp_path to %struct.ngx_path_t**, !dbg !2625
  %upstream536 = bitcast i8* %parent to %struct.ngx_http_upstream_conf_t*, !dbg !2625
  %temp_path537 = getelementptr inbounds i8* %parent, i32 96, !dbg !2625
  %123 = bitcast i8* %temp_path537 to %struct.ngx_path_t**, !dbg !2625
  %124 = load %struct.ngx_path_t** %123, align 4, !dbg !2625, !tbaa !2038
  %call = call i8* @ngx_conf_merge_path_value(%struct.ngx_conf_s* %cf, %struct.ngx_path_t** %122, %struct.ngx_path_t* %124, %struct.ngx_path_init_t* @ngx_http_scgi_temp_path) nounwind, !dbg !2625
  %cmp538 = icmp eq i8* %call, null, !dbg !2625
  br i1 %cmp538, label %if.end542, label %return, !dbg !2625

if.end542:                                        ; preds = %if.end534
  %cache = getelementptr inbounds i8* %child, i32 120, !dbg !2626
  %125 = bitcast i8* %cache to %struct.ngx_shm_zone_s**, !dbg !2626
  %126 = load %struct.ngx_shm_zone_s** %125, align 4, !dbg !2626, !tbaa !2038
  %cmp546 = icmp eq %struct.ngx_shm_zone_s* %126, inttoptr (i32 -1 to %struct.ngx_shm_zone_s*), !dbg !2626
  br i1 %cmp546, label %if.then547, label %if.end561, !dbg !2626

if.then547:                                       ; preds = %if.end542
  %cache549 = getelementptr inbounds i8* %parent, i32 120, !dbg !2627
  %127 = bitcast i8* %cache549 to %struct.ngx_shm_zone_s**, !dbg !2627
  %128 = load %struct.ngx_shm_zone_s** %127, align 4, !dbg !2627, !tbaa !2038
  %cmp552 = icmp eq %struct.ngx_shm_zone_s* %128, inttoptr (i32 -1 to %struct.ngx_shm_zone_s*), !dbg !2627
  %.1082 = select i1 %cmp552, %struct.ngx_shm_zone_s* null, %struct.ngx_shm_zone_s* %128, !dbg !2627
  store %struct.ngx_shm_zone_s* %.1082, %struct.ngx_shm_zone_s** %125, align 4, !dbg !2627, !tbaa !2038
  br label %if.end561, !dbg !2629

if.end561:                                        ; preds = %if.then547, %if.end542
  %129 = phi %struct.ngx_shm_zone_s* [ %.1082, %if.then547 ], [ %126, %if.end542 ], !dbg !2630
  %tobool564 = icmp eq %struct.ngx_shm_zone_s* %129, null, !dbg !2630
  br i1 %tobool564, label %if.end576, label %land.lhs.true565, !dbg !2630

land.lhs.true565:                                 ; preds = %if.end561
  %data = getelementptr inbounds %struct.ngx_shm_zone_s* %129, i32 0, i32 0, !dbg !2630
  %130 = load i8** %data, align 4, !dbg !2630, !tbaa !2038
  %cmp568 = icmp eq i8* %130, null, !dbg !2630
  br i1 %cmp568, label %cont573, label %if.end576, !dbg !2630

cont573:                                          ; preds = %land.lhs.true565
  call void @llvm.dbg.value(metadata !{%struct.ngx_shm_zone_s* %129}, i64 0, metadata !1878), !dbg !2631
  %name = getelementptr inbounds %struct.ngx_shm_zone_s* %129, i32 0, i32 1, i32 2, !dbg !2632
  call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str61, i32 0, i32 0), %struct.ngx_str_t* %name) nounwind, !dbg !2632
  br label %return, !dbg !2633

if.end576:                                        ; preds = %if.end561, %land.lhs.true565
  %cache_min_uses = getelementptr inbounds i8* %child, i32 124, !dbg !2634
  %131 = bitcast i8* %cache_min_uses to i32*, !dbg !2634
  %132 = load i32* %131, align 4, !dbg !2634, !tbaa !2042
  call void @__ioc_report_conversion(i32 735, i32 56, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2634
  %cmp583 = icmp eq i32 %132, -1, !dbg !2634
  br i1 %cmp583, label %if.then584, label %if.end603, !dbg !2634

if.then584:                                       ; preds = %if.end576
  %cache_min_uses586 = getelementptr inbounds i8* %parent, i32 124, !dbg !2635
  %133 = bitcast i8* %cache_min_uses586 to i32*, !dbg !2635
  %134 = load i32* %133, align 4, !dbg !2635, !tbaa !2042
  call void @__ioc_report_conversion(i32 736, i32 89, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2635
  %cmp592 = icmp eq i32 %134, -1, !dbg !2635
  br i1 %cmp592, label %cond.end599, label %cond.false596, !dbg !2635

cond.false596:                                    ; preds = %if.then584
  %135 = load i32* %133, align 4, !dbg !2635, !tbaa !2042
  br label %cond.end599, !dbg !2635

cond.end599:                                      ; preds = %if.then584, %cond.false596
  %cond600 = phi i32 [ %135, %cond.false596 ], [ 1, %if.then584 ], !dbg !2635
  store i32 %cond600, i32* %131, align 4, !dbg !2635, !tbaa !2042
  br label %if.end603, !dbg !2637

if.end603:                                        ; preds = %cond.end599, %if.end576
  %cache_use_stale = getelementptr inbounds i8* %child, i32 128, !dbg !2638
  %136 = bitcast i8* %cache_use_stale to i32*, !dbg !2638
  %137 = load i32* %136, align 4, !dbg !2638, !tbaa !2042
  %cmp607 = icmp eq i32 %137, 0, !dbg !2638
  br i1 %cmp607, label %if.then608, label %if.end624, !dbg !2638

if.then608:                                       ; preds = %if.end603
  %cache_use_stale610 = getelementptr inbounds i8* %parent, i32 128, !dbg !2639
  %138 = bitcast i8* %cache_use_stale610 to i32*, !dbg !2639
  %139 = load i32* %138, align 4, !dbg !2639, !tbaa !2042
  %cmp613 = icmp eq i32 %139, 0, !dbg !2639
  %.1083 = select i1 %cmp613, i32 -2147483647, i32 %139, !dbg !2639
  store i32 %.1083, i32* %136, align 4, !dbg !2639, !tbaa !2042
  br label %if.end624, !dbg !2641

if.end624:                                        ; preds = %if.then608, %if.end603
  %140 = phi i32 [ %.1083, %if.then608 ], [ %137, %if.end603 ], !dbg !2642
  %tobool628 = icmp slt i32 %140, 0, !dbg !2642
  br i1 %tobool628, label %cont638.thread, label %cont638, !dbg !2642

cont638.thread:                                   ; preds = %if.end624
  store i32 -2147483647, i32* %136, align 4, !dbg !2643, !tbaa !2042
  br label %if.end646, !dbg !2645

cont638:                                          ; preds = %if.end624
  %and639 = and i32 %140, 2, !dbg !2645
  %tobool640 = icmp eq i32 %and639, 0, !dbg !2645
  br i1 %tobool640, label %if.end646, label %cont643, !dbg !2645

cont643:                                          ; preds = %cont638
  %or = or i32 %140, 1073741824, !dbg !2646
  store i32 %or, i32* %136, align 4, !dbg !2646, !tbaa !2042
  br label %if.end646, !dbg !2648

if.end646:                                        ; preds = %cont638.thread, %cont638, %cont643
  %cache_methods = getelementptr inbounds i8* %child, i32 132, !dbg !2649
  %141 = bitcast i8* %cache_methods to i32*, !dbg !2649
  %142 = load i32* %141, align 4, !dbg !2649, !tbaa !2042
  %cmp650 = icmp eq i32 %142, 0, !dbg !2649
  br i1 %cmp650, label %if.then651, label %cont658, !dbg !2649

if.then651:                                       ; preds = %if.end646
  %cache_methods653 = getelementptr inbounds i8* %parent, i32 132, !dbg !2650
  %143 = bitcast i8* %cache_methods653 to i32*, !dbg !2650
  %144 = load i32* %143, align 4, !dbg !2650, !tbaa !2042
  store i32 %144, i32* %141, align 4, !dbg !2650, !tbaa !2042
  br label %cont658, !dbg !2652

cont658:                                          ; preds = %if.end646, %if.then651
  %145 = phi i32 [ %142, %if.end646 ], [ %144, %if.then651 ]
  %or661 = or i32 %145, 6, !dbg !2653
  store i32 %or661, i32* %141, align 4, !dbg !2653, !tbaa !2042
  %cache_bypass = getelementptr inbounds i8* %child, i32 148, !dbg !2654
  %146 = bitcast i8* %cache_bypass to %struct.ngx_array_s**, !dbg !2654
  %147 = load %struct.ngx_array_s** %146, align 4, !dbg !2654, !tbaa !2038
  %cmp665 = icmp eq %struct.ngx_array_s* %147, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2654
  br i1 %cmp665, label %if.then666, label %if.end680, !dbg !2654

if.then666:                                       ; preds = %cont658
  %cache_bypass668 = getelementptr inbounds i8* %parent, i32 148, !dbg !2655
  %148 = bitcast i8* %cache_bypass668 to %struct.ngx_array_s**, !dbg !2655
  %149 = load %struct.ngx_array_s** %148, align 4, !dbg !2655, !tbaa !2038
  %cmp671 = icmp eq %struct.ngx_array_s* %149, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2655
  %.1084 = select i1 %cmp671, %struct.ngx_array_s* null, %struct.ngx_array_s* %149, !dbg !2655
  store %struct.ngx_array_s* %.1084, %struct.ngx_array_s** %146, align 4, !dbg !2655, !tbaa !2038
  br label %if.end680, !dbg !2657

if.end680:                                        ; preds = %if.then666, %cont658
  %no_cache = getelementptr inbounds i8* %child, i32 152, !dbg !2658
  %150 = bitcast i8* %no_cache to %struct.ngx_array_s**, !dbg !2658
  %151 = load %struct.ngx_array_s** %150, align 4, !dbg !2658, !tbaa !2038
  %cmp684 = icmp eq %struct.ngx_array_s* %151, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2658
  br i1 %cmp684, label %if.then685, label %if.end699, !dbg !2658

if.then685:                                       ; preds = %if.end680
  %no_cache687 = getelementptr inbounds i8* %parent, i32 152, !dbg !2659
  %152 = bitcast i8* %no_cache687 to %struct.ngx_array_s**, !dbg !2659
  %153 = load %struct.ngx_array_s** %152, align 4, !dbg !2659, !tbaa !2038
  %cmp690 = icmp eq %struct.ngx_array_s* %153, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2659
  %.1085 = select i1 %cmp690, %struct.ngx_array_s* null, %struct.ngx_array_s* %153, !dbg !2659
  store %struct.ngx_array_s* %.1085, %struct.ngx_array_s** %150, align 4, !dbg !2659, !tbaa !2038
  br label %if.end699, !dbg !2661

if.end699:                                        ; preds = %if.then685, %if.end680
  %cache_valid = getelementptr inbounds i8* %child, i32 144, !dbg !2662
  %154 = bitcast i8* %cache_valid to %struct.ngx_array_s**, !dbg !2662
  %155 = load %struct.ngx_array_s** %154, align 4, !dbg !2662, !tbaa !2038
  %cmp703 = icmp eq %struct.ngx_array_s* %155, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2662
  br i1 %cmp703, label %if.then704, label %if.end718, !dbg !2662

if.then704:                                       ; preds = %if.end699
  %cache_valid706 = getelementptr inbounds i8* %parent, i32 144, !dbg !2663
  %156 = bitcast i8* %cache_valid706 to %struct.ngx_array_s**, !dbg !2663
  %157 = load %struct.ngx_array_s** %156, align 4, !dbg !2663, !tbaa !2038
  %cmp709 = icmp eq %struct.ngx_array_s* %157, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2663
  %.1086 = select i1 %cmp709, %struct.ngx_array_s* null, %struct.ngx_array_s* %157, !dbg !2663
  store %struct.ngx_array_s* %.1086, %struct.ngx_array_s** %154, align 4, !dbg !2663, !tbaa !2038
  br label %if.end718, !dbg !2665

if.end718:                                        ; preds = %if.then704, %if.end699
  %data719 = getelementptr inbounds i8* %child, i32 216, !dbg !2666
  %158 = bitcast i8* %data719 to i8**, !dbg !2666
  %159 = load i8** %158, align 4, !dbg !2666, !tbaa !2038
  %cmp720 = icmp eq i8* %159, null, !dbg !2666
  br i1 %cmp720, label %if.then721, label %if.end724, !dbg !2666

if.then721:                                       ; preds = %if.end718
  %cache_key = getelementptr inbounds i8* %child, i32 212, !dbg !2666
  %cache_key723 = getelementptr inbounds i8* %parent, i32 212, !dbg !2667
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %cache_key, i8* %cache_key723, i32 20, i32 4, i1 false), !dbg !2667, !tbaa.struct !2669
  br label %if.end724, !dbg !2670

if.end724:                                        ; preds = %if.then721, %if.end718
  %cache_lock = getelementptr inbounds i8* %child, i32 136, !dbg !2671
  %160 = bitcast i8* %cache_lock to i32*, !dbg !2671
  %161 = load i32* %160, align 4, !dbg !2671, !tbaa !2042
  %cmp728 = icmp eq i32 %161, -1, !dbg !2671
  br i1 %cmp728, label %if.then729, label %if.end743, !dbg !2671

if.then729:                                       ; preds = %if.end724
  %cache_lock731 = getelementptr inbounds i8* %parent, i32 136, !dbg !2672
  %162 = bitcast i8* %cache_lock731 to i32*, !dbg !2672
  %163 = load i32* %162, align 4, !dbg !2672, !tbaa !2042
  %cmp734 = icmp eq i32 %163, -1, !dbg !2672
  %.1087 = select i1 %cmp734, i32 0, i32 %163, !dbg !2672
  store i32 %.1087, i32* %160, align 4, !dbg !2672, !tbaa !2042
  br label %if.end743, !dbg !2674

if.end743:                                        ; preds = %if.then729, %if.end724
  %cache_lock_timeout = getelementptr inbounds i8* %child, i32 140, !dbg !2675
  %164 = bitcast i8* %cache_lock_timeout to i32*, !dbg !2675
  %165 = load i32* %164, align 4, !dbg !2675, !tbaa !2042
  call void @__ioc_report_conversion(i32 772, i32 60, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2675
  %cmp750 = icmp eq i32 %165, -1, !dbg !2675
  br i1 %cmp750, label %if.then751, label %if.end770, !dbg !2675

if.then751:                                       ; preds = %if.end743
  %cache_lock_timeout753 = getelementptr inbounds i8* %parent, i32 140, !dbg !2676
  %166 = bitcast i8* %cache_lock_timeout753 to i32*, !dbg !2676
  %167 = load i32* %166, align 4, !dbg !2676, !tbaa !2042
  call void @__ioc_report_conversion(i32 773, i32 97, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @11, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2676
  %cmp759 = icmp eq i32 %167, -1, !dbg !2676
  br i1 %cmp759, label %cond.end766, label %cond.false763, !dbg !2676

cond.false763:                                    ; preds = %if.then751
  %168 = load i32* %166, align 4, !dbg !2676, !tbaa !2042
  br label %cond.end766, !dbg !2676

cond.end766:                                      ; preds = %if.then751, %cond.false763
  %cond767 = phi i32 [ %168, %cond.false763 ], [ 5000, %if.then751 ], !dbg !2676
  store i32 %cond767, i32* %164, align 4, !dbg !2676, !tbaa !2042
  br label %if.end770, !dbg !2678

if.end770:                                        ; preds = %cond.end766, %if.end743
  %pass_request_headers = getelementptr inbounds i8* %child, i32 76, !dbg !2679
  %169 = bitcast i8* %pass_request_headers to i32*, !dbg !2679
  %170 = load i32* %169, align 4, !dbg !2679, !tbaa !2042
  %cmp774 = icmp eq i32 %170, -1, !dbg !2679
  br i1 %cmp774, label %if.then775, label %if.end789, !dbg !2679

if.then775:                                       ; preds = %if.end770
  %pass_request_headers777 = getelementptr inbounds i8* %parent, i32 76, !dbg !2680
  %171 = bitcast i8* %pass_request_headers777 to i32*, !dbg !2680
  %172 = load i32* %171, align 4, !dbg !2680, !tbaa !2042
  %cmp780 = icmp eq i32 %172, -1, !dbg !2680
  %.1088 = select i1 %cmp780, i32 1, i32 %172, !dbg !2680
  store i32 %.1088, i32* %169, align 4, !dbg !2680, !tbaa !2042
  br label %if.end789, !dbg !2682

if.end789:                                        ; preds = %if.then775, %if.end770
  %pass_request_body = getelementptr inbounds i8* %child, i32 80, !dbg !2683
  %173 = bitcast i8* %pass_request_body to i32*, !dbg !2683
  %174 = load i32* %173, align 4, !dbg !2683, !tbaa !2042
  %cmp793 = icmp eq i32 %174, -1, !dbg !2683
  br i1 %cmp793, label %if.then794, label %if.end808, !dbg !2683

if.then794:                                       ; preds = %if.end789
  %pass_request_body796 = getelementptr inbounds i8* %parent, i32 80, !dbg !2684
  %175 = bitcast i8* %pass_request_body796 to i32*, !dbg !2684
  %176 = load i32* %175, align 4, !dbg !2684, !tbaa !2042
  %cmp799 = icmp eq i32 %176, -1, !dbg !2684
  %.1089 = select i1 %cmp799, i32 1, i32 %176, !dbg !2684
  store i32 %.1089, i32* %173, align 4, !dbg !2684, !tbaa !2042
  br label %if.end808, !dbg !2686

if.end808:                                        ; preds = %if.then794, %if.end789
  %intercept_errors = getelementptr inbounds i8* %child, i32 88, !dbg !2687
  %177 = bitcast i8* %intercept_errors to i32*, !dbg !2687
  %178 = load i32* %177, align 4, !dbg !2687, !tbaa !2042
  %cmp812 = icmp eq i32 %178, -1, !dbg !2687
  br i1 %cmp812, label %if.then813, label %cont829, !dbg !2687

if.then813:                                       ; preds = %if.end808
  %intercept_errors815 = getelementptr inbounds i8* %parent, i32 88, !dbg !2688
  %179 = bitcast i8* %intercept_errors815 to i32*, !dbg !2688
  %180 = load i32* %179, align 4, !dbg !2688, !tbaa !2042
  %cmp818 = icmp eq i32 %180, -1, !dbg !2688
  %.1090 = select i1 %cmp818, i32 0, i32 %180, !dbg !2688
  store i32 %.1090, i32* %177, align 4, !dbg !2688, !tbaa !2042
  br label %cont829, !dbg !2690

cont829:                                          ; preds = %if.end808, %if.then813
  %max_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 2, !dbg !2691
  store i32 512, i32* %max_size, align 4, !dbg !2691, !tbaa !2042
  %181 = load i32* @ngx_cacheline_size, align 4, !dbg !2692, !tbaa !2042
  %182 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %181, i32 1), !dbg !2692
  %183 = extractvalue { i32, i1 } %182, 0, !dbg !2692
  %184 = extractvalue { i32, i1 } %182, 1, !dbg !2692
  br i1 %184, label %ioc_bb834, label %cont835, !dbg !2692

ioc_bb834:                                        ; preds = %cont829
  %185 = zext i32 %181 to i64, !dbg !2692
  call void @__ioc_report_sub_overflow(i32 790, i32 47, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %185, i64 1, i8 5) nounwind, !dbg !2692
  br label %cont835, !dbg !2692

cont835:                                          ; preds = %cont829, %ioc_bb834
  %186 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %183, i32 64), !dbg !2692
  %187 = extractvalue { i32, i1 } %186, 0, !dbg !2692
  %188 = extractvalue { i32, i1 } %186, 1, !dbg !2692
  br i1 %188, label %ioc_bb836, label %cont837, !dbg !2692

ioc_bb836:                                        ; preds = %cont835
  %189 = zext i32 %183 to i64, !dbg !2692
  call void @__ioc_report_add_overflow(i32 790, i32 25, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 64, i64 %189, i8 5) nounwind, !dbg !2692
  br label %cont837, !dbg !2692

cont837:                                          ; preds = %cont835, %ioc_bb836
  %190 = load i32* @ngx_cacheline_size, align 4, !dbg !2692, !tbaa !2042
  %191 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %190, i32 1), !dbg !2692
  %192 = extractvalue { i32, i1 } %191, 0, !dbg !2692
  %193 = extractvalue { i32, i1 } %191, 1, !dbg !2692
  br i1 %193, label %ioc_bb840, label %cont841, !dbg !2692

ioc_bb840:                                        ; preds = %cont837
  %194 = zext i32 %190 to i64, !dbg !2692
  call void @__ioc_report_sub_overflow(i32 790, i32 75, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %194, i64 1, i8 5) nounwind, !dbg !2692
  br label %cont841, !dbg !2692

cont841:                                          ; preds = %cont837, %ioc_bb840
  %neg = xor i32 %192, -1, !dbg !2692
  %and842 = and i32 %187, %neg, !dbg !2692
  %bucket_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 3, !dbg !2692
  store i32 %and842, i32* %bucket_size, align 4, !dbg !2692, !tbaa !2042
  %name843 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 4, !dbg !2693
  store i8* getelementptr inbounds ([23 x i8]* @.str62, i32 0, i32 0), i8** %name843, align 4, !dbg !2693, !tbaa !2038
  %call846 = call i32 @ngx_http_upstream_hide_headers_hash(%struct.ngx_conf_s* %cf, %struct.ngx_http_upstream_conf_t* %upstream, %struct.ngx_http_upstream_conf_t* %upstream536, %struct.ngx_str_t* getelementptr inbounds ([7 x %struct.ngx_str_t]* @ngx_http_scgi_hide_headers, i32 0, i32 0), %struct.ngx_hash_init_t* %hash) nounwind, !dbg !2694
  %cmp847 = icmp eq i32 %call846, 0, !dbg !2694
  br i1 %cmp847, label %if.end851, label %return, !dbg !2694

if.end851:                                        ; preds = %cont841
  %upstream853 = bitcast i8* %child to %struct.ngx_http_upstream_srv_conf_s**, !dbg !2695
  %195 = load %struct.ngx_http_upstream_srv_conf_s** %upstream853, align 4, !dbg !2695, !tbaa !2038
  %cmp854 = icmp eq %struct.ngx_http_upstream_srv_conf_s* %195, null, !dbg !2695
  br i1 %cmp854, label %if.then855, label %if.end860, !dbg !2695

if.then855:                                       ; preds = %if.end851
  %upstream857 = bitcast i8* %parent to %struct.ngx_http_upstream_srv_conf_s**, !dbg !2696
  %196 = load %struct.ngx_http_upstream_srv_conf_s** %upstream857, align 4, !dbg !2696, !tbaa !2038
  store %struct.ngx_http_upstream_srv_conf_s* %196, %struct.ngx_http_upstream_srv_conf_s** %upstream853, align 4, !dbg !2696, !tbaa !2038
  br label %if.end860, !dbg !2698

if.end860:                                        ; preds = %if.then855, %if.end851
  %197 = phi %struct.ngx_http_upstream_srv_conf_s* [ %196, %if.then855 ], [ %195, %if.end851 ]
  %scgi_lengths = getelementptr inbounds i8* %child, i32 204, !dbg !2699
  %198 = bitcast i8* %scgi_lengths to %struct.ngx_array_s**, !dbg !2699
  %199 = load %struct.ngx_array_s** %198, align 4, !dbg !2699, !tbaa !2038
  %cmp861 = icmp eq %struct.ngx_array_s* %199, null, !dbg !2699
  br i1 %cmp861, label %if.then862, label %if.end866, !dbg !2699

if.then862:                                       ; preds = %if.end860
  %scgi_lengths863 = getelementptr inbounds i8* %parent, i32 204, !dbg !2700
  %200 = bitcast i8* %scgi_lengths863 to %struct.ngx_array_s**, !dbg !2700
  %201 = load %struct.ngx_array_s** %200, align 4, !dbg !2700, !tbaa !2038
  store %struct.ngx_array_s* %201, %struct.ngx_array_s** %198, align 4, !dbg !2700, !tbaa !2038
  %scgi_values = getelementptr inbounds i8* %parent, i32 208, !dbg !2702
  %202 = bitcast i8* %scgi_values to %struct.ngx_array_s**, !dbg !2702
  %203 = load %struct.ngx_array_s** %202, align 4, !dbg !2702, !tbaa !2038
  %scgi_values865 = getelementptr inbounds i8* %child, i32 208, !dbg !2702
  %204 = bitcast i8* %scgi_values865 to %struct.ngx_array_s**, !dbg !2702
  store %struct.ngx_array_s* %203, %struct.ngx_array_s** %204, align 4, !dbg !2702, !tbaa !2038
  br label %if.end866, !dbg !2703

if.end866:                                        ; preds = %if.then862, %if.end860
  %205 = phi %struct.ngx_array_s* [ %201, %if.then862 ], [ %199, %if.end860 ]
  %tobool869 = icmp eq %struct.ngx_http_upstream_srv_conf_s* %197, null, !dbg !2704
  %tobool871 = icmp eq %struct.ngx_array_s* %205, null, !dbg !2704
  %or.cond1100 = and i1 %tobool869, %tobool871, !dbg !2704
  br i1 %or.cond1100, label %if.end883, label %if.then872, !dbg !2704

if.then872:                                       ; preds = %if.end866
  %206 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2705, !tbaa !2042
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2705
  %207 = load i8** %ctx, align 4, !dbg !2705, !tbaa !2038
  %loc_conf = getelementptr inbounds i8* %207, i32 8, !dbg !2705
  %208 = bitcast i8* %loc_conf to i8***, !dbg !2705
  %209 = load i8*** %208, align 4, !dbg !2705, !tbaa !2038
  %arrayidx = getelementptr inbounds i8** %209, i32 %206, !dbg !2705
  %210 = load i8** %arrayidx, align 4, !dbg !2705, !tbaa !2038
  %handler = getelementptr inbounds i8* %210, i32 36, !dbg !2707
  %211 = bitcast i8* %handler to i32 (%struct.ngx_http_request_s*)**, !dbg !2707
  %212 = load i32 (%struct.ngx_http_request_s*)** %211, align 4, !dbg !2707, !tbaa !2038
  %cmp873 = icmp eq i32 (%struct.ngx_http_request_s*)* %212, null, !dbg !2707
  br i1 %cmp873, label %cont878, label %if.end883, !dbg !2707

cont878:                                          ; preds = %if.then872
  %bf.field.offs875 = getelementptr i8* %210, i32 12, !dbg !2707
  %213 = bitcast i8* %bf.field.offs875 to i32*, !dbg !2707
  %214 = load i32* %213, align 4, !dbg !2707
  %bf.clear876 = and i32 %214, 2, !dbg !2707
  %tobool879 = icmp eq i32 %bf.clear876, 0, !dbg !2707
  br i1 %tobool879, label %if.end883, label %if.then880, !dbg !2707

if.then880:                                       ; preds = %cont878
  store i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_handler, i32 (%struct.ngx_http_request_s*)** %211, align 4, !dbg !2708, !tbaa !2038
  br label %if.end883, !dbg !2710

if.end883:                                        ; preds = %if.end866, %cont878, %if.then872, %if.then880
  %215 = bitcast %struct.ngx_array_s* %headers_names.i to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 -1, i8* %215) nounwind, !dbg !2711
  %216 = bitcast %struct.ngx_array_s* %params_merged.i to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 -1, i8* %216) nounwind, !dbg !2711
  %217 = bitcast %struct.ngx_hash_init_t* %hash.i to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 -1, i8* %217) nounwind, !dbg !2711
  %218 = bitcast %struct.ngx_http_script_compile_t* %sc.i to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 -1, i8* %218) nounwind, !dbg !2711
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2713) nounwind, !dbg !2711
  call void @llvm.dbg.declare(metadata !{%struct.ngx_array_s* %headers_names.i}, metadata !1895) nounwind, !dbg !2714
  call void @llvm.dbg.declare(metadata !{%struct.ngx_array_s* %params_merged.i}, metadata !1896) nounwind, !dbg !2715
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %hash.i}, metadata !1905) nounwind, !dbg !2716
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_script_compile_t* %sc.i}, metadata !1914) nounwind, !dbg !2717
  %params_source.i = getelementptr inbounds i8* %child, i32 188, !dbg !2718
  %219 = bitcast i8* %params_source.i to %struct.ngx_array_s**, !dbg !2718
  %220 = load %struct.ngx_array_s** %219, align 4, !dbg !2718, !tbaa !2038
  %cmp.i = icmp eq %struct.ngx_array_s* %220, null, !dbg !2718
  br i1 %cmp.i, label %if.then.i, label %if.end29.i, !dbg !2718

if.then.i:                                        ; preds = %if.end883
  %params_source1.i = getelementptr inbounds i8* %parent, i32 188, !dbg !2719
  %221 = bitcast i8* %params_source1.i to %struct.ngx_array_s**, !dbg !2719
  %222 = load %struct.ngx_array_s** %221, align 4, !dbg !2719, !tbaa !2038
  store %struct.ngx_array_s* %222, %struct.ngx_array_s** %219, align 4, !dbg !2719, !tbaa !2038
  %headers_hash.i = getelementptr inbounds i8* %parent, i32 192, !dbg !2721
  %buckets.i = bitcast i8* %headers_hash.i to %struct.ngx_hash_elt_t***, !dbg !2721
  %223 = load %struct.ngx_hash_elt_t*** %buckets.i, align 4, !dbg !2721, !tbaa !2038
  %tobool.i = icmp eq %struct.ngx_hash_elt_t** %223, null, !dbg !2721
  br i1 %tobool.i, label %if.end17.i, label %land.lhs.true.i, !dbg !2721

land.lhs.true.i:                                  ; preds = %if.then.i
  %224 = load %struct.ngx_shm_zone_s** %125, align 4, !dbg !2721, !tbaa !2038
  %cmp3.i = icmp eq %struct.ngx_shm_zone_s* %224, null, !dbg !2721
  %cache5.i = getelementptr inbounds i8* %parent, i32 120, !dbg !2721
  %225 = bitcast i8* %cache5.i to %struct.ngx_shm_zone_s**, !dbg !2721
  %226 = load %struct.ngx_shm_zone_s** %225, align 4, !dbg !2721, !tbaa !2038
  %cmp6.i = icmp eq %struct.ngx_shm_zone_s* %226, null, !dbg !2721
  %cmp8tmp.i = xor i1 %cmp3.i, %cmp6.i, !dbg !2721
  br i1 %cmp8tmp.i, label %if.end17.i, label %if.then10.i, !dbg !2721

if.then10.i:                                      ; preds = %land.lhs.true.i
  %flushes.i = getelementptr inbounds i8* %parent, i32 176, !dbg !2722
  %227 = bitcast i8* %flushes.i to %struct.ngx_array_s**, !dbg !2722
  %228 = load %struct.ngx_array_s** %227, align 4, !dbg !2722, !tbaa !2038
  %flushes11.i = getelementptr inbounds i8* %child, i32 176, !dbg !2722
  %229 = bitcast i8* %flushes11.i to %struct.ngx_array_s**, !dbg !2722
  store %struct.ngx_array_s* %228, %struct.ngx_array_s** %229, align 4, !dbg !2722, !tbaa !2038
  %params_len.i = getelementptr inbounds i8* %parent, i32 180, !dbg !2724
  %230 = bitcast i8* %params_len.i to %struct.ngx_array_s**, !dbg !2724
  %231 = load %struct.ngx_array_s** %230, align 4, !dbg !2724, !tbaa !2038
  %params_len12.i = getelementptr inbounds i8* %child, i32 180, !dbg !2724
  %232 = bitcast i8* %params_len12.i to %struct.ngx_array_s**, !dbg !2724
  store %struct.ngx_array_s* %231, %struct.ngx_array_s** %232, align 4, !dbg !2724, !tbaa !2038
  %params.i = getelementptr inbounds i8* %parent, i32 184, !dbg !2725
  %233 = bitcast i8* %params.i to %struct.ngx_array_s**, !dbg !2725
  %234 = load %struct.ngx_array_s** %233, align 4, !dbg !2725, !tbaa !2038
  %params13.i = getelementptr inbounds i8* %child, i32 184, !dbg !2725
  %235 = bitcast i8* %params13.i to %struct.ngx_array_s**, !dbg !2725
  store %struct.ngx_array_s* %234, %struct.ngx_array_s** %235, align 4, !dbg !2725, !tbaa !2038
  %headers_hash14.i = getelementptr inbounds i8* %child, i32 192, !dbg !2726
  %236 = bitcast i8* %headers_hash.i to i64*, !dbg !2726
  %237 = bitcast i8* %headers_hash14.i to i64*, !dbg !2726
  %238 = load i64* %236, align 4, !dbg !2726
  store i64 %238, i64* %237, align 4, !dbg !2726
  %header_params.i = getelementptr inbounds i8* %parent, i32 200, !dbg !2727
  %239 = bitcast i8* %header_params.i to i32*, !dbg !2727
  %240 = load i32* %239, align 4, !dbg !2727, !tbaa !2042
  %header_params16.i = getelementptr inbounds i8* %child, i32 200, !dbg !2727
  %241 = bitcast i8* %header_params16.i to i32*, !dbg !2727
  store i32 %240, i32* %241, align 4, !dbg !2727, !tbaa !2042
  br label %ngx_http_scgi_merge_params.exit, !dbg !2728

if.end17.i:                                       ; preds = %land.lhs.true.i, %if.then.i
  %cmp19.i = icmp eq %struct.ngx_array_s* %222, null, !dbg !2729
  br i1 %cmp19.i, label %land.lhs.true21.i, label %if.end29.i, !dbg !2729

land.lhs.true21.i:                                ; preds = %if.end17.i
  %242 = load %struct.ngx_shm_zone_s** %125, align 4, !dbg !2729, !tbaa !2038
  %cmp24.i = icmp eq %struct.ngx_shm_zone_s* %242, null, !dbg !2729
  br i1 %cmp24.i, label %if.then26.i, label %if.end29.i, !dbg !2729

if.then26.i:                                      ; preds = %land.lhs.true21.i
  %buckets28.i = getelementptr inbounds i8* %child, i32 192, !dbg !2730
  %243 = bitcast i8* %buckets28.i to %struct.ngx_hash_elt_t***, !dbg !2730
  store %struct.ngx_hash_elt_t** inttoptr (i32 1 to %struct.ngx_hash_elt_t**), %struct.ngx_hash_elt_t*** %243, align 4, !dbg !2730, !tbaa !2038
  br label %ngx_http_scgi_merge_params.exit, !dbg !2732

if.end29.i:                                       ; preds = %land.lhs.true21.i, %if.end17.i, %if.end883
  %pool.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2733
  %244 = load %struct.ngx_pool_s** %pool.i, align 4, !dbg !2733, !tbaa !2038
  %call.i = call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %244, i32 64, i32 1) nounwind, !dbg !2733
  %params_len32.i = getelementptr inbounds i8* %child, i32 180, !dbg !2733
  %245 = bitcast i8* %params_len32.i to %struct.ngx_array_s**, !dbg !2733
  store %struct.ngx_array_s* %call.i, %struct.ngx_array_s** %245, align 4, !dbg !2733, !tbaa !2038
  %cmp34.i = icmp eq %struct.ngx_array_s* %call.i, null, !dbg !2734
  br i1 %cmp34.i, label %ngx_http_scgi_merge_params.exit, label %if.end39.i, !dbg !2734

if.end39.i:                                       ; preds = %if.end29.i
  %246 = load %struct.ngx_pool_s** %pool.i, align 4, !dbg !2735, !tbaa !2038
  %call45.i = call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %246, i32 512, i32 1) nounwind, !dbg !2735
  %params46.i = getelementptr inbounds i8* %child, i32 184, !dbg !2735
  %247 = bitcast i8* %params46.i to %struct.ngx_array_s**, !dbg !2735
  store %struct.ngx_array_s* %call45.i, %struct.ngx_array_s** %247, align 4, !dbg !2735, !tbaa !2038
  %cmp48.i = icmp eq %struct.ngx_array_s* %call45.i, null, !dbg !2736
  br i1 %cmp48.i, label %ngx_http_scgi_merge_params.exit, label %if.end53.i, !dbg !2736

if.end53.i:                                       ; preds = %if.end39.i
  %temp_pool.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2737
  %248 = load %struct.ngx_pool_s** %temp_pool.i, align 4, !dbg !2737, !tbaa !2038
  call void @llvm.dbg.value(metadata !2738, i64 0, metadata !2739) nounwind, !dbg !2740
  %nelts.i.i = getelementptr inbounds %struct.ngx_array_s* %headers_names.i, i32 0, i32 1, !dbg !2741
  store i32 0, i32* %nelts.i.i, align 4, !dbg !2741, !tbaa !2042
  %size1.i.i = getelementptr inbounds %struct.ngx_array_s* %headers_names.i, i32 0, i32 2, !dbg !2743
  store i32 16, i32* %size1.i.i, align 4, !dbg !2743, !tbaa !2042
  %nalloc.i.i = getelementptr inbounds %struct.ngx_array_s* %headers_names.i, i32 0, i32 3, !dbg !2744
  store i32 4, i32* %nalloc.i.i, align 4, !dbg !2744, !tbaa !2042
  %pool2.i.i = getelementptr inbounds %struct.ngx_array_s* %headers_names.i, i32 0, i32 4, !dbg !2745
  store %struct.ngx_pool_s* %248, %struct.ngx_pool_s** %pool2.i.i, align 4, !dbg !2745, !tbaa !2038
  %call.i.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %248, i32 64) nounwind, !dbg !2746
  %elts.i.i = getelementptr inbounds %struct.ngx_array_s* %headers_names.i, i32 0, i32 0, !dbg !2746
  store i8* %call.i.i, i8** %elts.i.i, align 4, !dbg !2746, !tbaa !2038
  %cmp.i.i = icmp eq i8* %call.i.i, null, !dbg !2747
  br i1 %cmp.i.i, label %ngx_http_scgi_merge_params.exit, label %if.end62.i, !dbg !2737

if.end62.i:                                       ; preds = %if.end53.i
  %249 = load %struct.ngx_array_s** %219, align 4, !dbg !2748, !tbaa !2038
  %tobool64.i = icmp eq %struct.ngx_array_s* %249, null, !dbg !2748
  br i1 %tobool64.i, label %if.end70.i, label %if.then65.i, !dbg !2748

if.then65.i:                                      ; preds = %if.end62.i
  %elts.i = getelementptr inbounds %struct.ngx_array_s* %249, i32 0, i32 0, !dbg !2749
  %250 = load i8** %elts.i, align 4, !dbg !2749, !tbaa !2038
  %251 = bitcast i8* %250 to %struct.ngx_http_upstream_param_t*, !dbg !2749
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_param_t* %251}, i64 0, metadata !2751) nounwind, !dbg !2749
  %nelts.i = getelementptr inbounds %struct.ngx_array_s* %249, i32 0, i32 1, !dbg !2752
  %252 = load i32* %nelts.i, align 4, !dbg !2752, !tbaa !2042
  call void @llvm.dbg.value(metadata !{i32 %252}, i64 0, metadata !2753) nounwind, !dbg !2752
  br label %if.end70.i, !dbg !2754

if.end70.i:                                       ; preds = %if.then65.i, %if.end62.i
  %nsrc.0.i = phi i32 [ %252, %if.then65.i ], [ 0, %if.end62.i ]
  %src.0.i = phi %struct.ngx_http_upstream_param_t* [ %251, %if.then65.i ], [ null, %if.end62.i ]
  %253 = load %struct.ngx_shm_zone_s** %125, align 4, !dbg !2755, !tbaa !2038
  %tobool73.i = icmp eq %struct.ngx_shm_zone_s* %253, null, !dbg !2755
  br i1 %tobool73.i, label %cont136.i, label %cont77.i, !dbg !2755

cont77.i:                                         ; preds = %if.end70.i
  %254 = load %struct.ngx_pool_s** %temp_pool.i, align 4, !dbg !2756, !tbaa !2038
  call void @llvm.dbg.value(metadata !2738, i64 0, metadata !2757) nounwind, !dbg !2758
  %nelts.i448.i = getelementptr inbounds %struct.ngx_array_s* %params_merged.i, i32 0, i32 1, !dbg !2759
  store i32 0, i32* %nelts.i448.i, align 4, !dbg !2759, !tbaa !2042
  %size1.i449.i = getelementptr inbounds %struct.ngx_array_s* %params_merged.i, i32 0, i32 2, !dbg !2760
  store i32 20, i32* %size1.i449.i, align 4, !dbg !2760, !tbaa !2042
  %nalloc.i450.i = getelementptr inbounds %struct.ngx_array_s* %params_merged.i, i32 0, i32 3, !dbg !2761
  store i32 4, i32* %nalloc.i450.i, align 4, !dbg !2761, !tbaa !2042
  %pool2.i451.i = getelementptr inbounds %struct.ngx_array_s* %params_merged.i, i32 0, i32 4, !dbg !2762
  store %struct.ngx_pool_s* %254, %struct.ngx_pool_s** %pool2.i451.i, align 4, !dbg !2762, !tbaa !2038
  %call.i453.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %254, i32 80) nounwind, !dbg !2763
  %elts.i454.i = getelementptr inbounds %struct.ngx_array_s* %params_merged.i, i32 0, i32 0, !dbg !2763
  store i8* %call.i453.i, i8** %elts.i454.i, align 4, !dbg !2763, !tbaa !2038
  %cmp.i455.i = icmp eq i8* %call.i453.i, null, !dbg !2764
  br i1 %cmp.i455.i, label %ngx_http_scgi_merge_params.exit, label %for.cond.preheader.i, !dbg !2756

for.cond.preheader.i:                             ; preds = %cont77.i
  %cmp87472.i = icmp eq i32 %nsrc.0.i, 0, !dbg !2765
  br i1 %cmp87472.i, label %while.cond.preheader.i, label %for.body.i, !dbg !2765

for.cond.while.cond.preheader_crit_edge.i:        ; preds = %for.cond.backedge.i
  %.pre.i = load i8** %elts.i454.i, align 4, !dbg !2767, !tbaa !2038
  %.pre475.i = load i32* %nelts.i448.i, align 4, !dbg !2769, !tbaa !2042
  br label %while.cond.preheader.i, !dbg !2765

while.cond.preheader.i:                           ; preds = %for.cond.while.cond.preheader_crit_edge.i, %for.cond.preheader.i
  %255 = phi i32 [ 0, %for.cond.preheader.i ], [ %.pre475.i, %for.cond.while.cond.preheader_crit_edge.i ]
  %256 = phi i8* [ %call.i453.i, %for.cond.preheader.i ], [ %.pre.i, %for.cond.while.cond.preheader_crit_edge.i ]
  %257 = bitcast i8* %256 to %struct.ngx_http_upstream_param_t*, !dbg !2767
  br label %for.cond103.preheader.i, !dbg !2770

for.body.i:                                       ; preds = %for.cond.preheader.i, %for.cond.backedge.i
  %i.0473.i = phi i32 [ %260, %for.cond.backedge.i ], [ 0, %for.cond.preheader.i ]
  %call89.i = call i8* @ngx_array_push(%struct.ngx_array_s* %params_merged.i) nounwind, !dbg !2771
  %cmp90.i = icmp eq i8* %call89.i, null, !dbg !2773
  br i1 %cmp90.i, label %ngx_http_scgi_merge_params.exit, label %if.end95.i, !dbg !2773

if.end95.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %src.0.i, i32 %i.0473.i, !dbg !2774
  %258 = bitcast %struct.ngx_http_upstream_param_t* %arrayidx.i to i8*, !dbg !2774
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call89.i, i8* %258, i32 20, i32 4, i1 false) nounwind, !dbg !2774, !tbaa.struct !2775
  %259 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0473.i, i32 1) nounwind, !dbg !2765
  %260 = extractvalue { i32, i1 } %259, 0, !dbg !2765
  %261 = extractvalue { i32, i1 } %259, 1, !dbg !2765
  br i1 %261, label %ioc_bb96.i, label %for.cond.backedge.i, !dbg !2765

for.cond.backedge.i:                              ; preds = %ioc_bb96.i, %if.end95.i
  %cmp87.i = icmp ult i32 %260, %nsrc.0.i, !dbg !2765
  br i1 %cmp87.i, label %for.body.i, label %for.cond.while.cond.preheader_crit_edge.i, !dbg !2765

ioc_bb96.i:                                       ; preds = %if.end95.i
  %262 = zext i32 %i.0473.i to i64, !dbg !2765
  call void @__ioc_report_add_overflow(i32 877, i32 28, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %262, i64 1, i8 5) nounwind, !dbg !2765
  br label %for.cond.backedge.i, !dbg !2765

for.cond103.preheader.i:                          ; preds = %next.i, %while.cond.preheader.i
  %263 = phi i32 [ %255, %while.cond.preheader.i ], [ %281, %next.i ]
  %264 = phi %struct.ngx_http_upstream_param_t* [ %257, %while.cond.preheader.i ], [ %280, %next.i ]
  %h.0469.i = phi %struct.ngx_keyval_t* [ getelementptr inbounds ([7 x %struct.ngx_keyval_t]* @ngx_http_scgi_cache_headers, i32 0, i32 0), %while.cond.preheader.i ], [ %incdec.ptr.i, %next.i ]
  %cmp104463.i = icmp eq i32 %263, 0, !dbg !2776
  br i1 %cmp104463.i, label %for.end119.i, label %for.body106.lr.ph.i, !dbg !2776

for.body106.lr.ph.i:                              ; preds = %for.cond103.preheader.i
  %data.i = getelementptr inbounds %struct.ngx_keyval_t* %h.0469.i, i32 0, i32 0, i32 1, !dbg !2778
  br label %for.body106.i, !dbg !2776

for.body106.i:                                    ; preds = %for.cond103.backedge.i, %for.body106.lr.ph.i
  %i.1464.i = phi i32 [ 0, %for.body106.lr.ph.i ], [ %268, %for.cond103.backedge.i ]
  %265 = load i8** %data.i, align 4, !dbg !2778, !tbaa !2038
  %data110.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %264, i32 %i.1464.i, i32 0, i32 1, !dbg !2778
  %266 = load i8** %data110.i, align 4, !dbg !2778, !tbaa !2038
  %call111.i = call i32 @ngx_strcasecmp(i8* %265, i8* %266) nounwind, !dbg !2778
  %cmp112.i = icmp eq i32 %call111.i, 0, !dbg !2778
  br i1 %cmp112.i, label %next.i, label %for.inc116.i, !dbg !2778

for.inc116.i:                                     ; preds = %for.body106.i
  %267 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1464.i, i32 1) nounwind, !dbg !2776
  %268 = extractvalue { i32, i1 } %267, 0, !dbg !2776
  %269 = extractvalue { i32, i1 } %267, 1, !dbg !2776
  br i1 %269, label %ioc_bb117.i, label %for.cond103.backedge.i, !dbg !2776

for.cond103.backedge.i:                           ; preds = %ioc_bb117.i, %for.inc116.i
  %cmp104.i = icmp ult i32 %268, %263, !dbg !2776
  br i1 %cmp104.i, label %for.body106.i, label %for.end119.i, !dbg !2776

ioc_bb117.i:                                      ; preds = %for.inc116.i
  %270 = zext i32 %i.1464.i to i64, !dbg !2776
  call void @__ioc_report_add_overflow(i32 888, i32 30, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %270, i64 1, i8 5) nounwind, !dbg !2776
  br label %for.cond103.backedge.i, !dbg !2776

for.end119.i:                                     ; preds = %for.cond103.backedge.i, %for.cond103.preheader.i
  %call120.i = call i8* @ngx_array_push(%struct.ngx_array_s* %params_merged.i) nounwind, !dbg !2780
  %cmp121.i = icmp eq i8* %call120.i, null, !dbg !2781
  br i1 %cmp121.i, label %ngx_http_scgi_merge_params.exit, label %if.end126.i, !dbg !2781

if.end126.i:                                      ; preds = %for.end119.i
  %271 = bitcast %struct.ngx_keyval_t* %h.0469.i to i64*, !dbg !2782
  %272 = bitcast i8* %call120.i to i64*, !dbg !2782
  %273 = load i64* %271, align 4, !dbg !2782
  store i64 %273, i64* %272, align 4, !dbg !2782
  %value.i = getelementptr inbounds i8* %call120.i, i32 8, !dbg !2783
  %value129.i = getelementptr inbounds %struct.ngx_keyval_t* %h.0469.i, i32 0, i32 1, !dbg !2783
  %274 = bitcast %struct.ngx_str_t* %value129.i to i64*, !dbg !2783
  %275 = bitcast i8* %value.i to i64*, !dbg !2783
  %276 = load i64* %274, align 4, !dbg !2783
  store i64 %276, i64* %275, align 4, !dbg !2783
  %skip_empty.i = getelementptr inbounds i8* %call120.i, i32 16, !dbg !2784
  %277 = bitcast i8* %skip_empty.i to i32*, !dbg !2784
  store i32 0, i32* %277, align 4, !dbg !2784, !tbaa !2042
  br label %next.i, !dbg !2784

next.i:                                           ; preds = %for.body106.i, %if.end126.i
  %incdec.ptr.i = getelementptr inbounds %struct.ngx_keyval_t* %h.0469.i, i32 1, !dbg !2785
  call void @llvm.dbg.value(metadata !{%struct.ngx_keyval_t* %incdec.ptr.i}, i64 0, metadata !2786) nounwind, !dbg !2785
  %len.i = getelementptr inbounds %struct.ngx_keyval_t* %incdec.ptr.i, i32 0, i32 0, i32 0, !dbg !2770
  %278 = load i32* %len.i, align 4, !dbg !2770, !tbaa !2042
  %tobool98.i = icmp eq i32 %278, 0, !dbg !2770
  %279 = load i8** %elts.i454.i, align 4, !dbg !2767, !tbaa !2038
  %280 = bitcast i8* %279 to %struct.ngx_http_upstream_param_t*, !dbg !2767
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_upstream_param_t* %280}, i64 0, metadata !2751) nounwind, !dbg !2767
  %281 = load i32* %nelts.i448.i, align 4, !dbg !2769, !tbaa !2042
  call void @llvm.dbg.value(metadata !{i32 %281}, i64 0, metadata !2753) nounwind, !dbg !2769
  br i1 %tobool98.i, label %cont136.i, label %for.cond103.preheader.i, !dbg !2770

cont136.i:                                        ; preds = %next.i, %if.end70.i
  %nsrc.1.i = phi i32 [ %nsrc.0.i, %if.end70.i ], [ %281, %next.i ]
  %src.1.i = phi %struct.ngx_http_upstream_param_t* [ %src.0.i, %if.end70.i ], [ %280, %next.i ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2787) nounwind, !dbg !2788
  %cmp138459.i = icmp eq i32 %nsrc.1.i, 0, !dbg !2788
  br i1 %cmp138459.i, label %for.end309.i, label %for.body140.lr.ph.i, !dbg !2788

for.body140.lr.ph.i:                              ; preds = %cont136.i
  %cf276.i = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc.i, i32 0, i32 0, !dbg !2790
  %source.i = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc.i, i32 0, i32 1, !dbg !2792
  %flushes279.i = getelementptr inbounds i8* %child, i32 176, !dbg !2793
  %282 = bitcast i8* %flushes279.i to %struct.ngx_array_s**, !dbg !2793
  %flushes280.i = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc.i, i32 0, i32 2, !dbg !2793
  %lengths.i = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc.i, i32 0, i32 3, !dbg !2794
  %values.i = getelementptr inbounds %struct.ngx_http_script_compile_t* %sc.i, i32 0, i32 4, !dbg !2795
  br label %for.body140.i, !dbg !2788

for.body140.i:                                    ; preds = %for.cond137.backedge.i, %for.body140.lr.ph.i
  %i.2460.i = phi i32 [ 0, %for.body140.lr.ph.i ], [ %340, %for.cond137.backedge.i ]
  %len143.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %src.1.i, i32 %i.2460.i, i32 0, i32 0, !dbg !2796
  %283 = load i32* %len143.i, align 4, !dbg !2796, !tbaa !2042
  %cmp148.i = icmp ugt i32 %283, 5, !dbg !2796
  br i1 %cmp148.i, label %land.lhs.true150.i, label %if.end198.i, !dbg !2796

land.lhs.true150.i:                               ; preds = %for.body140.i
  %data153.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %src.1.i, i32 %i.2460.i, i32 0, i32 1, !dbg !2796
  %284 = load i8** %data153.i, align 4, !dbg !2796, !tbaa !2038
  %call158.i = call i32 @strncmp(i8* %284, i8* getelementptr inbounds ([6 x i8]* @.str54, i32 0, i32 0), i32 5) nounwind readonly, !dbg !2796
  %cmp159.i = icmp eq i32 %call158.i, 0, !dbg !2796
  br i1 %cmp159.i, label %if.then161.i, label %if.end198.i, !dbg !2796

if.then161.i:                                     ; preds = %land.lhs.true150.i
  %call162.i = call i8* @ngx_array_push(%struct.ngx_array_s* %headers_names.i) nounwind, !dbg !2797
  %cmp163.i = icmp eq i8* %call162.i, null, !dbg !2799
  br i1 %cmp163.i, label %ngx_http_scgi_merge_params.exit, label %if.end168.i, !dbg !2799

if.end168.i:                                      ; preds = %if.then161.i
  %285 = load i32* %len143.i, align 4, !dbg !2800, !tbaa !2042
  %286 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %285, i32 5) nounwind, !dbg !2800
  %287 = extractvalue { i32, i1 } %286, 0, !dbg !2800
  %288 = extractvalue { i32, i1 } %286, 1, !dbg !2800
  br i1 %288, label %ioc_bb174.i, label %cont175.i, !dbg !2800

ioc_bb174.i:                                      ; preds = %if.end168.i
  %289 = zext i32 %285 to i64, !dbg !2800
  call void @__ioc_report_sub_overflow(i32 913, i32 38, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %289, i64 5, i8 5) nounwind, !dbg !2800
  br label %cont175.i, !dbg !2800

cont175.i:                                        ; preds = %ioc_bb174.i, %if.end168.i
  %len177.i = bitcast i8* %call162.i to i32*, !dbg !2800
  store i32 %287, i32* %len177.i, align 4, !dbg !2800, !tbaa !2042
  %290 = load i8** %data153.i, align 4, !dbg !2801, !tbaa !2038
  %add.ptr.i = getelementptr inbounds i8* %290, i32 5, !dbg !2801
  %data182.i = getelementptr inbounds i8* %call162.i, i32 4, !dbg !2801
  %291 = bitcast i8* %data182.i to i8**, !dbg !2801
  store i8* %add.ptr.i, i8** %291, align 4, !dbg !2801, !tbaa !2038
  %call187.i = call i32 @ngx_hash_key_lc(i8* %add.ptr.i, i32 %287) nounwind, !dbg !2802
  %key_hash.i = getelementptr inbounds i8* %call162.i, i32 8, !dbg !2802
  %292 = bitcast i8* %key_hash.i to i32*, !dbg !2802
  store i32 %call187.i, i32* %292, align 4, !dbg !2802, !tbaa !2042
  %value188.i = getelementptr inbounds i8* %call162.i, i32 12, !dbg !2803
  %293 = bitcast i8* %value188.i to i8**, !dbg !2803
  store i8* inttoptr (i32 1 to i8*), i8** %293, align 4, !dbg !2803, !tbaa !2038
  %len191.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %src.1.i, i32 %i.2460.i, i32 1, i32 0, !dbg !2804
  %294 = load i32* %len191.i, align 4, !dbg !2804, !tbaa !2042
  %cmp194.i = icmp eq i32 %294, 0, !dbg !2804
  br i1 %cmp194.i, label %for.inc306.i, label %if.end198.i, !dbg !2804

if.end198.i:                                      ; preds = %cont175.i, %land.lhs.true150.i, %for.body140.i
  %295 = load %struct.ngx_array_s** %245, align 4, !dbg !2805, !tbaa !2038
  %call200.i = call i8* @ngx_array_push_n(%struct.ngx_array_s* %295, i32 8) nounwind, !dbg !2805
  %cmp201.i = icmp eq i8* %call200.i, null, !dbg !2806
  br i1 %cmp201.i, label %ngx_http_scgi_merge_params.exit, label %if.end206.i, !dbg !2806

if.end206.i:                                      ; preds = %if.end198.i
  %code207.i = bitcast i8* %call200.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2807
  store void (%struct.ngx_http_script_engine_t*)* bitcast (i32 (%struct.ngx_http_script_engine_t*)* @ngx_http_script_copy_len_code to void (%struct.ngx_http_script_engine_t*)*), void (%struct.ngx_http_script_engine_t*)** %code207.i, align 4, !dbg !2807, !tbaa !2038
  %296 = load i32* %len143.i, align 4, !dbg !2808, !tbaa !2042
  %297 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %296, i32 1) nounwind, !dbg !2808
  %298 = extractvalue { i32, i1 } %297, 0, !dbg !2808
  %299 = extractvalue { i32, i1 } %297, 1, !dbg !2808
  br i1 %299, label %ioc_bb213.i, label %cont214.i, !dbg !2808

ioc_bb213.i:                                      ; preds = %if.end206.i
  %300 = zext i32 %296 to i64, !dbg !2808
  call void @__ioc_report_add_overflow(i32 926, i32 34, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %300, i64 1, i8 5) nounwind, !dbg !2808
  br label %cont214.i, !dbg !2808

cont214.i:                                        ; preds = %ioc_bb213.i, %if.end206.i
  %len215.i = getelementptr inbounds i8* %call200.i, i32 4, !dbg !2808
  %301 = bitcast i8* %len215.i to i32*, !dbg !2808
  store i32 %298, i32* %301, align 4, !dbg !2808, !tbaa !2042
  %302 = load %struct.ngx_array_s** %245, align 4, !dbg !2809, !tbaa !2038
  %call217.i = call i8* @ngx_array_push_n(%struct.ngx_array_s* %302, i32 8) nounwind, !dbg !2809
  %cmp218.i = icmp eq i8* %call217.i, null, !dbg !2810
  br i1 %cmp218.i, label %ngx_http_scgi_merge_params.exit, label %if.end223.i, !dbg !2810

if.end223.i:                                      ; preds = %cont214.i
  %code224.i = bitcast i8* %call217.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2811
  store void (%struct.ngx_http_script_engine_t*)* bitcast (i32 (%struct.ngx_http_script_engine_t*)* @ngx_http_script_copy_len_code to void (%struct.ngx_http_script_engine_t*)*), void (%struct.ngx_http_script_engine_t*)** %code224.i, align 4, !dbg !2811, !tbaa !2038
  %skip_empty226.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %src.1.i, i32 %i.2460.i, i32 2, !dbg !2812
  %303 = load i32* %skip_empty226.i, align 4, !dbg !2812, !tbaa !2042
  %len227.i = getelementptr inbounds i8* %call217.i, i32 4, !dbg !2812
  %304 = bitcast i8* %len227.i to i32*, !dbg !2812
  store i32 %303, i32* %304, align 4, !dbg !2812, !tbaa !2042
  %305 = load i32* %len143.i, align 4, !dbg !2813, !tbaa !2042
  %306 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %305, i32 8) nounwind, !dbg !2813
  %307 = extractvalue { i32, i1 } %306, 0, !dbg !2813
  %308 = extractvalue { i32, i1 } %306, 1, !dbg !2813
  br i1 %308, label %ioc_bb231.i, label %cont234.i, !dbg !2813

ioc_bb231.i:                                      ; preds = %if.end223.i
  %309 = zext i32 %305 to i64, !dbg !2813
  call void @__ioc_report_add_overflow(i32 933, i32 49, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 8, i64 %309, i8 5) nounwind, !dbg !2813
  br label %cont234.i, !dbg !2813

cont234.i:                                        ; preds = %ioc_bb231.i, %if.end223.i
  %310 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %307, i32 1) nounwind, !dbg !2813
  %311 = extractvalue { i32, i1 } %310, 0, !dbg !2813
  %312 = extractvalue { i32, i1 } %310, 1, !dbg !2813
  br i1 %312, label %ioc_bb235.i, label %cont236.i, !dbg !2813

ioc_bb235.i:                                      ; preds = %cont234.i
  %313 = zext i32 %307 to i64, !dbg !2813
  call void @__ioc_report_add_overflow(i32 933, i32 66, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %313, i64 1, i8 5) nounwind, !dbg !2813
  br label %cont236.i, !dbg !2813

cont236.i:                                        ; preds = %ioc_bb235.i, %cont234.i
  %314 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %311, i32 4) nounwind, !dbg !2813
  %315 = extractvalue { i32, i1 } %314, 0, !dbg !2813
  %316 = extractvalue { i32, i1 } %314, 1, !dbg !2813
  br i1 %316, label %ioc_bb237.i, label %cont240.i, !dbg !2813

ioc_bb237.i:                                      ; preds = %cont236.i
  %317 = zext i32 %311 to i64, !dbg !2813
  call void @__ioc_report_add_overflow(i32 933, i32 70, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %317, i64 4, i8 5) nounwind, !dbg !2813
  br label %cont240.i, !dbg !2813

cont240.i:                                        ; preds = %ioc_bb237.i, %cont236.i
  %318 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %315, i32 1) nounwind, !dbg !2813
  %319 = extractvalue { i32, i1 } %318, 0, !dbg !2813
  %320 = extractvalue { i32, i1 } %318, 1, !dbg !2813
  br i1 %320, label %ioc_bb241.i, label %cont246.i, !dbg !2813

ioc_bb241.i:                                      ; preds = %cont240.i
  %321 = zext i32 %315 to i64, !dbg !2813
  call void @__ioc_report_sub_overflow(i32 933, i32 91, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @4, i32 0, i32 0), i64 %321, i64 1, i8 5) nounwind, !dbg !2813
  br label %cont246.i, !dbg !2813

cont246.i:                                        ; preds = %ioc_bb241.i, %cont240.i
  %and.i = and i32 %319, -4, !dbg !2813
  call void @llvm.dbg.value(metadata !{i32 %and.i}, i64 0, metadata !2814) nounwind, !dbg !2813
  %322 = load %struct.ngx_array_s** %247, align 4, !dbg !2815, !tbaa !2038
  %call248.i = call i8* @ngx_array_push_n(%struct.ngx_array_s* %322, i32 %and.i) nounwind, !dbg !2815
  %cmp249.i = icmp eq i8* %call248.i, null, !dbg !2816
  br i1 %cmp249.i, label %ngx_http_scgi_merge_params.exit, label %if.end254.i, !dbg !2816

if.end254.i:                                      ; preds = %cont246.i
  %code255.i = bitcast i8* %call248.i to void (%struct.ngx_http_script_engine_t*)**, !dbg !2817
  store void (%struct.ngx_http_script_engine_t*)* @ngx_http_script_copy_code, void (%struct.ngx_http_script_engine_t*)** %code255.i, align 4, !dbg !2817, !tbaa !2038
  %323 = load i32* %len143.i, align 4, !dbg !2818, !tbaa !2042
  %324 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %323, i32 1) nounwind, !dbg !2818
  %325 = extractvalue { i32, i1 } %324, 0, !dbg !2818
  %326 = extractvalue { i32, i1 } %324, 1, !dbg !2818
  br i1 %326, label %ioc_bb261.i, label %cont262.i, !dbg !2818

ioc_bb261.i:                                      ; preds = %if.end254.i
  %327 = zext i32 %323 to i64, !dbg !2818
  call void @__ioc_report_add_overflow(i32 939, i32 34, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %327, i64 1, i8 5) nounwind, !dbg !2818
  br label %cont262.i, !dbg !2818

cont262.i:                                        ; preds = %ioc_bb261.i, %if.end254.i
  %len263.i = getelementptr inbounds i8* %call248.i, i32 4, !dbg !2818
  %328 = bitcast i8* %len263.i to i32*, !dbg !2818
  store i32 %325, i32* %328, align 4, !dbg !2818, !tbaa !2042
  %add.ptr264.i = getelementptr inbounds i8* %call248.i, i32 8, !dbg !2819
  call void @llvm.dbg.value(metadata !{i8* %add.ptr264.i}, i64 0, metadata !2820) nounwind, !dbg !2819
  %data267.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %src.1.i, i32 %i.2460.i, i32 0, i32 1, !dbg !2821
  %329 = load i8** %data267.i, align 4, !dbg !2821, !tbaa !2038
  %330 = load i32* %len143.i, align 4, !dbg !2821, !tbaa !2042
  %331 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %330, i32 1) nounwind, !dbg !2821
  %332 = extractvalue { i32, i1 } %331, 0, !dbg !2821
  %333 = extractvalue { i32, i1 } %331, 1, !dbg !2821
  br i1 %333, label %ioc_bb273.i, label %cont274.i, !dbg !2821

ioc_bb273.i:                                      ; preds = %cont262.i
  %334 = zext i32 %330 to i64, !dbg !2821
  call void @__ioc_report_add_overflow(i32 941, i32 58, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %334, i64 1, i8 5) nounwind, !dbg !2821
  br label %cont274.i, !dbg !2821

cont274.i:                                        ; preds = %ioc_bb273.i, %cont262.i
  %call275.i = call i8* @ngx_cpystrn(i8* %add.ptr264.i, i8* %329, i32 %332) nounwind, !dbg !2821
  call void @llvm.memset.p0i8.i32(i8* %218, i8 0, i32 44, i32 4, i1 false) nounwind, !dbg !2822
  store %struct.ngx_conf_s* %cf, %struct.ngx_conf_s** %cf276.i, align 4, !dbg !2790, !tbaa !2038
  %value278.i = getelementptr inbounds %struct.ngx_http_upstream_param_t* %src.1.i, i32 %i.2460.i, i32 1, !dbg !2792
  store %struct.ngx_str_t* %value278.i, %struct.ngx_str_t** %source.i, align 4, !dbg !2792, !tbaa !2038
  store %struct.ngx_array_s** %282, %struct.ngx_array_s*** %flushes280.i, align 4, !dbg !2793, !tbaa !2038
  store %struct.ngx_array_s** %245, %struct.ngx_array_s*** %lengths.i, align 4, !dbg !2794, !tbaa !2038
  store %struct.ngx_array_s** %247, %struct.ngx_array_s*** %values.i, align 4, !dbg !2795, !tbaa !2038
  %call283.i = call i32 @ngx_http_script_compile(%struct.ngx_http_script_compile_t* %sc.i) nounwind, !dbg !2823
  %cmp284.i = icmp eq i32 %call283.i, 0, !dbg !2823
  br i1 %cmp284.i, label %if.end289.i, label %ngx_http_scgi_merge_params.exit, !dbg !2823

if.end289.i:                                      ; preds = %cont274.i
  %335 = load %struct.ngx_array_s** %245, align 4, !dbg !2824, !tbaa !2038
  %call291.i = call i8* @ngx_array_push_n(%struct.ngx_array_s* %335, i32 4) nounwind, !dbg !2824
  %cmp292.i = icmp eq i8* %call291.i, null, !dbg !2825
  br i1 %cmp292.i, label %ngx_http_scgi_merge_params.exit, label %if.end297.i, !dbg !2825

if.end297.i:                                      ; preds = %if.end289.i
  %336 = bitcast i8* %call291.i to i32*, !dbg !2824
  store i32 0, i32* %336, align 4, !dbg !2826, !tbaa !2042
  %337 = load %struct.ngx_array_s** %247, align 4, !dbg !2827, !tbaa !2038
  %call299.i = call i8* @ngx_array_push_n(%struct.ngx_array_s* %337, i32 4) nounwind, !dbg !2827
  %cmp300.i = icmp eq i8* %call299.i, null, !dbg !2828
  br i1 %cmp300.i, label %ngx_http_scgi_merge_params.exit, label %if.end305.i, !dbg !2828

if.end305.i:                                      ; preds = %if.end297.i
  %338 = bitcast i8* %call299.i to i32*, !dbg !2827
  store i32 0, i32* %338, align 4, !dbg !2829, !tbaa !2042
  br label %for.inc306.i, !dbg !2830

for.inc306.i:                                     ; preds = %if.end305.i, %cont175.i
  %339 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.2460.i, i32 1) nounwind, !dbg !2788
  %340 = extractvalue { i32, i1 } %339, 0, !dbg !2788
  %341 = extractvalue { i32, i1 } %339, 1, !dbg !2788
  br i1 %341, label %ioc_bb307.i, label %for.cond137.backedge.i, !dbg !2788

for.cond137.backedge.i:                           ; preds = %ioc_bb307.i, %for.inc306.i
  %cmp138.i = icmp ult i32 %340, %nsrc.1.i, !dbg !2788
  br i1 %cmp138.i, label %for.body140.i, label %for.end309.i, !dbg !2788

ioc_bb307.i:                                      ; preds = %for.inc306.i
  %342 = zext i32 %i.2460.i to i64, !dbg !2788
  call void @__ioc_report_add_overflow(i32 907, i32 26, i8* getelementptr inbounds ([40 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @6, i32 0, i32 0), i64 %342, i64 1, i8 5) nounwind, !dbg !2788
  br label %for.cond137.backedge.i, !dbg !2788

for.end309.i:                                     ; preds = %for.cond137.backedge.i, %cont136.i
  %343 = load %struct.ngx_array_s** %245, align 4, !dbg !2831, !tbaa !2038
  %call311.i = call i8* @ngx_array_push_n(%struct.ngx_array_s* %343, i32 4) nounwind, !dbg !2831
  %cmp312.i = icmp eq i8* %call311.i, null, !dbg !2832
  br i1 %cmp312.i, label %ngx_http_scgi_merge_params.exit, label %if.end317.i, !dbg !2832

if.end317.i:                                      ; preds = %for.end309.i
  %344 = bitcast i8* %call311.i to i32*, !dbg !2831
  store i32 0, i32* %344, align 4, !dbg !2833, !tbaa !2042
  %345 = load %struct.ngx_array_s** %247, align 4, !dbg !2834, !tbaa !2038
  %call319.i = call i8* @ngx_array_push_n(%struct.ngx_array_s* %345, i32 4) nounwind, !dbg !2834
  %cmp320.i = icmp eq i8* %call319.i, null, !dbg !2835
  br i1 %cmp320.i, label %ngx_http_scgi_merge_params.exit, label %if.end325.i, !dbg !2835

if.end325.i:                                      ; preds = %if.end317.i
  %346 = bitcast i8* %call319.i to i32*, !dbg !2834
  store i32 0, i32* %346, align 4, !dbg !2836, !tbaa !2042
  %347 = load i32* %nelts.i.i, align 4, !dbg !2837, !tbaa !2042
  %header_params327.i = getelementptr inbounds i8* %child, i32 200, !dbg !2837
  %348 = bitcast i8* %header_params327.i to i32*, !dbg !2837
  store i32 %347, i32* %348, align 4, !dbg !2837, !tbaa !2042
  %headers_hash328.i = getelementptr inbounds i8* %child, i32 192, !dbg !2838
  %349 = bitcast i8* %headers_hash328.i to %struct.ngx_hash_t*, !dbg !2838
  %hash329.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 0, !dbg !2838
  store %struct.ngx_hash_t* %349, %struct.ngx_hash_t** %hash329.i, align 4, !dbg !2838, !tbaa !2038
  %key330.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 1, !dbg !2839
  store i32 (i8*, i32)* @ngx_hash_key_lc, i32 (i8*, i32)** %key330.i, align 4, !dbg !2839, !tbaa !2038
  %max_size.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 2, !dbg !2840
  store i32 512, i32* %max_size.i, align 4, !dbg !2840, !tbaa !2042
  %bucket_size.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 3, !dbg !2841
  store i32 64, i32* %bucket_size.i, align 4, !dbg !2841, !tbaa !2042
  %name.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 4, !dbg !2842
  store i8* getelementptr inbounds ([17 x i8]* @.str63, i32 0, i32 0), i8** %name.i, align 4, !dbg !2842, !tbaa !2038
  %350 = load %struct.ngx_pool_s** %pool.i, align 4, !dbg !2843, !tbaa !2038
  %pool336.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 5, !dbg !2843
  store %struct.ngx_pool_s* %350, %struct.ngx_pool_s** %pool336.i, align 4, !dbg !2843, !tbaa !2038
  %temp_pool337.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 6, !dbg !2844
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %temp_pool337.i, align 4, !dbg !2844, !tbaa !2038
  %351 = load i8** %elts.i.i, align 4, !dbg !2845, !tbaa !2038
  %352 = bitcast i8* %351 to %struct.ngx_hash_key_t*, !dbg !2845
  %call340.i = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hash.i, %struct.ngx_hash_key_t* %352, i32 %347) nounwind, !dbg !2845
  %phitmp = icmp eq i32 %call340.i, 0, !dbg !2845
  %phitmp1091 = select i1 %phitmp, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2845
  br label %ngx_http_scgi_merge_params.exit, !dbg !2845

ngx_http_scgi_merge_params.exit:                  ; preds = %for.body.i, %for.end119.i, %if.then161.i, %if.end198.i, %cont214.i, %cont246.i, %cont274.i, %if.end289.i, %if.end297.i, %if.then10.i, %if.then26.i, %if.end29.i, %if.end39.i, %if.end53.i, %cont77.i, %for.end309.i, %if.end317.i, %if.end325.i
  %retval.0.i = phi i8* [ null, %if.then10.i ], [ null, %if.then26.i ], [ %phitmp1091, %if.end325.i ], [ inttoptr (i32 -1 to i8*), %if.end29.i ], [ inttoptr (i32 -1 to i8*), %if.end39.i ], [ inttoptr (i32 -1 to i8*), %if.end53.i ], [ inttoptr (i32 -1 to i8*), %cont77.i ], [ inttoptr (i32 -1 to i8*), %for.end309.i ], [ inttoptr (i32 -1 to i8*), %if.end317.i ], [ inttoptr (i32 -1 to i8*), %if.end297.i ], [ inttoptr (i32 -1 to i8*), %if.end289.i ], [ inttoptr (i32 -1 to i8*), %cont274.i ], [ inttoptr (i32 -1 to i8*), %cont246.i ], [ inttoptr (i32 -1 to i8*), %cont214.i ], [ inttoptr (i32 -1 to i8*), %if.end198.i ], [ inttoptr (i32 -1 to i8*), %if.then161.i ], [ inttoptr (i32 -1 to i8*), %for.end119.i ], [ inttoptr (i32 -1 to i8*), %for.body.i ]
  call void @llvm.lifetime.end(i64 -1, i8* %215) nounwind, !dbg !2846
  call void @llvm.lifetime.end(i64 -1, i8* %216) nounwind, !dbg !2846
  call void @llvm.lifetime.end(i64 -1, i8* %217) nounwind, !dbg !2846
  call void @llvm.lifetime.end(i64 -1, i8* %218) nounwind, !dbg !2846
  ret i8* %retval.0.i, !dbg !2712

return:                                           ; preds = %cont841, %if.end534, %cont573, %cont480, %cont413, %cont354, %cont332, %cont262
  ret i8* inttoptr (i32 -1 to i8*), !dbg !2847
}

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

declare i8* @ngx_conf_merge_path_value(%struct.ngx_conf_s*, %struct.ngx_path_t**, %struct.ngx_path_t*, %struct.ngx_path_init_t*)

declare i32 @ngx_http_upstream_hide_headers_hash(%struct.ngx_conf_s*, %struct.ngx_http_upstream_conf_t*, %struct.ngx_http_upstream_conf_t*, %struct.ngx_str_t*, %struct.ngx_hash_init_t*)

declare %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s*, i32, i32)

declare i32 @ngx_strcasecmp(i8*, i8*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare i32 @ngx_hash_key_lc(i8*, i32)

declare i8* @ngx_array_push_n(%struct.ngx_array_s*, i32)

declare i32 @ngx_http_script_copy_len_code(%struct.ngx_http_script_engine_t*)

declare void @ngx_http_script_copy_code(%struct.ngx_http_script_engine_t*)

declare i8* @ngx_cpystrn(i8*, i8*, i32)

declare i32 @ngx_hash_init(%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/modules/ngx_http_scgi_module.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !1948} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !1604, metadata !1619, metadata !1663, metadata !1701, metadata !1720, metadata !1725, metadata !1729, metadata !1738, metadata !1770, metadata !1776, metadata !1832, metadata !1839, metadata !1849, metadata !1880, metadata !1931, metadata !1940}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_cache_key", metadata !"ngx_http_scgi_cache_key", metadata !"", metadata !6, i32 1089, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_cache_key, null, null, metadata !457, i32 1090} ; [ DW_TAG_subprogram ] [line 1089] [local] [def] [scope 1090] [ngx_http_scgi_cache_key]
!6 = metadata !{i32 786473, metadata !"src/http/modules/ngx_http_scgi_module.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
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
!458 = metadata !{metadata !459, metadata !460, metadata !461, metadata !462, metadata !1593, metadata !1594}
!459 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16778305, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1089]
!460 = metadata !{i32 786689, metadata !5, metadata !"cmd", metadata !6, i32 33555521, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1089]
!461 = metadata !{i32 786689, metadata !5, metadata !"conf", metadata !6, i32 50332737, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 1089]
!462 = metadata !{i32 786688, metadata !463, metadata !"scf", metadata !6, i32 1091, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scf] [line 1091]
!463 = metadata !{i32 786443, metadata !5, i32 1090, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!464 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !465} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_scgi_loc_conf_t]
!465 = metadata !{i32 786454, null, metadata !"ngx_http_scgi_loc_conf_t", metadata !6, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !466} ; [ DW_TAG_typedef ] [ngx_http_scgi_loc_conf_t] [line 22, size 0, align 0, offset 0] [from ]
!466 = metadata !{i32 786451, null, metadata !"", metadata !6, i32 9, i64 1856, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 9, size 1856, align 32, offset 0] [from ]
!467 = metadata !{metadata !468, metadata !1584, metadata !1585, metadata !1586, metadata !1587, metadata !1588, metadata !1589, metadata !1590, metadata !1591, metadata !1592}
!468 = metadata !{i32 786445, metadata !466, metadata !"upstream", metadata !6, i32 10, i64 1408, i64 32, i64 0, i32 0, metadata !469} ; [ DW_TAG_member ] [upstream] [line 10, size 1408, align 32, offset 0] [from ngx_http_upstream_conf_t]
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
!1584 = metadata !{i32 786445, metadata !466, metadata !"flushes", metadata !6, i32 11, i64 32, i64 32, i64 1408, i32 0, metadata !18} ; [ DW_TAG_member ] [flushes] [line 11, size 32, align 32, offset 1408] [from ]
!1585 = metadata !{i32 786445, metadata !466, metadata !"params_len", metadata !6, i32 12, i64 32, i64 32, i64 1440, i32 0, metadata !18} ; [ DW_TAG_member ] [params_len] [line 12, size 32, align 32, offset 1440] [from ]
!1586 = metadata !{i32 786445, metadata !466, metadata !"params", metadata !6, i32 13, i64 32, i64 32, i64 1472, i32 0, metadata !18} ; [ DW_TAG_member ] [params] [line 13, size 32, align 32, offset 1472] [from ]
!1587 = metadata !{i32 786445, metadata !466, metadata !"params_source", metadata !6, i32 14, i64 32, i64 32, i64 1504, i32 0, metadata !18} ; [ DW_TAG_member ] [params_source] [line 14, size 32, align 32, offset 1504] [from ]
!1588 = metadata !{i32 786445, metadata !466, metadata !"headers_hash", metadata !6, i32 15, i64 64, i64 32, i64 1536, i32 0, metadata !1168} ; [ DW_TAG_member ] [headers_hash] [line 15, size 64, align 32, offset 1536] [from ngx_hash_t]
!1589 = metadata !{i32 786445, metadata !466, metadata !"header_params", metadata !6, i32 16, i64 32, i64 32, i64 1600, i32 0, metadata !26} ; [ DW_TAG_member ] [header_params] [line 16, size 32, align 32, offset 1600] [from ngx_uint_t]
!1590 = metadata !{i32 786445, metadata !466, metadata !"scgi_lengths", metadata !6, i32 17, i64 32, i64 32, i64 1632, i32 0, metadata !18} ; [ DW_TAG_member ] [scgi_lengths] [line 17, size 32, align 32, offset 1632] [from ]
!1591 = metadata !{i32 786445, metadata !466, metadata !"scgi_values", metadata !6, i32 18, i64 32, i64 32, i64 1664, i32 0, metadata !18} ; [ DW_TAG_member ] [scgi_values] [line 18, size 32, align 32, offset 1664] [from ]
!1592 = metadata !{i32 786445, metadata !466, metadata !"cache_key", metadata !6, i32 20, i64 160, i64 32, i64 1696, i32 0, metadata !1361} ; [ DW_TAG_member ] [cache_key] [line 20, size 160, align 32, offset 1696] [from ngx_http_complex_value_t]
!1593 = metadata !{i32 786688, metadata !463, metadata !"value", metadata !6, i32 1092, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 1092]
!1594 = metadata !{i32 786688, metadata !463, metadata !"ccv", metadata !6, i32 1093, metadata !1595, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ccv] [line 1093]
!1595 = metadata !{i32 786454, null, metadata !"ngx_http_compile_complex_value_t", metadata !6, i32 82, i64 0, i64 0, i64 0, i32 0, metadata !1596} ; [ DW_TAG_typedef ] [ngx_http_compile_complex_value_t] [line 82, size 0, align 0, offset 0] [from ]
!1596 = metadata !{i32 786451, null, metadata !"", metadata !1363, i32 74, i64 128, i64 32, i32 0, i32 0, null, metadata !1597, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 74, size 128, align 32, offset 0] [from ]
!1597 = metadata !{metadata !1598, metadata !1599, metadata !1600, metadata !1601, metadata !1602, metadata !1603}
!1598 = metadata !{i32 786445, metadata !1596, metadata !"cf", metadata !1363, i32 75, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [cf] [line 75, size 32, align 32, offset 0] [from ]
!1599 = metadata !{i32 786445, metadata !1596, metadata !"value", metadata !1363, i32 76, i64 32, i64 32, i64 32, i32 0, metadata !725} ; [ DW_TAG_member ] [value] [line 76, size 32, align 32, offset 32] [from ]
!1600 = metadata !{i32 786445, metadata !1596, metadata !"complex_value", metadata !1363, i32 77, i64 32, i64 32, i64 64, i32 0, metadata !1360} ; [ DW_TAG_member ] [complex_value] [line 77, size 32, align 32, offset 64] [from ]
!1601 = metadata !{i32 786445, metadata !1596, metadata !"zero", metadata !1363, i32 79, i64 1, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [zero] [line 79, size 1, align 32, offset 96] [from unsigned int]
!1602 = metadata !{i32 786445, metadata !1596, metadata !"conf_prefix", metadata !1363, i32 80, i64 1, i64 32, i64 97, i32 0, metadata !28} ; [ DW_TAG_member ] [conf_prefix] [line 80, size 1, align 32, offset 97] [from unsigned int]
!1603 = metadata !{i32 786445, metadata !1596, metadata !"root_prefix", metadata !1363, i32 81, i64 1, i64 32, i64 98, i32 0, metadata !28} ; [ DW_TAG_member ] [root_prefix] [line 81, size 1, align 32, offset 98] [from unsigned int]
!1604 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_cache", metadata !"ngx_http_scgi_cache", metadata !"", metadata !6, i32 1067, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_cache, null, null, metadata !1605, i32 1068} ; [ DW_TAG_subprogram ] [line 1067] [local] [def] [scope 1068] [ngx_http_scgi_cache]
!1605 = metadata !{metadata !1606}
!1606 = metadata !{metadata !1607, metadata !1608, metadata !1609, metadata !1610, metadata !1612, metadata !1613, metadata !1615, metadata !1616, metadata !1618}
!1607 = metadata !{i32 786689, metadata !1604, metadata !"cf", metadata !6, i32 16778283, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1067]
!1608 = metadata !{i32 786689, metadata !1604, metadata !"cmd", metadata !6, i32 33555499, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1067]
!1609 = metadata !{i32 786689, metadata !1604, metadata !"conf", metadata !6, i32 50332715, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 1067]
!1610 = metadata !{i32 786688, metadata !1611, metadata !"scf", metadata !6, i32 1069, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scf] [line 1069]
!1611 = metadata !{i32 786443, metadata !1604, i32 1068, i32 0, metadata !6, i32 3} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1612 = metadata !{i32 786688, metadata !1611, metadata !"value", metadata !6, i32 1070, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 1070]
!1613 = metadata !{i32 786688, metadata !1614, metadata !"__s1_len", metadata !6, i32 1075, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 1075]
!1614 = metadata !{i32 786443, metadata !1611, i32 1075, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1615 = metadata !{i32 786688, metadata !1614, metadata !"__s2_len", metadata !6, i32 1075, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 1075]
!1616 = metadata !{i32 786688, metadata !1617, metadata !"__s1", metadata !6, i32 1075, metadata !1228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 1075]
!1617 = metadata !{i32 786443, metadata !1614, i32 1075, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1618 = metadata !{i32 786688, metadata !1617, metadata !"__result", metadata !6, i32 1075, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 1075]
!1619 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_store", metadata !"ngx_http_scgi_store", metadata !"", metadata !6, i32 1027, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_store, null, null, metadata !1620, i32 1028} ; [ DW_TAG_subprogram ] [line 1027] [local] [def] [scope 1028] [ngx_http_scgi_store]
!1620 = metadata !{metadata !1621}
!1621 = metadata !{metadata !1622, metadata !1623, metadata !1624, metadata !1625, metadata !1627, metadata !1628, metadata !1651, metadata !1653, metadata !1654, metadata !1656, metadata !1657, metadata !1659, metadata !1660, metadata !1662}
!1622 = metadata !{i32 786689, metadata !1619, metadata !"cf", metadata !6, i32 16778243, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1027]
!1623 = metadata !{i32 786689, metadata !1619, metadata !"cmd", metadata !6, i32 33555459, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1027]
!1624 = metadata !{i32 786689, metadata !1619, metadata !"conf", metadata !6, i32 50332675, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 1027]
!1625 = metadata !{i32 786688, metadata !1626, metadata !"scf", metadata !6, i32 1029, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scf] [line 1029]
!1626 = metadata !{i32 786443, metadata !1619, i32 1028, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1627 = metadata !{i32 786688, metadata !1626, metadata !"value", metadata !6, i32 1030, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 1030]
!1628 = metadata !{i32 786688, metadata !1626, metadata !"sc", metadata !6, i32 1031, metadata !1629, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 1031]
!1629 = metadata !{i32 786454, null, metadata !"ngx_http_script_compile_t", metadata !6, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1630} ; [ DW_TAG_typedef ] [ngx_http_script_compile_t] [line 63, size 0, align 0, offset 0] [from ]
!1630 = metadata !{i32 786451, null, metadata !"", metadata !1363, i32 39, i64 352, i64 32, i32 0, i32 0, null, metadata !1631, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 39, size 352, align 32, offset 0] [from ]
!1631 = metadata !{metadata !1632, metadata !1633, metadata !1634, metadata !1636, metadata !1637, metadata !1638, metadata !1639, metadata !1640, metadata !1641, metadata !1642, metadata !1643, metadata !1644, metadata !1645, metadata !1646, metadata !1647, metadata !1648, metadata !1649, metadata !1650}
!1632 = metadata !{i32 786445, metadata !1630, metadata !"cf", metadata !1363, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !11} ; [ DW_TAG_member ] [cf] [line 40, size 32, align 32, offset 0] [from ]
!1633 = metadata !{i32 786445, metadata !1630, metadata !"source", metadata !1363, i32 41, i64 32, i64 32, i64 32, i32 0, metadata !725} ; [ DW_TAG_member ] [source] [line 41, size 32, align 32, offset 32] [from ]
!1634 = metadata !{i32 786445, metadata !1630, metadata !"flushes", metadata !1363, i32 43, i64 32, i64 32, i64 64, i32 0, metadata !1635} ; [ DW_TAG_member ] [flushes] [line 43, size 32, align 32, offset 64] [from ]
!1635 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1636 = metadata !{i32 786445, metadata !1630, metadata !"lengths", metadata !1363, i32 44, i64 32, i64 32, i64 96, i32 0, metadata !1635} ; [ DW_TAG_member ] [lengths] [line 44, size 32, align 32, offset 96] [from ]
!1637 = metadata !{i32 786445, metadata !1630, metadata !"values", metadata !1363, i32 45, i64 32, i64 32, i64 128, i32 0, metadata !1635} ; [ DW_TAG_member ] [values] [line 45, size 32, align 32, offset 128] [from ]
!1638 = metadata !{i32 786445, metadata !1630, metadata !"variables", metadata !1363, i32 47, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [variables] [line 47, size 32, align 32, offset 160] [from ngx_uint_t]
!1639 = metadata !{i32 786445, metadata !1630, metadata !"ncaptures", metadata !1363, i32 48, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [ncaptures] [line 48, size 32, align 32, offset 192] [from ngx_uint_t]
!1640 = metadata !{i32 786445, metadata !1630, metadata !"captures_mask", metadata !1363, i32 49, i64 32, i64 32, i64 224, i32 0, metadata !26} ; [ DW_TAG_member ] [captures_mask] [line 49, size 32, align 32, offset 224] [from ngx_uint_t]
!1641 = metadata !{i32 786445, metadata !1630, metadata !"size", metadata !1363, i32 50, i64 32, i64 32, i64 256, i32 0, metadata !26} ; [ DW_TAG_member ] [size] [line 50, size 32, align 32, offset 256] [from ngx_uint_t]
!1642 = metadata !{i32 786445, metadata !1630, metadata !"main", metadata !1363, i32 52, i64 32, i64 32, i64 288, i32 0, metadata !24} ; [ DW_TAG_member ] [main] [line 52, size 32, align 32, offset 288] [from ]
!1643 = metadata !{i32 786445, metadata !1630, metadata !"compile_args", metadata !1363, i32 54, i64 1, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [compile_args] [line 54, size 1, align 32, offset 320] [from unsigned int]
!1644 = metadata !{i32 786445, metadata !1630, metadata !"complete_lengths", metadata !1363, i32 55, i64 1, i64 32, i64 321, i32 0, metadata !28} ; [ DW_TAG_member ] [complete_lengths] [line 55, size 1, align 32, offset 321] [from unsigned int]
!1645 = metadata !{i32 786445, metadata !1630, metadata !"complete_values", metadata !1363, i32 56, i64 1, i64 32, i64 322, i32 0, metadata !28} ; [ DW_TAG_member ] [complete_values] [line 56, size 1, align 32, offset 322] [from unsigned int]
!1646 = metadata !{i32 786445, metadata !1630, metadata !"zero", metadata !1363, i32 57, i64 1, i64 32, i64 323, i32 0, metadata !28} ; [ DW_TAG_member ] [zero] [line 57, size 1, align 32, offset 323] [from unsigned int]
!1647 = metadata !{i32 786445, metadata !1630, metadata !"conf_prefix", metadata !1363, i32 58, i64 1, i64 32, i64 324, i32 0, metadata !28} ; [ DW_TAG_member ] [conf_prefix] [line 58, size 1, align 32, offset 324] [from unsigned int]
!1648 = metadata !{i32 786445, metadata !1630, metadata !"root_prefix", metadata !1363, i32 59, i64 1, i64 32, i64 325, i32 0, metadata !28} ; [ DW_TAG_member ] [root_prefix] [line 59, size 1, align 32, offset 325] [from unsigned int]
!1649 = metadata !{i32 786445, metadata !1630, metadata !"dup_capture", metadata !1363, i32 61, i64 1, i64 32, i64 326, i32 0, metadata !28} ; [ DW_TAG_member ] [dup_capture] [line 61, size 1, align 32, offset 326] [from unsigned int]
!1650 = metadata !{i32 786445, metadata !1630, metadata !"args", metadata !1363, i32 62, i64 1, i64 32, i64 327, i32 0, metadata !28} ; [ DW_TAG_member ] [args] [line 62, size 1, align 32, offset 327] [from unsigned int]
!1651 = metadata !{i32 786688, metadata !1652, metadata !"__s1_len", metadata !6, i32 1036, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 1036]
!1652 = metadata !{i32 786443, metadata !1626, i32 1036, i32 0, metadata !6, i32 14} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1653 = metadata !{i32 786688, metadata !1652, metadata !"__s2_len", metadata !6, i32 1036, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 1036]
!1654 = metadata !{i32 786688, metadata !1655, metadata !"__s1", metadata !6, i32 1036, metadata !1228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 1036]
!1655 = metadata !{i32 786443, metadata !1652, i32 1036, i32 0, metadata !6, i32 15} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1656 = metadata !{i32 786688, metadata !1655, metadata !"__result", metadata !6, i32 1036, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 1036]
!1657 = metadata !{i32 786688, metadata !1658, metadata !"__s1_len", metadata !6, i32 1045, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 1045]
!1658 = metadata !{i32 786443, metadata !1626, i32 1045, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1659 = metadata !{i32 786688, metadata !1658, metadata !"__s2_len", metadata !6, i32 1045, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 1045]
!1660 = metadata !{i32 786688, metadata !1661, metadata !"__s1", metadata !6, i32 1045, metadata !1228, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1] [line 1045]
!1661 = metadata !{i32 786443, metadata !1658, i32 1045, i32 0, metadata !6, i32 21} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1662 = metadata !{i32 786688, metadata !1661, metadata !"__result", metadata !6, i32 1045, metadata !86, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__result] [line 1045]
!1663 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_pass", metadata !"ngx_http_scgi_pass", metadata !"", metadata !6, i32 983, metadata !7, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_scgi_pass, null, null, metadata !1664, i32 984} ; [ DW_TAG_subprogram ] [line 983] [local] [def] [scope 984] [ngx_http_scgi_pass]
!1664 = metadata !{metadata !1665}
!1665 = metadata !{metadata !1666, metadata !1667, metadata !1668, metadata !1669, metadata !1671, metadata !1696, metadata !1697, metadata !1698, metadata !1699, metadata !1700}
!1666 = metadata !{i32 786689, metadata !1663, metadata !"cf", metadata !6, i32 16778199, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 983]
!1667 = metadata !{i32 786689, metadata !1663, metadata !"cmd", metadata !6, i32 33555415, metadata !447, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 983]
!1668 = metadata !{i32 786689, metadata !1663, metadata !"conf", metadata !6, i32 50332631, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 983]
!1669 = metadata !{i32 786688, metadata !1670, metadata !"scf", metadata !6, i32 985, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scf] [line 985]
!1670 = metadata !{i32 786443, metadata !1663, i32 984, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1671 = metadata !{i32 786688, metadata !1670, metadata !"u", metadata !6, i32 986, metadata !1672, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 986]
!1672 = metadata !{i32 786454, null, metadata !"ngx_url_t", metadata !6, i32 102, i64 0, i64 0, i64 0, i32 0, metadata !1673} ; [ DW_TAG_typedef ] [ngx_url_t] [line 102, size 0, align 0, offset 0] [from ]
!1673 = metadata !{i32 786451, null, metadata !"", metadata !744, i32 77, i64 1376, i64 32, i32 0, i32 0, null, metadata !1674, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 77, size 1376, align 32, offset 0] [from ]
!1674 = metadata !{metadata !1675, metadata !1676, metadata !1677, metadata !1678, metadata !1679, metadata !1680, metadata !1681, metadata !1682, metadata !1683, metadata !1684, metadata !1685, metadata !1686, metadata !1687, metadata !1688, metadata !1689, metadata !1693, metadata !1694, metadata !1695}
!1675 = metadata !{i32 786445, metadata !1673, metadata !"url", metadata !744, i32 78, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [url] [line 78, size 64, align 32, offset 0] [from ngx_str_t]
!1676 = metadata !{i32 786445, metadata !1673, metadata !"host", metadata !744, i32 79, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [host] [line 79, size 64, align 32, offset 64] [from ngx_str_t]
!1677 = metadata !{i32 786445, metadata !1673, metadata !"port_text", metadata !744, i32 80, i64 64, i64 32, i64 128, i32 0, metadata !88} ; [ DW_TAG_member ] [port_text] [line 80, size 64, align 32, offset 128] [from ngx_str_t]
!1678 = metadata !{i32 786445, metadata !1673, metadata !"uri", metadata !744, i32 81, i64 64, i64 32, i64 192, i32 0, metadata !88} ; [ DW_TAG_member ] [uri] [line 81, size 64, align 32, offset 192] [from ngx_str_t]
!1679 = metadata !{i32 786445, metadata !1673, metadata !"port", metadata !744, i32 83, i64 16, i64 16, i64 256, i32 0, metadata !907} ; [ DW_TAG_member ] [port] [line 83, size 16, align 16, offset 256] [from in_port_t]
!1680 = metadata !{i32 786445, metadata !1673, metadata !"default_port", metadata !744, i32 84, i64 16, i64 16, i64 272, i32 0, metadata !907} ; [ DW_TAG_member ] [default_port] [line 84, size 16, align 16, offset 272] [from in_port_t]
!1681 = metadata !{i32 786445, metadata !1673, metadata !"family", metadata !744, i32 85, i64 32, i64 32, i64 288, i32 0, metadata !86} ; [ DW_TAG_member ] [family] [line 85, size 32, align 32, offset 288] [from int]
!1682 = metadata !{i32 786445, metadata !1673, metadata !"listen", metadata !744, i32 87, i64 1, i64 32, i64 320, i32 0, metadata !28} ; [ DW_TAG_member ] [listen] [line 87, size 1, align 32, offset 320] [from unsigned int]
!1683 = metadata !{i32 786445, metadata !1673, metadata !"uri_part", metadata !744, i32 88, i64 1, i64 32, i64 321, i32 0, metadata !28} ; [ DW_TAG_member ] [uri_part] [line 88, size 1, align 32, offset 321] [from unsigned int]
!1684 = metadata !{i32 786445, metadata !1673, metadata !"no_resolve", metadata !744, i32 89, i64 1, i64 32, i64 322, i32 0, metadata !28} ; [ DW_TAG_member ] [no_resolve] [line 89, size 1, align 32, offset 322] [from unsigned int]
!1685 = metadata !{i32 786445, metadata !1673, metadata !"one_addr", metadata !744, i32 90, i64 1, i64 32, i64 323, i32 0, metadata !28} ; [ DW_TAG_member ] [one_addr] [line 90, size 1, align 32, offset 323] [from unsigned int]
!1686 = metadata !{i32 786445, metadata !1673, metadata !"no_port", metadata !744, i32 92, i64 1, i64 32, i64 324, i32 0, metadata !28} ; [ DW_TAG_member ] [no_port] [line 92, size 1, align 32, offset 324] [from unsigned int]
!1687 = metadata !{i32 786445, metadata !1673, metadata !"wildcard", metadata !744, i32 93, i64 1, i64 32, i64 325, i32 0, metadata !28} ; [ DW_TAG_member ] [wildcard] [line 93, size 1, align 32, offset 325] [from unsigned int]
!1688 = metadata !{i32 786445, metadata !1673, metadata !"socklen", metadata !744, i32 95, i64 32, i64 32, i64 352, i32 0, metadata !320} ; [ DW_TAG_member ] [socklen] [line 95, size 32, align 32, offset 352] [from socklen_t]
!1689 = metadata !{i32 786445, metadata !1673, metadata !"sockaddr", metadata !744, i32 96, i64 880, i64 8, i64 384, i32 0, metadata !1690} ; [ DW_TAG_member ] [sockaddr] [line 96, size 880, align 8, offset 384] [from ]
!1690 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 880, i64 8, i32 0, i32 0, metadata !45, metadata !1691, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 880, align 8, offset 0] [from u_char]
!1691 = metadata !{metadata !1692}
!1692 = metadata !{i32 786465, i64 0, i64 109}    ; [ DW_TAG_subrange_type ] [0, 109]
!1693 = metadata !{i32 786445, metadata !1673, metadata !"addrs", metadata !744, i32 98, i64 32, i64 32, i64 1280, i32 0, metadata !741} ; [ DW_TAG_member ] [addrs] [line 98, size 32, align 32, offset 1280] [from ]
!1694 = metadata !{i32 786445, metadata !1673, metadata !"naddrs", metadata !744, i32 99, i64 32, i64 32, i64 1312, i32 0, metadata !26} ; [ DW_TAG_member ] [naddrs] [line 99, size 32, align 32, offset 1312] [from ngx_uint_t]
!1695 = metadata !{i32 786445, metadata !1673, metadata !"err", metadata !744, i32 101, i64 32, i64 32, i64 1344, i32 0, metadata !9} ; [ DW_TAG_member ] [err] [line 101, size 32, align 32, offset 1344] [from ]
!1696 = metadata !{i32 786688, metadata !1670, metadata !"value", metadata !6, i32 987, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 987]
!1697 = metadata !{i32 786688, metadata !1670, metadata !"url", metadata !6, i32 988, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [url] [line 988]
!1698 = metadata !{i32 786688, metadata !1670, metadata !"n", metadata !6, i32 989, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 989]
!1699 = metadata !{i32 786688, metadata !1670, metadata !"clcf", metadata !6, i32 990, metadata !1274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 990]
!1700 = metadata !{i32 786688, metadata !1670, metadata !"sc", metadata !6, i32 991, metadata !1629, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 991]
!1701 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_handler", metadata !"ngx_http_scgi_handler", metadata !"", metadata !6, i32 71, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_handler, null, null, metadata !1702, i32 72} ; [ DW_TAG_subprogram ] [line 71] [local] [def] [scope 72] [ngx_http_scgi_handler]
!1702 = metadata !{metadata !1703}
!1703 = metadata !{metadata !1704, metadata !1705, metadata !1707, metadata !1718, metadata !1719}
!1704 = metadata !{i32 786689, metadata !1701, metadata !"r", metadata !6, i32 16777287, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 71]
!1705 = metadata !{i32 786688, metadata !1706, metadata !"rc", metadata !6, i32 73, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 73]
!1706 = metadata !{i32 786443, metadata !1701, i32 72, i32 0, metadata !6, i32 32} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1707 = metadata !{i32 786688, metadata !1706, metadata !"status", metadata !6, i32 74, metadata !1708, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 74]
!1708 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1709} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_status_t]
!1709 = metadata !{i32 786454, null, metadata !"ngx_http_status_t", metadata !6, i32 61, i64 0, i64 0, i64 0, i32 0, metadata !1710} ; [ DW_TAG_typedef ] [ngx_http_status_t] [line 61, size 0, align 0, offset 0] [from ]
!1710 = metadata !{i32 786451, null, metadata !"", metadata !1711, i32 55, i64 160, i64 32, i32 0, i32 0, null, metadata !1712, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 55, size 160, align 32, offset 0] [from ]
!1711 = metadata !{i32 786473, metadata !"src/http/ngx_http.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1712 = metadata !{metadata !1713, metadata !1714, metadata !1715, metadata !1716, metadata !1717}
!1713 = metadata !{i32 786445, metadata !1710, metadata !"http_version", metadata !1711, i32 56, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [http_version] [line 56, size 32, align 32, offset 0] [from ngx_uint_t]
!1714 = metadata !{i32 786445, metadata !1710, metadata !"code", metadata !1711, i32 57, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [code] [line 57, size 32, align 32, offset 32] [from ngx_uint_t]
!1715 = metadata !{i32 786445, metadata !1710, metadata !"count", metadata !1711, i32 58, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [count] [line 58, size 32, align 32, offset 64] [from ngx_uint_t]
!1716 = metadata !{i32 786445, metadata !1710, metadata !"start", metadata !1711, i32 59, i64 32, i64 32, i64 96, i32 0, metadata !44} ; [ DW_TAG_member ] [start] [line 59, size 32, align 32, offset 96] [from ]
!1717 = metadata !{i32 786445, metadata !1710, metadata !"end", metadata !1711, i32 60, i64 32, i64 32, i64 128, i32 0, metadata !44} ; [ DW_TAG_member ] [end] [line 60, size 32, align 32, offset 128] [from ]
!1718 = metadata !{i32 786688, metadata !1706, metadata !"u", metadata !6, i32 75, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 75]
!1719 = metadata !{i32 786688, metadata !1706, metadata !"scf", metadata !6, i32 76, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scf] [line 76]
!1720 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_finalize_request", metadata !"ngx_http_scgi_finalize_request", metadata !"", metadata !6, i32 549, metadata !999, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_request_s*, i32)* @ngx_http_scgi_finalize_request, null, null, metadata !1721, i32 550} ; [ DW_TAG_subprogram ] [line 549] [local] [def] [scope 550] [ngx_http_scgi_finalize_request]
!1721 = metadata !{metadata !1722}
!1722 = metadata !{metadata !1723, metadata !1724}
!1723 = metadata !{i32 786689, metadata !1720, metadata !"r", metadata !6, i32 16777765, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 549]
!1724 = metadata !{i32 786689, metadata !1720, metadata !"rc", metadata !6, i32 33554981, metadata !487, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rc] [line 549]
!1725 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_abort_request", metadata !"ngx_http_scgi_abort_request", metadata !"", metadata !6, i32 543, metadata !510, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_http_request_s*)* @ngx_http_scgi_abort_request, null, null, metadata !1726, i32 544} ; [ DW_TAG_subprogram ] [line 543] [local] [def] [scope 544] [ngx_http_scgi_abort_request]
!1726 = metadata !{metadata !1727}
!1727 = metadata !{metadata !1728}
!1728 = metadata !{i32 786689, metadata !1725, metadata !"r", metadata !6, i32 16777759, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 543]
!1729 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_process_status_line", metadata !"ngx_http_scgi_process_status_line", metadata !"", metadata !6, i32 421, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_process_status_line, null, null, metadata !1730, i32 422} ; [ DW_TAG_subprogram ] [line 421] [local] [def] [scope 422] [ngx_http_scgi_process_status_line]
!1730 = metadata !{metadata !1731}
!1731 = metadata !{metadata !1732, metadata !1733, metadata !1735, metadata !1736, metadata !1737}
!1732 = metadata !{i32 786689, metadata !1729, metadata !"r", metadata !6, i32 16777637, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 421]
!1733 = metadata !{i32 786688, metadata !1734, metadata !"len", metadata !6, i32 423, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 423]
!1734 = metadata !{i32 786443, metadata !1729, i32 422, i32 0, metadata !6, i32 42} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1735 = metadata !{i32 786688, metadata !1734, metadata !"rc", metadata !6, i32 424, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 424]
!1736 = metadata !{i32 786688, metadata !1734, metadata !"status", metadata !6, i32 425, metadata !1708, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 425]
!1737 = metadata !{i32 786688, metadata !1734, metadata !"u", metadata !6, i32 426, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 426]
!1738 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_process_header", metadata !"ngx_http_scgi_process_header", metadata !"", metadata !6, i32 456, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_process_header, null, null, metadata !1739, i32 457} ; [ DW_TAG_subprogram ] [line 456] [local] [def] [scope 457] [ngx_http_scgi_process_header]
!1739 = metadata !{metadata !1740}
!1740 = metadata !{metadata !1741, metadata !1742, metadata !1744, metadata !1745, metadata !1746, metadata !1747, metadata !1748, metadata !1763}
!1741 = metadata !{i32 786689, metadata !1738, metadata !"r", metadata !6, i32 16777672, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 456]
!1742 = metadata !{i32 786688, metadata !1743, metadata !"status_line", metadata !6, i32 458, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status_line] [line 458]
!1743 = metadata !{i32 786443, metadata !1738, i32 457, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1744 = metadata !{i32 786688, metadata !1743, metadata !"rc", metadata !6, i32 459, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 459]
!1745 = metadata !{i32 786688, metadata !1743, metadata !"status", metadata !6, i32 460, metadata !487, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 460]
!1746 = metadata !{i32 786688, metadata !1743, metadata !"h", metadata !6, i32 461, metadata !871, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 461]
!1747 = metadata !{i32 786688, metadata !1743, metadata !"u", metadata !6, i32 462, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 462]
!1748 = metadata !{i32 786688, metadata !1743, metadata !"hh", metadata !6, i32 463, metadata !1749, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hh] [line 463]
!1749 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1750} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_header_t]
!1750 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_header_t", metadata !6, i32 200, i64 0, i64 0, i64 0, i32 0, metadata !1751} ; [ DW_TAG_typedef ] [ngx_http_upstream_header_t] [line 200, size 0, align 0, offset 0] [from ]
!1751 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 193, i64 224, i64 32, i32 0, i32 0, null, metadata !1752, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 193, size 224, align 32, offset 0] [from ]
!1752 = metadata !{metadata !1753, metadata !1754, metadata !1759, metadata !1760, metadata !1761, metadata !1762}
!1753 = metadata !{i32 786445, metadata !1751, metadata !"name", metadata !471, i32 194, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 194, size 64, align 32, offset 0] [from ngx_str_t]
!1754 = metadata !{i32 786445, metadata !1751, metadata !"handler", metadata !471, i32 195, i64 32, i64 32, i64 64, i32 0, metadata !1755} ; [ DW_TAG_member ] [handler] [line 195, size 32, align 32, offset 64] [from ngx_http_header_handler_pt]
!1755 = metadata !{i32 786454, null, metadata !"ngx_http_header_handler_pt", metadata !471, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !1756} ; [ DW_TAG_typedef ] [ngx_http_header_handler_pt] [line 22, size 0, align 0, offset 0] [from ]
!1756 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1757} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1757 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1758, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1758 = metadata !{metadata !487, metadata !495, metadata !871, metadata !26}
!1759 = metadata !{i32 786445, metadata !1751, metadata !"offset", metadata !471, i32 196, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [offset] [line 196, size 32, align 32, offset 96] [from ngx_uint_t]
!1760 = metadata !{i32 786445, metadata !1751, metadata !"copy_handler", metadata !471, i32 197, i64 32, i64 32, i64 128, i32 0, metadata !1755} ; [ DW_TAG_member ] [copy_handler] [line 197, size 32, align 32, offset 128] [from ngx_http_header_handler_pt]
!1761 = metadata !{i32 786445, metadata !1751, metadata !"conf", metadata !471, i32 198, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [conf] [line 198, size 32, align 32, offset 160] [from ngx_uint_t]
!1762 = metadata !{i32 786445, metadata !1751, metadata !"redirect", metadata !471, i32 199, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [redirect] [line 199, size 32, align 32, offset 192] [from ngx_uint_t]
!1763 = metadata !{i32 786688, metadata !1743, metadata !"umcf", metadata !6, i32 464, metadata !1764, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [umcf] [line 464]
!1764 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1765} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_main_conf_t]
!1765 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_main_conf_t", metadata !6, i32 70, i64 0, i64 0, i64 0, i32 0, metadata !1766} ; [ DW_TAG_typedef ] [ngx_http_upstream_main_conf_t] [line 70, size 0, align 0, offset 0] [from ]
!1766 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 66, i64 224, i64 32, i32 0, i32 0, null, metadata !1767, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 224, align 32, offset 0] [from ]
!1767 = metadata !{metadata !1768, metadata !1769}
!1768 = metadata !{i32 786445, metadata !1766, metadata !"headers_in_hash", metadata !471, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !1168} ; [ DW_TAG_member ] [headers_in_hash] [line 67, size 64, align 32, offset 0] [from ngx_hash_t]
!1769 = metadata !{i32 786445, metadata !1766, metadata !"upstreams", metadata !471, i32 68, i64 160, i64 32, i64 64, i32 0, metadata !19} ; [ DW_TAG_member ] [upstreams] [line 68, size 160, align 32, offset 64] [from ngx_array_t]
!1770 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_reinit_request", metadata !"ngx_http_scgi_reinit_request", metadata !"", metadata !6, i32 405, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_reinit_request, null, null, metadata !1771, i32 406} ; [ DW_TAG_subprogram ] [line 405] [local] [def] [scope 406] [ngx_http_scgi_reinit_request]
!1771 = metadata !{metadata !1772}
!1772 = metadata !{metadata !1773, metadata !1774}
!1773 = metadata !{i32 786689, metadata !1770, metadata !"r", metadata !6, i32 16777621, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 405]
!1774 = metadata !{i32 786688, metadata !1775, metadata !"status", metadata !6, i32 407, metadata !1708, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 407]
!1775 = metadata !{i32 786443, metadata !1770, i32 406, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1776 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_create_request", metadata !"ngx_http_scgi_create_request", metadata !"", metadata !6, i32 177, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_create_request, null, null, metadata !1777, i32 178} ; [ DW_TAG_subprogram ] [line 177] [local] [def] [scope 178] [ngx_http_scgi_create_request]
!1777 = metadata !{metadata !1778}
!1778 = metadata !{metadata !1779, metadata !1780, metadata !1782, metadata !1783, metadata !1784, metadata !1785, metadata !1786, metadata !1787, metadata !1788, metadata !1789, metadata !1790, metadata !1791, metadata !1792, metadata !1793, metadata !1794, metadata !1795, metadata !1796, metadata !1797, metadata !1798, metadata !1799, metadata !1800, metadata !1802, metadata !1824, metadata !1825, metadata !1826, metadata !1827}
!1779 = metadata !{i32 786689, metadata !1776, metadata !"r", metadata !6, i32 16777393, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 177]
!1780 = metadata !{i32 786688, metadata !1781, metadata !"ch", metadata !6, i32 179, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ch] [line 179]
!1781 = metadata !{i32 786443, metadata !1776, i32 178, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1782 = metadata !{i32 786688, metadata !1781, metadata !"key", metadata !6, i32 180, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 180]
!1783 = metadata !{i32 786688, metadata !1781, metadata !"val", metadata !6, i32 181, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 181]
!1784 = metadata !{i32 786688, metadata !1781, metadata !"lowcase_key", metadata !6, i32 182, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowcase_key] [line 182]
!1785 = metadata !{i32 786688, metadata !1781, metadata !"len", metadata !6, i32 183, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 183]
!1786 = metadata !{i32 786688, metadata !1781, metadata !"key_len", metadata !6, i32 184, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key_len] [line 184]
!1787 = metadata !{i32 786688, metadata !1781, metadata !"val_len", metadata !6, i32 185, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val_len] [line 185]
!1788 = metadata !{i32 786688, metadata !1781, metadata !"allocated", metadata !6, i32 186, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocated] [line 186]
!1789 = metadata !{i32 786688, metadata !1781, metadata !"b", metadata !6, i32 187, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 187]
!1790 = metadata !{i32 786688, metadata !1781, metadata !"content_length", metadata !6, i32 188, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [content_length] [line 188]
!1791 = metadata !{i32 786688, metadata !1781, metadata !"i", metadata !6, i32 189, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 189]
!1792 = metadata !{i32 786688, metadata !1781, metadata !"n", metadata !6, i32 190, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 190]
!1793 = metadata !{i32 786688, metadata !1781, metadata !"hash", metadata !6, i32 191, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 191]
!1794 = metadata !{i32 786688, metadata !1781, metadata !"skip_empty", metadata !6, i32 192, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [skip_empty] [line 192]
!1795 = metadata !{i32 786688, metadata !1781, metadata !"header_params", metadata !6, i32 193, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [header_params] [line 193]
!1796 = metadata !{i32 786688, metadata !1781, metadata !"cl", metadata !6, i32 194, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cl] [line 194]
!1797 = metadata !{i32 786688, metadata !1781, metadata !"body", metadata !6, i32 195, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [body] [line 195]
!1798 = metadata !{i32 786688, metadata !1781, metadata !"part", metadata !6, i32 196, metadata !403, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [part] [line 196]
!1799 = metadata !{i32 786688, metadata !1781, metadata !"header", metadata !6, i32 197, metadata !871, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [header] [line 197]
!1800 = metadata !{i32 786688, metadata !1781, metadata !"ignored", metadata !6, i32 198, metadata !1801, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ignored] [line 198]
!1801 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !871} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1802 = metadata !{i32 786688, metadata !1781, metadata !"code", metadata !6, i32 199, metadata !1803, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 199]
!1803 = metadata !{i32 786454, null, metadata !"ngx_http_script_code_pt", metadata !6, i32 85, i64 0, i64 0, i64 0, i32 0, metadata !1804} ; [ DW_TAG_typedef ] [ngx_http_script_code_pt] [line 85, size 0, align 0, offset 0] [from ]
!1804 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1805} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1805 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1806, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1806 = metadata !{null, metadata !1807}
!1807 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1808} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_engine_t]
!1808 = metadata !{i32 786454, null, metadata !"ngx_http_script_engine_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1809} ; [ DW_TAG_typedef ] [ngx_http_script_engine_t] [line 36, size 0, align 0, offset 0] [from ]
!1809 = metadata !{i32 786451, null, metadata !"", metadata !1363, i32 17, i64 352, i64 32, i32 0, i32 0, null, metadata !1810, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 352, align 32, offset 0] [from ]
!1810 = metadata !{metadata !1811, metadata !1812, metadata !1813, metadata !1814, metadata !1815, metadata !1816, metadata !1817, metadata !1818, metadata !1819, metadata !1820, metadata !1821, metadata !1822, metadata !1823}
!1811 = metadata !{i32 786445, metadata !1809, metadata !"ip", metadata !1363, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [ip] [line 18, size 32, align 32, offset 0] [from ]
!1812 = metadata !{i32 786445, metadata !1809, metadata !"pos", metadata !1363, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !44} ; [ DW_TAG_member ] [pos] [line 19, size 32, align 32, offset 32] [from ]
!1813 = metadata !{i32 786445, metadata !1809, metadata !"sp", metadata !1363, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !1407} ; [ DW_TAG_member ] [sp] [line 20, size 32, align 32, offset 64] [from ]
!1814 = metadata !{i32 786445, metadata !1809, metadata !"buf", metadata !1363, i32 22, i64 64, i64 32, i64 96, i32 0, metadata !88} ; [ DW_TAG_member ] [buf] [line 22, size 64, align 32, offset 96] [from ngx_str_t]
!1815 = metadata !{i32 786445, metadata !1809, metadata !"line", metadata !1363, i32 23, i64 64, i64 32, i64 160, i32 0, metadata !88} ; [ DW_TAG_member ] [line] [line 23, size 64, align 32, offset 160] [from ngx_str_t]
!1816 = metadata !{i32 786445, metadata !1809, metadata !"args", metadata !1363, i32 26, i64 32, i64 32, i64 224, i32 0, metadata !44} ; [ DW_TAG_member ] [args] [line 26, size 32, align 32, offset 224] [from ]
!1817 = metadata !{i32 786445, metadata !1809, metadata !"flushed", metadata !1363, i32 28, i64 1, i64 32, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [flushed] [line 28, size 1, align 32, offset 256] [from unsigned int]
!1818 = metadata !{i32 786445, metadata !1809, metadata !"skip", metadata !1363, i32 29, i64 1, i64 32, i64 257, i32 0, metadata !28} ; [ DW_TAG_member ] [skip] [line 29, size 1, align 32, offset 257] [from unsigned int]
!1819 = metadata !{i32 786445, metadata !1809, metadata !"quote", metadata !1363, i32 30, i64 1, i64 32, i64 258, i32 0, metadata !28} ; [ DW_TAG_member ] [quote] [line 30, size 1, align 32, offset 258] [from unsigned int]
!1820 = metadata !{i32 786445, metadata !1809, metadata !"is_args", metadata !1363, i32 31, i64 1, i64 32, i64 259, i32 0, metadata !28} ; [ DW_TAG_member ] [is_args] [line 31, size 1, align 32, offset 259] [from unsigned int]
!1821 = metadata !{i32 786445, metadata !1809, metadata !"log", metadata !1363, i32 32, i64 1, i64 32, i64 260, i32 0, metadata !28} ; [ DW_TAG_member ] [log] [line 32, size 1, align 32, offset 260] [from unsigned int]
!1822 = metadata !{i32 786445, metadata !1809, metadata !"status", metadata !1363, i32 34, i64 32, i64 32, i64 288, i32 0, metadata !487} ; [ DW_TAG_member ] [status] [line 34, size 32, align 32, offset 288] [from ngx_int_t]
!1823 = metadata !{i32 786445, metadata !1809, metadata !"request", metadata !1363, i32 35, i64 32, i64 32, i64 320, i32 0, metadata !495} ; [ DW_TAG_member ] [request] [line 35, size 32, align 32, offset 320] [from ]
!1824 = metadata !{i32 786688, metadata !1781, metadata !"e", metadata !6, i32 200, metadata !1808, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [e] [line 200]
!1825 = metadata !{i32 786688, metadata !1781, metadata !"le", metadata !6, i32 201, metadata !1808, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [le] [line 201]
!1826 = metadata !{i32 786688, metadata !1781, metadata !"scf", metadata !6, i32 202, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scf] [line 202]
!1827 = metadata !{i32 786688, metadata !1781, metadata !"lcode", metadata !6, i32 203, metadata !1828, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcode] [line 203]
!1828 = metadata !{i32 786454, null, metadata !"ngx_http_script_len_code_pt", metadata !6, i32 86, i64 0, i64 0, i64 0, i32 0, metadata !1829} ; [ DW_TAG_typedef ] [ngx_http_script_len_code_pt] [line 86, size 0, align 0, offset 0] [from ]
!1829 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1830} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1830 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1831, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1831 = metadata !{metadata !30, metadata !1807}
!1832 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_create_key", metadata !"ngx_http_scgi_create_key", metadata !"", metadata !6, i32 161, metadata !991, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_http_request_s*)* @ngx_http_scgi_create_key, null, null, metadata !1833, i32 162} ; [ DW_TAG_subprogram ] [line 161] [local] [def] [scope 162] [ngx_http_scgi_create_key]
!1833 = metadata !{metadata !1834}
!1834 = metadata !{metadata !1835, metadata !1836, metadata !1838}
!1835 = metadata !{i32 786689, metadata !1832, metadata !"r", metadata !6, i32 16777377, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 161]
!1836 = metadata !{i32 786688, metadata !1837, metadata !"key", metadata !6, i32 163, metadata !725, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [key] [line 163]
!1837 = metadata !{i32 786443, metadata !1832, i32 162, i32 0, metadata !6, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1838 = metadata !{i32 786688, metadata !1837, metadata !"scf", metadata !6, i32 164, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [scf] [line 164]
!1839 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_eval", metadata !"ngx_http_scgi_eval", metadata !"", metadata !6, i32 125, metadata !1840, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1842, i32 126} ; [ DW_TAG_subprogram ] [line 125] [local] [def] [scope 126] [ngx_http_scgi_eval]
!1840 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1841, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1841 = metadata !{metadata !487, metadata !495, metadata !464}
!1842 = metadata !{metadata !1843}
!1843 = metadata !{metadata !1844, metadata !1845, metadata !1846, metadata !1848}
!1844 = metadata !{i32 786689, metadata !1839, metadata !"r", metadata !6, i32 16777341, metadata !495, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 125]
!1845 = metadata !{i32 786689, metadata !1839, metadata !"scf", metadata !6, i32 33554557, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [scf] [line 125]
!1846 = metadata !{i32 786688, metadata !1847, metadata !"url", metadata !6, i32 127, metadata !1672, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [url] [line 127]
!1847 = metadata !{i32 786443, metadata !1839, i32 126, i32 0, metadata !6, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1848 = metadata !{i32 786688, metadata !1847, metadata !"u", metadata !6, i32 128, metadata !704, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [u] [line 128]
!1849 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_merge_loc_conf", metadata !"ngx_http_scgi_merge_loc_conf", metadata !"", metadata !6, i32 596, metadata !1850, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, i8*, i8*)* @ngx_http_scgi_merge_loc_conf, null, null, metadata !1852, i32 597} ; [ DW_TAG_subprogram ] [line 596] [local] [def] [scope 597] [ngx_http_scgi_merge_loc_conf]
!1850 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1851, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1851 = metadata !{metadata !9, metadata !11, metadata !24, metadata !24}
!1852 = metadata !{metadata !1853}
!1853 = metadata !{metadata !1854, metadata !1855, metadata !1856, metadata !1857, metadata !1859, metadata !1860, metadata !1861, metadata !1877, metadata !1878}
!1854 = metadata !{i32 786689, metadata !1849, metadata !"cf", metadata !6, i32 16777812, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 596]
!1855 = metadata !{i32 786689, metadata !1849, metadata !"parent", metadata !6, i32 33555028, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [parent] [line 596]
!1856 = metadata !{i32 786689, metadata !1849, metadata !"child", metadata !6, i32 50332244, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [child] [line 596]
!1857 = metadata !{i32 786688, metadata !1858, metadata !"prev", metadata !6, i32 598, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 598]
!1858 = metadata !{i32 786443, metadata !1849, i32 597, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1859 = metadata !{i32 786688, metadata !1858, metadata !"conf", metadata !6, i32 599, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 599]
!1860 = metadata !{i32 786688, metadata !1858, metadata !"size", metadata !6, i32 600, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 600]
!1861 = metadata !{i32 786688, metadata !1858, metadata !"hash", metadata !6, i32 601, metadata !1862, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 601]
!1862 = metadata !{i32 786454, null, metadata !"ngx_hash_init_t", metadata !6, i32 62, i64 0, i64 0, i64 0, i32 0, metadata !1863} ; [ DW_TAG_typedef ] [ngx_hash_init_t] [line 62, size 0, align 0, offset 0] [from ]
!1863 = metadata !{i32 786451, null, metadata !"", metadata !874, i32 52, i64 224, i64 32, i32 0, i32 0, null, metadata !1864, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 52, size 224, align 32, offset 0] [from ]
!1864 = metadata !{metadata !1865, metadata !1867, metadata !1872, metadata !1873, metadata !1874, metadata !1875, metadata !1876}
!1865 = metadata !{i32 786445, metadata !1863, metadata !"hash", metadata !874, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !1866} ; [ DW_TAG_member ] [hash] [line 53, size 32, align 32, offset 0] [from ]
!1866 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1168} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_t]
!1867 = metadata !{i32 786445, metadata !1863, metadata !"key", metadata !874, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !1868} ; [ DW_TAG_member ] [key] [line 54, size 32, align 32, offset 32] [from ngx_hash_key_pt]
!1868 = metadata !{i32 786454, null, metadata !"ngx_hash_key_pt", metadata !874, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1869} ; [ DW_TAG_typedef ] [ngx_hash_key_pt] [line 42, size 0, align 0, offset 0] [from ]
!1869 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1870} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1870 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1871, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1871 = metadata !{metadata !26, metadata !44, metadata !30}
!1872 = metadata !{i32 786445, metadata !1863, metadata !"max_size", metadata !874, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [max_size] [line 56, size 32, align 32, offset 64] [from ngx_uint_t]
!1873 = metadata !{i32 786445, metadata !1863, metadata !"bucket_size", metadata !874, i32 57, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [bucket_size] [line 57, size 32, align 32, offset 96] [from ngx_uint_t]
!1874 = metadata !{i32 786445, metadata !1863, metadata !"name", metadata !874, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [name] [line 59, size 32, align 32, offset 128] [from ]
!1875 = metadata !{i32 786445, metadata !1863, metadata !"pool", metadata !874, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !34} ; [ DW_TAG_member ] [pool] [line 60, size 32, align 32, offset 160] [from ]
!1876 = metadata !{i32 786445, metadata !1863, metadata !"temp_pool", metadata !874, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_pool] [line 61, size 32, align 32, offset 192] [from ]
!1877 = metadata !{i32 786688, metadata !1858, metadata !"clcf", metadata !6, i32 602, metadata !1274, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 602]
!1878 = metadata !{i32 786688, metadata !1879, metadata !"shm_zone", metadata !6, i32 730, metadata !648, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [shm_zone] [line 730]
!1879 = metadata !{i32 786443, metadata !1858, i32 729, i32 0, metadata !6, i32 160} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1880 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_merge_params", metadata !"ngx_http_scgi_merge_params", metadata !"", metadata !6, i32 814, metadata !1881, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1883, i32 815} ; [ DW_TAG_subprogram ] [line 814] [local] [def] [scope 815] [ngx_http_scgi_merge_params]
!1881 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1882, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1882 = metadata !{metadata !487, metadata !11, metadata !464, metadata !464}
!1883 = metadata !{metadata !1884}
!1884 = metadata !{metadata !1885, metadata !1886, metadata !1887, metadata !1888, metadata !1890, metadata !1891, metadata !1893, metadata !1894, metadata !1895, metadata !1896, metadata !1897, metadata !1905, metadata !1906, metadata !1914, metadata !1915, metadata !1922, metadata !1930}
!1885 = metadata !{i32 786689, metadata !1880, metadata !"cf", metadata !6, i32 16778030, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 814]
!1886 = metadata !{i32 786689, metadata !1880, metadata !"conf", metadata !6, i32 33555246, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 814]
!1887 = metadata !{i32 786689, metadata !1880, metadata !"prev", metadata !6, i32 50332462, metadata !464, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prev] [line 814]
!1888 = metadata !{i32 786688, metadata !1889, metadata !"p", metadata !6, i32 816, metadata !44, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 816]
!1889 = metadata !{i32 786443, metadata !1880, i32 815, i32 0, metadata !6, i32 181} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1890 = metadata !{i32 786688, metadata !1889, metadata !"size", metadata !6, i32 817, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 817]
!1891 = metadata !{i32 786688, metadata !1889, metadata !"code", metadata !6, i32 818, metadata !1892, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [code] [line 818]
!1892 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from uintptr_t]
!1893 = metadata !{i32 786688, metadata !1889, metadata !"i", metadata !6, i32 819, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 819]
!1894 = metadata !{i32 786688, metadata !1889, metadata !"nsrc", metadata !6, i32 820, metadata !26, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nsrc] [line 820]
!1895 = metadata !{i32 786688, metadata !1889, metadata !"headers_names", metadata !6, i32 821, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [headers_names] [line 821]
!1896 = metadata !{i32 786688, metadata !1889, metadata !"params_merged", metadata !6, i32 823, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [params_merged] [line 823]
!1897 = metadata !{i32 786688, metadata !1889, metadata !"hk", metadata !6, i32 825, metadata !1898, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hk] [line 825]
!1898 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1899} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_key_t]
!1899 = metadata !{i32 786454, null, metadata !"ngx_hash_key_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !1900} ; [ DW_TAG_typedef ] [ngx_hash_key_t] [line 39, size 0, align 0, offset 0] [from ]
!1900 = metadata !{i32 786451, null, metadata !"", metadata !874, i32 35, i64 128, i64 32, i32 0, i32 0, null, metadata !1901, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 35, size 128, align 32, offset 0] [from ]
!1901 = metadata !{metadata !1902, metadata !1903, metadata !1904}
!1902 = metadata !{i32 786445, metadata !1900, metadata !"key", metadata !874, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!1903 = metadata !{i32 786445, metadata !1900, metadata !"key_hash", metadata !874, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [key_hash] [line 37, size 32, align 32, offset 64] [from ngx_uint_t]
!1904 = metadata !{i32 786445, metadata !1900, metadata !"value", metadata !874, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [value] [line 38, size 32, align 32, offset 96] [from ]
!1905 = metadata !{i32 786688, metadata !1889, metadata !"hash", metadata !6, i32 826, metadata !1862, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 826]
!1906 = metadata !{i32 786688, metadata !1889, metadata !"src", metadata !6, i32 827, metadata !1907, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 827]
!1907 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1908} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_param_t]
!1908 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_param_t", metadata !6, i32 341, i64 0, i64 0, i64 0, i32 0, metadata !1909} ; [ DW_TAG_typedef ] [ngx_http_upstream_param_t] [line 341, size 0, align 0, offset 0] [from ]
!1909 = metadata !{i32 786451, null, metadata !"", metadata !471, i32 337, i64 160, i64 32, i32 0, i32 0, null, metadata !1910, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 337, size 160, align 32, offset 0] [from ]
!1910 = metadata !{metadata !1911, metadata !1912, metadata !1913}
!1911 = metadata !{i32 786445, metadata !1909, metadata !"key", metadata !471, i32 338, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 338, size 64, align 32, offset 0] [from ngx_str_t]
!1912 = metadata !{i32 786445, metadata !1909, metadata !"value", metadata !471, i32 339, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 339, size 64, align 32, offset 64] [from ngx_str_t]
!1913 = metadata !{i32 786445, metadata !1909, metadata !"skip_empty", metadata !471, i32 340, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [skip_empty] [line 340, size 32, align 32, offset 128] [from ngx_uint_t]
!1914 = metadata !{i32 786688, metadata !1889, metadata !"sc", metadata !6, i32 828, metadata !1629, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 828]
!1915 = metadata !{i32 786688, metadata !1889, metadata !"copy", metadata !6, i32 829, metadata !1916, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [copy] [line 829]
!1916 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1917} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_script_copy_code_t]
!1917 = metadata !{i32 786454, null, metadata !"ngx_http_script_copy_code_t", metadata !6, i32 92, i64 0, i64 0, i64 0, i32 0, metadata !1918} ; [ DW_TAG_typedef ] [ngx_http_script_copy_code_t] [line 92, size 0, align 0, offset 0] [from ]
!1918 = metadata !{i32 786451, null, metadata !"", metadata !1363, i32 89, i64 64, i64 32, i32 0, i32 0, null, metadata !1919, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 89, size 64, align 32, offset 0] [from ]
!1919 = metadata !{metadata !1920, metadata !1921}
!1920 = metadata !{i32 786445, metadata !1918, metadata !"code", metadata !1363, i32 90, i64 32, i64 32, i64 0, i32 0, metadata !1803} ; [ DW_TAG_member ] [code] [line 90, size 32, align 32, offset 0] [from ngx_http_script_code_pt]
!1921 = metadata !{i32 786445, metadata !1918, metadata !"len", metadata !1363, i32 91, i64 32, i64 32, i64 32, i32 0, metadata !27} ; [ DW_TAG_member ] [len] [line 91, size 32, align 32, offset 32] [from uintptr_t]
!1922 = metadata !{i32 786688, metadata !1923, metadata !"h", metadata !6, i32 872, metadata !1924, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 872]
!1923 = metadata !{i32 786443, metadata !1889, i32 871, i32 0, metadata !6, i32 190} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1924 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1925} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_keyval_t]
!1925 = metadata !{i32 786454, null, metadata !"ngx_keyval_t", metadata !6, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !1926} ; [ DW_TAG_typedef ] [ngx_keyval_t] [line 25, size 0, align 0, offset 0] [from ]
!1926 = metadata !{i32 786451, null, metadata !"", metadata !31, i32 22, i64 128, i64 32, i32 0, i32 0, null, metadata !1927, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 22, size 128, align 32, offset 0] [from ]
!1927 = metadata !{metadata !1928, metadata !1929}
!1928 = metadata !{i32 786445, metadata !1926, metadata !"key", metadata !31, i32 23, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [key] [line 23, size 64, align 32, offset 0] [from ngx_str_t]
!1929 = metadata !{i32 786445, metadata !1926, metadata !"value", metadata !31, i32 24, i64 64, i64 32, i64 64, i32 0, metadata !88} ; [ DW_TAG_member ] [value] [line 24, size 64, align 32, offset 64] [from ngx_str_t]
!1930 = metadata !{i32 786688, metadata !1923, metadata !"s", metadata !6, i32 873, metadata !1907, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 873]
!1931 = metadata !{i32 786478, i32 0, metadata !21, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !21, i32 32, metadata !1932, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1934, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!1932 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1933, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1933 = metadata !{metadata !487, metadata !18, metadata !34, metadata !26, metadata !30}
!1934 = metadata !{metadata !1935}
!1935 = metadata !{metadata !1936, metadata !1937, metadata !1938, metadata !1939}
!1936 = metadata !{i32 786689, metadata !1931, metadata !"array", metadata !21, i32 16777248, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!1937 = metadata !{i32 786689, metadata !1931, metadata !"pool", metadata !21, i32 33554464, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!1938 = metadata !{i32 786689, metadata !1931, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1939 = metadata !{i32 786689, metadata !1931, metadata !"size", metadata !21, i32 67108896, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1940 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_scgi_create_loc_conf", metadata !"ngx_http_scgi_create_loc_conf", metadata !"", metadata !6, i32 555, metadata !1941, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*)* @ngx_http_scgi_create_loc_conf, null, null, metadata !1943, i32 556} ; [ DW_TAG_subprogram ] [line 555] [local] [def] [scope 556] [ngx_http_scgi_create_loc_conf]
!1941 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1942, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1942 = metadata !{metadata !24, metadata !11}
!1943 = metadata !{metadata !1944}
!1944 = metadata !{metadata !1945, metadata !1946}
!1945 = metadata !{i32 786689, metadata !1940, metadata !"cf", metadata !6, i32 16777771, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 555]
!1946 = metadata !{i32 786688, metadata !1947, metadata !"conf", metadata !6, i32 557, metadata !464, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [conf] [line 557]
!1947 = metadata !{i32 786443, metadata !1940, i32 556, i32 0, metadata !6, i32 215} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!1948 = metadata !{metadata !1949}
!1949 = metadata !{metadata !1950, metadata !1988, metadata !1992, metadata !2001, metadata !2002, metadata !2022, metadata !2026, metadata !2028}
!1950 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_scgi_module", metadata !"ngx_http_scgi_module", metadata !"", metadata !6, i32 54, metadata !1951, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_scgi_module} ; [ DW_TAG_variable ] [ngx_http_scgi_module] [line 54] [def]
!1951 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !1952} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!1952 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !13, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !1953, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!1953 = metadata !{metadata !1954, metadata !1955, metadata !1956, metadata !1957, metadata !1958, metadata !1959, metadata !1960, metadata !1961, metadata !1962, metadata !1963, metadata !1964, metadata !1968, metadata !1972, metadata !1973, metadata !1974, metadata !1978, metadata !1979, metadata !1980, metadata !1981, metadata !1982, metadata !1983, metadata !1984, metadata !1985, metadata !1986, metadata !1987}
!1954 = metadata !{i32 786445, metadata !1952, metadata !"ctx_index", metadata !13, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !26} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!1955 = metadata !{i32 786445, metadata !1952, metadata !"index", metadata !13, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !26} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!1956 = metadata !{i32 786445, metadata !1952, metadata !"spare0", metadata !13, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!1957 = metadata !{i32 786445, metadata !1952, metadata !"spare1", metadata !13, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !26} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!1958 = metadata !{i32 786445, metadata !1952, metadata !"spare2", metadata !13, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !26} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!1959 = metadata !{i32 786445, metadata !1952, metadata !"spare3", metadata !13, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !26} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!1960 = metadata !{i32 786445, metadata !1952, metadata !"version", metadata !13, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !26} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!1961 = metadata !{i32 786445, metadata !1952, metadata !"ctx", metadata !13, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !24} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!1962 = metadata !{i32 786445, metadata !1952, metadata !"commands", metadata !13, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !447} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!1963 = metadata !{i32 786445, metadata !1952, metadata !"type", metadata !13, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !26} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!1964 = metadata !{i32 786445, metadata !1952, metadata !"init_master", metadata !13, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !1965} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!1965 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1966} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1966 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1967, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1967 = metadata !{metadata !487, metadata !137}
!1968 = metadata !{i32 786445, metadata !1952, metadata !"init_module", metadata !13, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !1969} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!1969 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1970} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1970 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1971, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1971 = metadata !{metadata !487, metadata !203}
!1972 = metadata !{i32 786445, metadata !1952, metadata !"init_process", metadata !13, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !1969} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!1973 = metadata !{i32 786445, metadata !1952, metadata !"init_thread", metadata !13, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !1969} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!1974 = metadata !{i32 786445, metadata !1952, metadata !"exit_thread", metadata !13, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !1975} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!1975 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1976} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1976 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1977, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1977 = metadata !{null, metadata !203}
!1978 = metadata !{i32 786445, metadata !1952, metadata !"exit_process", metadata !13, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !1975} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!1979 = metadata !{i32 786445, metadata !1952, metadata !"exit_master", metadata !13, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !1975} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!1980 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook0", metadata !13, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!1981 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook1", metadata !13, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!1982 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook2", metadata !13, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!1983 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook3", metadata !13, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!1984 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook4", metadata !13, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!1985 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook5", metadata !13, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!1986 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook6", metadata !13, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!1987 = metadata !{i32 786445, metadata !1952, metadata !"spare_hook7", metadata !13, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !27} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!1988 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_scgi_commands", metadata !"ngx_http_scgi_commands", metadata !"", metadata !6, i32 52, metadata !1989, i32 1, i32 1, <{ { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }, { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* } }>* @ngx_http_scgi_commands} ; [ DW_TAG_variable ] [ngx_http_scgi_commands] [line 52] [local] [def]
!1989 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 7840, i64 32, i32 0, i32 0, metadata !448, metadata !1990, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 7840, align 32, offset 0] [from ngx_command_t]
!1990 = metadata !{metadata !1991}
!1991 = metadata !{i32 786465, i64 0, i64 34}     ; [ DW_TAG_subrange_type ] [0, 34]
!1992 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_scgi_next_upstream_masks", metadata !"ngx_http_scgi_next_upstream_masks", metadata !"", metadata !6, i32 40, metadata !1993, i32 1, i32 1, [9 x %struct.ngx_conf_bitmask_t]* @ngx_http_scgi_next_upstream_masks} ; [ DW_TAG_variable ] [ngx_http_scgi_next_upstream_masks] [line 40] [local] [def]
!1993 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 864, i64 32, i32 0, i32 0, metadata !1994, metadata !1999, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 864, align 32, offset 0] [from ngx_conf_bitmask_t]
!1994 = metadata !{i32 786454, null, metadata !"ngx_conf_bitmask_t", metadata !6, i32 218, i64 0, i64 0, i64 0, i32 0, metadata !1995} ; [ DW_TAG_typedef ] [ngx_conf_bitmask_t] [line 218, size 0, align 0, offset 0] [from ]
!1995 = metadata !{i32 786451, null, metadata !"", metadata !13, i32 215, i64 96, i64 32, i32 0, i32 0, null, metadata !1996, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 215, size 96, align 32, offset 0] [from ]
!1996 = metadata !{metadata !1997, metadata !1998}
!1997 = metadata !{i32 786445, metadata !1995, metadata !"name", metadata !13, i32 216, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 216, size 64, align 32, offset 0] [from ngx_str_t]
!1998 = metadata !{i32 786445, metadata !1995, metadata !"mask", metadata !13, i32 217, i64 32, i64 32, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [mask] [line 217, size 32, align 32, offset 64] [from ngx_uint_t]
!1999 = metadata !{metadata !2000}
!2000 = metadata !{i32 786465, i64 0, i64 8}      ; [ DW_TAG_subrange_type ] [0, 8]
!2001 = metadata !{i32 786484, i32 0, metadata !1776, metadata !"zero", metadata !"zero", metadata !"", metadata !6, i32 204, metadata !88, i32 1, i32 1, %struct.ngx_str_t* @ngx_http_scgi_create_request.zero} ; [ DW_TAG_variable ] [zero] [line 204] [local] [def]
!2002 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_scgi_module_ctx", metadata !"ngx_http_scgi_module_ctx", metadata !"", metadata !6, i32 53, metadata !2003, i32 1, i32 1, %struct.ngx_http_module_t* @ngx_http_scgi_module_ctx} ; [ DW_TAG_variable ] [ngx_http_scgi_module_ctx] [line 53] [local] [def]
!2003 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !2004} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!2004 = metadata !{i32 786451, null, metadata !"", metadata !1255, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !2005, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!2005 = metadata !{metadata !2006, metadata !2010, metadata !2011, metadata !2013, metadata !2017, metadata !2018, metadata !2020, metadata !2021}
!2006 = metadata !{i32 786445, metadata !2004, metadata !"preconfiguration", metadata !1255, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !2007} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!2007 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2008} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2008 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2009, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2009 = metadata !{metadata !487, metadata !11}
!2010 = metadata !{i32 786445, metadata !2004, metadata !"postconfiguration", metadata !1255, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !2007} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!2011 = metadata !{i32 786445, metadata !2004, metadata !"create_main_conf", metadata !1255, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !2012} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!2012 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1941} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2013 = metadata !{i32 786445, metadata !2004, metadata !"init_main_conf", metadata !1255, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !2014} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!2014 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2015} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2015 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2016, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2016 = metadata !{metadata !9, metadata !11, metadata !24}
!2017 = metadata !{i32 786445, metadata !2004, metadata !"create_srv_conf", metadata !1255, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !2012} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!2018 = metadata !{i32 786445, metadata !2004, metadata !"merge_srv_conf", metadata !1255, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !2019} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!2019 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1850} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2020 = metadata !{i32 786445, metadata !2004, metadata !"create_loc_conf", metadata !1255, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !2012} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!2021 = metadata !{i32 786445, metadata !2004, metadata !"merge_loc_conf", metadata !1255, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !2019} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!2022 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_scgi_cache_headers", metadata !"ngx_http_scgi_cache_headers", metadata !"", metadata !6, i32 67, metadata !2023, i32 1, i32 1, [7 x %struct.ngx_keyval_t]* @ngx_http_scgi_cache_headers} ; [ DW_TAG_variable ] [ngx_http_scgi_cache_headers] [line 67] [local] [def]
!2023 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 896, i64 32, i32 0, i32 0, metadata !1925, metadata !2024, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 896, align 32, offset 0] [from ngx_keyval_t]
!2024 = metadata !{metadata !2025}
!2025 = metadata !{i32 786465, i64 0, i64 6}      ; [ DW_TAG_subrange_type ] [0, 6]
!2026 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_scgi_hide_headers", metadata !"ngx_http_scgi_hide_headers", metadata !"", metadata !6, i32 65, metadata !2027, i32 1, i32 1, [7 x %struct.ngx_str_t]* @ngx_http_scgi_hide_headers} ; [ DW_TAG_variable ] [ngx_http_scgi_hide_headers] [line 65] [local] [def]
!2027 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 448, i64 32, i32 0, i32 0, metadata !88, metadata !2024, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from ngx_str_t]
!2028 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_scgi_temp_path", metadata !"ngx_http_scgi_temp_path", metadata !"", metadata !6, i32 69, metadata !2029, i32 1, i32 1, %struct.ngx_path_init_t* @ngx_http_scgi_temp_path} ; [ DW_TAG_variable ] [ngx_http_scgi_temp_path] [line 69] [local] [def]
!2029 = metadata !{i32 786454, null, metadata !"ngx_path_init_t", metadata !6, i32 59, i64 0, i64 0, i64 0, i32 0, metadata !2030} ; [ DW_TAG_typedef ] [ngx_path_init_t] [line 59, size 0, align 0, offset 0] [from ]
!2030 = metadata !{i32 786451, null, metadata !"", metadata !82, i32 56, i64 160, i64 32, i32 0, i32 0, null, metadata !2031, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 56, size 160, align 32, offset 0] [from ]
!2031 = metadata !{metadata !2032, metadata !2033}
!2032 = metadata !{i32 786445, metadata !2030, metadata !"name", metadata !82, i32 57, i64 64, i64 32, i64 0, i32 0, metadata !88} ; [ DW_TAG_member ] [name] [line 57, size 64, align 32, offset 0] [from ngx_str_t]
!2033 = metadata !{i32 786445, metadata !2030, metadata !"level", metadata !82, i32 58, i64 96, i64 32, i64 64, i32 0, metadata !626} ; [ DW_TAG_member ] [level] [line 58, size 96, align 32, offset 64] [from ]
!2034 = metadata !{i32 983, i32 0, metadata !1663, null}
!2035 = metadata !{i32 986, i32 0, metadata !1670, null}
!2036 = metadata !{i32 991, i32 0, metadata !1670, null}
!2037 = metadata !{i32 992, i32 0, metadata !1670, null}
!2038 = metadata !{metadata !"any pointer", metadata !2039}
!2039 = metadata !{metadata !"omnipotent char", metadata !2040}
!2040 = metadata !{metadata !"Simple C/C++ TBAA"}
!2041 = metadata !{i32 995, i32 0, metadata !1670, null}
!2042 = metadata !{metadata !"int", metadata !2039}
!2043 = metadata !{i32 996, i32 0, metadata !1670, null}
!2044 = metadata !{i32 997, i32 0, metadata !1670, null}
!2045 = metadata !{i32 998, i32 0, metadata !1670, null}
!2046 = metadata !{i32 999, i32 0, metadata !1670, null}
!2047 = metadata !{i32 1000, i32 0, metadata !1670, null}
!2048 = metadata !{i32 1001, i32 0, metadata !2049, null}
!2049 = metadata !{i32 786443, metadata !1670, i32 1000, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2050 = metadata !{i32 1002, i32 0, metadata !2049, null}
!2051 = metadata !{i32 1003, i32 0, metadata !2049, null}
!2052 = metadata !{i32 1004, i32 0, metadata !2049, null}
!2053 = metadata !{i32 1005, i32 0, metadata !2049, null}
!2054 = metadata !{i32 1006, i32 0, metadata !2049, null}
!2055 = metadata !{i32 1007, i32 0, metadata !2049, null}
!2056 = metadata !{i32 1008, i32 0, metadata !2049, null}
!2057 = metadata !{i32 1009, i32 0, metadata !2049, null}
!2058 = metadata !{i32 1014, i32 0, metadata !1670, null}
!2059 = metadata !{i32 1015, i32 0, metadata !1670, null}
!2060 = metadata !{i32 1016, i32 0, metadata !1670, null}
!2061 = metadata !{i32 1017, i32 0, metadata !1670, null}
!2062 = metadata !{i32 1018, i32 0, metadata !1670, null}
!2063 = metadata !{i32 1021, i32 0, metadata !1670, null}
!2064 = metadata !{i32 1022, i32 0, metadata !2065, null}
!2065 = metadata !{i32 786443, metadata !1670, i32 1021, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2066 = metadata !{i32 1023, i32 0, metadata !2065, null}
!2067 = metadata !{i32 1025, i32 0, metadata !1670, null}
!2068 = metadata !{i32 1027, i32 0, metadata !1619, null}
!2069 = metadata !{i32 1031, i32 0, metadata !1626, null}
!2070 = metadata !{i32 1032, i32 0, metadata !1626, null}
!2071 = metadata !{i32 1035, i32 0, metadata !1626, null}
!2072 = metadata !{i32 1036, i32 0, metadata !1652, null}
!2073 = metadata !{i32 1036, i32 0, metadata !1655, null}
!2074 = metadata !{i32 3}
!2075 = metadata !{i32 1036, i32 0, metadata !2076, null}
!2076 = metadata !{i32 786443, metadata !1655, i32 1036, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2077 = metadata !{i32 1036, i32 0, metadata !2078, null}
!2078 = metadata !{i32 786443, metadata !2076, i32 1036, i32 0, metadata !6, i32 17} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2079 = metadata !{i32 1037, i32 0, metadata !2080, null}
!2080 = metadata !{i32 786443, metadata !1626, i32 1036, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2081 = metadata !{i32 1038, i32 0, metadata !2080, null}
!2082 = metadata !{i32 1041, i32 0, metadata !1626, null}
!2083 = metadata !{i32 1045, i32 0, metadata !1658, null}
!2084 = metadata !{i32 1045, i32 0, metadata !1661, null}
!2085 = metadata !{i32 2}
!2086 = metadata !{i32 1045, i32 0, metadata !2087, null}
!2087 = metadata !{i32 786443, metadata !1661, i32 1045, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2088 = metadata !{i32 1045, i32 0, metadata !2089, null}
!2089 = metadata !{i32 786443, metadata !2087, i32 1045, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2090 = metadata !{i32 1046, i32 0, metadata !2091, null}
!2091 = metadata !{i32 786443, metadata !1626, i32 1045, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2092 = metadata !{i32 1047, i32 0, metadata !2091, null}
!2093 = metadata !{i32 1050, i32 0, metadata !1626, null}
!2094 = metadata !{i32 1051, i32 0, metadata !1626, null}
!2095 = metadata !{i32 1052, i32 0, metadata !1626, null}
!2096 = metadata !{i32 1053, i32 0, metadata !1626, null}
!2097 = metadata !{i32 1054, i32 0, metadata !1626, null}
!2098 = metadata !{i32 1055, i32 0, metadata !1626, null}
!2099 = metadata !{i32 1056, i32 0, metadata !1626, null}
!2100 = metadata !{i32 1058, i32 0, metadata !1626, null}
!2101 = metadata !{i32 1059, i32 0, metadata !1626, null}
!2102 = metadata !{i32 1060, i32 0, metadata !1626, null}
!2103 = metadata !{i32 1064, i32 0, metadata !1626, null}
!2104 = metadata !{i32 1067, i32 0, metadata !1604, null}
!2105 = metadata !{i32 1071, i32 0, metadata !1611, null}
!2106 = metadata !{i32 1072, i32 0, metadata !1611, null}
!2107 = metadata !{i32 1075, i32 0, metadata !1614, null}
!2108 = metadata !{i32 1075, i32 0, metadata !1617, null}
!2109 = metadata !{i32 1075, i32 0, metadata !2110, null}
!2110 = metadata !{i32 786443, metadata !1617, i32 1075, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2111 = metadata !{i32 1075, i32 0, metadata !2112, null}
!2112 = metadata !{i32 786443, metadata !2110, i32 1075, i32 0, metadata !6, i32 8} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2113 = metadata !{i32 1076, i32 0, metadata !2114, null}
!2114 = metadata !{i32 786443, metadata !1611, i32 1075, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2115 = metadata !{i32 1077, i32 0, metadata !2114, null}
!2116 = metadata !{i32 1079, i32 0, metadata !1611, null}
!2117 = metadata !{i32 1082, i32 0, metadata !1611, null}
!2118 = metadata !{i32 1083, i32 0, metadata !1611, null}
!2119 = metadata !{i32 1087, i32 0, metadata !1611, null}
!2120 = metadata !{i32 1089, i32 0, metadata !5, null}
!2121 = metadata !{i32 1093, i32 0, metadata !463, null}
!2122 = metadata !{i32 1095, i32 0, metadata !463, null}
!2123 = metadata !{i32 1094, i32 0, metadata !463, null}
!2124 = metadata !{i32 1098, i32 0, metadata !463, null}
!2125 = metadata !{i32 1099, i32 0, metadata !463, null}
!2126 = metadata !{i32 1100, i32 0, metadata !463, null}
!2127 = metadata !{i32 1101, i32 0, metadata !463, null}
!2128 = metadata !{i32 1102, i32 0, metadata !463, null}
!2129 = metadata !{i32 1106, i32 0, metadata !463, null}
!2130 = metadata !{i32 71, i32 0, metadata !1701, null}
!2131 = metadata !{i32 77, i32 0, metadata !1706, null}
!2132 = metadata !{i32 78, i32 0, metadata !2133, null}
!2133 = metadata !{i32 786443, metadata !1706, i32 77, i32 0, metadata !6, i32 33} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2134 = metadata !{i32 79, i32 0, metadata !2133, null}
!2135 = metadata !{i32 82, i32 0, metadata !1706, null}
!2136 = metadata !{i32 85, i32 0, metadata !1706, null}
!2137 = metadata !{i32 86, i32 0, metadata !1706, null}
!2138 = metadata !{i32 89, i32 0, metadata !1706, null}
!2139 = metadata !{i32 91, i32 0, metadata !1706, null}
!2140 = metadata !{i32 92, i32 0, metadata !1706, null}
!2141 = metadata !{i32 97, i32 0, metadata !1706, null}
!2142 = metadata !{i32 125, i32 0, metadata !1839, metadata !2143}
!2143 = metadata !{i32 93, i32 0, metadata !2144, null}
!2144 = metadata !{i32 786443, metadata !1706, i32 92, i32 0, metadata !6, i32 36} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2145 = metadata !{i32 786689, metadata !1839, metadata !"r", metadata !6, i32 16777341, metadata !495, i32 0, metadata !2143} ; [ DW_TAG_arg_variable ] [r] [line 125]
!2146 = metadata !{i32 127, i32 0, metadata !1847, metadata !2143}
!2147 = metadata !{i32 129, i32 0, metadata !1847, metadata !2143}
!2148 = metadata !{i32 130, i32 0, metadata !1847, metadata !2143}
!2149 = metadata !{i32 133, i32 0, metadata !1847, metadata !2143}
!2150 = metadata !{i32 134, i32 0, metadata !1847, metadata !2143}
!2151 = metadata !{i32 135, i32 0, metadata !2152, metadata !2143}
!2152 = metadata !{i32 786443, metadata !1847, i32 134, i32 0, metadata !6, i32 120} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2153 = metadata !{i32 136, i32 0, metadata !2154, metadata !2143}
!2154 = metadata !{i32 786443, metadata !2152, i32 135, i32 0, metadata !6, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2155 = metadata !{i32 137, i32 0, metadata !2154, metadata !2143}
!2156 = metadata !{i32 141, i32 0, metadata !1847, metadata !2143}
!2157 = metadata !{i32 786688, metadata !1847, metadata !"u", metadata !6, i32 128, metadata !704, i32 0, metadata !2143} ; [ DW_TAG_auto_variable ] [u] [line 128]
!2158 = metadata !{i32 142, i32 0, metadata !1847, metadata !2143}
!2159 = metadata !{i32 143, i32 0, metadata !1847, metadata !2143}
!2160 = metadata !{i32 146, i32 0, metadata !1847, metadata !2143}
!2161 = metadata !{i32 147, i32 0, metadata !2162, metadata !2143}
!2162 = metadata !{i32 786443, metadata !1847, i32 146, i32 0, metadata !6, i32 123} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2163 = metadata !{i32 148, i32 0, metadata !2162, metadata !2143}
!2164 = metadata !{i32 149, i32 0, metadata !2162, metadata !2143}
!2165 = metadata !{i32 150, i32 0, metadata !2162, metadata !2143}
!2166 = metadata !{i32 151, i32 0, metadata !2162, metadata !2143}
!2167 = metadata !{i32 153, i32 0, metadata !2168, metadata !2143}
!2168 = metadata !{i32 786443, metadata !1847, i32 152, i32 0, metadata !6, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2169 = metadata !{i32 154, i32 0, metadata !2168, metadata !2143}
!2170 = metadata !{metadata !"short", metadata !2039}
!2171 = metadata !{i32 155, i32 0, metadata !2168, metadata !2143}
!2172 = metadata !{i32 98, i32 0, metadata !1706, null}
!2173 = metadata !{i32 99, i32 0, metadata !1706, null}
!2174 = metadata !{i32 100, i32 0, metadata !1706, null}
!2175 = metadata !{i32 101, i32 0, metadata !1706, null}
!2176 = metadata !{i32 103, i32 0, metadata !1706, null}
!2177 = metadata !{i32 105, i32 0, metadata !1706, null}
!2178 = metadata !{i32 106, i32 0, metadata !1706, null}
!2179 = metadata !{i32 107, i32 0, metadata !1706, null}
!2180 = metadata !{i32 108, i32 0, metadata !1706, null}
!2181 = metadata !{i32 109, i32 0, metadata !1706, null}
!2182 = metadata !{i32 110, i32 0, metadata !1706, null}
!2183 = metadata !{i32 111, i32 0, metadata !1706, null}
!2184 = metadata !{i32 112, i32 0, metadata !1706, null}
!2185 = metadata !{i32 113, i32 0, metadata !1706, null}
!2186 = metadata !{i32 116, i32 0, metadata !1706, null}
!2187 = metadata !{i32 117, i32 0, metadata !1706, null}
!2188 = metadata !{i32 118, i32 0, metadata !1706, null}
!2189 = metadata !{i32 119, i32 0, metadata !1706, null}
!2190 = metadata !{i32 123, i32 0, metadata !1706, null}
!2191 = metadata !{i32 161, i32 0, metadata !1832, null}
!2192 = metadata !{i32 165, i32 0, metadata !1837, null}
!2193 = metadata !{i32 166, i32 0, metadata !1837, null}
!2194 = metadata !{i32 169, i32 0, metadata !1837, null}
!2195 = metadata !{i32 170, i32 0, metadata !1837, null}
!2196 = metadata !{i32 174, i32 0, metadata !1837, null}
!2197 = metadata !{i32 177, i32 0, metadata !1776, null}
!2198 = metadata !{i32 200, i32 0, metadata !1781, null}
!2199 = metadata !{i32 201, i32 0, metadata !1781, null}
!2200 = metadata !{i32 205, i32 0, metadata !1781, null}
!2201 = metadata !{i32 206, i32 0, metadata !1781, null}
!2202 = metadata !{i32 207, i32 0, metadata !1781, null}
!2203 = metadata !{%struct.ngx_table_elt_t** null}
!2204 = metadata !{i32 208, i32 0, metadata !1781, null}
!2205 = metadata !{i32 209, i32 0, metadata !1781, null}
!2206 = metadata !{i32 210, i32 0, metadata !1781, null}
!2207 = metadata !{i32 211, i32 0, metadata !2208, null}
!2208 = metadata !{i32 786443, metadata !1781, i32 210, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2209 = metadata !{i32 212, i32 0, metadata !2208, null}
!2210 = metadata !{i32 213, i32 0, metadata !2208, null}
!2211 = metadata !{i32 214, i32 0, metadata !2208, null}
!2212 = metadata !{i32 215, i32 0, metadata !2208, null}
!2213 = metadata !{i32 216, i32 0, metadata !2208, null}
!2214 = metadata !{i32 217, i32 0, metadata !2215, null}
!2215 = metadata !{i32 786443, metadata !2208, i32 216, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2216 = metadata !{i32 218, i32 0, metadata !2215, null}
!2217 = metadata !{i32 219, i32 0, metadata !2215, null}
!2218 = metadata !{i32 220, i32 0, metadata !2215, null}
!2219 = metadata !{i32 221, i32 0, metadata !2220, null}
!2220 = metadata !{i32 786443, metadata !2215, i32 221, i32 0, metadata !6, i32 70} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2221 = metadata !{i32 222, i32 0, metadata !2222, null}
!2222 = metadata !{i32 786443, metadata !2220, i32 221, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2223 = metadata !{i32 224, i32 0, metadata !2215, null}
!2224 = metadata !{i32 225, i32 0, metadata !2215, null}
!2225 = metadata !{i32 228, i32 0, metadata !2215, null}
!2226 = metadata !{i32 231, i32 0, metadata !1781, null}
!2227 = metadata !{i32 287, i32 0, metadata !1781, null}
!2228 = metadata !{i32 232, i32 0, metadata !2229, null}
!2229 = metadata !{i32 786443, metadata !1781, i32 231, i32 0, metadata !6, i32 73} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2230 = metadata !{i8* null}
!2231 = metadata !{i32 233, i32 0, metadata !2229, null}
!2232 = metadata !{i32 234, i32 0, metadata !2229, null}
!2233 = metadata !{i32 246, i32 0, metadata !2229, null}
!2234 = metadata !{i32 261, i32 0, metadata !2235, null}
!2235 = metadata !{i32 786443, metadata !2236, i32 259, i32 0, metadata !6, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2236 = metadata !{i32 786443, metadata !2237, i32 258, i32 0, metadata !6, i32 81} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2237 = metadata !{i32 786443, metadata !2238, i32 249, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2238 = metadata !{i32 786443, metadata !2229, i32 249, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2239 = metadata !{i32 235, i32 0, metadata !2240, null}
!2240 = metadata !{i32 786443, metadata !2229, i32 234, i32 0, metadata !6, i32 74} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2241 = metadata !{i32 236, i32 0, metadata !2240, null}
!2242 = metadata !{i32 237, i32 0, metadata !2240, null}
!2243 = metadata !{i32 238, i32 0, metadata !2244, null}
!2244 = metadata !{i32 786443, metadata !2240, i32 237, i32 0, metadata !6, i32 75} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2245 = metadata !{i32 239, i32 0, metadata !2244, null}
!2246 = metadata !{i32 241, i32 0, metadata !2240, null}
!2247 = metadata !{i32 242, i32 0, metadata !2240, null}
!2248 = metadata !{i32 247, i32 0, metadata !2229, null}
!2249 = metadata !{i32 249, i32 0, metadata !2238, null}
!2250 = metadata !{i32 278, i32 0, metadata !2236, null}
!2251 = metadata !{i32 250, i32 0, metadata !2237, null}
!2252 = metadata !{i32 251, i32 0, metadata !2253, null}
!2253 = metadata !{i32 786443, metadata !2237, i32 250, i32 0, metadata !6, i32 79} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2254 = metadata !{i32 254, i32 0, metadata !2253, null}
!2255 = metadata !{i32 255, i32 0, metadata !2253, null}
!2256 = metadata !{i32 256, i32 0, metadata !2253, null}
!2257 = metadata !{i32 257, i32 0, metadata !2253, null}
!2258 = metadata !{i32 258, i32 0, metadata !2237, null}
!2259 = metadata !{i32 283, i32 0, metadata !2237, null}
!2260 = metadata !{i32 259, i32 0, metadata !2236, null}
!2261 = metadata !{i32 260, i32 0, metadata !2235, null}
!2262 = metadata !{i32 262, i32 0, metadata !2235, null}
!2263 = metadata !{i32 267, i32 0, metadata !2264, null}
!2264 = metadata !{i32 786443, metadata !2236, i32 267, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2265 = metadata !{i32 266, i32 0, metadata !2236, null}
!2266 = metadata !{i32 268, i32 0, metadata !2267, null}
!2267 = metadata !{i32 786443, metadata !2264, i32 267, i32 0, metadata !6, i32 85} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2268 = metadata !{i32 269, i32 0, metadata !2267, null}
!2269 = metadata !{i32 270, i32 0, metadata !2270, null}
!2270 = metadata !{i32 786443, metadata !2267, i32 269, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2271 = metadata !{i32 271, i32 0, metadata !2270, null}
!2272 = metadata !{i32 272, i32 0, metadata !2267, null}
!2273 = metadata !{i32 275, i32 0, metadata !2267, null}
!2274 = metadata !{i32 276, i32 0, metadata !2267, null}
!2275 = metadata !{i32 279, i32 0, metadata !2276, null}
!2276 = metadata !{i32 786443, metadata !2236, i32 278, i32 0, metadata !6, i32 88} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2277 = metadata !{i32 280, i32 0, metadata !2276, null}
!2278 = metadata !{i32 288, i32 0, metadata !1781, null}
!2279 = metadata !{i32 291, i32 0, metadata !1781, null}
!2280 = metadata !{i32 292, i32 0, metadata !1781, null}
!2281 = metadata !{i32 295, i32 0, metadata !1781, null}
!2282 = metadata !{i32 296, i32 0, metadata !1781, null}
!2283 = metadata !{i32 297, i32 0, metadata !1781, null}
!2284 = metadata !{i32 298, i32 0, metadata !2285, null}
!2285 = metadata !{i32 786443, metadata !1781, i32 297, i32 0, metadata !6, i32 91} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2286 = metadata !{i32 299, i32 0, metadata !2285, null}
!2287 = metadata !{i32 300, i32 0, metadata !2285, null}
!2288 = metadata !{i32 301, i32 0, metadata !2285, null}
!2289 = metadata !{i32 302, i32 0, metadata !2285, null}
!2290 = metadata !{i32 303, i32 0, metadata !2285, null}
!2291 = metadata !{i32 304, i32 0, metadata !2285, null}
!2292 = metadata !{i32 305, i32 0, metadata !2293, null}
!2293 = metadata !{i32 786443, metadata !2285, i32 304, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2294 = metadata !{i32 307, i32 0, metadata !2293, null}
!2295 = metadata !{i32 308, i32 0, metadata !2293, null}
!2296 = metadata !{i32 309, i32 0, metadata !2293, null}
!2297 = metadata !{i32 310, i32 0, metadata !2298, null}
!2298 = metadata !{i32 786443, metadata !2293, i32 310, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2299 = metadata !{i32 311, i32 0, metadata !2300, null}
!2300 = metadata !{i32 786443, metadata !2298, i32 310, i32 0, metadata !6, i32 94} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2301 = metadata !{i32 313, i32 0, metadata !2293, null}
!2302 = metadata !{i32 314, i32 0, metadata !2293, null}
!2303 = metadata !{i32 315, i32 0, metadata !2304, null}
!2304 = metadata !{i32 786443, metadata !2293, i32 314, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2305 = metadata !{i32 316, i32 0, metadata !2304, null}
!2306 = metadata !{i32 317, i32 0, metadata !2307, null}
!2307 = metadata !{i32 786443, metadata !2304, i32 316, i32 0, metadata !6, i32 96} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2308 = metadata !{i32 318, i32 0, metadata !2307, null}
!2309 = metadata !{i32 321, i32 0, metadata !2304, null}
!2310 = metadata !{i32 320, i32 0, metadata !2304, null}
!2311 = metadata !{i32 322, i32 0, metadata !2304, null}
!2312 = metadata !{i32 326, i32 0, metadata !2293, null}
!2313 = metadata !{i32 327, i32 0, metadata !2293, null}
!2314 = metadata !{i32 330, i32 0, metadata !2293, null}
!2315 = metadata !{i32 331, i32 0, metadata !2316, null}
!2316 = metadata !{i32 786443, metadata !2293, i32 330, i32 0, metadata !6, i32 97} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2317 = metadata !{i32 332, i32 0, metadata !2316, null}
!2318 = metadata !{i32 334, i32 0, metadata !2293, null}
!2319 = metadata !{i32 335, i32 0, metadata !2293, null}
!2320 = metadata !{i32 337, i32 0, metadata !2293, null}
!2321 = metadata !{i32 338, i32 0, metadata !2285, null}
!2322 = metadata !{i32 339, i32 0, metadata !2285, null}
!2323 = metadata !{i32 340, i32 0, metadata !1781, null}
!2324 = metadata !{i32 341, i32 0, metadata !2325, null}
!2325 = metadata !{i32 786443, metadata !1781, i32 340, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2326 = metadata !{i32 342, i32 0, metadata !2325, null}
!2327 = metadata !{i32 344, i32 0, metadata !2328, null}
!2328 = metadata !{i32 786443, metadata !2325, i32 344, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2329 = metadata !{i32 353, i32 0, metadata !2330, null}
!2330 = metadata !{i32 786443, metadata !2331, i32 353, i32 0, metadata !6, i32 103} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2331 = metadata !{i32 786443, metadata !2328, i32 344, i32 0, metadata !6, i32 100} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2332 = metadata !{i32 345, i32 0, metadata !2331, null}
!2333 = metadata !{i32 346, i32 0, metadata !2334, null}
!2334 = metadata !{i32 786443, metadata !2331, i32 345, i32 0, metadata !6, i32 101} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2335 = metadata !{i32 349, i32 0, metadata !2334, null}
!2336 = metadata !{i32 350, i32 0, metadata !2334, null}
!2337 = metadata !{i32 351, i32 0, metadata !2334, null}
!2338 = metadata !{i32 352, i32 0, metadata !2334, null}
!2339 = metadata !{i32 354, i32 0, metadata !2340, null}
!2340 = metadata !{i32 786443, metadata !2330, i32 353, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2341 = metadata !{i32 358, i32 0, metadata !2331, null}
!2342 = metadata !{i32 359, i32 0, metadata !2331, null}
!2343 = metadata !{i32 360, i32 0, metadata !2344, null}
!2344 = metadata !{i32 786443, metadata !2331, i32 360, i32 0, metadata !6, i32 106} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2345 = metadata !{i32 361, i32 0, metadata !2346, null}
!2346 = metadata !{i32 786443, metadata !2344, i32 360, i32 0, metadata !6, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2347 = metadata !{i32 362, i32 0, metadata !2346, null}
!2348 = metadata !{i32 363, i32 0, metadata !2349, null}
!2349 = metadata !{i32 786443, metadata !2346, i32 362, i32 0, metadata !6, i32 108} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2350 = metadata !{i32 364, i32 0, metadata !2349, null}
!2351 = metadata !{i32 365, i32 0, metadata !2346, null}
!2352 = metadata !{i32 368, i32 0, metadata !2346, null}
!2353 = metadata !{i32 370, i32 0, metadata !2331, null}
!2354 = metadata !{i32 371, i32 0, metadata !2331, null}
!2355 = metadata !{i32 372, i32 0, metadata !2331, null}
!2356 = metadata !{i32 373, i32 0, metadata !2331, null}
!2357 = metadata !{i32 379, i32 0, metadata !1781, null}
!2358 = metadata !{i32 380, i32 0, metadata !1781, null}
!2359 = metadata !{i32 399, i32 0, metadata !2360, null}
!2360 = metadata !{i32 786443, metadata !1781, i32 398, i32 0, metadata !6, i32 114} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2361 = metadata !{i32 381, i32 0, metadata !2362, null}
!2362 = metadata !{i32 786443, metadata !1781, i32 380, i32 0, metadata !6, i32 110} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2363 = metadata !{i32 382, i32 0, metadata !2362, null}
!2364 = metadata !{i32 383, i32 0, metadata !2362, null}
!2365 = metadata !{i32 384, i32 0, metadata !2366, null}
!2366 = metadata !{i32 786443, metadata !2362, i32 383, i32 0, metadata !6, i32 111} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2367 = metadata !{i32 385, i32 0, metadata !2366, null}
!2368 = metadata !{i32 388, i32 0, metadata !2366, null}
!2369 = metadata !{i32 389, i32 0, metadata !2366, null}
!2370 = metadata !{i32 390, i32 0, metadata !2366, null}
!2371 = metadata !{i32 393, i32 0, metadata !2366, null}
!2372 = metadata !{i32 394, i32 0, metadata !2366, null}
!2373 = metadata !{i32 395, i32 0, metadata !2366, null}
!2374 = metadata !{i32 401, i32 0, metadata !1781, null}
!2375 = metadata !{i32 402, i32 0, metadata !1781, null}
!2376 = metadata !{i32 403, i32 0, metadata !1781, null}
!2377 = metadata !{i32 405, i32 0, metadata !1770, null}
!2378 = metadata !{i32 408, i32 0, metadata !1775, null}
!2379 = metadata !{i32 409, i32 0, metadata !1775, null}
!2380 = metadata !{i32 412, i32 0, metadata !1775, null}
!2381 = metadata !{i32 416, i32 0, metadata !1775, null}
!2382 = metadata !{i32 413, i32 0, metadata !1775, null}
!2383 = metadata !{i32 417, i32 0, metadata !1775, null}
!2384 = metadata !{i32 418, i32 0, metadata !1775, null}
!2385 = metadata !{i32 419, i32 0, metadata !1775, null}
!2386 = metadata !{i32 421, i32 0, metadata !1729, null}
!2387 = metadata !{i32 427, i32 0, metadata !1734, null}
!2388 = metadata !{i32 428, i32 0, metadata !1734, null}
!2389 = metadata !{i32 431, i32 0, metadata !1734, null}
!2390 = metadata !{i32 432, i32 0, metadata !1734, null}
!2391 = metadata !{i32 433, i32 0, metadata !1734, null}
!2392 = metadata !{i32 437, i32 0, metadata !2393, null}
!2393 = metadata !{i32 786443, metadata !1734, i32 436, i32 0, metadata !6, i32 45} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2394 = metadata !{i32 438, i32 0, metadata !2393, null}
!2395 = metadata !{i32 440, i32 0, metadata !1734, null}
!2396 = metadata !{i32 443, i32 0, metadata !1734, null}
!2397 = metadata !{i32 441, i32 0, metadata !2398, null}
!2398 = metadata !{i32 786443, metadata !1734, i32 440, i32 0, metadata !6, i32 46} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2399 = metadata !{i32 442, i32 0, metadata !2398, null}
!2400 = metadata !{i32 444, i32 0, metadata !1734, null}
!2401 = metadata !{i32 445, i32 0, metadata !1734, null}
!2402 = metadata !{i32 446, i32 0, metadata !1734, null}
!2403 = metadata !{i32 447, i32 0, metadata !1734, null}
!2404 = metadata !{i32 450, i32 0, metadata !1734, null}
!2405 = metadata !{i32 452, i32 0, metadata !1734, null}
!2406 = metadata !{i32 453, i32 0, metadata !1734, null}
!2407 = metadata !{i32 454, i32 0, metadata !1734, null}
!2408 = metadata !{i32 543, i32 0, metadata !1725, null}
!2409 = metadata !{i32 546, i32 0, metadata !2410, null}
!2410 = metadata !{i32 786443, metadata !1725, i32 544, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2411 = metadata !{i32 549, i32 0, metadata !1720, null}
!2412 = metadata !{i32 552, i32 0, metadata !2413, null}
!2413 = metadata !{i32 786443, metadata !1720, i32 550, i32 0, metadata !6, i32 40} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2414 = metadata !{i32 456, i32 0, metadata !1738, null}
!2415 = metadata !{i32 465, i32 0, metadata !1743, null}
!2416 = metadata !{i32 467, i32 0, metadata !2417, null}
!2417 = metadata !{i32 786443, metadata !2418, i32 466, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2418 = metadata !{i32 786443, metadata !1743, i32 466, i32 0, metadata !6, i32 49} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2419 = metadata !{i32 474, i32 0, metadata !2420, null}
!2420 = metadata !{i32 786443, metadata !2417, i32 468, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2421 = metadata !{i32 475, i32 0, metadata !2420, null}
!2422 = metadata !{i32 476, i32 0, metadata !2420, null}
!2423 = metadata !{i32 477, i32 0, metadata !2420, null}
!2424 = metadata !{i32 487, i32 0, metadata !2420, null}
!2425 = metadata !{i32 488, i32 0, metadata !2426, null}
!2426 = metadata !{i32 786443, metadata !2420, i32 487, i32 0, metadata !6, i32 54} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2427 = metadata !{i32 493, i32 0, metadata !2420, null}
!2428 = metadata !{i32 466, i32 0, metadata !2418, null}
!2429 = metadata !{i32 468, i32 0, metadata !2417, null}
!2430 = metadata !{i32 470, i32 0, metadata !2420, null}
!2431 = metadata !{i32 471, i32 0, metadata !2420, null}
!2432 = metadata !{i32 478, i32 0, metadata !2420, null}
!2433 = metadata !{i32 481, i32 0, metadata !2420, null}
!2434 = metadata !{i32 482, i32 0, metadata !2420, null}
!2435 = metadata !{i32 483, i32 0, metadata !2420, null}
!2436 = metadata !{i32 484, i32 0, metadata !2420, null}
!2437 = metadata !{i32 485, i32 0, metadata !2420, null}
!2438 = metadata !{i32 486, i32 0, metadata !2420, null}
!2439 = metadata !{i32 489, i32 0, metadata !2426, null}
!2440 = metadata !{i32 491, i32 0, metadata !2441, null}
!2441 = metadata !{i32 786443, metadata !2420, i32 490, i32 0, metadata !6, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2442 = metadata !{i32 494, i32 0, metadata !2420, null}
!2443 = metadata !{i32 503, i32 0, metadata !2444, null}
!2444 = metadata !{i32 786443, metadata !2417, i32 500, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2445 = metadata !{i32 504, i32 0, metadata !2444, null}
!2446 = metadata !{i32 507, i32 0, metadata !2444, null}
!2447 = metadata !{i32 508, i32 0, metadata !2448, null}
!2448 = metadata !{i32 786443, metadata !2444, i32 507, i32 0, metadata !6, i32 59} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2449 = metadata !{i32 509, i32 0, metadata !2448, null}
!2450 = metadata !{i32 510, i32 0, metadata !2448, null}
!2451 = metadata !{i32 511, i32 0, metadata !2452, null}
!2452 = metadata !{i32 786443, metadata !2448, i32 510, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2453 = metadata !{i32 512, i32 0, metadata !2452, null}
!2454 = metadata !{i32 515, i32 0, metadata !2448, null}
!2455 = metadata !{i32 516, i32 0, metadata !2448, null}
!2456 = metadata !{i32 517, i32 0, metadata !2448, null}
!2457 = metadata !{i32 518, i32 0, metadata !2444, null}
!2458 = metadata !{i32 519, i32 0, metadata !2459, null}
!2459 = metadata !{i32 786443, metadata !2444, i32 518, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2460 = metadata !{i32 520, i32 0, metadata !2459, null}
!2461 = metadata !{i32 521, i32 0, metadata !2459, null}
!2462 = metadata !{i32 522, i32 0, metadata !2459, null}
!2463 = metadata !{i32 524, i32 0, metadata !2464, null}
!2464 = metadata !{i32 786443, metadata !2444, i32 523, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2465 = metadata !{i32 525, i32 0, metadata !2464, null}
!2466 = metadata !{i32 526, i32 0, metadata !2464, null}
!2467 = metadata !{i32 528, i32 0, metadata !2444, null}
!2468 = metadata !{i32 529, i32 0, metadata !2469, null}
!2469 = metadata !{i32 786443, metadata !2444, i32 528, i32 0, metadata !6, i32 63} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2470 = metadata !{i32 530, i32 0, metadata !2469, null}
!2471 = metadata !{i32 537, i32 0, metadata !2417, null}
!2472 = metadata !{i32 538, i32 0, metadata !2417, null}
!2473 = metadata !{i32 541, i32 0, metadata !1743, null}
!2474 = metadata !{i32 555, i32 0, metadata !1940, null}
!2475 = metadata !{i32 558, i32 0, metadata !1947, null}
!2476 = metadata !{i32 559, i32 0, metadata !1947, null}
!2477 = metadata !{i32 562, i32 0, metadata !1947, null}
!2478 = metadata !{i32 563, i32 0, metadata !1947, null}
!2479 = metadata !{i32 564, i32 0, metadata !1947, null}
!2480 = metadata !{i32 565, i32 0, metadata !1947, null}
!2481 = metadata !{i32 566, i32 0, metadata !1947, null}
!2482 = metadata !{i32 567, i32 0, metadata !1947, null}
!2483 = metadata !{i32 568, i32 0, metadata !1947, null}
!2484 = metadata !{i32 569, i32 0, metadata !1947, null}
!2485 = metadata !{i32 570, i32 0, metadata !1947, null}
!2486 = metadata !{i32 571, i32 0, metadata !1947, null}
!2487 = metadata !{i32 572, i32 0, metadata !1947, null}
!2488 = metadata !{i32 573, i32 0, metadata !1947, null}
!2489 = metadata !{i32 574, i32 0, metadata !1947, null}
!2490 = metadata !{i32 575, i32 0, metadata !1947, null}
!2491 = metadata !{i32 577, i32 0, metadata !1947, null}
!2492 = metadata !{i32 578, i32 0, metadata !1947, null}
!2493 = metadata !{i32 579, i32 0, metadata !1947, null}
!2494 = metadata !{i32 580, i32 0, metadata !1947, null}
!2495 = metadata !{i32 581, i32 0, metadata !1947, null}
!2496 = metadata !{i32 582, i32 0, metadata !1947, null}
!2497 = metadata !{i32 583, i32 0, metadata !1947, null}
!2498 = metadata !{i32 585, i32 0, metadata !1947, null}
!2499 = metadata !{i32 586, i32 0, metadata !1947, null}
!2500 = metadata !{i32 587, i32 0, metadata !1947, null}
!2501 = metadata !{i32 589, i32 0, metadata !1947, null}
!2502 = metadata !{i32 590, i32 0, metadata !1947, null}
!2503 = metadata !{i32 591, i32 0, metadata !1947, null}
!2504 = metadata !{i32 592, i32 0, metadata !1947, null}
!2505 = metadata !{i32 593, i32 0, metadata !1947, null}
!2506 = metadata !{i32 594, i32 0, metadata !1947, null}
!2507 = metadata !{i32 596, i32 0, metadata !1849, null}
!2508 = metadata !{i32 601, i32 0, metadata !1858, null}
!2509 = metadata !{i32 603, i32 0, metadata !1858, null}
!2510 = metadata !{i32 605, i32 0, metadata !2511, null}
!2511 = metadata !{i32 786443, metadata !2512, i32 604, i32 0, metadata !6, i32 127} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2512 = metadata !{i32 786443, metadata !1858, i32 603, i32 0, metadata !6, i32 126} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2513 = metadata !{i32 606, i32 0, metadata !2511, null}
!2514 = metadata !{i32 608, i32 0, metadata !2512, null}
!2515 = metadata !{i32 609, i32 0, metadata !2516, null}
!2516 = metadata !{i32 786443, metadata !2512, i32 608, i32 0, metadata !6, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2517 = metadata !{i32 610, i32 0, metadata !2516, null}
!2518 = metadata !{i32 611, i32 0, metadata !2516, null}
!2519 = metadata !{i32 613, i32 0, metadata !1858, null}
!2520 = metadata !{i32 614, i32 0, metadata !2521, null}
!2521 = metadata !{i32 786443, metadata !1858, i32 613, i32 0, metadata !6, i32 129} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2522 = metadata !{i32 615, i32 0, metadata !2521, null}
!2523 = metadata !{i32 617, i32 0, metadata !1858, null}
!2524 = metadata !{i32 618, i32 0, metadata !2525, null}
!2525 = metadata !{i32 786443, metadata !1858, i32 617, i32 0, metadata !6, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2526 = metadata !{i32 619, i32 0, metadata !2525, null}
!2527 = metadata !{i32 621, i32 0, metadata !1858, null}
!2528 = metadata !{i32 622, i32 0, metadata !2529, null}
!2529 = metadata !{i32 786443, metadata !1858, i32 621, i32 0, metadata !6, i32 131} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2530 = metadata !{i32 623, i32 0, metadata !2529, null}
!2531 = metadata !{i32 625, i32 0, metadata !1858, null}
!2532 = metadata !{i32 626, i32 0, metadata !2533, null}
!2533 = metadata !{i32 786443, metadata !1858, i32 625, i32 0, metadata !6, i32 132} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2534 = metadata !{i32 627, i32 0, metadata !2533, null}
!2535 = metadata !{i32 629, i32 0, metadata !1858, null}
!2536 = metadata !{i32 630, i32 0, metadata !2537, null}
!2537 = metadata !{i32 786443, metadata !1858, i32 629, i32 0, metadata !6, i32 133} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2538 = metadata !{i32 631, i32 0, metadata !2537, null}
!2539 = metadata !{i32 633, i32 0, metadata !1858, null}
!2540 = metadata !{i32 634, i32 0, metadata !2541, null}
!2541 = metadata !{i32 786443, metadata !1858, i32 633, i32 0, metadata !6, i32 134} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2542 = metadata !{i32 635, i32 0, metadata !2541, null}
!2543 = metadata !{i32 637, i32 0, metadata !1858, null}
!2544 = metadata !{i32 638, i32 0, metadata !2545, null}
!2545 = metadata !{i32 786443, metadata !1858, i32 637, i32 0, metadata !6, i32 135} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2546 = metadata !{i32 639, i32 0, metadata !2545, null}
!2547 = metadata !{i32 641, i32 0, metadata !1858, null}
!2548 = metadata !{i32 642, i32 0, metadata !2549, null}
!2549 = metadata !{i32 786443, metadata !1858, i32 641, i32 0, metadata !6, i32 136} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2550 = metadata !{i32 643, i32 0, metadata !2549, null}
!2551 = metadata !{i32 645, i32 0, metadata !1858, null}
!2552 = metadata !{i32 646, i32 0, metadata !2553, null}
!2553 = metadata !{i32 786443, metadata !1858, i32 645, i32 0, metadata !6, i32 137} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2554 = metadata !{i32 647, i32 0, metadata !2555, null}
!2555 = metadata !{i32 786443, metadata !2553, i32 646, i32 0, metadata !6, i32 138} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2556 = metadata !{i32 648, i32 0, metadata !2555, null}
!2557 = metadata !{i32 649, i32 0, metadata !2555, null}
!2558 = metadata !{i32 651, i32 0, metadata !2559, null}
!2559 = metadata !{i32 786443, metadata !2553, i32 650, i32 0, metadata !6, i32 139} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2560 = metadata !{i32 652, i32 0, metadata !2559, null}
!2561 = metadata !{i32 656, i32 0, metadata !1858, null}
!2562 = metadata !{i32 657, i32 0, metadata !2563, null}
!2563 = metadata !{i32 786443, metadata !1858, i32 656, i32 0, metadata !6, i32 140} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2564 = metadata !{i32 658, i32 0, metadata !2563, null}
!2565 = metadata !{i32 660, i32 0, metadata !1858, null}
!2566 = metadata !{i32 661, i32 0, metadata !1858, null}
!2567 = metadata !{i32 664, i32 0, metadata !1858, null}
!2568 = metadata !{i32 665, i32 0, metadata !2569, null}
!2569 = metadata !{i32 786443, metadata !1858, i32 664, i32 0, metadata !6, i32 142} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2570 = metadata !{i32 666, i32 0, metadata !2569, null}
!2571 = metadata !{i32 668, i32 0, metadata !1858, null}
!2572 = metadata !{i32 669, i32 0, metadata !2573, null}
!2573 = metadata !{i32 786443, metadata !1858, i32 668, i32 0, metadata !6, i32 143} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2574 = metadata !{i32 670, i32 0, metadata !2573, null}
!2575 = metadata !{i32 672, i32 0, metadata !2576, null}
!2576 = metadata !{i32 786443, metadata !1858, i32 671, i32 0, metadata !6, i32 144} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2577 = metadata !{i32 674, i32 0, metadata !1858, null}
!2578 = metadata !{i32 675, i32 0, metadata !2579, null}
!2579 = metadata !{i32 786443, metadata !1858, i32 674, i32 0, metadata !6, i32 145} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2580 = metadata !{i32 676, i32 0, metadata !2579, null}
!2581 = metadata !{i32 678, i32 0, metadata !1858, null}
!2582 = metadata !{i32 679, i32 0, metadata !2583, null}
!2583 = metadata !{i32 786443, metadata !1858, i32 678, i32 0, metadata !6, i32 146} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2584 = metadata !{i32 680, i32 0, metadata !2583, null}
!2585 = metadata !{i32 682, i32 0, metadata !1858, null}
!2586 = metadata !{i32 683, i32 0, metadata !2587, null}
!2587 = metadata !{i32 786443, metadata !1858, i32 682, i32 0, metadata !6, i32 147} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2588 = metadata !{i32 684, i32 0, metadata !2587, null}
!2589 = metadata !{i32 686, i32 0, metadata !1858, null}
!2590 = metadata !{i32 687, i32 0, metadata !2591, null}
!2591 = metadata !{i32 786443, metadata !1858, i32 686, i32 0, metadata !6, i32 148} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2592 = metadata !{i32 688, i32 0, metadata !2591, null}
!2593 = metadata !{i32 690, i32 0, metadata !2594, null}
!2594 = metadata !{i32 786443, metadata !1858, i32 689, i32 0, metadata !6, i32 149} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2595 = metadata !{i32 692, i32 0, metadata !1858, null}
!2596 = metadata !{i32 693, i32 0, metadata !2597, null}
!2597 = metadata !{i32 786443, metadata !1858, i32 692, i32 0, metadata !6, i32 150} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2598 = metadata !{i32 694, i32 0, metadata !2597, null}
!2599 = metadata !{i32 696, i32 0, metadata !1858, null}
!2600 = metadata !{i32 697, i32 0, metadata !2601, null}
!2601 = metadata !{i32 786443, metadata !1858, i32 696, i32 0, metadata !6, i32 151} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2602 = metadata !{i32 698, i32 0, metadata !2601, null}
!2603 = metadata !{i32 700, i32 0, metadata !1858, null}
!2604 = metadata !{i32 701, i32 0, metadata !2605, null}
!2605 = metadata !{i32 786443, metadata !1858, i32 700, i32 0, metadata !6, i32 152} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2606 = metadata !{i32 702, i32 0, metadata !2605, null}
!2607 = metadata !{i32 704, i32 0, metadata !2608, null}
!2608 = metadata !{i32 786443, metadata !1858, i32 703, i32 0, metadata !6, i32 153} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2609 = metadata !{i32 706, i32 0, metadata !1858, null}
!2610 = metadata !{i32 707, i32 0, metadata !2611, null}
!2611 = metadata !{i32 786443, metadata !1858, i32 706, i32 0, metadata !6, i32 154} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2612 = metadata !{i32 708, i32 0, metadata !2611, null}
!2613 = metadata !{i32 710, i32 0, metadata !1858, null}
!2614 = metadata !{i32 711, i32 0, metadata !2615, null}
!2615 = metadata !{i32 786443, metadata !1858, i32 710, i32 0, metadata !6, i32 155} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2616 = metadata !{i32 712, i32 0, metadata !2615, null}
!2617 = metadata !{i32 714, i32 0, metadata !1858, null}
!2618 = metadata !{i32 715, i32 0, metadata !2619, null}
!2619 = metadata !{i32 786443, metadata !1858, i32 714, i32 0, metadata !6, i32 156} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2620 = metadata !{i32 716, i32 0, metadata !2619, null}
!2621 = metadata !{i32 718, i32 0, metadata !1858, null}
!2622 = metadata !{i32 719, i32 0, metadata !2623, null}
!2623 = metadata !{i32 786443, metadata !1858, i32 718, i32 0, metadata !6, i32 157} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2624 = metadata !{i32 720, i32 0, metadata !2623, null}
!2625 = metadata !{i32 721, i32 0, metadata !1858, null}
!2626 = metadata !{i32 725, i32 0, metadata !1858, null}
!2627 = metadata !{i32 726, i32 0, metadata !2628, null}
!2628 = metadata !{i32 786443, metadata !1858, i32 725, i32 0, metadata !6, i32 159} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2629 = metadata !{i32 727, i32 0, metadata !2628, null}
!2630 = metadata !{i32 729, i32 0, metadata !1858, null}
!2631 = metadata !{i32 731, i32 0, metadata !1879, null}
!2632 = metadata !{i32 732, i32 0, metadata !1879, null}
!2633 = metadata !{i32 733, i32 0, metadata !1879, null}
!2634 = metadata !{i32 735, i32 0, metadata !1858, null}
!2635 = metadata !{i32 736, i32 0, metadata !2636, null}
!2636 = metadata !{i32 786443, metadata !1858, i32 735, i32 0, metadata !6, i32 161} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2637 = metadata !{i32 737, i32 0, metadata !2636, null}
!2638 = metadata !{i32 739, i32 0, metadata !1858, null}
!2639 = metadata !{i32 740, i32 0, metadata !2640, null}
!2640 = metadata !{i32 786443, metadata !1858, i32 739, i32 0, metadata !6, i32 162} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2641 = metadata !{i32 741, i32 0, metadata !2640, null}
!2642 = metadata !{i32 743, i32 0, metadata !1858, null}
!2643 = metadata !{i32 744, i32 0, metadata !2644, null}
!2644 = metadata !{i32 786443, metadata !1858, i32 743, i32 0, metadata !6, i32 163} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2645 = metadata !{i32 746, i32 0, metadata !1858, null}
!2646 = metadata !{i32 747, i32 0, metadata !2647, null}
!2647 = metadata !{i32 786443, metadata !1858, i32 746, i32 0, metadata !6, i32 164} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2648 = metadata !{i32 748, i32 0, metadata !2647, null}
!2649 = metadata !{i32 749, i32 0, metadata !1858, null}
!2650 = metadata !{i32 750, i32 0, metadata !2651, null}
!2651 = metadata !{i32 786443, metadata !1858, i32 749, i32 0, metadata !6, i32 165} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2652 = metadata !{i32 751, i32 0, metadata !2651, null}
!2653 = metadata !{i32 752, i32 0, metadata !1858, null}
!2654 = metadata !{i32 753, i32 0, metadata !1858, null}
!2655 = metadata !{i32 754, i32 0, metadata !2656, null}
!2656 = metadata !{i32 786443, metadata !1858, i32 753, i32 0, metadata !6, i32 166} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2657 = metadata !{i32 755, i32 0, metadata !2656, null}
!2658 = metadata !{i32 757, i32 0, metadata !1858, null}
!2659 = metadata !{i32 758, i32 0, metadata !2660, null}
!2660 = metadata !{i32 786443, metadata !1858, i32 757, i32 0, metadata !6, i32 167} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2661 = metadata !{i32 759, i32 0, metadata !2660, null}
!2662 = metadata !{i32 761, i32 0, metadata !1858, null}
!2663 = metadata !{i32 762, i32 0, metadata !2664, null}
!2664 = metadata !{i32 786443, metadata !1858, i32 761, i32 0, metadata !6, i32 168} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2665 = metadata !{i32 763, i32 0, metadata !2664, null}
!2666 = metadata !{i32 765, i32 0, metadata !1858, null}
!2667 = metadata !{i32 766, i32 0, metadata !2668, null}
!2668 = metadata !{i32 786443, metadata !1858, i32 765, i32 0, metadata !6, i32 169} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2669 = metadata !{i64 0, i64 4, metadata !2042, i64 4, i64 4, metadata !2038, i64 8, i64 4, metadata !2038, i64 12, i64 4, metadata !2038, i64 16, i64 4, metadata !2038}
!2670 = metadata !{i32 767, i32 0, metadata !2668, null}
!2671 = metadata !{i32 768, i32 0, metadata !1858, null}
!2672 = metadata !{i32 769, i32 0, metadata !2673, null}
!2673 = metadata !{i32 786443, metadata !1858, i32 768, i32 0, metadata !6, i32 170} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2674 = metadata !{i32 770, i32 0, metadata !2673, null}
!2675 = metadata !{i32 772, i32 0, metadata !1858, null}
!2676 = metadata !{i32 773, i32 0, metadata !2677, null}
!2677 = metadata !{i32 786443, metadata !1858, i32 772, i32 0, metadata !6, i32 171} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2678 = metadata !{i32 774, i32 0, metadata !2677, null}
!2679 = metadata !{i32 777, i32 0, metadata !1858, null}
!2680 = metadata !{i32 778, i32 0, metadata !2681, null}
!2681 = metadata !{i32 786443, metadata !1858, i32 777, i32 0, metadata !6, i32 172} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2682 = metadata !{i32 779, i32 0, metadata !2681, null}
!2683 = metadata !{i32 781, i32 0, metadata !1858, null}
!2684 = metadata !{i32 782, i32 0, metadata !2685, null}
!2685 = metadata !{i32 786443, metadata !1858, i32 781, i32 0, metadata !6, i32 173} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2686 = metadata !{i32 783, i32 0, metadata !2685, null}
!2687 = metadata !{i32 785, i32 0, metadata !1858, null}
!2688 = metadata !{i32 786, i32 0, metadata !2689, null}
!2689 = metadata !{i32 786443, metadata !1858, i32 785, i32 0, metadata !6, i32 174} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2690 = metadata !{i32 787, i32 0, metadata !2689, null}
!2691 = metadata !{i32 789, i32 0, metadata !1858, null}
!2692 = metadata !{i32 790, i32 0, metadata !1858, null}
!2693 = metadata !{i32 791, i32 0, metadata !1858, null}
!2694 = metadata !{i32 792, i32 0, metadata !1858, null}
!2695 = metadata !{i32 795, i32 0, metadata !1858, null}
!2696 = metadata !{i32 796, i32 0, metadata !2697, null}
!2697 = metadata !{i32 786443, metadata !1858, i32 795, i32 0, metadata !6, i32 176} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2698 = metadata !{i32 797, i32 0, metadata !2697, null}
!2699 = metadata !{i32 798, i32 0, metadata !1858, null}
!2700 = metadata !{i32 799, i32 0, metadata !2701, null}
!2701 = metadata !{i32 786443, metadata !1858, i32 798, i32 0, metadata !6, i32 177} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2702 = metadata !{i32 800, i32 0, metadata !2701, null}
!2703 = metadata !{i32 801, i32 0, metadata !2701, null}
!2704 = metadata !{i32 802, i32 0, metadata !1858, null}
!2705 = metadata !{i32 803, i32 0, metadata !2706, null}
!2706 = metadata !{i32 786443, metadata !1858, i32 802, i32 0, metadata !6, i32 178} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2707 = metadata !{i32 804, i32 0, metadata !2706, null}
!2708 = metadata !{i32 805, i32 0, metadata !2709, null}
!2709 = metadata !{i32 786443, metadata !2706, i32 804, i32 0, metadata !6, i32 179} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2710 = metadata !{i32 806, i32 0, metadata !2709, null}
!2711 = metadata !{i32 814, i32 0, metadata !1880, metadata !2712}
!2712 = metadata !{i32 808, i32 0, metadata !1858, null}
!2713 = metadata !{i32 786689, metadata !1880, metadata !"cf", metadata !6, i32 16778030, metadata !11, i32 0, metadata !2712} ; [ DW_TAG_arg_variable ] [cf] [line 814]
!2714 = metadata !{i32 821, i32 0, metadata !1889, metadata !2712}
!2715 = metadata !{i32 823, i32 0, metadata !1889, metadata !2712}
!2716 = metadata !{i32 826, i32 0, metadata !1889, metadata !2712}
!2717 = metadata !{i32 828, i32 0, metadata !1889, metadata !2712}
!2718 = metadata !{i32 830, i32 0, metadata !1889, metadata !2712}
!2719 = metadata !{i32 831, i32 0, metadata !2720, metadata !2712}
!2720 = metadata !{i32 786443, metadata !1889, i32 830, i32 0, metadata !6, i32 182} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2721 = metadata !{i32 832, i32 0, metadata !2720, metadata !2712}
!2722 = metadata !{i32 836, i32 0, metadata !2723, metadata !2712}
!2723 = metadata !{i32 786443, metadata !2720, i32 835, i32 0, metadata !6, i32 183} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2724 = metadata !{i32 837, i32 0, metadata !2723, metadata !2712}
!2725 = metadata !{i32 838, i32 0, metadata !2723, metadata !2712}
!2726 = metadata !{i32 839, i32 0, metadata !2723, metadata !2712}
!2727 = metadata !{i32 840, i32 0, metadata !2723, metadata !2712}
!2728 = metadata !{i32 841, i32 0, metadata !2723, metadata !2712}
!2729 = metadata !{i32 844, i32 0, metadata !1889, metadata !2712}
!2730 = metadata !{i32 848, i32 0, metadata !2731, metadata !2712}
!2731 = metadata !{i32 786443, metadata !1889, i32 847, i32 0, metadata !6, i32 184} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2732 = metadata !{i32 849, i32 0, metadata !2731, metadata !2712}
!2733 = metadata !{i32 851, i32 0, metadata !1889, metadata !2712}
!2734 = metadata !{i32 852, i32 0, metadata !1889, metadata !2712}
!2735 = metadata !{i32 855, i32 0, metadata !1889, metadata !2712}
!2736 = metadata !{i32 856, i32 0, metadata !1889, metadata !2712}
!2737 = metadata !{i32 859, i32 0, metadata !1889, metadata !2712}
!2738 = metadata !{i32 4}
!2739 = metadata !{i32 786689, metadata !1931, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !2737} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2740 = metadata !{i32 32, i32 0, metadata !1931, metadata !2737}
!2741 = metadata !{i32 39, i32 0, metadata !2742, metadata !2737}
!2742 = metadata !{i32 786443, metadata !1931, i32 33, i32 0, metadata !21, i32 213} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!2743 = metadata !{i32 40, i32 0, metadata !2742, metadata !2737}
!2744 = metadata !{i32 41, i32 0, metadata !2742, metadata !2737}
!2745 = metadata !{i32 42, i32 0, metadata !2742, metadata !2737}
!2746 = metadata !{i32 44, i32 0, metadata !2742, metadata !2737}
!2747 = metadata !{i32 45, i32 0, metadata !2742, metadata !2737}
!2748 = metadata !{i32 862, i32 0, metadata !1889, metadata !2712}
!2749 = metadata !{i32 863, i32 0, metadata !2750, metadata !2712}
!2750 = metadata !{i32 786443, metadata !1889, i32 862, i32 0, metadata !6, i32 188} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2751 = metadata !{i32 786688, metadata !1889, metadata !"src", metadata !6, i32 827, metadata !1907, i32 0, metadata !2712} ; [ DW_TAG_auto_variable ] [src] [line 827]
!2752 = metadata !{i32 864, i32 0, metadata !2750, metadata !2712}
!2753 = metadata !{i32 786688, metadata !1889, metadata !"nsrc", metadata !6, i32 820, metadata !26, i32 0, metadata !2712} ; [ DW_TAG_auto_variable ] [nsrc] [line 820]
!2754 = metadata !{i32 865, i32 0, metadata !2750, metadata !2712}
!2755 = metadata !{i32 871, i32 0, metadata !1889, metadata !2712}
!2756 = metadata !{i32 874, i32 0, metadata !1923, metadata !2712}
!2757 = metadata !{i32 786689, metadata !1931, metadata !"n", metadata !21, i32 50331680, metadata !26, i32 0, metadata !2756} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2758 = metadata !{i32 32, i32 0, metadata !1931, metadata !2756}
!2759 = metadata !{i32 39, i32 0, metadata !2742, metadata !2756}
!2760 = metadata !{i32 40, i32 0, metadata !2742, metadata !2756}
!2761 = metadata !{i32 41, i32 0, metadata !2742, metadata !2756}
!2762 = metadata !{i32 42, i32 0, metadata !2742, metadata !2756}
!2763 = metadata !{i32 44, i32 0, metadata !2742, metadata !2756}
!2764 = metadata !{i32 45, i32 0, metadata !2742, metadata !2756}
!2765 = metadata !{i32 877, i32 0, metadata !2766, metadata !2712}
!2766 = metadata !{i32 786443, metadata !1923, i32 877, i32 0, metadata !6, i32 192} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2767 = metadata !{i32 886, i32 0, metadata !2768, metadata !2712}
!2768 = metadata !{i32 786443, metadata !1923, i32 885, i32 0, metadata !6, i32 195} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2769 = metadata !{i32 887, i32 0, metadata !2768, metadata !2712}
!2770 = metadata !{i32 885, i32 0, metadata !1923, metadata !2712}
!2771 = metadata !{i32 878, i32 0, metadata !2772, metadata !2712}
!2772 = metadata !{i32 786443, metadata !2766, i32 877, i32 0, metadata !6, i32 193} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2773 = metadata !{i32 879, i32 0, metadata !2772, metadata !2712}
!2774 = metadata !{i32 882, i32 0, metadata !2772, metadata !2712}
!2775 = metadata !{i64 0, i64 4, metadata !2042, i64 4, i64 4, metadata !2038, i64 8, i64 4, metadata !2042, i64 12, i64 4, metadata !2038, i64 16, i64 4, metadata !2042}
!2776 = metadata !{i32 888, i32 0, metadata !2777, metadata !2712}
!2777 = metadata !{i32 786443, metadata !2768, i32 888, i32 0, metadata !6, i32 196} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2778 = metadata !{i32 889, i32 0, metadata !2779, metadata !2712}
!2779 = metadata !{i32 786443, metadata !2777, i32 888, i32 0, metadata !6, i32 197} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2780 = metadata !{i32 893, i32 0, metadata !2768, metadata !2712}
!2781 = metadata !{i32 894, i32 0, metadata !2768, metadata !2712}
!2782 = metadata !{i32 897, i32 0, metadata !2768, metadata !2712}
!2783 = metadata !{i32 898, i32 0, metadata !2768, metadata !2712}
!2784 = metadata !{i32 899, i32 0, metadata !2768, metadata !2712}
!2785 = metadata !{i32 901, i32 0, metadata !2768, metadata !2712}
!2786 = metadata !{i32 786688, metadata !1923, metadata !"h", metadata !6, i32 872, metadata !1924, i32 0, metadata !2712} ; [ DW_TAG_auto_variable ] [h] [line 872]
!2787 = metadata !{i32 786688, metadata !1889, metadata !"i", metadata !6, i32 819, metadata !26, i32 0, metadata !2712} ; [ DW_TAG_auto_variable ] [i] [line 819]
!2788 = metadata !{i32 907, i32 0, metadata !2789, metadata !2712}
!2789 = metadata !{i32 786443, metadata !1889, i32 907, i32 0, metadata !6, i32 200} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2790 = metadata !{i32 943, i32 0, metadata !2791, metadata !2712}
!2791 = metadata !{i32 786443, metadata !2789, i32 907, i32 0, metadata !6, i32 201} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2792 = metadata !{i32 944, i32 0, metadata !2791, metadata !2712}
!2793 = metadata !{i32 945, i32 0, metadata !2791, metadata !2712}
!2794 = metadata !{i32 946, i32 0, metadata !2791, metadata !2712}
!2795 = metadata !{i32 947, i32 0, metadata !2791, metadata !2712}
!2796 = metadata !{i32 908, i32 0, metadata !2791, metadata !2712}
!2797 = metadata !{i32 909, i32 0, metadata !2798, metadata !2712}
!2798 = metadata !{i32 786443, metadata !2791, i32 908, i32 0, metadata !6, i32 202} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/modules/ngx_http_scgi_module.c]
!2799 = metadata !{i32 910, i32 0, metadata !2798, metadata !2712}
!2800 = metadata !{i32 913, i32 0, metadata !2798, metadata !2712}
!2801 = metadata !{i32 914, i32 0, metadata !2798, metadata !2712}
!2802 = metadata !{i32 915, i32 0, metadata !2798, metadata !2712}
!2803 = metadata !{i32 916, i32 0, metadata !2798, metadata !2712}
!2804 = metadata !{i32 917, i32 0, metadata !2798, metadata !2712}
!2805 = metadata !{i32 921, i32 0, metadata !2791, metadata !2712}
!2806 = metadata !{i32 922, i32 0, metadata !2791, metadata !2712}
!2807 = metadata !{i32 925, i32 0, metadata !2791, metadata !2712}
!2808 = metadata !{i32 926, i32 0, metadata !2791, metadata !2712}
!2809 = metadata !{i32 927, i32 0, metadata !2791, metadata !2712}
!2810 = metadata !{i32 928, i32 0, metadata !2791, metadata !2712}
!2811 = metadata !{i32 931, i32 0, metadata !2791, metadata !2712}
!2812 = metadata !{i32 932, i32 0, metadata !2791, metadata !2712}
!2813 = metadata !{i32 933, i32 0, metadata !2791, metadata !2712}
!2814 = metadata !{i32 786688, metadata !1889, metadata !"size", metadata !6, i32 817, metadata !30, i32 0, metadata !2712} ; [ DW_TAG_auto_variable ] [size] [line 817]
!2815 = metadata !{i32 934, i32 0, metadata !2791, metadata !2712}
!2816 = metadata !{i32 935, i32 0, metadata !2791, metadata !2712}
!2817 = metadata !{i32 938, i32 0, metadata !2791, metadata !2712}
!2818 = metadata !{i32 939, i32 0, metadata !2791, metadata !2712}
!2819 = metadata !{i32 940, i32 0, metadata !2791, metadata !2712}
!2820 = metadata !{i32 786688, metadata !1889, metadata !"p", metadata !6, i32 816, metadata !44, i32 0, metadata !2712} ; [ DW_TAG_auto_variable ] [p] [line 816]
!2821 = metadata !{i32 941, i32 0, metadata !2791, metadata !2712}
!2822 = metadata !{i32 942, i32 0, metadata !2791, metadata !2712}
!2823 = metadata !{i32 948, i32 0, metadata !2791, metadata !2712}
!2824 = metadata !{i32 951, i32 0, metadata !2791, metadata !2712}
!2825 = metadata !{i32 952, i32 0, metadata !2791, metadata !2712}
!2826 = metadata !{i32 955, i32 0, metadata !2791, metadata !2712}
!2827 = metadata !{i32 956, i32 0, metadata !2791, metadata !2712}
!2828 = metadata !{i32 957, i32 0, metadata !2791, metadata !2712}
!2829 = metadata !{i32 960, i32 0, metadata !2791, metadata !2712}
!2830 = metadata !{i32 961, i32 0, metadata !2791, metadata !2712}
!2831 = metadata !{i32 962, i32 0, metadata !1889, metadata !2712}
!2832 = metadata !{i32 963, i32 0, metadata !1889, metadata !2712}
!2833 = metadata !{i32 966, i32 0, metadata !1889, metadata !2712}
!2834 = metadata !{i32 967, i32 0, metadata !1889, metadata !2712}
!2835 = metadata !{i32 968, i32 0, metadata !1889, metadata !2712}
!2836 = metadata !{i32 971, i32 0, metadata !1889, metadata !2712}
!2837 = metadata !{i32 972, i32 0, metadata !1889, metadata !2712}
!2838 = metadata !{i32 973, i32 0, metadata !1889, metadata !2712}
!2839 = metadata !{i32 974, i32 0, metadata !1889, metadata !2712}
!2840 = metadata !{i32 975, i32 0, metadata !1889, metadata !2712}
!2841 = metadata !{i32 976, i32 0, metadata !1889, metadata !2712}
!2842 = metadata !{i32 977, i32 0, metadata !1889, metadata !2712}
!2843 = metadata !{i32 978, i32 0, metadata !1889, metadata !2712}
!2844 = metadata !{i32 979, i32 0, metadata !1889, metadata !2712}
!2845 = metadata !{i32 980, i32 0, metadata !1889, metadata !2712}
!2846 = metadata !{i32 981, i32 0, metadata !1889, metadata !2712}
!2847 = metadata !{i32 812, i32 0, metadata !1858, null}
