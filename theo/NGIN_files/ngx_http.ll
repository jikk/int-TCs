; ModuleID = 'src/http/ngx_http.c'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64-f80:32:32-n8:16:32-S128"
target triple = "i386-pc-linux-gnu"

%struct.ngx_str_t = type { i32, i8* }
%struct.ngx_core_module_t = type { %struct.ngx_str_t, i8* (%struct.ngx_cycle_s*)*, i8* (%struct.ngx_cycle_s*, i8*)* }
%struct.ngx_cycle_s = type { i8****, %struct.ngx_pool_s*, %struct.ngx_log_s*, %struct.ngx_log_s, %struct.ngx_connection_s**, %struct.ngx_connection_s*, i32, %struct.ngx_queue_s, %struct.ngx_array_s, %struct.ngx_array_s, %struct.ngx_list_t, %struct.ngx_list_t, i32, i32, %struct.ngx_connection_s*, %struct.ngx_event_s*, %struct.ngx_event_s*, %struct.ngx_cycle_s*, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_str_t }
%struct.ngx_pool_s = type { %struct.ngx_pool_data_t, i32, %struct.ngx_pool_s*, %struct.ngx_chain_s*, %struct.ngx_pool_large_s*, %struct.ngx_pool_cleanup_s*, %struct.ngx_log_s* }
%struct.ngx_pool_data_t = type { i8*, i8*, %struct.ngx_pool_s*, i32 }
%struct.ngx_chain_s = type { %struct.ngx_buf_s*, %struct.ngx_chain_s* }
%struct.ngx_buf_s = type { i8*, i8*, i64, i64, i8*, i8*, i8*, %struct.ngx_file_s*, %struct.ngx_buf_s*, i8, i8, i32 }
%struct.ngx_file_s = type { i32, %struct.ngx_str_t, %struct.stat, i64, i64, %struct.ngx_log_s*, i8 }
%struct.stat = type { i64, i16, i32, i32, i32, i32, i32, i64, i16, i64, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, i64 }
%struct.timespec = type { i32, i32 }
%struct.ngx_log_s = type { i32, %struct.ngx_open_file_s*, i32, i8* (%struct.ngx_log_s*, i8*, i32)*, i8*, i8* }
%struct.ngx_open_file_s = type { i32, %struct.ngx_str_t, i8*, i8*, i8* }
%struct.ngx_pool_large_s = type { %struct.ngx_pool_large_s*, i8* }
%struct.ngx_pool_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_pool_cleanup_s* }
%struct.ngx_connection_s = type { i8*, %struct.ngx_event_s*, %struct.ngx_event_s*, i32, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, i8*, i32)*, i32 (%struct.ngx_connection_s*, %struct.ngx_chain_s*)*, %struct.ngx_chain_s* (%struct.ngx_connection_s*, %struct.ngx_chain_s*, i64)*, %struct.ngx_listening_s*, i64, %struct.ngx_log_s*, %struct.ngx_pool_s*, %struct.sockaddr*, i32, %struct.ngx_str_t, %struct.sockaddr*, %struct.ngx_buf_s*, %struct.ngx_queue_s, i32, i32, i8, i8, i8, i8 }
%struct.ngx_event_s = type { i8*, i8, i8, i8, void (%struct.ngx_event_s*)*, i32, %struct.ngx_log_s*, %struct.ngx_rbtree_node_s, i8, %struct.ngx_event_s*, %struct.ngx_event_s** }
%struct.ngx_rbtree_node_s = type { i32, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, %struct.ngx_rbtree_node_s*, i8, i8 }
%struct.ngx_listening_s = type { i32, %struct.sockaddr*, i32, i32, %struct.ngx_str_t, i32, i32, i32, i32, i32, i32, i32, void (%struct.ngx_connection_s*)*, i8*, %struct.ngx_log_s, %struct.ngx_log_s*, i32, i32, i32, %struct.ngx_listening_s*, %struct.ngx_connection_s*, i8, i8 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ngx_queue_s = type { %struct.ngx_queue_s*, %struct.ngx_queue_s* }
%struct.ngx_array_s = type { i8*, i32, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_t = type { %struct.ngx_list_part_s*, %struct.ngx_list_part_s, i32, i32, %struct.ngx_pool_s* }
%struct.ngx_list_part_s = type { i8*, i32, %struct.ngx_list_part_s* }
%struct.ngx_command_s = type { %struct.ngx_str_t, i32, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)*, i32, i32, i8* }
%struct.ngx_conf_s = type { i8*, %struct.ngx_array_s*, %struct.ngx_cycle_s*, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_conf_file_t*, %struct.ngx_log_s*, i8*, i32, i32, {}*, i8* }
%struct.ngx_conf_file_t = type { %struct.ngx_file_s, %struct.ngx_buf_s*, i32 }
%struct.ngx_module_s = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.ngx_command_s*, i32, i32 (%struct.ngx_log_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, i32 (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, void (%struct.ngx_cycle_s*)*, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.ngx_http_core_loc_conf_s = type { %struct.ngx_str_t, %struct.ngx_http_regex_t*, i8, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s**, i8**, i32, i8**, i32 (%struct.ngx_http_request_s*)*, i32, %struct.ngx_str_t, %struct.ngx_str_t, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_hash_t, %struct.ngx_str_t, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_resolver_t*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ngx_array_s*, i32, %struct.ngx_http_complex_value_t*, %struct.ngx_array_s*, %struct.ngx_http_try_file_t*, %struct.ngx_path_t*, %struct.ngx_open_file_cache_t*, i32, i32, i32, i32, %struct.ngx_log_s*, i32, i32, %struct.ngx_queue_s* }
%struct.ngx_http_location_tree_node_s = type { %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_location_tree_node_s*, %struct.ngx_http_core_loc_conf_s*, %struct.ngx_http_core_loc_conf_s*, i8, i8, [1 x i8] }
%struct.ngx_http_complex_value_t = type { %struct.ngx_str_t, i32*, i8*, i8* }
%struct.ngx_http_try_file_t = type { %struct.ngx_array_s*, %struct.ngx_array_s*, %struct.ngx_str_t, [2 x i8] }
%struct.ngx_open_file_cache_t = type { %struct.ngx_rbtree_s, %struct.ngx_rbtree_node_s, %struct.ngx_queue_s, i32, i32, i32 }
%struct.ngx_variable_value_t = type { [4 x i8], i8* }
%struct.ngx_http_connection_t = type { %struct.ngx_http_request_s*, %struct.ngx_buf_s**, i32, %struct.ngx_buf_s**, i32, i32 }
%struct.ngx_http_cleanup_s = type { void (i8*)*, i8*, %struct.ngx_http_cleanup_s* }
%struct.ngx_http_header_t = type { %struct.ngx_str_t, i32, i32 (%struct.ngx_http_request_s*, %struct.ngx_table_elt_t*, i32)* }
%struct.ngx_http_listen_opt_t = type { %union.anon, i32, i8, i32, i32, i32, i32, i32, i32, i32, [114 x i8] }
%union.anon = type { %struct.sockaddr_in, [96 x i8] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.ngx_http_conf_port_t = type { i32, i16, %struct.ngx_array_s }
%struct.ngx_http_conf_addr_t = type { %struct.ngx_http_listen_opt_t, %struct.ngx_hash_t, %struct.ngx_hash_wildcard_t*, %struct.ngx_hash_wildcard_t*, i32, %struct.ngx_http_server_name_s*, %struct.ngx_http_core_srv_conf_t*, %struct.ngx_array_s }
%struct.ngx_hash_key_t = type { %struct.ngx_str_t, i32, i8* }
%struct.ngx_hash_init_t = type { %struct.ngx_hash_t*, i32 (i8*, i32)*, i32, i32, i8*, %struct.ngx_pool_s*, %struct.ngx_pool_s* }
%struct.ngx_hash_keys_arrays_t = type { i32, %struct.ngx_pool_s*, %struct.ngx_pool_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s*, %struct.ngx_array_s, %struct.ngx_array_s* }
%struct.ngx_http_core_main_conf_t = type { %struct.ngx_array_s, %struct.ngx_http_phase_engine_t, %struct.ngx_hash_t, %struct.ngx_hash_t, %struct.ngx_array_s, i32, i32, i32, i32, i32, %struct.ngx_hash_keys_arrays_t*, %struct.ngx_array_s*, i32, [11 x %struct.ngx_http_phase_t] }
%struct.ngx_http_phase_engine_t = type { %struct.ngx_http_phase_handler_s*, i32, i32 }
%struct.ngx_http_phase_handler_s = type { i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)*, i32 (%struct.ngx_http_request_s*)*, i32 }
%struct.ngx_http_phase_t = type { %struct.ngx_array_s }
%struct.ngx_http_module_t = type { i32 (%struct.ngx_conf_s*)*, i32 (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*, i8*)*, i8* (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*, i8*, i8*)*, i8* (%struct.ngx_conf_s*)*, i8* (%struct.ngx_conf_s*, i8*, i8*)* }
%struct.ngx_http_in_addr_t = type { i32, %struct.ngx_http_addr_conf_t }
%struct.ngx_http_addr_conf_t = type { %struct.ngx_http_core_srv_conf_t*, %struct.ngx_http_virtual_names_t* }

@.str = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@ngx_http_html_default_types = global [2 x %struct.ngx_str_t] [%struct.ngx_str_t { i32 9, i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0) }, %struct.ngx_str_t zeroinitializer], align 4
@ngx_http_module_ctx = internal global %struct.ngx_core_module_t { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0) }, i8* (%struct.ngx_cycle_s*)* null, i8* (%struct.ngx_cycle_s*, i8*)* null }, align 4
@ngx_http_commands = internal global [2 x %struct.ngx_command_s] [%struct.ngx_command_s { %struct.ngx_str_t { i32 4, i8* getelementptr inbounds ([5 x i8]* @.str6, i32 0, i32 0) }, i32 16777473, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_block, i32 0, i32 0, i8* null }, %struct.ngx_command_s zeroinitializer], align 4
@ngx_http_module = global %struct.ngx_module_s { i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i8* bitcast (%struct.ngx_core_module_t* @ngx_http_module_ctx to i8*), %struct.ngx_command_s* getelementptr inbounds ([2 x %struct.ngx_command_s]* @ngx_http_commands, i32 0, i32 0), i32 1163022147, i32 (%struct.ngx_log_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, i32 (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, void (%struct.ngx_cycle_s*)* null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@ngx_http_core_module = external global %struct.ngx_module_s
@.str1 = private unnamed_addr constant [25 x i8] c"duplicate MIME type \22%V\22\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"test_types_hash\00", align 1
@ngx_http_max_module = common global i32 0, align 4
@ngx_http_top_header_filter = common global i32 (%struct.ngx_http_request_s*)* null, align 4
@ngx_http_top_body_filter = common global i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)* null, align 4
@.str3 = private unnamed_addr constant [22 x i8] c"a duplicate listen %s\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"duplicate listen options for %s\00", align 1
@.str5 = private unnamed_addr constant [34 x i8] c"a duplicate default server for %s\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@ngx_modules = external global [0 x %struct.ngx_module_s*]
@.str7 = private unnamed_addr constant [43 x i8] c"invalid server name or wildcard \22%V\22 on %s\00", align 1
@.str8 = private unnamed_addr constant [44 x i8] c"conflicting server name \22%V\22 on %s, ignored\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c"server_names_hash\00", align 1
@0 = internal unnamed_addr constant [11 x i8] c"ngx_uint_t\00"
@1 = internal unnamed_addr constant [3 x i8] c"+=\00"
@2 = internal unnamed_addr constant [10 x i8] c"ngx_int_t\00"
@3 = internal unnamed_addr constant [4 x i8] c"int\00"
@4 = internal unnamed_addr constant [9 x i8] c"unary --\00"
@ngx_http_headers_in = external global [0 x %struct.ngx_http_header_t]
@ngx_cacheline_size = external global i32
@.str10 = private unnamed_addr constant [16 x i8] c"headers_in_hash\00", align 1
@5 = internal unnamed_addr constant [2 x i8] c"-\00"
@6 = internal unnamed_addr constant [7 x i8] c"size_t\00"
@7 = internal unnamed_addr constant [13 x i8] c"unsigned int\00"
@8 = internal unnamed_addr constant [7 x i8] c"u_char\00"
@9 = internal unnamed_addr constant [14 x i8] c"unsigned char\00"
@.str11 = private unnamed_addr constant [34 x i8] c"duplicate location \22%V\22 in %s:%ui\00", align 1
@10 = internal unnamed_addr constant [2 x i8] c"+\00"
@11 = internal unnamed_addr constant [2 x i8] c"*\00"
@12 = internal unnamed_addr constant [9 x i8] c"unary ++\00"
@13 = internal unnamed_addr constant [20 x i8] c"src/http/ngx_http.c\00"

define i32 @ngx_http_add_location(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_queue_s** nocapture %locations, %struct.ngx_http_core_loc_conf_s* %clcf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1582), !dbg !2245
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s** %locations}, i64 0, metadata !1583), !dbg !2245
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %clcf}, i64 0, metadata !1584), !dbg !2245
  %0 = load %struct.ngx_queue_s** %locations, align 4, !dbg !2246, !tbaa !2247
  %cmp = icmp eq %struct.ngx_queue_s* %0, null, !dbg !2246
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2250
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2246

if.then:                                          ; preds = %entry
  %1 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2250, !tbaa !2247
  %call = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %1, i32 36) nounwind, !dbg !2250
  %2 = bitcast i8* %call to %struct.ngx_queue_s*, !dbg !2250
  store %struct.ngx_queue_s* %2, %struct.ngx_queue_s** %locations, align 4, !dbg !2250, !tbaa !2247
  %cmp1 = icmp eq i8* %call, null, !dbg !2252
  br i1 %cmp1, label %return, label %if.end, !dbg !2252

if.end:                                           ; preds = %if.then
  %prev = bitcast i8* %call to %struct.ngx_queue_s**, !dbg !2253
  store %struct.ngx_queue_s* %2, %struct.ngx_queue_s** %prev, align 4, !dbg !2253, !tbaa !2247
  %3 = load %struct.ngx_queue_s** %locations, align 4, !dbg !2254, !tbaa !2247
  %next = getelementptr inbounds %struct.ngx_queue_s* %3, i32 0, i32 1, !dbg !2254
  store %struct.ngx_queue_s* %3, %struct.ngx_queue_s** %next, align 4, !dbg !2254, !tbaa !2247
  br label %if.end3, !dbg !2255

if.end3:                                          ; preds = %entry, %if.end
  %4 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2256, !tbaa !2247
  %call5 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %4, i32 36) nounwind, !dbg !2256
  %cmp6 = icmp eq i8* %call5, null, !dbg !2257
  br i1 %cmp6, label %return, label %if.end10, !dbg !2257

if.end10:                                         ; preds = %if.end3
  %5 = getelementptr %struct.ngx_http_core_loc_conf_s* %clcf, i32 0, i32 2, !dbg !2258
  %6 = bitcast i8* %5 to i32*, !dbg !2258
  %7 = load i32* %6, align 4, !dbg !2258
  %bf.clear = and i32 %7, 8, !dbg !2258
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !2258
  br i1 %tobool, label %lor.lhs.false, label %if.then28, !dbg !2258

lor.lhs.false:                                    ; preds = %if.end10
  %regex = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %clcf, i32 0, i32 1, !dbg !2258
  %8 = load %struct.ngx_http_regex_t** %regex, align 4, !dbg !2258, !tbaa !2247
  %tobool13 = icmp eq %struct.ngx_http_regex_t* %8, null, !dbg !2258
  br i1 %tobool13, label %cont19, label %if.then28, !dbg !2258

cont19:                                           ; preds = %lor.lhs.false
  %9 = and i32 %7, 5, !dbg !2258
  %10 = icmp eq i32 %9, 0, !dbg !2258
  br i1 %10, label %if.else, label %if.then28, !dbg !2258

if.then28:                                        ; preds = %cont19, %lor.lhs.false, %if.end10
  %exact = getelementptr inbounds i8* %call5, i32 8, !dbg !2259
  %11 = bitcast i8* %exact to %struct.ngx_http_core_loc_conf_s**, !dbg !2259
  store %struct.ngx_http_core_loc_conf_s* %clcf, %struct.ngx_http_core_loc_conf_s** %11, align 4, !dbg !2259, !tbaa !2247
  %inclusive = getelementptr inbounds i8* %call5, i32 12, !dbg !2261
  %12 = bitcast i8* %inclusive to %struct.ngx_http_core_loc_conf_s**, !dbg !2261
  store %struct.ngx_http_core_loc_conf_s* null, %struct.ngx_http_core_loc_conf_s** %12, align 4, !dbg !2261, !tbaa !2247
  br label %if.end31, !dbg !2262

if.else:                                          ; preds = %cont19
  %exact29 = getelementptr inbounds i8* %call5, i32 8, !dbg !2263
  %13 = bitcast i8* %exact29 to %struct.ngx_http_core_loc_conf_s**, !dbg !2263
  store %struct.ngx_http_core_loc_conf_s* null, %struct.ngx_http_core_loc_conf_s** %13, align 4, !dbg !2263, !tbaa !2247
  %inclusive30 = getelementptr inbounds i8* %call5, i32 12, !dbg !2265
  %14 = bitcast i8* %inclusive30 to %struct.ngx_http_core_loc_conf_s**, !dbg !2265
  store %struct.ngx_http_core_loc_conf_s* %clcf, %struct.ngx_http_core_loc_conf_s** %14, align 4, !dbg !2265, !tbaa !2247
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then28
  %name = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %clcf, i32 0, i32 0, !dbg !2266
  %name32 = getelementptr inbounds i8* %call5, i32 16, !dbg !2266
  %15 = bitcast i8* %name32 to %struct.ngx_str_t**, !dbg !2266
  store %struct.ngx_str_t* %name, %struct.ngx_str_t** %15, align 4, !dbg !2266, !tbaa !2247
  %conf_file = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 5, !dbg !2267
  %16 = load %struct.ngx_conf_file_t** %conf_file, align 4, !dbg !2267, !tbaa !2247
  %data = getelementptr inbounds %struct.ngx_conf_file_t* %16, i32 0, i32 0, i32 1, i32 1, !dbg !2267
  %17 = load i8** %data, align 4, !dbg !2267, !tbaa !2247
  %file_name = getelementptr inbounds i8* %call5, i32 20, !dbg !2267
  %18 = bitcast i8* %file_name to i8**, !dbg !2267
  store i8* %17, i8** %18, align 4, !dbg !2267, !tbaa !2247
  %19 = load %struct.ngx_conf_file_t** %conf_file, align 4, !dbg !2268, !tbaa !2247
  %line = getelementptr inbounds %struct.ngx_conf_file_t* %19, i32 0, i32 2, !dbg !2268
  %20 = load i32* %line, align 4, !dbg !2268, !tbaa !2269
  %line35 = getelementptr inbounds i8* %call5, i32 24, !dbg !2268
  %21 = bitcast i8* %line35 to i32*, !dbg !2268
  store i32 %20, i32* %21, align 4, !dbg !2268, !tbaa !2269
  %list = getelementptr inbounds i8* %call5, i32 28, !dbg !2270
  %22 = bitcast i8* %list to %struct.ngx_queue_s*, !dbg !2270
  %prev37 = bitcast i8* %list to %struct.ngx_queue_s**, !dbg !2270
  store %struct.ngx_queue_s* %22, %struct.ngx_queue_s** %prev37, align 4, !dbg !2270, !tbaa !2247
  %next40 = getelementptr inbounds i8* %call5, i32 32, !dbg !2271
  %23 = bitcast i8* %next40 to %struct.ngx_queue_s**, !dbg !2271
  store %struct.ngx_queue_s* %22, %struct.ngx_queue_s** %23, align 4, !dbg !2271, !tbaa !2247
  %24 = load %struct.ngx_queue_s** %locations, align 4, !dbg !2272, !tbaa !2247
  %prev41 = getelementptr inbounds %struct.ngx_queue_s* %24, i32 0, i32 0, !dbg !2272
  %25 = load %struct.ngx_queue_s** %prev41, align 4, !dbg !2272, !tbaa !2247
  %queue = bitcast i8* %call5 to %struct.ngx_queue_s*, !dbg !2272
  %prev42 = bitcast i8* %call5 to %struct.ngx_queue_s**, !dbg !2272
  store %struct.ngx_queue_s* %25, %struct.ngx_queue_s** %prev42, align 4, !dbg !2272, !tbaa !2247
  %next46 = getelementptr inbounds %struct.ngx_queue_s* %25, i32 0, i32 1, !dbg !2273
  store %struct.ngx_queue_s* %queue, %struct.ngx_queue_s** %next46, align 4, !dbg !2273, !tbaa !2247
  %26 = load %struct.ngx_queue_s** %locations, align 4, !dbg !2274, !tbaa !2247
  %next48 = getelementptr inbounds i8* %call5, i32 4, !dbg !2274
  %27 = bitcast i8* %next48 to %struct.ngx_queue_s**, !dbg !2274
  store %struct.ngx_queue_s* %26, %struct.ngx_queue_s** %27, align 4, !dbg !2274, !tbaa !2247
  %28 = load %struct.ngx_queue_s** %locations, align 4, !dbg !2275, !tbaa !2247
  %prev50 = getelementptr inbounds %struct.ngx_queue_s* %28, i32 0, i32 0, !dbg !2275
  store %struct.ngx_queue_s* %queue, %struct.ngx_queue_s** %prev50, align 4, !dbg !2275, !tbaa !2247
  br label %return, !dbg !2276

return:                                           ; preds = %if.end3, %if.then, %if.end31
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -1, %if.then ], [ -1, %if.end3 ]
  ret i32 %retval.0, !dbg !2277
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

declare i8* @ngx_palloc(%struct.ngx_pool_s*, i32)

declare void @__ioc_report_sub_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare void @__ioc_report_conversion(i32, i32, i8*, i8*, i8*, i8*, i8*, i64, i8)

define i32 @ngx_http_add_listen(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_listen_opt_t* nocapture %lsopt) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1655), !dbg !2278
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t* %cscf}, i64 0, metadata !1656), !dbg !2278
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_listen_opt_t* %lsopt}, i64 0, metadata !1657), !dbg !2278
  %0 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2279, !tbaa !2269
  %ctx = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2279
  %1 = load i8** %ctx, align 4, !dbg !2279, !tbaa !2247
  %main_conf = bitcast i8* %1 to i8***, !dbg !2279
  %2 = load i8*** %main_conf, align 4, !dbg !2279, !tbaa !2247
  %arrayidx = getelementptr inbounds i8** %2, i32 %0, !dbg !2279
  %3 = load i8** %arrayidx, align 4, !dbg !2279, !tbaa !2247
  %ports = getelementptr inbounds i8* %3, i32 92, !dbg !2280
  %4 = bitcast i8* %ports to %struct.ngx_array_s**, !dbg !2280
  %5 = load %struct.ngx_array_s** %4, align 4, !dbg !2280, !tbaa !2247
  %cmp = icmp eq %struct.ngx_array_s* %5, null, !dbg !2280
  br i1 %cmp, label %cont, label %if.end7, !dbg !2280

cont:                                             ; preds = %entry
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2281
  %6 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2281, !tbaa !2247
  %call = tail call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %6, i32 2, i32 28) nounwind, !dbg !2281
  store %struct.ngx_array_s* %call, %struct.ngx_array_s** %4, align 4, !dbg !2281, !tbaa !2247
  %cmp3 = icmp eq %struct.ngx_array_s* %call, null, !dbg !2283
  br i1 %cmp3, label %return, label %if.end7, !dbg !2283

if.end7:                                          ; preds = %cont, %entry
  %7 = phi %struct.ngx_array_s* [ %call, %cont ], [ %5, %entry ]
  %sa_family = getelementptr inbounds %struct.ngx_http_listen_opt_t* %lsopt, i32 0, i32 0, i32 0, i32 0, !dbg !2284
  %8 = load i16* %sa_family, align 2, !dbg !2284, !tbaa !2285
  %cond = icmp eq i16 %8, 1, !dbg !2284
  br i1 %cond, label %sw.epilog, label %sw.default, !dbg !2284

sw.default:                                       ; preds = %if.end7
  %sin_port = getelementptr inbounds %struct.ngx_http_listen_opt_t* %lsopt, i32 0, i32 0, i32 0, i32 1, !dbg !2286
  %9 = load i16* %sin_port, align 2, !dbg !2286, !tbaa !2285
  tail call void @llvm.dbg.value(metadata !{i16 %9}, i64 0, metadata !1658), !dbg !2286
  br label %sw.epilog, !dbg !2289

sw.epilog:                                        ; preds = %if.end7, %sw.default
  %p.0 = phi i16 [ %9, %sw.default ], [ 0, %if.end7 ]
  %elts = getelementptr inbounds %struct.ngx_array_s* %7, i32 0, i32 0, !dbg !2290
  %10 = load i8** %elts, align 4, !dbg !2290, !tbaa !2247
  %11 = bitcast i8* %10 to %struct.ngx_http_conf_port_t*, !dbg !2290
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_port_t* %11}, i64 0, metadata !1664), !dbg !2290
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1660), !dbg !2291
  %nelts89 = getelementptr inbounds %struct.ngx_array_s* %7, i32 0, i32 1, !dbg !2291
  %12 = load i32* %nelts89, align 4, !dbg !2291, !tbaa !2269
  %cmp1590 = icmp eq i32 %12, 0, !dbg !2291
  br i1 %cmp1590, label %for.end, label %for.body, !dbg !2291

for.body:                                         ; preds = %sw.epilog, %for.cond.backedge
  %13 = phi %struct.ngx_array_s* [ %44, %for.cond.backedge ], [ %7, %sw.epilog ]
  %i.091 = phi i32 [ %42, %for.cond.backedge ], [ 0, %sw.epilog ]
  %port19 = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 1, !dbg !2293
  %14 = load i16* %port19, align 2, !dbg !2293, !tbaa !2285
  %cmp21 = icmp eq i16 %p.0, %14, !dbg !2293
  br i1 %cmp21, label %lor.lhs.false, label %for.inc, !dbg !2293

lor.lhs.false:                                    ; preds = %for.body
  %15 = load i16* %sa_family, align 2, !dbg !2293, !tbaa !2285
  %conv24 = zext i16 %15 to i32, !dbg !2293
  %family = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 0, !dbg !2293
  %16 = load i32* %family, align 4, !dbg !2293, !tbaa !2269
  %cmp26 = icmp eq i32 %conv24, %16, !dbg !2293
  br i1 %cmp26, label %if.end29, label %for.inc, !dbg !2293

if.end29:                                         ; preds = %lor.lhs.false
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2295) nounwind, !dbg !2297
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t* %cscf}, i64 0, metadata !2298) nounwind, !dbg !2297
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_listen_opt_t* %lsopt}, i64 0, metadata !2299) nounwind, !dbg !2297
  %cond.i = icmp eq i16 %15, 1, !dbg !2300
  tail call void @llvm.dbg.value(metadata !2301, i64 0, metadata !2302) nounwind, !dbg !2303
  tail call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2307) nounwind, !dbg !2308
  %off.0.i = select i1 %cond.i, i32 2, i32 4, !dbg !2300
  %len.0.i = select i1 %cond.i, i32 108, i32 4, !dbg !2300
  %arraydecay.i = bitcast %struct.ngx_http_listen_opt_t* %lsopt to i8*, !dbg !2309
  %add.ptr.i = getelementptr inbounds i8* %arraydecay.i, i32 %off.0.i, !dbg !2309
  tail call void @llvm.dbg.value(metadata !{i8* %add.ptr.i}, i64 0, metadata !2310) nounwind, !dbg !2309
  %elts.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 2, i32 0, !dbg !2311
  %17 = load i8** %elts.i, align 4, !dbg !2311, !tbaa !2247
  %18 = bitcast i8* %17 to %struct.ngx_http_conf_addr_t*, !dbg !2311
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_addr_t* %18}, i64 0, metadata !2312) nounwind, !dbg !2311
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !2313) nounwind, !dbg !2314
  %nelts.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 2, i32 1, !dbg !2314
  %19 = load i32* %nelts.i, align 4, !dbg !2314, !tbaa !2269
  %cmp106.i = icmp eq i32 %19, 0, !dbg !2314
  br i1 %cmp106.i, label %entry.for.end_crit_edge.i, label %for.body.i, !dbg !2314

entry.for.end_crit_edge.i:                        ; preds = %if.end29
  %addrs.i.pre.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 2, !dbg !2316
  %elts.i.pre.i = getelementptr inbounds %struct.ngx_array_s* %addrs.i.pre.i, i32 0, i32 0, !dbg !2316
  br label %for.end.i, !dbg !2314

for.body.i:                                       ; preds = %if.end29, %for.cond.backedge.i
  %20 = phi i32 [ %35, %for.cond.backedge.i ], [ %19, %if.end29 ]
  %i.0107.i = phi i32 [ %33, %for.cond.backedge.i ], [ 0, %if.end29 ]
  %arrayidx.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %18, i32 %i.0107.i, !dbg !2318
  %arraydecay8.i = bitcast %struct.ngx_http_conf_addr_t* %arrayidx.i to i8*, !dbg !2318
  %add.ptr9.i = getelementptr inbounds i8* %arraydecay8.i, i32 %off.0.i, !dbg !2318
  %call.i = tail call i32 @memcmp(i8* %add.ptr.i, i8* %add.ptr9.i, i32 %len.0.i) nounwind readonly, !dbg !2318
  %cmp10.i = icmp eq i32 %call.i, 0, !dbg !2318
  br i1 %cmp10.i, label %if.end.i, label %for.inc.i, !dbg !2318

if.end.i:                                         ; preds = %for.body.i
  %call13.i = tail call fastcc i32 @ngx_http_add_server(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_conf_addr_t* %arrayidx.i) nounwind, !dbg !2320
  %cmp14.i = icmp eq i32 %call13.i, 0, !dbg !2320
  br i1 %cmp14.i, label %if.end19.i, label %return, !dbg !2320

if.end19.i:                                       ; preds = %if.end.i
  %21 = getelementptr %struct.ngx_http_conf_addr_t* %18, i32 %i.0107.i, i32 0, i32 2, !dbg !2321
  %22 = bitcast i8* %21 to i32*, !dbg !2321
  %23 = load i32* %22, align 4, !dbg !2321
  %24 = lshr i32 %23, 1, !dbg !2321
  %bf.clear.i = and i32 %24, 1, !dbg !2321
  tail call void @llvm.dbg.value(metadata !{i32 %bf.clear.i}, i64 0, metadata !2322) nounwind, !dbg !2321
  %25 = getelementptr %struct.ngx_http_listen_opt_t* %lsopt, i32 0, i32 2, !dbg !2323
  %26 = bitcast i8* %25 to i32*, !dbg !2323
  %27 = load i32* %26, align 4, !dbg !2323
  %bf.clear23.i = and i32 %27, 1, !dbg !2323
  %tobool.i = icmp eq i32 %bf.clear23.i, 0, !dbg !2323
  br i1 %tobool.i, label %if.end42.i, label %if.then24.i, !dbg !2323

if.then24.i:                                      ; preds = %if.end19.i
  %bf.clear28.i = and i32 %23, 1, !dbg !2324
  %tobool29.i = icmp eq i32 %bf.clear28.i, 0, !dbg !2324
  br i1 %tobool29.i, label %if.end39.i, label %cont32.i, !dbg !2324

cont32.i:                                         ; preds = %if.then24.i
  %arraydecay36.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %18, i32 %i.0107.i, i32 0, i32 10, i32 0, !dbg !2326
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([32 x i8]* @.str4, i32 0, i32 0), i8* %arraydecay36.i) nounwind, !dbg !2326
  br label %return, !dbg !2328

if.end39.i:                                       ; preds = %if.then24.i
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %arraydecay8.i, i8* %arraydecay.i, i32 264, i32 4, i1 false) nounwind, !dbg !2329, !tbaa.struct !2330
  %.pre111.i = load i32* %26, align 4, !dbg !2331
  br label %if.end42.i, !dbg !2332

if.end42.i:                                       ; preds = %if.end39.i, %if.end19.i
  %28 = phi i32 [ %27, %if.end19.i ], [ %.pre111.i, %if.end39.i ]
  %bf.clear44.i = and i32 %28, 2, !dbg !2331
  %tobool45.i = icmp eq i32 %bf.clear44.i, 0, !dbg !2331
  br i1 %tobool45.i, label %if.end42.if.end62_crit_edge.i, label %if.then46.i, !dbg !2331

if.end42.if.end62_crit_edge.i:                    ; preds = %if.end42.i
  %phitmp.i = shl nuw nsw i32 %bf.clear.i, 1, !dbg !2331
  br label %if.end62.i, !dbg !2331

if.then46.i:                                      ; preds = %if.end42.i
  %tobool47.i = icmp eq i32 %bf.clear.i, 0, !dbg !2333
  br i1 %tobool47.i, label %cont59.i, label %cont50.i, !dbg !2333

cont50.i:                                         ; preds = %if.then46.i
  %arraydecay54.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %18, i32 %i.0107.i, i32 0, i32 10, i32 0, !dbg !2335
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str5, i32 0, i32 0), i8* %arraydecay54.i) nounwind, !dbg !2335
  br label %return, !dbg !2337

cont59.i:                                         ; preds = %if.then46.i
  tail call void @llvm.dbg.value(metadata !2338, i64 0, metadata !2322) nounwind, !dbg !2339
  %default_server61.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %18, i32 %i.0107.i, i32 6, !dbg !2340
  store %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_core_srv_conf_t** %default_server61.i, align 4, !dbg !2340, !tbaa !2247
  br label %if.end62.i, !dbg !2341

if.end62.i:                                       ; preds = %cont59.i, %if.end42.if.end62_crit_edge.i
  %default_server.0.i = phi i32 [ 2, %cont59.i ], [ %phitmp.i, %if.end42.if.end62_crit_edge.i ]
  %29 = load i32* %22, align 4, !dbg !2342
  %30 = and i32 %29, -3, !dbg !2342
  %31 = or i32 %30, %default_server.0.i, !dbg !2342
  store i32 %31, i32* %22, align 4, !dbg !2342
  br label %return, !dbg !2343

for.inc.i:                                        ; preds = %for.body.i
  %32 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0107.i, i32 1) nounwind, !dbg !2314
  %33 = extractvalue { i32, i1 } %32, 0, !dbg !2314
  %34 = extractvalue { i32, i1 } %32, 1, !dbg !2314
  br i1 %34, label %ioc_bb66.i, label %for.cond.backedge.i, !dbg !2314

for.cond.backedge.i:                              ; preds = %ioc_bb66.i, %for.inc.i
  %35 = phi i32 [ %20, %for.inc.i ], [ %.pre112.i, %ioc_bb66.i ], !dbg !2314
  %cmp.i = icmp ult i32 %33, %35, !dbg !2314
  br i1 %cmp.i, label %for.body.i, label %for.cond.for.end_crit_edge.i, !dbg !2314

ioc_bb66.i:                                       ; preds = %for.inc.i
  %36 = zext i32 %i.0107.i to i64, !dbg !2314
  tail call void @__ioc_report_add_overflow(i32 928, i32 41, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %36, i64 1, i8 5) nounwind, !dbg !2314
  %.pre112.i = load i32* %nelts.i, align 4, !dbg !2314, !tbaa !2269
  br label %for.cond.backedge.i, !dbg !2314

for.cond.for.end_crit_edge.i:                     ; preds = %for.cond.backedge.i
  %addrs.i.phi.trans.insert.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 2
  %elts.i.phi.trans.insert.i = getelementptr inbounds %struct.ngx_array_s* %addrs.i.phi.trans.insert.i, i32 0, i32 0
  %.pre.i = load i8** %elts.i.phi.trans.insert.i, align 4, !dbg !2316, !tbaa !2247
  br label %for.end.i, !dbg !2314

for.end.i:                                        ; preds = %for.cond.for.end_crit_edge.i, %entry.for.end_crit_edge.i
  %elts.i.pre-phi.i = phi i8** [ %elts.i.pre.i, %entry.for.end_crit_edge.i ], [ %elts.i.phi.trans.insert.i, %for.cond.for.end_crit_edge.i ], !dbg !2316
  %addrs.i.pre-phi.i = phi %struct.ngx_array_s* [ %addrs.i.pre.i, %entry.for.end_crit_edge.i ], [ %addrs.i.phi.trans.insert.i, %for.cond.for.end_crit_edge.i ], !dbg !2316
  %37 = phi i8* [ %17, %entry.for.end_crit_edge.i ], [ %.pre.i, %for.cond.for.end_crit_edge.i ]
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2344) nounwind, !dbg !2345
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t* %cscf}, i64 0, metadata !2346) nounwind, !dbg !2345
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_listen_opt_t* %lsopt}, i64 0, metadata !2347) nounwind, !dbg !2345
  %cmp.i.i = icmp eq i8* %37, null, !dbg !2316
  br i1 %cmp.i.i, label %cont.i.i, label %if.end6.i.i, !dbg !2316

cont.i.i:                                         ; preds = %for.end.i
  %temp_pool.i.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2348
  %38 = load %struct.ngx_pool_s** %temp_pool.i.i, align 4, !dbg !2348, !tbaa !2247
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %addrs.i.pre-phi.i}, i64 0, metadata !2350) nounwind, !dbg !2351
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %38}, i64 0, metadata !2352) nounwind, !dbg !2351
  tail call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2353) nounwind, !dbg !2351
  tail call void @llvm.dbg.value(metadata !2354, i64 0, metadata !2355) nounwind, !dbg !2351
  store i32 0, i32* %nelts.i, align 4, !dbg !2356, !tbaa !2269
  %size1.i.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 2, i32 2, !dbg !2358
  store i32 312, i32* %size1.i.i, align 4, !dbg !2358, !tbaa !2269
  %nalloc.i.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 2, i32 3, !dbg !2359
  store i32 4, i32* %nalloc.i.i, align 4, !dbg !2359, !tbaa !2269
  %pool2.i.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %11, i32 %i.091, i32 2, i32 4, !dbg !2360
  store %struct.ngx_pool_s* %38, %struct.ngx_pool_s** %pool2.i.i, align 4, !dbg !2360, !tbaa !2247
  %call.i101.i = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %38, i32 1248) nounwind, !dbg !2361
  store i8* %call.i101.i, i8** %elts.i.pre-phi.i, align 4, !dbg !2361, !tbaa !2247
  %cmp.i103.i = icmp eq i8* %call.i101.i, null, !dbg !2362
  br i1 %cmp.i103.i, label %return, label %if.end6.i.i, !dbg !2348

if.end6.i.i:                                      ; preds = %cont.i.i, %for.end.i
  %call8.i.i = tail call i8* @ngx_array_push(%struct.ngx_array_s* %addrs.i.pre-phi.i) nounwind, !dbg !2363
  %cmp9.i.i = icmp eq i8* %call8.i.i, null, !dbg !2364
  br i1 %cmp9.i.i, label %return, label %if.end13.i.i, !dbg !2364

if.end13.i.i:                                     ; preds = %if.end6.i.i
  %39 = bitcast i8* %call8.i.i to %struct.ngx_http_conf_addr_t*, !dbg !2363
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call8.i.i, i8* %arraydecay.i, i32 264, i32 4, i1 false) nounwind, !dbg !2365, !tbaa.struct !2330
  %hash.i.i = getelementptr inbounds i8* %call8.i.i, i32 264, !dbg !2366
  %default_server.i.i = getelementptr inbounds i8* %call8.i.i, i32 288, !dbg !2367
  %40 = bitcast i8* %default_server.i.i to %struct.ngx_http_core_srv_conf_t**, !dbg !2367
  tail call void @llvm.memset.p0i8.i64(i8* %hash.i.i, i8 0, i64 24, i32 4, i1 false) nounwind, !dbg !2368
  store %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_core_srv_conf_t** %40, align 4, !dbg !2367, !tbaa !2247
  %servers.i.i = getelementptr inbounds i8* %call8.i.i, i32 292, !dbg !2369
  %elts19.i.i = bitcast i8* %servers.i.i to i8**, !dbg !2369
  store i8* null, i8** %elts19.i.i, align 4, !dbg !2369, !tbaa !2247
  %call20.i.i = tail call fastcc i32 @ngx_http_add_server(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_conf_addr_t* %39) nounwind, !dbg !2370
  br label %return, !dbg !2370

for.inc:                                          ; preds = %lor.lhs.false, %for.body
  %41 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.091, i32 1), !dbg !2291
  %42 = extractvalue { i32, i1 } %41, 0, !dbg !2291
  %43 = extractvalue { i32, i1 } %41, 1, !dbg !2291
  br i1 %43, label %ioc_bb32, label %for.cond.backedge, !dbg !2291

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb32
  %44 = phi %struct.ngx_array_s* [ %13, %for.inc ], [ %.pre, %ioc_bb32 ], !dbg !2291
  %nelts = getelementptr inbounds %struct.ngx_array_s* %44, i32 0, i32 1, !dbg !2291
  %45 = load i32* %nelts, align 4, !dbg !2291, !tbaa !2269
  %cmp15 = icmp ult i32 %42, %45, !dbg !2291
  br i1 %cmp15, label %for.body, label %for.end, !dbg !2291

ioc_bb32:                                         ; preds = %for.inc
  %46 = zext i32 %i.091 to i64, !dbg !2291
  tail call void @__ioc_report_add_overflow(i32 870, i32 44, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %46, i64 1, i8 5) nounwind, !dbg !2291
  %.pre = load %struct.ngx_array_s** %4, align 4, !dbg !2291, !tbaa !2247
  br label %for.cond.backedge, !dbg !2291

for.end:                                          ; preds = %for.cond.backedge, %sw.epilog
  %.lcssa = phi %struct.ngx_array_s* [ %7, %sw.epilog ], [ %44, %for.cond.backedge ]
  %call35 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %.lcssa) nounwind, !dbg !2371
  %cmp36 = icmp eq i8* %call35, null, !dbg !2372
  br i1 %cmp36, label %return, label %cont.i, !dbg !2372

cont.i:                                           ; preds = %for.end
  %47 = load i16* %sa_family, align 2, !dbg !2373, !tbaa !2285
  %conv43 = zext i16 %47 to i32, !dbg !2373
  %family44 = bitcast i8* %call35 to i32*, !dbg !2373
  store i32 %conv43, i32* %family44, align 4, !dbg !2373, !tbaa !2269
  %port45 = getelementptr inbounds i8* %call35, i32 4, !dbg !2374
  %48 = bitcast i8* %port45 to i16*, !dbg !2374
  store i16 %p.0, i16* %48, align 2, !dbg !2374, !tbaa !2285
  %addrs = getelementptr inbounds i8* %call35, i32 8, !dbg !2375
  %elts46 = bitcast i8* %addrs to i8**, !dbg !2375
  store i8* null, i8** %elts46, align 4, !dbg !2375, !tbaa !2247
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2376) nounwind, !dbg !2378
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t* %cscf}, i64 0, metadata !2379) nounwind, !dbg !2378
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_listen_opt_t* %lsopt}, i64 0, metadata !2380) nounwind, !dbg !2378
  %temp_pool.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2381
  %49 = load %struct.ngx_pool_s** %temp_pool.i, align 4, !dbg !2381, !tbaa !2247
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %54}, i64 0, metadata !2382) nounwind, !dbg !2383
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %49}, i64 0, metadata !2384) nounwind, !dbg !2383
  tail call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2385) nounwind, !dbg !2383
  tail call void @llvm.dbg.value(metadata !2354, i64 0, metadata !2386) nounwind, !dbg !2383
  %nelts.i78 = getelementptr inbounds i8* %call35, i32 12, !dbg !2387
  %50 = bitcast i8* %nelts.i78 to i32*, !dbg !2387
  store i32 0, i32* %50, align 4, !dbg !2387, !tbaa !2269
  %size1.i = getelementptr inbounds i8* %call35, i32 16, !dbg !2388
  %51 = bitcast i8* %size1.i to i32*, !dbg !2388
  store i32 312, i32* %51, align 4, !dbg !2388, !tbaa !2269
  %nalloc.i = getelementptr inbounds i8* %call35, i32 20, !dbg !2389
  %52 = bitcast i8* %nalloc.i to i32*, !dbg !2389
  store i32 4, i32* %52, align 4, !dbg !2389, !tbaa !2269
  %pool2.i = getelementptr inbounds i8* %call35, i32 24, !dbg !2390
  %53 = bitcast i8* %pool2.i to %struct.ngx_pool_s**, !dbg !2390
  store %struct.ngx_pool_s* %49, %struct.ngx_pool_s** %53, align 4, !dbg !2390, !tbaa !2247
  %call.i79 = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %49, i32 1248) nounwind, !dbg !2391
  store i8* %call.i79, i8** %elts46, align 4, !dbg !2391, !tbaa !2247
  %cmp.i81 = icmp eq i8* %call.i79, null, !dbg !2392
  br i1 %cmp.i81, label %return, label %if.end6.i, !dbg !2381

if.end6.i:                                        ; preds = %cont.i
  %54 = bitcast i8* %addrs to %struct.ngx_array_s*, !dbg !2393
  %call8.i = tail call i8* @ngx_array_push(%struct.ngx_array_s* %54) nounwind, !dbg !2394
  %cmp9.i = icmp eq i8* %call8.i, null, !dbg !2395
  br i1 %cmp9.i, label %return, label %if.end13.i, !dbg !2395

if.end13.i:                                       ; preds = %if.end6.i
  %55 = bitcast i8* %call8.i to %struct.ngx_http_conf_addr_t*, !dbg !2394
  %56 = bitcast %struct.ngx_http_listen_opt_t* %lsopt to i8*, !dbg !2396
  tail call void @llvm.memcpy.p0i8.p0i8.i32(i8* %call8.i, i8* %56, i32 264, i32 4, i1 false) nounwind, !dbg !2396, !tbaa.struct !2330
  %hash.i = getelementptr inbounds i8* %call8.i, i32 264, !dbg !2397
  %default_server.i = getelementptr inbounds i8* %call8.i, i32 288, !dbg !2398
  %57 = bitcast i8* %default_server.i to %struct.ngx_http_core_srv_conf_t**, !dbg !2398
  tail call void @llvm.memset.p0i8.i64(i8* %hash.i, i8 0, i64 24, i32 4, i1 false) nounwind, !dbg !2399
  store %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_core_srv_conf_t** %57, align 4, !dbg !2398, !tbaa !2247
  %servers.i = getelementptr inbounds i8* %call8.i, i32 292, !dbg !2400
  %elts19.i = bitcast i8* %servers.i to i8**, !dbg !2400
  store i8* null, i8** %elts19.i, align 4, !dbg !2400, !tbaa !2247
  %call20.i = tail call fastcc i32 @ngx_http_add_server(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_conf_addr_t* %55) nounwind, !dbg !2401
  br label %return, !dbg !2401

return:                                           ; preds = %cont.i, %if.end13.i, %if.end6.i, %if.end13.i.i, %if.end6.i.i, %cont.i.i, %if.end62.i, %cont50.i, %cont32.i, %if.end.i, %for.end, %cont
  %retval.0 = phi i32 [ -1, %cont ], [ -1, %for.end ], [ -1, %cont32.i ], [ -1, %cont50.i ], [ 0, %if.end62.i ], [ -1, %if.end.i ], [ %call20.i.i, %if.end13.i.i ], [ -1, %cont.i.i ], [ -1, %if.end6.i.i ], [ %call20.i, %if.end13.i ], [ -1, %cont.i ], [ -1, %if.end6.i ]
  ret i32 %retval.0, !dbg !2402
}

declare %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s*, i32, i32)

declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_add_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i8* @ngx_array_push(%struct.ngx_array_s*)

define i8* @ngx_http_types_slot(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1731), !dbg !2403
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1732), !dbg !2403
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1733), !dbg !2403
  tail call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1734), !dbg !2404
  %offset = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 4, !dbg !2405
  %0 = load i32* %offset, align 4, !dbg !2405, !tbaa !2269
  %add.ptr = getelementptr inbounds i8* %conf, i32 %0, !dbg !2405
  %1 = bitcast i8* %add.ptr to %struct.ngx_array_s**, !dbg !2405
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s** %1}, i64 0, metadata !1736), !dbg !2405
  %2 = load %struct.ngx_array_s** %1, align 4, !dbg !2406, !tbaa !2247
  %cmp = icmp eq %struct.ngx_array_s* %2, inttoptr (i32 -1 to %struct.ngx_array_s*), !dbg !2406
  br i1 %cmp, label %return, label %if.end, !dbg !2406

if.end:                                           ; preds = %entry
  %post = getelementptr inbounds %struct.ngx_command_s* %cmd, i32 0, i32 5, !dbg !2407
  %3 = load i8** %post, align 4, !dbg !2407, !tbaa !2247
  %cmp1 = icmp eq %struct.ngx_array_s* %2, null, !dbg !2408
  br i1 %cmp1, label %cont4, label %if.end20, !dbg !2408

cont4:                                            ; preds = %if.end
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2409
  %4 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2409, !tbaa !2247
  %call = tail call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %4, i32 1, i32 16) nounwind, !dbg !2409
  store %struct.ngx_array_s* %call, %struct.ngx_array_s** %1, align 4, !dbg !2409, !tbaa !2247
  %cmp5 = icmp eq %struct.ngx_array_s* %call, null, !dbg !2411
  br i1 %cmp5, label %return, label %if.end9, !dbg !2411

if.end9:                                          ; preds = %cont4
  %tobool = icmp eq i8* %3, null, !dbg !2412
  br i1 %tobool, label %if.end20, label %if.then10, !dbg !2412

if.then10:                                        ; preds = %if.end9
  %call11 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %call) nounwind, !dbg !2413
  %cmp12 = icmp eq i8* %call11, null, !dbg !2415
  br i1 %cmp12, label %return, label %if.end16, !dbg !2415

if.end16:                                         ; preds = %if.then10
  %5 = bitcast i8* %3 to i64*, !dbg !2416
  %6 = bitcast i8* %call11 to i64*, !dbg !2416
  %7 = load i64* %5, align 4, !dbg !2416
  store i64 %7, i64* %6, align 4, !dbg !2416
  %data = getelementptr inbounds i8* %3, i32 4, !dbg !2417
  %8 = bitcast i8* %data to i8**, !dbg !2417
  %9 = load i8** %8, align 4, !dbg !2417, !tbaa !2247
  %len = bitcast i8* %3 to i32*, !dbg !2417
  %10 = load i32* %len, align 4, !dbg !2417, !tbaa !2269
  %call17 = tail call i32 @ngx_hash_key(i8* %9, i32 %10) nounwind, !dbg !2417
  %key_hash = getelementptr inbounds i8* %call11, i32 8, !dbg !2417
  %11 = bitcast i8* %key_hash to i32*, !dbg !2417
  store i32 %call17, i32* %11, align 4, !dbg !2417, !tbaa !2269
  %value18 = getelementptr inbounds i8* %call11, i32 12, !dbg !2418
  %12 = bitcast i8* %value18 to i8**, !dbg !2418
  store i8* inttoptr (i32 4 to i8*), i8** %12, align 4, !dbg !2418, !tbaa !2247
  br label %if.end20, !dbg !2419

if.end20:                                         ; preds = %if.end9, %if.end16, %if.end
  %args = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 1, !dbg !2420
  %13 = load %struct.ngx_array_s** %args, align 4, !dbg !2420, !tbaa !2247
  %elts = getelementptr inbounds %struct.ngx_array_s* %13, i32 0, i32 0, !dbg !2420
  %14 = load i8** %elts, align 4, !dbg !2420, !tbaa !2247
  %15 = bitcast i8* %14 to %struct.ngx_str_t*, !dbg !2420
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %15}, i64 0, metadata !1738), !dbg !2420
  tail call void @llvm.dbg.value(metadata !2338, i64 0, metadata !1740), !dbg !2421
  %nelts138 = getelementptr inbounds %struct.ngx_array_s* %13, i32 0, i32 1, !dbg !2421
  %16 = load i32* %nelts138, align 4, !dbg !2421, !tbaa !2269
  %cmp24139 = icmp ugt i32 %16, 1, !dbg !2421
  br i1 %cmp24139, label %for.body, label %return, !dbg !2421

for.body:                                         ; preds = %if.end20, %for.cond.backedge
  %i.0140 = phi i32 [ %40, %for.cond.backedge ], [ 1, %if.end20 ]
  %arrayidx = getelementptr inbounds %struct.ngx_str_t* %15, i32 %i.0140, !dbg !2422
  %len25 = getelementptr inbounds %struct.ngx_str_t* %arrayidx, i32 0, i32 0, !dbg !2422
  %17 = load i32* %len25, align 4, !dbg !2422, !tbaa !2269
  %cmp28 = icmp eq i32 %17, 1, !dbg !2422
  %data30 = getelementptr inbounds %struct.ngx_str_t* %15, i32 %i.0140, i32 1, !dbg !2422
  %18 = load i8** %data30, align 4, !dbg !2422, !tbaa !2247
  br i1 %cmp28, label %land.lhs.true, label %if.end37, !dbg !2422

land.lhs.true:                                    ; preds = %for.body
  %19 = load i8* %18, align 1, !dbg !2422, !tbaa !2248
  %cmp32 = icmp eq i8 %19, 42, !dbg !2422
  br i1 %cmp32, label %cont36, label %if.end37, !dbg !2422

cont36:                                           ; preds = %land.lhs.true
  store %struct.ngx_array_s* inttoptr (i32 -1 to %struct.ngx_array_s*), %struct.ngx_array_s** %1, align 4, !dbg !2423, !tbaa !2247
  br label %return, !dbg !2425

if.end37:                                         ; preds = %for.body, %land.lhs.true
  %data39 = getelementptr inbounds %struct.ngx_str_t* %15, i32 %i.0140, i32 1, !dbg !2426
  %call44 = tail call i32 @ngx_hash_strlow(i8* %18, i8* %18, i32 %17) nounwind, !dbg !2426
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !1742), !dbg !2426
  %20 = load i32* %len25, align 4, !dbg !2427, !tbaa !2269
  %21 = load i8** %data39, align 4, !dbg !2427, !tbaa !2247
  %arrayidx51 = getelementptr inbounds i8* %21, i32 %20, !dbg !2427
  store i8 0, i8* %arrayidx51, align 1, !dbg !2427, !tbaa !2248
  %22 = load %struct.ngx_array_s** %1, align 4, !dbg !2428, !tbaa !2247
  %elts52 = getelementptr inbounds %struct.ngx_array_s* %22, i32 0, i32 0, !dbg !2428
  %23 = load i8** %elts52, align 4, !dbg !2428, !tbaa !2247
  %24 = bitcast i8* %23 to %struct.ngx_hash_key_t*, !dbg !2428
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_hash_key_t* %24}, i64 0, metadata !1743), !dbg !2428
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1741), !dbg !2429
  %nelts56135 = getelementptr inbounds %struct.ngx_array_s* %22, i32 0, i32 1, !dbg !2429
  %25 = load i32* %nelts56135, align 4, !dbg !2429, !tbaa !2269
  %cmp57136 = icmp eq i32 %25, 0, !dbg !2429
  br i1 %cmp57136, label %for.end, label %for.body59, !dbg !2429

for.body59:                                       ; preds = %for.cond55.backedge, %if.end37
  %n.0137 = phi i32 [ 0, %if.end37 ], [ %29, %for.cond55.backedge ]
  %26 = load i8** %data39, align 4, !dbg !2430, !tbaa !2247
  %data64 = getelementptr inbounds %struct.ngx_hash_key_t* %24, i32 %n.0137, i32 0, i32 1, !dbg !2430
  %27 = load i8** %data64, align 4, !dbg !2430, !tbaa !2247
  %call65 = tail call i32 @strcmp(i8* %26, i8* %27) nounwind, !dbg !2430
  %cmp66 = icmp eq i32 %call65, 0, !dbg !2430
  br i1 %cmp66, label %cont70, label %for.inc, !dbg !2430

cont70:                                           ; preds = %for.body59
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 5, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([25 x i8]* @.str1, i32 0, i32 0), %struct.ngx_str_t* %arrayidx) nounwind, !dbg !2431
  br label %for.inc, !dbg !2433

for.inc:                                          ; preds = %for.body59, %cont70
  %28 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0137, i32 1), !dbg !2429
  %29 = extractvalue { i32, i1 } %28, 0, !dbg !2429
  %30 = extractvalue { i32, i1 } %28, 1, !dbg !2429
  br i1 %30, label %ioc_bb73, label %for.cond55.backedge, !dbg !2429

for.cond55.backedge:                              ; preds = %for.inc, %ioc_bb73
  %31 = load %struct.ngx_array_s** %1, align 4, !dbg !2429, !tbaa !2247
  %nelts56 = getelementptr inbounds %struct.ngx_array_s* %31, i32 0, i32 1, !dbg !2429
  %32 = load i32* %nelts56, align 4, !dbg !2429, !tbaa !2269
  %cmp57 = icmp ult i32 %29, %32, !dbg !2429
  br i1 %cmp57, label %for.body59, label %for.end, !dbg !2429

ioc_bb73:                                         ; preds = %for.inc
  %33 = zext i32 %n.0137 to i64, !dbg !2429
  tail call void @__ioc_report_add_overflow(i32 1385, i32 42, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %33, i64 1, i8 5) nounwind, !dbg !2429
  br label %for.cond55.backedge, !dbg !2429

for.end:                                          ; preds = %for.cond55.backedge, %if.end37
  %.lcssa = phi %struct.ngx_array_s* [ %22, %if.end37 ], [ %31, %for.cond55.backedge ]
  %call75 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %.lcssa) nounwind, !dbg !2434
  %cmp76 = icmp eq i8* %call75, null, !dbg !2435
  br i1 %cmp76, label %return, label %if.end81, !dbg !2435

if.end81:                                         ; preds = %for.end
  %34 = bitcast %struct.ngx_str_t* %arrayidx to i64*, !dbg !2436
  %35 = bitcast i8* %call75 to i64*, !dbg !2436
  %36 = load i64* %34, align 4, !dbg !2436
  store i64 %36, i64* %35, align 4, !dbg !2436
  %key_hash84 = getelementptr inbounds i8* %call75, i32 8, !dbg !2437
  %37 = bitcast i8* %key_hash84 to i32*, !dbg !2437
  store i32 %call44, i32* %37, align 4, !dbg !2437, !tbaa !2269
  %value85 = getelementptr inbounds i8* %call75, i32 12, !dbg !2438
  %38 = bitcast i8* %value85 to i8**, !dbg !2438
  store i8* inttoptr (i32 4 to i8*), i8** %38, align 4, !dbg !2438, !tbaa !2247
  %39 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0140, i32 1), !dbg !2421
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !2421
  %41 = extractvalue { i32, i1 } %39, 1, !dbg !2421
  br i1 %41, label %ioc_bb87, label %for.cond.backedge, !dbg !2421

for.cond.backedge:                                ; preds = %if.end81, %ioc_bb87
  %42 = load %struct.ngx_array_s** %args, align 4, !dbg !2421, !tbaa !2247
  %nelts = getelementptr inbounds %struct.ngx_array_s* %42, i32 0, i32 1, !dbg !2421
  %43 = load i32* %nelts, align 4, !dbg !2421, !tbaa !2269
  %cmp24 = icmp ult i32 %40, %43, !dbg !2421
  br i1 %cmp24, label %for.body, label %return, !dbg !2421

ioc_bb87:                                         ; preds = %if.end81
  %44 = zext i32 %i.0140 to i64, !dbg !2421
  tail call void @__ioc_report_add_overflow(i32 1377, i32 41, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %44, i64 1, i8 5) nounwind, !dbg !2421
  br label %for.cond.backedge, !dbg !2421

return:                                           ; preds = %if.end20, %for.end, %for.cond.backedge, %if.then10, %cont4, %entry, %cont36
  %retval.0 = phi i8* [ null, %cont36 ], [ null, %entry ], [ inttoptr (i32 -1 to i8*), %cont4 ], [ inttoptr (i32 -1 to i8*), %if.then10 ], [ null, %if.end20 ], [ inttoptr (i32 -1 to i8*), %for.end ], [ null, %for.cond.backedge ]
  ret i8* %retval.0, !dbg !2439
}

declare void @llvm.memcpy.p0i8.p0i8.i32(i8* nocapture, i8* nocapture, i32, i32, i1) nounwind

declare i32 @ngx_hash_key(i8*, i32)

declare i32 @ngx_hash_strlow(i8*, i8*, i32)

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare void @ngx_conf_log_error(i32, %struct.ngx_conf_s*, i32, i8*, ...)

define i8* @ngx_http_merge_types(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_array_s** nocapture %keys, %struct.ngx_hash_t* %types_hash, %struct.ngx_array_s** nocapture %prev_keys, %struct.ngx_hash_t* %prev_types_hash, %struct.ngx_str_t* nocapture %default_types) nounwind {
entry:
  %hash = alloca %struct.ngx_hash_init_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1764), !dbg !2440
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s** %keys}, i64 0, metadata !1765), !dbg !2440
  call void @llvm.dbg.value(metadata !{%struct.ngx_hash_t* %types_hash}, i64 0, metadata !1766), !dbg !2440
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s** %prev_keys}, i64 0, metadata !1767), !dbg !2440
  call void @llvm.dbg.value(metadata !{%struct.ngx_hash_t* %prev_types_hash}, i64 0, metadata !1768), !dbg !2440
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %default_types}, i64 0, metadata !1769), !dbg !2440
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %hash}, metadata !1770), !dbg !2441
  %0 = load %struct.ngx_array_s** %keys, align 4, !dbg !2442, !tbaa !2247
  %magicptr = ptrtoint %struct.ngx_array_s* %0 to i32, !dbg !2442
  switch i32 %magicptr, label %if.end [
    i32 0, label %if.end13
    i32 -1, label %return
  ], !dbg !2442

if.end:                                           ; preds = %entry
  %hash2 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !2443
  store %struct.ngx_hash_t* %types_hash, %struct.ngx_hash_t** %hash2, align 4, !dbg !2443, !tbaa !2247
  %key = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 1, !dbg !2445
  store i32 (i8*, i32)* null, i32 (i8*, i32)** %key, align 4, !dbg !2445, !tbaa !2247
  %max_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 2, !dbg !2446
  store i32 2048, i32* %max_size, align 4, !dbg !2446, !tbaa !2269
  %bucket_size = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 3, !dbg !2447
  store i32 64, i32* %bucket_size, align 4, !dbg !2447, !tbaa !2269
  %name = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 4, !dbg !2448
  store i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8** %name, align 4, !dbg !2448, !tbaa !2247
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2449
  %1 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2449, !tbaa !2247
  %pool7 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 5, !dbg !2449
  store %struct.ngx_pool_s* %1, %struct.ngx_pool_s** %pool7, align 4, !dbg !2449, !tbaa !2247
  %temp_pool = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !2450
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2450, !tbaa !2247
  %elts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 0, !dbg !2451
  %2 = load i8** %elts, align 4, !dbg !2451, !tbaa !2247
  %3 = bitcast i8* %2 to %struct.ngx_hash_key_t*, !dbg !2451
  %nelts = getelementptr inbounds %struct.ngx_array_s* %0, i32 0, i32 1, !dbg !2451
  %4 = load i32* %nelts, align 4, !dbg !2451, !tbaa !2269
  %call = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %3, i32 %4) nounwind, !dbg !2451
  %cmp8 = icmp eq i32 %call, 0, !dbg !2451
  %. = select i1 %cmp8, i8* null, i8* inttoptr (i32 -1 to i8*), !dbg !2451
  ret i8* %., !dbg !2451

if.end13:                                         ; preds = %entry
  %buckets = getelementptr inbounds %struct.ngx_hash_t* %prev_types_hash, i32 0, i32 0, !dbg !2452
  %5 = load %struct.ngx_hash_elt_t*** %buckets, align 4, !dbg !2452, !tbaa !2247
  %cmp14 = icmp eq %struct.ngx_hash_elt_t** %5, null, !dbg !2452
  br i1 %cmp14, label %if.then15, label %if.end50, !dbg !2452

if.then15:                                        ; preds = %if.end13
  %6 = load %struct.ngx_array_s** %prev_keys, align 4, !dbg !2453, !tbaa !2247
  %magicptr65 = ptrtoint %struct.ngx_array_s* %6 to i32, !dbg !2453
  switch i32 %magicptr65, label %if.end29 [
    i32 0, label %if.then17
    i32 -1, label %if.then27
  ], !dbg !2453

if.then17:                                        ; preds = %if.then15
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2455) nounwind, !dbg !2458
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s** %prev_keys}, i64 0, metadata !2459) nounwind, !dbg !2458
  call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %default_types}, i64 0, metadata !2460) nounwind, !dbg !2458
  %temp_pool.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2461
  %7 = load %struct.ngx_pool_s** %temp_pool.i, align 4, !dbg !2461, !tbaa !2247
  %call.i = call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %7, i32 1, i32 16) nounwind, !dbg !2461
  store %struct.ngx_array_s* %call.i, %struct.ngx_array_s** %prev_keys, align 4, !dbg !2461, !tbaa !2247
  %cmp.i = icmp eq %struct.ngx_array_s* %call.i, null, !dbg !2462
  br i1 %cmp.i, label %return, label %while.cond.preheader.i, !dbg !2462

while.cond.preheader.i:                           ; preds = %if.then17
  %len20.i = getelementptr inbounds %struct.ngx_str_t* %default_types, i32 0, i32 0, !dbg !2463
  %8 = load i32* %len20.i, align 4, !dbg !2463, !tbaa !2269
  %tobool21.i = icmp eq i32 %8, 0, !dbg !2463
  br i1 %tobool21.i, label %if.end29, label %while.body.i.preheader, !dbg !2463

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  %call3.i70 = call i8* @ngx_array_push(%struct.ngx_array_s* %call.i) nounwind, !dbg !2464
  %cmp4.i71 = icmp eq i8* %call3.i70, null, !dbg !2466
  br i1 %cmp4.i71, label %return, label %if.end8.i, !dbg !2466

if.end8.i:                                        ; preds = %while.body.i.preheader, %if.end8.while.body_crit_edge.i
  %call3.i73 = phi i8* [ %call3.i, %if.end8.while.body_crit_edge.i ], [ %call3.i70, %while.body.i.preheader ]
  %len23.i72 = phi i32* [ %incdec.ptr.i, %if.end8.while.body_crit_edge.i ], [ %len20.i, %while.body.i.preheader ]
  %9 = bitcast i32* %len23.i72 to i64*, !dbg !2467
  %10 = bitcast i8* %call3.i73 to i64*, !dbg !2467
  %11 = load i64* %9, align 4, !dbg !2467
  store i64 %11, i64* %10, align 4, !dbg !2467
  %data.i = getelementptr inbounds i32* %len23.i72, i32 1, !dbg !2468
  %12 = bitcast i32* %data.i to i8**, !dbg !2468
  %13 = load i8** %12, align 4, !dbg !2468, !tbaa !2247
  %14 = load i32* %len23.i72, align 4, !dbg !2468, !tbaa !2269
  %call10.i = call i32 @ngx_hash_key(i8* %13, i32 %14) nounwind, !dbg !2468
  %key_hash.i = getelementptr inbounds i8* %call3.i73, i32 8, !dbg !2468
  %15 = bitcast i8* %key_hash.i to i32*, !dbg !2468
  store i32 %call10.i, i32* %15, align 4, !dbg !2468, !tbaa !2269
  %value.i = getelementptr inbounds i8* %call3.i73, i32 12, !dbg !2469
  %16 = bitcast i8* %value.i to i8**, !dbg !2469
  store i8* inttoptr (i32 4 to i8*), i8** %16, align 4, !dbg !2469, !tbaa !2247
  %incdec.ptr.i = getelementptr inbounds i32* %len23.i72, i32 2, !dbg !2470
  %17 = load i32* %incdec.ptr.i, align 4, !dbg !2463, !tbaa !2269
  %tobool.i = icmp eq i32 %17, 0, !dbg !2463
  %.pre = load %struct.ngx_array_s** %prev_keys, align 4, !dbg !2471, !tbaa !2247
  br i1 %tobool.i, label %if.end29, label %if.end8.while.body_crit_edge.i, !dbg !2463

if.end8.while.body_crit_edge.i:                   ; preds = %if.end8.i
  %call3.i = call i8* @ngx_array_push(%struct.ngx_array_s* %.pre) nounwind, !dbg !2464
  %cmp4.i = icmp eq i8* %call3.i, null, !dbg !2466
  br i1 %cmp4.i, label %return, label %if.end8.i, !dbg !2466

if.then27:                                        ; preds = %if.then15
  store %struct.ngx_array_s* %6, %struct.ngx_array_s** %keys, align 4, !dbg !2472, !tbaa !2247
  br label %return, !dbg !2474

if.end29:                                         ; preds = %if.end8.i, %while.cond.preheader.i, %if.then15
  %18 = phi %struct.ngx_array_s* [ %call.i, %while.cond.preheader.i ], [ %6, %if.then15 ], [ %.pre, %if.end8.i ]
  %hash30 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 0, !dbg !2475
  store %struct.ngx_hash_t* %prev_types_hash, %struct.ngx_hash_t** %hash30, align 4, !dbg !2475, !tbaa !2247
  %key31 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 1, !dbg !2476
  store i32 (i8*, i32)* null, i32 (i8*, i32)** %key31, align 4, !dbg !2476, !tbaa !2247
  %max_size34 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 2, !dbg !2477
  store i32 2048, i32* %max_size34, align 4, !dbg !2477, !tbaa !2269
  %bucket_size37 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 3, !dbg !2478
  store i32 64, i32* %bucket_size37, align 4, !dbg !2478, !tbaa !2269
  %name38 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 4, !dbg !2479
  store i8* getelementptr inbounds ([16 x i8]* @.str2, i32 0, i32 0), i8** %name38, align 4, !dbg !2479, !tbaa !2247
  %pool39 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2480
  %19 = load %struct.ngx_pool_s** %pool39, align 4, !dbg !2480, !tbaa !2247
  %pool40 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 5, !dbg !2480
  store %struct.ngx_pool_s* %19, %struct.ngx_pool_s** %pool40, align 4, !dbg !2480, !tbaa !2247
  %temp_pool41 = getelementptr inbounds %struct.ngx_hash_init_t* %hash, i32 0, i32 6, !dbg !2481
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %temp_pool41, align 4, !dbg !2481, !tbaa !2247
  %elts42 = getelementptr inbounds %struct.ngx_array_s* %18, i32 0, i32 0, !dbg !2471
  %20 = load i8** %elts42, align 4, !dbg !2471, !tbaa !2247
  %21 = bitcast i8* %20 to %struct.ngx_hash_key_t*, !dbg !2471
  %nelts43 = getelementptr inbounds %struct.ngx_array_s* %18, i32 0, i32 1, !dbg !2471
  %22 = load i32* %nelts43, align 4, !dbg !2471, !tbaa !2269
  %call44 = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hash, %struct.ngx_hash_key_t* %21, i32 %22) nounwind, !dbg !2471
  %cmp45 = icmp eq i32 %call44, 0, !dbg !2471
  br i1 %cmp45, label %if.end50, label %return, !dbg !2471

if.end50:                                         ; preds = %if.end29, %if.end13
  %23 = bitcast %struct.ngx_hash_t* %prev_types_hash to i64*, !dbg !2482
  %24 = bitcast %struct.ngx_hash_t* %types_hash to i64*, !dbg !2482
  %25 = load i64* %23, align 4, !dbg !2482
  store i64 %25, i64* %24, align 4, !dbg !2482
  br label %return, !dbg !2483

return:                                           ; preds = %while.body.i.preheader, %if.end8.while.body_crit_edge.i, %if.then17, %if.end29, %entry, %if.end50, %if.then27
  %retval.0 = phi i8* [ null, %if.end50 ], [ null, %if.then27 ], [ null, %entry ], [ inttoptr (i32 -1 to i8*), %if.end29 ], [ inttoptr (i32 -1 to i8*), %if.then17 ], [ inttoptr (i32 -1 to i8*), %if.end8.while.body_crit_edge.i ], [ inttoptr (i32 -1 to i8*), %while.body.i.preheader ]
  ret i8* %retval.0, !dbg !2484
}

declare i32 @ngx_hash_init(%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)

define i32 @ngx_http_set_default_types(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_array_s** nocapture %types, %struct.ngx_str_t* nocapture %default_type) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1791), !dbg !2485
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s** %types}, i64 0, metadata !1792), !dbg !2485
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_str_t* %default_type}, i64 0, metadata !1793), !dbg !2485
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2486
  %0 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2486, !tbaa !2247
  %call = tail call %struct.ngx_array_s* @ngx_array_create(%struct.ngx_pool_s* %0, i32 1, i32 16) nounwind, !dbg !2486
  store %struct.ngx_array_s* %call, %struct.ngx_array_s** %types, align 4, !dbg !2486, !tbaa !2247
  %cmp = icmp eq %struct.ngx_array_s* %call, null, !dbg !2487
  br i1 %cmp, label %return, label %while.cond.preheader, !dbg !2487

while.cond.preheader:                             ; preds = %entry
  %len20 = getelementptr inbounds %struct.ngx_str_t* %default_type, i32 0, i32 0, !dbg !2488
  %1 = load i32* %len20, align 4, !dbg !2488, !tbaa !2269
  %tobool21 = icmp eq i32 %1, 0, !dbg !2488
  br i1 %tobool21, label %return, label %while.body, !dbg !2488

while.body:                                       ; preds = %while.cond.preheader, %if.end8.while.body_crit_edge
  %2 = phi %struct.ngx_array_s* [ %.pre, %if.end8.while.body_crit_edge ], [ %call, %while.cond.preheader ]
  %len23 = phi i32* [ %incdec.ptr, %if.end8.while.body_crit_edge ], [ %len20, %while.cond.preheader ]
  %call3 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %2) nounwind, !dbg !2489
  %cmp4 = icmp eq i8* %call3, null, !dbg !2490
  br i1 %cmp4, label %return, label %if.end8, !dbg !2490

if.end8:                                          ; preds = %while.body
  %3 = bitcast i32* %len23 to i64*, !dbg !2491
  %4 = bitcast i8* %call3 to i64*, !dbg !2491
  %5 = load i64* %3, align 4, !dbg !2491
  store i64 %5, i64* %4, align 4, !dbg !2491
  %data = getelementptr inbounds i32* %len23, i32 1, !dbg !2492
  %6 = bitcast i32* %data to i8**, !dbg !2492
  %7 = load i8** %6, align 4, !dbg !2492, !tbaa !2247
  %8 = load i32* %len23, align 4, !dbg !2492, !tbaa !2269
  %call10 = tail call i32 @ngx_hash_key(i8* %7, i32 %8) nounwind, !dbg !2492
  %key_hash = getelementptr inbounds i8* %call3, i32 8, !dbg !2492
  %9 = bitcast i8* %key_hash to i32*, !dbg !2492
  store i32 %call10, i32* %9, align 4, !dbg !2492, !tbaa !2269
  %value = getelementptr inbounds i8* %call3, i32 12, !dbg !2493
  %10 = bitcast i8* %value to i8**, !dbg !2493
  store i8* inttoptr (i32 4 to i8*), i8** %10, align 4, !dbg !2493, !tbaa !2247
  %incdec.ptr = getelementptr inbounds i32* %len23, i32 2, !dbg !2494
  %11 = load i32* %incdec.ptr, align 4, !dbg !2488, !tbaa !2269
  %tobool = icmp eq i32 %11, 0, !dbg !2488
  br i1 %tobool, label %return, label %if.end8.while.body_crit_edge, !dbg !2488

if.end8.while.body_crit_edge:                     ; preds = %if.end8
  %.pre = load %struct.ngx_array_s** %types, align 4, !dbg !2489, !tbaa !2247
  br label %while.body, !dbg !2488

return:                                           ; preds = %while.cond.preheader, %while.body, %if.end8, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ 0, %while.cond.preheader ], [ -1, %while.body ], [ 0, %if.end8 ]
  ret i32 %retval.0, !dbg !2495
}

define internal fastcc i32 @ngx_http_add_server(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_conf_addr_t* %addr) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1824), !dbg !2496
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t* %cscf}, i64 0, metadata !1825), !dbg !2496
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_addr_t* %addr}, i64 0, metadata !1826), !dbg !2496
  %servers = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr, i32 0, i32 7, !dbg !2497
  %elts = getelementptr inbounds %struct.ngx_array_s* %servers, i32 0, i32 0, !dbg !2497
  %0 = load i8** %elts, align 4, !dbg !2497, !tbaa !2247
  %cmp = icmp eq i8* %0, null, !dbg !2497
  br i1 %cmp, label %cont, label %if.else, !dbg !2497

cont:                                             ; preds = %entry
  %temp_pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2498
  %1 = load %struct.ngx_pool_s** %temp_pool, align 4, !dbg !2498, !tbaa !2247
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %servers}, i64 0, metadata !2500) nounwind, !dbg !2501
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %1}, i64 0, metadata !2502) nounwind, !dbg !2501
  tail call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2503) nounwind, !dbg !2501
  tail call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2504) nounwind, !dbg !2501
  %nelts.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr, i32 0, i32 7, i32 1, !dbg !2505
  store i32 0, i32* %nelts.i, align 4, !dbg !2505, !tbaa !2269
  %size1.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr, i32 0, i32 7, i32 2, !dbg !2506
  store i32 4, i32* %size1.i, align 4, !dbg !2506, !tbaa !2269
  %nalloc.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr, i32 0, i32 7, i32 3, !dbg !2507
  store i32 4, i32* %nalloc.i, align 4, !dbg !2507, !tbaa !2269
  %pool2.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr, i32 0, i32 7, i32 4, !dbg !2508
  store %struct.ngx_pool_s* %1, %struct.ngx_pool_s** %pool2.i, align 4, !dbg !2508, !tbaa !2247
  %call.i = tail call i8* @ngx_palloc(%struct.ngx_pool_s* %1, i32 16) nounwind, !dbg !2509
  store i8* %call.i, i8** %elts, align 4, !dbg !2509, !tbaa !2247
  %cmp.i = icmp eq i8* %call.i, null, !dbg !2510
  br i1 %cmp.i, label %return, label %if.end22, !dbg !2498

if.else:                                          ; preds = %entry
  %2 = bitcast i8* %0 to %struct.ngx_http_core_srv_conf_t**, !dbg !2511
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t** %2}, i64 0, metadata !1829), !dbg !2511
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !1827), !dbg !2513
  %nelts = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr, i32 0, i32 7, i32 1, !dbg !2513
  %3 = load i32* %nelts, align 4, !dbg !2513, !tbaa !2269
  %cmp1140 = icmp eq i32 %3, 0, !dbg !2513
  br i1 %cmp1140, label %if.end22, label %for.body, !dbg !2513

for.body:                                         ; preds = %if.else, %for.cond.backedge
  %4 = phi i32 [ %9, %for.cond.backedge ], [ %3, %if.else ]
  %i.041 = phi i32 [ %7, %for.cond.backedge ], [ 0, %if.else ]
  %arrayidx = getelementptr inbounds %struct.ngx_http_core_srv_conf_t** %2, i32 %i.041, !dbg !2515
  %5 = load %struct.ngx_http_core_srv_conf_t** %arrayidx, align 4, !dbg !2515, !tbaa !2247
  %cmp12 = icmp eq %struct.ngx_http_core_srv_conf_t* %5, %cscf, !dbg !2515
  br i1 %cmp12, label %cont15, label %for.inc, !dbg !2515

cont15:                                           ; preds = %for.body
  %arraydecay = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr, i32 0, i32 0, i32 10, i32 0, !dbg !2517
  tail call void (i32, %struct.ngx_conf_s*, i32, i8*, ...)* @ngx_conf_log_error(i32 1, %struct.ngx_conf_s* %cf, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str3, i32 0, i32 0), i8* %arraydecay) nounwind, !dbg !2517
  br label %return, !dbg !2519

for.inc:                                          ; preds = %for.body
  %6 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.041, i32 1), !dbg !2513
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !2513
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !2513
  br i1 %8, label %ioc_bb20, label %for.cond.backedge, !dbg !2513

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb20
  %9 = phi i32 [ %4, %for.inc ], [ %.pre, %ioc_bb20 ], !dbg !2513
  %cmp11 = icmp ult i32 %7, %9, !dbg !2513
  br i1 %cmp11, label %for.body, label %if.end22, !dbg !2513

ioc_bb20:                                         ; preds = %for.inc
  %10 = zext i32 %i.041 to i64, !dbg !2513
  tail call void @__ioc_report_add_overflow(i32 1007, i32 45, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind, !dbg !2513
  %.pre = load i32* %nelts, align 4, !dbg !2513, !tbaa !2269
  br label %for.cond.backedge, !dbg !2513

if.end22:                                         ; preds = %if.else, %for.cond.backedge, %cont
  %call24 = tail call i8* @ngx_array_push(%struct.ngx_array_s* %servers) nounwind, !dbg !2520
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t** %11}, i64 0, metadata !1829), !dbg !2520
  %cmp25 = icmp eq i8* %call24, null, !dbg !2521
  br i1 %cmp25, label %return, label %if.end29, !dbg !2521

if.end29:                                         ; preds = %if.end22
  %11 = bitcast i8* %call24 to %struct.ngx_http_core_srv_conf_t**, !dbg !2520
  store %struct.ngx_http_core_srv_conf_t* %cscf, %struct.ngx_http_core_srv_conf_t** %11, align 4, !dbg !2522, !tbaa !2247
  br label %return, !dbg !2523

return:                                           ; preds = %cont, %if.end22, %if.end29, %cont15
  %retval.0 = phi i32 [ 0, %if.end29 ], [ -1, %cont15 ], [ -1, %cont ], [ -1, %if.end22 ]
  ret i32 %retval.0, !dbg !2524
}

declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) nounwind readnone

declare void @__ioc_report_mul_overflow(i32, i32, i8*, i8*, i64, i64, i8)

declare i32 @memcmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

define internal i8* @ngx_http_block(%struct.ngx_conf_s* %cf, %struct.ngx_command_s* nocapture %cmd, i8* nocapture %conf) nounwind {
entry:
  %hash.i.i = alloca %struct.ngx_hash_init_t, align 4
  %ha.i.i = alloca %struct.ngx_hash_keys_arrays_t, align 4
  %headers_in.i = alloca %struct.ngx_array_s, align 4
  %hash.i = alloca %struct.ngx_hash_init_t, align 4
  %pcf = alloca %struct.ngx_conf_s, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !1860), !dbg !2525
  call void @llvm.dbg.value(metadata !{%struct.ngx_command_s* %cmd}, i64 0, metadata !1861), !dbg !2525
  call void @llvm.dbg.value(metadata !{i8* %conf}, i64 0, metadata !1862), !dbg !2525
  call void @llvm.dbg.declare(metadata !{%struct.ngx_conf_s* %pcf}, metadata !1868), !dbg !2526
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !2527
  %0 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2527, !tbaa !2247
  %call = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %0, i32 12) nounwind, !dbg !2527
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_ctx_t* %1}, i64 0, metadata !1894), !dbg !2527
  %cmp = icmp eq i8* %call, null, !dbg !2528
  br i1 %cmp, label %ngx_http_optimize_servers.exit, label %if.end, !dbg !2528

if.end:                                           ; preds = %entry
  %1 = bitcast i8* %call to %struct.ngx_http_conf_ctx_t*, !dbg !2527
  %2 = bitcast i8* %conf to %struct.ngx_http_conf_ctx_t**, !dbg !2529
  store %struct.ngx_http_conf_ctx_t* %1, %struct.ngx_http_conf_ctx_t** %2, align 4, !dbg !2529, !tbaa !2247
  store i32 0, i32* @ngx_http_max_module, align 4, !dbg !2530, !tbaa !2269
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1866), !dbg !2531
  %3 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !2531, !tbaa !2247
  %tobool443 = icmp eq %struct.ngx_module_s* %3, null, !dbg !2531
  br i1 %tobool443, label %for.end, label %cont7, !dbg !2531

cont7:                                            ; preds = %if.end, %for.cond.backedge
  %4 = phi %struct.ngx_module_s* [ %15, %for.cond.backedge ], [ %3, %if.end ]
  %arrayidx445 = phi %struct.ngx_module_s** [ %arrayidx, %for.cond.backedge ], [ getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), %if.end ]
  %m.0444 = phi i32 [ %13, %for.cond.backedge ], [ 0, %if.end ]
  %type = getelementptr inbounds %struct.ngx_module_s* %4, i32 0, i32 9, !dbg !2533
  %5 = load i32* %type, align 4, !dbg !2533, !tbaa !2269
  %cmp8 = icmp eq i32 %5, 1347703880, !dbg !2533
  br i1 %cmp8, label %if.end10, label %for.inc, !dbg !2533

if.end10:                                         ; preds = %cont7
  %6 = load i32* @ngx_http_max_module, align 4, !dbg !2535, !tbaa !2269
  %7 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %6, i32 1), !dbg !2535
  %8 = extractvalue { i32, i1 } %7, 0, !dbg !2535
  %9 = extractvalue { i32, i1 } %7, 1, !dbg !2535
  br i1 %9, label %ioc_bb11, label %cont12, !dbg !2535

ioc_bb11:                                         ; preds = %if.end10
  %10 = zext i32 %6 to i64, !dbg !2535
  call void @__ioc_report_add_overflow(i32 74, i32 54, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %10, i64 1, i8 5) nounwind, !dbg !2535
  %.pre452 = load %struct.ngx_module_s** %arrayidx445, align 4, !dbg !2535, !tbaa !2247
  br label %cont12, !dbg !2535

cont12:                                           ; preds = %if.end10, %ioc_bb11
  %11 = phi %struct.ngx_module_s* [ %4, %if.end10 ], [ %.pre452, %ioc_bb11 ]
  store i32 %8, i32* @ngx_http_max_module, align 4, !dbg !2535, !tbaa !2269
  %ctx_index = getelementptr inbounds %struct.ngx_module_s* %11, i32 0, i32 0, !dbg !2535
  store i32 %6, i32* %ctx_index, align 4, !dbg !2535, !tbaa !2269
  br label %for.inc, !dbg !2536

for.inc:                                          ; preds = %cont7, %cont12
  %12 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.0444, i32 1), !dbg !2531
  %13 = extractvalue { i32, i1 } %12, 0, !dbg !2531
  %14 = extractvalue { i32, i1 } %12, 1, !dbg !2531
  br i1 %14, label %ioc_bb14, label %for.cond.backedge, !dbg !2531

for.cond.backedge:                                ; preds = %for.inc, %ioc_bb14
  %arrayidx = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %13, !dbg !2531
  %15 = load %struct.ngx_module_s** %arrayidx, align 4, !dbg !2531, !tbaa !2247
  %tobool = icmp eq %struct.ngx_module_s* %15, null, !dbg !2531
  br i1 %tobool, label %for.cond.for.end_crit_edge, label %cont7, !dbg !2531

ioc_bb14:                                         ; preds = %for.inc
  %16 = zext i32 %m.0444 to i64, !dbg !2531
  call void @__ioc_report_add_overflow(i32 70, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind, !dbg !2531
  br label %for.cond.backedge, !dbg !2531

for.cond.for.end_crit_edge:                       ; preds = %for.cond.backedge
  %.pre = load i32* @ngx_http_max_module, align 4, !dbg !2537, !tbaa !2269
  br label %for.end, !dbg !2531

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  %17 = phi i32 [ %.pre, %for.cond.for.end_crit_edge ], [ 0, %if.end ]
  %18 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2537, !tbaa !2247
  %19 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4), !dbg !2537
  %20 = extractvalue { i32, i1 } %19, 0, !dbg !2537
  %21 = extractvalue { i32, i1 } %19, 1, !dbg !2537
  br i1 %21, label %ioc_bb17, label %cont18, !dbg !2537

ioc_bb17:                                         ; preds = %for.end
  %22 = zext i32 %17 to i64, !dbg !2537
  call void @__ioc_report_mul_overflow(i32 77, i32 61, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 4, i64 %22, i8 5) nounwind, !dbg !2537
  br label %cont18, !dbg !2537

cont18:                                           ; preds = %for.end, %ioc_bb17
  %call19 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %18, i32 %20) nounwind, !dbg !2537
  %23 = bitcast i8* %call19 to i8**, !dbg !2537
  %main_conf = bitcast i8* %call to i8***, !dbg !2537
  store i8** %23, i8*** %main_conf, align 4, !dbg !2537, !tbaa !2247
  %cmp21 = icmp eq i8* %call19, null, !dbg !2538
  br i1 %cmp21, label %ngx_http_optimize_servers.exit, label %if.end25, !dbg !2538

if.end25:                                         ; preds = %cont18
  %24 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2539, !tbaa !2247
  %25 = load i32* @ngx_http_max_module, align 4, !dbg !2539, !tbaa !2269
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 4), !dbg !2539
  %27 = extractvalue { i32, i1 } %26, 0, !dbg !2539
  %28 = extractvalue { i32, i1 } %26, 1, !dbg !2539
  br i1 %28, label %ioc_bb27, label %cont28, !dbg !2539

ioc_bb27:                                         ; preds = %if.end25
  %29 = zext i32 %25 to i64, !dbg !2539
  call void @__ioc_report_mul_overflow(i32 85, i32 60, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 4, i64 %29, i8 5) nounwind, !dbg !2539
  br label %cont28, !dbg !2539

cont28:                                           ; preds = %if.end25, %ioc_bb27
  %call29 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %24, i32 %27) nounwind, !dbg !2539
  %30 = bitcast i8* %call29 to i8**, !dbg !2539
  %srv_conf = getelementptr inbounds i8* %call, i32 4, !dbg !2539
  %31 = bitcast i8* %srv_conf to i8***, !dbg !2539
  store i8** %30, i8*** %31, align 4, !dbg !2539, !tbaa !2247
  %cmp31 = icmp eq i8* %call29, null, !dbg !2540
  br i1 %cmp31, label %ngx_http_optimize_servers.exit, label %if.end35, !dbg !2540

if.end35:                                         ; preds = %cont28
  %32 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2541, !tbaa !2247
  %33 = load i32* @ngx_http_max_module, align 4, !dbg !2541, !tbaa !2269
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 4), !dbg !2541
  %35 = extractvalue { i32, i1 } %34, 0, !dbg !2541
  %36 = extractvalue { i32, i1 } %34, 1, !dbg !2541
  br i1 %36, label %ioc_bb37, label %cont38, !dbg !2541

ioc_bb37:                                         ; preds = %if.end35
  %37 = zext i32 %33 to i64, !dbg !2541
  call void @__ioc_report_mul_overflow(i32 93, i32 60, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 4, i64 %37, i8 5) nounwind, !dbg !2541
  br label %cont38, !dbg !2541

cont38:                                           ; preds = %if.end35, %ioc_bb37
  %call39 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %32, i32 %35) nounwind, !dbg !2541
  %38 = bitcast i8* %call39 to i8**, !dbg !2541
  %loc_conf = getelementptr inbounds i8* %call, i32 8, !dbg !2541
  %39 = bitcast i8* %loc_conf to i8***, !dbg !2541
  store i8** %38, i8*** %39, align 4, !dbg !2541, !tbaa !2247
  %cmp41 = icmp eq i8* %call39, null, !dbg !2542
  br i1 %cmp41, label %ngx_http_optimize_servers.exit, label %for.cond48.preheader, !dbg !2542

for.cond48.preheader:                             ; preds = %cont38
  %40 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !2543, !tbaa !2247
  %tobool50441 = icmp eq %struct.ngx_module_s* %40, null, !dbg !2543
  br i1 %tobool50441, label %for.end108, label %cont55, !dbg !2543

cont55:                                           ; preds = %for.cond48.preheader, %for.cond48.backedge
  %41 = phi %struct.ngx_module_s* [ %63, %for.cond48.backedge ], [ %40, %for.cond48.preheader ]
  %m.1442 = phi i32 [ %61, %for.cond48.backedge ], [ 0, %for.cond48.preheader ]
  %type53 = getelementptr inbounds %struct.ngx_module_s* %41, i32 0, i32 9, !dbg !2545
  %42 = load i32* %type53, align 4, !dbg !2545, !tbaa !2269
  %cmp56 = icmp eq i32 %42, 1347703880, !dbg !2545
  br i1 %cmp56, label %if.end58, label %for.inc105, !dbg !2545

if.end58:                                         ; preds = %cont55
  %ctx60 = getelementptr inbounds %struct.ngx_module_s* %41, i32 0, i32 7, !dbg !2547
  %43 = load i8** %ctx60, align 4, !dbg !2547, !tbaa !2247
  %ctx_index62 = getelementptr inbounds %struct.ngx_module_s* %41, i32 0, i32 0, !dbg !2548
  %44 = load i32* %ctx_index62, align 4, !dbg !2548, !tbaa !2269
  call void @llvm.dbg.value(metadata !{i32 %44}, i64 0, metadata !1865), !dbg !2548
  %create_main_conf = getelementptr inbounds i8* %43, i32 8, !dbg !2549
  %45 = bitcast i8* %create_main_conf to i8* (%struct.ngx_conf_s*)**, !dbg !2549
  %46 = load i8* (%struct.ngx_conf_s*)** %45, align 4, !dbg !2549, !tbaa !2247
  %tobool63 = icmp eq i8* (%struct.ngx_conf_s*)* %46, null, !dbg !2549
  br i1 %tobool63, label %if.end76, label %if.then64, !dbg !2549

if.then64:                                        ; preds = %if.end58
  %call66 = call i8* %46(%struct.ngx_conf_s* %cf) nounwind, !dbg !2550
  %47 = load i8*** %main_conf, align 4, !dbg !2550, !tbaa !2247
  %arrayidx68 = getelementptr inbounds i8** %47, i32 %44, !dbg !2550
  store i8* %call66, i8** %arrayidx68, align 4, !dbg !2550, !tbaa !2247
  %48 = load i8*** %main_conf, align 4, !dbg !2552, !tbaa !2247
  %arrayidx70 = getelementptr inbounds i8** %48, i32 %44, !dbg !2552
  %49 = load i8** %arrayidx70, align 4, !dbg !2552, !tbaa !2247
  %cmp71 = icmp eq i8* %49, null, !dbg !2552
  br i1 %cmp71, label %ngx_http_optimize_servers.exit, label %if.end76, !dbg !2552

if.end76:                                         ; preds = %if.end58, %if.then64
  %create_srv_conf = getelementptr inbounds i8* %43, i32 16, !dbg !2553
  %50 = bitcast i8* %create_srv_conf to i8* (%struct.ngx_conf_s*)**, !dbg !2553
  %51 = load i8* (%struct.ngx_conf_s*)** %50, align 4, !dbg !2553, !tbaa !2247
  %tobool77 = icmp eq i8* (%struct.ngx_conf_s*)* %51, null, !dbg !2553
  br i1 %tobool77, label %if.end90, label %if.then78, !dbg !2553

if.then78:                                        ; preds = %if.end76
  %call80 = call i8* %51(%struct.ngx_conf_s* %cf) nounwind, !dbg !2554
  %52 = load i8*** %31, align 4, !dbg !2554, !tbaa !2247
  %arrayidx82 = getelementptr inbounds i8** %52, i32 %44, !dbg !2554
  store i8* %call80, i8** %arrayidx82, align 4, !dbg !2554, !tbaa !2247
  %53 = load i8*** %31, align 4, !dbg !2556, !tbaa !2247
  %arrayidx84 = getelementptr inbounds i8** %53, i32 %44, !dbg !2556
  %54 = load i8** %arrayidx84, align 4, !dbg !2556, !tbaa !2247
  %cmp85 = icmp eq i8* %54, null, !dbg !2556
  br i1 %cmp85, label %ngx_http_optimize_servers.exit, label %if.end90, !dbg !2556

if.end90:                                         ; preds = %if.end76, %if.then78
  %create_loc_conf = getelementptr inbounds i8* %43, i32 24, !dbg !2557
  %55 = bitcast i8* %create_loc_conf to i8* (%struct.ngx_conf_s*)**, !dbg !2557
  %56 = load i8* (%struct.ngx_conf_s*)** %55, align 4, !dbg !2557, !tbaa !2247
  %tobool91 = icmp eq i8* (%struct.ngx_conf_s*)* %56, null, !dbg !2557
  br i1 %tobool91, label %for.inc105, label %if.then92, !dbg !2557

if.then92:                                        ; preds = %if.end90
  %call94 = call i8* %56(%struct.ngx_conf_s* %cf) nounwind, !dbg !2558
  %57 = load i8*** %39, align 4, !dbg !2558, !tbaa !2247
  %arrayidx96 = getelementptr inbounds i8** %57, i32 %44, !dbg !2558
  store i8* %call94, i8** %arrayidx96, align 4, !dbg !2558, !tbaa !2247
  %58 = load i8*** %39, align 4, !dbg !2560, !tbaa !2247
  %arrayidx98 = getelementptr inbounds i8** %58, i32 %44, !dbg !2560
  %59 = load i8** %arrayidx98, align 4, !dbg !2560, !tbaa !2247
  %cmp99 = icmp eq i8* %59, null, !dbg !2560
  br i1 %cmp99, label %ngx_http_optimize_servers.exit, label %for.inc105, !dbg !2560

for.inc105:                                       ; preds = %if.end90, %cont55, %if.then92
  %60 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.1442, i32 1), !dbg !2543
  %61 = extractvalue { i32, i1 } %60, 0, !dbg !2543
  %62 = extractvalue { i32, i1 } %60, 1, !dbg !2543
  br i1 %62, label %ioc_bb106, label %for.cond48.backedge, !dbg !2543

for.cond48.backedge:                              ; preds = %for.inc105, %ioc_bb106
  %arrayidx49 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %61, !dbg !2543
  %63 = load %struct.ngx_module_s** %arrayidx49, align 4, !dbg !2543, !tbaa !2247
  %tobool50 = icmp eq %struct.ngx_module_s* %63, null, !dbg !2543
  br i1 %tobool50, label %for.end108, label %cont55, !dbg !2543

ioc_bb106:                                        ; preds = %for.inc105
  %64 = zext i32 %m.1442 to i64, !dbg !2543
  call void @__ioc_report_add_overflow(i32 101, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %64, i64 1, i8 5) nounwind, !dbg !2543
  br label %for.cond48.backedge, !dbg !2543

for.end108:                                       ; preds = %for.cond48.backedge, %for.cond48.preheader
  %65 = bitcast %struct.ngx_conf_s* %pcf to i8*, !dbg !2561
  %66 = bitcast %struct.ngx_conf_s* %cf to i8*, !dbg !2561
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %65, i8* %66, i32 48, i32 4, i1 false), !dbg !2561, !tbaa.struct !2562
  %ctx109 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !2563
  store i8* %call, i8** %ctx109, align 4, !dbg !2563, !tbaa !2247
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1866), !dbg !2564
  %67 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !2564, !tbaa !2247
  %tobool114438 = icmp eq %struct.ngx_module_s* %67, null, !dbg !2564
  br i1 %tobool114438, label %cont140, label %cont119, !dbg !2564

cont119:                                          ; preds = %for.end108, %for.cond112.backedge
  %68 = phi %struct.ngx_module_s* [ %75, %for.cond112.backedge ], [ %67, %for.end108 ]
  %m.2439 = phi i32 [ %73, %for.cond112.backedge ], [ 0, %for.end108 ]
  %type117 = getelementptr inbounds %struct.ngx_module_s* %68, i32 0, i32 9, !dbg !2566
  %69 = load i32* %type117, align 4, !dbg !2566, !tbaa !2269
  %cmp120 = icmp eq i32 %69, 1347703880, !dbg !2566
  br i1 %cmp120, label %if.end122, label %for.inc135, !dbg !2566

if.end122:                                        ; preds = %cont119
  %ctx124 = getelementptr inbounds %struct.ngx_module_s* %68, i32 0, i32 7, !dbg !2568
  %70 = load i8** %ctx124, align 4, !dbg !2568, !tbaa !2247
  %preconfiguration = bitcast i8* %70 to i32 (%struct.ngx_conf_s*)**, !dbg !2569
  %71 = load i32 (%struct.ngx_conf_s*)** %preconfiguration, align 4, !dbg !2569, !tbaa !2247
  %tobool125 = icmp eq i32 (%struct.ngx_conf_s*)* %71, null, !dbg !2569
  br i1 %tobool125, label %for.inc135, label %if.then126, !dbg !2569

if.then126:                                       ; preds = %if.end122
  %call128 = call i32 %71(%struct.ngx_conf_s* %cf) nounwind, !dbg !2570
  %cmp129 = icmp eq i32 %call128, 0, !dbg !2570
  br i1 %cmp129, label %for.inc135, label %ngx_http_optimize_servers.exit, !dbg !2570

for.inc135:                                       ; preds = %if.then126, %if.end122, %cont119
  %72 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.2439, i32 1), !dbg !2564
  %73 = extractvalue { i32, i1 } %72, 0, !dbg !2564
  %74 = extractvalue { i32, i1 } %72, 1, !dbg !2564
  br i1 %74, label %ioc_bb136, label %for.cond112.backedge, !dbg !2564

for.cond112.backedge:                             ; preds = %for.inc135, %ioc_bb136
  %arrayidx113 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %73, !dbg !2564
  %75 = load %struct.ngx_module_s** %arrayidx113, align 4, !dbg !2564, !tbaa !2247
  %tobool114 = icmp eq %struct.ngx_module_s* %75, null, !dbg !2564
  br i1 %tobool114, label %cont140, label %cont119, !dbg !2564

ioc_bb136:                                        ; preds = %for.inc135
  %76 = zext i32 %m.2439 to i64, !dbg !2564
  call void @__ioc_report_add_overflow(i32 128, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %76, i64 1, i8 5) nounwind, !dbg !2564
  br label %for.cond112.backedge, !dbg !2564

cont140:                                          ; preds = %for.cond112.backedge, %for.end108
  %module_type = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 8, !dbg !2572
  store i32 1347703880, i32* %module_type, align 4, !dbg !2572, !tbaa !2269
  %cmd_type = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 9, !dbg !2573
  store i32 33554432, i32* %cmd_type, align 4, !dbg !2573, !tbaa !2269
  %call143 = call i8* @ngx_conf_parse(%struct.ngx_conf_s* %cf, %struct.ngx_str_t* null) nounwind, !dbg !2574
  call void @llvm.dbg.value(metadata !{i8* %call143}, i64 0, metadata !1863), !dbg !2574
  %cmp144 = icmp eq i8* %call143, null, !dbg !2575
  br i1 %cmp144, label %if.end146, label %failed, !dbg !2575

if.end146:                                        ; preds = %cont140
  %77 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2576, !tbaa !2269
  %78 = load i8*** %main_conf, align 4, !dbg !2576, !tbaa !2247
  %arrayidx148 = getelementptr inbounds i8** %78, i32 %77, !dbg !2576
  %79 = load i8** %arrayidx148, align 4, !dbg !2576, !tbaa !2247
  %80 = bitcast i8* %79 to %struct.ngx_http_core_main_conf_t*, !dbg !2576
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_main_conf_t* %80}, i64 0, metadata !1897), !dbg !2576
  %elts = bitcast i8* %79 to i8**, !dbg !2577
  %81 = load i8** %elts, align 4, !dbg !2577, !tbaa !2247
  %82 = bitcast i8* %81 to %struct.ngx_http_core_srv_conf_t**, !dbg !2577
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t** %82}, i64 0, metadata !1896), !dbg !2577
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !1866), !dbg !2578
  %83 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !2578, !tbaa !2247
  %tobool153435 = icmp eq %struct.ngx_module_s* %83, null, !dbg !2578
  %nelts.pre = getelementptr inbounds i8* %79, i32 4, !dbg !2580
  %.pre453 = bitcast i8* %nelts.pre to i32*, !dbg !2580
  br i1 %tobool153435, label %for.cond186.preheader, label %cont158, !dbg !2578

for.cond186.preheader:                            ; preds = %if.end146, %for.cond151.backedge
  %84 = load i32* %.pre453, align 4, !dbg !2580, !tbaa !2269
  %cmp188431 = icmp eq i32 %84, 0, !dbg !2580
  br i1 %cmp188431, label %for.end210, label %for.body189, !dbg !2580

cont158:                                          ; preds = %if.end146, %for.cond151.backedge
  %85 = phi %struct.ngx_module_s* [ %136, %for.cond151.backedge ], [ %83, %if.end146 ]
  %m.3436 = phi i32 [ %134, %for.cond151.backedge ], [ 0, %if.end146 ]
  %type156 = getelementptr inbounds %struct.ngx_module_s* %85, i32 0, i32 9, !dbg !2582
  %86 = load i32* %type156, align 4, !dbg !2582, !tbaa !2269
  %cmp159 = icmp eq i32 %86, 1347703880, !dbg !2582
  br i1 %cmp159, label %if.end161, label %for.inc180, !dbg !2582

if.end161:                                        ; preds = %cont158
  %ctx163 = getelementptr inbounds %struct.ngx_module_s* %85, i32 0, i32 7, !dbg !2584
  %87 = load i8** %ctx163, align 4, !dbg !2584, !tbaa !2247
  %88 = bitcast i8* %87 to %struct.ngx_http_module_t*, !dbg !2584
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_module_t* %88}, i64 0, metadata !1869), !dbg !2584
  %ctx_index165 = getelementptr inbounds %struct.ngx_module_s* %85, i32 0, i32 0, !dbg !2585
  %89 = load i32* %ctx_index165, align 4, !dbg !2585, !tbaa !2269
  call void @llvm.dbg.value(metadata !{i32 %89}, i64 0, metadata !1865), !dbg !2585
  %init_main_conf = getelementptr inbounds i8* %87, i32 12, !dbg !2586
  %90 = bitcast i8* %init_main_conf to i8* (%struct.ngx_conf_s*, i8*)**, !dbg !2586
  %91 = load i8* (%struct.ngx_conf_s*, i8*)** %90, align 4, !dbg !2586, !tbaa !2247
  %tobool166 = icmp eq i8* (%struct.ngx_conf_s*, i8*)* %91, null, !dbg !2586
  br i1 %tobool166, label %if.end175, label %if.then167, !dbg !2586

if.then167:                                       ; preds = %if.end161
  %92 = load i8*** %main_conf, align 4, !dbg !2587, !tbaa !2247
  %arrayidx170 = getelementptr inbounds i8** %92, i32 %89, !dbg !2587
  %93 = load i8** %arrayidx170, align 4, !dbg !2587, !tbaa !2247
  %call171 = call i8* %91(%struct.ngx_conf_s* %cf, i8* %93) nounwind, !dbg !2587
  call void @llvm.dbg.value(metadata !{i8* %call171}, i64 0, metadata !1863), !dbg !2587
  %cmp172 = icmp eq i8* %call171, null, !dbg !2589
  br i1 %cmp172, label %if.end175, label %failed, !dbg !2589

if.end175:                                        ; preds = %if.then167, %if.end161
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2590) nounwind, !dbg !2592
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_main_conf_t* %80}, i64 0, metadata !2593) nounwind, !dbg !2592
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_module_t* %88}, i64 0, metadata !2594) nounwind, !dbg !2592
  call void @llvm.dbg.value(metadata !{i32 %89}, i64 0, metadata !2595) nounwind, !dbg !2592
  call void @llvm.dbg.declare(metadata !2596, metadata !2160) nounwind, !dbg !2597
  %94 = load i8** %elts, align 4, !dbg !2598, !tbaa !2247
  %95 = bitcast i8* %94 to %struct.ngx_http_core_srv_conf_t**, !dbg !2598
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t** %95}, i64 0, metadata !2599) nounwind, !dbg !2598
  %96 = load i8** %ctx109, align 4, !dbg !2600, !tbaa !2247
  %saved.sroa.0.0..idx50.i = bitcast i8* %96 to i8***, !dbg !2601
  %saved.sroa.0.0.copyload51.i = load i8*** %saved.sroa.0.0..idx50.i, align 4, !dbg !2601
  %saved.sroa.1.4..idx53.i = getelementptr inbounds i8* %96, i32 4, !dbg !2601
  %97 = bitcast i8* %saved.sroa.1.4..idx53.i to i8***, !dbg !2601
  %saved.sroa.1.4.copyload54.i = load i8*** %97, align 4, !dbg !2601
  %saved.sroa.2.8..idx56.i = getelementptr inbounds i8* %96, i32 8, !dbg !2601
  %98 = bitcast i8* %saved.sroa.2.8..idx56.i to i8***, !dbg !2601
  %saved.sroa.2.8.copyload57.i = load i8*** %98, align 4, !dbg !2601
  call void @llvm.dbg.value(metadata !2602, i64 0, metadata !2603) nounwind, !dbg !2604
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2605) nounwind, !dbg !2606
  %arrayidx7.i = getelementptr inbounds i8** %saved.sroa.1.4.copyload54.i, i32 %89, !dbg !2608
  %99 = load i32* %.pre453, align 4, !dbg !2606, !tbaa !2269
  %cmp83.i = icmp eq i32 %99, 0, !dbg !2606
  br i1 %cmp83.i, label %ngx_http_merge_servers.exit.thread410, label %for.body.lr.ph.i, !dbg !2606

for.body.lr.ph.i:                                 ; preds = %if.end175
  %merge_srv_conf.i = getelementptr inbounds i8* %87, i32 20, !dbg !2611
  %100 = bitcast i8* %merge_srv_conf.i to i8* (%struct.ngx_conf_s*, i8*, i8*)**, !dbg !2611
  %merge_loc_conf.i = getelementptr inbounds i8* %87, i32 28, !dbg !2612
  %101 = bitcast i8* %merge_loc_conf.i to i8* (%struct.ngx_conf_s*, i8*, i8*)**, !dbg !2612
  %arrayidx22.i = getelementptr inbounds i8** %saved.sroa.2.8.copyload57.i, i32 %89, !dbg !2613
  br label %for.body.i, !dbg !2606

for.body.i:                                       ; preds = %for.cond.backedge.i, %for.body.lr.ph.i
  %s.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %129, %for.cond.backedge.i ]
  %arrayidx.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t** %95, i32 %s.084.i, !dbg !2615
  %102 = load %struct.ngx_http_core_srv_conf_t** %arrayidx.i, align 4, !dbg !2615, !tbaa !2247
  %ctx3.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %102, i32 0, i32 1, !dbg !2615
  %103 = load %struct.ngx_http_conf_ctx_t** %ctx3.i, align 4, !dbg !2615, !tbaa !2247
  %srv_conf.i = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %103, i32 0, i32 1, !dbg !2615
  %104 = load i8*** %srv_conf.i, align 4, !dbg !2615, !tbaa !2247
  store i8** %104, i8*** %97, align 4, !dbg !2615, !tbaa !2247
  %105 = load i8* (%struct.ngx_conf_s*, i8*, i8*)** %100, align 4, !dbg !2611, !tbaa !2247
  %tobool.i = icmp eq i8* (%struct.ngx_conf_s*, i8*, i8*)* %105, null, !dbg !2611
  br i1 %tobool.i, label %if.end14.i, label %if.then.i, !dbg !2611

if.then.i:                                        ; preds = %for.body.i
  %106 = load i8** %arrayidx7.i, align 4, !dbg !2608, !tbaa !2247
  %107 = load %struct.ngx_http_core_srv_conf_t** %arrayidx.i, align 4, !dbg !2608, !tbaa !2247
  %ctx9.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %107, i32 0, i32 1, !dbg !2608
  %108 = load %struct.ngx_http_conf_ctx_t** %ctx9.i, align 4, !dbg !2608, !tbaa !2247
  %srv_conf10.i = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %108, i32 0, i32 1, !dbg !2608
  %109 = load i8*** %srv_conf10.i, align 4, !dbg !2608, !tbaa !2247
  %arrayidx11.i = getelementptr inbounds i8** %109, i32 %89, !dbg !2608
  %110 = load i8** %arrayidx11.i, align 4, !dbg !2608, !tbaa !2247
  %call.i = call i8* %105(%struct.ngx_conf_s* %cf, i8* %106, i8* %110) nounwind, !dbg !2608
  call void @llvm.dbg.value(metadata !{i8* %call.i}, i64 0, metadata !2603) nounwind, !dbg !2608
  %cmp12.i = icmp eq i8* %call.i, null, !dbg !2616
  br i1 %cmp12.i, label %if.end14.i, label %ngx_http_merge_servers.exit.thread, !dbg !2616

if.end14.i:                                       ; preds = %if.then.i, %for.body.i
  %111 = load i8* (%struct.ngx_conf_s*, i8*, i8*)** %101, align 4, !dbg !2612, !tbaa !2247
  %tobool15.i = icmp eq i8* (%struct.ngx_conf_s*, i8*, i8*)* %111, null, !dbg !2612
  br i1 %tobool15.i, label %for.inc.i, label %if.then16.i, !dbg !2612

if.then16.i:                                      ; preds = %if.end14.i
  %112 = load %struct.ngx_http_core_srv_conf_t** %arrayidx.i, align 4, !dbg !2617, !tbaa !2247
  %ctx18.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %112, i32 0, i32 1, !dbg !2617
  %113 = load %struct.ngx_http_conf_ctx_t** %ctx18.i, align 4, !dbg !2617, !tbaa !2247
  %loc_conf.i = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %113, i32 0, i32 2, !dbg !2617
  %114 = load i8*** %loc_conf.i, align 4, !dbg !2617, !tbaa !2247
  store i8** %114, i8*** %98, align 4, !dbg !2617, !tbaa !2247
  %115 = load i8* (%struct.ngx_conf_s*, i8*, i8*)** %101, align 4, !dbg !2613, !tbaa !2247
  %116 = load i8** %arrayidx22.i, align 4, !dbg !2613, !tbaa !2247
  %117 = load %struct.ngx_http_core_srv_conf_t** %arrayidx.i, align 4, !dbg !2613, !tbaa !2247
  %ctx24.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %117, i32 0, i32 1, !dbg !2613
  %118 = load %struct.ngx_http_conf_ctx_t** %ctx24.i, align 4, !dbg !2613, !tbaa !2247
  %loc_conf25.i = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %118, i32 0, i32 2, !dbg !2613
  %119 = load i8*** %loc_conf25.i, align 4, !dbg !2613, !tbaa !2247
  %arrayidx26.i = getelementptr inbounds i8** %119, i32 %89, !dbg !2613
  %120 = load i8** %arrayidx26.i, align 4, !dbg !2613, !tbaa !2247
  %call27.i = call i8* %115(%struct.ngx_conf_s* %cf, i8* %116, i8* %120) nounwind, !dbg !2613
  call void @llvm.dbg.value(metadata !{i8* %call27.i}, i64 0, metadata !2603) nounwind, !dbg !2613
  %cmp28.i = icmp eq i8* %call27.i, null, !dbg !2618
  br i1 %cmp28.i, label %if.end30.i, label %ngx_http_merge_servers.exit.thread, !dbg !2618

if.end30.i:                                       ; preds = %if.then16.i
  %121 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2619, !tbaa !2269
  %122 = load %struct.ngx_http_core_srv_conf_t** %arrayidx.i, align 4, !dbg !2619, !tbaa !2247
  %ctx32.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %122, i32 0, i32 1, !dbg !2619
  %123 = load %struct.ngx_http_conf_ctx_t** %ctx32.i, align 4, !dbg !2619, !tbaa !2247
  %loc_conf33.i = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %123, i32 0, i32 2, !dbg !2619
  %124 = load i8*** %loc_conf33.i, align 4, !dbg !2619, !tbaa !2247
  %arrayidx34.i = getelementptr inbounds i8** %124, i32 %121, !dbg !2619
  %125 = load i8** %arrayidx34.i, align 4, !dbg !2619, !tbaa !2247
  %locations.i = getelementptr inbounds i8* %125, i32 328, !dbg !2620
  %126 = bitcast i8* %locations.i to %struct.ngx_queue_s**, !dbg !2620
  %127 = load %struct.ngx_queue_s** %126, align 4, !dbg !2620, !tbaa !2247
  %call38.i = call fastcc i8* @ngx_http_merge_locations(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %127, i8** %124, %struct.ngx_http_module_t* %88, i32 %89) nounwind, !dbg !2620
  call void @llvm.dbg.value(metadata !{i8* %call38.i}, i64 0, metadata !2603) nounwind, !dbg !2620
  %cmp39.i = icmp eq i8* %call38.i, null, !dbg !2621
  br i1 %cmp39.i, label %for.inc.i, label %ngx_http_merge_servers.exit.thread, !dbg !2621

for.inc.i:                                        ; preds = %if.end30.i, %if.end14.i
  %128 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %s.084.i, i32 1) nounwind, !dbg !2606
  %129 = extractvalue { i32, i1 } %128, 0, !dbg !2606
  %130 = extractvalue { i32, i1 } %128, 1, !dbg !2606
  br i1 %130, label %ioc_bb43.i, label %for.cond.backedge.i, !dbg !2606

for.cond.backedge.i:                              ; preds = %for.inc.i, %ioc_bb43.i
  %131 = load i32* %.pre453, align 4, !dbg !2606, !tbaa !2269
  %cmp.i = icmp ult i32 %129, %131, !dbg !2606
  br i1 %cmp.i, label %for.body.i, label %ngx_http_merge_servers.exit.thread410, !dbg !2606

ioc_bb43.i:                                       ; preds = %for.inc.i
  %132 = zext i32 %s.084.i to i64, !dbg !2606
  call void @__ioc_report_add_overflow(i32 394, i32 43, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %132, i64 1, i8 5) nounwind, !dbg !2606
  br label %for.cond.backedge.i, !dbg !2606

ngx_http_merge_servers.exit.thread:               ; preds = %if.then.i, %if.end30.i, %if.then16.i
  %rv.3.i.ph = phi i8* [ %call.i, %if.then.i ], [ %call38.i, %if.end30.i ], [ %call27.i, %if.then16.i ]
  store i8** %saved.sroa.0.0.copyload51.i, i8*** %saved.sroa.0.0..idx50.i, align 4, !dbg !2622
  store i8** %saved.sroa.1.4.copyload54.i, i8*** %97, align 4, !dbg !2622
  store i8** %saved.sroa.2.8.copyload57.i, i8*** %98, align 4, !dbg !2622
  br label %failed, !dbg !2623

ngx_http_merge_servers.exit.thread410:            ; preds = %for.cond.backedge.i, %if.end175
  store i8** %saved.sroa.0.0.copyload51.i, i8*** %saved.sroa.0.0..idx50.i, align 4, !dbg !2622
  store i8** %saved.sroa.1.4.copyload54.i, i8*** %97, align 4, !dbg !2622
  store i8** %saved.sroa.2.8.copyload57.i, i8*** %98, align 4, !dbg !2622
  br label %for.inc180, !dbg !2623

for.inc180:                                       ; preds = %ngx_http_merge_servers.exit.thread410, %cont158
  %133 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.3436, i32 1), !dbg !2578
  %134 = extractvalue { i32, i1 } %133, 0, !dbg !2578
  %135 = extractvalue { i32, i1 } %133, 1, !dbg !2578
  br i1 %135, label %ioc_bb181, label %for.cond151.backedge, !dbg !2578

for.cond151.backedge:                             ; preds = %for.inc180, %ioc_bb181
  %arrayidx152 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %134, !dbg !2578
  %136 = load %struct.ngx_module_s** %arrayidx152, align 4, !dbg !2578, !tbaa !2247
  %tobool153 = icmp eq %struct.ngx_module_s* %136, null, !dbg !2578
  br i1 %tobool153, label %for.cond186.preheader, label %cont158, !dbg !2578

ioc_bb181:                                        ; preds = %for.inc180
  %137 = zext i32 %m.3436 to i64, !dbg !2578
  call void @__ioc_report_add_overflow(i32 152, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %137, i64 1, i8 5) nounwind, !dbg !2578
  br label %for.cond151.backedge, !dbg !2578

for.body189:                                      ; preds = %for.cond186.backedge, %for.cond186.preheader
  %s.0432 = phi i32 [ 0, %for.cond186.preheader ], [ %145, %for.cond186.backedge ]
  %138 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2624, !tbaa !2269
  %arrayidx190 = getelementptr inbounds %struct.ngx_http_core_srv_conf_t** %82, i32 %s.0432, !dbg !2624
  %139 = load %struct.ngx_http_core_srv_conf_t** %arrayidx190, align 4, !dbg !2624, !tbaa !2247
  %ctx191 = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %139, i32 0, i32 1, !dbg !2624
  %140 = load %struct.ngx_http_conf_ctx_t** %ctx191, align 4, !dbg !2624, !tbaa !2247
  %loc_conf192 = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %140, i32 0, i32 2, !dbg !2624
  %141 = load i8*** %loc_conf192, align 4, !dbg !2624, !tbaa !2247
  %arrayidx193 = getelementptr inbounds i8** %141, i32 %138, !dbg !2624
  %142 = load i8** %arrayidx193, align 4, !dbg !2624, !tbaa !2247
  %143 = bitcast i8* %142 to %struct.ngx_http_core_loc_conf_s*, !dbg !2624
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %143}, i64 0, metadata !1895), !dbg !2624
  %call195 = call fastcc i32 @ngx_http_init_locations(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_srv_conf_t* %139, %struct.ngx_http_core_loc_conf_s* %143), !dbg !2626
  %cmp196 = icmp eq i32 %call195, 0, !dbg !2626
  br i1 %cmp196, label %if.end200, label %ngx_http_optimize_servers.exit, !dbg !2626

if.end200:                                        ; preds = %for.body189
  %call201 = call fastcc i32 @ngx_http_init_static_location_trees(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_loc_conf_s* %143), !dbg !2627
  %cmp202 = icmp eq i32 %call201, 0, !dbg !2627
  br i1 %cmp202, label %for.inc207, label %ngx_http_optimize_servers.exit, !dbg !2627

for.inc207:                                       ; preds = %if.end200
  %144 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %s.0432, i32 1), !dbg !2580
  %145 = extractvalue { i32, i1 } %144, 0, !dbg !2580
  %146 = extractvalue { i32, i1 } %144, 1, !dbg !2580
  br i1 %146, label %ioc_bb208, label %for.cond186.backedge, !dbg !2580

for.cond186.backedge:                             ; preds = %for.inc207, %ioc_bb208
  %147 = load i32* %.pre453, align 4, !dbg !2580, !tbaa !2269
  %cmp188 = icmp ult i32 %145, %147, !dbg !2580
  br i1 %cmp188, label %for.body189, label %for.end210, !dbg !2580

ioc_bb208:                                        ; preds = %for.inc207
  %148 = zext i32 %s.0432 to i64, !dbg !2580
  call void @__ioc_report_add_overflow(i32 171, i32 43, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %148, i64 1, i8 5) nounwind, !dbg !2580
  br label %for.cond186.backedge, !dbg !2580

for.end210:                                       ; preds = %for.cond186.backedge, %for.cond186.preheader
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2628) nounwind, !dbg !2630
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_main_conf_t* %80}, i64 0, metadata !2631) nounwind, !dbg !2630
  %149 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2632, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %149}, i64 0, metadata !2634) nounwind, !dbg !2635
  call void @llvm.dbg.value(metadata !2338, i64 0, metadata !2636) nounwind, !dbg !2635
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2637) nounwind, !dbg !2635
  %nelts.i.i = getelementptr inbounds i8* %79, i32 104, !dbg !2638
  %150 = bitcast i8* %nelts.i.i to i32*, !dbg !2638
  store i32 0, i32* %150, align 4, !dbg !2638, !tbaa !2269
  %size1.i.i = getelementptr inbounds i8* %79, i32 108, !dbg !2639
  %151 = bitcast i8* %size1.i.i to i32*, !dbg !2639
  store i32 4, i32* %151, align 4, !dbg !2639, !tbaa !2269
  %nalloc.i.i = getelementptr inbounds i8* %79, i32 112, !dbg !2640
  %152 = bitcast i8* %nalloc.i.i to i32*, !dbg !2640
  store i32 1, i32* %152, align 4, !dbg !2640, !tbaa !2269
  %pool2.i.i = getelementptr inbounds i8* %79, i32 116, !dbg !2641
  %153 = bitcast i8* %pool2.i.i to %struct.ngx_pool_s**, !dbg !2641
  store %struct.ngx_pool_s* %149, %struct.ngx_pool_s** %153, align 4, !dbg !2641, !tbaa !2247
  %call.i.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %149, i32 4) nounwind, !dbg !2642
  %elts.i.i = getelementptr inbounds i8* %79, i32 100, !dbg !2642
  %154 = bitcast i8* %elts.i.i to i8**, !dbg !2642
  store i8* %call.i.i, i8** %154, align 4, !dbg !2642, !tbaa !2247
  %cmp.i.i = icmp eq i8* %call.i.i, null, !dbg !2643
  br i1 %cmp.i.i, label %ngx_http_optimize_servers.exit, label %cont8.i, !dbg !2632

cont8.i:                                          ; preds = %for.end210
  %155 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2644, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %155}, i64 0, metadata !2645) nounwind, !dbg !2646
  call void @llvm.dbg.value(metadata !2338, i64 0, metadata !2647) nounwind, !dbg !2646
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2648) nounwind, !dbg !2646
  %nelts.i87.i = getelementptr inbounds i8* %79, i32 124, !dbg !2649
  %156 = bitcast i8* %nelts.i87.i to i32*, !dbg !2649
  store i32 0, i32* %156, align 4, !dbg !2649, !tbaa !2269
  %size1.i88.i = getelementptr inbounds i8* %79, i32 128, !dbg !2650
  %157 = bitcast i8* %size1.i88.i to i32*, !dbg !2650
  store i32 4, i32* %157, align 4, !dbg !2650, !tbaa !2269
  %nalloc.i89.i = getelementptr inbounds i8* %79, i32 132, !dbg !2651
  %158 = bitcast i8* %nalloc.i89.i to i32*, !dbg !2651
  store i32 1, i32* %158, align 4, !dbg !2651, !tbaa !2269
  %pool2.i90.i = getelementptr inbounds i8* %79, i32 136, !dbg !2652
  %159 = bitcast i8* %pool2.i90.i to %struct.ngx_pool_s**, !dbg !2652
  store %struct.ngx_pool_s* %155, %struct.ngx_pool_s** %159, align 4, !dbg !2652, !tbaa !2247
  %call.i92.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %155, i32 4) nounwind, !dbg !2653
  %elts.i93.i = getelementptr inbounds i8* %79, i32 120, !dbg !2653
  %160 = bitcast i8* %elts.i93.i to i8**, !dbg !2653
  store i8* %call.i92.i, i8** %160, align 4, !dbg !2653, !tbaa !2247
  %cmp.i94.i = icmp eq i8* %call.i92.i, null, !dbg !2654
  br i1 %cmp.i94.i, label %ngx_http_optimize_servers.exit, label %cont20.i, !dbg !2644

cont20.i:                                         ; preds = %cont8.i
  %161 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2655, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %161}, i64 0, metadata !2656) nounwind, !dbg !2657
  call void @llvm.dbg.value(metadata !2338, i64 0, metadata !2658) nounwind, !dbg !2657
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2659) nounwind, !dbg !2657
  %nelts.i97.i = getelementptr inbounds i8* %79, i32 164, !dbg !2660
  %162 = bitcast i8* %nelts.i97.i to i32*, !dbg !2660
  store i32 0, i32* %162, align 4, !dbg !2660, !tbaa !2269
  %size1.i98.i = getelementptr inbounds i8* %79, i32 168, !dbg !2661
  %163 = bitcast i8* %size1.i98.i to i32*, !dbg !2661
  store i32 4, i32* %163, align 4, !dbg !2661, !tbaa !2269
  %nalloc.i99.i = getelementptr inbounds i8* %79, i32 172, !dbg !2662
  %164 = bitcast i8* %nalloc.i99.i to i32*, !dbg !2662
  store i32 1, i32* %164, align 4, !dbg !2662, !tbaa !2269
  %pool2.i100.i = getelementptr inbounds i8* %79, i32 176, !dbg !2663
  %165 = bitcast i8* %pool2.i100.i to %struct.ngx_pool_s**, !dbg !2663
  store %struct.ngx_pool_s* %161, %struct.ngx_pool_s** %165, align 4, !dbg !2663, !tbaa !2247
  %call.i102.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %161, i32 4) nounwind, !dbg !2664
  %elts.i103.i = getelementptr inbounds i8* %79, i32 160, !dbg !2664
  %166 = bitcast i8* %elts.i103.i to i8**, !dbg !2664
  store i8* %call.i102.i, i8** %166, align 4, !dbg !2664, !tbaa !2247
  %cmp.i104.i = icmp eq i8* %call.i102.i, null, !dbg !2665
  br i1 %cmp.i104.i, label %ngx_http_optimize_servers.exit, label %cont32.i, !dbg !2655

cont32.i:                                         ; preds = %cont20.i
  %167 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2666, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %167}, i64 0, metadata !2667) nounwind, !dbg !2668
  call void @llvm.dbg.value(metadata !2338, i64 0, metadata !2669) nounwind, !dbg !2668
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2670) nounwind, !dbg !2668
  %nelts.i107.i = getelementptr inbounds i8* %79, i32 204, !dbg !2671
  %168 = bitcast i8* %nelts.i107.i to i32*, !dbg !2671
  store i32 0, i32* %168, align 4, !dbg !2671, !tbaa !2269
  %size1.i108.i = getelementptr inbounds i8* %79, i32 208, !dbg !2672
  %169 = bitcast i8* %size1.i108.i to i32*, !dbg !2672
  store i32 4, i32* %169, align 4, !dbg !2672, !tbaa !2269
  %nalloc.i109.i = getelementptr inbounds i8* %79, i32 212, !dbg !2673
  %170 = bitcast i8* %nalloc.i109.i to i32*, !dbg !2673
  store i32 1, i32* %170, align 4, !dbg !2673, !tbaa !2269
  %pool2.i110.i = getelementptr inbounds i8* %79, i32 216, !dbg !2674
  %171 = bitcast i8* %pool2.i110.i to %struct.ngx_pool_s**, !dbg !2674
  store %struct.ngx_pool_s* %167, %struct.ngx_pool_s** %171, align 4, !dbg !2674, !tbaa !2247
  %call.i112.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %167, i32 4) nounwind, !dbg !2675
  %elts.i113.i = getelementptr inbounds i8* %79, i32 200, !dbg !2675
  %172 = bitcast i8* %elts.i113.i to i8**, !dbg !2675
  store i8* %call.i112.i, i8** %172, align 4, !dbg !2675, !tbaa !2247
  %cmp.i114.i = icmp eq i8* %call.i112.i, null, !dbg !2676
  br i1 %cmp.i114.i, label %ngx_http_optimize_servers.exit, label %cont44.i, !dbg !2666

cont44.i:                                         ; preds = %cont32.i
  %173 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2677, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %173}, i64 0, metadata !2678) nounwind, !dbg !2679
  call void @llvm.dbg.value(metadata !2680, i64 0, metadata !2681) nounwind, !dbg !2679
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2682) nounwind, !dbg !2679
  %nelts.i117.i = getelementptr inbounds i8* %79, i32 224, !dbg !2683
  %174 = bitcast i8* %nelts.i117.i to i32*, !dbg !2683
  store i32 0, i32* %174, align 4, !dbg !2683, !tbaa !2269
  %size1.i118.i = getelementptr inbounds i8* %79, i32 228, !dbg !2684
  %175 = bitcast i8* %size1.i118.i to i32*, !dbg !2684
  store i32 4, i32* %175, align 4, !dbg !2684, !tbaa !2269
  %nalloc.i119.i = getelementptr inbounds i8* %79, i32 232, !dbg !2685
  %176 = bitcast i8* %nalloc.i119.i to i32*, !dbg !2685
  store i32 2, i32* %176, align 4, !dbg !2685, !tbaa !2269
  %pool2.i120.i = getelementptr inbounds i8* %79, i32 236, !dbg !2686
  %177 = bitcast i8* %pool2.i120.i to %struct.ngx_pool_s**, !dbg !2686
  store %struct.ngx_pool_s* %173, %struct.ngx_pool_s** %177, align 4, !dbg !2686, !tbaa !2247
  %call.i122.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %173, i32 8) nounwind, !dbg !2687
  %elts.i123.i = getelementptr inbounds i8* %79, i32 220, !dbg !2687
  %178 = bitcast i8* %elts.i123.i to i8**, !dbg !2687
  store i8* %call.i122.i, i8** %178, align 4, !dbg !2687, !tbaa !2247
  %cmp.i124.i = icmp eq i8* %call.i122.i, null, !dbg !2688
  br i1 %cmp.i124.i, label %ngx_http_optimize_servers.exit, label %cont56.i, !dbg !2677

cont56.i:                                         ; preds = %cont44.i
  %179 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2689, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %179}, i64 0, metadata !2690) nounwind, !dbg !2691
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2692) nounwind, !dbg !2691
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2693) nounwind, !dbg !2691
  %nelts.i127.i = getelementptr inbounds i8* %79, i32 284, !dbg !2694
  %180 = bitcast i8* %nelts.i127.i to i32*, !dbg !2694
  store i32 0, i32* %180, align 4, !dbg !2694, !tbaa !2269
  %size1.i128.i = getelementptr inbounds i8* %79, i32 288, !dbg !2695
  %181 = bitcast i8* %size1.i128.i to i32*, !dbg !2695
  store i32 4, i32* %181, align 4, !dbg !2695, !tbaa !2269
  %nalloc.i129.i = getelementptr inbounds i8* %79, i32 292, !dbg !2696
  %182 = bitcast i8* %nalloc.i129.i to i32*, !dbg !2696
  store i32 4, i32* %182, align 4, !dbg !2696, !tbaa !2269
  %pool2.i130.i = getelementptr inbounds i8* %79, i32 296, !dbg !2697
  %183 = bitcast i8* %pool2.i130.i to %struct.ngx_pool_s**, !dbg !2697
  store %struct.ngx_pool_s* %179, %struct.ngx_pool_s** %183, align 4, !dbg !2697, !tbaa !2247
  %call.i132.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %179, i32 16) nounwind, !dbg !2698
  %elts.i133.i = getelementptr inbounds i8* %79, i32 280, !dbg !2698
  %184 = bitcast i8* %elts.i133.i to i8**, !dbg !2698
  store i8* %call.i132.i, i8** %184, align 4, !dbg !2698, !tbaa !2247
  %cmp.i134.i = icmp eq i8* %call.i132.i, null, !dbg !2699
  br i1 %cmp.i134.i, label %ngx_http_optimize_servers.exit, label %ngx_http_init_phases.exit, !dbg !2689

ngx_http_init_phases.exit:                        ; preds = %cont56.i
  %185 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2700, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %185}, i64 0, metadata !2701) nounwind, !dbg !2702
  call void @llvm.dbg.value(metadata !2338, i64 0, metadata !2703) nounwind, !dbg !2702
  call void @llvm.dbg.value(metadata !2306, i64 0, metadata !2704) nounwind, !dbg !2702
  %nelts.i137.i = getelementptr inbounds i8* %79, i32 304, !dbg !2705
  %186 = bitcast i8* %nelts.i137.i to i32*, !dbg !2705
  store i32 0, i32* %186, align 4, !dbg !2705, !tbaa !2269
  %size1.i138.i = getelementptr inbounds i8* %79, i32 308, !dbg !2706
  %187 = bitcast i8* %size1.i138.i to i32*, !dbg !2706
  store i32 4, i32* %187, align 4, !dbg !2706, !tbaa !2269
  %nalloc.i139.i = getelementptr inbounds i8* %79, i32 312, !dbg !2707
  %188 = bitcast i8* %nalloc.i139.i to i32*, !dbg !2707
  store i32 1, i32* %188, align 4, !dbg !2707, !tbaa !2269
  %pool2.i140.i = getelementptr inbounds i8* %79, i32 316, !dbg !2708
  %189 = bitcast i8* %pool2.i140.i to %struct.ngx_pool_s**, !dbg !2708
  store %struct.ngx_pool_s* %185, %struct.ngx_pool_s** %189, align 4, !dbg !2708, !tbaa !2247
  %call.i142.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %185, i32 4) nounwind, !dbg !2709
  %elts.i143.i = getelementptr inbounds i8* %79, i32 300, !dbg !2709
  %190 = bitcast i8* %elts.i143.i to i8**, !dbg !2709
  store i8* %call.i142.i, i8** %190, align 4, !dbg !2709, !tbaa !2247
  %not.cmp70.i = icmp eq i8* %call.i142.i, null, !dbg !2700
  br i1 %not.cmp70.i, label %ngx_http_optimize_servers.exit, label %if.end216, !dbg !2629

if.end216:                                        ; preds = %ngx_http_init_phases.exit
  %191 = bitcast %struct.ngx_array_s* %headers_in.i to i8*, !dbg !2710
  call void @llvm.lifetime.start(i64 -1, i8* %191) nounwind, !dbg !2710
  %192 = bitcast %struct.ngx_hash_init_t* %hash.i to i8*, !dbg !2710
  call void @llvm.lifetime.start(i64 -1, i8* %192) nounwind, !dbg !2710
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2712) nounwind, !dbg !2710
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_main_conf_t* %80}, i64 0, metadata !2713) nounwind, !dbg !2710
  call void @llvm.dbg.declare(metadata !{%struct.ngx_array_s* %headers_in.i}, metadata !2029) nounwind, !dbg !2714
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %hash.i}, metadata !2032) nounwind, !dbg !2715
  %temp_pool.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 4, !dbg !2716
  %193 = load %struct.ngx_pool_s** %temp_pool.i, align 4, !dbg !2716, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %headers_in.i}, i64 0, metadata !2717) nounwind, !dbg !2718
  call void @llvm.dbg.value(metadata !{%struct.ngx_pool_s* %193}, i64 0, metadata !2719) nounwind, !dbg !2718
  call void @llvm.dbg.value(metadata !2720, i64 0, metadata !2721) nounwind, !dbg !2718
  call void @llvm.dbg.value(metadata !2722, i64 0, metadata !2723) nounwind, !dbg !2718
  %nelts.i.i366 = getelementptr inbounds %struct.ngx_array_s* %headers_in.i, i32 0, i32 1, !dbg !2724
  store i32 0, i32* %nelts.i.i366, align 4, !dbg !2724, !tbaa !2269
  %size1.i.i367 = getelementptr inbounds %struct.ngx_array_s* %headers_in.i, i32 0, i32 2, !dbg !2725
  store i32 16, i32* %size1.i.i367, align 4, !dbg !2725, !tbaa !2269
  %nalloc.i.i368 = getelementptr inbounds %struct.ngx_array_s* %headers_in.i, i32 0, i32 3, !dbg !2726
  store i32 32, i32* %nalloc.i.i368, align 4, !dbg !2726, !tbaa !2269
  %pool2.i.i369 = getelementptr inbounds %struct.ngx_array_s* %headers_in.i, i32 0, i32 4, !dbg !2727
  store %struct.ngx_pool_s* %193, %struct.ngx_pool_s** %pool2.i.i369, align 4, !dbg !2727, !tbaa !2247
  %call.i.i370 = call i8* @ngx_palloc(%struct.ngx_pool_s* %193, i32 512) nounwind, !dbg !2728
  %elts.i.i371 = getelementptr inbounds %struct.ngx_array_s* %headers_in.i, i32 0, i32 0, !dbg !2728
  store i8* %call.i.i370, i8** %elts.i.i371, align 4, !dbg !2728, !tbaa !2247
  %cmp.i.i372 = icmp eq i8* %call.i.i370, null, !dbg !2729
  br i1 %cmp.i.i372, label %ngx_http_optimize_servers.exit, label %for.cond.preheader.i, !dbg !2716

for.cond.preheader.i:                             ; preds = %if.end216
  %194 = load i32* getelementptr inbounds ([0 x %struct.ngx_http_header_t]* @ngx_http_headers_in, i32 0, i32 0, i32 0, i32 0), align 4, !dbg !2730, !tbaa !2269
  %tobool48.i = icmp eq i32 %194, 0, !dbg !2730
  br i1 %tobool48.i, label %for.end.i, label %for.body.i373, !dbg !2730

for.body.i373:                                    ; preds = %for.cond.preheader.i, %if.end8.i
  %len50.i = phi i32* [ %incdec.ptr.i, %if.end8.i ], [ getelementptr inbounds ([0 x %struct.ngx_http_header_t]* @ngx_http_headers_in, i32 0, i32 0, i32 0, i32 0), %for.cond.preheader.i ]
  %call3.i = call i8* @ngx_array_push(%struct.ngx_array_s* %headers_in.i) nounwind, !dbg !2732
  %cmp4.i = icmp eq i8* %call3.i, null, !dbg !2734
  br i1 %cmp4.i, label %ngx_http_optimize_servers.exit, label %if.end8.i, !dbg !2734

if.end8.i:                                        ; preds = %for.body.i373
  %195 = bitcast i32* %len50.i to i64*, !dbg !2735
  %196 = bitcast i8* %call3.i to i64*, !dbg !2735
  %197 = load i64* %195, align 4, !dbg !2735
  store i64 %197, i64* %196, align 4, !dbg !2735
  %data.i = getelementptr inbounds i32* %len50.i, i32 1, !dbg !2736
  %198 = bitcast i32* %data.i to i8**, !dbg !2736
  %199 = load i8** %198, align 4, !dbg !2736, !tbaa !2247
  %200 = load i32* %len50.i, align 4, !dbg !2736, !tbaa !2269
  %call13.i = call i32 @ngx_hash_key_lc(i8* %199, i32 %200) nounwind, !dbg !2736
  %key_hash.i = getelementptr inbounds i8* %call3.i, i32 8, !dbg !2736
  %201 = bitcast i8* %key_hash.i to i32*, !dbg !2736
  store i32 %call13.i, i32* %201, align 4, !dbg !2736, !tbaa !2269
  %202 = bitcast i32* %len50.i to i8*, !dbg !2737
  %value.i = getelementptr inbounds i8* %call3.i, i32 12, !dbg !2737
  %203 = bitcast i8* %value.i to i8**, !dbg !2737
  store i8* %202, i8** %203, align 4, !dbg !2737, !tbaa !2247
  %incdec.ptr.i = getelementptr inbounds i32* %len50.i, i32 4, !dbg !2730
  %204 = load i32* %incdec.ptr.i, align 4, !dbg !2730, !tbaa !2269
  %tobool.i374 = icmp eq i32 %204, 0, !dbg !2730
  br i1 %tobool.i374, label %for.end.i, label %for.body.i373, !dbg !2730

for.end.i:                                        ; preds = %if.end8.i, %for.cond.preheader.i
  %headers_in_hash.i = getelementptr inbounds i8* %79, i32 32, !dbg !2738
  %205 = bitcast i8* %headers_in_hash.i to %struct.ngx_hash_t*, !dbg !2738
  %hash14.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 0, !dbg !2738
  store %struct.ngx_hash_t* %205, %struct.ngx_hash_t** %hash14.i, align 4, !dbg !2738, !tbaa !2247
  %key15.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 1, !dbg !2739
  store i32 (i8*, i32)* @ngx_hash_key_lc, i32 (i8*, i32)** %key15.i, align 4, !dbg !2739, !tbaa !2247
  %max_size.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 2, !dbg !2740
  store i32 512, i32* %max_size.i, align 4, !dbg !2740, !tbaa !2269
  %206 = load i32* @ngx_cacheline_size, align 4, !dbg !2741, !tbaa !2269
  %207 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %206, i32 1) nounwind, !dbg !2741
  %208 = extractvalue { i32, i1 } %207, 0, !dbg !2741
  %209 = extractvalue { i32, i1 } %207, 1, !dbg !2741
  br i1 %209, label %ioc_bb22.i, label %cont23.i, !dbg !2741

ioc_bb22.i:                                       ; preds = %for.end.i
  %210 = zext i32 %206 to i64, !dbg !2741
  call void @__ioc_report_sub_overflow(i32 265, i32 47, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %210, i64 1, i8 5) nounwind, !dbg !2741
  br label %cont23.i, !dbg !2741

cont23.i:                                         ; preds = %ioc_bb22.i, %for.end.i
  %211 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %208, i32 64) nounwind, !dbg !2741
  %212 = extractvalue { i32, i1 } %211, 0, !dbg !2741
  %213 = extractvalue { i32, i1 } %211, 1, !dbg !2741
  br i1 %213, label %ioc_bb24.i, label %cont25.i, !dbg !2741

ioc_bb24.i:                                       ; preds = %cont23.i
  %214 = zext i32 %208 to i64, !dbg !2741
  call void @__ioc_report_add_overflow(i32 265, i32 25, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 64, i64 %214, i8 5) nounwind, !dbg !2741
  br label %cont25.i, !dbg !2741

cont25.i:                                         ; preds = %cont23.i, %ioc_bb24.i
  %215 = load i32* @ngx_cacheline_size, align 4, !dbg !2741, !tbaa !2269
  %216 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %215, i32 1) nounwind, !dbg !2741
  %217 = extractvalue { i32, i1 } %216, 0, !dbg !2741
  %218 = extractvalue { i32, i1 } %216, 1, !dbg !2741
  br i1 %218, label %ioc_bb28.i, label %ngx_http_init_headers_in_hash.exit, !dbg !2741

ioc_bb28.i:                                       ; preds = %cont25.i
  %219 = zext i32 %215 to i64, !dbg !2741
  call void @__ioc_report_sub_overflow(i32 265, i32 75, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %219, i64 1, i8 5) nounwind, !dbg !2741
  br label %ngx_http_init_headers_in_hash.exit, !dbg !2741

ngx_http_init_headers_in_hash.exit:               ; preds = %cont25.i, %ioc_bb28.i
  %neg.i = xor i32 %217, -1, !dbg !2741
  %and.i = and i32 %212, %neg.i, !dbg !2741
  %bucket_size.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 3, !dbg !2741
  store i32 %and.i, i32* %bucket_size.i, align 4, !dbg !2741, !tbaa !2269
  %name30.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 4, !dbg !2742
  store i8* getelementptr inbounds ([16 x i8]* @.str10, i32 0, i32 0), i8** %name30.i, align 4, !dbg !2742, !tbaa !2247
  %220 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2743, !tbaa !2247
  %pool31.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 5, !dbg !2743
  store %struct.ngx_pool_s* %220, %struct.ngx_pool_s** %pool31.i, align 4, !dbg !2743, !tbaa !2247
  %temp_pool32.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i, i32 0, i32 6, !dbg !2744
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %temp_pool32.i, align 4, !dbg !2744, !tbaa !2247
  %221 = load i8** %elts.i.i371, align 4, !dbg !2745, !tbaa !2247
  %222 = bitcast i8* %221 to %struct.ngx_hash_key_t*, !dbg !2745
  %223 = load i32* %nelts.i.i366, align 4, !dbg !2745, !tbaa !2269
  %call33.i = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hash.i, %struct.ngx_hash_key_t* %222, i32 %223) nounwind, !dbg !2745
  %not.cmp34.i = icmp eq i32 %call33.i, 0, !dbg !2745
  call void @llvm.lifetime.end(i64 -1, i8* %191) nounwind, !dbg !2745
  call void @llvm.lifetime.end(i64 -1, i8* %192) nounwind, !dbg !2745
  br i1 %not.cmp34.i, label %for.cond225.preheader, label %ngx_http_optimize_servers.exit, !dbg !2711

for.cond225.preheader:                            ; preds = %ngx_http_init_headers_in_hash.exit
  %224 = load %struct.ngx_module_s** getelementptr inbounds ([0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 0), align 4, !dbg !2746, !tbaa !2247
  %tobool227427 = icmp eq %struct.ngx_module_s* %224, null, !dbg !2746
  br i1 %tobool227427, label %for.end251, label %cont232, !dbg !2746

cont232:                                          ; preds = %for.cond225.preheader, %for.cond225.backedge
  %225 = phi %struct.ngx_module_s* [ %233, %for.cond225.backedge ], [ %224, %for.cond225.preheader ]
  %m.4428 = phi i32 [ %231, %for.cond225.backedge ], [ 0, %for.cond225.preheader ]
  %type230 = getelementptr inbounds %struct.ngx_module_s* %225, i32 0, i32 9, !dbg !2748
  %226 = load i32* %type230, align 4, !dbg !2748, !tbaa !2269
  %cmp233 = icmp eq i32 %226, 1347703880, !dbg !2748
  br i1 %cmp233, label %if.end235, label %for.inc248, !dbg !2748

if.end235:                                        ; preds = %cont232
  %ctx237 = getelementptr inbounds %struct.ngx_module_s* %225, i32 0, i32 7, !dbg !2750
  %227 = load i8** %ctx237, align 4, !dbg !2750, !tbaa !2247
  %postconfiguration = getelementptr inbounds i8* %227, i32 4, !dbg !2751
  %228 = bitcast i8* %postconfiguration to i32 (%struct.ngx_conf_s*)**, !dbg !2751
  %229 = load i32 (%struct.ngx_conf_s*)** %228, align 4, !dbg !2751, !tbaa !2247
  %tobool238 = icmp eq i32 (%struct.ngx_conf_s*)* %229, null, !dbg !2751
  br i1 %tobool238, label %for.inc248, label %if.then239, !dbg !2751

if.then239:                                       ; preds = %if.end235
  %call241 = call i32 %229(%struct.ngx_conf_s* %cf) nounwind, !dbg !2752
  %cmp242 = icmp eq i32 %call241, 0, !dbg !2752
  br i1 %cmp242, label %for.inc248, label %ngx_http_optimize_servers.exit, !dbg !2752

for.inc248:                                       ; preds = %if.then239, %if.end235, %cont232
  %230 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %m.4428, i32 1), !dbg !2746
  %231 = extractvalue { i32, i1 } %230, 0, !dbg !2746
  %232 = extractvalue { i32, i1 } %230, 1, !dbg !2746
  br i1 %232, label %ioc_bb249, label %for.cond225.backedge, !dbg !2746

for.cond225.backedge:                             ; preds = %for.inc248, %ioc_bb249
  %arrayidx226 = getelementptr inbounds [0 x %struct.ngx_module_s*]* @ngx_modules, i32 0, i32 %231, !dbg !2746
  %233 = load %struct.ngx_module_s** %arrayidx226, align 4, !dbg !2746, !tbaa !2247
  %tobool227 = icmp eq %struct.ngx_module_s* %233, null, !dbg !2746
  br i1 %tobool227, label %for.end251, label %cont232, !dbg !2746

ioc_bb249:                                        ; preds = %for.inc248
  %234 = zext i32 %m.4428 to i64, !dbg !2746
  call void @__ioc_report_add_overflow(i32 186, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %234, i64 1, i8 5) nounwind, !dbg !2746
  br label %for.cond225.backedge, !dbg !2746

for.end251:                                       ; preds = %for.cond225.backedge, %for.cond225.preheader
  %call252 = call i32 @ngx_http_variables_init_vars(%struct.ngx_conf_s* %cf) nounwind, !dbg !2754
  %cmp253 = icmp eq i32 %call252, 0, !dbg !2754
  br i1 %cmp253, label %if.end257, label %ngx_http_optimize_servers.exit, !dbg !2754

if.end257:                                        ; preds = %for.end251
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %65, i32 48, i32 4, i1 false), !dbg !2755, !tbaa.struct !2562
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2756) nounwind, !dbg !2758
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_main_conf_t* %80}, i64 0, metadata !2759) nounwind, !dbg !2758
  call void @__ioc_report_conversion(i32 286, i32 61, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2760
  %server_rewrite_index.i = getelementptr inbounds i8* %79, i32 24, !dbg !2760
  %235 = bitcast i8* %server_rewrite_index.i to i32*, !dbg !2760
  store i32 -1, i32* %235, align 4, !dbg !2760, !tbaa !2269
  call void @__ioc_report_conversion(i32 287, i32 63, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2761
  %location_rewrite_index.i = getelementptr inbounds i8* %79, i32 28, !dbg !2761
  %236 = bitcast i8* %location_rewrite_index.i to i32*, !dbg !2761
  store i32 -1, i32* %236, align 4, !dbg !2761, !tbaa !2269
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2762) nounwind, !dbg !2763
  %237 = load i32* %162, align 4, !dbg !2764, !tbaa !2269
  %tobool.i380 = icmp ne i32 %237, 0, !dbg !2764
  %cond.i = zext i1 %tobool.i380 to i32, !dbg !2764
  call void @llvm.dbg.value(metadata !{i32 %cond.i}, i64 0, metadata !2765) nounwind, !dbg !2764
  %238 = load i32* %174, align 4, !dbg !2766, !tbaa !2269
  %tobool18.i = icmp ne i32 %238, 0, !dbg !2766
  %cond19.i = zext i1 %tobool18.i to i32, !dbg !2766
  call void @llvm.dbg.value(metadata !{i32 %cond19.i}, i64 0, metadata !2767) nounwind, !dbg !2766
  %239 = add nuw i32 %cond19.i, %cond.i, !dbg !2768
  %try_files.i = getelementptr inbounds i8* %79, i32 96, !dbg !2768
  %240 = bitcast i8* %try_files.i to i32*, !dbg !2768
  %241 = load i32* %240, align 4, !dbg !2768, !tbaa !2269
  %242 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %239, i32 %241) nounwind, !dbg !2768
  %243 = extractvalue { i32, i1 } %242, 0, !dbg !2768
  %244 = extractvalue { i32, i1 } %242, 1, !dbg !2768
  br i1 %244, label %ioc_bb25.i, label %cont28.i, !dbg !2768

ioc_bb25.i:                                       ; preds = %if.end257
  %245 = zext i32 %241 to i64, !dbg !2768
  %246 = zext i32 %239 to i64, !dbg !2768
  call void @__ioc_report_add_overflow(i32 292, i32 32, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %246, i64 %245, i8 5) nounwind, !dbg !2768
  br label %cont28.i, !dbg !2768

cont28.i:                                         ; preds = %ioc_bb25.i, %if.end257
  %247 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %243, i32 1) nounwind, !dbg !2768
  %248 = extractvalue { i32, i1 } %247, 0, !dbg !2768
  %249 = extractvalue { i32, i1 } %247, 1, !dbg !2768
  br i1 %249, label %ioc_bb29.i, label %for.body.i381, !dbg !2768

ioc_bb29.i:                                       ; preds = %cont28.i
  %250 = zext i32 %243 to i64, !dbg !2768
  call void @__ioc_report_add_overflow(i32 292, i32 52, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %250, i64 1, i8 5) nounwind, !dbg !2768
  br label %for.body.i381, !dbg !2768

for.body.i381:                                    ; preds = %ioc_bb29.i, %cont28.i, %cont34.backedge.i
  %i.0213.i = phi i32 [ %258, %cont34.backedge.i ], [ 0, %cont28.i ], [ 0, %ioc_bb29.i ]
  %n.0212.i = phi i32 [ %253, %cont34.backedge.i ], [ %248, %cont28.i ], [ %248, %ioc_bb29.i ]
  %nelts38.i = getelementptr inbounds %struct.ngx_http_core_main_conf_t* %80, i32 0, i32 13, i32 %i.0213.i, i32 0, i32 1, !dbg !2769
  %251 = load i32* %nelts38.i, align 4, !dbg !2769, !tbaa !2269
  %252 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0212.i, i32 %251) nounwind, !dbg !2769
  %253 = extractvalue { i32, i1 } %252, 0, !dbg !2769
  %254 = extractvalue { i32, i1 } %252, 1, !dbg !2769
  br i1 %254, label %ioc_bb39.i, label %cont40.i, !dbg !2769

ioc_bb39.i:                                       ; preds = %for.body.i381
  %255 = zext i32 %251 to i64, !dbg !2769
  %256 = zext i32 %n.0212.i to i64, !dbg !2769
  call void @__ioc_report_add_overflow(i32 294, i32 7, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %256, i64 %255, i8 5) nounwind, !dbg !2769
  br label %cont40.i, !dbg !2769

cont40.i:                                         ; preds = %ioc_bb39.i, %for.body.i381
  call void @llvm.dbg.value(metadata !{i32 %253}, i64 0, metadata !2772) nounwind, !dbg !2769
  %257 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0213.i, i32 1) nounwind, !dbg !2773
  %258 = extractvalue { i32, i1 } %257, 0, !dbg !2773
  %259 = extractvalue { i32, i1 } %257, 1, !dbg !2773
  br i1 %259, label %ioc_bb41.i, label %cont34.backedge.i, !dbg !2773

cont34.backedge.i:                                ; preds = %ioc_bb41.i, %cont40.i
  %cmp.i382 = icmp ult i32 %258, 10, !dbg !2773
  br i1 %cmp.i382, label %for.body.i381, label %for.end.i384, !dbg !2773

ioc_bb41.i:                                       ; preds = %cont40.i
  %260 = zext i32 %i.0213.i to i64, !dbg !2773
  call void @__ioc_report_add_overflow(i32 293, i32 24, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %260, i64 1, i8 5) nounwind, !dbg !2773
  br label %cont34.backedge.i, !dbg !2773

for.end.i384:                                     ; preds = %cont34.backedge.i
  %261 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2774, !tbaa !2247
  %262 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %253, i32 12) nounwind, !dbg !2774
  %263 = extractvalue { i32, i1 } %262, 0, !dbg !2774
  %264 = extractvalue { i32, i1 } %262, 1, !dbg !2774
  br i1 %264, label %ioc_bb43.i385, label %cont44.i386, !dbg !2774

ioc_bb43.i385:                                    ; preds = %for.end.i384
  %265 = zext i32 %253 to i64, !dbg !2774
  call void @__ioc_report_mul_overflow(i32 296, i32 34, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %265, i64 12, i8 5) nounwind, !dbg !2774
  br label %cont44.i386, !dbg !2774

cont44.i386:                                      ; preds = %ioc_bb43.i385, %for.end.i384
  %266 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %263, i32 4) nounwind, !dbg !2774
  %267 = extractvalue { i32, i1 } %266, 0, !dbg !2774
  %268 = extractvalue { i32, i1 } %266, 1, !dbg !2774
  br i1 %268, label %ioc_bb45.i, label %cont46.i, !dbg !2774

ioc_bb45.i:                                       ; preds = %cont44.i386
  %269 = zext i32 %263 to i64, !dbg !2774
  call void @__ioc_report_add_overflow(i32 296, i32 70, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %269, i64 4, i8 5) nounwind, !dbg !2774
  br label %cont46.i, !dbg !2774

cont46.i:                                         ; preds = %ioc_bb45.i, %cont44.i386
  %call.i387 = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %261, i32 %267) nounwind, !dbg !2774
  %270 = bitcast i8* %call.i387 to %struct.ngx_http_phase_handler_s*, !dbg !2774
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_phase_handler_s* %270}, i64 0, metadata !2775) nounwind, !dbg !2774
  %cmp47.i = icmp eq i8* %call.i387, null, !dbg !2776
  br i1 %cmp47.i, label %ngx_http_optimize_servers.exit, label %if.end.i, !dbg !2776

if.end.i:                                         ; preds = %cont46.i
  %handlers51.i = getelementptr inbounds i8* %79, i32 20, !dbg !2777
  %271 = bitcast i8* %handlers51.i to %struct.ngx_http_phase_handler_s**, !dbg !2777
  store %struct.ngx_http_phase_handler_s* %270, %struct.ngx_http_phase_handler_s** %271, align 4, !dbg !2777, !tbaa !2247
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2772) nounwind, !dbg !2778
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2779) nounwind, !dbg !2780
  br label %for.body60.i, !dbg !2780

for.body60.i:                                     ; preds = %cont58.backedge.i, %if.end.i
  %ph.0211.i = phi %struct.ngx_http_phase_handler_s* [ %270, %if.end.i ], [ %ph.2.i, %cont58.backedge.i ]
  %i.1209.i = phi i32 [ 0, %if.end.i ], [ %312, %cont58.backedge.i ]
  %find_config_index.0208.i = phi i32 [ 0, %if.end.i ], [ %find_config_index.1.i, %cont58.backedge.i ]
  %n.1207.i = phi i32 [ 0, %if.end.i ], [ %n.3.i, %cont58.backedge.i ]
  %elts.i388 = getelementptr inbounds %struct.ngx_http_core_main_conf_t* %80, i32 0, i32 13, i32 %i.1209.i, i32 0, i32 0, !dbg !2782
  %272 = load i8** %elts.i388, align 4, !dbg !2782, !tbaa !2247
  %273 = bitcast i8* %272 to i32 (%struct.ngx_http_request_s*)**, !dbg !2782
  call void @llvm.dbg.value(metadata !{i32 (%struct.ngx_http_request_s*)** %273}, i64 0, metadata !2784) nounwind, !dbg !2782
  switch i32 %i.1209.i, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb76.i
    i32 3, label %sw.bb80.i
    i32 4, label %sw.bb93.i
    i32 6, label %sw.bb101.i
    i32 7, label %sw.bb104.i
    i32 8, label %sw.bb111.i
    i32 9, label %sw.epilog.i
  ], !dbg !2785

sw.bb.i:                                          ; preds = %for.body60.i
  %274 = load i32* %235, align 4, !dbg !2786, !tbaa !2269
  call void @__ioc_report_conversion(i32 307, i32 72, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2786
  %cmp71.i = icmp eq i32 %274, -1, !dbg !2786
  br i1 %cmp71.i, label %if.then72.i, label %sw.epilog.i, !dbg !2786

if.then72.i:                                      ; preds = %sw.bb.i
  store i32 %n.1207.i, i32* %235, align 4, !dbg !2789, !tbaa !2269
  br label %sw.epilog.i, !dbg !2791

sw.bb76.i:                                        ; preds = %for.body60.i
  call void @llvm.dbg.value(metadata !{i32 %n.1207.i}, i64 0, metadata !2762) nounwind, !dbg !2792
  %checker77.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 0, i32 0, !dbg !2794
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* @ngx_http_core_find_config_phase, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)** %checker77.i, align 4, !dbg !2794, !tbaa !2247
  %275 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.1207.i, i32 1) nounwind, !dbg !2795
  %276 = extractvalue { i32, i1 } %275, 0, !dbg !2795
  %277 = extractvalue { i32, i1 } %275, 1, !dbg !2795
  br i1 %277, label %ioc_bb78.i, label %cont79.i, !dbg !2795

ioc_bb78.i:                                       ; preds = %sw.bb76.i
  %278 = zext i32 %n.1207.i to i64, !dbg !2795
  call void @__ioc_report_add_overflow(i32 317, i32 10, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %278, i64 1, i8 5) nounwind, !dbg !2795
  br label %cont79.i, !dbg !2795

cont79.i:                                         ; preds = %ioc_bb78.i, %sw.bb76.i
  call void @llvm.dbg.value(metadata !{i32 %276}, i64 0, metadata !2772) nounwind, !dbg !2795
  %incdec.ptr.i389 = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 1, !dbg !2796
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_phase_handler_s* %incdec.ptr.i389}, i64 0, metadata !2775) nounwind, !dbg !2796
  br label %for.inc148.i, !dbg !2797

sw.bb80.i:                                        ; preds = %for.body60.i
  %279 = load i32* %236, align 4, !dbg !2798, !tbaa !2269
  call void @__ioc_report_conversion(i32 323, i32 74, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i64 -1, i8 1) nounwind, !dbg !2798
  %cmp88.i = icmp eq i32 %279, -1, !dbg !2798
  br i1 %cmp88.i, label %if.then89.i, label %sw.epilog.i, !dbg !2798

if.then89.i:                                      ; preds = %sw.bb80.i
  store i32 %n.1207.i, i32* %236, align 4, !dbg !2800, !tbaa !2269
  br label %sw.epilog.i, !dbg !2802

sw.bb93.i:                                        ; preds = %for.body60.i
  br i1 %tobool.i380, label %if.then95.i, label %for.inc148.i, !dbg !2803

if.then95.i:                                      ; preds = %sw.bb93.i
  %checker96.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 0, i32 0, !dbg !2805
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* @ngx_http_core_post_rewrite_phase, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)** %checker96.i, align 4, !dbg !2805, !tbaa !2247
  %next.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 0, i32 2, !dbg !2807
  store i32 %find_config_index.0208.i, i32* %next.i, align 4, !dbg !2807, !tbaa !2269
  %280 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.1207.i, i32 1) nounwind, !dbg !2808
  %281 = extractvalue { i32, i1 } %280, 0, !dbg !2808
  %282 = extractvalue { i32, i1 } %280, 1, !dbg !2808
  br i1 %282, label %ioc_bb97.i, label %cont98.i, !dbg !2808

ioc_bb97.i:                                       ; preds = %if.then95.i
  %283 = zext i32 %n.1207.i to i64, !dbg !2808
  call void @__ioc_report_add_overflow(i32 334, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %283, i64 1, i8 5) nounwind, !dbg !2808
  br label %cont98.i, !dbg !2808

cont98.i:                                         ; preds = %ioc_bb97.i, %if.then95.i
  call void @llvm.dbg.value(metadata !{i32 %281}, i64 0, metadata !2772) nounwind, !dbg !2808
  %incdec.ptr99.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 1, !dbg !2809
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_phase_handler_s* %incdec.ptr99.i}, i64 0, metadata !2775) nounwind, !dbg !2809
  br label %for.inc148.i, !dbg !2810

sw.bb101.i:                                       ; preds = %for.body60.i
  call void @llvm.dbg.value(metadata !2811, i64 0, metadata !2812) nounwind, !dbg !2813
  %284 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.1207.i, i32 1) nounwind, !dbg !2815
  %285 = extractvalue { i32, i1 } %284, 0, !dbg !2815
  %286 = extractvalue { i32, i1 } %284, 1, !dbg !2815
  br i1 %286, label %ioc_bb102.i, label %sw.epilog.i, !dbg !2815

ioc_bb102.i:                                      ; preds = %sw.bb101.i
  %287 = zext i32 %n.1207.i to i64, !dbg !2815
  call void @__ioc_report_add_overflow(i32 342, i32 10, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %287, i64 1, i8 5) nounwind, !dbg !2815
  br label %sw.epilog.i, !dbg !2815

sw.bb104.i:                                       ; preds = %for.body60.i
  br i1 %tobool18.i, label %if.then106.i, label %for.inc148.i, !dbg !2816

if.then106.i:                                     ; preds = %sw.bb104.i
  %checker107.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 0, i32 0, !dbg !2818
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* @ngx_http_core_post_access_phase, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)** %checker107.i, align 4, !dbg !2818, !tbaa !2247
  %next108.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 0, i32 2, !dbg !2820
  store i32 %n.1207.i, i32* %next108.i, align 4, !dbg !2820, !tbaa !2269
  %incdec.ptr109.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 1, !dbg !2821
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_phase_handler_s* %incdec.ptr109.i}, i64 0, metadata !2775) nounwind, !dbg !2821
  br label %for.inc148.i, !dbg !2822

sw.bb111.i:                                       ; preds = %for.body60.i
  %288 = load i32* %240, align 4, !dbg !2823, !tbaa !2269
  %tobool113.i = icmp eq i32 %288, 0, !dbg !2823
  br i1 %tobool113.i, label %for.inc148.i, label %if.then114.i, !dbg !2823

if.then114.i:                                     ; preds = %sw.bb111.i
  %checker115.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 0, i32 0, !dbg !2825
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* @ngx_http_core_try_files_phase, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)** %checker115.i, align 4, !dbg !2825, !tbaa !2247
  %289 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.1207.i, i32 1) nounwind, !dbg !2827
  %290 = extractvalue { i32, i1 } %289, 0, !dbg !2827
  %291 = extractvalue { i32, i1 } %289, 1, !dbg !2827
  br i1 %291, label %ioc_bb116.i, label %cont117.i, !dbg !2827

ioc_bb116.i:                                      ; preds = %if.then114.i
  %292 = zext i32 %n.1207.i to i64, !dbg !2827
  call void @__ioc_report_add_overflow(i32 358, i32 12, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %292, i64 1, i8 5) nounwind, !dbg !2827
  br label %cont117.i, !dbg !2827

cont117.i:                                        ; preds = %ioc_bb116.i, %if.then114.i
  call void @llvm.dbg.value(metadata !{i32 %290}, i64 0, metadata !2772) nounwind, !dbg !2827
  %incdec.ptr118.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.0211.i, i32 1, !dbg !2828
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_phase_handler_s* %incdec.ptr118.i}, i64 0, metadata !2775) nounwind, !dbg !2828
  br label %for.inc148.i, !dbg !2829

sw.default.i:                                     ; preds = %for.body60.i
  call void @llvm.dbg.value(metadata !2830, i64 0, metadata !2812) nounwind, !dbg !2831
  br label %sw.epilog.i, !dbg !2832

sw.epilog.i:                                      ; preds = %sw.default.i, %ioc_bb102.i, %sw.bb101.i, %if.then89.i, %sw.bb80.i, %if.then72.i, %sw.bb.i, %for.body60.i
  %n.2.i = phi i32 [ %n.1207.i, %sw.default.i ], [ %n.1207.i, %if.then72.i ], [ %n.1207.i, %sw.bb.i ], [ %n.1207.i, %if.then89.i ], [ %n.1207.i, %sw.bb80.i ], [ %285, %sw.bb101.i ], [ %285, %ioc_bb102.i ], [ %n.1207.i, %for.body60.i ]
  %checker.0.i = phi i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* [ @ngx_http_core_generic_phase, %sw.default.i ], [ @ngx_http_core_rewrite_phase, %if.then72.i ], [ @ngx_http_core_rewrite_phase, %sw.bb.i ], [ @ngx_http_core_rewrite_phase, %if.then89.i ], [ @ngx_http_core_rewrite_phase, %sw.bb80.i ], [ @ngx_http_core_access_phase, %sw.bb101.i ], [ @ngx_http_core_access_phase, %ioc_bb102.i ], [ @ngx_http_core_content_phase, %for.body60.i ]
  %nelts124.i = getelementptr inbounds %struct.ngx_http_core_main_conf_t* %80, i32 0, i32 13, i32 %i.1209.i, i32 0, i32 1, !dbg !2833
  %293 = load i32* %nelts124.i, align 4, !dbg !2833, !tbaa !2269
  %294 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.2.i, i32 %293) nounwind, !dbg !2833
  %295 = extractvalue { i32, i1 } %294, 0, !dbg !2833
  %296 = extractvalue { i32, i1 } %294, 1, !dbg !2833
  br i1 %296, label %ioc_bb125.i, label %cont126.i, !dbg !2833

ioc_bb125.i:                                      ; preds = %sw.epilog.i
  %297 = zext i32 %293 to i64, !dbg !2833
  %298 = zext i32 %n.2.i to i64, !dbg !2833
  call void @__ioc_report_add_overflow(i32 371, i32 7, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8]* @1, i32 0, i32 0), i64 %298, i64 %297, i8 5) nounwind, !dbg !2833
  %.pre.i = load i32* %nelts124.i, align 4, !dbg !2834, !tbaa !2269
  br label %cont126.i, !dbg !2833

cont126.i:                                        ; preds = %ioc_bb125.i, %sw.epilog.i
  %299 = phi i32 [ %293, %sw.epilog.i ], [ %.pre.i, %ioc_bb125.i ]
  call void @llvm.dbg.value(metadata !{i32 %295}, i64 0, metadata !2772) nounwind, !dbg !2833
  %300 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %299, i32 1) nounwind, !dbg !2834
  %301 = extractvalue { i32, i1 } %300, 0, !dbg !2834
  %302 = extractvalue { i32, i1 } %300, 1, !dbg !2834
  br i1 %302, label %ioc_bb133.i, label %cont134.i, !dbg !2834

ioc_bb133.i:                                      ; preds = %cont126.i
  %303 = zext i32 %299 to i64, !dbg !2834
  call void @__ioc_report_sub_overflow(i32 372, i32 48, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %303, i64 1, i8 5) nounwind, !dbg !2834
  br label %cont134.i, !dbg !2834

cont134.i:                                        ; preds = %ioc_bb133.i, %cont126.i
  %304 = icmp sgt i32 %301, -1, !dbg !2834
  br i1 %304, label %for.body139.i, label %for.cond137.preheader.i, !dbg !2834

for.cond137.preheader.i:                          ; preds = %cont134.i
  %305 = zext i32 %301 to i64, !dbg !2834
  call void @__ioc_report_conversion(i32 372, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @3, i32 0, i32 0), i64 %305, i8 0) nounwind, !dbg !2834
  br label %for.inc148.i

for.body139.i:                                    ; preds = %cont134.i, %for.cond137.backedge.i
  %ph.1206.i = phi %struct.ngx_http_phase_handler_s* [ %incdec.ptr143.i, %for.cond137.backedge.i ], [ %ph.0211.i, %cont134.i ]
  %j.0205.i = phi i32 [ %308, %for.cond137.backedge.i ], [ %301, %cont134.i ]
  %checker140.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.1206.i, i32 0, i32 0, !dbg !2836
  store i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* %checker.0.i, i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)** %checker140.i, align 4, !dbg !2836, !tbaa !2247
  %arrayidx141.i = getelementptr inbounds i32 (%struct.ngx_http_request_s*)** %273, i32 %j.0205.i, !dbg !2838
  %306 = load i32 (%struct.ngx_http_request_s*)** %arrayidx141.i, align 4, !dbg !2838, !tbaa !2247
  %handler.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.1206.i, i32 0, i32 1, !dbg !2838
  store i32 (%struct.ngx_http_request_s*)* %306, i32 (%struct.ngx_http_request_s*)** %handler.i, align 4, !dbg !2838, !tbaa !2247
  %next142.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.1206.i, i32 0, i32 2, !dbg !2839
  store i32 %295, i32* %next142.i, align 4, !dbg !2839, !tbaa !2269
  %incdec.ptr143.i = getelementptr inbounds %struct.ngx_http_phase_handler_s* %ph.1206.i, i32 1, !dbg !2840
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_phase_handler_s* %incdec.ptr143.i}, i64 0, metadata !2775) nounwind, !dbg !2840
  %307 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %j.0205.i, i32 -1) nounwind, !dbg !2834
  %308 = extractvalue { i32, i1 } %307, 0, !dbg !2834
  %309 = extractvalue { i32, i1 } %307, 1, !dbg !2834
  br i1 %309, label %ioc_bb145.i, label %for.cond137.backedge.i, !dbg !2834

for.cond137.backedge.i:                           ; preds = %ioc_bb145.i, %for.body139.i
  %cmp138.i = icmp sgt i32 %308, -1, !dbg !2834
  br i1 %cmp138.i, label %for.body139.i, label %for.inc148.i, !dbg !2834

ioc_bb145.i:                                      ; preds = %for.body139.i
  %310 = sext i32 %j.0205.i to i64, !dbg !2834
  call void @__ioc_report_add_overflow(i32 372, i32 63, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %310, i64 -1, i8 13) nounwind, !dbg !2834
  br label %for.cond137.backedge.i, !dbg !2834

for.inc148.i:                                     ; preds = %for.cond137.backedge.i, %for.cond137.preheader.i, %cont117.i, %sw.bb111.i, %if.then106.i, %sw.bb104.i, %cont98.i, %sw.bb93.i, %cont79.i
  %n.3.i = phi i32 [ %290, %cont117.i ], [ %n.1207.i, %sw.bb111.i ], [ %n.1207.i, %if.then106.i ], [ %n.1207.i, %sw.bb104.i ], [ %281, %cont98.i ], [ %n.1207.i, %sw.bb93.i ], [ %276, %cont79.i ], [ %295, %for.cond137.preheader.i ], [ %295, %for.cond137.backedge.i ]
  %find_config_index.1.i = phi i32 [ %find_config_index.0208.i, %cont117.i ], [ %find_config_index.0208.i, %sw.bb111.i ], [ %find_config_index.0208.i, %if.then106.i ], [ %find_config_index.0208.i, %sw.bb104.i ], [ %find_config_index.0208.i, %cont98.i ], [ %find_config_index.0208.i, %sw.bb93.i ], [ %n.1207.i, %cont79.i ], [ %find_config_index.0208.i, %for.cond137.preheader.i ], [ %find_config_index.0208.i, %for.cond137.backedge.i ]
  %ph.2.i = phi %struct.ngx_http_phase_handler_s* [ %incdec.ptr118.i, %cont117.i ], [ %ph.0211.i, %sw.bb111.i ], [ %incdec.ptr109.i, %if.then106.i ], [ %ph.0211.i, %sw.bb104.i ], [ %incdec.ptr99.i, %cont98.i ], [ %ph.0211.i, %sw.bb93.i ], [ %incdec.ptr.i389, %cont79.i ], [ %ph.0211.i, %for.cond137.preheader.i ], [ %incdec.ptr143.i, %for.cond137.backedge.i ]
  %311 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1209.i, i32 1) nounwind, !dbg !2780
  %312 = extractvalue { i32, i1 } %311, 0, !dbg !2780
  %313 = extractvalue { i32, i1 } %311, 1, !dbg !2780
  br i1 %313, label %ioc_bb149.i, label %cont58.backedge.i, !dbg !2780

cont58.backedge.i:                                ; preds = %ioc_bb149.i, %for.inc148.i
  %cmp59.i = icmp ult i32 %312, 10, !dbg !2780
  br i1 %cmp59.i, label %for.body60.i, label %if.end263, !dbg !2780

ioc_bb149.i:                                      ; preds = %for.inc148.i
  %314 = zext i32 %i.1209.i to i64, !dbg !2780
  call void @__ioc_report_add_overflow(i32 302, i32 24, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %314, i64 1, i8 5) nounwind, !dbg !2780
  br label %cont58.backedge.i, !dbg !2780

if.end263:                                        ; preds = %cont58.backedge.i
  %ports = getelementptr inbounds i8* %79, i32 92, !dbg !2841
  %315 = bitcast i8* %ports to %struct.ngx_array_s**, !dbg !2841
  %316 = load %struct.ngx_array_s** %315, align 4, !dbg !2841, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2842) nounwind, !dbg !2843
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_main_conf_t* %80}, i64 0, metadata !2844) nounwind, !dbg !2843
  call void @llvm.dbg.value(metadata !{%struct.ngx_array_s* %316}, i64 0, metadata !2845) nounwind, !dbg !2843
  %cmp.i391 = icmp eq %struct.ngx_array_s* %316, null, !dbg !2846
  br i1 %cmp.i391, label %ngx_http_optimize_servers.exit, label %if.end.i394, !dbg !2846

if.end.i394:                                      ; preds = %if.end263
  %elts.i392 = getelementptr inbounds %struct.ngx_array_s* %316, i32 0, i32 0, !dbg !2847
  %317 = load i8** %elts.i392, align 4, !dbg !2847, !tbaa !2247
  %318 = bitcast i8* %317 to %struct.ngx_http_conf_port_t*, !dbg !2847
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_port_t* %318}, i64 0, metadata !2848) nounwind, !dbg !2847
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2849) nounwind, !dbg !2850
  %nelts.i393 = getelementptr inbounds %struct.ngx_array_s* %316, i32 0, i32 1, !dbg !2850
  %319 = load i32* %nelts.i393, align 4, !dbg !2850, !tbaa !2269
  %cmp196.i = icmp eq i32 %319, 0, !dbg !2850
  br i1 %cmp196.i, label %ngx_http_optimize_servers.exit, label %for.body.lr.ph.i395, !dbg !2850

for.body.lr.ph.i395:                              ; preds = %if.end.i394
  %320 = bitcast %struct.ngx_hash_init_t* %hash.i.i to i8*, !dbg !2852
  %321 = bitcast %struct.ngx_hash_keys_arrays_t* %ha.i.i to i8*, !dbg !2852
  %log.i.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 6, !dbg !2858
  %temp_pool.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 2, !dbg !2858
  %pool6.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 1, !dbg !2859
  %key.i.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i.i, i32 0, i32 1, !dbg !2860
  %server_names_hash_max_size.i.i = getelementptr inbounds i8* %79, i32 72, !dbg !2861
  %322 = bitcast i8* %server_names_hash_max_size.i.i to i32*, !dbg !2861
  %max_size.i.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i.i, i32 0, i32 2, !dbg !2861
  %server_names_hash_bucket_size.i.i = getelementptr inbounds i8* %79, i32 76, !dbg !2862
  %323 = bitcast i8* %server_names_hash_bucket_size.i.i to i32*, !dbg !2862
  %bucket_size.i.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i.i, i32 0, i32 3, !dbg !2862
  %name90.i.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i.i, i32 0, i32 4, !dbg !2863
  %pool92.i.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i.i, i32 0, i32 5, !dbg !2864
  %nelts93.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 3, i32 1, !dbg !2865
  %nelts108.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 5, i32 1, !dbg !2866
  %nelts128.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 7, i32 1, !dbg !2867
  %elts132.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 7, i32 0, !dbg !2868
  %hash135.i.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i.i, i32 0, i32 0, !dbg !2870
  %temp_pool137.i.i = getelementptr inbounds %struct.ngx_hash_init_t* %hash.i.i, i32 0, i32 6, !dbg !2871
  %elts112.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 5, i32 0, !dbg !2872
  %elts100.i.i = getelementptr inbounds %struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 0, i32 3, i32 0, !dbg !2874
  br label %for.body.i396, !dbg !2850

for.body.i396:                                    ; preds = %for.cond.backedge.i404, %for.body.lr.ph.i395
  %p.097.i = phi i32 [ 0, %for.body.lr.ph.i395 ], [ %516, %for.cond.backedge.i404 ]
  %elts2.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %318, i32 %p.097.i, i32 2, i32 0, !dbg !2876
  %324 = load i8** %elts2.i, align 4, !dbg !2876, !tbaa !2247
  %nelts5.i = getelementptr inbounds %struct.ngx_http_conf_port_t* %318, i32 %p.097.i, i32 2, i32 1, !dbg !2876
  %325 = load i32* %nelts5.i, align 4, !dbg !2876, !tbaa !2269
  call void @ngx_sort(i8* %324, i32 %325, i32 312, i32 (i8*, i8*)* @ngx_http_cmp_conf_addrs) nounwind, !dbg !2876
  %326 = load i8** %elts2.i, align 4, !dbg !2877, !tbaa !2247
  %327 = bitcast i8* %326 to %struct.ngx_http_conf_addr_t*, !dbg !2877
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_addr_t* %327}, i64 0, metadata !2878) nounwind, !dbg !2877
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2879) nounwind, !dbg !2880
  %328 = load i32* %nelts5.i, align 4, !dbg !2880, !tbaa !2269
  %cmp1588.i = icmp eq i32 %328, 0, !dbg !2880
  br i1 %cmp1588.i, label %for.end.i403, label %for.body16.i, !dbg !2880

for.body16.i:                                     ; preds = %for.body.i396, %for.cond11.backedge.i
  %a.089.i = phi i32 [ %420, %for.cond11.backedge.i ], [ 0, %for.body.i396 ]
  %nelts18.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 7, i32 1, !dbg !2881
  %329 = load i32* %nelts18.i, align 4, !dbg !2881, !tbaa !2269
  %cmp21.i = icmp ugt i32 %329, 1, !dbg !2881
  br i1 %cmp21.i, label %if.then25.i, label %cont24.i, !dbg !2881

cont24.i:                                         ; preds = %for.body16.i
  %default_server.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 6, !dbg !2881
  %330 = load %struct.ngx_http_core_srv_conf_t** %default_server.i, align 4, !dbg !2881, !tbaa !2247
  %331 = getelementptr %struct.ngx_http_core_srv_conf_t* %330, i32 0, i32 11, !dbg !2881
  %332 = bitcast i8* %331 to i32*, !dbg !2881
  %333 = load i32* %332, align 4, !dbg !2881
  %bf.clear.i = and i32 %333, 2, !dbg !2881
  %tobool.i397 = icmp eq i32 %bf.clear.i, 0, !dbg !2881
  br i1 %tobool.i397, label %for.inc.i401, label %if.then25.i, !dbg !2881

if.then25.i:                                      ; preds = %cont24.i, %for.body16.i
  call void @llvm.lifetime.start(i64 -1, i8* %320) nounwind, !dbg !2852
  call void @llvm.lifetime.start(i64 -1, i8* %321) nounwind, !dbg !2852
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2882) nounwind, !dbg !2852
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_main_conf_t* %80}, i64 0, metadata !2883) nounwind, !dbg !2852
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_init_t* %hash.i.i}, metadata !1978) nounwind, !dbg !2884
  call void @llvm.dbg.declare(metadata !{%struct.ngx_hash_keys_arrays_t* %ha.i.i}, metadata !1979) nounwind, !dbg !2885
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2886) nounwind, !dbg !2887
  call void @llvm.memset.p0i8.i32(i8* %321, i8 0, i32 84, i32 4, i1 false) nounwind, !dbg !2888
  %334 = load %struct.ngx_log_s** %log.i.i, align 4, !dbg !2858, !tbaa !2247
  %call.i.i398 = call %struct.ngx_pool_s* @ngx_create_pool(i32 16384, %struct.ngx_log_s* %334) nounwind, !dbg !2858
  store %struct.ngx_pool_s* %call.i.i398, %struct.ngx_pool_s** %temp_pool.i.i, align 4, !dbg !2858, !tbaa !2247
  %cmp.i.i399 = icmp eq %struct.ngx_pool_s* %call.i.i398, null, !dbg !2889
  br i1 %cmp.i.i399, label %ngx_http_optimize_servers.exit, label %if.end.i.i, !dbg !2889

if.end.i.i:                                       ; preds = %if.then25.i
  %335 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2859, !tbaa !2247
  store %struct.ngx_pool_s* %335, %struct.ngx_pool_s** %pool6.i.i, align 4, !dbg !2859, !tbaa !2247
  %call9.i.i = call i32 @ngx_hash_keys_array_init(%struct.ngx_hash_keys_arrays_t* %ha.i.i, i32 2) nounwind, !dbg !2890
  %cmp10.i.i = icmp eq i32 %call9.i.i, 0, !dbg !2890
  br i1 %cmp10.i.i, label %if.end12.i.i, label %failed.i.i, !dbg !2890

if.end12.i.i:                                     ; preds = %if.end.i.i
  %elts.i.i400 = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 7, i32 0, !dbg !2891
  %336 = load i8** %elts.i.i400, align 4, !dbg !2891, !tbaa !2247
  %337 = bitcast i8* %336 to %struct.ngx_http_core_srv_conf_t**, !dbg !2891
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t** %337}, i64 0, metadata !2892) nounwind, !dbg !2891
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2893) nounwind, !dbg !2894
  %338 = load i32* %nelts18.i, align 4, !dbg !2894, !tbaa !2269
  %cmp16276.i.i = icmp eq i32 %338, 0, !dbg !2894
  br i1 %cmp16276.i.i, label %for.end89.i.i, label %for.body.lr.ph.i.i, !dbg !2894

for.body.lr.ph.i.i:                               ; preds = %if.end12.i.i
  %arraydecay81.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 0, i32 10, i32 0, !dbg !2896
  br label %for.body.i.i, !dbg !2894

for.body.i.i:                                     ; preds = %for.cond.backedge.i.i, %for.body.lr.ph.i.i
  %regex.0278.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %regex.1.lcssa.i.i, %for.cond.backedge.i.i ]
  %s.0277.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %361, %for.cond.backedge.i.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t** %337, i32 %s.0277.i.i, !dbg !2901
  %339 = load %struct.ngx_http_core_srv_conf_t** %arrayidx.i.i, align 4, !dbg !2901, !tbaa !2247
  %elts17.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %339, i32 0, i32 0, i32 0, !dbg !2901
  %340 = load i8** %elts17.i.i, align 4, !dbg !2901, !tbaa !2247
  %341 = bitcast i8* %340 to %struct.ngx_http_server_name_s*, !dbg !2901
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_server_name_s* %341}, i64 0, metadata !2902) nounwind, !dbg !2901
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2903) nounwind, !dbg !2904
  %nelts23267.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %339, i32 0, i32 0, i32 1, !dbg !2904
  %342 = load i32* %nelts23267.i.i, align 4, !dbg !2904, !tbaa !2269
  %cmp24268.i.i = icmp eq i32 %342, 0, !dbg !2904
  br i1 %cmp24268.i.i, label %for.inc86.i.i, label %for.body25.i.i, !dbg !2904

for.body25.i.i:                                   ; preds = %for.body.i.i, %for.cond20.backedge.i.i
  %regex.1270.i.i = phi i32 [ %regex.2.i.i, %for.cond20.backedge.i.i ], [ %regex.0278.i.i, %for.body.i.i ]
  %n.0269.i.i = phi i32 [ %355, %for.cond20.backedge.i.i ], [ 0, %for.body.i.i ]
  %regex27.i.i = getelementptr inbounds %struct.ngx_http_server_name_s* %341, i32 %n.0269.i.i, i32 0, !dbg !2905
  %343 = load %struct.ngx_http_regex_t** %regex27.i.i, align 4, !dbg !2905, !tbaa !2247
  %tobool.i.i = icmp eq %struct.ngx_http_regex_t* %343, null, !dbg !2905
  br i1 %tobool.i.i, label %if.end31.i.i, label %if.then28.i.i, !dbg !2905

if.then28.i.i:                                    ; preds = %for.body25.i.i
  %344 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %regex.1270.i.i, i32 1) nounwind, !dbg !2906
  %345 = extractvalue { i32, i1 } %344, 0, !dbg !2906
  %346 = extractvalue { i32, i1 } %344, 1, !dbg !2906
  br i1 %346, label %ioc_bb29.i.i, label %for.inc.i.i, !dbg !2906

ioc_bb29.i.i:                                     ; preds = %if.then28.i.i
  %347 = zext i32 %regex.1270.i.i to i64, !dbg !2906
  call void @__ioc_report_add_overflow(i32 1085, i32 14, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %347, i64 1, i8 5) nounwind, !dbg !2906
  br label %for.inc.i.i, !dbg !2906

if.end31.i.i:                                     ; preds = %for.body25.i.i
  %name33.i.i = getelementptr inbounds %struct.ngx_http_server_name_s* %341, i32 %n.0269.i.i, i32 2, !dbg !2908
  %server.i.i = getelementptr inbounds %struct.ngx_http_server_name_s* %341, i32 %n.0269.i.i, i32 1, !dbg !2908
  %348 = load %struct.ngx_http_core_srv_conf_t** %server.i.i, align 4, !dbg !2908, !tbaa !2247
  %349 = bitcast %struct.ngx_http_core_srv_conf_t* %348 to i8*, !dbg !2908
  %call37.i.i = call i32 @ngx_hash_add_key(%struct.ngx_hash_keys_arrays_t* %ha.i.i, %struct.ngx_str_t* %name33.i.i, i8* %349, i32 1) nounwind, !dbg !2908
  call void @llvm.dbg.value(metadata !{i32 %call37.i.i}, i64 0, metadata !2909) nounwind, !dbg !2908
  switch i32 %call37.i.i, label %for.inc.i.i [
    i32 -1, label %ngx_http_optimize_servers.exit
    i32 -5, label %cont51.i.i
    i32 -3, label %cont71.i.i
  ], !dbg !2910

cont51.i.i:                                       ; preds = %if.end31.i.i
  %350 = load %struct.ngx_log_s** %log.i.i, align 4, !dbg !2911, !tbaa !2247
  %log_level.i.i = getelementptr inbounds %struct.ngx_log_s* %350, i32 0, i32 0, !dbg !2911
  %351 = load i32* %log_level.i.i, align 4, !dbg !2911, !tbaa !2269
  %cmp52.i.i = icmp eq i32 %351, 0, !dbg !2911
  br i1 %cmp52.i.i, label %ngx_http_optimize_servers.exit, label %cont55.i.i, !dbg !2911

cont55.i.i:                                       ; preds = %cont51.i.i
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %350, i32 0, i8* getelementptr inbounds ([43 x i8]* @.str7, i32 0, i32 0), %struct.ngx_str_t* %name33.i.i, i8* %arraydecay81.i.i) nounwind, !dbg !2913
  br label %ngx_http_optimize_servers.exit, !dbg !2913

cont71.i.i:                                       ; preds = %if.end31.i.i
  %352 = load %struct.ngx_log_s** %log.i.i, align 4, !dbg !2914, !tbaa !2247
  %log_level69.i.i = getelementptr inbounds %struct.ngx_log_s* %352, i32 0, i32 0, !dbg !2914
  %353 = load i32* %log_level69.i.i, align 4, !dbg !2914, !tbaa !2269
  %cmp72.i.i = icmp ugt i32 %353, 4, !dbg !2914
  br i1 %cmp72.i.i, label %cont75.i.i, label %for.inc.i.i, !dbg !2914

cont75.i.i:                                       ; preds = %cont71.i.i
  call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 5, %struct.ngx_log_s* %352, i32 0, i8* getelementptr inbounds ([44 x i8]* @.str8, i32 0, i32 0), %struct.ngx_str_t* %name33.i.i, i8* %arraydecay81.i.i) nounwind, !dbg !2896
  br label %for.inc.i.i, !dbg !2896

for.inc.i.i:                                      ; preds = %cont75.i.i, %cont71.i.i, %if.end31.i.i, %ioc_bb29.i.i, %if.then28.i.i
  %regex.2.i.i = phi i32 [ %regex.1270.i.i, %cont75.i.i ], [ %regex.1270.i.i, %cont71.i.i ], [ %345, %if.then28.i.i ], [ %345, %ioc_bb29.i.i ], [ %regex.1270.i.i, %if.end31.i.i ]
  %354 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0269.i.i, i32 1) nounwind, !dbg !2904
  %355 = extractvalue { i32, i1 } %354, 0, !dbg !2904
  %356 = extractvalue { i32, i1 } %354, 1, !dbg !2904
  br i1 %356, label %ioc_bb84.i.i, label %for.cond20.backedge.i.i, !dbg !2904

for.cond20.backedge.i.i:                          ; preds = %for.inc.i.i, %ioc_bb84.i.i
  %357 = load %struct.ngx_http_core_srv_conf_t** %arrayidx.i.i, align 4, !dbg !2904, !tbaa !2247
  %nelts23.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %357, i32 0, i32 0, i32 1, !dbg !2904
  %358 = load i32* %nelts23.i.i, align 4, !dbg !2904, !tbaa !2269
  %cmp24.i.i = icmp ult i32 %355, %358, !dbg !2904
  br i1 %cmp24.i.i, label %for.body25.i.i, label %for.inc86.i.i, !dbg !2904

ioc_bb84.i.i:                                     ; preds = %for.inc.i.i
  %359 = zext i32 %n.0269.i.i to i64, !dbg !2904
  call void @__ioc_report_add_overflow(i32 1082, i32 54, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %359, i64 1, i8 5) nounwind, !dbg !2904
  br label %for.cond20.backedge.i.i, !dbg !2904

for.inc86.i.i:                                    ; preds = %for.cond20.backedge.i.i, %for.body.i.i
  %regex.1.lcssa.i.i = phi i32 [ %regex.0278.i.i, %for.body.i.i ], [ %regex.2.i.i, %for.cond20.backedge.i.i ]
  %360 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %s.0277.i.i, i32 1) nounwind, !dbg !2894
  %361 = extractvalue { i32, i1 } %360, 0, !dbg !2894
  %362 = extractvalue { i32, i1 } %360, 1, !dbg !2894
  br i1 %362, label %ioc_bb87.i.i, label %for.cond.backedge.i.i, !dbg !2894

for.cond.backedge.i.i:                            ; preds = %for.inc86.i.i, %ioc_bb87.i.i
  %363 = load i32* %nelts18.i, align 4, !dbg !2894, !tbaa !2269
  %cmp16.i.i = icmp ult i32 %361, %363, !dbg !2894
  br i1 %cmp16.i.i, label %for.body.i.i, label %for.end89.i.i, !dbg !2894

ioc_bb87.i.i:                                     ; preds = %for.inc86.i.i
  %364 = zext i32 %s.0277.i.i to i64, !dbg !2894
  call void @__ioc_report_add_overflow(i32 1080, i32 43, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %364, i64 1, i8 5) nounwind, !dbg !2894
  br label %for.cond.backedge.i.i, !dbg !2894

for.end89.i.i:                                    ; preds = %for.cond.backedge.i.i, %if.end12.i.i
  %regex.0.lcssa.i.i = phi i32 [ 0, %if.end12.i.i ], [ %regex.1.lcssa.i.i, %for.cond.backedge.i.i ]
  store i32 (i8*, i32)* @ngx_hash_key_lc, i32 (i8*, i32)** %key.i.i, align 4, !dbg !2860, !tbaa !2247
  %365 = load i32* %322, align 4, !dbg !2861, !tbaa !2269
  store i32 %365, i32* %max_size.i.i, align 4, !dbg !2861, !tbaa !2269
  %366 = load i32* %323, align 4, !dbg !2862, !tbaa !2269
  store i32 %366, i32* %bucket_size.i.i, align 4, !dbg !2862, !tbaa !2269
  store i8* getelementptr inbounds ([18 x i8]* @.str9, i32 0, i32 0), i8** %name90.i.i, align 4, !dbg !2863, !tbaa !2247
  %367 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2864, !tbaa !2247
  store %struct.ngx_pool_s* %367, %struct.ngx_pool_s** %pool92.i.i, align 4, !dbg !2864, !tbaa !2247
  %368 = load i32* %nelts93.i.i, align 4, !dbg !2865, !tbaa !2269
  %tobool94.i.i = icmp eq i32 %368, 0, !dbg !2865
  br i1 %tobool94.i.i, label %if.end107.i.i, label %if.then95.i.i, !dbg !2865

if.then95.i.i:                                    ; preds = %for.end89.i.i
  %hash96.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 1, !dbg !2915
  store %struct.ngx_hash_t* %hash96.i.i, %struct.ngx_hash_t** %hash135.i.i, align 4, !dbg !2915, !tbaa !2247
  store %struct.ngx_pool_s* null, %struct.ngx_pool_s** %temp_pool137.i.i, align 4, !dbg !2916, !tbaa !2247
  %369 = load i8** %elts100.i.i, align 4, !dbg !2874, !tbaa !2247
  %370 = bitcast i8* %369 to %struct.ngx_hash_key_t*, !dbg !2874
  %call103.i.i = call i32 @ngx_hash_init(%struct.ngx_hash_init_t* %hash.i.i, %struct.ngx_hash_key_t* %370, i32 %368) nounwind, !dbg !2874
  %cmp104.i.i = icmp eq i32 %call103.i.i, 0, !dbg !2874
  br i1 %cmp104.i.i, label %if.end107.i.i, label %failed.i.i, !dbg !2874

if.end107.i.i:                                    ; preds = %if.then95.i.i, %for.end89.i.i
  %371 = load i32* %nelts108.i.i, align 4, !dbg !2866, !tbaa !2269
  %tobool109.i.i = icmp eq i32 %371, 0, !dbg !2866
  br i1 %tobool109.i.i, label %if.end127.i.i, label %if.then110.i.i, !dbg !2866

if.then110.i.i:                                   ; preds = %if.end107.i.i
  %372 = load i8** %elts112.i.i, align 4, !dbg !2872, !tbaa !2247
  call void @qsort(i8* %372, i32 %371, i32 16, i32 (i8*, i8*)* @ngx_http_cmp_dns_wildcards) nounwind, !dbg !2872
  store %struct.ngx_hash_t* null, %struct.ngx_hash_t** %hash135.i.i, align 4, !dbg !2917, !tbaa !2247
  %373 = load %struct.ngx_pool_s** %temp_pool.i.i, align 4, !dbg !2918, !tbaa !2247
  store %struct.ngx_pool_s* %373, %struct.ngx_pool_s** %temp_pool137.i.i, align 4, !dbg !2918, !tbaa !2247
  %374 = load i8** %elts112.i.i, align 4, !dbg !2919, !tbaa !2247
  %375 = bitcast i8* %374 to %struct.ngx_hash_key_t*, !dbg !2919
  %376 = load i32* %nelts108.i.i, align 4, !dbg !2919, !tbaa !2269
  %call122.i.i = call i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* %hash.i.i, %struct.ngx_hash_key_t* %375, i32 %376) nounwind, !dbg !2919
  %cmp123.i.i = icmp eq i32 %call122.i.i, 0, !dbg !2919
  br i1 %cmp123.i.i, label %if.end125.i.i, label %failed.i.i, !dbg !2919

if.end125.i.i:                                    ; preds = %if.then110.i.i
  %377 = load %struct.ngx_hash_t** %hash135.i.i, align 4, !dbg !2920, !tbaa !2247
  %378 = bitcast %struct.ngx_hash_t* %377 to %struct.ngx_hash_wildcard_t*, !dbg !2920
  %wc_head.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 2, !dbg !2920
  store %struct.ngx_hash_wildcard_t* %378, %struct.ngx_hash_wildcard_t** %wc_head.i.i, align 4, !dbg !2920, !tbaa !2247
  br label %if.end127.i.i, !dbg !2921

if.end127.i.i:                                    ; preds = %if.end125.i.i, %if.end107.i.i
  %379 = load i32* %nelts128.i.i, align 4, !dbg !2867, !tbaa !2269
  %tobool129.i.i = icmp eq i32 %379, 0, !dbg !2867
  br i1 %tobool129.i.i, label %if.end147.i.i, label %if.then130.i.i, !dbg !2867

if.then130.i.i:                                   ; preds = %if.end127.i.i
  %380 = load i8** %elts132.i.i, align 4, !dbg !2868, !tbaa !2247
  call void @qsort(i8* %380, i32 %379, i32 16, i32 (i8*, i8*)* @ngx_http_cmp_dns_wildcards) nounwind, !dbg !2868
  store %struct.ngx_hash_t* null, %struct.ngx_hash_t** %hash135.i.i, align 4, !dbg !2870, !tbaa !2247
  %381 = load %struct.ngx_pool_s** %temp_pool.i.i, align 4, !dbg !2871, !tbaa !2247
  store %struct.ngx_pool_s* %381, %struct.ngx_pool_s** %temp_pool137.i.i, align 4, !dbg !2871, !tbaa !2247
  %382 = load i8** %elts132.i.i, align 4, !dbg !2922, !tbaa !2247
  %383 = bitcast i8* %382 to %struct.ngx_hash_key_t*, !dbg !2922
  %384 = load i32* %nelts128.i.i, align 4, !dbg !2922, !tbaa !2269
  %call142.i.i = call i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t* %hash.i.i, %struct.ngx_hash_key_t* %383, i32 %384) nounwind, !dbg !2922
  %cmp143.i.i = icmp eq i32 %call142.i.i, 0, !dbg !2922
  br i1 %cmp143.i.i, label %if.end145.i.i, label %failed.i.i, !dbg !2922

if.end145.i.i:                                    ; preds = %if.then130.i.i
  %385 = load %struct.ngx_hash_t** %hash135.i.i, align 4, !dbg !2923, !tbaa !2247
  %386 = bitcast %struct.ngx_hash_t* %385 to %struct.ngx_hash_wildcard_t*, !dbg !2923
  %wc_tail.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 3, !dbg !2923
  store %struct.ngx_hash_wildcard_t* %386, %struct.ngx_hash_wildcard_t** %wc_tail.i.i, align 4, !dbg !2923, !tbaa !2247
  br label %if.end147.i.i, !dbg !2924

if.end147.i.i:                                    ; preds = %if.end145.i.i, %if.end127.i.i
  %387 = load %struct.ngx_pool_s** %temp_pool.i.i, align 4, !dbg !2925, !tbaa !2247
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %387) nounwind, !dbg !2925
  %cmp151.i.i = icmp eq i32 %regex.0.lcssa.i.i, 0, !dbg !2926
  br i1 %cmp151.i.i, label %for.inc.i401, label %if.end153.i.i, !dbg !2926

if.end153.i.i:                                    ; preds = %if.end147.i.i
  %nregex.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 4, !dbg !2927
  store i32 %regex.0.lcssa.i.i, i32* %nregex.i.i, align 4, !dbg !2927, !tbaa !2269
  %388 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2928, !tbaa !2247
  %389 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %regex.0.lcssa.i.i, i32 16) nounwind, !dbg !2928
  %390 = extractvalue { i32, i1 } %389, 0, !dbg !2928
  %391 = extractvalue { i32, i1 } %389, 1, !dbg !2928
  br i1 %391, label %ioc_bb155.i.i, label %cont156.i.i, !dbg !2928

ioc_bb155.i.i:                                    ; preds = %if.end153.i.i
  %392 = zext i32 %regex.0.lcssa.i.i to i64, !dbg !2928
  call void @__ioc_report_mul_overflow(i32 1140, i32 48, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %392, i64 16, i8 5) nounwind, !dbg !2928
  br label %cont156.i.i, !dbg !2928

cont156.i.i:                                      ; preds = %ioc_bb155.i.i, %if.end153.i.i
  %call157.i.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %388, i32 %390) nounwind, !dbg !2928
  %393 = bitcast i8* %call157.i.i to %struct.ngx_http_server_name_s*, !dbg !2928
  %regex158.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %327, i32 %a.089.i, i32 5, !dbg !2928
  store %struct.ngx_http_server_name_s* %393, %struct.ngx_http_server_name_s** %regex158.i.i, align 4, !dbg !2928, !tbaa !2247
  %cmp160.i.i = icmp eq i8* %call157.i.i, null, !dbg !2929
  br i1 %cmp160.i.i, label %ngx_http_optimize_servers.exit, label %for.cond169.preheader.i.i, !dbg !2929

for.cond169.preheader.i.i:                        ; preds = %cont156.i.i
  %394 = load i32* %nelts18.i, align 4, !dbg !2930, !tbaa !2269
  %cmp172260.i.i = icmp eq i32 %394, 0, !dbg !2930
  br i1 %cmp172260.i.i, label %for.inc.i401, label %for.body173.i.i, !dbg !2930

for.body173.i.i:                                  ; preds = %for.cond169.preheader.i.i, %for.cond169.backedge.i.i
  %i.0262.i.i = phi i32 [ %i.1.lcssa.i.i, %for.cond169.backedge.i.i ], [ 0, %for.cond169.preheader.i.i ]
  %s.1261.i.i = phi i32 [ %414, %for.cond169.backedge.i.i ], [ 0, %for.cond169.preheader.i.i ]
  %arrayidx174.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t** %337, i32 %s.1261.i.i, !dbg !2932
  %395 = load %struct.ngx_http_core_srv_conf_t** %arrayidx174.i.i, align 4, !dbg !2932, !tbaa !2247
  %elts176.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %395, i32 0, i32 0, i32 0, !dbg !2932
  %396 = load i8** %elts176.i.i, align 4, !dbg !2932, !tbaa !2247
  %397 = bitcast i8* %396 to %struct.ngx_http_server_name_s*, !dbg !2932
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_server_name_s* %397}, i64 0, metadata !2902) nounwind, !dbg !2932
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2903) nounwind, !dbg !2934
  %nelts182256.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %395, i32 0, i32 0, i32 1, !dbg !2934
  %398 = load i32* %nelts182256.i.i, align 4, !dbg !2934, !tbaa !2269
  %cmp183257.i.i = icmp eq i32 %398, 0, !dbg !2934
  br i1 %cmp183257.i.i, label %for.inc199.i.i, label %for.body184.i.i, !dbg !2934

for.body184.i.i:                                  ; preds = %for.body173.i.i, %for.cond179.backedge.i.i
  %i.1259.i.i = phi i32 [ %i.2.i.i, %for.cond179.backedge.i.i ], [ %i.0262.i.i, %for.body173.i.i ]
  %n.1258.i.i = phi i32 [ %408, %for.cond179.backedge.i.i ], [ 0, %for.body173.i.i ]
  %arrayidx185.i.i = getelementptr inbounds %struct.ngx_http_server_name_s* %397, i32 %n.1258.i.i, !dbg !2936
  %regex186.i.i = getelementptr inbounds %struct.ngx_http_server_name_s* %arrayidx185.i.i, i32 0, i32 0, !dbg !2936
  %399 = load %struct.ngx_http_regex_t** %regex186.i.i, align 4, !dbg !2936, !tbaa !2247
  %tobool187.i.i = icmp eq %struct.ngx_http_regex_t* %399, null, !dbg !2936
  br i1 %tobool187.i.i, label %for.inc195.i.i, label %if.then188.i.i, !dbg !2936

if.then188.i.i:                                   ; preds = %for.body184.i.i
  %400 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.1259.i.i, i32 1) nounwind, !dbg !2938
  %401 = extractvalue { i32, i1 } %400, 0, !dbg !2938
  %402 = extractvalue { i32, i1 } %400, 1, !dbg !2938
  br i1 %402, label %ioc_bb189.i.i, label %cont190.i.i, !dbg !2938

ioc_bb189.i.i:                                    ; preds = %if.then188.i.i
  %403 = zext i32 %i.1259.i.i to i64, !dbg !2938
  call void @__ioc_report_add_overflow(i32 1149, i32 24, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %403, i64 1, i8 5) nounwind, !dbg !2938
  br label %cont190.i.i, !dbg !2938

cont190.i.i:                                      ; preds = %if.then188.i.i, %ioc_bb189.i.i
  call void @llvm.dbg.value(metadata !{i32 %401}, i64 0, metadata !2940) nounwind, !dbg !2938
  %404 = load %struct.ngx_http_server_name_s** %regex158.i.i, align 4, !dbg !2938, !tbaa !2247
  %arrayidx192.i.i = getelementptr inbounds %struct.ngx_http_server_name_s* %404, i32 %i.1259.i.i, !dbg !2938
  %405 = bitcast %struct.ngx_http_server_name_s* %arrayidx192.i.i to i8*, !dbg !2938
  %406 = bitcast %struct.ngx_http_server_name_s* %arrayidx185.i.i to i8*, !dbg !2938
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %405, i8* %406, i32 16, i32 4, i1 false) nounwind, !dbg !2938, !tbaa.struct !2941
  br label %for.inc195.i.i, !dbg !2942

for.inc195.i.i:                                   ; preds = %cont190.i.i, %for.body184.i.i
  %i.2.i.i = phi i32 [ %401, %cont190.i.i ], [ %i.1259.i.i, %for.body184.i.i ]
  %407 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.1258.i.i, i32 1) nounwind, !dbg !2934
  %408 = extractvalue { i32, i1 } %407, 0, !dbg !2934
  %409 = extractvalue { i32, i1 } %407, 1, !dbg !2934
  br i1 %409, label %ioc_bb196.i.i, label %for.cond179.backedge.i.i, !dbg !2934

for.cond179.backedge.i.i:                         ; preds = %for.inc195.i.i, %ioc_bb196.i.i
  %410 = load %struct.ngx_http_core_srv_conf_t** %arrayidx174.i.i, align 4, !dbg !2934, !tbaa !2247
  %nelts182.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %410, i32 0, i32 0, i32 1, !dbg !2934
  %411 = load i32* %nelts182.i.i, align 4, !dbg !2934, !tbaa !2269
  %cmp183.i.i = icmp ult i32 %408, %411, !dbg !2934
  br i1 %cmp183.i.i, label %for.body184.i.i, label %for.inc199.i.i, !dbg !2934

ioc_bb196.i.i:                                    ; preds = %for.inc195.i.i
  %412 = zext i32 %n.1258.i.i to i64, !dbg !2934
  call void @__ioc_report_add_overflow(i32 1147, i32 54, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %412, i64 1, i8 5) nounwind, !dbg !2934
  br label %for.cond179.backedge.i.i, !dbg !2934

for.inc199.i.i:                                   ; preds = %for.cond179.backedge.i.i, %for.body173.i.i
  %i.1.lcssa.i.i = phi i32 [ %i.0262.i.i, %for.body173.i.i ], [ %i.2.i.i, %for.cond179.backedge.i.i ]
  %413 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %s.1261.i.i, i32 1) nounwind, !dbg !2930
  %414 = extractvalue { i32, i1 } %413, 0, !dbg !2930
  %415 = extractvalue { i32, i1 } %413, 1, !dbg !2930
  br i1 %415, label %ioc_bb200.i.i, label %for.cond169.backedge.i.i, !dbg !2930

for.cond169.backedge.i.i:                         ; preds = %for.inc199.i.i, %ioc_bb200.i.i
  %416 = load i32* %nelts18.i, align 4, !dbg !2930, !tbaa !2269
  %cmp172.i.i = icmp ult i32 %414, %416, !dbg !2930
  br i1 %cmp172.i.i, label %for.body173.i.i, label %for.inc.i401, !dbg !2930

ioc_bb200.i.i:                                    ; preds = %for.inc199.i.i
  %417 = zext i32 %s.1261.i.i to i64, !dbg !2930
  call void @__ioc_report_add_overflow(i32 1145, i32 43, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %417, i64 1, i8 5) nounwind, !dbg !2930
  br label %for.cond169.backedge.i.i, !dbg !2930

failed.i.i:                                       ; preds = %if.then130.i.i, %if.then110.i.i, %if.then95.i.i, %if.end.i.i
  %418 = load %struct.ngx_pool_s** %temp_pool.i.i, align 4, !dbg !2943, !tbaa !2247
  call void @ngx_destroy_pool(%struct.ngx_pool_s* %418) nounwind, !dbg !2943
  br label %ngx_http_optimize_servers.exit, !dbg !2944

for.inc.i401:                                     ; preds = %for.cond169.backedge.i.i, %for.cond169.preheader.i.i, %if.end147.i.i, %cont24.i
  %419 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %a.089.i, i32 1) nounwind, !dbg !2880
  %420 = extractvalue { i32, i1 } %419, 0, !dbg !2880
  %421 = extractvalue { i32, i1 } %419, 1, !dbg !2880
  br i1 %421, label %ioc_bb33.i, label %for.cond11.backedge.i, !dbg !2880

for.cond11.backedge.i:                            ; preds = %for.inc.i401, %ioc_bb33.i
  %422 = load i32* %nelts5.i, align 4, !dbg !2880, !tbaa !2269
  %cmp15.i = icmp ult i32 %420, %422, !dbg !2880
  br i1 %cmp15.i, label %for.body16.i, label %for.cond11.for.end_crit_edge.i, !dbg !2880

ioc_bb33.i:                                       ; preds = %for.inc.i401
  %423 = zext i32 %a.089.i to i64, !dbg !2880
  call void @__ioc_report_add_overflow(i32 1039, i32 43, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %423, i64 1, i8 5) nounwind, !dbg !2880
  br label %for.cond11.backedge.i, !dbg !2880

for.cond11.for.end_crit_edge.i:                   ; preds = %for.cond11.backedge.i
  %.pre.i402 = load i8** %elts2.i, align 4, !dbg !2945, !tbaa !2247
  br label %for.end.i403, !dbg !2880

for.end.i403:                                     ; preds = %for.cond11.for.end_crit_edge.i, %for.body.i396
  %424 = phi i32 [ 0, %for.body.i396 ], [ %422, %for.cond11.for.end_crit_edge.i ]
  %425 = phi i8* [ %326, %for.body.i396 ], [ %.pre.i402, %for.cond11.for.end_crit_edge.i ]
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2947) nounwind, !dbg !2948
  %426 = bitcast i8* %425 to %struct.ngx_http_conf_addr_t*, !dbg !2945
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_addr_t* %426}, i64 0, metadata !2949) nounwind, !dbg !2945
  call void @llvm.dbg.value(metadata !{i32 %424}, i64 0, metadata !2950) nounwind, !dbg !2951
  %427 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %424, i32 1) nounwind, !dbg !2952
  %428 = extractvalue { i32, i1 } %427, 0, !dbg !2952
  %429 = extractvalue { i32, i1 } %427, 1, !dbg !2952
  %430 = zext i32 %424 to i64, !dbg !2952
  br i1 %429, label %ioc_bb2.i.i, label %cont3.i.i, !dbg !2952

ioc_bb2.i.i:                                      ; preds = %for.end.i403
  call void @__ioc_report_sub_overflow(i32 1211, i32 17, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %430, i64 1, i8 5) nounwind, !dbg !2952
  br label %cont3.i.i, !dbg !2952

cont3.i.i:                                        ; preds = %ioc_bb2.i.i, %for.end.i403
  %431 = getelementptr %struct.ngx_http_conf_addr_t* %426, i32 %428, i32 0, i32 2, !dbg !2952
  %432 = bitcast i8* %431 to i32*, !dbg !2952
  %433 = load i32* %432, align 4, !dbg !2952
  %bf.clear.i.i = and i32 %433, 8, !dbg !2952
  %tobool.i67.i = icmp eq i32 %bf.clear.i.i, 0, !dbg !2952
  br i1 %tobool.i67.i, label %cont18.i.i, label %cont7.i.i, !dbg !2952

cont7.i.i:                                        ; preds = %cont3.i.i
  br i1 %429, label %ioc_bb8.i.i, label %cont9.i.i, !dbg !2953

ioc_bb8.i.i:                                      ; preds = %cont7.i.i
  call void @__ioc_report_sub_overflow(i32 1212, i32 15, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %430, i64 1, i8 5) nounwind, !dbg !2953
  %.pre.i.i = load i32* %432, align 4, !dbg !2953
  br label %cont9.i.i, !dbg !2953

cont9.i.i:                                        ; preds = %ioc_bb8.i.i, %cont7.i.i
  %434 = phi i32 [ %433, %cont7.i.i ], [ %.pre.i.i, %ioc_bb8.i.i ]
  %435 = or i32 %434, 4, !dbg !2953
  store i32 %435, i32* %432, align 4, !dbg !2953
  call void @llvm.dbg.value(metadata !2338, i64 0, metadata !2955) nounwind, !dbg !2956
  br label %cont18.i.i, !dbg !2957

cont18.i.i:                                       ; preds = %cont9.i.i, %cont3.i.i
  %bind_wildcard.0.i.i = phi i32 [ 1, %cont9.i.i ], [ 0, %cont3.i.i ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2958) nounwind, !dbg !2959
  %cmp97100.i.i = icmp eq i32 %424, 0, !dbg !2960
  br i1 %cmp97100.i.i, label %for.inc42.i, label %while.body.lr.ph.lr.ph.i.i, !dbg !2960

while.body.lr.ph.lr.ph.i.i:                       ; preds = %cont18.i.i
  %tobool19.i.i = icmp eq i32 %bind_wildcard.0.i.i, 0, !dbg !2961
  br label %while.body.lr.ph.i.i, !dbg !2960

while.body.lr.ph.i.i:                             ; preds = %while.cond.outer.backedge.i.i, %while.body.lr.ph.lr.ph.i.i
  %addr.0.ph103.i.i = phi %struct.ngx_http_conf_addr_t* [ %426, %while.body.lr.ph.lr.ph.i.i ], [ %incdec.ptr.i.i, %while.cond.outer.backedge.i.i ]
  %i.0.ph102.i.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i.i ], [ %i.0..i.i, %while.cond.outer.backedge.i.i ]
  %last.0.ph101.i.i = phi i32 [ %424, %while.body.lr.ph.lr.ph.i.i ], [ %478, %while.cond.outer.backedge.i.i ]
  br label %while.body.i.i, !dbg !2960

while.body.i.i:                                   ; preds = %while.cond.backedge.i.i, %while.body.lr.ph.i.i
  %i.098.i.i = phi i32 [ %i.0.ph102.i.i, %while.body.lr.ph.i.i ], [ %440, %while.cond.backedge.i.i ]
  br i1 %tobool19.i.i, label %if.end28.i.i, label %land.lhs.true.i.i, !dbg !2961

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %436 = getelementptr %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 2, !dbg !2961
  %437 = bitcast i8* %436 to i32*, !dbg !2961
  %438 = load i32* %437, align 4, !dbg !2961
  %bf.clear23.i.i = and i32 %438, 4, !dbg !2961
  %tobool24.i.i = icmp eq i32 %bf.clear23.i.i, 0, !dbg !2961
  br i1 %tobool24.i.i, label %if.then25.i.i, label %if.end28.i.i, !dbg !2961

if.then25.i.i:                                    ; preds = %land.lhs.true.i.i
  %439 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.098.i.i, i32 1) nounwind, !dbg !2963
  %440 = extractvalue { i32, i1 } %439, 0, !dbg !2963
  %441 = extractvalue { i32, i1 } %439, 1, !dbg !2963
  br i1 %441, label %ioc_bb26.i.i, label %while.cond.backedge.i.i, !dbg !2963

while.cond.backedge.i.i:                          ; preds = %ioc_bb26.i.i, %if.then25.i.i
  %cmp.i69.i = icmp ult i32 %440, %last.0.ph101.i.i, !dbg !2960
  br i1 %cmp.i69.i, label %while.body.i.i, label %for.inc42.i, !dbg !2960

ioc_bb26.i.i:                                     ; preds = %if.then25.i.i
  %442 = zext i32 %i.098.i.i to i64, !dbg !2963
  call void @__ioc_report_add_overflow(i32 1221, i32 8, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %442, i64 1, i8 5) nounwind, !dbg !2963
  br label %while.cond.backedge.i.i, !dbg !2963

if.end28.i.i:                                     ; preds = %land.lhs.true.i.i, %while.body.i.i
  %arrayidx29.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, !dbg !2965
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2966) nounwind, !dbg !2967
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_addr_t* %arrayidx29.i.i}, i64 0, metadata !2968) nounwind, !dbg !2967
  %443 = bitcast %struct.ngx_http_conf_addr_t* %arrayidx29.i.i to i8*, !dbg !2969
  %socklen.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 1, !dbg !2969
  %444 = load i32* %socklen.i.i.i, align 4, !dbg !2969, !tbaa !2269
  %call.i.i.i = call %struct.ngx_listening_s* @ngx_create_listening(%struct.ngx_conf_s* %cf, i8* %443, i32 %444) nounwind, !dbg !2969
  call void @llvm.dbg.value(metadata !{%struct.ngx_listening_s* %call.i.i.i}, i64 0, metadata !2970) nounwind, !dbg !2969
  %cmp.i.i.i = icmp eq %struct.ngx_listening_s* %call.i.i.i, null, !dbg !2971
  br i1 %cmp.i.i.i, label %ngx_http_optimize_servers.exit, label %if.end34.i.i, !dbg !2971

if.end34.i.i:                                     ; preds = %if.end28.i.i
  %445 = getelementptr %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 21, !dbg !2972
  %446 = bitcast i8* %445 to i32*, !dbg !2972
  %447 = load i32* %446, align 4, !dbg !2972
  %448 = or i32 %447, 512, !dbg !2972
  store i32 %448, i32* %446, align 4, !dbg !2972
  %handler.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 12, !dbg !2973
  store void (%struct.ngx_connection_s*)* @ngx_http_init_connection, void (%struct.ngx_connection_s*)** %handler.i.i.i, align 4, !dbg !2973, !tbaa !2247
  %default_server.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 6, !dbg !2974
  %449 = load %struct.ngx_http_core_srv_conf_t** %default_server.i.i.i, align 4, !dbg !2974, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t* %449}, i64 0, metadata !2975) nounwind, !dbg !2974
  %connection_pool_size.i.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %449, i32 0, i32 3, !dbg !2976
  %450 = load i32* %connection_pool_size.i.i.i, align 4, !dbg !2976, !tbaa !2269
  %pool_size.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 16, !dbg !2976
  store i32 %450, i32* %pool_size.i.i.i, align 4, !dbg !2976, !tbaa !2269
  %client_header_timeout.i.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %449, i32 0, i32 7, !dbg !2977
  %451 = load i32* %client_header_timeout.i.i.i, align 4, !dbg !2977, !tbaa !2269
  %post_accept_timeout.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 18, !dbg !2977
  store i32 %451, i32* %post_accept_timeout.i.i.i, align 4, !dbg !2977, !tbaa !2269
  %452 = load i32* getelementptr inbounds (%struct.ngx_module_s* @ngx_http_core_module, i32 0, i32 0), align 4, !dbg !2978, !tbaa !2269
  %ctx.i.i.i = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %449, i32 0, i32 1, !dbg !2978
  %453 = load %struct.ngx_http_conf_ctx_t** %ctx.i.i.i, align 4, !dbg !2978, !tbaa !2247
  %loc_conf.i.i.i = getelementptr inbounds %struct.ngx_http_conf_ctx_t* %453, i32 0, i32 2, !dbg !2978
  %454 = load i8*** %loc_conf.i.i.i, align 4, !dbg !2978, !tbaa !2247
  %arrayidx.i.i.i = getelementptr inbounds i8** %454, i32 %452, !dbg !2978
  %455 = load i8** %arrayidx.i.i.i, align 4, !dbg !2978, !tbaa !2247
  %error_log.i.i.i = getelementptr inbounds i8* %455, i32 316, !dbg !2979
  %456 = bitcast i8* %error_log.i.i.i to %struct.ngx_log_s**, !dbg !2979
  %457 = load %struct.ngx_log_s** %456, align 4, !dbg !2979, !tbaa !2247
  %logp.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 15, !dbg !2979
  store %struct.ngx_log_s* %457, %struct.ngx_log_s** %logp.i.i.i, align 4, !dbg !2979, !tbaa !2247
  %addr_text.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 4, !dbg !2980
  %458 = bitcast %struct.ngx_str_t* %addr_text.i.i.i to i8*, !dbg !2980
  %data.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 14, i32 4, !dbg !2980
  store i8* %458, i8** %data.i.i.i, align 4, !dbg !2980, !tbaa !2247
  %handler3.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 14, i32 3, !dbg !2981
  store i8* (%struct.ngx_log_s*, i8*, i32)* @ngx_accept_log_error, i8* (%struct.ngx_log_s*, i8*, i32)** %handler3.i.i.i, align 4, !dbg !2981, !tbaa !2247
  %backlog.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 3, !dbg !2982
  %459 = load i32* %backlog.i.i.i, align 4, !dbg !2982, !tbaa !2269
  %backlog5.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 6, !dbg !2982
  store i32 %459, i32* %backlog5.i.i.i, align 4, !dbg !2982, !tbaa !2269
  %rcvbuf.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 4, !dbg !2983
  %460 = load i32* %rcvbuf.i.i.i, align 4, !dbg !2983, !tbaa !2269
  %rcvbuf7.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 7, !dbg !2983
  store i32 %460, i32* %rcvbuf7.i.i.i, align 4, !dbg !2983, !tbaa !2269
  %sndbuf.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 5, !dbg !2984
  %461 = load i32* %sndbuf.i.i.i, align 4, !dbg !2984, !tbaa !2269
  %sndbuf9.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 8, !dbg !2984
  store i32 %461, i32* %sndbuf9.i.i.i, align 4, !dbg !2984, !tbaa !2269
  %462 = getelementptr %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 2, !dbg !2985
  %463 = bitcast i8* %462 to i32*, !dbg !2985
  %464 = load i32* %463, align 4, !dbg !2985
  %465 = lshr i32 %464, 4, !dbg !2985
  %bf.clear.i.i.i = shl i32 %465, 10, !dbg !2985
  %466 = and i32 %bf.clear.i.i.i, 3072, !dbg !2985
  %467 = and i32 %448, -3073, !dbg !2985
  %468 = or i32 %466, %467, !dbg !2985
  store i32 %468, i32* %446, align 4, !dbg !2985
  %tcp_keepidle.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 6, !dbg !2986
  %469 = load i32* %tcp_keepidle.i.i.i, align 4, !dbg !2986, !tbaa !2269
  %keepidle.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 9, !dbg !2986
  store i32 %469, i32* %keepidle.i.i.i, align 4, !dbg !2986, !tbaa !2269
  %tcp_keepintvl.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 7, !dbg !2987
  %470 = load i32* %tcp_keepintvl.i.i.i, align 4, !dbg !2987, !tbaa !2269
  %keepintvl.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 10, !dbg !2987
  store i32 %470, i32* %keepintvl.i.i.i, align 4, !dbg !2987, !tbaa !2269
  %tcp_keepcnt.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 8, !dbg !2988
  %471 = load i32* %tcp_keepcnt.i.i.i, align 4, !dbg !2988, !tbaa !2269
  %keepcnt.i.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 11, !dbg !2988
  store i32 %471, i32* %keepcnt.i.i.i, align 4, !dbg !2988, !tbaa !2269
  %deferred_accept.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.098.i.i, i32 0, i32 9, !dbg !2989
  %472 = load i32* %deferred_accept.i.i.i, align 4, !dbg !2989, !tbaa !2269
  %bf.value17.i.i.i = shl i32 %472, 12, !dbg !2989
  %473 = and i32 %bf.value17.i.i.i, 4096, !dbg !2989
  %474 = and i32 %468, -4097, !dbg !2989
  %475 = or i32 %473, %474, !dbg !2989
  store i32 %475, i32* %446, align 4, !dbg !2989
  call void @llvm.dbg.value(metadata !{%struct.ngx_listening_s* %call.i.i.i}, i64 0, metadata !2990) nounwind, !dbg !2965
  %476 = load %struct.ngx_pool_s** %pool, align 4, !dbg !2991, !tbaa !2247
  %call35.i.i = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %476, i32 8) nounwind, !dbg !2991
  %cmp36.i.i = icmp eq i8* %call35.i.i, null, !dbg !2992
  br i1 %cmp36.i.i, label %ngx_http_optimize_servers.exit, label %if.end40.i.i, !dbg !2992

if.end40.i.i:                                     ; preds = %if.end34.i.i
  %servers.i.i = getelementptr inbounds %struct.ngx_listening_s* %call.i.i.i, i32 0, i32 13, !dbg !2993
  store i8* %call35.i.i, i8** %servers.i.i, align 4, !dbg !2993, !tbaa !2247
  %477 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %last.0.ph101.i.i, i32 1) nounwind, !dbg !2994
  %478 = extractvalue { i32, i1 } %477, 0, !dbg !2994
  %479 = extractvalue { i32, i1 } %477, 1, !dbg !2994
  %480 = zext i32 %last.0.ph101.i.i to i64, !dbg !2994
  br i1 %479, label %ioc_bb43.i.i, label %cont44.i.i, !dbg !2994

ioc_bb43.i.i:                                     ; preds = %if.end40.i.i
  call void @__ioc_report_sub_overflow(i32 1233, i32 19, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %480, i64 1, i8 5) nounwind, !dbg !2994
  br label %cont44.i.i, !dbg !2994

cont44.i.i:                                       ; preds = %ioc_bb43.i.i, %if.end40.i.i
  %cmp45.i.i = icmp eq i32 %i.098.i.i, %478, !dbg !2994
  %naddrs.i.i = getelementptr inbounds i8* %call35.i.i, i32 4, !dbg !2995
  %481 = bitcast i8* %naddrs.i.i to i32*, !dbg !2995
  %last.0..i.i = select i1 %cmp45.i.i, i32 %last.0.ph101.i.i, i32 1, !dbg !2997
  %i.0..i.i = select i1 %cmp45.i.i, i32 %i.098.i.i, i32 0, !dbg !2997
  store i32 %last.0..i.i, i32* %481, align 4, !dbg !2995
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2998) nounwind, !dbg !3002
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i}, i64 0, metadata !3003) nounwind, !dbg !3002
  %482 = load %struct.ngx_pool_s** %pool, align 4, !dbg !3004, !tbaa !2247
  %483 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %last.0..i.i, i32 12) nounwind, !dbg !3004
  %484 = extractvalue { i32, i1 } %483, 0, !dbg !3004
  %485 = extractvalue { i32, i1 } %483, 1, !dbg !3004
  br i1 %485, label %ioc_bb.i.i.i, label %cont.i87.i.i, !dbg !3004

ioc_bb.i.i.i:                                     ; preds = %cont44.i.i
  %486 = zext i32 %last.0..i.i to i64, !dbg !3004
  call void @__ioc_report_mul_overflow(i32 1305, i32 59, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %486, i64 12, i8 5) nounwind, !dbg !3004
  br label %cont.i87.i.i, !dbg !3004

cont.i87.i.i:                                     ; preds = %ioc_bb.i.i.i, %cont44.i.i
  %call.i85.i.i = call i8* @ngx_pcalloc(%struct.ngx_pool_s* %482, i32 %484) nounwind, !dbg !3004
  %addrs1.i.i.i = bitcast i8* %call35.i.i to i8**, !dbg !3004
  store i8* %call.i85.i.i, i8** %addrs1.i.i.i, align 4, !dbg !3004, !tbaa !2247
  %cmp.i86.i.i = icmp eq i8* %call.i85.i.i, null, !dbg !3005
  br i1 %cmp.i86.i.i, label %ngx_http_optimize_servers.exit, label %if.end.i.i.i, !dbg !3005

if.end.i.i.i:                                     ; preds = %cont.i87.i.i
  %487 = bitcast i8* %call.i85.i.i to %struct.ngx_http_in_addr_t*, !dbg !3006
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_in_addr_t* %487}, i64 0, metadata !3007) nounwind, !dbg !3006
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !3008) nounwind, !dbg !3009
  %488 = load i32* %481, align 4, !dbg !3009, !tbaa !2269
  %cmp9109.i.i.i = icmp eq i32 %488, 0, !dbg !3009
  br i1 %cmp9109.i.i.i, label %sw.epilog.i.i, label %for.body.i.i.i, !dbg !3009

for.body.i.i.i:                                   ; preds = %if.end.i.i.i, %for.cond.backedge.i.i.i
  %i.0110.i.i.i = phi i32 [ %511, %for.cond.backedge.i.i.i ], [ 0, %if.end.i.i.i ]
  %s_addr.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 0, i32 0, i32 0, i32 2, i32 0, !dbg !3011
  %489 = load i32* %s_addr.i.i.i, align 4, !dbg !3011, !tbaa !2269
  %addr11.i.i.i = getelementptr inbounds %struct.ngx_http_in_addr_t* %487, i32 %i.0110.i.i.i, i32 0, !dbg !3011
  store i32 %489, i32* %addr11.i.i.i, align 4, !dbg !3011, !tbaa !2269
  %default_server.i88.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 6, !dbg !3013
  %490 = load %struct.ngx_http_core_srv_conf_t** %default_server.i88.i.i, align 4, !dbg !3013, !tbaa !2247
  %default_server14.i.i.i = getelementptr inbounds %struct.ngx_http_in_addr_t* %487, i32 %i.0110.i.i.i, i32 1, i32 0, !dbg !3013
  store %struct.ngx_http_core_srv_conf_t* %490, %struct.ngx_http_core_srv_conf_t** %default_server14.i.i.i, align 4, !dbg !3013, !tbaa !2247
  %hash.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 1, !dbg !3014
  %buckets.i.i.i = getelementptr inbounds %struct.ngx_hash_t* %hash.i.i.i, i32 0, i32 0, !dbg !3014
  %491 = load %struct.ngx_hash_elt_t*** %buckets.i.i.i, align 4, !dbg !3014, !tbaa !2247
  %cmp16.i.i.i = icmp eq %struct.ngx_hash_elt_t** %491, null, !dbg !3014
  br i1 %cmp16.i.i.i, label %land.lhs.true.i.i.i, label %if.end39.i.i.i, !dbg !3014

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  %wc_head.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 2, !dbg !3014
  %492 = load %struct.ngx_hash_wildcard_t** %wc_head.i.i.i, align 4, !dbg !3014, !tbaa !2247
  %cmp18.i.i.i = icmp eq %struct.ngx_hash_wildcard_t* %492, null, !dbg !3014
  br i1 %cmp18.i.i.i, label %land.lhs.true24.i.i.i, label %lor.lhs.false.i.i.i, !dbg !3014

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true.i.i.i
  %buckets22.i.i.i = getelementptr inbounds %struct.ngx_hash_wildcard_t* %492, i32 0, i32 0, i32 0, !dbg !3014
  %493 = load %struct.ngx_hash_elt_t*** %buckets22.i.i.i, align 4, !dbg !3014, !tbaa !2247
  %cmp23.i.i.i = icmp eq %struct.ngx_hash_elt_t** %493, null, !dbg !3014
  br i1 %cmp23.i.i.i, label %land.lhs.true24.i.i.i, label %if.end39.i.i.i, !dbg !3014

land.lhs.true24.i.i.i:                            ; preds = %lor.lhs.false.i.i.i, %land.lhs.true.i.i.i
  %wc_tail.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 3, !dbg !3014
  %494 = load %struct.ngx_hash_wildcard_t** %wc_tail.i.i.i, align 4, !dbg !3014, !tbaa !2247
  %cmp26.i.i.i = icmp eq %struct.ngx_hash_wildcard_t* %494, null, !dbg !3014
  br i1 %cmp26.i.i.i, label %cont36.i.i.i, label %lor.lhs.false27.i.i.i, !dbg !3014

lor.lhs.false27.i.i.i:                            ; preds = %land.lhs.true24.i.i.i
  %buckets31.i.i.i = getelementptr inbounds %struct.ngx_hash_wildcard_t* %494, i32 0, i32 0, i32 0, !dbg !3014
  %495 = load %struct.ngx_hash_elt_t*** %buckets31.i.i.i, align 4, !dbg !3014, !tbaa !2247
  %cmp32.i.i.i = icmp eq %struct.ngx_hash_elt_t** %495, null, !dbg !3014
  br i1 %cmp32.i.i.i, label %cont36.i.i.i, label %if.end39.i.i.i, !dbg !3014

cont36.i.i.i:                                     ; preds = %lor.lhs.false27.i.i.i, %land.lhs.true24.i.i.i
  %nregex.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 4, !dbg !3014
  %496 = load i32* %nregex.i.i.i, align 4, !dbg !3014, !tbaa !2269
  %cmp37.i.i.i = icmp eq i32 %496, 0, !dbg !3014
  br i1 %cmp37.i.i.i, label %for.inc.i.i.i, label %if.end39.i.i.i, !dbg !3014

if.end39.i.i.i:                                   ; preds = %cont36.i.i.i, %lor.lhs.false27.i.i.i, %lor.lhs.false.i.i.i, %for.body.i.i.i
  %497 = load %struct.ngx_pool_s** %pool, align 4, !dbg !3015, !tbaa !2247
  %call41.i.i.i = call i8* @ngx_palloc(%struct.ngx_pool_s* %497, i32 24) nounwind, !dbg !3015
  %cmp42.i.i.i = icmp eq i8* %call41.i.i.i, null, !dbg !3016
  br i1 %cmp42.i.i.i, label %ngx_http_optimize_servers.exit, label %if.end46.i.i.i, !dbg !3016

if.end46.i.i.i:                                   ; preds = %if.end39.i.i.i
  %498 = bitcast i8* %call41.i.i.i to %struct.ngx_http_virtual_names_t*, !dbg !3015
  %virtual_names.i.i.i = getelementptr inbounds %struct.ngx_http_in_addr_t* %487, i32 %i.0110.i.i.i, i32 1, i32 1, !dbg !3017
  store %struct.ngx_http_virtual_names_t* %498, %struct.ngx_http_virtual_names_t** %virtual_names.i.i.i, align 4, !dbg !3017, !tbaa !2247
  %499 = bitcast %struct.ngx_hash_t* %hash.i.i.i to i64*, !dbg !3018
  %500 = bitcast i8* %call41.i.i.i to i64*, !dbg !3018
  %501 = load i64* %499, align 4, !dbg !3018
  store i64 %501, i64* %500, align 4, !dbg !3018
  %wc_head53.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 2, !dbg !3019
  %502 = load %struct.ngx_hash_wildcard_t** %wc_head53.i.i.i, align 4, !dbg !3019, !tbaa !2247
  %wc_head55.i.i.i = getelementptr inbounds i8* %call41.i.i.i, i32 8, !dbg !3019
  %503 = bitcast i8* %wc_head55.i.i.i to %struct.ngx_hash_wildcard_t**, !dbg !3019
  store %struct.ngx_hash_wildcard_t* %502, %struct.ngx_hash_wildcard_t** %503, align 4, !dbg !3019, !tbaa !2247
  %wc_tail57.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 3, !dbg !3020
  %504 = load %struct.ngx_hash_wildcard_t** %wc_tail57.i.i.i, align 4, !dbg !3020, !tbaa !2247
  %wc_tail59.i.i.i = getelementptr inbounds i8* %call41.i.i.i, i32 12, !dbg !3020
  %505 = bitcast i8* %wc_tail59.i.i.i to %struct.ngx_hash_wildcard_t**, !dbg !3020
  store %struct.ngx_hash_wildcard_t* %504, %struct.ngx_hash_wildcard_t** %505, align 4, !dbg !3020, !tbaa !2247
  %nregex61.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 4, !dbg !3021
  %506 = load i32* %nregex61.i.i.i, align 4, !dbg !3021, !tbaa !2269
  %nregex62.i.i.i = getelementptr inbounds i8* %call41.i.i.i, i32 16, !dbg !3021
  %507 = bitcast i8* %nregex62.i.i.i to i32*, !dbg !3021
  store i32 %506, i32* %507, align 4, !dbg !3021, !tbaa !2269
  %regex.i.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 %i.0110.i.i.i, i32 5, !dbg !3022
  %508 = load %struct.ngx_http_server_name_s** %regex.i.i.i, align 4, !dbg !3022, !tbaa !2247
  %regex64.i.i.i = getelementptr inbounds i8* %call41.i.i.i, i32 20, !dbg !3022
  %509 = bitcast i8* %regex64.i.i.i to %struct.ngx_http_server_name_s**, !dbg !3022
  store %struct.ngx_http_server_name_s* %508, %struct.ngx_http_server_name_s** %509, align 4, !dbg !3022, !tbaa !2247
  br label %for.inc.i.i.i, !dbg !3023

for.inc.i.i.i:                                    ; preds = %if.end46.i.i.i, %cont36.i.i.i
  %510 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.0110.i.i.i, i32 1) nounwind, !dbg !3009
  %511 = extractvalue { i32, i1 } %510, 0, !dbg !3009
  %512 = extractvalue { i32, i1 } %510, 1, !dbg !3009
  br i1 %512, label %ioc_bb65.i.i.i, label %for.cond.backedge.i.i.i, !dbg !3009

for.cond.backedge.i.i.i:                          ; preds = %ioc_bb65.i.i.i, %for.inc.i.i.i
  %513 = load i32* %481, align 4, !dbg !3009, !tbaa !2269
  %cmp9.i.i.i = icmp ult i32 %511, %513, !dbg !3009
  br i1 %cmp9.i.i.i, label %for.body.i.i.i, label %sw.epilog.i.i, !dbg !3009

ioc_bb65.i.i.i:                                   ; preds = %for.inc.i.i.i
  %514 = zext i32 %i.0110.i.i.i to i64, !dbg !3009
  call void @__ioc_report_add_overflow(i32 1310, i32 37, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %514, i64 1, i8 5) nounwind, !dbg !3009
  br label %for.cond.backedge.i.i.i, !dbg !3009

sw.epilog.i.i:                                    ; preds = %for.cond.backedge.i.i.i, %if.end.i.i.i
  %incdec.ptr.i.i = getelementptr inbounds %struct.ngx_http_conf_addr_t* %addr.0.ph103.i.i, i32 1, !dbg !3024
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_conf_addr_t* %incdec.ptr.i.i}, i64 0, metadata !2949) nounwind, !dbg !3024
  br i1 %479, label %ioc_bb61.i.i, label %while.cond.outer.backedge.i.i, !dbg !3025

while.cond.outer.backedge.i.i:                    ; preds = %ioc_bb61.i.i, %sw.epilog.i.i
  %cmp97.i.i = icmp ult i32 %i.0..i.i, %478, !dbg !2960
  br i1 %cmp97.i.i, label %while.body.lr.ph.i.i, label %for.inc42.i, !dbg !2960

ioc_bb61.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__ioc_report_sub_overflow(i32 1253, i32 9, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @4, i32 0, i32 0), i64 %480, i64 1, i8 5) nounwind, !dbg !3025
  br label %while.cond.outer.backedge.i.i, !dbg !3025

for.inc42.i:                                      ; preds = %while.cond.outer.backedge.i.i, %while.cond.backedge.i.i, %cont18.i.i
  %515 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %p.097.i, i32 1) nounwind, !dbg !2850
  %516 = extractvalue { i32, i1 } %515, 0, !dbg !2850
  %517 = extractvalue { i32, i1 } %515, 1, !dbg !2850
  br i1 %517, label %ioc_bb43.i405, label %for.cond.backedge.i404, !dbg !2850

for.cond.backedge.i404:                           ; preds = %ioc_bb43.i405, %for.inc42.i
  %518 = load i32* %nelts.i393, align 4, !dbg !2850, !tbaa !2269
  %cmp1.i = icmp ult i32 %516, %518, !dbg !2850
  br i1 %cmp1.i, label %for.body.i396, label %ngx_http_optimize_servers.exit, !dbg !2850

ioc_bb43.i405:                                    ; preds = %for.inc42.i
  %519 = zext i32 %p.097.i to i64, !dbg !2850
  call void @__ioc_report_add_overflow(i32 1032, i32 36, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %519, i64 1, i8 5) nounwind, !dbg !2850
  br label %for.cond.backedge.i404, !dbg !2850

ngx_http_optimize_servers.exit:                   ; preds = %if.then64, %if.then78, %if.then92, %if.then126, %for.body189, %if.end200, %for.body.i373, %if.then239, %for.cond.backedge.i404, %if.end28.i.i, %if.end34.i.i, %cont.i87.i.i, %if.end39.i.i.i, %if.then25.i, %cont156.i.i, %if.end31.i.i, %failed, %entry, %cont18, %cont28, %cont38, %for.end251, %cont56.i, %cont44.i, %cont32.i, %cont20.i, %cont8.i, %for.end210, %cont46.i, %if.end216, %ngx_http_init_phases.exit, %ngx_http_init_headers_in_hash.exit, %if.end263, %if.end.i394, %cont51.i.i, %cont55.i.i, %failed.i.i
  %retval.0.i406 = phi i8* [ null, %if.end263 ], [ inttoptr (i32 -1 to i8*), %failed.i.i ], [ inttoptr (i32 -1 to i8*), %cont55.i.i ], [ inttoptr (i32 -1 to i8*), %cont51.i.i ], [ null, %if.end.i394 ], [ %rv.0, %failed ], [ inttoptr (i32 -1 to i8*), %entry ], [ inttoptr (i32 -1 to i8*), %cont18 ], [ inttoptr (i32 -1 to i8*), %cont28 ], [ inttoptr (i32 -1 to i8*), %cont38 ], [ inttoptr (i32 -1 to i8*), %ngx_http_init_phases.exit ], [ inttoptr (i32 -1 to i8*), %ngx_http_init_headers_in_hash.exit ], [ inttoptr (i32 -1 to i8*), %for.end251 ], [ inttoptr (i32 -1 to i8*), %cont56.i ], [ inttoptr (i32 -1 to i8*), %cont44.i ], [ inttoptr (i32 -1 to i8*), %cont32.i ], [ inttoptr (i32 -1 to i8*), %cont20.i ], [ inttoptr (i32 -1 to i8*), %cont8.i ], [ inttoptr (i32 -1 to i8*), %for.end210 ], [ inttoptr (i32 -1 to i8*), %cont46.i ], [ inttoptr (i32 -1 to i8*), %if.end216 ], [ inttoptr (i32 -1 to i8*), %if.end31.i.i ], [ inttoptr (i32 -1 to i8*), %cont156.i.i ], [ inttoptr (i32 -1 to i8*), %if.then25.i ], [ inttoptr (i32 -1 to i8*), %if.end39.i.i.i ], [ inttoptr (i32 -1 to i8*), %cont.i87.i.i ], [ inttoptr (i32 -1 to i8*), %if.end34.i.i ], [ inttoptr (i32 -1 to i8*), %if.end28.i.i ], [ null, %for.cond.backedge.i404 ], [ inttoptr (i32 -1 to i8*), %if.then239 ], [ inttoptr (i32 -1 to i8*), %for.body.i373 ], [ inttoptr (i32 -1 to i8*), %if.end200 ], [ inttoptr (i32 -1 to i8*), %for.body189 ], [ inttoptr (i32 -1 to i8*), %if.then126 ], [ inttoptr (i32 -1 to i8*), %if.then92 ], [ inttoptr (i32 -1 to i8*), %if.then78 ], [ inttoptr (i32 -1 to i8*), %if.then64 ]
  ret i8* %retval.0.i406, !dbg !2841

failed:                                           ; preds = %if.then167, %ngx_http_merge_servers.exit.thread, %cont140
  %rv.0 = phi i8* [ %call143, %cont140 ], [ %rv.3.i.ph, %ngx_http_merge_servers.exit.thread ], [ %call171, %if.then167 ]
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %66, i8* %65, i32 48, i32 4, i1 false), !dbg !3026, !tbaa.struct !2562
  br label %ngx_http_optimize_servers.exit, !dbg !3027
}

declare i8* @ngx_pcalloc(%struct.ngx_pool_s*, i32)

declare i8* @ngx_conf_parse(%struct.ngx_conf_s*, %struct.ngx_str_t*)

define internal fastcc i32 @ngx_http_init_locations(%struct.ngx_conf_s* nocapture %cf, %struct.ngx_http_core_srv_conf_t* nocapture %cscf, %struct.ngx_http_core_loc_conf_s* nocapture %pclcf) nounwind {
entry:
  %tail = alloca %struct.ngx_queue_s, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2111), !dbg !3028
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_srv_conf_t* %cscf}, i64 0, metadata !2112), !dbg !3028
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %pclcf}, i64 0, metadata !2113), !dbg !3028
  call void @llvm.dbg.declare(metadata !{%struct.ngx_queue_s* %tail}, metadata !2119), !dbg !3029
  %locations1 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %pclcf, i32 0, i32 74, !dbg !3030
  %0 = load %struct.ngx_queue_s** %locations1, align 4, !dbg !3030, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %0}, i64 0, metadata !2117), !dbg !3030
  %cmp = icmp eq %struct.ngx_queue_s* %0, null, !dbg !3031
  br i1 %cmp, label %return, label %if.end, !dbg !3031

if.end:                                           ; preds = %entry
  call void @ngx_queue_sort(%struct.ngx_queue_s* %0, i32 (%struct.ngx_queue_s*, %struct.ngx_queue_s*)* @ngx_http_cmp_locations) nounwind, !dbg !3032
  call void @llvm.dbg.value(metadata !3033, i64 0, metadata !2118), !dbg !3034
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2114), !dbg !3035
  call void @llvm.dbg.value(metadata !3033, i64 0, metadata !2124), !dbg !3036
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !2123), !dbg !3037
  br label %for.cond.outer, !dbg !3038

for.cond.outer:                                   ; preds = %cont23, %if.end
  %.pn.ph = phi %struct.ngx_queue_s* [ %0, %if.end ], [ %q.0, %cont23 ]
  %n.0.ph = phi i32 [ 0, %if.end ], [ %14, %cont23 ]
  %named.0.ph = phi %struct.ngx_queue_s* [ null, %if.end ], [ %q.0.named.0, %cont23 ]
  %r.0.ph = phi i32 [ 0, %if.end ], [ %r.0.ph181, %cont23 ]
  %regex.0.ph = phi %struct.ngx_queue_s* [ null, %if.end ], [ %regex.0.ph182, %cont23 ]
  br label %for.cond.outer179

for.cond.outer179:                                ; preds = %for.cond.outer, %cont15
  %.pn.ph180 = phi %struct.ngx_queue_s* [ %q.0, %cont15 ], [ %.pn.ph, %for.cond.outer ]
  %r.0.ph181 = phi i32 [ %7, %cont15 ], [ %r.0.ph, %for.cond.outer ]
  %regex.0.ph182 = phi %struct.ngx_queue_s* [ %q.0.regex.0, %cont15 ], [ %regex.0.ph, %for.cond.outer ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer179, %if.end27
  %.pn = phi %struct.ngx_queue_s* [ %q.0, %if.end27 ], [ %.pn.ph180, %for.cond.outer179 ]
  %q.0.in = getelementptr inbounds %struct.ngx_queue_s* %.pn, i32 0, i32 1, !dbg !3038
  %q.0 = load %struct.ngx_queue_s** %q.0.in, align 4, !dbg !3038
  %cmp4 = icmp eq %struct.ngx_queue_s* %q.0, %0, !dbg !3038
  br i1 %cmp4, label %if.end45, label %for.body, !dbg !3038

for.body:                                         ; preds = %for.cond
  %exact = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 1, !dbg !3040
  %1 = bitcast %struct.ngx_queue_s* %exact to %struct.ngx_http_core_loc_conf_s**, !dbg !3040
  %2 = load %struct.ngx_http_core_loc_conf_s** %1, align 4, !dbg !3040, !tbaa !2247
  %tobool = icmp eq %struct.ngx_http_core_loc_conf_s* %2, null, !dbg !3040
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !3040

cond.false:                                       ; preds = %for.body
  %inclusive = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 1, i32 1, !dbg !3040
  %3 = load %struct.ngx_queue_s** %inclusive, align 4, !dbg !3040
  %4 = bitcast %struct.ngx_queue_s* %3 to %struct.ngx_http_core_loc_conf_s*, !dbg !3040
  br label %cond.end, !dbg !3040

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi %struct.ngx_http_core_loc_conf_s* [ %4, %cond.false ], [ %2, %for.body ], !dbg !3040
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %cond}, i64 0, metadata !2120), !dbg !3040
  %call = call fastcc i32 @ngx_http_init_locations(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_srv_conf_t* null, %struct.ngx_http_core_loc_conf_s* %cond), !dbg !3042
  %cmp6 = icmp eq i32 %call, 0, !dbg !3042
  br i1 %cmp6, label %if.end10, label %return, !dbg !3042

if.end10:                                         ; preds = %cond.end
  %regex11 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 1, !dbg !3043
  %5 = load %struct.ngx_http_regex_t** %regex11, align 4, !dbg !3043, !tbaa !2247
  %tobool12 = icmp eq %struct.ngx_http_regex_t* %5, null, !dbg !3043
  br i1 %tobool12, label %if.end19, label %if.then13, !dbg !3043

if.then13:                                        ; preds = %if.end10
  %6 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %r.0.ph181, i32 1), !dbg !3044
  %7 = extractvalue { i32, i1 } %6, 0, !dbg !3044
  %8 = extractvalue { i32, i1 } %6, 1, !dbg !3044
  br i1 %8, label %ioc_bb14, label %cont15, !dbg !3044

ioc_bb14:                                         ; preds = %if.then13
  %9 = zext i32 %r.0.ph181 to i64, !dbg !3044
  call void @__ioc_report_add_overflow(i32 486, i32 8, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %9, i64 1, i8 5) nounwind, !dbg !3044
  br label %cont15, !dbg !3044

cont15:                                           ; preds = %if.then13, %ioc_bb14
  call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !2123), !dbg !3044
  %cmp16 = icmp eq %struct.ngx_queue_s* %regex.0.ph182, null, !dbg !3046
  %q.0.regex.0 = select i1 %cmp16, %struct.ngx_queue_s* %q.0, %struct.ngx_queue_s* %regex.0.ph182, !dbg !3046
  br label %for.cond.outer179, !dbg !3046

if.end19:                                         ; preds = %if.end10
  %10 = getelementptr %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 2, !dbg !3047
  %11 = bitcast i8* %10 to i32*, !dbg !3047
  %12 = load i32* %11, align 4, !dbg !3047
  %bf.clear = and i32 %12, 4, !dbg !3047
  %tobool20 = icmp eq i32 %bf.clear, 0, !dbg !3047
  br i1 %tobool20, label %if.end27, label %if.then21, !dbg !3047

if.then21:                                        ; preds = %if.end19
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0.ph, i32 1), !dbg !3048
  %14 = extractvalue { i32, i1 } %13, 0, !dbg !3048
  %15 = extractvalue { i32, i1 } %13, 1, !dbg !3048
  br i1 %15, label %ioc_bb22, label %cont23, !dbg !3048

ioc_bb22:                                         ; preds = %if.then21
  %16 = zext i32 %n.0.ph to i64, !dbg !3048
  call void @__ioc_report_add_overflow(i32 494, i32 8, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8]* @12, i32 0, i32 0), i64 %16, i64 1, i8 5) nounwind, !dbg !3048
  br label %cont23, !dbg !3048

cont23:                                           ; preds = %if.then21, %ioc_bb22
  call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !2114), !dbg !3048
  %cmp24 = icmp eq %struct.ngx_queue_s* %named.0.ph, null, !dbg !3050
  %q.0.named.0 = select i1 %cmp24, %struct.ngx_queue_s* %q.0, %struct.ngx_queue_s* %named.0.ph, !dbg !3050
  br label %for.cond.outer, !dbg !3050

if.end27:                                         ; preds = %if.end19
  %bf.clear29 = and i32 %12, 1, !dbg !3051
  %tobool30 = icmp eq i32 %bf.clear29, 0, !dbg !3051
  br i1 %tobool30, label %for.cond, label %if.then35, !dbg !3051

if.then35:                                        ; preds = %if.end27
  %prev = getelementptr inbounds %struct.ngx_queue_s* %0, i32 0, i32 0, !dbg !3052
  %17 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3052, !tbaa !2247
  %prev36 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 0, !dbg !3052
  store %struct.ngx_queue_s* %17, %struct.ngx_queue_s** %prev36, align 4, !dbg !3052, !tbaa !2247
  %next38 = getelementptr inbounds %struct.ngx_queue_s* %17, i32 0, i32 1, !dbg !3054
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3054
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3054
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3054
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3054
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3054
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %next38, align 4, !dbg !3054, !tbaa !2247
  %next39 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 1, !dbg !3055
  store %struct.ngx_queue_s* %q.0, %struct.ngx_queue_s** %next39, align 4, !dbg !3055, !tbaa !2247
  %prev40 = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 0, i32 0, !dbg !3056
  %18 = load %struct.ngx_queue_s** %prev40, align 4, !dbg !3056, !tbaa !2247
  store %struct.ngx_queue_s* %18, %struct.ngx_queue_s** %prev, align 4, !dbg !3056, !tbaa !2247
  %next43 = getelementptr inbounds %struct.ngx_queue_s* %18, i32 0, i32 1, !dbg !3057
  store %struct.ngx_queue_s* %0, %struct.ngx_queue_s** %next43, align 4, !dbg !3057, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3058
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3058
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3058
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3058
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3058
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %prev40, align 4, !dbg !3058, !tbaa !2247
  br label %if.end45, !dbg !3059

if.end45:                                         ; preds = %for.cond, %if.then35
  %tobool46 = icmp eq %struct.ngx_queue_s* %named.0.ph, null, !dbg !3060
  br i1 %tobool46, label %if.end77, label %if.then47, !dbg !3060

if.then47:                                        ; preds = %if.end45
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !3061
  %19 = load %struct.ngx_pool_s** %pool, align 4, !dbg !3061, !tbaa !2247
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %n.0.ph, i32 1), !dbg !3061
  %21 = extractvalue { i32, i1 } %20, 0, !dbg !3061
  %22 = extractvalue { i32, i1 } %20, 1, !dbg !3061
  br i1 %22, label %ioc_bb50, label %cont51, !dbg !3061

ioc_bb50:                                         ; preds = %if.then47
  %23 = zext i32 %n.0.ph to i64, !dbg !3061
  call void @__ioc_report_add_overflow(i32 514, i32 39, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %23, i64 1, i8 5) nounwind, !dbg !3061
  br label %cont51, !dbg !3061

cont51:                                           ; preds = %if.then47, %ioc_bb50
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 4), !dbg !3061
  %25 = extractvalue { i32, i1 } %24, 0, !dbg !3061
  %26 = extractvalue { i32, i1 } %24, 1, !dbg !3061
  br i1 %26, label %ioc_bb52, label %cont53, !dbg !3061

ioc_bb52:                                         ; preds = %cont51
  %27 = zext i32 %21 to i64, !dbg !3061
  call void @__ioc_report_mul_overflow(i32 514, i32 44, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %27, i64 4, i8 5) nounwind, !dbg !3061
  br label %cont53, !dbg !3061

cont53:                                           ; preds = %cont51, %ioc_bb52
  %call54 = call i8* @ngx_palloc(%struct.ngx_pool_s* %19, i32 %25) nounwind, !dbg !3061
  %28 = bitcast i8* %call54 to %struct.ngx_http_core_loc_conf_s**, !dbg !3061
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s** %28}, i64 0, metadata !2122), !dbg !3061
  %cmp55 = icmp eq i8* %call54, null, !dbg !3063
  br i1 %cmp55, label %return, label %if.end59, !dbg !3063

if.end59:                                         ; preds = %cont53
  %named_locations = getelementptr inbounds %struct.ngx_http_core_srv_conf_t* %cscf, i32 0, i32 12, !dbg !3064
  store %struct.ngx_http_core_loc_conf_s** %28, %struct.ngx_http_core_loc_conf_s*** %named_locations, align 4, !dbg !3064, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %named.0.ph}, i64 0, metadata !2116), !dbg !3065
  %cmp61175 = icmp eq %struct.ngx_queue_s* %named.0.ph, %0, !dbg !3065
  br i1 %cmp61175, label %for.end66, label %for.body62, !dbg !3065

for.body62:                                       ; preds = %if.end59, %for.body62
  %clcfp.0177 = phi %struct.ngx_http_core_loc_conf_s** [ %incdec.ptr, %for.body62 ], [ %28, %if.end59 ]
  %q.1176 = phi %struct.ngx_queue_s* [ %31, %for.body62 ], [ %named.0.ph, %if.end59 ]
  %exact63 = getelementptr inbounds %struct.ngx_queue_s* %q.1176, i32 1, !dbg !3067
  %29 = bitcast %struct.ngx_queue_s* %exact63 to %struct.ngx_http_core_loc_conf_s**, !dbg !3067
  %30 = load %struct.ngx_http_core_loc_conf_s** %29, align 4, !dbg !3067, !tbaa !2247
  %incdec.ptr = getelementptr inbounds %struct.ngx_http_core_loc_conf_s** %clcfp.0177, i32 1, !dbg !3067
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s** %incdec.ptr}, i64 0, metadata !2122), !dbg !3067
  store %struct.ngx_http_core_loc_conf_s* %30, %struct.ngx_http_core_loc_conf_s** %clcfp.0177, align 4, !dbg !3067, !tbaa !2247
  %next65 = getelementptr inbounds %struct.ngx_queue_s* %q.1176, i32 0, i32 1, !dbg !3065
  %31 = load %struct.ngx_queue_s** %next65, align 4, !dbg !3065, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %31}, i64 0, metadata !2116), !dbg !3065
  %cmp61 = icmp eq %struct.ngx_queue_s* %31, %0, !dbg !3065
  br i1 %cmp61, label %for.end66, label %for.body62, !dbg !3065

for.end66:                                        ; preds = %for.body62, %if.end59
  %clcfp.0.lcssa = phi %struct.ngx_http_core_loc_conf_s** [ %28, %if.end59 ], [ %incdec.ptr, %for.body62 ]
  store %struct.ngx_http_core_loc_conf_s* null, %struct.ngx_http_core_loc_conf_s** %clcfp.0.lcssa, align 4, !dbg !3069, !tbaa !2247
  %prev67 = getelementptr inbounds %struct.ngx_queue_s* %0, i32 0, i32 0, !dbg !3070
  %32 = load %struct.ngx_queue_s** %prev67, align 4, !dbg !3070, !tbaa !2247
  %prev68 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 0, !dbg !3070
  store %struct.ngx_queue_s* %32, %struct.ngx_queue_s** %prev68, align 4, !dbg !3070, !tbaa !2247
  %next70 = getelementptr inbounds %struct.ngx_queue_s* %32, i32 0, i32 1, !dbg !3071
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3071
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3071
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3071
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3071
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3071
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %next70, align 4, !dbg !3071, !tbaa !2247
  %next71 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 1, !dbg !3072
  store %struct.ngx_queue_s* %named.0.ph, %struct.ngx_queue_s** %next71, align 4, !dbg !3072, !tbaa !2247
  %prev72 = getelementptr inbounds %struct.ngx_queue_s* %named.0.ph, i32 0, i32 0, !dbg !3073
  %33 = load %struct.ngx_queue_s** %prev72, align 4, !dbg !3073, !tbaa !2247
  store %struct.ngx_queue_s* %33, %struct.ngx_queue_s** %prev67, align 4, !dbg !3073, !tbaa !2247
  %next75 = getelementptr inbounds %struct.ngx_queue_s* %33, i32 0, i32 1, !dbg !3074
  store %struct.ngx_queue_s* %0, %struct.ngx_queue_s** %next75, align 4, !dbg !3074, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3075
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3075
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3075
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3075
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3075
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %prev72, align 4, !dbg !3075, !tbaa !2247
  br label %if.end77, !dbg !3076

if.end77:                                         ; preds = %if.end45, %for.end66
  %tobool78 = icmp eq %struct.ngx_queue_s* %regex.0.ph182, null, !dbg !3077
  br i1 %tobool78, label %return, label %if.then79, !dbg !3077

if.then79:                                        ; preds = %if.end77
  %pool80 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !3078
  %34 = load %struct.ngx_pool_s** %pool80, align 4, !dbg !3078, !tbaa !2247
  %35 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %r.0.ph181, i32 1), !dbg !3078
  %36 = extractvalue { i32, i1 } %35, 0, !dbg !3078
  %37 = extractvalue { i32, i1 } %35, 1, !dbg !3078
  br i1 %37, label %ioc_bb83, label %cont84, !dbg !3078

ioc_bb83:                                         ; preds = %if.then79
  %38 = zext i32 %r.0.ph181 to i64, !dbg !3078
  call void @__ioc_report_add_overflow(i32 534, i32 39, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %38, i64 1, i8 5) nounwind, !dbg !3078
  br label %cont84, !dbg !3078

cont84:                                           ; preds = %if.then79, %ioc_bb83
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 4), !dbg !3078
  %40 = extractvalue { i32, i1 } %39, 0, !dbg !3078
  %41 = extractvalue { i32, i1 } %39, 1, !dbg !3078
  br i1 %41, label %ioc_bb85, label %cont86, !dbg !3078

ioc_bb85:                                         ; preds = %cont84
  %42 = zext i32 %36 to i64, !dbg !3078
  call void @__ioc_report_mul_overflow(i32 534, i32 44, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @11, i32 0, i32 0), i64 %42, i64 4, i8 5) nounwind, !dbg !3078
  br label %cont86, !dbg !3078

cont86:                                           ; preds = %cont84, %ioc_bb85
  %call87 = call i8* @ngx_palloc(%struct.ngx_pool_s* %34, i32 %40) nounwind, !dbg !3078
  %43 = bitcast i8* %call87 to %struct.ngx_http_core_loc_conf_s**, !dbg !3078
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s** %43}, i64 0, metadata !2122), !dbg !3078
  %cmp88 = icmp eq i8* %call87, null, !dbg !3080
  br i1 %cmp88, label %return, label %if.end92, !dbg !3080

if.end92:                                         ; preds = %cont86
  %regex_locations = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %pclcf, i32 0, i32 4, !dbg !3081
  store %struct.ngx_http_core_loc_conf_s** %43, %struct.ngx_http_core_loc_conf_s*** %regex_locations, align 4, !dbg !3081, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %regex.0.ph182}, i64 0, metadata !2116), !dbg !3082
  %cmp94172 = icmp eq %struct.ngx_queue_s* %regex.0.ph182, %0, !dbg !3082
  br i1 %cmp94172, label %for.end100, label %for.body95, !dbg !3082

for.body95:                                       ; preds = %if.end92, %for.body95
  %clcfp.1174 = phi %struct.ngx_http_core_loc_conf_s** [ %incdec.ptr97, %for.body95 ], [ %43, %if.end92 ]
  %q.2173 = phi %struct.ngx_queue_s* [ %46, %for.body95 ], [ %regex.0.ph182, %if.end92 ]
  %exact96 = getelementptr inbounds %struct.ngx_queue_s* %q.2173, i32 1, !dbg !3084
  %44 = bitcast %struct.ngx_queue_s* %exact96 to %struct.ngx_http_core_loc_conf_s**, !dbg !3084
  %45 = load %struct.ngx_http_core_loc_conf_s** %44, align 4, !dbg !3084, !tbaa !2247
  %incdec.ptr97 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s** %clcfp.1174, i32 1, !dbg !3084
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s** %incdec.ptr97}, i64 0, metadata !2122), !dbg !3084
  store %struct.ngx_http_core_loc_conf_s* %45, %struct.ngx_http_core_loc_conf_s** %clcfp.1174, align 4, !dbg !3084, !tbaa !2247
  %next99 = getelementptr inbounds %struct.ngx_queue_s* %q.2173, i32 0, i32 1, !dbg !3082
  %46 = load %struct.ngx_queue_s** %next99, align 4, !dbg !3082, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %46}, i64 0, metadata !2116), !dbg !3082
  %cmp94 = icmp eq %struct.ngx_queue_s* %46, %0, !dbg !3082
  br i1 %cmp94, label %for.end100, label %for.body95, !dbg !3082

for.end100:                                       ; preds = %for.body95, %if.end92
  %clcfp.1.lcssa = phi %struct.ngx_http_core_loc_conf_s** [ %43, %if.end92 ], [ %incdec.ptr97, %for.body95 ]
  store %struct.ngx_http_core_loc_conf_s* null, %struct.ngx_http_core_loc_conf_s** %clcfp.1.lcssa, align 4, !dbg !3086, !tbaa !2247
  %prev101 = getelementptr inbounds %struct.ngx_queue_s* %0, i32 0, i32 0, !dbg !3087
  %47 = load %struct.ngx_queue_s** %prev101, align 4, !dbg !3087, !tbaa !2247
  %prev102 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 0, !dbg !3087
  store %struct.ngx_queue_s* %47, %struct.ngx_queue_s** %prev102, align 4, !dbg !3087, !tbaa !2247
  %next104 = getelementptr inbounds %struct.ngx_queue_s* %47, i32 0, i32 1, !dbg !3088
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3088
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3088
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3088
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3088
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3088
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %next104, align 4, !dbg !3088, !tbaa !2247
  %next105 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 1, !dbg !3089
  store %struct.ngx_queue_s* %regex.0.ph182, %struct.ngx_queue_s** %next105, align 4, !dbg !3089, !tbaa !2247
  %prev106 = getelementptr inbounds %struct.ngx_queue_s* %regex.0.ph182, i32 0, i32 0, !dbg !3090
  %48 = load %struct.ngx_queue_s** %prev106, align 4, !dbg !3090, !tbaa !2247
  store %struct.ngx_queue_s* %48, %struct.ngx_queue_s** %prev101, align 4, !dbg !3090, !tbaa !2247
  %next109 = getelementptr inbounds %struct.ngx_queue_s* %48, i32 0, i32 1, !dbg !3091
  store %struct.ngx_queue_s* %0, %struct.ngx_queue_s** %next109, align 4, !dbg !3091, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3092
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3092
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3092
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3092
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2119), !dbg !3092
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %prev106, align 4, !dbg !3092, !tbaa !2247
  br label %return, !dbg !3093

return:                                           ; preds = %cond.end, %for.end100, %if.end77, %cont86, %cont53, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %cont53 ], [ -1, %cont86 ], [ 0, %if.end77 ], [ 0, %for.end100 ], [ -1, %cond.end ]
  ret i32 %retval.0, !dbg !3094
}

define internal fastcc i32 @ngx_http_init_static_location_trees(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_loc_conf_s* nocapture %pclcf) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2055), !dbg !3095
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %pclcf}, i64 0, metadata !2056), !dbg !3095
  %locations1 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %pclcf, i32 0, i32 74, !dbg !3096
  %0 = load %struct.ngx_queue_s** %locations1, align 4, !dbg !3096, !tbaa !2247
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %0}, i64 0, metadata !2059), !dbg !3096
  %cmp = icmp eq %struct.ngx_queue_s* %0, null, !dbg !3097
  br i1 %cmp, label %return, label %if.end, !dbg !3097

if.end:                                           ; preds = %entry
  %prev = getelementptr inbounds %struct.ngx_queue_s* %0, i32 0, i32 0, !dbg !3098
  %1 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3098, !tbaa !2247
  %cmp2 = icmp eq %struct.ngx_queue_s* %0, %1, !dbg !3098
  br i1 %cmp2, label %return, label %if.end4, !dbg !3098

if.end4:                                          ; preds = %if.end
  %next = getelementptr inbounds %struct.ngx_queue_s* %0, i32 0, i32 1, !dbg !3099
  br label %for.cond, !dbg !3099

for.cond:                                         ; preds = %cond.end, %if.end4
  %q.0.in = phi %struct.ngx_queue_s** [ %next, %if.end4 ], [ %next10, %cond.end ]
  %q.0 = load %struct.ngx_queue_s** %q.0.in, align 4, !dbg !3099
  %cmp5 = icmp eq %struct.ngx_queue_s* %q.0, %0, !dbg !3099
  br i1 %cmp5, label %for.end, label %for.body, !dbg !3099

for.body:                                         ; preds = %for.cond
  %exact = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 1, !dbg !3101
  %2 = bitcast %struct.ngx_queue_s* %exact to %struct.ngx_http_core_loc_conf_s**, !dbg !3101
  %3 = load %struct.ngx_http_core_loc_conf_s** %2, align 4, !dbg !3101, !tbaa !2247
  %tobool = icmp eq %struct.ngx_http_core_loc_conf_s* %3, null, !dbg !3101
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !3101

cond.false:                                       ; preds = %for.body
  %inclusive = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 1, i32 1, !dbg !3101
  %4 = load %struct.ngx_queue_s** %inclusive, align 4, !dbg !3101
  %5 = bitcast %struct.ngx_queue_s* %4 to %struct.ngx_http_core_loc_conf_s*, !dbg !3101
  br label %cond.end, !dbg !3101

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi %struct.ngx_http_core_loc_conf_s* [ %5, %cond.false ], [ %3, %for.body ], !dbg !3101
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %cond}, i64 0, metadata !2060), !dbg !3101
  %call = tail call fastcc i32 @ngx_http_init_static_location_trees(%struct.ngx_conf_s* %cf, %struct.ngx_http_core_loc_conf_s* %cond), !dbg !3103
  %cmp7 = icmp eq i32 %call, 0, !dbg !3103
  %next10 = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 0, i32 1, !dbg !3099
  br i1 %cmp7, label %for.cond, label %return, !dbg !3103

for.end:                                          ; preds = %for.cond
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !3104) nounwind, !dbg !3106
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %0}, i64 0, metadata !3107) nounwind, !dbg !3106
  %6 = load %struct.ngx_queue_s** %next, align 4, !dbg !3108, !tbaa !2247
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %6}, i64 0, metadata !3109) nounwind, !dbg !3108
  %7 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3110, !tbaa !2247
  %cmp5253.i = icmp eq %struct.ngx_queue_s* %6, %7, !dbg !3110
  br i1 %cmp5253.i, label %if.end16, label %while.body.lr.ph.i, !dbg !3110

while.cond.outer.loopexit.i:                      ; preds = %while.body.i
  %cmp52.i = icmp eq %struct.ngx_queue_s* %12, %11, !dbg !3110
  br i1 %cmp52.i, label %if.end16, label %while.body.lr.ph.i, !dbg !3110

while.body.lr.ph.i:                               ; preds = %for.end, %while.cond.outer.loopexit.i
  %8 = phi %struct.ngx_queue_s* [ %11, %while.cond.outer.loopexit.i ], [ %7, %for.end ]
  %q.0.ph54.i = phi %struct.ngx_queue_s* [ %12, %while.cond.outer.loopexit.i ], [ %6, %for.end ]
  %next1.i = getelementptr inbounds %struct.ngx_queue_s* %q.0.ph54.i, i32 0, i32 1, !dbg !3111
  %name.i = getelementptr inbounds %struct.ngx_queue_s* %q.0.ph54.i, i32 2, !dbg !3112
  %9 = bitcast %struct.ngx_queue_s* %name.i to %struct.ngx_str_t**, !dbg !3112
  %exact.i = getelementptr inbounds %struct.ngx_queue_s* %q.0.ph54.i, i32 1, !dbg !3113
  %10 = bitcast %struct.ngx_queue_s* %exact.i to %struct.ngx_http_core_loc_conf_s**, !dbg !3113
  %inclusive.i = getelementptr inbounds %struct.ngx_queue_s* %q.0.ph54.i, i32 1, i32 1, !dbg !3113
  br label %while.body.i, !dbg !3110

while.body.i:                                     ; preds = %if.end20.i, %while.body.lr.ph.i
  %11 = phi %struct.ngx_queue_s* [ %8, %while.body.lr.ph.i ], [ %32, %if.end20.i ]
  %12 = load %struct.ngx_queue_s** %next1.i, align 4, !dbg !3111, !tbaa !2247
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %12}, i64 0, metadata !3115) nounwind, !dbg !3111
  %13 = load %struct.ngx_str_t** %9, align 4, !dbg !3112, !tbaa !2247
  %data.i = getelementptr inbounds %struct.ngx_str_t* %13, i32 0, i32 1, !dbg !3112
  %14 = load i8** %data.i, align 4, !dbg !3112, !tbaa !2247
  %name2.i = getelementptr inbounds %struct.ngx_queue_s* %12, i32 2, !dbg !3112
  %15 = bitcast %struct.ngx_queue_s* %name2.i to %struct.ngx_str_t**, !dbg !3112
  %16 = load %struct.ngx_str_t** %15, align 4, !dbg !3112, !tbaa !2247
  %data3.i = getelementptr inbounds %struct.ngx_str_t* %16, i32 0, i32 1, !dbg !3112
  %17 = load i8** %data3.i, align 4, !dbg !3112, !tbaa !2247
  %call.i = tail call i32 @strcmp(i8* %14, i8* %17) nounwind, !dbg !3112
  %cmp4.i = icmp eq i32 %call.i, 0, !dbg !3112
  br i1 %cmp4.i, label %if.then.i, label %while.cond.outer.loopexit.i, !dbg !3112

if.then.i:                                        ; preds = %while.body.i
  %18 = load %struct.ngx_http_core_loc_conf_s** %10, align 4, !dbg !3113, !tbaa !2247
  %tobool.i = icmp eq %struct.ngx_http_core_loc_conf_s* %18, null, !dbg !3113
  br i1 %tobool.i, label %lor.lhs.false.i, label %land.lhs.true.i, !dbg !3113

land.lhs.true.i:                                  ; preds = %if.then.i
  %exact5.i = getelementptr inbounds %struct.ngx_queue_s* %12, i32 1, !dbg !3113
  %19 = bitcast %struct.ngx_queue_s* %exact5.i to %struct.ngx_http_core_loc_conf_s**, !dbg !3113
  %20 = load %struct.ngx_http_core_loc_conf_s** %19, align 4, !dbg !3113, !tbaa !2247
  %tobool6.i = icmp eq %struct.ngx_http_core_loc_conf_s* %20, null, !dbg !3113
  br i1 %tobool6.i, label %lor.lhs.false.i, label %if.then11.i, !dbg !3113

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i, %if.then.i
  %21 = load %struct.ngx_queue_s** %inclusive.i, align 4, !dbg !3113
  %tobool7.i = icmp eq %struct.ngx_queue_s* %21, null, !dbg !3113
  %inclusive21.phi.trans.insert.i = getelementptr inbounds %struct.ngx_queue_s* %12, i32 1, i32 1
  %.pre.i = load %struct.ngx_queue_s** %inclusive21.phi.trans.insert.i, align 4, !dbg !3116
  br i1 %tobool7.i, label %if.end20.i, label %land.lhs.true8.i, !dbg !3113

land.lhs.true8.i:                                 ; preds = %lor.lhs.false.i
  %tobool10.i = icmp eq %struct.ngx_queue_s* %.pre.i, null, !dbg !3113
  br i1 %tobool10.i, label %if.end20.i, label %if.then11.i, !dbg !3113

if.then11.i:                                      ; preds = %land.lhs.true8.i, %land.lhs.true.i
  %log.i = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 6, !dbg !3117
  %22 = load %struct.ngx_log_s** %log.i, align 4, !dbg !3117, !tbaa !2247
  %log_level.i = getelementptr inbounds %struct.ngx_log_s* %22, i32 0, i32 0, !dbg !3117
  %23 = load i32* %log_level.i, align 4, !dbg !3117, !tbaa !2269
  %cmp12.i = icmp eq i32 %23, 0, !dbg !3117
  br i1 %cmp12.i, label %return, label %cont15.i, !dbg !3117

cont15.i:                                         ; preds = %if.then11.i
  %file_name.i = getelementptr inbounds %struct.ngx_queue_s* %12, i32 2, i32 1, !dbg !3119
  %24 = load %struct.ngx_queue_s** %file_name.i, align 4, !dbg !3119
  %line.i = getelementptr inbounds %struct.ngx_queue_s* %12, i32 3, !dbg !3119
  %25 = bitcast %struct.ngx_queue_s* %line.i to i32*, !dbg !3119
  %26 = load i32* %25, align 4, !dbg !3119, !tbaa !2269
  tail call void (i32, %struct.ngx_log_s*, i32, i8*, ...)* @ngx_log_error_core(i32 1, %struct.ngx_log_s* %22, i32 0, i8* getelementptr inbounds ([34 x i8]* @.str11, i32 0, i32 0), %struct.ngx_str_t* %16, %struct.ngx_queue_s* %24, i32 %26) nounwind, !dbg !3119
  br label %return, !dbg !3119

if.end20.i:                                       ; preds = %land.lhs.true8.i, %lor.lhs.false.i
  %27 = phi %struct.ngx_queue_s* [ null, %land.lhs.true8.i ], [ %.pre.i, %lor.lhs.false.i ]
  store %struct.ngx_queue_s* %27, %struct.ngx_queue_s** %inclusive.i, align 4, !dbg !3116, !tbaa !2247
  %prev23.i = getelementptr inbounds %struct.ngx_queue_s* %12, i32 0, i32 0, !dbg !3120
  %28 = load %struct.ngx_queue_s** %prev23.i, align 4, !dbg !3120, !tbaa !2247
  %next24.i = getelementptr inbounds %struct.ngx_queue_s* %12, i32 0, i32 1, !dbg !3120
  %29 = load %struct.ngx_queue_s** %next24.i, align 4, !dbg !3120, !tbaa !2247
  %prev25.i = getelementptr inbounds %struct.ngx_queue_s* %29, i32 0, i32 0, !dbg !3120
  store %struct.ngx_queue_s* %28, %struct.ngx_queue_s** %prev25.i, align 4, !dbg !3120, !tbaa !2247
  %30 = load %struct.ngx_queue_s** %next24.i, align 4, !dbg !3121, !tbaa !2247
  %31 = load %struct.ngx_queue_s** %prev23.i, align 4, !dbg !3121, !tbaa !2247
  %next28.i = getelementptr inbounds %struct.ngx_queue_s* %31, i32 0, i32 1, !dbg !3121
  store %struct.ngx_queue_s* %30, %struct.ngx_queue_s** %next28.i, align 4, !dbg !3121, !tbaa !2247
  %32 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3110, !tbaa !2247
  %cmp.i = icmp eq %struct.ngx_queue_s* %q.0.ph54.i, %32, !dbg !3110
  br i1 %cmp.i, label %if.end16, label %while.body.i, !dbg !3110

if.end16:                                         ; preds = %while.cond.outer.loopexit.i, %if.end20.i, %for.end
  %33 = load %struct.ngx_queue_s** %next, align 4, !dbg !3122, !tbaa !2247
  tail call fastcc void @ngx_http_create_locations_list(%struct.ngx_queue_s* %0, %struct.ngx_queue_s* %33), !dbg !3122
  %call20 = tail call fastcc %struct.ngx_http_location_tree_node_s* @ngx_http_create_locations_tree(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %0, i32 0), !dbg !3123
  %static_locations = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %pclcf, i32 0, i32 3, !dbg !3123
  store %struct.ngx_http_location_tree_node_s* %call20, %struct.ngx_http_location_tree_node_s** %static_locations, align 4, !dbg !3123, !tbaa !2247
  %cmp22 = icmp eq %struct.ngx_http_location_tree_node_s* %call20, null, !dbg !3124
  %. = sext i1 %cmp22 to i32, !dbg !3124
  ret i32 %., !dbg !3124

return:                                           ; preds = %cond.end, %if.then11.i, %cont15.i, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 0, %if.end ], [ -1, %cont15.i ], [ -1, %if.then11.i ], [ -1, %cond.end ]
  ret i32 %retval.0, !dbg !3125
}

declare i32 @ngx_http_variables_init_vars(%struct.ngx_conf_s*)

declare void @ngx_sort(i8*, i32, i32, i32 (i8*, i8*)*)

define internal i32 @ngx_http_cmp_conf_addrs(i8* nocapture %one, i8* nocapture %two) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %one}, i64 0, metadata !2001), !dbg !3126
  tail call void @llvm.dbg.value(metadata !{i8* %two}, i64 0, metadata !2002), !dbg !3126
  %bf.field.offs = getelementptr i8* %one, i32 116, !dbg !3127
  %0 = bitcast i8* %bf.field.offs to i32*, !dbg !3127
  %1 = load i32* %0, align 4, !dbg !3127
  %bf.clear = and i32 %1, 8, !dbg !3127
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !3127
  br i1 %tobool, label %if.end, label %return, !dbg !3127

if.end:                                           ; preds = %entry
  %bf.field.offs2 = getelementptr i8* %two, i32 116, !dbg !3128
  %2 = bitcast i8* %bf.field.offs2 to i32*, !dbg !3128
  %3 = load i32* %2, align 4, !dbg !3128
  %bf.clear3 = and i32 %3, 8, !dbg !3128
  %tobool4 = icmp eq i32 %bf.clear3, 0, !dbg !3128
  br i1 %tobool4, label %cont11, label %return, !dbg !3128

cont11:                                           ; preds = %if.end
  %bf.clear9 = and i32 %1, 4, !dbg !3129
  %tobool12 = icmp eq i32 %bf.clear9, 0, !dbg !3129
  %bf.clear28 = and i32 %3, 4, !dbg !3130
  %tobool32 = icmp eq i32 %bf.clear28, 0, !dbg !3130
  br i1 %tobool12, label %cont31, label %land.lhs.true, !dbg !3129

land.lhs.true:                                    ; preds = %cont11
  br i1 %tobool32, label %return, label %if.end34, !dbg !3129

cont31:                                           ; preds = %cont11
  br i1 %tobool32, label %if.end34, label %return, !dbg !3130

if.end34:                                         ; preds = %land.lhs.true, %cont31
  br label %return, !dbg !3131

return:                                           ; preds = %cont31, %land.lhs.true, %if.end, %entry, %if.end34
  %retval.0 = phi i32 [ 0, %if.end34 ], [ 1, %entry ], [ -1, %if.end ], [ -1, %land.lhs.true ], [ 1, %cont31 ]
  ret i32 %retval.0, !dbg !3132
}

declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) nounwind readnone

declare %struct.ngx_listening_s* @ngx_create_listening(%struct.ngx_conf_s*, i8*, i32)

declare void @ngx_http_init_connection(%struct.ngx_connection_s*)

declare i8* @ngx_accept_log_error(%struct.ngx_log_s*, i8*, i32)

declare void @llvm.memset.p0i8.i32(i8* nocapture, i8, i32, i32, i1) nounwind

declare %struct.ngx_pool_s* @ngx_create_pool(i32, %struct.ngx_log_s*)

declare i32 @ngx_hash_keys_array_init(%struct.ngx_hash_keys_arrays_t*, i32)

declare i32 @ngx_hash_add_key(%struct.ngx_hash_keys_arrays_t*, %struct.ngx_str_t*, i8*, i32)

declare void @ngx_log_error_core(i32, %struct.ngx_log_s*, i32, i8*, ...)

declare i32 @ngx_hash_key_lc(i8*, i32)

declare void @qsort(i8*, i32, i32, i32 (i8*, i8*)* nocapture)

define internal i32 @ngx_http_cmp_dns_wildcards(i8* nocapture %one, i8* nocapture %two) nounwind {
entry:
  tail call void @llvm.dbg.value(metadata !{i8* %one}, i64 0, metadata !1991), !dbg !3133
  tail call void @llvm.dbg.value(metadata !{i8* %two}, i64 0, metadata !1992), !dbg !3133
  %data = getelementptr inbounds i8* %one, i32 4, !dbg !3134
  %0 = bitcast i8* %data to i8**, !dbg !3134
  %1 = load i8** %0, align 4, !dbg !3134, !tbaa !2247
  %data2 = getelementptr inbounds i8* %two, i32 4, !dbg !3134
  %2 = bitcast i8* %data2 to i8**, !dbg !3134
  %3 = load i8** %2, align 4, !dbg !3134, !tbaa !2247
  %call = tail call i32 @ngx_dns_strcmp(i8* %1, i8* %3) nounwind, !dbg !3134
  ret i32 %call, !dbg !3134
}

declare i32 @ngx_hash_wildcard_init(%struct.ngx_hash_init_t*, %struct.ngx_hash_key_t*, i32)

declare void @ngx_destroy_pool(%struct.ngx_pool_s*)

declare i32 @ngx_dns_strcmp(i8*, i8*)

declare i32 @ngx_http_core_rewrite_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare i32 @ngx_http_core_find_config_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare i32 @ngx_http_core_post_rewrite_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare i32 @ngx_http_core_access_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare i32 @ngx_http_core_post_access_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare i32 @ngx_http_core_try_files_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare i32 @ngx_http_core_content_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare i32 @ngx_http_core_generic_phase(%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)

declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) nounwind readnone

define internal fastcc void @ngx_http_create_locations_list(%struct.ngx_queue_s* %locations, %struct.ngx_queue_s* %q) nounwind {
entry:
  %tail = alloca %struct.ngx_queue_s, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %locations}, i64 0, metadata !2081), !dbg !3135
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %q}, i64 0, metadata !2082), !dbg !3135
  call void @llvm.dbg.declare(metadata !{%struct.ngx_queue_s* %tail}, metadata !2087), !dbg !3136
  %prev = getelementptr inbounds %struct.ngx_queue_s* %locations, i32 0, i32 0, !dbg !3137
  %0 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3137, !tbaa !2247
  %cmp = icmp eq %struct.ngx_queue_s* %0, %q, !dbg !3137
  br i1 %cmp, label %return, label %if.end, !dbg !3137

if.end:                                           ; preds = %entry
  %inclusive = getelementptr inbounds %struct.ngx_queue_s* %q, i32 1, i32 1, !dbg !3138
  %1 = load %struct.ngx_queue_s** %inclusive, align 4, !dbg !3138
  %cmp1 = icmp eq %struct.ngx_queue_s* %1, null, !dbg !3138
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3138

if.then2:                                         ; preds = %if.end
  %next = getelementptr inbounds %struct.ngx_queue_s* %q, i32 0, i32 1, !dbg !3139
  %2 = load %struct.ngx_queue_s** %next, align 4, !dbg !3139, !tbaa !2247
  call fastcc void @ngx_http_create_locations_list(%struct.ngx_queue_s* %locations, %struct.ngx_queue_s* %2), !dbg !3139
  br label %return, !dbg !3141

if.end3:                                          ; preds = %if.end
  %name4 = getelementptr inbounds %struct.ngx_queue_s* %q, i32 2, !dbg !3142
  %3 = bitcast %struct.ngx_queue_s* %name4 to %struct.ngx_str_t**, !dbg !3142
  %4 = load %struct.ngx_str_t** %3, align 4, !dbg !3142, !tbaa !2247
  %len5 = getelementptr inbounds %struct.ngx_str_t* %4, i32 0, i32 0, !dbg !3142
  %5 = load i32* %len5, align 4, !dbg !3142, !tbaa !2269
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !2085), !dbg !3142
  %data = getelementptr inbounds %struct.ngx_str_t* %4, i32 0, i32 1, !dbg !3143
  %6 = load i8** %data, align 4, !dbg !3143, !tbaa !2247
  call void @llvm.dbg.value(metadata !{i8* %6}, i64 0, metadata !2083), !dbg !3143
  %next7 = getelementptr inbounds %struct.ngx_queue_s* %q, i32 0, i32 1, !dbg !3144
  br label %for.cond, !dbg !3144

for.cond:                                         ; preds = %lor.lhs.false, %if.end3
  %x.0.in = phi %struct.ngx_queue_s** [ %next7, %if.end3 ], [ %next17, %lor.lhs.false ]
  %x.0 = load %struct.ngx_queue_s** %x.0.in, align 4, !dbg !3144
  %cmp8 = icmp eq %struct.ngx_queue_s* %x.0, %locations, !dbg !3144
  br i1 %cmp8, label %for.end, label %for.body, !dbg !3144

for.body:                                         ; preds = %for.cond
  %name9 = getelementptr inbounds %struct.ngx_queue_s* %x.0, i32 2, !dbg !3146
  %7 = bitcast %struct.ngx_queue_s* %name9 to %struct.ngx_str_t**, !dbg !3146
  %8 = load %struct.ngx_str_t** %7, align 4, !dbg !3146, !tbaa !2247
  %len10 = getelementptr inbounds %struct.ngx_str_t* %8, i32 0, i32 0, !dbg !3146
  %9 = load i32* %len10, align 4, !dbg !3146, !tbaa !2269
  %cmp11 = icmp ugt i32 %5, %9, !dbg !3146
  br i1 %cmp11, label %for.end, label %lor.lhs.false, !dbg !3146

lor.lhs.false:                                    ; preds = %for.body
  %data13 = getelementptr inbounds %struct.ngx_str_t* %8, i32 0, i32 1, !dbg !3146
  %10 = load i8** %data13, align 4, !dbg !3146, !tbaa !2247
  %call = call i32 @strncmp(i8* %6, i8* %10, i32 %5) nounwind readonly, !dbg !3146
  %cmp14 = icmp eq i32 %call, 0, !dbg !3146
  %next17 = getelementptr inbounds %struct.ngx_queue_s* %x.0, i32 0, i32 1, !dbg !3144
  br i1 %cmp14, label %for.cond, label %for.end, !dbg !3146

for.end:                                          ; preds = %lor.lhs.false, %for.cond, %for.body
  %cmp8.lcssa = phi i1 [ false, %lor.lhs.false ], [ true, %for.cond ], [ false, %for.body ]
  %x.0.lcssa = phi %struct.ngx_queue_s* [ %x.0, %lor.lhs.false ], [ %locations, %for.cond ], [ %x.0, %for.body ]
  %11 = load %struct.ngx_queue_s** %next7, align 4, !dbg !3148, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %11}, i64 0, metadata !2082), !dbg !3148
  %cmp19 = icmp eq %struct.ngx_queue_s* %11, %x.0.lcssa, !dbg !3149
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !3149

if.then20:                                        ; preds = %for.end
  call fastcc void @ngx_http_create_locations_list(%struct.ngx_queue_s* %locations, %struct.ngx_queue_s* %x.0.lcssa), !dbg !3150
  br label %return, !dbg !3152

if.end21:                                         ; preds = %for.end
  %prev23 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 0, !dbg !3153
  store %struct.ngx_queue_s* %0, %struct.ngx_queue_s** %prev23, align 4, !dbg !3153, !tbaa !2247
  %next25 = getelementptr inbounds %struct.ngx_queue_s* %0, i32 0, i32 1, !dbg !3154
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3154
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3154
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3154
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3154
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3154
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %next25, align 4, !dbg !3154, !tbaa !2247
  %next26 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 1, !dbg !3155
  store %struct.ngx_queue_s* %11, %struct.ngx_queue_s** %next26, align 4, !dbg !3155, !tbaa !2247
  %prev27 = getelementptr inbounds %struct.ngx_queue_s* %11, i32 0, i32 0, !dbg !3156
  %12 = load %struct.ngx_queue_s** %prev27, align 4, !dbg !3156, !tbaa !2247
  store %struct.ngx_queue_s* %12, %struct.ngx_queue_s** %prev, align 4, !dbg !3156, !tbaa !2247
  %next30 = getelementptr inbounds %struct.ngx_queue_s* %12, i32 0, i32 1, !dbg !3157
  store %struct.ngx_queue_s* %locations, %struct.ngx_queue_s** %next30, align 4, !dbg !3157, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3158
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3158
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3158
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3158
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3158
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %prev27, align 4, !dbg !3158, !tbaa !2247
  %13 = load %struct.ngx_queue_s** %next26, align 4, !dbg !3159, !tbaa !2247
  %list = getelementptr inbounds %struct.ngx_queue_s* %q, i32 3, i32 1, !dbg !3159
  %14 = bitcast %struct.ngx_queue_s** %list to %struct.ngx_queue_s*, !dbg !3159
  %15 = load %struct.ngx_queue_s** %list, align 4, !dbg !3159, !tbaa !2247
  %next34 = getelementptr inbounds %struct.ngx_queue_s* %15, i32 0, i32 1, !dbg !3159
  store %struct.ngx_queue_s* %13, %struct.ngx_queue_s** %next34, align 4, !dbg !3159, !tbaa !2247
  %16 = load %struct.ngx_queue_s** %list, align 4, !dbg !3160, !tbaa !2247
  %17 = load %struct.ngx_queue_s** %next26, align 4, !dbg !3160, !tbaa !2247
  %prev38 = getelementptr inbounds %struct.ngx_queue_s* %17, i32 0, i32 0, !dbg !3160
  store %struct.ngx_queue_s* %16, %struct.ngx_queue_s** %prev38, align 4, !dbg !3160, !tbaa !2247
  %18 = load %struct.ngx_queue_s** %prev23, align 4, !dbg !3161, !tbaa !2247
  store %struct.ngx_queue_s* %18, %struct.ngx_queue_s** %list, align 4, !dbg !3161, !tbaa !2247
  %next45 = getelementptr inbounds %struct.ngx_queue_s* %18, i32 0, i32 1, !dbg !3162
  store %struct.ngx_queue_s* %14, %struct.ngx_queue_s** %next45, align 4, !dbg !3162, !tbaa !2247
  br i1 %cmp8.lcssa, label %if.then47, label %if.end51, !dbg !3163

if.then47:                                        ; preds = %if.end21
  %19 = getelementptr inbounds %struct.ngx_queue_s** %list, i32 1, !dbg !3164
  %20 = load %struct.ngx_queue_s** %19, align 4, !dbg !3164, !tbaa !2247
  call fastcc void @ngx_http_create_locations_list(%struct.ngx_queue_s* %14, %struct.ngx_queue_s* %20), !dbg !3164
  br label %return, !dbg !3166

if.end51:                                         ; preds = %if.end21
  %21 = load %struct.ngx_queue_s** %list, align 4, !dbg !3167, !tbaa !2247
  store %struct.ngx_queue_s* %21, %struct.ngx_queue_s** %prev23, align 4, !dbg !3167, !tbaa !2247
  %next56 = getelementptr inbounds %struct.ngx_queue_s* %21, i32 0, i32 1, !dbg !3168
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3168
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3168
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3168
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3168
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3168
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %next56, align 4, !dbg !3168, !tbaa !2247
  store %struct.ngx_queue_s* %x.0.lcssa, %struct.ngx_queue_s** %next26, align 4, !dbg !3169, !tbaa !2247
  %prev58 = getelementptr inbounds %struct.ngx_queue_s* %x.0.lcssa, i32 0, i32 0, !dbg !3170
  %22 = load %struct.ngx_queue_s** %prev58, align 4, !dbg !3170, !tbaa !2247
  store %struct.ngx_queue_s* %22, %struct.ngx_queue_s** %list, align 4, !dbg !3170, !tbaa !2247
  %next64 = getelementptr inbounds %struct.ngx_queue_s* %22, i32 0, i32 1, !dbg !3171
  store %struct.ngx_queue_s* %14, %struct.ngx_queue_s** %next64, align 4, !dbg !3171, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3172
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3172
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3172
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3172
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2087), !dbg !3172
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %prev58, align 4, !dbg !3172, !tbaa !2247
  %23 = load %struct.ngx_queue_s** %next26, align 4, !dbg !3173, !tbaa !2247
  %24 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3173, !tbaa !2247
  %next68 = getelementptr inbounds %struct.ngx_queue_s* %24, i32 0, i32 1, !dbg !3173
  store %struct.ngx_queue_s* %23, %struct.ngx_queue_s** %next68, align 4, !dbg !3173, !tbaa !2247
  %25 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3174, !tbaa !2247
  %26 = load %struct.ngx_queue_s** %next26, align 4, !dbg !3174, !tbaa !2247
  %prev71 = getelementptr inbounds %struct.ngx_queue_s* %26, i32 0, i32 0, !dbg !3174
  store %struct.ngx_queue_s* %25, %struct.ngx_queue_s** %prev71, align 4, !dbg !3174, !tbaa !2247
  %27 = load %struct.ngx_queue_s** %prev23, align 4, !dbg !3175, !tbaa !2247
  store %struct.ngx_queue_s* %27, %struct.ngx_queue_s** %prev, align 4, !dbg !3175, !tbaa !2247
  %next75 = getelementptr inbounds %struct.ngx_queue_s* %27, i32 0, i32 1, !dbg !3176
  store %struct.ngx_queue_s* %locations, %struct.ngx_queue_s** %next75, align 4, !dbg !3176, !tbaa !2247
  %28 = getelementptr inbounds %struct.ngx_queue_s** %list, i32 1, !dbg !3177
  %29 = load %struct.ngx_queue_s** %28, align 4, !dbg !3177, !tbaa !2247
  call fastcc void @ngx_http_create_locations_list(%struct.ngx_queue_s* %14, %struct.ngx_queue_s* %29), !dbg !3177
  call fastcc void @ngx_http_create_locations_list(%struct.ngx_queue_s* %locations, %struct.ngx_queue_s* %x.0.lcssa), !dbg !3178
  br label %return, !dbg !3179

return:                                           ; preds = %entry, %if.end51, %if.then47, %if.then20, %if.then2
  ret void, !dbg !3179
}

define internal fastcc %struct.ngx_http_location_tree_node_s* @ngx_http_create_locations_tree(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %locations, i32 %prefix) nounwind {
entry:
  %tail = alloca %struct.ngx_queue_s, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2067), !dbg !3180
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %locations}, i64 0, metadata !2068), !dbg !3180
  call void @llvm.dbg.value(metadata !{i32 %prefix}, i64 0, metadata !2069), !dbg !3180
  call void @llvm.dbg.declare(metadata !{%struct.ngx_queue_s* %tail}, metadata !2073), !dbg !3181
  %call = call %struct.ngx_queue_s* @ngx_queue_middle(%struct.ngx_queue_s* %locations) nounwind, !dbg !3182
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %call}, i64 0, metadata !2072), !dbg !3182
  %name = getelementptr inbounds %struct.ngx_queue_s* %call, i32 2, !dbg !3183
  %0 = bitcast %struct.ngx_queue_s* %name to %struct.ngx_str_t**, !dbg !3183
  %1 = load %struct.ngx_str_t** %0, align 4, !dbg !3183, !tbaa !2247
  %len1 = getelementptr inbounds %struct.ngx_str_t* %1, i32 0, i32 0, !dbg !3183
  %2 = load i32* %len1, align 4, !dbg !3183, !tbaa !2269
  %3 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %prefix), !dbg !3183
  %4 = extractvalue { i32, i1 } %3, 0, !dbg !3183
  %5 = extractvalue { i32, i1 } %3, 1, !dbg !3183
  %6 = zext i32 %prefix to i64, !dbg !3183
  br i1 %5, label %ioc_bb, label %cont, !dbg !3183

ioc_bb:                                           ; preds = %entry
  %7 = zext i32 %2 to i64, !dbg !3183
  call void @__ioc_report_sub_overflow(i32 782, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @5, i32 0, i32 0), i64 %7, i64 %6, i8 5) nounwind, !dbg !3183
  br label %cont, !dbg !3183

cont:                                             ; preds = %entry, %ioc_bb
  call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !2070), !dbg !3183
  %pool = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 3, !dbg !3184
  %8 = load %struct.ngx_pool_s** %pool, align 4, !dbg !3184, !tbaa !2247
  %9 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %4, i32 22), !dbg !3184
  %10 = extractvalue { i32, i1 } %9, 0, !dbg !3184
  %11 = extractvalue { i32, i1 } %9, 1, !dbg !3184
  %12 = zext i32 %4 to i64, !dbg !3184
  br i1 %11, label %ioc_bb2, label %cont3, !dbg !3184

ioc_bb2:                                          ; preds = %cont
  call void @__ioc_report_add_overflow(i32 783, i32 92, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 22, i64 %12, i8 5) nounwind, !dbg !3184
  br label %cont3, !dbg !3184

cont3:                                            ; preds = %cont, %ioc_bb2
  %call4 = call i8* @ngx_palloc(%struct.ngx_pool_s* %8, i32 %10) nounwind, !dbg !3184
  %13 = bitcast i8* %call4 to %struct.ngx_http_location_tree_node_s*, !dbg !3184
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_location_tree_node_s* %13}, i64 0, metadata !2075), !dbg !3184
  %cmp = icmp eq i8* %call4, null, !dbg !3185
  br i1 %cmp, label %return, label %if.end, !dbg !3185

if.end:                                           ; preds = %cont3
  %left = bitcast i8* %call4 to %struct.ngx_http_location_tree_node_s**, !dbg !3186
  store %struct.ngx_http_location_tree_node_s* null, %struct.ngx_http_location_tree_node_s** %left, align 4, !dbg !3186, !tbaa !2247
  %right = getelementptr inbounds i8* %call4, i32 4, !dbg !3187
  %14 = bitcast i8* %right to %struct.ngx_http_location_tree_node_s**, !dbg !3187
  store %struct.ngx_http_location_tree_node_s* null, %struct.ngx_http_location_tree_node_s** %14, align 4, !dbg !3187, !tbaa !2247
  %tree = getelementptr inbounds i8* %call4, i32 8, !dbg !3188
  %15 = bitcast i8* %tree to %struct.ngx_http_location_tree_node_s**, !dbg !3188
  store %struct.ngx_http_location_tree_node_s* null, %struct.ngx_http_location_tree_node_s** %15, align 4, !dbg !3188, !tbaa !2247
  %exact = getelementptr inbounds %struct.ngx_queue_s* %call, i32 1, !dbg !3189
  %16 = bitcast %struct.ngx_queue_s* %exact to %struct.ngx_http_core_loc_conf_s**, !dbg !3189
  %17 = load %struct.ngx_http_core_loc_conf_s** %16, align 4, !dbg !3189, !tbaa !2247
  %exact5 = getelementptr inbounds i8* %call4, i32 12, !dbg !3189
  %18 = bitcast i8* %exact5 to %struct.ngx_http_core_loc_conf_s**, !dbg !3189
  store %struct.ngx_http_core_loc_conf_s* %17, %struct.ngx_http_core_loc_conf_s** %18, align 4, !dbg !3189, !tbaa !2247
  %inclusive = getelementptr inbounds %struct.ngx_queue_s* %call, i32 1, i32 1, !dbg !3190
  %19 = load %struct.ngx_queue_s** %inclusive, align 4, !dbg !3190
  %20 = bitcast %struct.ngx_queue_s* %19 to %struct.ngx_http_core_loc_conf_s*, !dbg !3190
  %inclusive6 = getelementptr inbounds i8* %call4, i32 16, !dbg !3190
  %21 = bitcast i8* %inclusive6 to %struct.ngx_http_core_loc_conf_s**, !dbg !3190
  store %struct.ngx_http_core_loc_conf_s* %20, %struct.ngx_http_core_loc_conf_s** %21, align 4, !dbg !3190, !tbaa !2247
  %22 = load %struct.ngx_http_core_loc_conf_s** %16, align 4, !dbg !3191, !tbaa !2247
  %tobool = icmp eq %struct.ngx_http_core_loc_conf_s* %22, null, !dbg !3191
  br i1 %tobool, label %lor.rhs, label %cont10, !dbg !3191

cont10:                                           ; preds = %if.end
  %23 = getelementptr %struct.ngx_http_core_loc_conf_s* %22, i32 0, i32 2, !dbg !3191
  %24 = bitcast i8* %23 to i32*, !dbg !3191
  %25 = load i32* %24, align 4, !dbg !3191
  %bf.clear = and i32 %25, 32, !dbg !3191
  %tobool11 = icmp eq i32 %bf.clear, 0, !dbg !3191
  br i1 %tobool11, label %lor.rhs, label %cont22, !dbg !3191

lor.rhs:                                          ; preds = %cont10, %if.end
  %26 = load %struct.ngx_queue_s** %inclusive, align 4, !dbg !3191
  %tobool13 = icmp eq %struct.ngx_queue_s* %26, null, !dbg !3191
  br i1 %tobool13, label %cont22, label %cont19, !dbg !3191

cont19:                                           ; preds = %lor.rhs
  %bf.field.offs15 = getelementptr %struct.ngx_queue_s* %26, i32 1, i32 1, !dbg !3191
  %27 = bitcast %struct.ngx_queue_s** %bf.field.offs15 to i32*, !dbg !3191
  %28 = load i32* %27, align 4, !dbg !3191
  %bf.clear16 = and i32 %28, 32, !dbg !3191
  %tobool20 = icmp ne i32 %bf.clear16, 0, !dbg !3191
  br label %cont22

cont22:                                           ; preds = %cont19, %lor.rhs, %cont10
  %29 = phi i1 [ true, %cont10 ], [ false, %lor.rhs ], [ %tobool20, %cont19 ]
  %conv = zext i1 %29 to i8
  %30 = getelementptr inbounds i8* %call4, i32 20
  store i8 %conv, i8* %30, align 1, !tbaa !2248
  %31 = icmp ult i32 %4, 256, !dbg !3192
  br i1 %31, label %cont25, label %ioc_bb24, !dbg !3192

ioc_bb24:                                         ; preds = %cont22
  call void @__ioc_report_conversion(i32 793, i32 27, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8]* @9, i32 0, i32 0), i64 %12, i8 0) nounwind, !dbg !3192
  br label %cont25, !dbg !3192

cont25:                                           ; preds = %ioc_bb24, %cont22
  %conv26 = trunc i32 %4 to i8, !dbg !3192
  %32 = getelementptr inbounds i8* %call4, i32 21, !dbg !3192
  store i8 %conv26, i8* %32, align 1, !dbg !3192, !tbaa !2248
  %name28 = getelementptr inbounds i8* %call4, i32 22, !dbg !3193
  %33 = load %struct.ngx_str_t** %0, align 4, !dbg !3193, !tbaa !2247
  %data = getelementptr inbounds %struct.ngx_str_t* %33, i32 0, i32 1, !dbg !3193
  %34 = load i8** %data, align 4, !dbg !3193, !tbaa !2247
  %arrayidx = getelementptr inbounds i8* %34, i32 %prefix, !dbg !3193
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %name28, i8* %arrayidx, i32 %4, i32 1, i1 false), !dbg !3193
  %prev = getelementptr inbounds %struct.ngx_queue_s* %locations, i32 0, i32 0, !dbg !3194
  %35 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3194, !tbaa !2247
  %prev30 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 0, !dbg !3194
  store %struct.ngx_queue_s* %35, %struct.ngx_queue_s** %prev30, align 4, !dbg !3194, !tbaa !2247
  %next = getelementptr inbounds %struct.ngx_queue_s* %35, i32 0, i32 1, !dbg !3195
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3195
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3195
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3195
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3195
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3195
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %next, align 4, !dbg !3195, !tbaa !2247
  %next32 = getelementptr inbounds %struct.ngx_queue_s* %tail, i32 0, i32 1, !dbg !3196
  store %struct.ngx_queue_s* %call, %struct.ngx_queue_s** %next32, align 4, !dbg !3196, !tbaa !2247
  %prev33 = getelementptr inbounds %struct.ngx_queue_s* %call, i32 0, i32 0, !dbg !3197
  %36 = load %struct.ngx_queue_s** %prev33, align 4, !dbg !3197, !tbaa !2247
  store %struct.ngx_queue_s* %36, %struct.ngx_queue_s** %prev, align 4, !dbg !3197, !tbaa !2247
  %next36 = getelementptr inbounds %struct.ngx_queue_s* %36, i32 0, i32 1, !dbg !3198
  store %struct.ngx_queue_s* %locations, %struct.ngx_queue_s** %next36, align 4, !dbg !3198, !tbaa !2247
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3199
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3199
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3199
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3199
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %tail}, i64 0, metadata !2073), !dbg !3199
  store %struct.ngx_queue_s* %tail, %struct.ngx_queue_s** %prev33, align 4, !dbg !3199, !tbaa !2247
  %37 = load %struct.ngx_queue_s** %prev, align 4, !dbg !3200, !tbaa !2247
  %cmp39 = icmp eq %struct.ngx_queue_s* %37, %locations, !dbg !3200
  br i1 %cmp39, label %inclusive68, label %if.end42, !dbg !3200

if.end42:                                         ; preds = %cont25
  %call43 = call fastcc %struct.ngx_http_location_tree_node_s* @ngx_http_create_locations_tree(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %locations, i32 %prefix), !dbg !3201
  store %struct.ngx_http_location_tree_node_s* %call43, %struct.ngx_http_location_tree_node_s** %left, align 4, !dbg !3201, !tbaa !2247
  %cmp46 = icmp eq %struct.ngx_http_location_tree_node_s* %call43, null, !dbg !3202
  br i1 %cmp46, label %return, label %if.end49, !dbg !3202

if.end49:                                         ; preds = %if.end42
  %38 = load %struct.ngx_queue_s** %prev33, align 4, !dbg !3203, !tbaa !2247
  %next51 = getelementptr inbounds %struct.ngx_queue_s* %call, i32 0, i32 1, !dbg !3203
  %39 = load %struct.ngx_queue_s** %next51, align 4, !dbg !3203, !tbaa !2247
  %prev52 = getelementptr inbounds %struct.ngx_queue_s* %39, i32 0, i32 0, !dbg !3203
  store %struct.ngx_queue_s* %38, %struct.ngx_queue_s** %prev52, align 4, !dbg !3203, !tbaa !2247
  %40 = load %struct.ngx_queue_s** %next51, align 4, !dbg !3204, !tbaa !2247
  %41 = load %struct.ngx_queue_s** %prev33, align 4, !dbg !3204, !tbaa !2247
  %next55 = getelementptr inbounds %struct.ngx_queue_s* %41, i32 0, i32 1, !dbg !3204
  store %struct.ngx_queue_s* %40, %struct.ngx_queue_s** %next55, align 4, !dbg !3204, !tbaa !2247
  %42 = load %struct.ngx_queue_s** %prev30, align 4, !dbg !3205, !tbaa !2247
  %cmp57 = icmp eq %struct.ngx_queue_s* %tail, %42, !dbg !3205
  br i1 %cmp57, label %inclusive68, label %if.end60, !dbg !3205

if.end60:                                         ; preds = %if.end49
  %call61 = call fastcc %struct.ngx_http_location_tree_node_s* @ngx_http_create_locations_tree(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %tail, i32 %prefix), !dbg !3206
  store %struct.ngx_http_location_tree_node_s* %call61, %struct.ngx_http_location_tree_node_s** %14, align 4, !dbg !3206, !tbaa !2247
  %cmp64 = icmp eq %struct.ngx_http_location_tree_node_s* %call61, null, !dbg !3207
  br i1 %cmp64, label %return, label %inclusive68, !dbg !3207

inclusive68:                                      ; preds = %if.end60, %if.end49, %cont25
  %list = getelementptr inbounds %struct.ngx_queue_s* %call, i32 3, i32 1, !dbg !3208
  %43 = bitcast %struct.ngx_queue_s** %list to %struct.ngx_queue_s*, !dbg !3208
  %44 = load %struct.ngx_queue_s** %list, align 4, !dbg !3208, !tbaa !2247
  %cmp71 = icmp eq %struct.ngx_queue_s* %43, %44, !dbg !3208
  br i1 %cmp71, label %return, label %if.end74, !dbg !3208

if.end74:                                         ; preds = %inclusive68
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %prefix, i32 %4), !dbg !3209
  %46 = extractvalue { i32, i1 } %45, 0, !dbg !3209
  %47 = extractvalue { i32, i1 } %45, 1, !dbg !3209
  br i1 %47, label %ioc_bb76, label %cont77, !dbg !3209

ioc_bb76:                                         ; preds = %if.end74
  call void @__ioc_report_add_overflow(i32 826, i32 71, i8* getelementptr inbounds ([20 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8]* @10, i32 0, i32 0), i64 %6, i64 %12, i8 5) nounwind, !dbg !3209
  br label %cont77, !dbg !3209

cont77:                                           ; preds = %if.end74, %ioc_bb76
  %call78 = call fastcc %struct.ngx_http_location_tree_node_s* @ngx_http_create_locations_tree(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %43, i32 %46), !dbg !3209
  store %struct.ngx_http_location_tree_node_s* %call78, %struct.ngx_http_location_tree_node_s** %15, align 4, !dbg !3209, !tbaa !2247
  %cmp81 = icmp eq %struct.ngx_http_location_tree_node_s* %call78, null, !dbg !3210
  %. = select i1 %cmp81, %struct.ngx_http_location_tree_node_s* null, %struct.ngx_http_location_tree_node_s* %13, !dbg !3211
  br label %return, !dbg !3211

return:                                           ; preds = %cont77, %inclusive68, %if.end60, %if.end42, %cont3
  %retval.0 = phi %struct.ngx_http_location_tree_node_s* [ null, %cont3 ], [ null, %if.end42 ], [ null, %if.end60 ], [ %13, %inclusive68 ], [ %., %cont77 ]
  ret %struct.ngx_http_location_tree_node_s* %retval.0, !dbg !3213
}

declare %struct.ngx_queue_s* @ngx_queue_middle(%struct.ngx_queue_s*)

declare i32 @strncmp(i8* nocapture, i8* nocapture, i32) nounwind readonly

declare void @ngx_queue_sort(%struct.ngx_queue_s*, i32 (%struct.ngx_queue_s*, %struct.ngx_queue_s*)*)

define internal i32 @ngx_http_cmp_locations(%struct.ngx_queue_s* nocapture %one, %struct.ngx_queue_s* nocapture %two) nounwind readonly {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %one}, i64 0, metadata !2132), !dbg !3214
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %two}, i64 0, metadata !2133), !dbg !3214
  %exact = getelementptr inbounds %struct.ngx_queue_s* %one, i32 1, !dbg !3215
  %0 = bitcast %struct.ngx_queue_s* %exact to %struct.ngx_http_core_loc_conf_s**, !dbg !3215
  %1 = load %struct.ngx_http_core_loc_conf_s** %0, align 4, !dbg !3215, !tbaa !2247
  %tobool = icmp eq %struct.ngx_http_core_loc_conf_s* %1, null, !dbg !3215
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !3215

cond.false:                                       ; preds = %entry
  %inclusive = getelementptr inbounds %struct.ngx_queue_s* %one, i32 1, i32 1, !dbg !3215
  %2 = load %struct.ngx_queue_s** %inclusive, align 4, !dbg !3215
  %3 = bitcast %struct.ngx_queue_s* %2 to %struct.ngx_http_core_loc_conf_s*, !dbg !3215
  br label %cond.end, !dbg !3215

cond.end:                                         ; preds = %entry, %cond.false
  %cond = phi %struct.ngx_http_core_loc_conf_s* [ %3, %cond.false ], [ %1, %entry ], !dbg !3215
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %cond}, i64 0, metadata !2136), !dbg !3215
  %exact2 = getelementptr inbounds %struct.ngx_queue_s* %two, i32 1, !dbg !3216
  %4 = bitcast %struct.ngx_queue_s* %exact2 to %struct.ngx_http_core_loc_conf_s**, !dbg !3216
  %5 = load %struct.ngx_http_core_loc_conf_s** %4, align 4, !dbg !3216, !tbaa !2247
  %tobool3 = icmp eq %struct.ngx_http_core_loc_conf_s* %5, null, !dbg !3216
  br i1 %tobool3, label %cond.false6, label %cond.end8, !dbg !3216

cond.false6:                                      ; preds = %cond.end
  %inclusive7 = getelementptr inbounds %struct.ngx_queue_s* %two, i32 1, i32 1, !dbg !3216
  %6 = load %struct.ngx_queue_s** %inclusive7, align 4, !dbg !3216
  %7 = bitcast %struct.ngx_queue_s* %6 to %struct.ngx_http_core_loc_conf_s*, !dbg !3216
  br label %cond.end8, !dbg !3216

cond.end8:                                        ; preds = %cond.end, %cond.false6
  %cond9 = phi %struct.ngx_http_core_loc_conf_s* [ %7, %cond.false6 ], [ %5, %cond.end ], !dbg !3216
  tail call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %cond9}, i64 0, metadata !2137), !dbg !3216
  %8 = getelementptr %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 2, !dbg !3217
  %9 = bitcast i8* %8 to i32*, !dbg !3217
  %10 = load i32* %9, align 4, !dbg !3217
  %bf.clear = and i32 %10, 1, !dbg !3217
  %tobool10 = icmp eq i32 %bf.clear, 0, !dbg !3217
  %11 = getelementptr %struct.ngx_http_core_loc_conf_s* %cond9, i32 0, i32 2, !dbg !3218
  %12 = bitcast i8* %11 to i32*, !dbg !3218
  %13 = load i32* %12, align 4, !dbg !3218
  %bf.clear19 = and i32 %13, 1, !dbg !3218
  br i1 %tobool10, label %cont22, label %land.lhs.true, !dbg !3217

land.lhs.true:                                    ; preds = %cond.end8
  %14 = xor i32 %bf.clear19, 1, !dbg !3217
  ret i32 %14, !dbg !3217

cont22:                                           ; preds = %cond.end8
  %tobool23 = icmp eq i32 %bf.clear19, 0, !dbg !3218
  br i1 %tobool23, label %lor.lhs.false, label %return, !dbg !3218

lor.lhs.false:                                    ; preds = %cont22
  %15 = getelementptr %struct.ngx_http_core_loc_conf_s* %cond9, i32 0, i32 2, !dbg !3219
  %16 = bitcast i8* %15 to i32*, !dbg !3219
  %17 = load i32* %16, align 4, !dbg !3219
  %bf.clear35 = and i32 %17, 1, !dbg !3219
  %tobool39 = icmp eq i32 %bf.clear35, 0, !dbg !3219
  br i1 %tobool39, label %cont46, label %return, !dbg !3219

cont46:                                           ; preds = %lor.lhs.false
  %bf.clear43 = and i32 %10, 4, !dbg !3220
  %tobool47 = icmp eq i32 %bf.clear43, 0, !dbg !3220
  %bf.clear59 = and i32 %17, 4, !dbg !3221
  %tobool63 = icmp eq i32 %bf.clear59, 0, !dbg !3221
  br i1 %tobool47, label %cont62, label %land.lhs.true48, !dbg !3220

land.lhs.true48:                                  ; preds = %cont46
  br i1 %tobool63, label %return, label %cont79, !dbg !3220

cont62:                                           ; preds = %cont46
  br i1 %tobool63, label %if.end84, label %return, !dbg !3221

cont79:                                           ; preds = %land.lhs.true48
  %bf.clear76 = and i32 %17, 4, !dbg !3222
  %tobool80 = icmp eq i32 %bf.clear76, 0, !dbg !3222
  br i1 %tobool80, label %if.end84, label %if.then81, !dbg !3222

if.then81:                                        ; preds = %cont79
  %data = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 0, i32 1, !dbg !3223
  %18 = load i8** %data, align 4, !dbg !3223, !tbaa !2247
  %data83 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond9, i32 0, i32 0, i32 1, !dbg !3223
  %19 = load i8** %data83, align 4, !dbg !3223, !tbaa !2247
  %call = tail call i32 @strcmp(i8* %18, i8* %19) nounwind, !dbg !3223
  br label %return, !dbg !3223

if.end84:                                         ; preds = %cont62, %cont79
  %regex = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 1, !dbg !3224
  %20 = load %struct.ngx_http_regex_t** %regex, align 4, !dbg !3224, !tbaa !2247
  %tobool85 = icmp eq %struct.ngx_http_regex_t* %20, null, !dbg !3224
  %regex94.phi.trans.insert = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond9, i32 0, i32 1
  %.pre = load %struct.ngx_http_regex_t** %regex94.phi.trans.insert, align 4, !dbg !3225, !tbaa !2247
  %tobool95 = icmp eq %struct.ngx_http_regex_t* %.pre, null, !dbg !3225
  br i1 %tobool85, label %land.lhs.true93, label %land.lhs.true86, !dbg !3224

land.lhs.true86:                                  ; preds = %if.end84
  %.160 = zext i1 %tobool95 to i32, !dbg !3224
  br label %return, !dbg !3224

land.lhs.true93:                                  ; preds = %if.end84
  br i1 %tobool95, label %if.end106, label %return, !dbg !3225

if.end106:                                        ; preds = %land.lhs.true93
  %data110 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 0, i32 1, !dbg !3226
  %21 = load i8** %data110, align 4, !dbg !3226, !tbaa !2247
  %data112 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond9, i32 0, i32 0, i32 1, !dbg !3226
  %22 = load i8** %data112, align 4, !dbg !3226, !tbaa !2247
  %call113 = tail call i32 @strcmp(i8* %21, i8* %22) nounwind, !dbg !3226
  tail call void @llvm.dbg.value(metadata !{i32 %call113}, i64 0, metadata !2134), !dbg !3226
  %cmp = icmp eq i32 %call113, 0, !dbg !3227
  br i1 %cmp, label %land.lhs.true114, label %if.end126, !dbg !3227

land.lhs.true114:                                 ; preds = %if.end106
  %bf.clear116 = and i32 %10, 8, !dbg !3227
  %tobool117 = icmp eq i32 %bf.clear116, 0, !dbg !3227
  br i1 %tobool117, label %cont123, label %if.end126, !dbg !3227

cont123:                                          ; preds = %land.lhs.true114
  %bf.clear120 = and i32 %17, 8, !dbg !3227
  %tobool124 = icmp eq i32 %bf.clear120, 0, !dbg !3227
  br i1 %tobool124, label %if.end126, label %return, !dbg !3227

if.end126:                                        ; preds = %cont123, %land.lhs.true114, %if.end106
  br label %return, !dbg !3228

return:                                           ; preds = %land.lhs.true86, %cont123, %land.lhs.true93, %cont62, %land.lhs.true48, %lor.lhs.false, %cont22, %if.end126, %if.then81
  %retval.0 = phi i32 [ %call, %if.then81 ], [ %call113, %if.end126 ], [ -1, %cont22 ], [ 0, %lor.lhs.false ], [ 1, %land.lhs.true48 ], [ -1, %cont62 ], [ -1, %land.lhs.true93 ], [ 1, %cont123 ], [ %.160, %land.lhs.true86 ]
  ret i32 %retval.0, !dbg !3229
}

define internal fastcc i8* @ngx_http_merge_locations(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %locations, i8** nocapture %loc_conf, %struct.ngx_http_module_t* nocapture %module, i32 %ctx_index) nounwind {
entry:
  %saved = alloca %struct.ngx_http_conf_ctx_t, align 4
  call void @llvm.dbg.value(metadata !{%struct.ngx_conf_s* %cf}, i64 0, metadata !2168), !dbg !3230
  call void @llvm.dbg.value(metadata !{%struct.ngx_queue_s* %locations}, i64 0, metadata !2169), !dbg !3230
  call void @llvm.dbg.value(metadata !{i8** %loc_conf}, i64 0, metadata !2170), !dbg !3230
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_module_t* %module}, i64 0, metadata !2171), !dbg !3230
  call void @llvm.dbg.value(metadata !{i32 %ctx_index}, i64 0, metadata !2172), !dbg !3230
  call void @llvm.dbg.declare(metadata !{%struct.ngx_http_conf_ctx_t* %saved}, metadata !2177), !dbg !3231
  %cmp = icmp eq %struct.ngx_queue_s* %locations, null, !dbg !3232
  br i1 %cmp, label %return, label %if.end, !dbg !3232

if.end:                                           ; preds = %entry
  %ctx1 = getelementptr inbounds %struct.ngx_conf_s* %cf, i32 0, i32 7, !dbg !3233
  %0 = load i8** %ctx1, align 4, !dbg !3233, !tbaa !2247
  %1 = bitcast %struct.ngx_http_conf_ctx_t* %saved to i8*, !dbg !3234
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %1, i8* %0, i32 12, i32 4, i1 false), !dbg !3234, !tbaa.struct !3235
  %loc_conf5 = getelementptr inbounds i8* %0, i32 8, !dbg !3236
  %2 = bitcast i8* %loc_conf5 to i8***, !dbg !3236
  %merge_loc_conf = getelementptr inbounds %struct.ngx_http_module_t* %module, i32 0, i32 7, !dbg !3239
  %arrayidx = getelementptr inbounds i8** %loc_conf, i32 %ctx_index, !dbg !3239
  br label %for.cond, !dbg !3240

for.cond:                                         ; preds = %if.end10, %if.end
  %locations.pn = phi %struct.ngx_queue_s* [ %locations, %if.end ], [ %q.0, %if.end10 ]
  %q.0.in = getelementptr inbounds %struct.ngx_queue_s* %locations.pn, i32 0, i32 1, !dbg !3240
  %q.0 = load %struct.ngx_queue_s** %q.0.in, align 4, !dbg !3240
  %cmp2 = icmp eq %struct.ngx_queue_s* %q.0, %locations, !dbg !3240
  br i1 %cmp2, label %for.end, label %for.body, !dbg !3240

for.body:                                         ; preds = %for.cond
  %exact = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 1, !dbg !3241
  %3 = bitcast %struct.ngx_queue_s* %exact to %struct.ngx_http_core_loc_conf_s**, !dbg !3241
  %4 = load %struct.ngx_http_core_loc_conf_s** %3, align 4, !dbg !3241, !tbaa !2247
  %tobool = icmp eq %struct.ngx_http_core_loc_conf_s* %4, null, !dbg !3241
  br i1 %tobool, label %cond.false, label %cond.end, !dbg !3241

cond.false:                                       ; preds = %for.body
  %inclusive = getelementptr inbounds %struct.ngx_queue_s* %q.0, i32 1, i32 1, !dbg !3241
  %5 = load %struct.ngx_queue_s** %inclusive, align 4, !dbg !3241
  %6 = bitcast %struct.ngx_queue_s* %5 to %struct.ngx_http_core_loc_conf_s*, !dbg !3241
  br label %cond.end, !dbg !3241

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi %struct.ngx_http_core_loc_conf_s* [ %6, %cond.false ], [ %4, %for.body ], !dbg !3241
  call void @llvm.dbg.value(metadata !{%struct.ngx_http_core_loc_conf_s* %cond}, i64 0, metadata !2178), !dbg !3241
  %loc_conf4 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 5, !dbg !3236
  %7 = load i8*** %loc_conf4, align 4, !dbg !3236, !tbaa !2247
  store i8** %7, i8*** %2, align 4, !dbg !3236, !tbaa !2247
  %8 = load i8* (%struct.ngx_conf_s*, i8*, i8*)** %merge_loc_conf, align 4, !dbg !3239, !tbaa !2247
  %9 = load i8** %arrayidx, align 4, !dbg !3239, !tbaa !2247
  %10 = load i8*** %loc_conf4, align 4, !dbg !3239, !tbaa !2247
  %arrayidx7 = getelementptr inbounds i8** %10, i32 %ctx_index, !dbg !3239
  %11 = load i8** %arrayidx7, align 4, !dbg !3239, !tbaa !2247
  %call = call i8* %8(%struct.ngx_conf_s* %cf, i8* %9, i8* %11) nounwind, !dbg !3239
  call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !2173), !dbg !3239
  %cmp8 = icmp eq i8* %call, null, !dbg !3242
  br i1 %cmp8, label %if.end10, label %return, !dbg !3242

if.end10:                                         ; preds = %cond.end
  %locations11 = getelementptr inbounds %struct.ngx_http_core_loc_conf_s* %cond, i32 0, i32 74, !dbg !3243
  %12 = load %struct.ngx_queue_s** %locations11, align 4, !dbg !3243, !tbaa !2247
  %13 = load i8*** %loc_conf4, align 4, !dbg !3243, !tbaa !2247
  %call13 = call fastcc i8* @ngx_http_merge_locations(%struct.ngx_conf_s* %cf, %struct.ngx_queue_s* %12, i8** %13, %struct.ngx_http_module_t* %module, i32 %ctx_index), !dbg !3243
  call void @llvm.dbg.value(metadata !{i8* %call13}, i64 0, metadata !2173), !dbg !3243
  %cmp14 = icmp eq i8* %call13, null, !dbg !3244
  br i1 %cmp14, label %for.cond, label %return, !dbg !3244

for.end:                                          ; preds = %for.cond
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* %0, i8* %1, i32 12, i32 4, i1 false), !dbg !3245, !tbaa.struct !3235
  br label %return, !dbg !3246

return:                                           ; preds = %if.end10, %cond.end, %entry, %for.end
  %retval.0 = phi i8* [ null, %for.end ], [ null, %entry ], [ %call13, %if.end10 ], [ %call, %cond.end ]
  ret i8* %retval.0, !dbg !3247
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) nounwind

declare void @llvm.lifetime.start(i64, i8* nocapture) nounwind

declare void @llvm.lifetime.end(i64, i8* nocapture) nounwind

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 12, metadata !"src/http/ngx_http.c", metadata !"/home/tm/phase2/C-NGIN/src", metadata !"clang version 3.2  (git@github.com:jikk/ioc-llvm.git 648c847764c7c84408372dca1152949441147ef8)", i1 true, i1 true, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !2180} ; [ DW_TAG_compile_unit ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c] [DW_LANG_C99]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !1598, metadata !1728, metadata !1758, metadata !1786, metadata !1796, metadata !1819, metadata !1831, metadata !1840, metadata !1857, metadata !1898, metadata !1911, metadata !1931, metadata !1955, metadata !1966, metadata !1984, metadata !1996, metadata !2006, metadata !2024, metadata !2045, metadata !2050, metadata !2062, metadata !2076, metadata !2090, metadata !2106, metadata !2125, metadata !2147, metadata !2163}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_location", metadata !"ngx_http_add_location", metadata !"", metadata !6, i32 587, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*, %struct.ngx_queue_s**, %struct.ngx_http_core_loc_conf_s*)* @ngx_http_add_location, null, null, metadata !1580, i32 588} ; [ DW_TAG_subprogram ] [line 587] [def] [scope 588] [ngx_http_add_location]
!6 = metadata !{i32 786473, metadata !"src/http/ngx_http.c", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!8 = metadata !{metadata !9, metadata !14, metadata !462, metadata !463}
!9 = metadata !{i32 786454, null, metadata !"ngx_int_t", metadata !10, i32 78, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_int_t] [line 78, size 0, align 0, offset 0] [from intptr_t]
!10 = metadata !{i32 786473, metadata !"src/core/ngx_conf_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!11 = metadata !{i32 786454, null, metadata !"intptr_t", metadata !10, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_typedef ] [intptr_t] [line 268, size 0, align 0, offset 0] [from __intptr_t]
!12 = metadata !{i32 786454, null, metadata !"__intptr_t", metadata !10, i32 189, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [__intptr_t] [line 189, size 0, align 0, offset 0] [from int]
!13 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_t]
!15 = metadata !{i32 786454, null, metadata !"ngx_conf_t", metadata !10, i32 13, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [ngx_conf_t] [line 13, size 0, align 0, offset 0] [from ngx_conf_s]
!16 = metadata !{i32 786451, null, metadata !"ngx_conf_s", metadata !10, i32 166, i64 384, i64 32, i32 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_conf_s] [line 166, size 384, align 32, offset 0] [from ]
!17 = metadata !{metadata !18, metadata !21, metadata !205, metadata !432, metadata !433, metadata !434, metadata !442, metadata !443, metadata !444, metadata !445, metadata !446, metadata !461}
!18 = metadata !{i32 786445, metadata !16, metadata !"name", metadata !10, i32 167, i64 32, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [name] [line 167, size 32, align 32, offset 0] [from ]
!19 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from char]
!20 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{i32 786445, metadata !16, metadata !"args", metadata !10, i32 168, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [args] [line 168, size 32, align 32, offset 32] [from ]
!22 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_array_t]
!23 = metadata !{i32 786454, null, metadata !"ngx_array_t", metadata !10, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [ngx_array_t] [line 18, size 0, align 0, offset 0] [from ngx_array_s]
!24 = metadata !{i32 786451, null, metadata !"ngx_array_s", metadata !25, i32 16, i64 160, i64 32, i32 0, i32 0, null, metadata !26, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_array_s] [line 16, size 160, align 32, offset 0] [from ]
!25 = metadata !{i32 786473, metadata !"src/core/ngx_array.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!26 = metadata !{metadata !27, metadata !29, metadata !33, metadata !36, metadata !37}
!27 = metadata !{i32 786445, metadata !24, metadata !"elts", metadata !25, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [elts] [line 17, size 32, align 32, offset 0] [from ]
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!29 = metadata !{i32 786445, metadata !24, metadata !"nelts", metadata !25, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [nelts] [line 18, size 32, align 32, offset 32] [from ngx_uint_t]
!30 = metadata !{i32 786454, null, metadata !"ngx_uint_t", metadata !10, i32 79, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_typedef ] [ngx_uint_t] [line 79, size 0, align 0, offset 0] [from uintptr_t]
!31 = metadata !{i32 786454, null, metadata !"uintptr_t", metadata !10, i32 129, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [uintptr_t] [line 129, size 0, align 0, offset 0] [from unsigned int]
!32 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!33 = metadata !{i32 786445, metadata !24, metadata !"size", metadata !25, i32 19, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [size] [line 19, size 32, align 32, offset 64] [from size_t]
!34 = metadata !{i32 786454, null, metadata !"size_t", metadata !35, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [size_t] [line 32, size 0, align 0, offset 0] [from unsigned int]
!35 = metadata !{i32 786473, metadata !"src/core/ngx_string.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!36 = metadata !{i32 786445, metadata !24, metadata !"nalloc", metadata !25, i32 20, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [nalloc] [line 20, size 32, align 32, offset 96] [from ngx_uint_t]
!37 = metadata !{i32 786445, metadata !24, metadata !"pool", metadata !25, i32 21, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 21, size 32, align 32, offset 128] [from ]
!38 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !39} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!39 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !25, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!40 = metadata !{i32 786451, null, metadata !"ngx_pool_s", metadata !41, i32 57, i64 320, i64 32, i32 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_s] [line 57, size 320, align 32, offset 0] [from ]
!41 = metadata !{i32 786473, metadata !"src/core/ngx_palloc.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!42 = metadata !{metadata !43, metadata !57, metadata !58, metadata !59, metadata !185, metadata !192, metadata !204}
!43 = metadata !{i32 786445, metadata !40, metadata !"d", metadata !41, i32 58, i64 128, i64 32, i64 0, i32 0, metadata !44} ; [ DW_TAG_member ] [d] [line 58, size 128, align 32, offset 0] [from ngx_pool_data_t]
!44 = metadata !{i32 786454, null, metadata !"ngx_pool_data_t", metadata !41, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !45} ; [ DW_TAG_typedef ] [ngx_pool_data_t] [line 54, size 0, align 0, offset 0] [from ]
!45 = metadata !{i32 786451, null, metadata !"", metadata !41, i32 49, i64 128, i64 32, i32 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 49, size 128, align 32, offset 0] [from ]
!46 = metadata !{metadata !47, metadata !52, metadata !53, metadata !56}
!47 = metadata !{i32 786445, metadata !45, metadata !"last", metadata !41, i32 50, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [last] [line 50, size 32, align 32, offset 0] [from ]
!48 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from u_char]
!49 = metadata !{i32 786454, null, metadata !"u_char", metadata !35, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ] [u_char] [line 34, size 0, align 0, offset 0] [from __u_char]
!50 = metadata !{i32 786454, null, metadata !"__u_char", metadata !35, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_typedef ] [__u_char] [line 31, size 0, align 0, offset 0] [from unsigned char]
!51 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!52 = metadata !{i32 786445, metadata !45, metadata !"end", metadata !41, i32 51, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [end] [line 51, size 32, align 32, offset 32] [from ]
!53 = metadata !{i32 786445, metadata !45, metadata !"next", metadata !41, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !54} ; [ DW_TAG_member ] [next] [line 52, size 32, align 32, offset 64] [from ]
!54 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_t]
!55 = metadata !{i32 786454, null, metadata !"ngx_pool_t", metadata !41, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_typedef ] [ngx_pool_t] [line 15, size 0, align 0, offset 0] [from ngx_pool_s]
!56 = metadata !{i32 786445, metadata !45, metadata !"failed", metadata !41, i32 53, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [failed] [line 53, size 32, align 32, offset 96] [from ngx_uint_t]
!57 = metadata !{i32 786445, metadata !40, metadata !"max", metadata !41, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [max] [line 59, size 32, align 32, offset 128] [from size_t]
!58 = metadata !{i32 786445, metadata !40, metadata !"current", metadata !41, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !54} ; [ DW_TAG_member ] [current] [line 60, size 32, align 32, offset 160] [from ]
!59 = metadata !{i32 786445, metadata !40, metadata !"chain", metadata !41, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !60} ; [ DW_TAG_member ] [chain] [line 61, size 32, align 32, offset 192] [from ]
!60 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!61 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !41, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!62 = metadata !{i32 786451, null, metadata !"ngx_chain_s", metadata !63, i32 59, i64 64, i64 32, i32 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_chain_s] [line 59, size 64, align 32, offset 0] [from ]
!63 = metadata !{i32 786473, metadata !"src/core/ngx_buf.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!64 = metadata !{metadata !65, metadata !182}
!65 = metadata !{i32 786445, metadata !62, metadata !"buf", metadata !63, i32 60, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [buf] [line 60, size 32, align 32, offset 0] [from ]
!66 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !67} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_buf_t]
!67 = metadata !{i32 786454, null, metadata !"ngx_buf_t", metadata !63, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ] [ngx_buf_t] [line 18, size 0, align 0, offset 0] [from ngx_buf_s]
!68 = metadata !{i32 786451, null, metadata !"ngx_buf_s", metadata !63, i32 20, i64 416, i64 32, i32 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_buf_s] [line 20, size 416, align 32, offset 0] [from ]
!69 = metadata !{metadata !70, metadata !71, metadata !72, metadata !77, metadata !78, metadata !79, metadata !80, metadata !82, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181}
!70 = metadata !{i32 786445, metadata !68, metadata !"pos", metadata !63, i32 21, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [pos] [line 21, size 32, align 32, offset 0] [from ]
!71 = metadata !{i32 786445, metadata !68, metadata !"last", metadata !63, i32 22, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [last] [line 22, size 32, align 32, offset 32] [from ]
!72 = metadata !{i32 786445, metadata !68, metadata !"file_pos", metadata !63, i32 23, i64 64, i64 32, i64 64, i32 0, metadata !73} ; [ DW_TAG_member ] [file_pos] [line 23, size 64, align 32, offset 64] [from off_t]
!73 = metadata !{i32 786454, null, metadata !"off_t", metadata !63, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !74} ; [ DW_TAG_typedef ] [off_t] [line 89, size 0, align 0, offset 0] [from __off64_t]
!74 = metadata !{i32 786454, null, metadata !"__off64_t", metadata !63, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__off64_t] [line 142, size 0, align 0, offset 0] [from __quad_t]
!75 = metadata !{i32 786454, null, metadata !"__quad_t", metadata !63, i32 56, i64 0, i64 0, i64 0, i32 0, metadata !76} ; [ DW_TAG_typedef ] [__quad_t] [line 56, size 0, align 0, offset 0] [from long long int]
!76 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 32, offset 0, enc DW_ATE_signed]
!77 = metadata !{i32 786445, metadata !68, metadata !"file_last", metadata !63, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [file_last] [line 24, size 64, align 32, offset 128] [from off_t]
!78 = metadata !{i32 786445, metadata !68, metadata !"start", metadata !63, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [start] [line 26, size 32, align 32, offset 192] [from ]
!79 = metadata !{i32 786445, metadata !68, metadata !"end", metadata !63, i32 27, i64 32, i64 32, i64 224, i32 0, metadata !48} ; [ DW_TAG_member ] [end] [line 27, size 32, align 32, offset 224] [from ]
!80 = metadata !{i32 786445, metadata !68, metadata !"tag", metadata !63, i32 28, i64 32, i64 32, i64 256, i32 0, metadata !81} ; [ DW_TAG_member ] [tag] [line 28, size 32, align 32, offset 256] [from ngx_buf_tag_t]
!81 = metadata !{i32 786454, null, metadata !"ngx_buf_tag_t", metadata !63, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ] [ngx_buf_tag_t] [line 16, size 0, align 0, offset 0] [from ]
!82 = metadata !{i32 786445, metadata !68, metadata !"file", metadata !63, i32 29, i64 32, i64 32, i64 288, i32 0, metadata !83} ; [ DW_TAG_member ] [file] [line 29, size 32, align 32, offset 288] [from ]
!83 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_file_t]
!84 = metadata !{i32 786454, null, metadata !"ngx_file_t", metadata !63, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [ngx_file_t] [line 21, size 0, align 0, offset 0] [from ngx_file_s]
!85 = metadata !{i32 786451, null, metadata !"ngx_file_s", metadata !86, i32 16, i64 1056, i64 32, i32 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_file_s] [line 16, size 1056, align 32, offset 0] [from ]
!86 = metadata !{i32 786473, metadata !"src/core/ngx_file.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!87 = metadata !{metadata !88, metadata !90, metadata !96, metadata !137, metadata !138, metadata !139, metadata !167, metadata !168}
!88 = metadata !{i32 786445, metadata !85, metadata !"fd", metadata !86, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [fd] [line 17, size 32, align 32, offset 0] [from ngx_fd_t]
!89 = metadata !{i32 786454, null, metadata !"ngx_fd_t", metadata !86, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [ngx_fd_t] [line 16, size 0, align 0, offset 0] [from int]
!90 = metadata !{i32 786445, metadata !85, metadata !"name", metadata !86, i32 18, i64 64, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 18, size 64, align 32, offset 32] [from ngx_str_t]
!91 = metadata !{i32 786454, null, metadata !"ngx_str_t", metadata !6, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [ngx_str_t] [line 19, size 0, align 0, offset 0] [from ]
!92 = metadata !{i32 786451, null, metadata !"", metadata !35, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!93 = metadata !{metadata !94, metadata !95}
!94 = metadata !{i32 786445, metadata !92, metadata !"len", metadata !35, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ] [len] [line 17, size 32, align 32, offset 0] [from size_t]
!95 = metadata !{i32 786445, metadata !92, metadata !"data", metadata !35, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [data] [line 18, size 32, align 32, offset 32] [from ]
!96 = metadata !{i32 786445, metadata !85, metadata !"info", metadata !86, i32 19, i64 768, i64 32, i64 96, i32 0, metadata !97} ; [ DW_TAG_member ] [info] [line 19, size 768, align 32, offset 96] [from ngx_file_info_t]
!97 = metadata !{i32 786454, null, metadata !"ngx_file_info_t", metadata !86, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !98} ; [ DW_TAG_typedef ] [ngx_file_info_t] [line 17, size 0, align 0, offset 0] [from stat]
!98 = metadata !{i32 786451, null, metadata !"stat", metadata !99, i32 46, i64 768, i64 32, i32 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_structure_type ] [stat] [line 46, size 768, align 32, offset 0] [from ]
!99 = metadata !{i32 786473, metadata !"/usr/include/bits/stat.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!100 = metadata !{metadata !101, metadata !105, metadata !107, metadata !110, metadata !112, metadata !114, metadata !116, metadata !118, metadata !119, metadata !120, metadata !121, metadata !124, metadata !126, metadata !133, metadata !134, metadata !135}
!101 = metadata !{i32 786445, metadata !98, metadata !"st_dev", metadata !99, i32 48, i64 64, i64 32, i64 0, i32 0, metadata !102} ; [ DW_TAG_member ] [st_dev] [line 48, size 64, align 32, offset 0] [from __dev_t]
!102 = metadata !{i32 786454, null, metadata !"__dev_t", metadata !99, i32 134, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__dev_t] [line 134, size 0, align 0, offset 0] [from __u_quad_t]
!103 = metadata !{i32 786454, null, metadata !"__u_quad_t", metadata !99, i32 57, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_typedef ] [__u_quad_t] [line 57, size 0, align 0, offset 0] [from long long unsigned int]
!104 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long long unsigned int] [line 0, size 64, align 32, offset 0, enc DW_ATE_unsigned]
!105 = metadata !{i32 786445, metadata !98, metadata !"__pad1", metadata !99, i32 50, i64 16, i64 16, i64 64, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad1] [line 50, size 16, align 16, offset 64] [from unsigned short]
!106 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!107 = metadata !{i32 786445, metadata !98, metadata !"__st_ino", metadata !99, i32 55, i64 32, i64 32, i64 96, i32 0, metadata !108} ; [ DW_TAG_member ] [__st_ino] [line 55, size 32, align 32, offset 96] [from __ino_t]
!108 = metadata !{i32 786454, null, metadata !"__ino_t", metadata !99, i32 137, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [__ino_t] [line 137, size 0, align 0, offset 0] [from long unsigned int]
!109 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!110 = metadata !{i32 786445, metadata !98, metadata !"st_mode", metadata !99, i32 58, i64 32, i64 32, i64 128, i32 0, metadata !111} ; [ DW_TAG_member ] [st_mode] [line 58, size 32, align 32, offset 128] [from __mode_t]
!111 = metadata !{i32 786454, null, metadata !"__mode_t", metadata !99, i32 139, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [__mode_t] [line 139, size 0, align 0, offset 0] [from unsigned int]
!112 = metadata !{i32 786445, metadata !98, metadata !"st_nlink", metadata !99, i32 59, i64 32, i64 32, i64 160, i32 0, metadata !113} ; [ DW_TAG_member ] [st_nlink] [line 59, size 32, align 32, offset 160] [from __nlink_t]
!113 = metadata !{i32 786454, null, metadata !"__nlink_t", metadata !99, i32 140, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [__nlink_t] [line 140, size 0, align 0, offset 0] [from unsigned int]
!114 = metadata !{i32 786445, metadata !98, metadata !"st_uid", metadata !99, i32 64, i64 32, i64 32, i64 192, i32 0, metadata !115} ; [ DW_TAG_member ] [st_uid] [line 64, size 32, align 32, offset 192] [from __uid_t]
!115 = metadata !{i32 786454, null, metadata !"__uid_t", metadata !99, i32 135, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [__uid_t] [line 135, size 0, align 0, offset 0] [from unsigned int]
!116 = metadata !{i32 786445, metadata !98, metadata !"st_gid", metadata !99, i32 65, i64 32, i64 32, i64 224, i32 0, metadata !117} ; [ DW_TAG_member ] [st_gid] [line 65, size 32, align 32, offset 224] [from __gid_t]
!117 = metadata !{i32 786454, null, metadata !"__gid_t", metadata !99, i32 136, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [__gid_t] [line 136, size 0, align 0, offset 0] [from unsigned int]
!118 = metadata !{i32 786445, metadata !98, metadata !"st_rdev", metadata !99, i32 69, i64 64, i64 32, i64 256, i32 0, metadata !102} ; [ DW_TAG_member ] [st_rdev] [line 69, size 64, align 32, offset 256] [from __dev_t]
!119 = metadata !{i32 786445, metadata !98, metadata !"__pad2", metadata !99, i32 71, i64 16, i64 16, i64 320, i32 0, metadata !106} ; [ DW_TAG_member ] [__pad2] [line 71, size 16, align 16, offset 320] [from unsigned short]
!120 = metadata !{i32 786445, metadata !98, metadata !"st_size", metadata !99, i32 76, i64 64, i64 32, i64 352, i32 0, metadata !74} ; [ DW_TAG_member ] [st_size] [line 76, size 64, align 32, offset 352] [from __off64_t]
!121 = metadata !{i32 786445, metadata !98, metadata !"st_blksize", metadata !99, i32 78, i64 32, i64 32, i64 416, i32 0, metadata !122} ; [ DW_TAG_member ] [st_blksize] [line 78, size 32, align 32, offset 416] [from __blksize_t]
!122 = metadata !{i32 786454, null, metadata !"__blksize_t", metadata !99, i32 164, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [__blksize_t] [line 164, size 0, align 0, offset 0] [from long int]
!123 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!124 = metadata !{i32 786445, metadata !98, metadata !"st_blocks", metadata !99, i32 82, i64 64, i64 32, i64 448, i32 0, metadata !125} ; [ DW_TAG_member ] [st_blocks] [line 82, size 64, align 32, offset 448] [from __blkcnt64_t]
!125 = metadata !{i32 786454, null, metadata !"__blkcnt64_t", metadata !99, i32 170, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__blkcnt64_t] [line 170, size 0, align 0, offset 0] [from __quad_t]
!126 = metadata !{i32 786445, metadata !98, metadata !"st_atim", metadata !99, i32 91, i64 64, i64 32, i64 512, i32 0, metadata !127} ; [ DW_TAG_member ] [st_atim] [line 91, size 64, align 32, offset 512] [from timespec]
!127 = metadata !{i32 786451, null, metadata !"timespec", metadata !128, i32 120, i64 64, i64 32, i32 0, i32 0, null, metadata !129, i32 0, i32 0} ; [ DW_TAG_structure_type ] [timespec] [line 120, size 64, align 32, offset 0] [from ]
!128 = metadata !{i32 786473, metadata !"/usr/include/time.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!129 = metadata !{metadata !130, metadata !132}
!130 = metadata !{i32 786445, metadata !127, metadata !"tv_sec", metadata !128, i32 122, i64 32, i64 32, i64 0, i32 0, metadata !131} ; [ DW_TAG_member ] [tv_sec] [line 122, size 32, align 32, offset 0] [from __time_t]
!131 = metadata !{i32 786454, null, metadata !"__time_t", metadata !128, i32 149, i64 0, i64 0, i64 0, i32 0, metadata !123} ; [ DW_TAG_typedef ] [__time_t] [line 149, size 0, align 0, offset 0] [from long int]
!132 = metadata !{i32 786445, metadata !127, metadata !"tv_nsec", metadata !128, i32 123, i64 32, i64 32, i64 32, i32 0, metadata !123} ; [ DW_TAG_member ] [tv_nsec] [line 123, size 32, align 32, offset 32] [from long int]
!133 = metadata !{i32 786445, metadata !98, metadata !"st_mtim", metadata !99, i32 92, i64 64, i64 32, i64 576, i32 0, metadata !127} ; [ DW_TAG_member ] [st_mtim] [line 92, size 64, align 32, offset 576] [from timespec]
!134 = metadata !{i32 786445, metadata !98, metadata !"st_ctim", metadata !99, i32 93, i64 64, i64 32, i64 640, i32 0, metadata !127} ; [ DW_TAG_member ] [st_ctim] [line 93, size 64, align 32, offset 640] [from timespec]
!135 = metadata !{i32 786445, metadata !98, metadata !"st_ino", metadata !99, i32 112, i64 64, i64 32, i64 704, i32 0, metadata !136} ; [ DW_TAG_member ] [st_ino] [line 112, size 64, align 32, offset 704] [from __ino64_t]
!136 = metadata !{i32 786454, null, metadata !"__ino64_t", metadata !99, i32 138, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_typedef ] [__ino64_t] [line 138, size 0, align 0, offset 0] [from __u_quad_t]
!137 = metadata !{i32 786445, metadata !85, metadata !"offset", metadata !86, i32 21, i64 64, i64 32, i64 864, i32 0, metadata !73} ; [ DW_TAG_member ] [offset] [line 21, size 64, align 32, offset 864] [from off_t]
!138 = metadata !{i32 786445, metadata !85, metadata !"sys_offset", metadata !86, i32 22, i64 64, i64 32, i64 928, i32 0, metadata !73} ; [ DW_TAG_member ] [sys_offset] [line 22, size 64, align 32, offset 928] [from off_t]
!139 = metadata !{i32 786445, metadata !85, metadata !"log", metadata !86, i32 24, i64 32, i64 32, i64 992, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 24, size 32, align 32, offset 992] [from ]
!140 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!141 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !86, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!142 = metadata !{i32 786451, null, metadata !"ngx_log_s", metadata !143, i32 48, i64 192, i64 32, i32 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_log_s] [line 48, size 192, align 32, offset 0] [from ]
!143 = metadata !{i32 786473, metadata !"src/core/ngx_log.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!144 = metadata !{metadata !145, metadata !146, metadata !156, metadata !158, metadata !165, metadata !166}
!145 = metadata !{i32 786445, metadata !142, metadata !"log_level", metadata !143, i32 49, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [log_level] [line 49, size 32, align 32, offset 0] [from ngx_uint_t]
!146 = metadata !{i32 786445, metadata !142, metadata !"file", metadata !143, i32 50, i64 32, i64 32, i64 32, i32 0, metadata !147} ; [ DW_TAG_member ] [file] [line 50, size 32, align 32, offset 32] [from ]
!147 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !148} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_t]
!148 = metadata !{i32 786454, null, metadata !"ngx_open_file_t", metadata !143, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [ngx_open_file_t] [line 19, size 0, align 0, offset 0] [from ngx_open_file_s]
!149 = metadata !{i32 786451, null, metadata !"ngx_open_file_s", metadata !10, i32 90, i64 192, i64 32, i32 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_open_file_s] [line 90, size 192, align 32, offset 0] [from ]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155}
!151 = metadata !{i32 786445, metadata !149, metadata !"fd", metadata !10, i32 91, i64 32, i64 32, i64 0, i32 0, metadata !89} ; [ DW_TAG_member ] [fd] [line 91, size 32, align 32, offset 0] [from ngx_fd_t]
!152 = metadata !{i32 786445, metadata !149, metadata !"name", metadata !10, i32 92, i64 64, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 92, size 64, align 32, offset 32] [from ngx_str_t]
!153 = metadata !{i32 786445, metadata !149, metadata !"buffer", metadata !10, i32 94, i64 32, i64 32, i64 96, i32 0, metadata !48} ; [ DW_TAG_member ] [buffer] [line 94, size 32, align 32, offset 96] [from ]
!154 = metadata !{i32 786445, metadata !149, metadata !"pos", metadata !10, i32 95, i64 32, i64 32, i64 128, i32 0, metadata !48} ; [ DW_TAG_member ] [pos] [line 95, size 32, align 32, offset 128] [from ]
!155 = metadata !{i32 786445, metadata !149, metadata !"last", metadata !10, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !48} ; [ DW_TAG_member ] [last] [line 96, size 32, align 32, offset 160] [from ]
!156 = metadata !{i32 786445, metadata !142, metadata !"connection", metadata !143, i32 52, i64 32, i64 32, i64 64, i32 0, metadata !157} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 64] [from ngx_atomic_uint_t]
!157 = metadata !{i32 786454, null, metadata !"ngx_atomic_uint_t", metadata !143, i32 98, i64 0, i64 0, i64 0, i32 0, metadata !109} ; [ DW_TAG_typedef ] [ngx_atomic_uint_t] [line 98, size 0, align 0, offset 0] [from long unsigned int]
!158 = metadata !{i32 786445, metadata !142, metadata !"handler", metadata !143, i32 54, i64 32, i64 32, i64 96, i32 0, metadata !159} ; [ DW_TAG_member ] [handler] [line 54, size 32, align 32, offset 96] [from ngx_log_handler_pt]
!159 = metadata !{i32 786454, null, metadata !"ngx_log_handler_pt", metadata !143, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !160} ; [ DW_TAG_typedef ] [ngx_log_handler_pt] [line 45, size 0, align 0, offset 0] [from ]
!160 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !161} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!162 = metadata !{metadata !48, metadata !163, metadata !48, metadata !34}
!163 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !164} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_log_t]
!164 = metadata !{i32 786454, null, metadata !"ngx_log_t", metadata !143, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !142} ; [ DW_TAG_typedef ] [ngx_log_t] [line 17, size 0, align 0, offset 0] [from ngx_log_s]
!165 = metadata !{i32 786445, metadata !142, metadata !"data", metadata !143, i32 55, i64 32, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 55, size 32, align 32, offset 128] [from ]
!166 = metadata !{i32 786445, metadata !142, metadata !"action", metadata !143, i32 63, i64 32, i64 32, i64 160, i32 0, metadata !19} ; [ DW_TAG_member ] [action] [line 63, size 32, align 32, offset 160] [from ]
!167 = metadata !{i32 786445, metadata !85, metadata !"valid_info", metadata !86, i32 30, i64 1, i64 32, i64 1024, i32 0, metadata !32} ; [ DW_TAG_member ] [valid_info] [line 30, size 1, align 32, offset 1024] [from unsigned int]
!168 = metadata !{i32 786445, metadata !85, metadata !"directio", metadata !86, i32 31, i64 1, i64 32, i64 1025, i32 0, metadata !32} ; [ DW_TAG_member ] [directio] [line 31, size 1, align 32, offset 1025] [from unsigned int]
!169 = metadata !{i32 786445, metadata !68, metadata !"shadow", metadata !63, i32 30, i64 32, i64 32, i64 320, i32 0, metadata !66} ; [ DW_TAG_member ] [shadow] [line 30, size 32, align 32, offset 320] [from ]
!170 = metadata !{i32 786445, metadata !68, metadata !"temporary", metadata !63, i32 34, i64 1, i64 32, i64 352, i32 0, metadata !32} ; [ DW_TAG_member ] [temporary] [line 34, size 1, align 32, offset 352] [from unsigned int]
!171 = metadata !{i32 786445, metadata !68, metadata !"memory", metadata !63, i32 40, i64 1, i64 32, i64 353, i32 0, metadata !32} ; [ DW_TAG_member ] [memory] [line 40, size 1, align 32, offset 353] [from unsigned int]
!172 = metadata !{i32 786445, metadata !68, metadata !"mmap", metadata !63, i32 43, i64 1, i64 32, i64 354, i32 0, metadata !32} ; [ DW_TAG_member ] [mmap] [line 43, size 1, align 32, offset 354] [from unsigned int]
!173 = metadata !{i32 786445, metadata !68, metadata !"recycled", metadata !63, i32 45, i64 1, i64 32, i64 355, i32 0, metadata !32} ; [ DW_TAG_member ] [recycled] [line 45, size 1, align 32, offset 355] [from unsigned int]
!174 = metadata !{i32 786445, metadata !68, metadata !"in_file", metadata !63, i32 46, i64 1, i64 32, i64 356, i32 0, metadata !32} ; [ DW_TAG_member ] [in_file] [line 46, size 1, align 32, offset 356] [from unsigned int]
!175 = metadata !{i32 786445, metadata !68, metadata !"flush", metadata !63, i32 47, i64 1, i64 32, i64 357, i32 0, metadata !32} ; [ DW_TAG_member ] [flush] [line 47, size 1, align 32, offset 357] [from unsigned int]
!176 = metadata !{i32 786445, metadata !68, metadata !"sync", metadata !63, i32 48, i64 1, i64 32, i64 358, i32 0, metadata !32} ; [ DW_TAG_member ] [sync] [line 48, size 1, align 32, offset 358] [from unsigned int]
!177 = metadata !{i32 786445, metadata !68, metadata !"last_buf", metadata !63, i32 49, i64 1, i64 32, i64 359, i32 0, metadata !32} ; [ DW_TAG_member ] [last_buf] [line 49, size 1, align 32, offset 359] [from unsigned int]
!178 = metadata !{i32 786445, metadata !68, metadata !"last_in_chain", metadata !63, i32 50, i64 1, i64 32, i64 360, i32 0, metadata !32} ; [ DW_TAG_member ] [last_in_chain] [line 50, size 1, align 32, offset 360] [from unsigned int]
!179 = metadata !{i32 786445, metadata !68, metadata !"last_shadow", metadata !63, i32 52, i64 1, i64 32, i64 361, i32 0, metadata !32} ; [ DW_TAG_member ] [last_shadow] [line 52, size 1, align 32, offset 361] [from unsigned int]
!180 = metadata !{i32 786445, metadata !68, metadata !"temp_file", metadata !63, i32 53, i64 1, i64 32, i64 362, i32 0, metadata !32} ; [ DW_TAG_member ] [temp_file] [line 53, size 1, align 32, offset 362] [from unsigned int]
!181 = metadata !{i32 786445, metadata !68, metadata !"num", metadata !63, i32 55, i64 32, i64 32, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [num] [line 55, size 32, align 32, offset 384] [from int]
!182 = metadata !{i32 786445, metadata !62, metadata !"next", metadata !63, i32 61, i64 32, i64 32, i64 32, i32 0, metadata !183} ; [ DW_TAG_member ] [next] [line 61, size 32, align 32, offset 32] [from ]
!183 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !184} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_chain_t]
!184 = metadata !{i32 786454, null, metadata !"ngx_chain_t", metadata !63, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [ngx_chain_t] [line 16, size 0, align 0, offset 0] [from ngx_chain_s]
!185 = metadata !{i32 786445, metadata !40, metadata !"large", metadata !41, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !186} ; [ DW_TAG_member ] [large] [line 62, size 32, align 32, offset 224] [from ]
!186 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_large_t]
!187 = metadata !{i32 786454, null, metadata !"ngx_pool_large_t", metadata !41, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !188} ; [ DW_TAG_typedef ] [ngx_pool_large_t] [line 41, size 0, align 0, offset 0] [from ngx_pool_large_s]
!188 = metadata !{i32 786451, null, metadata !"ngx_pool_large_s", metadata !41, i32 43, i64 64, i64 32, i32 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_large_s] [line 43, size 64, align 32, offset 0] [from ]
!189 = metadata !{metadata !190, metadata !191}
!190 = metadata !{i32 786445, metadata !188, metadata !"next", metadata !41, i32 44, i64 32, i64 32, i64 0, i32 0, metadata !186} ; [ DW_TAG_member ] [next] [line 44, size 32, align 32, offset 0] [from ]
!191 = metadata !{i32 786445, metadata !188, metadata !"alloc", metadata !41, i32 45, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [alloc] [line 45, size 32, align 32, offset 32] [from ]
!192 = metadata !{i32 786445, metadata !40, metadata !"cleanup", metadata !41, i32 63, i64 32, i64 32, i64 256, i32 0, metadata !193} ; [ DW_TAG_member ] [cleanup] [line 63, size 32, align 32, offset 256] [from ]
!193 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !194} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_pool_cleanup_t]
!194 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_t", metadata !41, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !195} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_t] [line 32, size 0, align 0, offset 0] [from ngx_pool_cleanup_s]
!195 = metadata !{i32 786451, null, metadata !"ngx_pool_cleanup_s", metadata !41, i32 34, i64 96, i64 32, i32 0, i32 0, null, metadata !196, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_pool_cleanup_s] [line 34, size 96, align 32, offset 0] [from ]
!196 = metadata !{metadata !197, metadata !202, metadata !203}
!197 = metadata !{i32 786445, metadata !195, metadata !"handler", metadata !41, i32 35, i64 32, i64 32, i64 0, i32 0, metadata !198} ; [ DW_TAG_member ] [handler] [line 35, size 32, align 32, offset 0] [from ngx_pool_cleanup_pt]
!198 = metadata !{i32 786454, null, metadata !"ngx_pool_cleanup_pt", metadata !41, i32 30, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [ngx_pool_cleanup_pt] [line 30, size 0, align 0, offset 0] [from ]
!199 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !200} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!201 = metadata !{null, metadata !28}
!202 = metadata !{i32 786445, metadata !195, metadata !"data", metadata !41, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!203 = metadata !{i32 786445, metadata !195, metadata !"next", metadata !41, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !193} ; [ DW_TAG_member ] [next] [line 37, size 32, align 32, offset 64] [from ]
!204 = metadata !{i32 786445, metadata !40, metadata !"log", metadata !41, i32 64, i64 32, i64 32, i64 288, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 64, size 32, align 32, offset 288] [from ]
!205 = metadata !{i32 786445, metadata !16, metadata !"cycle", metadata !10, i32 170, i64 32, i64 32, i64 64, i32 0, metadata !206} ; [ DW_TAG_member ] [cycle] [line 170, size 32, align 32, offset 64] [from ]
!206 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !207} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!207 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !10, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!208 = metadata !{i32 786451, null, metadata !"ngx_cycle_s", metadata !209, i32 37, i64 1792, i64 32, i32 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_cycle_s] [line 37, size 1792, align 32, offset 0] [from ]
!209 = metadata !{i32 786473, metadata !"src/core/ngx_cycle.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!210 = metadata !{metadata !211, metadata !215, metadata !216, metadata !217, metadata !218, metadata !395, metadata !396, metadata !397, metadata !398, metadata !399, metadata !400, metadata !417, metadata !418, metadata !419, metadata !420, metadata !421, metadata !422, metadata !423, metadata !426, metadata !427, metadata !428, metadata !429, metadata !430, metadata !431}
!211 = metadata !{i32 786445, metadata !208, metadata !"conf_ctx", metadata !209, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !212} ; [ DW_TAG_member ] [conf_ctx] [line 38, size 32, align 32, offset 0] [from ]
!212 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !213} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!213 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !214} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!215 = metadata !{i32 786445, metadata !208, metadata !"pool", metadata !209, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 39, size 32, align 32, offset 32] [from ]
!216 = metadata !{i32 786445, metadata !208, metadata !"log", metadata !209, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 41, size 32, align 32, offset 64] [from ]
!217 = metadata !{i32 786445, metadata !208, metadata !"new_log", metadata !209, i32 42, i64 192, i64 32, i64 96, i32 0, metadata !141} ; [ DW_TAG_member ] [new_log] [line 42, size 192, align 32, offset 96] [from ngx_log_t]
!218 = metadata !{i32 786445, metadata !208, metadata !"files", metadata !209, i32 44, i64 32, i64 32, i64 288, i32 0, metadata !219} ; [ DW_TAG_member ] [files] [line 44, size 32, align 32, offset 288] [from ]
!219 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !220} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!220 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !221} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!221 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !209, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !222} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!222 = metadata !{i32 786451, null, metadata !"ngx_connection_s", metadata !223, i32 113, i64 768, i64 32, i32 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_connection_s] [line 113, size 768, align 32, offset 0] [from ]
!223 = metadata !{i32 786473, metadata !"src/core/ngx_connection.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!224 = metadata !{metadata !225, metadata !226, metadata !281, metadata !282, metadata !284, metadata !293, metadata !295, metadata !300, metadata !305, metadata !362, metadata !363, metadata !364, metadata !365, metadata !366, metadata !367, metadata !368, metadata !369, metadata !370, metadata !379, metadata !380, metadata !381, metadata !382, metadata !383, metadata !384, metadata !385, metadata !386, metadata !387, metadata !388, metadata !389, metadata !390, metadata !391, metadata !392, metadata !393, metadata !394}
!225 = metadata !{i32 786445, metadata !222, metadata !"data", metadata !223, i32 114, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 114, size 32, align 32, offset 0] [from ]
!226 = metadata !{i32 786445, metadata !222, metadata !"read", metadata !223, i32 115, i64 32, i64 32, i64 32, i32 0, metadata !227} ; [ DW_TAG_member ] [read] [line 115, size 32, align 32, offset 32] [from ]
!227 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !228} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!228 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !223, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!229 = metadata !{i32 786451, null, metadata !"ngx_event_s", metadata !230, i32 38, i64 416, i64 32, i32 0, i32 0, null, metadata !231, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_s] [line 38, size 416, align 32, offset 0] [from ]
!230 = metadata !{i32 786473, metadata !"src/event/ngx_event.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!231 = metadata !{metadata !232, metadata !233, metadata !234, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !243, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !259, metadata !260, metadata !261, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279}
!232 = metadata !{i32 786445, metadata !229, metadata !"data", metadata !230, i32 39, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 39, size 32, align 32, offset 0] [from ]
!233 = metadata !{i32 786445, metadata !229, metadata !"write", metadata !230, i32 41, i64 1, i64 32, i64 32, i32 0, metadata !32} ; [ DW_TAG_member ] [write] [line 41, size 1, align 32, offset 32] [from unsigned int]
!234 = metadata !{i32 786445, metadata !229, metadata !"accept", metadata !230, i32 43, i64 1, i64 32, i64 33, i32 0, metadata !32} ; [ DW_TAG_member ] [accept] [line 43, size 1, align 32, offset 33] [from unsigned int]
!235 = metadata !{i32 786445, metadata !229, metadata !"instance", metadata !230, i32 46, i64 1, i64 32, i64 34, i32 0, metadata !32} ; [ DW_TAG_member ] [instance] [line 46, size 1, align 32, offset 34] [from unsigned int]
!236 = metadata !{i32 786445, metadata !229, metadata !"active", metadata !230, i32 52, i64 1, i64 32, i64 35, i32 0, metadata !32} ; [ DW_TAG_member ] [active] [line 52, size 1, align 32, offset 35] [from unsigned int]
!237 = metadata !{i32 786445, metadata !229, metadata !"disabled", metadata !230, i32 54, i64 1, i64 32, i64 36, i32 0, metadata !32} ; [ DW_TAG_member ] [disabled] [line 54, size 1, align 32, offset 36] [from unsigned int]
!238 = metadata !{i32 786445, metadata !229, metadata !"ready", metadata !230, i32 57, i64 1, i64 32, i64 37, i32 0, metadata !32} ; [ DW_TAG_member ] [ready] [line 57, size 1, align 32, offset 37] [from unsigned int]
!239 = metadata !{i32 786445, metadata !229, metadata !"oneshot", metadata !230, i32 59, i64 1, i64 32, i64 38, i32 0, metadata !32} ; [ DW_TAG_member ] [oneshot] [line 59, size 1, align 32, offset 38] [from unsigned int]
!240 = metadata !{i32 786445, metadata !229, metadata !"complete", metadata !230, i32 62, i64 1, i64 32, i64 39, i32 0, metadata !32} ; [ DW_TAG_member ] [complete] [line 62, size 1, align 32, offset 39] [from unsigned int]
!241 = metadata !{i32 786445, metadata !229, metadata !"eof", metadata !230, i32 64, i64 1, i64 32, i64 40, i32 0, metadata !32} ; [ DW_TAG_member ] [eof] [line 64, size 1, align 32, offset 40] [from unsigned int]
!242 = metadata !{i32 786445, metadata !229, metadata !"error", metadata !230, i32 65, i64 1, i64 32, i64 41, i32 0, metadata !32} ; [ DW_TAG_member ] [error] [line 65, size 1, align 32, offset 41] [from unsigned int]
!243 = metadata !{i32 786445, metadata !229, metadata !"timedout", metadata !230, i32 67, i64 1, i64 32, i64 42, i32 0, metadata !32} ; [ DW_TAG_member ] [timedout] [line 67, size 1, align 32, offset 42] [from unsigned int]
!244 = metadata !{i32 786445, metadata !229, metadata !"timer_set", metadata !230, i32 68, i64 1, i64 32, i64 43, i32 0, metadata !32} ; [ DW_TAG_member ] [timer_set] [line 68, size 1, align 32, offset 43] [from unsigned int]
!245 = metadata !{i32 786445, metadata !229, metadata !"delayed", metadata !230, i32 70, i64 1, i64 32, i64 44, i32 0, metadata !32} ; [ DW_TAG_member ] [delayed] [line 70, size 1, align 32, offset 44] [from unsigned int]
!246 = metadata !{i32 786445, metadata !229, metadata !"read_discarded", metadata !230, i32 72, i64 1, i64 32, i64 45, i32 0, metadata !32} ; [ DW_TAG_member ] [read_discarded] [line 72, size 1, align 32, offset 45] [from unsigned int]
!247 = metadata !{i32 786445, metadata !229, metadata !"unexpected_eof", metadata !230, i32 74, i64 1, i64 32, i64 46, i32 0, metadata !32} ; [ DW_TAG_member ] [unexpected_eof] [line 74, size 1, align 32, offset 46] [from unsigned int]
!248 = metadata !{i32 786445, metadata !229, metadata !"deferred_accept", metadata !230, i32 76, i64 1, i64 32, i64 47, i32 0, metadata !32} ; [ DW_TAG_member ] [deferred_accept] [line 76, size 1, align 32, offset 47] [from unsigned int]
!249 = metadata !{i32 786445, metadata !229, metadata !"pending_eof", metadata !230, i32 79, i64 1, i64 32, i64 48, i32 0, metadata !32} ; [ DW_TAG_member ] [pending_eof] [line 79, size 1, align 32, offset 48] [from unsigned int]
!250 = metadata !{i32 786445, metadata !229, metadata !"posted_ready", metadata !230, i32 82, i64 1, i64 32, i64 49, i32 0, metadata !32} ; [ DW_TAG_member ] [posted_ready] [line 82, size 1, align 32, offset 49] [from unsigned int]
!251 = metadata !{i32 786445, metadata !229, metadata !"available", metadata !230, i32 114, i64 1, i64 32, i64 50, i32 0, metadata !32} ; [ DW_TAG_member ] [available] [line 114, size 1, align 32, offset 50] [from unsigned int]
!252 = metadata !{i32 786445, metadata !229, metadata !"handler", metadata !230, i32 117, i64 32, i64 32, i64 64, i32 0, metadata !253} ; [ DW_TAG_member ] [handler] [line 117, size 32, align 32, offset 64] [from ngx_event_handler_pt]
!253 = metadata !{i32 786454, null, metadata !"ngx_event_handler_pt", metadata !230, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !254} ; [ DW_TAG_typedef ] [ngx_event_handler_pt] [line 26, size 0, align 0, offset 0] [from ]
!254 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !255} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{null, metadata !257}
!257 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !258} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_t]
!258 = metadata !{i32 786454, null, metadata !"ngx_event_t", metadata !230, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !229} ; [ DW_TAG_typedef ] [ngx_event_t] [line 22, size 0, align 0, offset 0] [from ngx_event_s]
!259 = metadata !{i32 786445, metadata !229, metadata !"index", metadata !230, i32 130, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [index] [line 130, size 32, align 32, offset 96] [from ngx_uint_t]
!260 = metadata !{i32 786445, metadata !229, metadata !"log", metadata !230, i32 132, i64 32, i64 32, i64 128, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 132, size 32, align 32, offset 128] [from ]
!261 = metadata !{i32 786445, metadata !229, metadata !"timer", metadata !230, i32 134, i64 160, i64 32, i64 160, i32 0, metadata !262} ; [ DW_TAG_member ] [timer] [line 134, size 160, align 32, offset 160] [from ngx_rbtree_node_t]
!262 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !230, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!263 = metadata !{i32 786451, null, metadata !"ngx_rbtree_node_s", metadata !264, i32 22, i64 160, i64 32, i32 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_node_s] [line 22, size 160, align 32, offset 0] [from ]
!264 = metadata !{i32 786473, metadata !"src/core/ngx_rbtree.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!265 = metadata !{metadata !266, metadata !268, metadata !271, metadata !272, metadata !273, metadata !274}
!266 = metadata !{i32 786445, metadata !263, metadata !"key", metadata !264, i32 23, i64 32, i64 32, i64 0, i32 0, metadata !267} ; [ DW_TAG_member ] [key] [line 23, size 32, align 32, offset 0] [from ngx_rbtree_key_t]
!267 = metadata !{i32 786454, null, metadata !"ngx_rbtree_key_t", metadata !264, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_typedef ] [ngx_rbtree_key_t] [line 16, size 0, align 0, offset 0] [from ngx_uint_t]
!268 = metadata !{i32 786445, metadata !263, metadata !"left", metadata !264, i32 24, i64 32, i64 32, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [left] [line 24, size 32, align 32, offset 32] [from ]
!269 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !270} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_rbtree_node_t]
!270 = metadata !{i32 786454, null, metadata !"ngx_rbtree_node_t", metadata !264, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !263} ; [ DW_TAG_typedef ] [ngx_rbtree_node_t] [line 20, size 0, align 0, offset 0] [from ngx_rbtree_node_s]
!271 = metadata !{i32 786445, metadata !263, metadata !"right", metadata !264, i32 25, i64 32, i64 32, i64 64, i32 0, metadata !269} ; [ DW_TAG_member ] [right] [line 25, size 32, align 32, offset 64] [from ]
!272 = metadata !{i32 786445, metadata !263, metadata !"parent", metadata !264, i32 26, i64 32, i64 32, i64 96, i32 0, metadata !269} ; [ DW_TAG_member ] [parent] [line 26, size 32, align 32, offset 96] [from ]
!273 = metadata !{i32 786445, metadata !263, metadata !"color", metadata !264, i32 27, i64 8, i64 8, i64 128, i32 0, metadata !49} ; [ DW_TAG_member ] [color] [line 27, size 8, align 8, offset 128] [from u_char]
!274 = metadata !{i32 786445, metadata !263, metadata !"data", metadata !264, i32 28, i64 8, i64 8, i64 136, i32 0, metadata !49} ; [ DW_TAG_member ] [data] [line 28, size 8, align 8, offset 136] [from u_char]
!275 = metadata !{i32 786445, metadata !229, metadata !"closed", metadata !230, i32 136, i64 1, i64 32, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [closed] [line 136, size 1, align 32, offset 320] [from unsigned int]
!276 = metadata !{i32 786445, metadata !229, metadata !"channel", metadata !230, i32 139, i64 1, i64 32, i64 321, i32 0, metadata !32} ; [ DW_TAG_member ] [channel] [line 139, size 1, align 32, offset 321] [from unsigned int]
!277 = metadata !{i32 786445, metadata !229, metadata !"resolver", metadata !230, i32 140, i64 1, i64 32, i64 322, i32 0, metadata !32} ; [ DW_TAG_member ] [resolver] [line 140, size 1, align 32, offset 322] [from unsigned int]
!278 = metadata !{i32 786445, metadata !229, metadata !"next", metadata !230, i32 167, i64 32, i64 32, i64 352, i32 0, metadata !257} ; [ DW_TAG_member ] [next] [line 167, size 32, align 32, offset 352] [from ]
!279 = metadata !{i32 786445, metadata !229, metadata !"prev", metadata !230, i32 168, i64 32, i64 32, i64 384, i32 0, metadata !280} ; [ DW_TAG_member ] [prev] [line 168, size 32, align 32, offset 384] [from ]
!280 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !257} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!281 = metadata !{i32 786445, metadata !222, metadata !"write", metadata !223, i32 116, i64 32, i64 32, i64 64, i32 0, metadata !227} ; [ DW_TAG_member ] [write] [line 116, size 32, align 32, offset 64] [from ]
!282 = metadata !{i32 786445, metadata !222, metadata !"fd", metadata !223, i32 118, i64 32, i64 32, i64 96, i32 0, metadata !283} ; [ DW_TAG_member ] [fd] [line 118, size 32, align 32, offset 96] [from ngx_socket_t]
!283 = metadata !{i32 786454, null, metadata !"ngx_socket_t", metadata !223, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [ngx_socket_t] [line 17, size 0, align 0, offset 0] [from int]
!284 = metadata !{i32 786445, metadata !222, metadata !"recv", metadata !223, i32 120, i64 32, i64 32, i64 128, i32 0, metadata !285} ; [ DW_TAG_member ] [recv] [line 120, size 32, align 32, offset 128] [from ngx_recv_pt]
!285 = metadata !{i32 786454, null, metadata !"ngx_recv_pt", metadata !223, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !286} ; [ DW_TAG_typedef ] [ngx_recv_pt] [line 19, size 0, align 0, offset 0] [from ]
!286 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !287} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!287 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !288, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!288 = metadata !{metadata !289, metadata !291, metadata !48, metadata !34}
!289 = metadata !{i32 786454, null, metadata !"ssize_t", metadata !223, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !290} ; [ DW_TAG_typedef ] [ssize_t] [line 110, size 0, align 0, offset 0] [from __ssize_t]
!290 = metadata !{i32 786454, null, metadata !"__ssize_t", metadata !223, i32 180, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ] [__ssize_t] [line 180, size 0, align 0, offset 0] [from int]
!291 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !292} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_connection_t]
!292 = metadata !{i32 786454, null, metadata !"ngx_connection_t", metadata !223, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !222} ; [ DW_TAG_typedef ] [ngx_connection_t] [line 24, size 0, align 0, offset 0] [from ngx_connection_s]
!293 = metadata !{i32 786445, metadata !222, metadata !"send", metadata !223, i32 121, i64 32, i64 32, i64 160, i32 0, metadata !294} ; [ DW_TAG_member ] [send] [line 121, size 32, align 32, offset 160] [from ngx_send_pt]
!294 = metadata !{i32 786454, null, metadata !"ngx_send_pt", metadata !223, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !286} ; [ DW_TAG_typedef ] [ngx_send_pt] [line 21, size 0, align 0, offset 0] [from ]
!295 = metadata !{i32 786445, metadata !222, metadata !"recv_chain", metadata !223, i32 122, i64 32, i64 32, i64 192, i32 0, metadata !296} ; [ DW_TAG_member ] [recv_chain] [line 122, size 32, align 32, offset 192] [from ngx_recv_chain_pt]
!296 = metadata !{i32 786454, null, metadata !"ngx_recv_chain_pt", metadata !223, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !297} ; [ DW_TAG_typedef ] [ngx_recv_chain_pt] [line 20, size 0, align 0, offset 0] [from ]
!297 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !298} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!299 = metadata !{metadata !289, metadata !291, metadata !60}
!300 = metadata !{i32 786445, metadata !222, metadata !"send_chain", metadata !223, i32 123, i64 32, i64 32, i64 224, i32 0, metadata !301} ; [ DW_TAG_member ] [send_chain] [line 123, size 32, align 32, offset 224] [from ngx_send_chain_pt]
!301 = metadata !{i32 786454, null, metadata !"ngx_send_chain_pt", metadata !223, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !302} ; [ DW_TAG_typedef ] [ngx_send_chain_pt] [line 22, size 0, align 0, offset 0] [from ]
!302 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !303} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!303 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !304, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!304 = metadata !{metadata !60, metadata !291, metadata !60, metadata !73}
!305 = metadata !{i32 786445, metadata !222, metadata !"listening", metadata !223, i32 125, i64 32, i64 32, i64 256, i32 0, metadata !306} ; [ DW_TAG_member ] [listening] [line 125, size 32, align 32, offset 256] [from ]
!306 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !307} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_listening_t]
!307 = metadata !{i32 786454, null, metadata !"ngx_listening_t", metadata !223, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !308} ; [ DW_TAG_typedef ] [ngx_listening_t] [line 16, size 0, align 0, offset 0] [from ngx_listening_s]
!308 = metadata !{i32 786451, null, metadata !"ngx_listening_s", metadata !223, i32 18, i64 896, i64 32, i32 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_listening_s] [line 18, size 896, align 32, offset 0] [from ]
!309 = metadata !{metadata !310, metadata !311, metadata !322, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !331, metadata !332, metadata !333, metadata !334, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !355, metadata !356, metadata !357, metadata !358, metadata !359, metadata !360, metadata !361}
!310 = metadata !{i32 786445, metadata !308, metadata !"fd", metadata !223, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !283} ; [ DW_TAG_member ] [fd] [line 19, size 32, align 32, offset 0] [from ngx_socket_t]
!311 = metadata !{i32 786445, metadata !308, metadata !"sockaddr", metadata !223, i32 21, i64 32, i64 32, i64 32, i32 0, metadata !312} ; [ DW_TAG_member ] [sockaddr] [line 21, size 32, align 32, offset 32] [from ]
!312 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !313} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr]
!313 = metadata !{i32 786451, null, metadata !"sockaddr", metadata !314, i32 174, i64 128, i64 16, i32 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr] [line 174, size 128, align 16, offset 0] [from ]
!314 = metadata !{i32 786473, metadata !"/usr/include/bits/socket.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!315 = metadata !{metadata !316, metadata !318}
!316 = metadata !{i32 786445, metadata !313, metadata !"sa_family", metadata !314, i32 176, i64 16, i64 16, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ] [sa_family] [line 176, size 16, align 16, offset 0] [from sa_family_t]
!317 = metadata !{i32 786454, null, metadata !"sa_family_t", metadata !314, i32 29, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [sa_family_t] [line 29, size 0, align 0, offset 0] [from unsigned short]
!318 = metadata !{i32 786445, metadata !313, metadata !"sa_data", metadata !314, i32 177, i64 112, i64 8, i64 16, i32 0, metadata !319} ; [ DW_TAG_member ] [sa_data] [line 177, size 112, align 8, offset 16] [from ]
!319 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 112, i64 8, i32 0, i32 0, metadata !20, metadata !320, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 112, align 8, offset 0] [from char]
!320 = metadata !{metadata !321}
!321 = metadata !{i32 786465, i64 0, i64 13}      ; [ DW_TAG_subrange_type ] [0, 13]
!322 = metadata !{i32 786445, metadata !308, metadata !"socklen", metadata !223, i32 22, i64 32, i64 32, i64 64, i32 0, metadata !323} ; [ DW_TAG_member ] [socklen] [line 22, size 32, align 32, offset 64] [from socklen_t]
!323 = metadata !{i32 786454, null, metadata !"socklen_t", metadata !223, i32 275, i64 0, i64 0, i64 0, i32 0, metadata !324} ; [ DW_TAG_typedef ] [socklen_t] [line 275, size 0, align 0, offset 0] [from __socklen_t]
!324 = metadata !{i32 786454, null, metadata !"__socklen_t", metadata !223, i32 192, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [__socklen_t] [line 192, size 0, align 0, offset 0] [from unsigned int]
!325 = metadata !{i32 786445, metadata !308, metadata !"addr_text_max_len", metadata !223, i32 23, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [addr_text_max_len] [line 23, size 32, align 32, offset 96] [from size_t]
!326 = metadata !{i32 786445, metadata !308, metadata !"addr_text", metadata !223, i32 24, i64 64, i64 32, i64 128, i32 0, metadata !91} ; [ DW_TAG_member ] [addr_text] [line 24, size 64, align 32, offset 128] [from ngx_str_t]
!327 = metadata !{i32 786445, metadata !308, metadata !"type", metadata !223, i32 26, i64 32, i64 32, i64 192, i32 0, metadata !13} ; [ DW_TAG_member ] [type] [line 26, size 32, align 32, offset 192] [from int]
!328 = metadata !{i32 786445, metadata !308, metadata !"backlog", metadata !223, i32 28, i64 32, i64 32, i64 224, i32 0, metadata !13} ; [ DW_TAG_member ] [backlog] [line 28, size 32, align 32, offset 224] [from int]
!329 = metadata !{i32 786445, metadata !308, metadata !"rcvbuf", metadata !223, i32 29, i64 32, i64 32, i64 256, i32 0, metadata !13} ; [ DW_TAG_member ] [rcvbuf] [line 29, size 32, align 32, offset 256] [from int]
!330 = metadata !{i32 786445, metadata !308, metadata !"sndbuf", metadata !223, i32 30, i64 32, i64 32, i64 288, i32 0, metadata !13} ; [ DW_TAG_member ] [sndbuf] [line 30, size 32, align 32, offset 288] [from int]
!331 = metadata !{i32 786445, metadata !308, metadata !"keepidle", metadata !223, i32 32, i64 32, i64 32, i64 320, i32 0, metadata !13} ; [ DW_TAG_member ] [keepidle] [line 32, size 32, align 32, offset 320] [from int]
!332 = metadata !{i32 786445, metadata !308, metadata !"keepintvl", metadata !223, i32 33, i64 32, i64 32, i64 352, i32 0, metadata !13} ; [ DW_TAG_member ] [keepintvl] [line 33, size 32, align 32, offset 352] [from int]
!333 = metadata !{i32 786445, metadata !308, metadata !"keepcnt", metadata !223, i32 34, i64 32, i64 32, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [keepcnt] [line 34, size 32, align 32, offset 384] [from int]
!334 = metadata !{i32 786445, metadata !308, metadata !"handler", metadata !223, i32 38, i64 32, i64 32, i64 416, i32 0, metadata !335} ; [ DW_TAG_member ] [handler] [line 38, size 32, align 32, offset 416] [from ngx_connection_handler_pt]
!335 = metadata !{i32 786454, null, metadata !"ngx_connection_handler_pt", metadata !223, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !336} ; [ DW_TAG_typedef ] [ngx_connection_handler_pt] [line 27, size 0, align 0, offset 0] [from ]
!336 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !337} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!337 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !338, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!338 = metadata !{null, metadata !291}
!339 = metadata !{i32 786445, metadata !308, metadata !"servers", metadata !223, i32 40, i64 32, i64 32, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [servers] [line 40, size 32, align 32, offset 448] [from ]
!340 = metadata !{i32 786445, metadata !308, metadata !"log", metadata !223, i32 42, i64 192, i64 32, i64 480, i32 0, metadata !141} ; [ DW_TAG_member ] [log] [line 42, size 192, align 32, offset 480] [from ngx_log_t]
!341 = metadata !{i32 786445, metadata !308, metadata !"logp", metadata !223, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !140} ; [ DW_TAG_member ] [logp] [line 43, size 32, align 32, offset 672] [from ]
!342 = metadata !{i32 786445, metadata !308, metadata !"pool_size", metadata !223, i32 45, i64 32, i64 32, i64 704, i32 0, metadata !34} ; [ DW_TAG_member ] [pool_size] [line 45, size 32, align 32, offset 704] [from size_t]
!343 = metadata !{i32 786445, metadata !308, metadata !"post_accept_buffer_size", metadata !223, i32 47, i64 32, i64 32, i64 736, i32 0, metadata !34} ; [ DW_TAG_member ] [post_accept_buffer_size] [line 47, size 32, align 32, offset 736] [from size_t]
!344 = metadata !{i32 786445, metadata !308, metadata !"post_accept_timeout", metadata !223, i32 49, i64 32, i64 32, i64 768, i32 0, metadata !345} ; [ DW_TAG_member ] [post_accept_timeout] [line 49, size 32, align 32, offset 768] [from ngx_msec_t]
!345 = metadata !{i32 786454, null, metadata !"ngx_msec_t", metadata !223, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !267} ; [ DW_TAG_typedef ] [ngx_msec_t] [line 16, size 0, align 0, offset 0] [from ngx_rbtree_key_t]
!346 = metadata !{i32 786445, metadata !308, metadata !"previous", metadata !223, i32 51, i64 32, i64 32, i64 800, i32 0, metadata !306} ; [ DW_TAG_member ] [previous] [line 51, size 32, align 32, offset 800] [from ]
!347 = metadata !{i32 786445, metadata !308, metadata !"connection", metadata !223, i32 52, i64 32, i64 32, i64 832, i32 0, metadata !291} ; [ DW_TAG_member ] [connection] [line 52, size 32, align 32, offset 832] [from ]
!348 = metadata !{i32 786445, metadata !308, metadata !"open", metadata !223, i32 54, i64 1, i64 32, i64 864, i32 0, metadata !32} ; [ DW_TAG_member ] [open] [line 54, size 1, align 32, offset 864] [from unsigned int]
!349 = metadata !{i32 786445, metadata !308, metadata !"remain", metadata !223, i32 55, i64 1, i64 32, i64 865, i32 0, metadata !32} ; [ DW_TAG_member ] [remain] [line 55, size 1, align 32, offset 865] [from unsigned int]
!350 = metadata !{i32 786445, metadata !308, metadata !"ignore", metadata !223, i32 56, i64 1, i64 32, i64 866, i32 0, metadata !32} ; [ DW_TAG_member ] [ignore] [line 56, size 1, align 32, offset 866] [from unsigned int]
!351 = metadata !{i32 786445, metadata !308, metadata !"bound", metadata !223, i32 58, i64 1, i64 32, i64 867, i32 0, metadata !32} ; [ DW_TAG_member ] [bound] [line 58, size 1, align 32, offset 867] [from unsigned int]
!352 = metadata !{i32 786445, metadata !308, metadata !"inherited", metadata !223, i32 59, i64 1, i64 32, i64 868, i32 0, metadata !32} ; [ DW_TAG_member ] [inherited] [line 59, size 1, align 32, offset 868] [from unsigned int]
!353 = metadata !{i32 786445, metadata !308, metadata !"nonblocking_accept", metadata !223, i32 60, i64 1, i64 32, i64 869, i32 0, metadata !32} ; [ DW_TAG_member ] [nonblocking_accept] [line 60, size 1, align 32, offset 869] [from unsigned int]
!354 = metadata !{i32 786445, metadata !308, metadata !"listen", metadata !223, i32 61, i64 1, i64 32, i64 870, i32 0, metadata !32} ; [ DW_TAG_member ] [listen] [line 61, size 1, align 32, offset 870] [from unsigned int]
!355 = metadata !{i32 786445, metadata !308, metadata !"nonblocking", metadata !223, i32 62, i64 1, i64 32, i64 871, i32 0, metadata !32} ; [ DW_TAG_member ] [nonblocking] [line 62, size 1, align 32, offset 871] [from unsigned int]
!356 = metadata !{i32 786445, metadata !308, metadata !"shared", metadata !223, i32 63, i64 1, i64 32, i64 872, i32 0, metadata !32} ; [ DW_TAG_member ] [shared] [line 63, size 1, align 32, offset 872] [from unsigned int]
!357 = metadata !{i32 786445, metadata !308, metadata !"addr_ntop", metadata !223, i32 64, i64 1, i64 32, i64 873, i32 0, metadata !32} ; [ DW_TAG_member ] [addr_ntop] [line 64, size 1, align 32, offset 873] [from unsigned int]
!358 = metadata !{i32 786445, metadata !308, metadata !"keepalive", metadata !223, i32 69, i64 2, i64 32, i64 874, i32 0, metadata !32} ; [ DW_TAG_member ] [keepalive] [line 69, size 2, align 32, offset 874] [from unsigned int]
!359 = metadata !{i32 786445, metadata !308, metadata !"deferred_accept", metadata !223, i32 72, i64 1, i64 32, i64 876, i32 0, metadata !32} ; [ DW_TAG_member ] [deferred_accept] [line 72, size 1, align 32, offset 876] [from unsigned int]
!360 = metadata !{i32 786445, metadata !308, metadata !"delete_deferred", metadata !223, i32 73, i64 1, i64 32, i64 877, i32 0, metadata !32} ; [ DW_TAG_member ] [delete_deferred] [line 73, size 1, align 32, offset 877] [from unsigned int]
!361 = metadata !{i32 786445, metadata !308, metadata !"add_deferred", metadata !223, i32 74, i64 1, i64 32, i64 878, i32 0, metadata !32} ; [ DW_TAG_member ] [add_deferred] [line 74, size 1, align 32, offset 878] [from unsigned int]
!362 = metadata !{i32 786445, metadata !222, metadata !"sent", metadata !223, i32 127, i64 64, i64 32, i64 288, i32 0, metadata !73} ; [ DW_TAG_member ] [sent] [line 127, size 64, align 32, offset 288] [from off_t]
!363 = metadata !{i32 786445, metadata !222, metadata !"log", metadata !223, i32 129, i64 32, i64 32, i64 352, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 129, size 32, align 32, offset 352] [from ]
!364 = metadata !{i32 786445, metadata !222, metadata !"pool", metadata !223, i32 131, i64 32, i64 32, i64 384, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 131, size 32, align 32, offset 384] [from ]
!365 = metadata !{i32 786445, metadata !222, metadata !"sockaddr", metadata !223, i32 133, i64 32, i64 32, i64 416, i32 0, metadata !312} ; [ DW_TAG_member ] [sockaddr] [line 133, size 32, align 32, offset 416] [from ]
!366 = metadata !{i32 786445, metadata !222, metadata !"socklen", metadata !223, i32 134, i64 32, i64 32, i64 448, i32 0, metadata !323} ; [ DW_TAG_member ] [socklen] [line 134, size 32, align 32, offset 448] [from socklen_t]
!367 = metadata !{i32 786445, metadata !222, metadata !"addr_text", metadata !223, i32 135, i64 64, i64 32, i64 480, i32 0, metadata !91} ; [ DW_TAG_member ] [addr_text] [line 135, size 64, align 32, offset 480] [from ngx_str_t]
!368 = metadata !{i32 786445, metadata !222, metadata !"local_sockaddr", metadata !223, i32 141, i64 32, i64 32, i64 544, i32 0, metadata !312} ; [ DW_TAG_member ] [local_sockaddr] [line 141, size 32, align 32, offset 544] [from ]
!369 = metadata !{i32 786445, metadata !222, metadata !"buffer", metadata !223, i32 143, i64 32, i64 32, i64 576, i32 0, metadata !66} ; [ DW_TAG_member ] [buffer] [line 143, size 32, align 32, offset 576] [from ]
!370 = metadata !{i32 786445, metadata !222, metadata !"queue", metadata !223, i32 145, i64 64, i64 32, i64 608, i32 0, metadata !371} ; [ DW_TAG_member ] [queue] [line 145, size 64, align 32, offset 608] [from ngx_queue_t]
!371 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !223, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!372 = metadata !{i32 786451, null, metadata !"ngx_queue_s", metadata !373, i32 18, i64 64, i64 32, i32 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_queue_s] [line 18, size 64, align 32, offset 0] [from ]
!373 = metadata !{i32 786473, metadata !"src/core/ngx_queue.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!374 = metadata !{metadata !375, metadata !378}
!375 = metadata !{i32 786445, metadata !372, metadata !"prev", metadata !373, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_member ] [prev] [line 19, size 32, align 32, offset 0] [from ]
!376 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !377} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_queue_t]
!377 = metadata !{i32 786454, null, metadata !"ngx_queue_t", metadata !373, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !372} ; [ DW_TAG_typedef ] [ngx_queue_t] [line 16, size 0, align 0, offset 0] [from ngx_queue_s]
!378 = metadata !{i32 786445, metadata !372, metadata !"next", metadata !373, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !376} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!379 = metadata !{i32 786445, metadata !222, metadata !"number", metadata !223, i32 147, i64 32, i64 32, i64 672, i32 0, metadata !157} ; [ DW_TAG_member ] [number] [line 147, size 32, align 32, offset 672] [from ngx_atomic_uint_t]
!380 = metadata !{i32 786445, metadata !222, metadata !"requests", metadata !223, i32 149, i64 32, i64 32, i64 704, i32 0, metadata !30} ; [ DW_TAG_member ] [requests] [line 149, size 32, align 32, offset 704] [from ngx_uint_t]
!381 = metadata !{i32 786445, metadata !222, metadata !"buffered", metadata !223, i32 151, i64 8, i64 32, i64 736, i32 0, metadata !32} ; [ DW_TAG_member ] [buffered] [line 151, size 8, align 32, offset 736] [from unsigned int]
!382 = metadata !{i32 786445, metadata !222, metadata !"log_error", metadata !223, i32 153, i64 3, i64 32, i64 744, i32 0, metadata !32} ; [ DW_TAG_member ] [log_error] [line 153, size 3, align 32, offset 744] [from unsigned int]
!383 = metadata !{i32 786445, metadata !222, metadata !"single_connection", metadata !223, i32 155, i64 1, i64 32, i64 747, i32 0, metadata !32} ; [ DW_TAG_member ] [single_connection] [line 155, size 1, align 32, offset 747] [from unsigned int]
!384 = metadata !{i32 786445, metadata !222, metadata !"unexpected_eof", metadata !223, i32 156, i64 1, i64 32, i64 748, i32 0, metadata !32} ; [ DW_TAG_member ] [unexpected_eof] [line 156, size 1, align 32, offset 748] [from unsigned int]
!385 = metadata !{i32 786445, metadata !222, metadata !"timedout", metadata !223, i32 157, i64 1, i64 32, i64 749, i32 0, metadata !32} ; [ DW_TAG_member ] [timedout] [line 157, size 1, align 32, offset 749] [from unsigned int]
!386 = metadata !{i32 786445, metadata !222, metadata !"error", metadata !223, i32 158, i64 1, i64 32, i64 750, i32 0, metadata !32} ; [ DW_TAG_member ] [error] [line 158, size 1, align 32, offset 750] [from unsigned int]
!387 = metadata !{i32 786445, metadata !222, metadata !"destroyed", metadata !223, i32 159, i64 1, i64 32, i64 751, i32 0, metadata !32} ; [ DW_TAG_member ] [destroyed] [line 159, size 1, align 32, offset 751] [from unsigned int]
!388 = metadata !{i32 786445, metadata !222, metadata !"idle", metadata !223, i32 161, i64 1, i64 32, i64 752, i32 0, metadata !32} ; [ DW_TAG_member ] [idle] [line 161, size 1, align 32, offset 752] [from unsigned int]
!389 = metadata !{i32 786445, metadata !222, metadata !"reusable", metadata !223, i32 162, i64 1, i64 32, i64 753, i32 0, metadata !32} ; [ DW_TAG_member ] [reusable] [line 162, size 1, align 32, offset 753] [from unsigned int]
!390 = metadata !{i32 786445, metadata !222, metadata !"close", metadata !223, i32 163, i64 1, i64 32, i64 754, i32 0, metadata !32} ; [ DW_TAG_member ] [close] [line 163, size 1, align 32, offset 754] [from unsigned int]
!391 = metadata !{i32 786445, metadata !222, metadata !"sendfile", metadata !223, i32 165, i64 1, i64 32, i64 755, i32 0, metadata !32} ; [ DW_TAG_member ] [sendfile] [line 165, size 1, align 32, offset 755] [from unsigned int]
!392 = metadata !{i32 786445, metadata !222, metadata !"sndlowat", metadata !223, i32 166, i64 1, i64 32, i64 756, i32 0, metadata !32} ; [ DW_TAG_member ] [sndlowat] [line 166, size 1, align 32, offset 756] [from unsigned int]
!393 = metadata !{i32 786445, metadata !222, metadata !"tcp_nodelay", metadata !223, i32 167, i64 2, i64 32, i64 757, i32 0, metadata !32} ; [ DW_TAG_member ] [tcp_nodelay] [line 167, size 2, align 32, offset 757] [from unsigned int]
!394 = metadata !{i32 786445, metadata !222, metadata !"tcp_nopush", metadata !223, i32 168, i64 2, i64 32, i64 759, i32 0, metadata !32} ; [ DW_TAG_member ] [tcp_nopush] [line 168, size 2, align 32, offset 759] [from unsigned int]
!395 = metadata !{i32 786445, metadata !208, metadata !"free_connections", metadata !209, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !220} ; [ DW_TAG_member ] [free_connections] [line 45, size 32, align 32, offset 320] [from ]
!396 = metadata !{i32 786445, metadata !208, metadata !"free_connection_n", metadata !209, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [free_connection_n] [line 46, size 32, align 32, offset 352] [from ngx_uint_t]
!397 = metadata !{i32 786445, metadata !208, metadata !"reusable_connections_queue", metadata !209, i32 48, i64 64, i64 32, i64 384, i32 0, metadata !371} ; [ DW_TAG_member ] [reusable_connections_queue] [line 48, size 64, align 32, offset 384] [from ngx_queue_t]
!398 = metadata !{i32 786445, metadata !208, metadata !"listening", metadata !209, i32 50, i64 160, i64 32, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [listening] [line 50, size 160, align 32, offset 448] [from ngx_array_t]
!399 = metadata !{i32 786445, metadata !208, metadata !"pathes", metadata !209, i32 51, i64 160, i64 32, i64 608, i32 0, metadata !23} ; [ DW_TAG_member ] [pathes] [line 51, size 160, align 32, offset 608] [from ngx_array_t]
!400 = metadata !{i32 786445, metadata !208, metadata !"open_files", metadata !209, i32 52, i64 224, i64 32, i64 768, i32 0, metadata !401} ; [ DW_TAG_member ] [open_files] [line 52, size 224, align 32, offset 768] [from ngx_list_t]
!401 = metadata !{i32 786454, null, metadata !"ngx_list_t", metadata !209, i32 31, i64 0, i64 0, i64 0, i32 0, metadata !402} ; [ DW_TAG_typedef ] [ngx_list_t] [line 31, size 0, align 0, offset 0] [from ]
!402 = metadata !{i32 786451, null, metadata !"", metadata !403, i32 25, i64 224, i64 32, i32 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 224, align 32, offset 0] [from ]
!403 = metadata !{i32 786473, metadata !"src/core/ngx_list.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!404 = metadata !{metadata !405, metadata !413, metadata !414, metadata !415, metadata !416}
!405 = metadata !{i32 786445, metadata !402, metadata !"last", metadata !403, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !406} ; [ DW_TAG_member ] [last] [line 26, size 32, align 32, offset 0] [from ]
!406 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !407} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_list_part_t]
!407 = metadata !{i32 786454, null, metadata !"ngx_list_part_t", metadata !403, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !408} ; [ DW_TAG_typedef ] [ngx_list_part_t] [line 16, size 0, align 0, offset 0] [from ngx_list_part_s]
!408 = metadata !{i32 786451, null, metadata !"ngx_list_part_s", metadata !403, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !409, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_list_part_s] [line 18, size 96, align 32, offset 0] [from ]
!409 = metadata !{metadata !410, metadata !411, metadata !412}
!410 = metadata !{i32 786445, metadata !408, metadata !"elts", metadata !403, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [elts] [line 19, size 32, align 32, offset 0] [from ]
!411 = metadata !{i32 786445, metadata !408, metadata !"nelts", metadata !403, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [nelts] [line 20, size 32, align 32, offset 32] [from ngx_uint_t]
!412 = metadata !{i32 786445, metadata !408, metadata !"next", metadata !403, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !406} ; [ DW_TAG_member ] [next] [line 21, size 32, align 32, offset 64] [from ]
!413 = metadata !{i32 786445, metadata !402, metadata !"part", metadata !403, i32 27, i64 96, i64 32, i64 32, i32 0, metadata !407} ; [ DW_TAG_member ] [part] [line 27, size 96, align 32, offset 32] [from ngx_list_part_t]
!414 = metadata !{i32 786445, metadata !402, metadata !"size", metadata !403, i32 28, i64 32, i64 32, i64 128, i32 0, metadata !34} ; [ DW_TAG_member ] [size] [line 28, size 32, align 32, offset 128] [from size_t]
!415 = metadata !{i32 786445, metadata !402, metadata !"nalloc", metadata !403, i32 29, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [nalloc] [line 29, size 32, align 32, offset 160] [from ngx_uint_t]
!416 = metadata !{i32 786445, metadata !402, metadata !"pool", metadata !403, i32 30, i64 32, i64 32, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 30, size 32, align 32, offset 192] [from ]
!417 = metadata !{i32 786445, metadata !208, metadata !"shared_memory", metadata !209, i32 53, i64 224, i64 32, i64 992, i32 0, metadata !401} ; [ DW_TAG_member ] [shared_memory] [line 53, size 224, align 32, offset 992] [from ngx_list_t]
!418 = metadata !{i32 786445, metadata !208, metadata !"connection_n", metadata !209, i32 55, i64 32, i64 32, i64 1216, i32 0, metadata !30} ; [ DW_TAG_member ] [connection_n] [line 55, size 32, align 32, offset 1216] [from ngx_uint_t]
!419 = metadata !{i32 786445, metadata !208, metadata !"files_n", metadata !209, i32 56, i64 32, i64 32, i64 1248, i32 0, metadata !30} ; [ DW_TAG_member ] [files_n] [line 56, size 32, align 32, offset 1248] [from ngx_uint_t]
!420 = metadata !{i32 786445, metadata !208, metadata !"connections", metadata !209, i32 58, i64 32, i64 32, i64 1280, i32 0, metadata !220} ; [ DW_TAG_member ] [connections] [line 58, size 32, align 32, offset 1280] [from ]
!421 = metadata !{i32 786445, metadata !208, metadata !"read_events", metadata !209, i32 59, i64 32, i64 32, i64 1312, i32 0, metadata !227} ; [ DW_TAG_member ] [read_events] [line 59, size 32, align 32, offset 1312] [from ]
!422 = metadata !{i32 786445, metadata !208, metadata !"write_events", metadata !209, i32 60, i64 32, i64 32, i64 1344, i32 0, metadata !227} ; [ DW_TAG_member ] [write_events] [line 60, size 32, align 32, offset 1344] [from ]
!423 = metadata !{i32 786445, metadata !208, metadata !"old_cycle", metadata !209, i32 62, i64 32, i64 32, i64 1376, i32 0, metadata !424} ; [ DW_TAG_member ] [old_cycle] [line 62, size 32, align 32, offset 1376] [from ]
!424 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !425} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_cycle_t]
!425 = metadata !{i32 786454, null, metadata !"ngx_cycle_t", metadata !209, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !208} ; [ DW_TAG_typedef ] [ngx_cycle_t] [line 14, size 0, align 0, offset 0] [from ngx_cycle_s]
!426 = metadata !{i32 786445, metadata !208, metadata !"conf_file", metadata !209, i32 64, i64 64, i64 32, i64 1408, i32 0, metadata !91} ; [ DW_TAG_member ] [conf_file] [line 64, size 64, align 32, offset 1408] [from ngx_str_t]
!427 = metadata !{i32 786445, metadata !208, metadata !"conf_param", metadata !209, i32 65, i64 64, i64 32, i64 1472, i32 0, metadata !91} ; [ DW_TAG_member ] [conf_param] [line 65, size 64, align 32, offset 1472] [from ngx_str_t]
!428 = metadata !{i32 786445, metadata !208, metadata !"conf_prefix", metadata !209, i32 66, i64 64, i64 32, i64 1536, i32 0, metadata !91} ; [ DW_TAG_member ] [conf_prefix] [line 66, size 64, align 32, offset 1536] [from ngx_str_t]
!429 = metadata !{i32 786445, metadata !208, metadata !"prefix", metadata !209, i32 67, i64 64, i64 32, i64 1600, i32 0, metadata !91} ; [ DW_TAG_member ] [prefix] [line 67, size 64, align 32, offset 1600] [from ngx_str_t]
!430 = metadata !{i32 786445, metadata !208, metadata !"lock_file", metadata !209, i32 68, i64 64, i64 32, i64 1664, i32 0, metadata !91} ; [ DW_TAG_member ] [lock_file] [line 68, size 64, align 32, offset 1664] [from ngx_str_t]
!431 = metadata !{i32 786445, metadata !208, metadata !"hostname", metadata !209, i32 69, i64 64, i64 32, i64 1728, i32 0, metadata !91} ; [ DW_TAG_member ] [hostname] [line 69, size 64, align 32, offset 1728] [from ngx_str_t]
!432 = metadata !{i32 786445, metadata !16, metadata !"pool", metadata !10, i32 171, i64 32, i64 32, i64 96, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 171, size 32, align 32, offset 96] [from ]
!433 = metadata !{i32 786445, metadata !16, metadata !"temp_pool", metadata !10, i32 172, i64 32, i64 32, i64 128, i32 0, metadata !38} ; [ DW_TAG_member ] [temp_pool] [line 172, size 32, align 32, offset 128] [from ]
!434 = metadata !{i32 786445, metadata !16, metadata !"conf_file", metadata !10, i32 173, i64 32, i64 32, i64 160, i32 0, metadata !435} ; [ DW_TAG_member ] [conf_file] [line 173, size 32, align 32, offset 160] [from ]
!435 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !436} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_conf_file_t]
!436 = metadata !{i32 786454, null, metadata !"ngx_conf_file_t", metadata !10, i32 159, i64 0, i64 0, i64 0, i32 0, metadata !437} ; [ DW_TAG_typedef ] [ngx_conf_file_t] [line 159, size 0, align 0, offset 0] [from ]
!437 = metadata !{i32 786451, null, metadata !"", metadata !10, i32 155, i64 1120, i64 32, i32 0, i32 0, null, metadata !438, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 155, size 1120, align 32, offset 0] [from ]
!438 = metadata !{metadata !439, metadata !440, metadata !441}
!439 = metadata !{i32 786445, metadata !437, metadata !"file", metadata !10, i32 156, i64 1056, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [file] [line 156, size 1056, align 32, offset 0] [from ngx_file_t]
!440 = metadata !{i32 786445, metadata !437, metadata !"buffer", metadata !10, i32 157, i64 32, i64 32, i64 1056, i32 0, metadata !66} ; [ DW_TAG_member ] [buffer] [line 157, size 32, align 32, offset 1056] [from ]
!441 = metadata !{i32 786445, metadata !437, metadata !"line", metadata !10, i32 158, i64 32, i64 32, i64 1088, i32 0, metadata !30} ; [ DW_TAG_member ] [line] [line 158, size 32, align 32, offset 1088] [from ngx_uint_t]
!442 = metadata !{i32 786445, metadata !16, metadata !"log", metadata !10, i32 174, i64 32, i64 32, i64 192, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 174, size 32, align 32, offset 192] [from ]
!443 = metadata !{i32 786445, metadata !16, metadata !"ctx", metadata !10, i32 176, i64 32, i64 32, i64 224, i32 0, metadata !28} ; [ DW_TAG_member ] [ctx] [line 176, size 32, align 32, offset 224] [from ]
!444 = metadata !{i32 786445, metadata !16, metadata !"module_type", metadata !10, i32 177, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [module_type] [line 177, size 32, align 32, offset 256] [from ngx_uint_t]
!445 = metadata !{i32 786445, metadata !16, metadata !"cmd_type", metadata !10, i32 178, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [cmd_type] [line 178, size 32, align 32, offset 288] [from ngx_uint_t]
!446 = metadata !{i32 786445, metadata !16, metadata !"handler", metadata !10, i32 180, i64 32, i64 32, i64 320, i32 0, metadata !447} ; [ DW_TAG_member ] [handler] [line 180, size 32, align 32, offset 320] [from ngx_conf_handler_pt]
!447 = metadata !{i32 786454, null, metadata !"ngx_conf_handler_pt", metadata !10, i32 162, i64 0, i64 0, i64 0, i32 0, metadata !448} ; [ DW_TAG_typedef ] [ngx_conf_handler_pt] [line 162, size 0, align 0, offset 0] [from ]
!448 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !449} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!450 = metadata !{metadata !19, metadata !14, metadata !451, metadata !28}
!451 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !452} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_command_t]
!452 = metadata !{i32 786454, null, metadata !"ngx_command_t", metadata !10, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !453} ; [ DW_TAG_typedef ] [ngx_command_t] [line 20, size 0, align 0, offset 0] [from ngx_command_s]
!453 = metadata !{i32 786451, null, metadata !"ngx_command_s", metadata !10, i32 78, i64 224, i64 32, i32 0, i32 0, null, metadata !454, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_command_s] [line 78, size 224, align 32, offset 0] [from ]
!454 = metadata !{metadata !455, metadata !456, metadata !457, metadata !458, metadata !459, metadata !460}
!455 = metadata !{i32 786445, metadata !453, metadata !"name", metadata !10, i32 79, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 79, size 64, align 32, offset 0] [from ngx_str_t]
!456 = metadata !{i32 786445, metadata !453, metadata !"type", metadata !10, i32 80, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 64] [from ngx_uint_t]
!457 = metadata !{i32 786445, metadata !453, metadata !"set", metadata !10, i32 81, i64 32, i64 32, i64 96, i32 0, metadata !448} ; [ DW_TAG_member ] [set] [line 81, size 32, align 32, offset 96] [from ]
!458 = metadata !{i32 786445, metadata !453, metadata !"conf", metadata !10, i32 82, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [conf] [line 82, size 32, align 32, offset 128] [from ngx_uint_t]
!459 = metadata !{i32 786445, metadata !453, metadata !"offset", metadata !10, i32 83, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [offset] [line 83, size 32, align 32, offset 160] [from ngx_uint_t]
!460 = metadata !{i32 786445, metadata !453, metadata !"post", metadata !10, i32 84, i64 32, i64 32, i64 192, i32 0, metadata !28} ; [ DW_TAG_member ] [post] [line 84, size 32, align 32, offset 192] [from ]
!461 = metadata !{i32 786445, metadata !16, metadata !"handler_conf", metadata !10, i32 181, i64 32, i64 32, i64 352, i32 0, metadata !19} ; [ DW_TAG_member ] [handler_conf] [line 181, size 32, align 32, offset 352] [from ]
!462 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !376} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!463 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !464} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!464 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !6, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !465} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!465 = metadata !{i32 786451, null, metadata !"ngx_http_core_loc_conf_s", metadata !466, i32 298, i64 2656, i64 32, i32 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_core_loc_conf_s] [line 298, size 2656, align 32, offset 0] [from ]
!466 = metadata !{i32 786473, metadata !"src/http/ngx_http_core_module.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!467 = metadata !{metadata !468, metadata !469, metadata !513, metadata !514, metadata !515, metadata !516, metadata !517, metadata !518, metadata !519, metadata !520, metadata !538, metadata !540, metadata !541, metadata !543, metadata !544, metadata !1484, metadata !1485, metadata !1486, metadata !1487, metadata !1488, metadata !1489, metadata !1490, metadata !1491, metadata !1492, metadata !1493, metadata !1494, metadata !1495, metadata !1496, metadata !1497, metadata !1498, metadata !1499, metadata !1500, metadata !1501, metadata !1502, metadata !1503, metadata !1504, metadata !1505, metadata !1506, metadata !1507, metadata !1508, metadata !1509, metadata !1510, metadata !1511, metadata !1512, metadata !1513, metadata !1514, metadata !1515, metadata !1516, metadata !1517, metadata !1518, metadata !1519, metadata !1520, metadata !1521, metadata !1522, metadata !1523, metadata !1524, metadata !1525, metadata !1526, metadata !1527, metadata !1528, metadata !1529, metadata !1530, metadata !1531, metadata !1532, metadata !1533, metadata !1534, metadata !1535, metadata !1536, metadata !1537, metadata !1548, metadata !1549, metadata !1559, metadata !1560, metadata !1572, metadata !1573, metadata !1574, metadata !1575, metadata !1576, metadata !1577, metadata !1578, metadata !1579}
!468 = metadata !{i32 786445, metadata !465, metadata !"name", metadata !466, i32 299, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 299, size 64, align 32, offset 0] [from ngx_str_t]
!469 = metadata !{i32 786445, metadata !465, metadata !"regex", metadata !466, i32 302, i64 32, i64 32, i64 64, i32 0, metadata !470} ; [ DW_TAG_member ] [regex] [line 302, size 32, align 32, offset 64] [from ]
!470 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !471} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_t]
!471 = metadata !{i32 786454, null, metadata !"ngx_http_regex_t", metadata !466, i32 77, i64 0, i64 0, i64 0, i32 0, metadata !472} ; [ DW_TAG_typedef ] [ngx_http_regex_t] [line 77, size 0, align 0, offset 0] [from ]
!472 = metadata !{i32 786451, null, metadata !"", metadata !473, i32 71, i64 192, i64 32, i32 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 71, size 192, align 32, offset 0] [from ]
!473 = metadata !{i32 786473, metadata !"src/http/ngx_http_variables.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!474 = metadata !{metadata !475, metadata !503, metadata !504, metadata !511, metadata !512}
!475 = metadata !{i32 786445, metadata !472, metadata !"regex", metadata !473, i32 72, i64 32, i64 32, i64 0, i32 0, metadata !476} ; [ DW_TAG_member ] [regex] [line 72, size 32, align 32, offset 0] [from ]
!476 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !477} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_regex_t]
!477 = metadata !{i32 786454, null, metadata !"ngx_regex_t", metadata !473, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !478} ; [ DW_TAG_typedef ] [ngx_regex_t] [line 26, size 0, align 0, offset 0] [from ]
!478 = metadata !{i32 786451, null, metadata !"", metadata !479, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!479 = metadata !{i32 786473, metadata !"src/core/ngx_regex.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!480 = metadata !{metadata !481, metadata !486}
!481 = metadata !{i32 786445, metadata !478, metadata !"code", metadata !479, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !482} ; [ DW_TAG_member ] [code] [line 24, size 32, align 32, offset 0] [from ]
!482 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !483} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre]
!483 = metadata !{i32 786454, null, metadata !"pcre", metadata !479, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !484} ; [ DW_TAG_typedef ] [pcre] [line 277, size 0, align 0, offset 0] [from real_pcre]
!484 = metadata !{i32 786451, null, metadata !"real_pcre", metadata !485, i32 276, i64 0, i64 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ] [real_pcre] [line 276, size 0, align 0, offset 0] [fwd] [from ]
!485 = metadata !{i32 786473, metadata !"/include/pcre.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!486 = metadata !{i32 786445, metadata !478, metadata !"extra", metadata !479, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !487} ; [ DW_TAG_member ] [extra] [line 25, size 32, align 32, offset 32] [from ]
!487 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !488} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from pcre_extra]
!488 = metadata !{i32 786454, null, metadata !"pcre_extra", metadata !479, i32 320, i64 0, i64 0, i64 0, i32 0, metadata !489} ; [ DW_TAG_typedef ] [pcre_extra] [line 320, size 0, align 0, offset 0] [from pcre_extra]
!489 = metadata !{i32 786451, null, metadata !"pcre_extra", metadata !485, i32 311, i64 256, i64 32, i32 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_structure_type ] [pcre_extra] [line 311, size 256, align 32, offset 0] [from ]
!490 = metadata !{metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !498, metadata !499, metadata !502}
!491 = metadata !{i32 786445, metadata !489, metadata !"flags", metadata !485, i32 312, i64 32, i64 32, i64 0, i32 0, metadata !109} ; [ DW_TAG_member ] [flags] [line 312, size 32, align 32, offset 0] [from long unsigned int]
!492 = metadata !{i32 786445, metadata !489, metadata !"study_data", metadata !485, i32 313, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [study_data] [line 313, size 32, align 32, offset 32] [from ]
!493 = metadata !{i32 786445, metadata !489, metadata !"match_limit", metadata !485, i32 314, i64 32, i64 32, i64 64, i32 0, metadata !109} ; [ DW_TAG_member ] [match_limit] [line 314, size 32, align 32, offset 64] [from long unsigned int]
!494 = metadata !{i32 786445, metadata !489, metadata !"callout_data", metadata !485, i32 315, i64 32, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [callout_data] [line 315, size 32, align 32, offset 96] [from ]
!495 = metadata !{i32 786445, metadata !489, metadata !"tables", metadata !485, i32 316, i64 32, i64 32, i64 128, i32 0, metadata !496} ; [ DW_TAG_member ] [tables] [line 316, size 32, align 32, offset 128] [from ]
!496 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !497} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!497 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from unsigned char]
!498 = metadata !{i32 786445, metadata !489, metadata !"match_limit_recursion", metadata !485, i32 317, i64 32, i64 32, i64 160, i32 0, metadata !109} ; [ DW_TAG_member ] [match_limit_recursion] [line 317, size 32, align 32, offset 160] [from long unsigned int]
!499 = metadata !{i32 786445, metadata !489, metadata !"mark", metadata !485, i32 318, i64 32, i64 32, i64 192, i32 0, metadata !500} ; [ DW_TAG_member ] [mark] [line 318, size 32, align 32, offset 192] [from ]
!500 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !501} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!501 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from unsigned char]
!502 = metadata !{i32 786445, metadata !489, metadata !"executable_jit", metadata !485, i32 319, i64 32, i64 32, i64 224, i32 0, metadata !28} ; [ DW_TAG_member ] [executable_jit] [line 319, size 32, align 32, offset 224] [from ]
!503 = metadata !{i32 786445, metadata !472, metadata !"ncaptures", metadata !473, i32 73, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [ncaptures] [line 73, size 32, align 32, offset 32] [from ngx_uint_t]
!504 = metadata !{i32 786445, metadata !472, metadata !"variables", metadata !473, i32 74, i64 32, i64 32, i64 64, i32 0, metadata !505} ; [ DW_TAG_member ] [variables] [line 74, size 32, align 32, offset 64] [from ]
!505 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !506} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_regex_variable_t]
!506 = metadata !{i32 786454, null, metadata !"ngx_http_regex_variable_t", metadata !473, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !507} ; [ DW_TAG_typedef ] [ngx_http_regex_variable_t] [line 68, size 0, align 0, offset 0] [from ]
!507 = metadata !{i32 786451, null, metadata !"", metadata !473, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !508, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!508 = metadata !{metadata !509, metadata !510}
!509 = metadata !{i32 786445, metadata !507, metadata !"capture", metadata !473, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [capture] [line 66, size 32, align 32, offset 0] [from ngx_uint_t]
!510 = metadata !{i32 786445, metadata !507, metadata !"index", metadata !473, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !9} ; [ DW_TAG_member ] [index] [line 67, size 32, align 32, offset 32] [from ngx_int_t]
!511 = metadata !{i32 786445, metadata !472, metadata !"nvariables", metadata !473, i32 75, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [nvariables] [line 75, size 32, align 32, offset 96] [from ngx_uint_t]
!512 = metadata !{i32 786445, metadata !472, metadata !"name", metadata !473, i32 76, i64 64, i64 32, i64 128, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 76, size 64, align 32, offset 128] [from ngx_str_t]
!513 = metadata !{i32 786445, metadata !465, metadata !"noname", metadata !466, i32 305, i64 1, i64 32, i64 96, i32 0, metadata !32} ; [ DW_TAG_member ] [noname] [line 305, size 1, align 32, offset 96] [from unsigned int]
!514 = metadata !{i32 786445, metadata !465, metadata !"lmt_excpt", metadata !466, i32 306, i64 1, i64 32, i64 97, i32 0, metadata !32} ; [ DW_TAG_member ] [lmt_excpt] [line 306, size 1, align 32, offset 97] [from unsigned int]
!515 = metadata !{i32 786445, metadata !465, metadata !"named", metadata !466, i32 307, i64 1, i64 32, i64 98, i32 0, metadata !32} ; [ DW_TAG_member ] [named] [line 307, size 1, align 32, offset 98] [from unsigned int]
!516 = metadata !{i32 786445, metadata !465, metadata !"exact_match", metadata !466, i32 309, i64 1, i64 32, i64 99, i32 0, metadata !32} ; [ DW_TAG_member ] [exact_match] [line 309, size 1, align 32, offset 99] [from unsigned int]
!517 = metadata !{i32 786445, metadata !465, metadata !"noregex", metadata !466, i32 310, i64 1, i64 32, i64 100, i32 0, metadata !32} ; [ DW_TAG_member ] [noregex] [line 310, size 1, align 32, offset 100] [from unsigned int]
!518 = metadata !{i32 786445, metadata !465, metadata !"auto_redirect", metadata !466, i32 312, i64 1, i64 32, i64 101, i32 0, metadata !32} ; [ DW_TAG_member ] [auto_redirect] [line 312, size 1, align 32, offset 101] [from unsigned int]
!519 = metadata !{i32 786445, metadata !465, metadata !"gzip_disable_msie6", metadata !466, i32 314, i64 2, i64 32, i64 102, i32 0, metadata !32} ; [ DW_TAG_member ] [gzip_disable_msie6] [line 314, size 2, align 32, offset 102] [from unsigned int]
!520 = metadata !{i32 786445, metadata !465, metadata !"static_locations", metadata !466, i32 320, i64 32, i64 32, i64 128, i32 0, metadata !521} ; [ DW_TAG_member ] [static_locations] [line 320, size 32, align 32, offset 128] [from ]
!521 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !522} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_tree_node_t]
!522 = metadata !{i32 786454, null, metadata !"ngx_http_location_tree_node_t", metadata !466, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !523} ; [ DW_TAG_typedef ] [ngx_http_location_tree_node_t] [line 52, size 0, align 0, offset 0] [from ngx_http_location_tree_node_s]
!523 = metadata !{i32 786451, null, metadata !"ngx_http_location_tree_node_s", metadata !466, i32 447, i64 192, i64 32, i32 0, i32 0, null, metadata !524, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_location_tree_node_s] [line 447, size 192, align 32, offset 0] [from ]
!524 = metadata !{metadata !525, metadata !526, metadata !527, metadata !528, metadata !531, metadata !532, metadata !533, metadata !534}
!525 = metadata !{i32 786445, metadata !523, metadata !"left", metadata !466, i32 448, i64 32, i64 32, i64 0, i32 0, metadata !521} ; [ DW_TAG_member ] [left] [line 448, size 32, align 32, offset 0] [from ]
!526 = metadata !{i32 786445, metadata !523, metadata !"right", metadata !466, i32 449, i64 32, i64 32, i64 32, i32 0, metadata !521} ; [ DW_TAG_member ] [right] [line 449, size 32, align 32, offset 32] [from ]
!527 = metadata !{i32 786445, metadata !523, metadata !"tree", metadata !466, i32 450, i64 32, i64 32, i64 64, i32 0, metadata !521} ; [ DW_TAG_member ] [tree] [line 450, size 32, align 32, offset 64] [from ]
!528 = metadata !{i32 786445, metadata !523, metadata !"exact", metadata !466, i32 452, i64 32, i64 32, i64 96, i32 0, metadata !529} ; [ DW_TAG_member ] [exact] [line 452, size 32, align 32, offset 96] [from ]
!529 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !530} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_loc_conf_t]
!530 = metadata !{i32 786454, null, metadata !"ngx_http_core_loc_conf_t", metadata !466, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !465} ; [ DW_TAG_typedef ] [ngx_http_core_loc_conf_t] [line 53, size 0, align 0, offset 0] [from ngx_http_core_loc_conf_s]
!531 = metadata !{i32 786445, metadata !523, metadata !"inclusive", metadata !466, i32 453, i64 32, i64 32, i64 128, i32 0, metadata !529} ; [ DW_TAG_member ] [inclusive] [line 453, size 32, align 32, offset 128] [from ]
!532 = metadata !{i32 786445, metadata !523, metadata !"auto_redirect", metadata !466, i32 455, i64 8, i64 8, i64 160, i32 0, metadata !49} ; [ DW_TAG_member ] [auto_redirect] [line 455, size 8, align 8, offset 160] [from u_char]
!533 = metadata !{i32 786445, metadata !523, metadata !"len", metadata !466, i32 456, i64 8, i64 8, i64 168, i32 0, metadata !49} ; [ DW_TAG_member ] [len] [line 456, size 8, align 8, offset 168] [from u_char]
!534 = metadata !{i32 786445, metadata !523, metadata !"name", metadata !466, i32 457, i64 8, i64 8, i64 176, i32 0, metadata !535} ; [ DW_TAG_member ] [name] [line 457, size 8, align 8, offset 176] [from ]
!535 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 8, i64 8, i32 0, i32 0, metadata !49, metadata !536, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from u_char]
!536 = metadata !{metadata !537}
!537 = metadata !{i32 786465, i64 0, i64 0}       ; [ DW_TAG_subrange_type ] [0, 0]
!538 = metadata !{i32 786445, metadata !465, metadata !"regex_locations", metadata !466, i32 322, i64 32, i64 32, i64 160, i32 0, metadata !539} ; [ DW_TAG_member ] [regex_locations] [line 322, size 32, align 32, offset 160] [from ]
!539 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !529} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!540 = metadata !{i32 786445, metadata !465, metadata !"loc_conf", metadata !466, i32 326, i64 32, i64 32, i64 192, i32 0, metadata !214} ; [ DW_TAG_member ] [loc_conf] [line 326, size 32, align 32, offset 192] [from ]
!541 = metadata !{i32 786445, metadata !465, metadata !"limit_except", metadata !466, i32 328, i64 32, i64 32, i64 224, i32 0, metadata !542} ; [ DW_TAG_member ] [limit_except] [line 328, size 32, align 32, offset 224] [from uint32_t]
!542 = metadata !{i32 786454, null, metadata !"uint32_t", metadata !466, i32 52, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_typedef ] [uint32_t] [line 52, size 0, align 0, offset 0] [from unsigned int]
!543 = metadata !{i32 786445, metadata !465, metadata !"limit_except_loc_conf", metadata !466, i32 329, i64 32, i64 32, i64 256, i32 0, metadata !214} ; [ DW_TAG_member ] [limit_except_loc_conf] [line 329, size 32, align 32, offset 256] [from ]
!544 = metadata !{i32 786445, metadata !465, metadata !"handler", metadata !466, i32 331, i64 32, i64 32, i64 288, i32 0, metadata !545} ; [ DW_TAG_member ] [handler] [line 331, size 32, align 32, offset 288] [from ngx_http_handler_pt]
!545 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !466, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !546} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!546 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !547} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!547 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !548, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!548 = metadata !{metadata !9, metadata !549}
!549 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !550} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!550 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !466, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!551 = metadata !{i32 786451, null, metadata !"ngx_http_request_s", metadata !552, i32 354, i64 5280, i64 32, i32 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_request_s] [line 354, size 5280, align 32, offset 0] [from ]
!552 = metadata !{i32 786473, metadata !"src/http/ngx_http_request.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!553 = metadata !{metadata !554, metadata !555, metadata !556, metadata !557, metadata !558, metadata !559, metadata !560, metadata !567, metadata !568, metadata !756, metadata !1179, metadata !1180, metadata !1181, metadata !1182, metadata !1218, metadata !1247, metadata !1259, metadata !1260, metadata !1261, metadata !1262, metadata !1263, metadata !1264, metadata !1265, metadata !1266, metadata !1267, metadata !1268, metadata !1269, metadata !1270, metadata !1271, metadata !1272, metadata !1273, metadata !1274, metadata !1282, metadata !1293, metadata !1300, metadata !1353, metadata !1354, metadata !1356, metadata !1357, metadata !1369, metadata !1370, metadata !1372, metadata !1373, metadata !1374, metadata !1375, metadata !1376, metadata !1377, metadata !1389, metadata !1394, metadata !1402, metadata !1403, metadata !1404, metadata !1405, metadata !1406, metadata !1407, metadata !1408, metadata !1409, metadata !1410, metadata !1411, metadata !1412, metadata !1413, metadata !1414, metadata !1415, metadata !1416, metadata !1417, metadata !1418, metadata !1419, metadata !1420, metadata !1421, metadata !1422, metadata !1423, metadata !1424, metadata !1425, metadata !1426, metadata !1427, metadata !1428, metadata !1429, metadata !1430, metadata !1431, metadata !1432, metadata !1433, metadata !1434, metadata !1435, metadata !1436, metadata !1437, metadata !1438, metadata !1439, metadata !1440, metadata !1441, metadata !1442, metadata !1443, metadata !1444, metadata !1445, metadata !1446, metadata !1447, metadata !1448, metadata !1449, metadata !1450, metadata !1451, metadata !1452, metadata !1453, metadata !1454, metadata !1455, metadata !1456, metadata !1457, metadata !1458, metadata !1459, metadata !1460, metadata !1461, metadata !1465, metadata !1466, metadata !1467, metadata !1468, metadata !1469, metadata !1470, metadata !1471, metadata !1472, metadata !1473, metadata !1474, metadata !1475, metadata !1476, metadata !1477, metadata !1478, metadata !1479, metadata !1480, metadata !1481, metadata !1482, metadata !1483}
!554 = metadata !{i32 786445, metadata !551, metadata !"signature", metadata !552, i32 355, i64 32, i64 32, i64 0, i32 0, metadata !542} ; [ DW_TAG_member ] [signature] [line 355, size 32, align 32, offset 0] [from uint32_t]
!555 = metadata !{i32 786445, metadata !551, metadata !"connection", metadata !552, i32 357, i64 32, i64 32, i64 32, i32 0, metadata !220} ; [ DW_TAG_member ] [connection] [line 357, size 32, align 32, offset 32] [from ]
!556 = metadata !{i32 786445, metadata !551, metadata !"ctx", metadata !552, i32 359, i64 32, i64 32, i64 64, i32 0, metadata !214} ; [ DW_TAG_member ] [ctx] [line 359, size 32, align 32, offset 64] [from ]
!557 = metadata !{i32 786445, metadata !551, metadata !"main_conf", metadata !552, i32 360, i64 32, i64 32, i64 96, i32 0, metadata !214} ; [ DW_TAG_member ] [main_conf] [line 360, size 32, align 32, offset 96] [from ]
!558 = metadata !{i32 786445, metadata !551, metadata !"srv_conf", metadata !552, i32 361, i64 32, i64 32, i64 128, i32 0, metadata !214} ; [ DW_TAG_member ] [srv_conf] [line 361, size 32, align 32, offset 128] [from ]
!559 = metadata !{i32 786445, metadata !551, metadata !"loc_conf", metadata !552, i32 362, i64 32, i64 32, i64 160, i32 0, metadata !214} ; [ DW_TAG_member ] [loc_conf] [line 362, size 32, align 32, offset 160] [from ]
!560 = metadata !{i32 786445, metadata !551, metadata !"read_event_handler", metadata !552, i32 364, i64 32, i64 32, i64 192, i32 0, metadata !561} ; [ DW_TAG_member ] [read_event_handler] [line 364, size 32, align 32, offset 192] [from ngx_http_event_handler_pt]
!561 = metadata !{i32 786454, null, metadata !"ngx_http_event_handler_pt", metadata !552, i32 351, i64 0, i64 0, i64 0, i32 0, metadata !562} ; [ DW_TAG_typedef ] [ngx_http_event_handler_pt] [line 351, size 0, align 0, offset 0] [from ]
!562 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !563} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!563 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !564, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!564 = metadata !{null, metadata !565}
!565 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !566} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_t]
!566 = metadata !{i32 786454, null, metadata !"ngx_http_request_t", metadata !552, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_typedef ] [ngx_http_request_t] [line 16, size 0, align 0, offset 0] [from ngx_http_request_s]
!567 = metadata !{i32 786445, metadata !551, metadata !"write_event_handler", metadata !552, i32 365, i64 32, i64 32, i64 224, i32 0, metadata !561} ; [ DW_TAG_member ] [write_event_handler] [line 365, size 32, align 32, offset 224] [from ngx_http_event_handler_pt]
!568 = metadata !{i32 786445, metadata !551, metadata !"cache", metadata !552, i32 368, i64 32, i64 32, i64 256, i32 0, metadata !569} ; [ DW_TAG_member ] [cache] [line 368, size 32, align 32, offset 256] [from ]
!569 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !570} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cache_t]
!570 = metadata !{i32 786454, null, metadata !"ngx_http_cache_t", metadata !552, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !571} ; [ DW_TAG_typedef ] [ngx_http_cache_t] [line 18, size 0, align 0, offset 0] [from ngx_http_cache_s]
!571 = metadata !{i32 786451, null, metadata !"ngx_http_cache_s", metadata !572, i32 58, i64 2432, i64 32, i32 0, i32 0, null, metadata !573, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cache_s] [line 58, size 2432, align 32, offset 0] [from ]
!572 = metadata !{i32 786473, metadata !"src/http/ngx_http_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!573 = metadata !{metadata !574, metadata !575, metadata !576, metadata !577, metadata !581, metadata !584, metadata !586, metadata !587, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !724, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !752, metadata !753, metadata !754, metadata !755}
!574 = metadata !{i32 786445, metadata !571, metadata !"file", metadata !572, i32 59, i64 1056, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [file] [line 59, size 1056, align 32, offset 0] [from ngx_file_t]
!575 = metadata !{i32 786445, metadata !571, metadata !"keys", metadata !572, i32 60, i64 160, i64 32, i64 1056, i32 0, metadata !23} ; [ DW_TAG_member ] [keys] [line 60, size 160, align 32, offset 1056] [from ngx_array_t]
!576 = metadata !{i32 786445, metadata !571, metadata !"crc32", metadata !572, i32 61, i64 32, i64 32, i64 1216, i32 0, metadata !542} ; [ DW_TAG_member ] [crc32] [line 61, size 32, align 32, offset 1216] [from uint32_t]
!577 = metadata !{i32 786445, metadata !571, metadata !"key", metadata !572, i32 62, i64 128, i64 8, i64 1248, i32 0, metadata !578} ; [ DW_TAG_member ] [key] [line 62, size 128, align 8, offset 1248] [from ]
!578 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !49, metadata !579, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from u_char]
!579 = metadata !{metadata !580}
!580 = metadata !{i32 786465, i64 0, i64 15}      ; [ DW_TAG_subrange_type ] [0, 15]
!581 = metadata !{i32 786445, metadata !571, metadata !"uniq", metadata !572, i32 64, i64 64, i64 32, i64 1376, i32 0, metadata !582} ; [ DW_TAG_member ] [uniq] [line 64, size 64, align 32, offset 1376] [from ngx_file_uniq_t]
!582 = metadata !{i32 786454, null, metadata !"ngx_file_uniq_t", metadata !572, i32 18, i64 0, i64 0, i64 0, i32 0, metadata !583} ; [ DW_TAG_typedef ] [ngx_file_uniq_t] [line 18, size 0, align 0, offset 0] [from ino_t]
!583 = metadata !{i32 786454, null, metadata !"ino_t", metadata !572, i32 51, i64 0, i64 0, i64 0, i32 0, metadata !136} ; [ DW_TAG_typedef ] [ino_t] [line 51, size 0, align 0, offset 0] [from __ino64_t]
!584 = metadata !{i32 786445, metadata !571, metadata !"valid_sec", metadata !572, i32 65, i64 32, i64 32, i64 1440, i32 0, metadata !585} ; [ DW_TAG_member ] [valid_sec] [line 65, size 32, align 32, offset 1440] [from time_t]
!585 = metadata !{i32 786454, null, metadata !"time_t", metadata !572, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_typedef ] [time_t] [line 76, size 0, align 0, offset 0] [from __time_t]
!586 = metadata !{i32 786445, metadata !571, metadata !"last_modified", metadata !572, i32 66, i64 32, i64 32, i64 1472, i32 0, metadata !585} ; [ DW_TAG_member ] [last_modified] [line 66, size 32, align 32, offset 1472] [from time_t]
!587 = metadata !{i32 786445, metadata !571, metadata !"date", metadata !572, i32 67, i64 32, i64 32, i64 1504, i32 0, metadata !585} ; [ DW_TAG_member ] [date] [line 67, size 32, align 32, offset 1504] [from time_t]
!588 = metadata !{i32 786445, metadata !571, metadata !"header_start", metadata !572, i32 69, i64 32, i64 32, i64 1536, i32 0, metadata !34} ; [ DW_TAG_member ] [header_start] [line 69, size 32, align 32, offset 1536] [from size_t]
!589 = metadata !{i32 786445, metadata !571, metadata !"body_start", metadata !572, i32 70, i64 32, i64 32, i64 1568, i32 0, metadata !34} ; [ DW_TAG_member ] [body_start] [line 70, size 32, align 32, offset 1568] [from size_t]
!590 = metadata !{i32 786445, metadata !571, metadata !"length", metadata !572, i32 71, i64 64, i64 32, i64 1600, i32 0, metadata !73} ; [ DW_TAG_member ] [length] [line 71, size 64, align 32, offset 1600] [from off_t]
!591 = metadata !{i32 786445, metadata !571, metadata !"fs_size", metadata !572, i32 72, i64 64, i64 32, i64 1664, i32 0, metadata !73} ; [ DW_TAG_member ] [fs_size] [line 72, size 64, align 32, offset 1664] [from off_t]
!592 = metadata !{i32 786445, metadata !571, metadata !"min_uses", metadata !572, i32 74, i64 32, i64 32, i64 1728, i32 0, metadata !30} ; [ DW_TAG_member ] [min_uses] [line 74, size 32, align 32, offset 1728] [from ngx_uint_t]
!593 = metadata !{i32 786445, metadata !571, metadata !"error", metadata !572, i32 75, i64 32, i64 32, i64 1760, i32 0, metadata !30} ; [ DW_TAG_member ] [error] [line 75, size 32, align 32, offset 1760] [from ngx_uint_t]
!594 = metadata !{i32 786445, metadata !571, metadata !"valid_msec", metadata !572, i32 76, i64 32, i64 32, i64 1792, i32 0, metadata !30} ; [ DW_TAG_member ] [valid_msec] [line 76, size 32, align 32, offset 1792] [from ngx_uint_t]
!595 = metadata !{i32 786445, metadata !571, metadata !"buf", metadata !572, i32 78, i64 32, i64 32, i64 1824, i32 0, metadata !66} ; [ DW_TAG_member ] [buf] [line 78, size 32, align 32, offset 1824] [from ]
!596 = metadata !{i32 786445, metadata !571, metadata !"file_cache", metadata !572, i32 80, i64 32, i64 32, i64 1856, i32 0, metadata !597} ; [ DW_TAG_member ] [file_cache] [line 80, size 32, align 32, offset 1856] [from ]
!597 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !598} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_t]
!598 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_t", metadata !572, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !599} ; [ DW_TAG_typedef ] [ngx_http_file_cache_t] [line 19, size 0, align 0, offset 0] [from ngx_http_file_cache_s]
!599 = metadata !{i32 786451, null, metadata !"ngx_http_file_cache_s", metadata !572, i32 119, i64 416, i64 32, i32 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_file_cache_s] [line 119, size 416, align 32, offset 0] [from ]
!600 = metadata !{metadata !601, metadata !624, metadata !671, metadata !692, metadata !693, metadata !694, metadata !695, metadata !696, metadata !697, metadata !698, metadata !699, metadata !700}
!601 = metadata !{i32 786445, metadata !599, metadata !"sh", metadata !572, i32 120, i64 32, i64 32, i64 0, i32 0, metadata !602} ; [ DW_TAG_member ] [sh] [line 120, size 32, align 32, offset 0] [from ]
!602 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !603} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_sh_t]
!603 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_sh_t", metadata !572, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !604} ; [ DW_TAG_typedef ] [ngx_http_file_cache_sh_t] [line 116, size 0, align 0, offset 0] [from ]
!604 = metadata !{i32 786451, null, metadata !"", metadata !572, i32 109, i64 448, i64 32, i32 0, i32 0, null, metadata !605, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 109, size 448, align 32, offset 0] [from ]
!605 = metadata !{metadata !606, metadata !617, metadata !618, metadata !619, metadata !622, metadata !623}
!606 = metadata !{i32 786445, metadata !604, metadata !"rbtree", metadata !572, i32 110, i64 96, i64 32, i64 0, i32 0, metadata !607} ; [ DW_TAG_member ] [rbtree] [line 110, size 96, align 32, offset 0] [from ngx_rbtree_t]
!607 = metadata !{i32 786454, null, metadata !"ngx_rbtree_t", metadata !572, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !608} ; [ DW_TAG_typedef ] [ngx_rbtree_t] [line 32, size 0, align 0, offset 0] [from ngx_rbtree_s]
!608 = metadata !{i32 786451, null, metadata !"ngx_rbtree_s", metadata !264, i32 37, i64 96, i64 32, i32 0, i32 0, null, metadata !609, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_rbtree_s] [line 37, size 96, align 32, offset 0] [from ]
!609 = metadata !{metadata !610, metadata !611, metadata !612}
!610 = metadata !{i32 786445, metadata !608, metadata !"root", metadata !264, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !269} ; [ DW_TAG_member ] [root] [line 38, size 32, align 32, offset 0] [from ]
!611 = metadata !{i32 786445, metadata !608, metadata !"sentinel", metadata !264, i32 39, i64 32, i64 32, i64 32, i32 0, metadata !269} ; [ DW_TAG_member ] [sentinel] [line 39, size 32, align 32, offset 32] [from ]
!612 = metadata !{i32 786445, metadata !608, metadata !"insert", metadata !264, i32 40, i64 32, i64 32, i64 64, i32 0, metadata !613} ; [ DW_TAG_member ] [insert] [line 40, size 32, align 32, offset 64] [from ngx_rbtree_insert_pt]
!613 = metadata !{i32 786454, null, metadata !"ngx_rbtree_insert_pt", metadata !264, i32 34, i64 0, i64 0, i64 0, i32 0, metadata !614} ; [ DW_TAG_typedef ] [ngx_rbtree_insert_pt] [line 34, size 0, align 0, offset 0] [from ]
!614 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !615} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!615 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !616, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!616 = metadata !{null, metadata !269, metadata !269, metadata !269}
!617 = metadata !{i32 786445, metadata !604, metadata !"sentinel", metadata !572, i32 111, i64 160, i64 32, i64 96, i32 0, metadata !262} ; [ DW_TAG_member ] [sentinel] [line 111, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!618 = metadata !{i32 786445, metadata !604, metadata !"queue", metadata !572, i32 112, i64 64, i64 32, i64 256, i32 0, metadata !371} ; [ DW_TAG_member ] [queue] [line 112, size 64, align 32, offset 256] [from ngx_queue_t]
!619 = metadata !{i32 786445, metadata !604, metadata !"cold", metadata !572, i32 113, i64 32, i64 32, i64 320, i32 0, metadata !620} ; [ DW_TAG_member ] [cold] [line 113, size 32, align 32, offset 320] [from ngx_atomic_t]
!620 = metadata !{i32 786454, null, metadata !"ngx_atomic_t", metadata !572, i32 106, i64 0, i64 0, i64 0, i32 0, metadata !621} ; [ DW_TAG_typedef ] [ngx_atomic_t] [line 106, size 0, align 0, offset 0] [from ]
!621 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !157} ; [ DW_TAG_volatile_type ] [line 0, size 0, align 0, offset 0] [from ngx_atomic_uint_t]
!622 = metadata !{i32 786445, metadata !604, metadata !"loading", metadata !572, i32 114, i64 32, i64 32, i64 352, i32 0, metadata !620} ; [ DW_TAG_member ] [loading] [line 114, size 32, align 32, offset 352] [from ngx_atomic_t]
!623 = metadata !{i32 786445, metadata !604, metadata !"size", metadata !572, i32 115, i64 64, i64 32, i64 384, i32 0, metadata !73} ; [ DW_TAG_member ] [size] [line 115, size 64, align 32, offset 384] [from off_t]
!624 = metadata !{i32 786445, metadata !599, metadata !"shpool", metadata !572, i32 121, i64 32, i64 32, i64 32, i32 0, metadata !625} ; [ DW_TAG_member ] [shpool] [line 121, size 32, align 32, offset 32] [from ]
!625 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !626} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_pool_t]
!626 = metadata !{i32 786454, null, metadata !"ngx_slab_pool_t", metadata !572, i32 44, i64 0, i64 0, i64 0, i32 0, metadata !627} ; [ DW_TAG_typedef ] [ngx_slab_pool_t] [line 44, size 0, align 0, offset 0] [from ]
!627 = metadata !{i32 786451, null, metadata !"", metadata !628, i32 25, i64 704, i64 32, i32 0, i32 0, null, metadata !629, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 25, size 704, align 32, offset 0] [from ]
!628 = metadata !{i32 786473, metadata !"src/core/ngx_slab.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!629 = metadata !{metadata !630, metadata !637, metadata !638, metadata !639, metadata !647, metadata !648, metadata !649, metadata !650, metadata !667, metadata !668, metadata !669, metadata !670}
!630 = metadata !{i32 786445, metadata !627, metadata !"lock", metadata !628, i32 26, i64 64, i64 32, i64 0, i32 0, metadata !631} ; [ DW_TAG_member ] [lock] [line 26, size 64, align 32, offset 0] [from ngx_shmtx_sh_t]
!631 = metadata !{i32 786454, null, metadata !"ngx_shmtx_sh_t", metadata !628, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !632} ; [ DW_TAG_typedef ] [ngx_shmtx_sh_t] [line 21, size 0, align 0, offset 0] [from ]
!632 = metadata !{i32 786451, null, metadata !"", metadata !633, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !634, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!633 = metadata !{i32 786473, metadata !"src/core/ngx_shmtx.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!634 = metadata !{metadata !635, metadata !636}
!635 = metadata !{i32 786445, metadata !632, metadata !"lock", metadata !633, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !620} ; [ DW_TAG_member ] [lock] [line 17, size 32, align 32, offset 0] [from ngx_atomic_t]
!636 = metadata !{i32 786445, metadata !632, metadata !"wait", metadata !633, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !620} ; [ DW_TAG_member ] [wait] [line 19, size 32, align 32, offset 32] [from ngx_atomic_t]
!637 = metadata !{i32 786445, metadata !627, metadata !"min_size", metadata !628, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [min_size] [line 28, size 32, align 32, offset 64] [from size_t]
!638 = metadata !{i32 786445, metadata !627, metadata !"min_shift", metadata !628, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !34} ; [ DW_TAG_member ] [min_shift] [line 29, size 32, align 32, offset 96] [from size_t]
!639 = metadata !{i32 786445, metadata !627, metadata !"pages", metadata !628, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !640} ; [ DW_TAG_member ] [pages] [line 31, size 32, align 32, offset 128] [from ]
!640 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !641} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_slab_page_t]
!641 = metadata !{i32 786454, null, metadata !"ngx_slab_page_t", metadata !628, i32 16, i64 0, i64 0, i64 0, i32 0, metadata !642} ; [ DW_TAG_typedef ] [ngx_slab_page_t] [line 16, size 0, align 0, offset 0] [from ngx_slab_page_s]
!642 = metadata !{i32 786451, null, metadata !"ngx_slab_page_s", metadata !628, i32 18, i64 96, i64 32, i32 0, i32 0, null, metadata !643, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_slab_page_s] [line 18, size 96, align 32, offset 0] [from ]
!643 = metadata !{metadata !644, metadata !645, metadata !646}
!644 = metadata !{i32 786445, metadata !642, metadata !"slab", metadata !628, i32 19, i64 32, i64 32, i64 0, i32 0, metadata !31} ; [ DW_TAG_member ] [slab] [line 19, size 32, align 32, offset 0] [from uintptr_t]
!645 = metadata !{i32 786445, metadata !642, metadata !"next", metadata !628, i32 20, i64 32, i64 32, i64 32, i32 0, metadata !640} ; [ DW_TAG_member ] [next] [line 20, size 32, align 32, offset 32] [from ]
!646 = metadata !{i32 786445, metadata !642, metadata !"prev", metadata !628, i32 21, i64 32, i64 32, i64 64, i32 0, metadata !31} ; [ DW_TAG_member ] [prev] [line 21, size 32, align 32, offset 64] [from uintptr_t]
!647 = metadata !{i32 786445, metadata !627, metadata !"free", metadata !628, i32 32, i64 96, i64 32, i64 160, i32 0, metadata !641} ; [ DW_TAG_member ] [free] [line 32, size 96, align 32, offset 160] [from ngx_slab_page_t]
!648 = metadata !{i32 786445, metadata !627, metadata !"start", metadata !628, i32 34, i64 32, i64 32, i64 256, i32 0, metadata !48} ; [ DW_TAG_member ] [start] [line 34, size 32, align 32, offset 256] [from ]
!649 = metadata !{i32 786445, metadata !627, metadata !"end", metadata !628, i32 35, i64 32, i64 32, i64 288, i32 0, metadata !48} ; [ DW_TAG_member ] [end] [line 35, size 32, align 32, offset 288] [from ]
!650 = metadata !{i32 786445, metadata !627, metadata !"mutex", metadata !628, i32 37, i64 256, i64 32, i64 320, i32 0, metadata !651} ; [ DW_TAG_member ] [mutex] [line 37, size 256, align 32, offset 320] [from ngx_shmtx_t]
!651 = metadata !{i32 786454, null, metadata !"ngx_shmtx_t", metadata !628, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !652} ; [ DW_TAG_typedef ] [ngx_shmtx_t] [line 37, size 0, align 0, offset 0] [from ]
!652 = metadata !{i32 786451, null, metadata !"", metadata !633, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!653 = metadata !{metadata !654, metadata !656, metadata !657, metadata !658, metadata !666}
!654 = metadata !{i32 786445, metadata !652, metadata !"lock", metadata !633, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !655} ; [ DW_TAG_member ] [lock] [line 26, size 32, align 32, offset 0] [from ]
!655 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !620} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_atomic_t]
!656 = metadata !{i32 786445, metadata !652, metadata !"wait", metadata !633, i32 28, i64 32, i64 32, i64 32, i32 0, metadata !655} ; [ DW_TAG_member ] [wait] [line 28, size 32, align 32, offset 32] [from ]
!657 = metadata !{i32 786445, metadata !652, metadata !"semaphore", metadata !633, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [semaphore] [line 29, size 32, align 32, offset 64] [from ngx_uint_t]
!658 = metadata !{i32 786445, metadata !652, metadata !"sem", metadata !633, i32 30, i64 128, i64 32, i64 96, i32 0, metadata !659} ; [ DW_TAG_member ] [sem] [line 30, size 128, align 32, offset 96] [from sem_t]
!659 = metadata !{i32 786454, null, metadata !"sem_t", metadata !633, i32 41, i64 0, i64 0, i64 0, i32 0, metadata !660} ; [ DW_TAG_typedef ] [sem_t] [line 41, size 0, align 0, offset 0] [from ]
!660 = metadata !{i32 786455, null, metadata !"", metadata !661, i32 37, i64 128, i64 32, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 37, size 128, align 32, offset 0] [from ]
!661 = metadata !{i32 786473, metadata !"/usr/include/bits/semaphore.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!662 = metadata !{metadata !663, metadata !665}
!663 = metadata !{i32 786445, metadata !660, metadata !"__size", metadata !661, i32 39, i64 128, i64 8, i64 0, i32 0, metadata !664} ; [ DW_TAG_member ] [__size] [line 39, size 128, align 8, offset 0] [from ]
!664 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 8, i32 0, i32 0, metadata !20, metadata !579, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 8, offset 0] [from char]
!665 = metadata !{i32 786445, metadata !660, metadata !"__align", metadata !661, i32 40, i64 32, i64 32, i64 0, i32 0, metadata !123} ; [ DW_TAG_member ] [__align] [line 40, size 32, align 32, offset 0] [from long int]
!666 = metadata !{i32 786445, metadata !652, metadata !"spin", metadata !633, i32 36, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [spin] [line 36, size 32, align 32, offset 224] [from ngx_uint_t]
!667 = metadata !{i32 786445, metadata !627, metadata !"log_ctx", metadata !628, i32 39, i64 32, i64 32, i64 576, i32 0, metadata !48} ; [ DW_TAG_member ] [log_ctx] [line 39, size 32, align 32, offset 576] [from ]
!668 = metadata !{i32 786445, metadata !627, metadata !"zero", metadata !628, i32 40, i64 8, i64 8, i64 608, i32 0, metadata !49} ; [ DW_TAG_member ] [zero] [line 40, size 8, align 8, offset 608] [from u_char]
!669 = metadata !{i32 786445, metadata !627, metadata !"data", metadata !628, i32 42, i64 32, i64 32, i64 640, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 42, size 32, align 32, offset 640] [from ]
!670 = metadata !{i32 786445, metadata !627, metadata !"addr", metadata !628, i32 43, i64 32, i64 32, i64 672, i32 0, metadata !28} ; [ DW_TAG_member ] [addr] [line 43, size 32, align 32, offset 672] [from ]
!671 = metadata !{i32 786445, metadata !599, metadata !"path", metadata !572, i32 123, i64 32, i64 32, i64 64, i32 0, metadata !672} ; [ DW_TAG_member ] [path] [line 123, size 32, align 32, offset 64] [from ]
!672 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !673} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_path_t]
!673 = metadata !{i32 786454, null, metadata !"ngx_path_t", metadata !572, i32 53, i64 0, i64 0, i64 0, i32 0, metadata !674} ; [ DW_TAG_typedef ] [ngx_path_t] [line 53, size 0, align 0, offset 0] [from ]
!674 = metadata !{i32 786451, null, metadata !"", metadata !86, i32 42, i64 352, i64 32, i32 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 42, size 352, align 32, offset 0] [from ]
!675 = metadata !{metadata !676, metadata !677, metadata !678, metadata !682, metadata !687, metadata !689, metadata !690, metadata !691}
!676 = metadata !{i32 786445, metadata !674, metadata !"name", metadata !86, i32 43, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 43, size 64, align 32, offset 0] [from ngx_str_t]
!677 = metadata !{i32 786445, metadata !674, metadata !"len", metadata !86, i32 44, i64 32, i64 32, i64 64, i32 0, metadata !34} ; [ DW_TAG_member ] [len] [line 44, size 32, align 32, offset 64] [from size_t]
!678 = metadata !{i32 786445, metadata !674, metadata !"level", metadata !86, i32 45, i64 96, i64 32, i64 96, i32 0, metadata !679} ; [ DW_TAG_member ] [level] [line 45, size 96, align 32, offset 96] [from ]
!679 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 32, i32 0, i32 0, metadata !34, metadata !680, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from size_t]
!680 = metadata !{metadata !681}
!681 = metadata !{i32 786465, i64 0, i64 2}       ; [ DW_TAG_subrange_type ] [0, 2]
!682 = metadata !{i32 786445, metadata !674, metadata !"manager", metadata !86, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !683} ; [ DW_TAG_member ] [manager] [line 47, size 32, align 32, offset 192] [from ngx_path_manager_pt]
!683 = metadata !{i32 786454, null, metadata !"ngx_path_manager_pt", metadata !86, i32 38, i64 0, i64 0, i64 0, i32 0, metadata !684} ; [ DW_TAG_typedef ] [ngx_path_manager_pt] [line 38, size 0, align 0, offset 0] [from ]
!684 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !685} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!685 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !686, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!686 = metadata !{metadata !585, metadata !28}
!687 = metadata !{i32 786445, metadata !674, metadata !"loader", metadata !86, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !688} ; [ DW_TAG_member ] [loader] [line 48, size 32, align 32, offset 224] [from ngx_path_loader_pt]
!688 = metadata !{i32 786454, null, metadata !"ngx_path_loader_pt", metadata !86, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [ngx_path_loader_pt] [line 39, size 0, align 0, offset 0] [from ]
!689 = metadata !{i32 786445, metadata !674, metadata !"data", metadata !86, i32 49, i64 32, i64 32, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 49, size 32, align 32, offset 256] [from ]
!690 = metadata !{i32 786445, metadata !674, metadata !"conf_file", metadata !86, i32 51, i64 32, i64 32, i64 288, i32 0, metadata !48} ; [ DW_TAG_member ] [conf_file] [line 51, size 32, align 32, offset 288] [from ]
!691 = metadata !{i32 786445, metadata !674, metadata !"line", metadata !86, i32 52, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [line] [line 52, size 32, align 32, offset 320] [from ngx_uint_t]
!692 = metadata !{i32 786445, metadata !599, metadata !"max_size", metadata !572, i32 125, i64 64, i64 32, i64 96, i32 0, metadata !73} ; [ DW_TAG_member ] [max_size] [line 125, size 64, align 32, offset 96] [from off_t]
!693 = metadata !{i32 786445, metadata !599, metadata !"bsize", metadata !572, i32 126, i64 32, i64 32, i64 160, i32 0, metadata !34} ; [ DW_TAG_member ] [bsize] [line 126, size 32, align 32, offset 160] [from size_t]
!694 = metadata !{i32 786445, metadata !599, metadata !"inactive", metadata !572, i32 128, i64 32, i64 32, i64 192, i32 0, metadata !585} ; [ DW_TAG_member ] [inactive] [line 128, size 32, align 32, offset 192] [from time_t]
!695 = metadata !{i32 786445, metadata !599, metadata !"files", metadata !572, i32 130, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [files] [line 130, size 32, align 32, offset 224] [from ngx_uint_t]
!696 = metadata !{i32 786445, metadata !599, metadata !"loader_files", metadata !572, i32 131, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [loader_files] [line 131, size 32, align 32, offset 256] [from ngx_uint_t]
!697 = metadata !{i32 786445, metadata !599, metadata !"last", metadata !572, i32 132, i64 32, i64 32, i64 288, i32 0, metadata !345} ; [ DW_TAG_member ] [last] [line 132, size 32, align 32, offset 288] [from ngx_msec_t]
!698 = metadata !{i32 786445, metadata !599, metadata !"loader_sleep", metadata !572, i32 133, i64 32, i64 32, i64 320, i32 0, metadata !345} ; [ DW_TAG_member ] [loader_sleep] [line 133, size 32, align 32, offset 320] [from ngx_msec_t]
!699 = metadata !{i32 786445, metadata !599, metadata !"loader_threshold", metadata !572, i32 134, i64 32, i64 32, i64 352, i32 0, metadata !345} ; [ DW_TAG_member ] [loader_threshold] [line 134, size 32, align 32, offset 352] [from ngx_msec_t]
!700 = metadata !{i32 786445, metadata !599, metadata !"shm_zone", metadata !572, i32 136, i64 32, i64 32, i64 384, i32 0, metadata !701} ; [ DW_TAG_member ] [shm_zone] [line 136, size 32, align 32, offset 384] [from ]
!701 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !702} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!702 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !572, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !703} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!703 = metadata !{i32 786451, null, metadata !"ngx_shm_zone_s", metadata !209, i32 29, i64 288, i64 32, i32 0, i32 0, null, metadata !704, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_shm_zone_s] [line 29, size 288, align 32, offset 0] [from ]
!704 = metadata !{metadata !705, metadata !706, metadata !716, metadata !723}
!705 = metadata !{i32 786445, metadata !703, metadata !"data", metadata !209, i32 30, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 30, size 32, align 32, offset 0] [from ]
!706 = metadata !{i32 786445, metadata !703, metadata !"shm", metadata !209, i32 31, i64 192, i64 32, i64 32, i32 0, metadata !707} ; [ DW_TAG_member ] [shm] [line 31, size 192, align 32, offset 32] [from ngx_shm_t]
!707 = metadata !{i32 786454, null, metadata !"ngx_shm_t", metadata !209, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !708} ; [ DW_TAG_typedef ] [ngx_shm_t] [line 22, size 0, align 0, offset 0] [from ]
!708 = metadata !{i32 786451, null, metadata !"", metadata !709, i32 16, i64 192, i64 32, i32 0, i32 0, null, metadata !710, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 192, align 32, offset 0] [from ]
!709 = metadata !{i32 786473, metadata !"src/os/unix/ngx_shmem.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!710 = metadata !{metadata !711, metadata !712, metadata !713, metadata !714, metadata !715}
!711 = metadata !{i32 786445, metadata !708, metadata !"addr", metadata !709, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !48} ; [ DW_TAG_member ] [addr] [line 17, size 32, align 32, offset 0] [from ]
!712 = metadata !{i32 786445, metadata !708, metadata !"size", metadata !709, i32 18, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [size] [line 18, size 32, align 32, offset 32] [from size_t]
!713 = metadata !{i32 786445, metadata !708, metadata !"name", metadata !709, i32 19, i64 64, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 19, size 64, align 32, offset 64] [from ngx_str_t]
!714 = metadata !{i32 786445, metadata !708, metadata !"log", metadata !709, i32 20, i64 32, i64 32, i64 128, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 20, size 32, align 32, offset 128] [from ]
!715 = metadata !{i32 786445, metadata !708, metadata !"exists", metadata !709, i32 21, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [exists] [line 21, size 32, align 32, offset 160] [from ngx_uint_t]
!716 = metadata !{i32 786445, metadata !703, metadata !"init", metadata !209, i32 32, i64 32, i64 32, i64 224, i32 0, metadata !717} ; [ DW_TAG_member ] [init] [line 32, size 32, align 32, offset 224] [from ngx_shm_zone_init_pt]
!717 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_init_pt", metadata !209, i32 27, i64 0, i64 0, i64 0, i32 0, metadata !718} ; [ DW_TAG_typedef ] [ngx_shm_zone_init_pt] [line 27, size 0, align 0, offset 0] [from ]
!718 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !719} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!719 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !720, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!720 = metadata !{metadata !9, metadata !721, metadata !28}
!721 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !722} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_shm_zone_t]
!722 = metadata !{i32 786454, null, metadata !"ngx_shm_zone_t", metadata !209, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !703} ; [ DW_TAG_typedef ] [ngx_shm_zone_t] [line 25, size 0, align 0, offset 0] [from ngx_shm_zone_s]
!723 = metadata !{i32 786445, metadata !703, metadata !"tag", metadata !209, i32 33, i64 32, i64 32, i64 256, i32 0, metadata !28} ; [ DW_TAG_member ] [tag] [line 33, size 32, align 32, offset 256] [from ]
!724 = metadata !{i32 786445, metadata !571, metadata !"node", metadata !572, i32 81, i64 32, i64 32, i64 1888, i32 0, metadata !725} ; [ DW_TAG_member ] [node] [line 81, size 32, align 32, offset 1888] [from ]
!725 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !726} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_file_cache_node_t]
!726 = metadata !{i32 786454, null, metadata !"ngx_http_file_cache_node_t", metadata !572, i32 55, i64 0, i64 0, i64 0, i32 0, metadata !727} ; [ DW_TAG_typedef ] [ngx_http_file_cache_node_t] [line 55, size 0, align 0, offset 0] [from ]
!727 = metadata !{i32 786451, null, metadata !"", metadata !572, i32 34, i64 608, i64 32, i32 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 34, size 608, align 32, offset 0] [from ]
!728 = metadata !{metadata !729, metadata !730, metadata !731, metadata !735, metadata !736, metadata !737, metadata !738, metadata !739, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746}
!729 = metadata !{i32 786445, metadata !727, metadata !"node", metadata !572, i32 35, i64 160, i64 32, i64 0, i32 0, metadata !262} ; [ DW_TAG_member ] [node] [line 35, size 160, align 32, offset 0] [from ngx_rbtree_node_t]
!730 = metadata !{i32 786445, metadata !727, metadata !"queue", metadata !572, i32 36, i64 64, i64 32, i64 160, i32 0, metadata !371} ; [ DW_TAG_member ] [queue] [line 36, size 64, align 32, offset 160] [from ngx_queue_t]
!731 = metadata !{i32 786445, metadata !727, metadata !"key", metadata !572, i32 38, i64 96, i64 8, i64 224, i32 0, metadata !732} ; [ DW_TAG_member ] [key] [line 38, size 96, align 8, offset 224] [from ]
!732 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 96, i64 8, i32 0, i32 0, metadata !49, metadata !733, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 8, offset 0] [from u_char]
!733 = metadata !{metadata !734}
!734 = metadata !{i32 786465, i64 0, i64 11}      ; [ DW_TAG_subrange_type ] [0, 11]
!735 = metadata !{i32 786445, metadata !727, metadata !"count", metadata !572, i32 41, i64 20, i64 32, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [count] [line 41, size 20, align 32, offset 320] [from unsigned int]
!736 = metadata !{i32 786445, metadata !727, metadata !"uses", metadata !572, i32 42, i64 10, i64 32, i64 340, i32 0, metadata !32} ; [ DW_TAG_member ] [uses] [line 42, size 10, align 32, offset 340] [from unsigned int]
!737 = metadata !{i32 786445, metadata !727, metadata !"valid_msec", metadata !572, i32 43, i64 10, i64 32, i64 352, i32 0, metadata !32} ; [ DW_TAG_member ] [valid_msec] [line 43, size 10, align 32, offset 352] [from unsigned int]
!738 = metadata !{i32 786445, metadata !727, metadata !"error", metadata !572, i32 44, i64 10, i64 32, i64 362, i32 0, metadata !32} ; [ DW_TAG_member ] [error] [line 44, size 10, align 32, offset 362] [from unsigned int]
!739 = metadata !{i32 786445, metadata !727, metadata !"exists", metadata !572, i32 45, i64 1, i64 32, i64 372, i32 0, metadata !32} ; [ DW_TAG_member ] [exists] [line 45, size 1, align 32, offset 372] [from unsigned int]
!740 = metadata !{i32 786445, metadata !727, metadata !"updating", metadata !572, i32 46, i64 1, i64 32, i64 373, i32 0, metadata !32} ; [ DW_TAG_member ] [updating] [line 46, size 1, align 32, offset 373] [from unsigned int]
!741 = metadata !{i32 786445, metadata !727, metadata !"deleting", metadata !572, i32 47, i64 1, i64 32, i64 374, i32 0, metadata !32} ; [ DW_TAG_member ] [deleting] [line 47, size 1, align 32, offset 374] [from unsigned int]
!742 = metadata !{i32 786445, metadata !727, metadata !"uniq", metadata !572, i32 50, i64 64, i64 32, i64 384, i32 0, metadata !582} ; [ DW_TAG_member ] [uniq] [line 50, size 64, align 32, offset 384] [from ngx_file_uniq_t]
!743 = metadata !{i32 786445, metadata !727, metadata !"expire", metadata !572, i32 51, i64 32, i64 32, i64 448, i32 0, metadata !585} ; [ DW_TAG_member ] [expire] [line 51, size 32, align 32, offset 448] [from time_t]
!744 = metadata !{i32 786445, metadata !727, metadata !"valid_sec", metadata !572, i32 52, i64 32, i64 32, i64 480, i32 0, metadata !585} ; [ DW_TAG_member ] [valid_sec] [line 52, size 32, align 32, offset 480] [from time_t]
!745 = metadata !{i32 786445, metadata !727, metadata !"body_start", metadata !572, i32 53, i64 32, i64 32, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [body_start] [line 53, size 32, align 32, offset 512] [from size_t]
!746 = metadata !{i32 786445, metadata !727, metadata !"fs_size", metadata !572, i32 54, i64 64, i64 32, i64 544, i32 0, metadata !73} ; [ DW_TAG_member ] [fs_size] [line 54, size 64, align 32, offset 544] [from off_t]
!747 = metadata !{i32 786445, metadata !571, metadata !"lock_timeout", metadata !572, i32 83, i64 32, i64 32, i64 1920, i32 0, metadata !345} ; [ DW_TAG_member ] [lock_timeout] [line 83, size 32, align 32, offset 1920] [from ngx_msec_t]
!748 = metadata !{i32 786445, metadata !571, metadata !"wait_time", metadata !572, i32 84, i64 32, i64 32, i64 1952, i32 0, metadata !345} ; [ DW_TAG_member ] [wait_time] [line 84, size 32, align 32, offset 1952] [from ngx_msec_t]
!749 = metadata !{i32 786445, metadata !571, metadata !"wait_event", metadata !572, i32 86, i64 416, i64 32, i64 1984, i32 0, metadata !228} ; [ DW_TAG_member ] [wait_event] [line 86, size 416, align 32, offset 1984] [from ngx_event_t]
!750 = metadata !{i32 786445, metadata !571, metadata !"lock", metadata !572, i32 88, i64 1, i64 32, i64 2400, i32 0, metadata !32} ; [ DW_TAG_member ] [lock] [line 88, size 1, align 32, offset 2400] [from unsigned int]
!751 = metadata !{i32 786445, metadata !571, metadata !"waiting", metadata !572, i32 89, i64 1, i64 32, i64 2401, i32 0, metadata !32} ; [ DW_TAG_member ] [waiting] [line 89, size 1, align 32, offset 2401] [from unsigned int]
!752 = metadata !{i32 786445, metadata !571, metadata !"updated", metadata !572, i32 91, i64 1, i64 32, i64 2402, i32 0, metadata !32} ; [ DW_TAG_member ] [updated] [line 91, size 1, align 32, offset 2402] [from unsigned int]
!753 = metadata !{i32 786445, metadata !571, metadata !"updating", metadata !572, i32 92, i64 1, i64 32, i64 2403, i32 0, metadata !32} ; [ DW_TAG_member ] [updating] [line 92, size 1, align 32, offset 2403] [from unsigned int]
!754 = metadata !{i32 786445, metadata !571, metadata !"exists", metadata !572, i32 93, i64 1, i64 32, i64 2404, i32 0, metadata !32} ; [ DW_TAG_member ] [exists] [line 93, size 1, align 32, offset 2404] [from unsigned int]
!755 = metadata !{i32 786445, metadata !571, metadata !"temp_file", metadata !572, i32 94, i64 1, i64 32, i64 2405, i32 0, metadata !32} ; [ DW_TAG_member ] [temp_file] [line 94, size 1, align 32, offset 2405] [from unsigned int]
!756 = metadata !{i32 786445, metadata !551, metadata !"upstream", metadata !552, i32 371, i64 32, i64 32, i64 288, i32 0, metadata !757} ; [ DW_TAG_member ] [upstream] [line 371, size 32, align 32, offset 288] [from ]
!757 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !758} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!758 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !552, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !759} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!759 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_s", metadata !760, i32 261, i64 3584, i64 32, i32 0, i32 0, null, metadata !761, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_s] [line 261, size 3584, align 32, offset 0] [from ]
!760 = metadata !{i32 786473, metadata !"src/http/ngx_http_upstream.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!761 = metadata !{metadata !762, metadata !769, metadata !770, metadata !807, metadata !883, metadata !884, metadata !905, metadata !914, metadata !1008, metadata !1044, metadata !1117, metadata !1118, metadata !1119, metadata !1120, metadata !1121, metadata !1122, metadata !1126, metadata !1130, metadata !1131, metadata !1135, metadata !1136, metadata !1137, metadata !1138, metadata !1139, metadata !1143, metadata !1147, metadata !1151, metadata !1152, metadata !1164, metadata !1165, metadata !1166, metadata !1167, metadata !1170, metadata !1171, metadata !1172, metadata !1173, metadata !1174, metadata !1175, metadata !1176, metadata !1177, metadata !1178}
!762 = metadata !{i32 786445, metadata !759, metadata !"read_event_handler", metadata !760, i32 262, i64 32, i64 32, i64 0, i32 0, metadata !763} ; [ DW_TAG_member ] [read_event_handler] [line 262, size 32, align 32, offset 0] [from ngx_http_upstream_handler_pt]
!763 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_handler_pt", metadata !760, i32 257, i64 0, i64 0, i64 0, i32 0, metadata !764} ; [ DW_TAG_typedef ] [ngx_http_upstream_handler_pt] [line 257, size 0, align 0, offset 0] [from ]
!764 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !765} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!765 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !766, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!766 = metadata !{null, metadata !565, metadata !767}
!767 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !768} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_t]
!768 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_t", metadata !760, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !759} ; [ DW_TAG_typedef ] [ngx_http_upstream_t] [line 17, size 0, align 0, offset 0] [from ngx_http_upstream_s]
!769 = metadata !{i32 786445, metadata !759, metadata !"write_event_handler", metadata !760, i32 263, i64 32, i64 32, i64 32, i32 0, metadata !763} ; [ DW_TAG_member ] [write_event_handler] [line 263, size 32, align 32, offset 32] [from ngx_http_upstream_handler_pt]
!770 = metadata !{i32 786445, metadata !759, metadata !"peer", metadata !760, i32 265, i64 384, i64 32, i64 64, i32 0, metadata !771} ; [ DW_TAG_member ] [peer] [line 265, size 384, align 32, offset 64] [from ngx_peer_connection_t]
!771 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !760, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !772} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!772 = metadata !{i32 786451, null, metadata !"ngx_peer_connection_s", metadata !773, i32 37, i64 384, i64 32, i32 0, i32 0, null, metadata !774, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_peer_connection_s] [line 37, size 384, align 32, offset 0] [from ]
!773 = metadata !{i32 786473, metadata !"src/event/ngx_event_connect.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!774 = metadata !{metadata !775, metadata !776, metadata !777, metadata !778, metadata !780, metadata !781, metadata !788, metadata !793, metadata !794, metadata !803, metadata !804, metadata !805, metadata !806}
!775 = metadata !{i32 786445, metadata !772, metadata !"connection", metadata !773, i32 38, i64 32, i64 32, i64 0, i32 0, metadata !220} ; [ DW_TAG_member ] [connection] [line 38, size 32, align 32, offset 0] [from ]
!776 = metadata !{i32 786445, metadata !772, metadata !"sockaddr", metadata !773, i32 40, i64 32, i64 32, i64 32, i32 0, metadata !312} ; [ DW_TAG_member ] [sockaddr] [line 40, size 32, align 32, offset 32] [from ]
!777 = metadata !{i32 786445, metadata !772, metadata !"socklen", metadata !773, i32 41, i64 32, i64 32, i64 64, i32 0, metadata !323} ; [ DW_TAG_member ] [socklen] [line 41, size 32, align 32, offset 64] [from socklen_t]
!778 = metadata !{i32 786445, metadata !772, metadata !"name", metadata !773, i32 42, i64 32, i64 32, i64 96, i32 0, metadata !779} ; [ DW_TAG_member ] [name] [line 42, size 32, align 32, offset 96] [from ]
!779 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_str_t]
!780 = metadata !{i32 786445, metadata !772, metadata !"tries", metadata !773, i32 44, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [tries] [line 44, size 32, align 32, offset 128] [from ngx_uint_t]
!781 = metadata !{i32 786445, metadata !772, metadata !"get", metadata !773, i32 46, i64 32, i64 32, i64 160, i32 0, metadata !782} ; [ DW_TAG_member ] [get] [line 46, size 32, align 32, offset 160] [from ngx_event_get_peer_pt]
!782 = metadata !{i32 786454, null, metadata !"ngx_event_get_peer_pt", metadata !773, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !783} ; [ DW_TAG_typedef ] [ngx_event_get_peer_pt] [line 24, size 0, align 0, offset 0] [from ]
!783 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !784} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!784 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !785, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!785 = metadata !{metadata !9, metadata !786, metadata !28}
!786 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !787} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_peer_connection_t]
!787 = metadata !{i32 786454, null, metadata !"ngx_peer_connection_t", metadata !773, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !772} ; [ DW_TAG_typedef ] [ngx_peer_connection_t] [line 22, size 0, align 0, offset 0] [from ngx_peer_connection_s]
!788 = metadata !{i32 786445, metadata !772, metadata !"free", metadata !773, i32 47, i64 32, i64 32, i64 192, i32 0, metadata !789} ; [ DW_TAG_member ] [free] [line 47, size 32, align 32, offset 192] [from ngx_event_free_peer_pt]
!789 = metadata !{i32 786454, null, metadata !"ngx_event_free_peer_pt", metadata !773, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !790} ; [ DW_TAG_typedef ] [ngx_event_free_peer_pt] [line 26, size 0, align 0, offset 0] [from ]
!790 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !791} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!791 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !792, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!792 = metadata !{null, metadata !786, metadata !28, metadata !30}
!793 = metadata !{i32 786445, metadata !772, metadata !"data", metadata !773, i32 48, i64 32, i64 32, i64 224, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 48, size 32, align 32, offset 224] [from ]
!794 = metadata !{i32 786445, metadata !772, metadata !"local", metadata !773, i32 59, i64 32, i64 32, i64 256, i32 0, metadata !795} ; [ DW_TAG_member ] [local] [line 59, size 32, align 32, offset 256] [from ]
!795 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !796} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_addr_t]
!796 = metadata !{i32 786454, null, metadata !"ngx_addr_t", metadata !773, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !797} ; [ DW_TAG_typedef ] [ngx_addr_t] [line 74, size 0, align 0, offset 0] [from ]
!797 = metadata !{i32 786451, null, metadata !"", metadata !798, i32 70, i64 128, i64 32, i32 0, i32 0, null, metadata !799, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 70, size 128, align 32, offset 0] [from ]
!798 = metadata !{i32 786473, metadata !"src/core/ngx_inet.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!799 = metadata !{metadata !800, metadata !801, metadata !802}
!800 = metadata !{i32 786445, metadata !797, metadata !"sockaddr", metadata !798, i32 71, i64 32, i64 32, i64 0, i32 0, metadata !312} ; [ DW_TAG_member ] [sockaddr] [line 71, size 32, align 32, offset 0] [from ]
!801 = metadata !{i32 786445, metadata !797, metadata !"socklen", metadata !798, i32 72, i64 32, i64 32, i64 32, i32 0, metadata !323} ; [ DW_TAG_member ] [socklen] [line 72, size 32, align 32, offset 32] [from socklen_t]
!802 = metadata !{i32 786445, metadata !797, metadata !"name", metadata !798, i32 73, i64 64, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 73, size 64, align 32, offset 64] [from ngx_str_t]
!803 = metadata !{i32 786445, metadata !772, metadata !"rcvbuf", metadata !773, i32 61, i64 32, i64 32, i64 288, i32 0, metadata !13} ; [ DW_TAG_member ] [rcvbuf] [line 61, size 32, align 32, offset 288] [from int]
!804 = metadata !{i32 786445, metadata !772, metadata !"log", metadata !773, i32 63, i64 32, i64 32, i64 320, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 63, size 32, align 32, offset 320] [from ]
!805 = metadata !{i32 786445, metadata !772, metadata !"cached", metadata !773, i32 65, i64 1, i64 32, i64 352, i32 0, metadata !32} ; [ DW_TAG_member ] [cached] [line 65, size 1, align 32, offset 352] [from unsigned int]
!806 = metadata !{i32 786445, metadata !772, metadata !"log_error", metadata !773, i32 68, i64 2, i64 32, i64 353, i32 0, metadata !32} ; [ DW_TAG_member ] [log_error] [line 68, size 2, align 32, offset 353] [from unsigned int]
!807 = metadata !{i32 786445, metadata !759, metadata !"pipe", metadata !760, i32 267, i64 32, i64 32, i64 448, i32 0, metadata !808} ; [ DW_TAG_member ] [pipe] [line 267, size 32, align 32, offset 448] [from ]
!808 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !809} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!809 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !760, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !810} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!810 = metadata !{i32 786451, null, metadata !"ngx_event_pipe_s", metadata !811, i32 25, i64 1120, i64 32, i32 0, i32 0, null, metadata !812, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_event_pipe_s] [line 25, size 1120, align 32, offset 0] [from ]
!811 = metadata !{i32 786473, metadata !"src/event/ngx_event_pipe.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!812 = metadata !{metadata !813, metadata !814, metadata !815, metadata !816, metadata !817, metadata !819, metadata !820, metadata !821, metadata !822, metadata !829, metadata !830, metadata !835, metadata !836, metadata !837, metadata !838, metadata !839, metadata !840, metadata !841, metadata !842, metadata !843, metadata !844, metadata !845, metadata !846, metadata !847, metadata !848, metadata !854, metadata !855, metadata !856, metadata !857, metadata !858, metadata !859, metadata !860, metadata !861, metadata !862, metadata !863, metadata !864, metadata !865, metadata !866, metadata !867, metadata !868, metadata !882}
!813 = metadata !{i32 786445, metadata !810, metadata !"upstream", metadata !811, i32 26, i64 32, i64 32, i64 0, i32 0, metadata !220} ; [ DW_TAG_member ] [upstream] [line 26, size 32, align 32, offset 0] [from ]
!814 = metadata !{i32 786445, metadata !810, metadata !"downstream", metadata !811, i32 27, i64 32, i64 32, i64 32, i32 0, metadata !220} ; [ DW_TAG_member ] [downstream] [line 27, size 32, align 32, offset 32] [from ]
!815 = metadata !{i32 786445, metadata !810, metadata !"free_raw_bufs", metadata !811, i32 29, i64 32, i64 32, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ] [free_raw_bufs] [line 29, size 32, align 32, offset 64] [from ]
!816 = metadata !{i32 786445, metadata !810, metadata !"in", metadata !811, i32 30, i64 32, i64 32, i64 96, i32 0, metadata !60} ; [ DW_TAG_member ] [in] [line 30, size 32, align 32, offset 96] [from ]
!817 = metadata !{i32 786445, metadata !810, metadata !"last_in", metadata !811, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !818} ; [ DW_TAG_member ] [last_in] [line 31, size 32, align 32, offset 128] [from ]
!818 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!819 = metadata !{i32 786445, metadata !810, metadata !"out", metadata !811, i32 33, i64 32, i64 32, i64 160, i32 0, metadata !60} ; [ DW_TAG_member ] [out] [line 33, size 32, align 32, offset 160] [from ]
!820 = metadata !{i32 786445, metadata !810, metadata !"free", metadata !811, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !60} ; [ DW_TAG_member ] [free] [line 34, size 32, align 32, offset 192] [from ]
!821 = metadata !{i32 786445, metadata !810, metadata !"busy", metadata !811, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !60} ; [ DW_TAG_member ] [busy] [line 35, size 32, align 32, offset 224] [from ]
!822 = metadata !{i32 786445, metadata !810, metadata !"input_filter", metadata !811, i32 42, i64 32, i64 32, i64 256, i32 0, metadata !823} ; [ DW_TAG_member ] [input_filter] [line 42, size 32, align 32, offset 256] [from ngx_event_pipe_input_filter_pt]
!823 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_input_filter_pt", metadata !811, i32 19, i64 0, i64 0, i64 0, i32 0, metadata !824} ; [ DW_TAG_typedef ] [ngx_event_pipe_input_filter_pt] [line 19, size 0, align 0, offset 0] [from ]
!824 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !825} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!825 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !826, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!826 = metadata !{metadata !9, metadata !827, metadata !66}
!827 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !828} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_event_pipe_t]
!828 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_t", metadata !811, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !810} ; [ DW_TAG_typedef ] [ngx_event_pipe_t] [line 17, size 0, align 0, offset 0] [from ngx_event_pipe_s]
!829 = metadata !{i32 786445, metadata !810, metadata !"input_ctx", metadata !811, i32 43, i64 32, i64 32, i64 288, i32 0, metadata !28} ; [ DW_TAG_member ] [input_ctx] [line 43, size 32, align 32, offset 288] [from ]
!830 = metadata !{i32 786445, metadata !810, metadata !"output_filter", metadata !811, i32 45, i64 32, i64 32, i64 320, i32 0, metadata !831} ; [ DW_TAG_member ] [output_filter] [line 45, size 32, align 32, offset 320] [from ngx_event_pipe_output_filter_pt]
!831 = metadata !{i32 786454, null, metadata !"ngx_event_pipe_output_filter_pt", metadata !811, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !832} ; [ DW_TAG_typedef ] [ngx_event_pipe_output_filter_pt] [line 21, size 0, align 0, offset 0] [from ]
!832 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !833} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!833 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !834, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!834 = metadata !{metadata !9, metadata !28, metadata !60}
!835 = metadata !{i32 786445, metadata !810, metadata !"output_ctx", metadata !811, i32 46, i64 32, i64 32, i64 352, i32 0, metadata !28} ; [ DW_TAG_member ] [output_ctx] [line 46, size 32, align 32, offset 352] [from ]
!836 = metadata !{i32 786445, metadata !810, metadata !"read", metadata !811, i32 48, i64 1, i64 32, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [read] [line 48, size 1, align 32, offset 384] [from unsigned int]
!837 = metadata !{i32 786445, metadata !810, metadata !"cacheable", metadata !811, i32 49, i64 1, i64 32, i64 385, i32 0, metadata !32} ; [ DW_TAG_member ] [cacheable] [line 49, size 1, align 32, offset 385] [from unsigned int]
!838 = metadata !{i32 786445, metadata !810, metadata !"single_buf", metadata !811, i32 50, i64 1, i64 32, i64 386, i32 0, metadata !32} ; [ DW_TAG_member ] [single_buf] [line 50, size 1, align 32, offset 386] [from unsigned int]
!839 = metadata !{i32 786445, metadata !810, metadata !"free_bufs", metadata !811, i32 51, i64 1, i64 32, i64 387, i32 0, metadata !32} ; [ DW_TAG_member ] [free_bufs] [line 51, size 1, align 32, offset 387] [from unsigned int]
!840 = metadata !{i32 786445, metadata !810, metadata !"upstream_done", metadata !811, i32 52, i64 1, i64 32, i64 388, i32 0, metadata !32} ; [ DW_TAG_member ] [upstream_done] [line 52, size 1, align 32, offset 388] [from unsigned int]
!841 = metadata !{i32 786445, metadata !810, metadata !"upstream_error", metadata !811, i32 53, i64 1, i64 32, i64 389, i32 0, metadata !32} ; [ DW_TAG_member ] [upstream_error] [line 53, size 1, align 32, offset 389] [from unsigned int]
!842 = metadata !{i32 786445, metadata !810, metadata !"upstream_eof", metadata !811, i32 54, i64 1, i64 32, i64 390, i32 0, metadata !32} ; [ DW_TAG_member ] [upstream_eof] [line 54, size 1, align 32, offset 390] [from unsigned int]
!843 = metadata !{i32 786445, metadata !810, metadata !"upstream_blocked", metadata !811, i32 55, i64 1, i64 32, i64 391, i32 0, metadata !32} ; [ DW_TAG_member ] [upstream_blocked] [line 55, size 1, align 32, offset 391] [from unsigned int]
!844 = metadata !{i32 786445, metadata !810, metadata !"downstream_done", metadata !811, i32 56, i64 1, i64 32, i64 392, i32 0, metadata !32} ; [ DW_TAG_member ] [downstream_done] [line 56, size 1, align 32, offset 392] [from unsigned int]
!845 = metadata !{i32 786445, metadata !810, metadata !"downstream_error", metadata !811, i32 57, i64 1, i64 32, i64 393, i32 0, metadata !32} ; [ DW_TAG_member ] [downstream_error] [line 57, size 1, align 32, offset 393] [from unsigned int]
!846 = metadata !{i32 786445, metadata !810, metadata !"cyclic_temp_file", metadata !811, i32 58, i64 1, i64 32, i64 394, i32 0, metadata !32} ; [ DW_TAG_member ] [cyclic_temp_file] [line 58, size 1, align 32, offset 394] [from unsigned int]
!847 = metadata !{i32 786445, metadata !810, metadata !"allocated", metadata !811, i32 60, i64 32, i64 32, i64 416, i32 0, metadata !9} ; [ DW_TAG_member ] [allocated] [line 60, size 32, align 32, offset 416] [from ngx_int_t]
!848 = metadata !{i32 786445, metadata !810, metadata !"bufs", metadata !811, i32 61, i64 64, i64 32, i64 448, i32 0, metadata !849} ; [ DW_TAG_member ] [bufs] [line 61, size 64, align 32, offset 448] [from ngx_bufs_t]
!849 = metadata !{i32 786454, null, metadata !"ngx_bufs_t", metadata !811, i32 68, i64 0, i64 0, i64 0, i32 0, metadata !850} ; [ DW_TAG_typedef ] [ngx_bufs_t] [line 68, size 0, align 0, offset 0] [from ]
!850 = metadata !{i32 786451, null, metadata !"", metadata !63, i32 65, i64 64, i64 32, i32 0, i32 0, null, metadata !851, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 65, size 64, align 32, offset 0] [from ]
!851 = metadata !{metadata !852, metadata !853}
!852 = metadata !{i32 786445, metadata !850, metadata !"num", metadata !63, i32 66, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [num] [line 66, size 32, align 32, offset 0] [from ngx_int_t]
!853 = metadata !{i32 786445, metadata !850, metadata !"size", metadata !63, i32 67, i64 32, i64 32, i64 32, i32 0, metadata !34} ; [ DW_TAG_member ] [size] [line 67, size 32, align 32, offset 32] [from size_t]
!854 = metadata !{i32 786445, metadata !810, metadata !"tag", metadata !811, i32 62, i64 32, i64 32, i64 512, i32 0, metadata !81} ; [ DW_TAG_member ] [tag] [line 62, size 32, align 32, offset 512] [from ngx_buf_tag_t]
!855 = metadata !{i32 786445, metadata !810, metadata !"busy_size", metadata !811, i32 64, i64 32, i64 32, i64 544, i32 0, metadata !289} ; [ DW_TAG_member ] [busy_size] [line 64, size 32, align 32, offset 544] [from ssize_t]
!856 = metadata !{i32 786445, metadata !810, metadata !"read_length", metadata !811, i32 66, i64 64, i64 32, i64 576, i32 0, metadata !73} ; [ DW_TAG_member ] [read_length] [line 66, size 64, align 32, offset 576] [from off_t]
!857 = metadata !{i32 786445, metadata !810, metadata !"length", metadata !811, i32 67, i64 64, i64 32, i64 640, i32 0, metadata !73} ; [ DW_TAG_member ] [length] [line 67, size 64, align 32, offset 640] [from off_t]
!858 = metadata !{i32 786445, metadata !810, metadata !"max_temp_file_size", metadata !811, i32 69, i64 64, i64 32, i64 704, i32 0, metadata !73} ; [ DW_TAG_member ] [max_temp_file_size] [line 69, size 64, align 32, offset 704] [from off_t]
!859 = metadata !{i32 786445, metadata !810, metadata !"temp_file_write_size", metadata !811, i32 70, i64 32, i64 32, i64 768, i32 0, metadata !289} ; [ DW_TAG_member ] [temp_file_write_size] [line 70, size 32, align 32, offset 768] [from ssize_t]
!860 = metadata !{i32 786445, metadata !810, metadata !"read_timeout", metadata !811, i32 72, i64 32, i64 32, i64 800, i32 0, metadata !345} ; [ DW_TAG_member ] [read_timeout] [line 72, size 32, align 32, offset 800] [from ngx_msec_t]
!861 = metadata !{i32 786445, metadata !810, metadata !"send_timeout", metadata !811, i32 73, i64 32, i64 32, i64 832, i32 0, metadata !345} ; [ DW_TAG_member ] [send_timeout] [line 73, size 32, align 32, offset 832] [from ngx_msec_t]
!862 = metadata !{i32 786445, metadata !810, metadata !"send_lowat", metadata !811, i32 74, i64 32, i64 32, i64 864, i32 0, metadata !289} ; [ DW_TAG_member ] [send_lowat] [line 74, size 32, align 32, offset 864] [from ssize_t]
!863 = metadata !{i32 786445, metadata !810, metadata !"pool", metadata !811, i32 76, i64 32, i64 32, i64 896, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 76, size 32, align 32, offset 896] [from ]
!864 = metadata !{i32 786445, metadata !810, metadata !"log", metadata !811, i32 77, i64 32, i64 32, i64 928, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 77, size 32, align 32, offset 928] [from ]
!865 = metadata !{i32 786445, metadata !810, metadata !"preread_bufs", metadata !811, i32 79, i64 32, i64 32, i64 960, i32 0, metadata !60} ; [ DW_TAG_member ] [preread_bufs] [line 79, size 32, align 32, offset 960] [from ]
!866 = metadata !{i32 786445, metadata !810, metadata !"preread_size", metadata !811, i32 80, i64 32, i64 32, i64 992, i32 0, metadata !34} ; [ DW_TAG_member ] [preread_size] [line 80, size 32, align 32, offset 992] [from size_t]
!867 = metadata !{i32 786445, metadata !810, metadata !"buf_to_file", metadata !811, i32 81, i64 32, i64 32, i64 1024, i32 0, metadata !66} ; [ DW_TAG_member ] [buf_to_file] [line 81, size 32, align 32, offset 1024] [from ]
!868 = metadata !{i32 786445, metadata !810, metadata !"temp_file", metadata !811, i32 83, i64 32, i64 32, i64 1056, i32 0, metadata !869} ; [ DW_TAG_member ] [temp_file] [line 83, size 32, align 32, offset 1056] [from ]
!869 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !870} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_temp_file_t]
!870 = metadata !{i32 786454, null, metadata !"ngx_temp_file_t", metadata !811, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !871} ; [ DW_TAG_typedef ] [ngx_temp_file_t] [line 74, size 0, align 0, offset 0] [from ]
!871 = metadata !{i32 786451, null, metadata !"", metadata !86, i32 62, i64 1280, i64 32, i32 0, i32 0, null, metadata !872, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 62, size 1280, align 32, offset 0] [from ]
!872 = metadata !{metadata !873, metadata !874, metadata !875, metadata !876, metadata !877, metadata !878, metadata !879, metadata !880, metadata !881}
!873 = metadata !{i32 786445, metadata !871, metadata !"file", metadata !86, i32 63, i64 1056, i64 32, i64 0, i32 0, metadata !84} ; [ DW_TAG_member ] [file] [line 63, size 1056, align 32, offset 0] [from ngx_file_t]
!874 = metadata !{i32 786445, metadata !871, metadata !"offset", metadata !86, i32 64, i64 64, i64 32, i64 1056, i32 0, metadata !73} ; [ DW_TAG_member ] [offset] [line 64, size 64, align 32, offset 1056] [from off_t]
!875 = metadata !{i32 786445, metadata !871, metadata !"path", metadata !86, i32 65, i64 32, i64 32, i64 1120, i32 0, metadata !672} ; [ DW_TAG_member ] [path] [line 65, size 32, align 32, offset 1120] [from ]
!876 = metadata !{i32 786445, metadata !871, metadata !"pool", metadata !86, i32 66, i64 32, i64 32, i64 1152, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 66, size 32, align 32, offset 1152] [from ]
!877 = metadata !{i32 786445, metadata !871, metadata !"warn", metadata !86, i32 67, i64 32, i64 32, i64 1184, i32 0, metadata !19} ; [ DW_TAG_member ] [warn] [line 67, size 32, align 32, offset 1184] [from ]
!878 = metadata !{i32 786445, metadata !871, metadata !"access", metadata !86, i32 69, i64 32, i64 32, i64 1216, i32 0, metadata !30} ; [ DW_TAG_member ] [access] [line 69, size 32, align 32, offset 1216] [from ngx_uint_t]
!879 = metadata !{i32 786445, metadata !871, metadata !"log_level", metadata !86, i32 71, i64 8, i64 32, i64 1248, i32 0, metadata !32} ; [ DW_TAG_member ] [log_level] [line 71, size 8, align 32, offset 1248] [from unsigned int]
!880 = metadata !{i32 786445, metadata !871, metadata !"persistent", metadata !86, i32 72, i64 1, i64 32, i64 1256, i32 0, metadata !32} ; [ DW_TAG_member ] [persistent] [line 72, size 1, align 32, offset 1256] [from unsigned int]
!881 = metadata !{i32 786445, metadata !871, metadata !"clean", metadata !86, i32 73, i64 1, i64 32, i64 1257, i32 0, metadata !32} ; [ DW_TAG_member ] [clean] [line 73, size 1, align 32, offset 1257] [from unsigned int]
!882 = metadata !{i32 786445, metadata !810, metadata !"num", metadata !811, i32 85, i64 32, i64 32, i64 1088, i32 0, metadata !13} ; [ DW_TAG_member ] [num] [line 85, size 32, align 32, offset 1088] [from int]
!883 = metadata !{i32 786445, metadata !759, metadata !"request_bufs", metadata !760, i32 269, i64 32, i64 32, i64 480, i32 0, metadata !60} ; [ DW_TAG_member ] [request_bufs] [line 269, size 32, align 32, offset 480] [from ]
!884 = metadata !{i32 786445, metadata !759, metadata !"output", metadata !760, i32 271, i64 448, i64 32, i64 512, i32 0, metadata !885} ; [ DW_TAG_member ] [output] [line 271, size 448, align 32, offset 512] [from ngx_output_chain_ctx_t]
!885 = metadata !{i32 786454, null, metadata !"ngx_output_chain_ctx_t", metadata !760, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !886} ; [ DW_TAG_typedef ] [ngx_output_chain_ctx_t] [line 71, size 0, align 0, offset 0] [from ngx_output_chain_ctx_s]
!886 = metadata !{i32 786451, null, metadata !"ngx_output_chain_ctx_s", metadata !63, i32 80, i64 448, i64 32, i32 0, i32 0, null, metadata !887, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_output_chain_ctx_s] [line 80, size 448, align 32, offset 0] [from ]
!887 = metadata !{metadata !888, metadata !889, metadata !890, metadata !891, metadata !892, metadata !893, metadata !894, metadata !895, metadata !896, metadata !897, metadata !898, metadata !899, metadata !900, metadata !901, metadata !902, metadata !904}
!888 = metadata !{i32 786445, metadata !886, metadata !"buf", metadata !63, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_member ] [buf] [line 81, size 32, align 32, offset 0] [from ]
!889 = metadata !{i32 786445, metadata !886, metadata !"in", metadata !63, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !60} ; [ DW_TAG_member ] [in] [line 82, size 32, align 32, offset 32] [from ]
!890 = metadata !{i32 786445, metadata !886, metadata !"free", metadata !63, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !60} ; [ DW_TAG_member ] [free] [line 83, size 32, align 32, offset 64] [from ]
!891 = metadata !{i32 786445, metadata !886, metadata !"busy", metadata !63, i32 84, i64 32, i64 32, i64 96, i32 0, metadata !60} ; [ DW_TAG_member ] [busy] [line 84, size 32, align 32, offset 96] [from ]
!892 = metadata !{i32 786445, metadata !886, metadata !"sendfile", metadata !63, i32 86, i64 1, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [sendfile] [line 86, size 1, align 32, offset 128] [from unsigned int]
!893 = metadata !{i32 786445, metadata !886, metadata !"directio", metadata !63, i32 87, i64 1, i64 32, i64 129, i32 0, metadata !32} ; [ DW_TAG_member ] [directio] [line 87, size 1, align 32, offset 129] [from unsigned int]
!894 = metadata !{i32 786445, metadata !886, metadata !"unaligned", metadata !63, i32 89, i64 1, i64 32, i64 130, i32 0, metadata !32} ; [ DW_TAG_member ] [unaligned] [line 89, size 1, align 32, offset 130] [from unsigned int]
!895 = metadata !{i32 786445, metadata !886, metadata !"need_in_memory", metadata !63, i32 91, i64 1, i64 32, i64 131, i32 0, metadata !32} ; [ DW_TAG_member ] [need_in_memory] [line 91, size 1, align 32, offset 131] [from unsigned int]
!896 = metadata !{i32 786445, metadata !886, metadata !"need_in_temp", metadata !63, i32 92, i64 1, i64 32, i64 132, i32 0, metadata !32} ; [ DW_TAG_member ] [need_in_temp] [line 92, size 1, align 32, offset 132] [from unsigned int]
!897 = metadata !{i32 786445, metadata !886, metadata !"alignment", metadata !63, i32 99, i64 64, i64 32, i64 160, i32 0, metadata !73} ; [ DW_TAG_member ] [alignment] [line 99, size 64, align 32, offset 160] [from off_t]
!898 = metadata !{i32 786445, metadata !886, metadata !"pool", metadata !63, i32 101, i64 32, i64 32, i64 224, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 101, size 32, align 32, offset 224] [from ]
!899 = metadata !{i32 786445, metadata !886, metadata !"allocated", metadata !63, i32 102, i64 32, i64 32, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [allocated] [line 102, size 32, align 32, offset 256] [from ngx_int_t]
!900 = metadata !{i32 786445, metadata !886, metadata !"bufs", metadata !63, i32 103, i64 64, i64 32, i64 288, i32 0, metadata !849} ; [ DW_TAG_member ] [bufs] [line 103, size 64, align 32, offset 288] [from ngx_bufs_t]
!901 = metadata !{i32 786445, metadata !886, metadata !"tag", metadata !63, i32 104, i64 32, i64 32, i64 352, i32 0, metadata !81} ; [ DW_TAG_member ] [tag] [line 104, size 32, align 32, offset 352] [from ngx_buf_tag_t]
!902 = metadata !{i32 786445, metadata !886, metadata !"output_filter", metadata !63, i32 106, i64 32, i64 32, i64 384, i32 0, metadata !903} ; [ DW_TAG_member ] [output_filter] [line 106, size 32, align 32, offset 384] [from ngx_output_chain_filter_pt]
!903 = metadata !{i32 786454, null, metadata !"ngx_output_chain_filter_pt", metadata !63, i32 73, i64 0, i64 0, i64 0, i32 0, metadata !832} ; [ DW_TAG_typedef ] [ngx_output_chain_filter_pt] [line 73, size 0, align 0, offset 0] [from ]
!904 = metadata !{i32 786445, metadata !886, metadata !"filter_ctx", metadata !63, i32 107, i64 32, i64 32, i64 416, i32 0, metadata !28} ; [ DW_TAG_member ] [filter_ctx] [line 107, size 32, align 32, offset 416] [from ]
!905 = metadata !{i32 786445, metadata !759, metadata !"writer", metadata !760, i32 272, i64 192, i64 32, i64 960, i32 0, metadata !906} ; [ DW_TAG_member ] [writer] [line 272, size 192, align 32, offset 960] [from ngx_chain_writer_ctx_t]
!906 = metadata !{i32 786454, null, metadata !"ngx_chain_writer_ctx_t", metadata !760, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !907} ; [ DW_TAG_typedef ] [ngx_chain_writer_ctx_t] [line 117, size 0, align 0, offset 0] [from ]
!907 = metadata !{i32 786451, null, metadata !"", metadata !63, i32 111, i64 192, i64 32, i32 0, i32 0, null, metadata !908, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 111, size 192, align 32, offset 0] [from ]
!908 = metadata !{metadata !909, metadata !910, metadata !911, metadata !912, metadata !913}
!909 = metadata !{i32 786445, metadata !907, metadata !"out", metadata !63, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [out] [line 112, size 32, align 32, offset 0] [from ]
!910 = metadata !{i32 786445, metadata !907, metadata !"last", metadata !63, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !818} ; [ DW_TAG_member ] [last] [line 113, size 32, align 32, offset 32] [from ]
!911 = metadata !{i32 786445, metadata !907, metadata !"connection", metadata !63, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !220} ; [ DW_TAG_member ] [connection] [line 114, size 32, align 32, offset 64] [from ]
!912 = metadata !{i32 786445, metadata !907, metadata !"pool", metadata !63, i32 115, i64 32, i64 32, i64 96, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 115, size 32, align 32, offset 96] [from ]
!913 = metadata !{i32 786445, metadata !907, metadata !"limit", metadata !63, i32 116, i64 64, i64 32, i64 128, i32 0, metadata !73} ; [ DW_TAG_member ] [limit] [line 116, size 64, align 32, offset 128] [from off_t]
!914 = metadata !{i32 786445, metadata !759, metadata !"conf", metadata !760, i32 274, i64 32, i64 32, i64 1152, i32 0, metadata !915} ; [ DW_TAG_member ] [conf] [line 274, size 32, align 32, offset 1152] [from ]
!915 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !916} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_conf_t]
!916 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_conf_t", metadata !760, i32 190, i64 0, i64 0, i64 0, i32 0, metadata !917} ; [ DW_TAG_typedef ] [ngx_http_upstream_conf_t] [line 190, size 0, align 0, offset 0] [from ]
!917 = metadata !{i32 786451, null, metadata !"", metadata !760, i32 122, i64 1408, i64 32, i32 0, i32 0, null, metadata !918, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 122, size 1408, align 32, offset 0] [from ]
!918 = metadata !{metadata !919, metadata !949, metadata !950, metadata !951, metadata !952, metadata !953, metadata !954, metadata !955, metadata !956, metadata !957, metadata !958, metadata !959, metadata !960, metadata !961, metadata !962, metadata !963, metadata !964, metadata !965, metadata !967, metadata !968, metadata !969, metadata !970, metadata !971, metadata !972, metadata !973, metadata !990, metadata !991, metadata !992, metadata !993, metadata !994, metadata !995, metadata !996, metadata !997, metadata !998, metadata !999, metadata !1000, metadata !1001, metadata !1002, metadata !1003, metadata !1004, metadata !1005, metadata !1006, metadata !1007}
!919 = metadata !{i32 786445, metadata !917, metadata !"upstream", metadata !760, i32 123, i64 32, i64 32, i64 0, i32 0, metadata !920} ; [ DW_TAG_member ] [upstream] [line 123, size 32, align 32, offset 0] [from ]
!920 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !921} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_srv_conf_t]
!921 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_srv_conf_t", metadata !760, i32 72, i64 0, i64 0, i64 0, i32 0, metadata !922} ; [ DW_TAG_typedef ] [ngx_http_upstream_srv_conf_t] [line 72, size 0, align 0, offset 0] [from ngx_http_upstream_srv_conf_s]
!922 = metadata !{i32 786451, null, metadata !"ngx_http_upstream_srv_conf_s", metadata !760, i32 107, i64 352, i64 32, i32 0, i32 0, null, metadata !923, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_upstream_srv_conf_s] [line 107, size 352, align 32, offset 0] [from ]
!923 = metadata !{metadata !924, metadata !939, metadata !940, metadata !941, metadata !942, metadata !943, metadata !944, metadata !945, metadata !948}
!924 = metadata !{i32 786445, metadata !922, metadata !"peer", metadata !760, i32 108, i64 96, i64 32, i64 0, i32 0, metadata !925} ; [ DW_TAG_member ] [peer] [line 108, size 96, align 32, offset 0] [from ngx_http_upstream_peer_t]
!925 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_peer_t", metadata !760, i32 84, i64 0, i64 0, i64 0, i32 0, metadata !926} ; [ DW_TAG_typedef ] [ngx_http_upstream_peer_t] [line 84, size 0, align 0, offset 0] [from ]
!926 = metadata !{i32 786451, null, metadata !"", metadata !760, i32 80, i64 96, i64 32, i32 0, i32 0, null, metadata !927, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 80, size 96, align 32, offset 0] [from ]
!927 = metadata !{metadata !928, metadata !933, metadata !938}
!928 = metadata !{i32 786445, metadata !926, metadata !"init_upstream", metadata !760, i32 81, i64 32, i64 32, i64 0, i32 0, metadata !929} ; [ DW_TAG_member ] [init_upstream] [line 81, size 32, align 32, offset 0] [from ngx_http_upstream_init_pt]
!929 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_pt", metadata !760, i32 74, i64 0, i64 0, i64 0, i32 0, metadata !930} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_pt] [line 74, size 0, align 0, offset 0] [from ]
!930 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !931} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!931 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !932, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!932 = metadata !{metadata !9, metadata !14, metadata !920}
!933 = metadata !{i32 786445, metadata !926, metadata !"init", metadata !760, i32 82, i64 32, i64 32, i64 32, i32 0, metadata !934} ; [ DW_TAG_member ] [init] [line 82, size 32, align 32, offset 32] [from ngx_http_upstream_init_peer_pt]
!934 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_init_peer_pt", metadata !760, i32 76, i64 0, i64 0, i64 0, i32 0, metadata !935} ; [ DW_TAG_typedef ] [ngx_http_upstream_init_peer_pt] [line 76, size 0, align 0, offset 0] [from ]
!935 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !936} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!936 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !937, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!937 = metadata !{metadata !9, metadata !565, metadata !920}
!938 = metadata !{i32 786445, metadata !926, metadata !"data", metadata !760, i32 83, i64 32, i64 32, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 83, size 32, align 32, offset 64] [from ]
!939 = metadata !{i32 786445, metadata !922, metadata !"srv_conf", metadata !760, i32 109, i64 32, i64 32, i64 96, i32 0, metadata !214} ; [ DW_TAG_member ] [srv_conf] [line 109, size 32, align 32, offset 96] [from ]
!940 = metadata !{i32 786445, metadata !922, metadata !"servers", metadata !760, i32 111, i64 32, i64 32, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [servers] [line 111, size 32, align 32, offset 128] [from ]
!941 = metadata !{i32 786445, metadata !922, metadata !"flags", metadata !760, i32 113, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [flags] [line 113, size 32, align 32, offset 160] [from ngx_uint_t]
!942 = metadata !{i32 786445, metadata !922, metadata !"host", metadata !760, i32 114, i64 64, i64 32, i64 192, i32 0, metadata !91} ; [ DW_TAG_member ] [host] [line 114, size 64, align 32, offset 192] [from ngx_str_t]
!943 = metadata !{i32 786445, metadata !922, metadata !"file_name", metadata !760, i32 115, i64 32, i64 32, i64 256, i32 0, metadata !48} ; [ DW_TAG_member ] [file_name] [line 115, size 32, align 32, offset 256] [from ]
!944 = metadata !{i32 786445, metadata !922, metadata !"line", metadata !760, i32 116, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [line] [line 116, size 32, align 32, offset 288] [from ngx_uint_t]
!945 = metadata !{i32 786445, metadata !922, metadata !"port", metadata !760, i32 117, i64 16, i64 16, i64 320, i32 0, metadata !946} ; [ DW_TAG_member ] [port] [line 117, size 16, align 16, offset 320] [from in_port_t]
!946 = metadata !{i32 786454, null, metadata !"in_port_t", metadata !760, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !947} ; [ DW_TAG_typedef ] [in_port_t] [line 97, size 0, align 0, offset 0] [from uint16_t]
!947 = metadata !{i32 786454, null, metadata !"uint16_t", metadata !760, i32 50, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [uint16_t] [line 50, size 0, align 0, offset 0] [from unsigned short]
!948 = metadata !{i32 786445, metadata !922, metadata !"default_port", metadata !760, i32 118, i64 16, i64 16, i64 336, i32 0, metadata !946} ; [ DW_TAG_member ] [default_port] [line 118, size 16, align 16, offset 336] [from in_port_t]
!949 = metadata !{i32 786445, metadata !917, metadata !"connect_timeout", metadata !760, i32 125, i64 32, i64 32, i64 32, i32 0, metadata !345} ; [ DW_TAG_member ] [connect_timeout] [line 125, size 32, align 32, offset 32] [from ngx_msec_t]
!950 = metadata !{i32 786445, metadata !917, metadata !"send_timeout", metadata !760, i32 126, i64 32, i64 32, i64 64, i32 0, metadata !345} ; [ DW_TAG_member ] [send_timeout] [line 126, size 32, align 32, offset 64] [from ngx_msec_t]
!951 = metadata !{i32 786445, metadata !917, metadata !"read_timeout", metadata !760, i32 127, i64 32, i64 32, i64 96, i32 0, metadata !345} ; [ DW_TAG_member ] [read_timeout] [line 127, size 32, align 32, offset 96] [from ngx_msec_t]
!952 = metadata !{i32 786445, metadata !917, metadata !"timeout", metadata !760, i32 128, i64 32, i64 32, i64 128, i32 0, metadata !345} ; [ DW_TAG_member ] [timeout] [line 128, size 32, align 32, offset 128] [from ngx_msec_t]
!953 = metadata !{i32 786445, metadata !917, metadata !"send_lowat", metadata !760, i32 130, i64 32, i64 32, i64 160, i32 0, metadata !34} ; [ DW_TAG_member ] [send_lowat] [line 130, size 32, align 32, offset 160] [from size_t]
!954 = metadata !{i32 786445, metadata !917, metadata !"buffer_size", metadata !760, i32 131, i64 32, i64 32, i64 192, i32 0, metadata !34} ; [ DW_TAG_member ] [buffer_size] [line 131, size 32, align 32, offset 192] [from size_t]
!955 = metadata !{i32 786445, metadata !917, metadata !"busy_buffers_size", metadata !760, i32 133, i64 32, i64 32, i64 224, i32 0, metadata !34} ; [ DW_TAG_member ] [busy_buffers_size] [line 133, size 32, align 32, offset 224] [from size_t]
!956 = metadata !{i32 786445, metadata !917, metadata !"max_temp_file_size", metadata !760, i32 134, i64 32, i64 32, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [max_temp_file_size] [line 134, size 32, align 32, offset 256] [from size_t]
!957 = metadata !{i32 786445, metadata !917, metadata !"temp_file_write_size", metadata !760, i32 135, i64 32, i64 32, i64 288, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_file_write_size] [line 135, size 32, align 32, offset 288] [from size_t]
!958 = metadata !{i32 786445, metadata !917, metadata !"busy_buffers_size_conf", metadata !760, i32 137, i64 32, i64 32, i64 320, i32 0, metadata !34} ; [ DW_TAG_member ] [busy_buffers_size_conf] [line 137, size 32, align 32, offset 320] [from size_t]
!959 = metadata !{i32 786445, metadata !917, metadata !"max_temp_file_size_conf", metadata !760, i32 138, i64 32, i64 32, i64 352, i32 0, metadata !34} ; [ DW_TAG_member ] [max_temp_file_size_conf] [line 138, size 32, align 32, offset 352] [from size_t]
!960 = metadata !{i32 786445, metadata !917, metadata !"temp_file_write_size_conf", metadata !760, i32 139, i64 32, i64 32, i64 384, i32 0, metadata !34} ; [ DW_TAG_member ] [temp_file_write_size_conf] [line 139, size 32, align 32, offset 384] [from size_t]
!961 = metadata !{i32 786445, metadata !917, metadata !"bufs", metadata !760, i32 141, i64 64, i64 32, i64 416, i32 0, metadata !849} ; [ DW_TAG_member ] [bufs] [line 141, size 64, align 32, offset 416] [from ngx_bufs_t]
!962 = metadata !{i32 786445, metadata !917, metadata !"ignore_headers", metadata !760, i32 143, i64 32, i64 32, i64 480, i32 0, metadata !30} ; [ DW_TAG_member ] [ignore_headers] [line 143, size 32, align 32, offset 480] [from ngx_uint_t]
!963 = metadata !{i32 786445, metadata !917, metadata !"next_upstream", metadata !760, i32 144, i64 32, i64 32, i64 512, i32 0, metadata !30} ; [ DW_TAG_member ] [next_upstream] [line 144, size 32, align 32, offset 512] [from ngx_uint_t]
!964 = metadata !{i32 786445, metadata !917, metadata !"store_access", metadata !760, i32 145, i64 32, i64 32, i64 544, i32 0, metadata !30} ; [ DW_TAG_member ] [store_access] [line 145, size 32, align 32, offset 544] [from ngx_uint_t]
!965 = metadata !{i32 786445, metadata !917, metadata !"buffering", metadata !760, i32 146, i64 32, i64 32, i64 576, i32 0, metadata !966} ; [ DW_TAG_member ] [buffering] [line 146, size 32, align 32, offset 576] [from ngx_flag_t]
!966 = metadata !{i32 786454, null, metadata !"ngx_flag_t", metadata !760, i32 80, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [ngx_flag_t] [line 80, size 0, align 0, offset 0] [from intptr_t]
!967 = metadata !{i32 786445, metadata !917, metadata !"pass_request_headers", metadata !760, i32 147, i64 32, i64 32, i64 608, i32 0, metadata !966} ; [ DW_TAG_member ] [pass_request_headers] [line 147, size 32, align 32, offset 608] [from ngx_flag_t]
!968 = metadata !{i32 786445, metadata !917, metadata !"pass_request_body", metadata !760, i32 148, i64 32, i64 32, i64 640, i32 0, metadata !966} ; [ DW_TAG_member ] [pass_request_body] [line 148, size 32, align 32, offset 640] [from ngx_flag_t]
!969 = metadata !{i32 786445, metadata !917, metadata !"ignore_client_abort", metadata !760, i32 150, i64 32, i64 32, i64 672, i32 0, metadata !966} ; [ DW_TAG_member ] [ignore_client_abort] [line 150, size 32, align 32, offset 672] [from ngx_flag_t]
!970 = metadata !{i32 786445, metadata !917, metadata !"intercept_errors", metadata !760, i32 151, i64 32, i64 32, i64 704, i32 0, metadata !966} ; [ DW_TAG_member ] [intercept_errors] [line 151, size 32, align 32, offset 704] [from ngx_flag_t]
!971 = metadata !{i32 786445, metadata !917, metadata !"cyclic_temp_file", metadata !760, i32 152, i64 32, i64 32, i64 736, i32 0, metadata !966} ; [ DW_TAG_member ] [cyclic_temp_file] [line 152, size 32, align 32, offset 736] [from ngx_flag_t]
!972 = metadata !{i32 786445, metadata !917, metadata !"temp_path", metadata !760, i32 154, i64 32, i64 32, i64 768, i32 0, metadata !672} ; [ DW_TAG_member ] [temp_path] [line 154, size 32, align 32, offset 768] [from ]
!973 = metadata !{i32 786445, metadata !917, metadata !"hide_headers_hash", metadata !760, i32 156, i64 64, i64 32, i64 800, i32 0, metadata !974} ; [ DW_TAG_member ] [hide_headers_hash] [line 156, size 64, align 32, offset 800] [from ngx_hash_t]
!974 = metadata !{i32 786454, null, metadata !"ngx_hash_t", metadata !760, i32 26, i64 0, i64 0, i64 0, i32 0, metadata !975} ; [ DW_TAG_typedef ] [ngx_hash_t] [line 26, size 0, align 0, offset 0] [from ]
!975 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 23, i64 64, i64 32, i32 0, i32 0, null, metadata !977, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 23, size 64, align 32, offset 0] [from ]
!976 = metadata !{i32 786473, metadata !"src/core/ngx_hash.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!977 = metadata !{metadata !978, metadata !989}
!978 = metadata !{i32 786445, metadata !975, metadata !"buckets", metadata !976, i32 24, i64 32, i64 32, i64 0, i32 0, metadata !979} ; [ DW_TAG_member ] [buckets] [line 24, size 32, align 32, offset 0] [from ]
!979 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !980} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!980 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !981} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_elt_t]
!981 = metadata !{i32 786454, null, metadata !"ngx_hash_elt_t", metadata !976, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !982} ; [ DW_TAG_typedef ] [ngx_hash_elt_t] [line 20, size 0, align 0, offset 0] [from ]
!982 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 16, i64 64, i64 32, i32 0, i32 0, null, metadata !983, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 16, size 64, align 32, offset 0] [from ]
!983 = metadata !{metadata !984, metadata !985, metadata !988}
!984 = metadata !{i32 786445, metadata !982, metadata !"value", metadata !976, i32 17, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [value] [line 17, size 32, align 32, offset 0] [from ]
!985 = metadata !{i32 786445, metadata !982, metadata !"len", metadata !976, i32 18, i64 16, i64 16, i64 32, i32 0, metadata !986} ; [ DW_TAG_member ] [len] [line 18, size 16, align 16, offset 32] [from u_short]
!986 = metadata !{i32 786454, null, metadata !"u_short", metadata !976, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !987} ; [ DW_TAG_typedef ] [u_short] [line 35, size 0, align 0, offset 0] [from __u_short]
!987 = metadata !{i32 786454, null, metadata !"__u_short", metadata !976, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_typedef ] [__u_short] [line 32, size 0, align 0, offset 0] [from unsigned short]
!988 = metadata !{i32 786445, metadata !982, metadata !"name", metadata !976, i32 19, i64 8, i64 8, i64 48, i32 0, metadata !535} ; [ DW_TAG_member ] [name] [line 19, size 8, align 8, offset 48] [from ]
!989 = metadata !{i32 786445, metadata !975, metadata !"size", metadata !976, i32 25, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [size] [line 25, size 32, align 32, offset 32] [from ngx_uint_t]
!990 = metadata !{i32 786445, metadata !917, metadata !"hide_headers", metadata !760, i32 157, i64 32, i64 32, i64 864, i32 0, metadata !22} ; [ DW_TAG_member ] [hide_headers] [line 157, size 32, align 32, offset 864] [from ]
!991 = metadata !{i32 786445, metadata !917, metadata !"pass_headers", metadata !760, i32 158, i64 32, i64 32, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [pass_headers] [line 158, size 32, align 32, offset 896] [from ]
!992 = metadata !{i32 786445, metadata !917, metadata !"local", metadata !760, i32 160, i64 32, i64 32, i64 928, i32 0, metadata !795} ; [ DW_TAG_member ] [local] [line 160, size 32, align 32, offset 928] [from ]
!993 = metadata !{i32 786445, metadata !917, metadata !"cache", metadata !760, i32 163, i64 32, i64 32, i64 960, i32 0, metadata !701} ; [ DW_TAG_member ] [cache] [line 163, size 32, align 32, offset 960] [from ]
!994 = metadata !{i32 786445, metadata !917, metadata !"cache_min_uses", metadata !760, i32 165, i64 32, i64 32, i64 992, i32 0, metadata !30} ; [ DW_TAG_member ] [cache_min_uses] [line 165, size 32, align 32, offset 992] [from ngx_uint_t]
!995 = metadata !{i32 786445, metadata !917, metadata !"cache_use_stale", metadata !760, i32 166, i64 32, i64 32, i64 1024, i32 0, metadata !30} ; [ DW_TAG_member ] [cache_use_stale] [line 166, size 32, align 32, offset 1024] [from ngx_uint_t]
!996 = metadata !{i32 786445, metadata !917, metadata !"cache_methods", metadata !760, i32 167, i64 32, i64 32, i64 1056, i32 0, metadata !30} ; [ DW_TAG_member ] [cache_methods] [line 167, size 32, align 32, offset 1056] [from ngx_uint_t]
!997 = metadata !{i32 786445, metadata !917, metadata !"cache_lock", metadata !760, i32 169, i64 32, i64 32, i64 1088, i32 0, metadata !966} ; [ DW_TAG_member ] [cache_lock] [line 169, size 32, align 32, offset 1088] [from ngx_flag_t]
!998 = metadata !{i32 786445, metadata !917, metadata !"cache_lock_timeout", metadata !760, i32 170, i64 32, i64 32, i64 1120, i32 0, metadata !345} ; [ DW_TAG_member ] [cache_lock_timeout] [line 170, size 32, align 32, offset 1120] [from ngx_msec_t]
!999 = metadata !{i32 786445, metadata !917, metadata !"cache_valid", metadata !760, i32 172, i64 32, i64 32, i64 1152, i32 0, metadata !22} ; [ DW_TAG_member ] [cache_valid] [line 172, size 32, align 32, offset 1152] [from ]
!1000 = metadata !{i32 786445, metadata !917, metadata !"cache_bypass", metadata !760, i32 173, i64 32, i64 32, i64 1184, i32 0, metadata !22} ; [ DW_TAG_member ] [cache_bypass] [line 173, size 32, align 32, offset 1184] [from ]
!1001 = metadata !{i32 786445, metadata !917, metadata !"no_cache", metadata !760, i32 174, i64 32, i64 32, i64 1216, i32 0, metadata !22} ; [ DW_TAG_member ] [no_cache] [line 174, size 32, align 32, offset 1216] [from ]
!1002 = metadata !{i32 786445, metadata !917, metadata !"store_lengths", metadata !760, i32 177, i64 32, i64 32, i64 1248, i32 0, metadata !22} ; [ DW_TAG_member ] [store_lengths] [line 177, size 32, align 32, offset 1248] [from ]
!1003 = metadata !{i32 786445, metadata !917, metadata !"store_values", metadata !760, i32 178, i64 32, i64 32, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [store_values] [line 178, size 32, align 32, offset 1280] [from ]
!1004 = metadata !{i32 786445, metadata !917, metadata !"store", metadata !760, i32 180, i64 2, i64 32, i64 1312, i32 0, metadata !13} ; [ DW_TAG_member ] [store] [line 180, size 2, align 32, offset 1312] [from int]
!1005 = metadata !{i32 786445, metadata !917, metadata !"intercept_404", metadata !760, i32 181, i64 1, i64 32, i64 1314, i32 0, metadata !32} ; [ DW_TAG_member ] [intercept_404] [line 181, size 1, align 32, offset 1314] [from unsigned int]
!1006 = metadata !{i32 786445, metadata !917, metadata !"change_buffering", metadata !760, i32 182, i64 1, i64 32, i64 1315, i32 0, metadata !32} ; [ DW_TAG_member ] [change_buffering] [line 182, size 1, align 32, offset 1315] [from unsigned int]
!1007 = metadata !{i32 786445, metadata !917, metadata !"module", metadata !760, i32 189, i64 64, i64 32, i64 1344, i32 0, metadata !91} ; [ DW_TAG_member ] [module] [line 189, size 64, align 32, offset 1344] [from ngx_str_t]
!1008 = metadata !{i32 786445, metadata !759, metadata !"headers_in", metadata !760, i32 276, i64 1120, i64 32, i64 1184, i32 0, metadata !1009} ; [ DW_TAG_member ] [headers_in] [line 276, size 1120, align 32, offset 1184] [from ngx_http_upstream_headers_in_t]
!1009 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_headers_in_t", metadata !760, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1010} ; [ DW_TAG_typedef ] [ngx_http_upstream_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1010 = metadata !{i32 786451, null, metadata !"", metadata !760, i32 203, i64 1120, i64 32, i32 0, i32 0, null, metadata !1011, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 203, size 1120, align 32, offset 0] [from ]
!1011 = metadata !{metadata !1012, metadata !1013, metadata !1014, metadata !1015, metadata !1024, metadata !1025, metadata !1026, metadata !1027, metadata !1028, metadata !1029, metadata !1030, metadata !1031, metadata !1032, metadata !1033, metadata !1034, metadata !1035, metadata !1036, metadata !1037, metadata !1038, metadata !1039, metadata !1040, metadata !1041, metadata !1042, metadata !1043}
!1012 = metadata !{i32 786445, metadata !1010, metadata !"headers", metadata !760, i32 204, i64 224, i64 32, i64 0, i32 0, metadata !401} ; [ DW_TAG_member ] [headers] [line 204, size 224, align 32, offset 0] [from ngx_list_t]
!1013 = metadata !{i32 786445, metadata !1010, metadata !"status_n", metadata !760, i32 206, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [status_n] [line 206, size 32, align 32, offset 224] [from ngx_uint_t]
!1014 = metadata !{i32 786445, metadata !1010, metadata !"status_line", metadata !760, i32 207, i64 64, i64 32, i64 256, i32 0, metadata !91} ; [ DW_TAG_member ] [status_line] [line 207, size 64, align 32, offset 256] [from ngx_str_t]
!1015 = metadata !{i32 786445, metadata !1010, metadata !"status", metadata !760, i32 209, i64 32, i64 32, i64 320, i32 0, metadata !1016} ; [ DW_TAG_member ] [status] [line 209, size 32, align 32, offset 320] [from ]
!1016 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1017} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_table_elt_t]
!1017 = metadata !{i32 786454, null, metadata !"ngx_table_elt_t", metadata !760, i32 97, i64 0, i64 0, i64 0, i32 0, metadata !1018} ; [ DW_TAG_typedef ] [ngx_table_elt_t] [line 97, size 0, align 0, offset 0] [from ]
!1018 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 92, i64 192, i64 32, i32 0, i32 0, null, metadata !1019, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 92, size 192, align 32, offset 0] [from ]
!1019 = metadata !{metadata !1020, metadata !1021, metadata !1022, metadata !1023}
!1020 = metadata !{i32 786445, metadata !1018, metadata !"hash", metadata !976, i32 93, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [hash] [line 93, size 32, align 32, offset 0] [from ngx_uint_t]
!1021 = metadata !{i32 786445, metadata !1018, metadata !"key", metadata !976, i32 94, i64 64, i64 32, i64 32, i32 0, metadata !91} ; [ DW_TAG_member ] [key] [line 94, size 64, align 32, offset 32] [from ngx_str_t]
!1022 = metadata !{i32 786445, metadata !1018, metadata !"value", metadata !976, i32 95, i64 64, i64 32, i64 96, i32 0, metadata !91} ; [ DW_TAG_member ] [value] [line 95, size 64, align 32, offset 96] [from ngx_str_t]
!1023 = metadata !{i32 786445, metadata !1018, metadata !"lowcase_key", metadata !976, i32 96, i64 32, i64 32, i64 160, i32 0, metadata !48} ; [ DW_TAG_member ] [lowcase_key] [line 96, size 32, align 32, offset 160] [from ]
!1024 = metadata !{i32 786445, metadata !1010, metadata !"date", metadata !760, i32 210, i64 32, i64 32, i64 352, i32 0, metadata !1016} ; [ DW_TAG_member ] [date] [line 210, size 32, align 32, offset 352] [from ]
!1025 = metadata !{i32 786445, metadata !1010, metadata !"server", metadata !760, i32 211, i64 32, i64 32, i64 384, i32 0, metadata !1016} ; [ DW_TAG_member ] [server] [line 211, size 32, align 32, offset 384] [from ]
!1026 = metadata !{i32 786445, metadata !1010, metadata !"connection", metadata !760, i32 212, i64 32, i64 32, i64 416, i32 0, metadata !1016} ; [ DW_TAG_member ] [connection] [line 212, size 32, align 32, offset 416] [from ]
!1027 = metadata !{i32 786445, metadata !1010, metadata !"expires", metadata !760, i32 214, i64 32, i64 32, i64 448, i32 0, metadata !1016} ; [ DW_TAG_member ] [expires] [line 214, size 32, align 32, offset 448] [from ]
!1028 = metadata !{i32 786445, metadata !1010, metadata !"etag", metadata !760, i32 215, i64 32, i64 32, i64 480, i32 0, metadata !1016} ; [ DW_TAG_member ] [etag] [line 215, size 32, align 32, offset 480] [from ]
!1029 = metadata !{i32 786445, metadata !1010, metadata !"x_accel_expires", metadata !760, i32 216, i64 32, i64 32, i64 512, i32 0, metadata !1016} ; [ DW_TAG_member ] [x_accel_expires] [line 216, size 32, align 32, offset 512] [from ]
!1030 = metadata !{i32 786445, metadata !1010, metadata !"x_accel_redirect", metadata !760, i32 217, i64 32, i64 32, i64 544, i32 0, metadata !1016} ; [ DW_TAG_member ] [x_accel_redirect] [line 217, size 32, align 32, offset 544] [from ]
!1031 = metadata !{i32 786445, metadata !1010, metadata !"x_accel_limit_rate", metadata !760, i32 218, i64 32, i64 32, i64 576, i32 0, metadata !1016} ; [ DW_TAG_member ] [x_accel_limit_rate] [line 218, size 32, align 32, offset 576] [from ]
!1032 = metadata !{i32 786445, metadata !1010, metadata !"content_type", metadata !760, i32 220, i64 32, i64 32, i64 608, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_type] [line 220, size 32, align 32, offset 608] [from ]
!1033 = metadata !{i32 786445, metadata !1010, metadata !"content_length", metadata !760, i32 221, i64 32, i64 32, i64 640, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_length] [line 221, size 32, align 32, offset 640] [from ]
!1034 = metadata !{i32 786445, metadata !1010, metadata !"last_modified", metadata !760, i32 223, i64 32, i64 32, i64 672, i32 0, metadata !1016} ; [ DW_TAG_member ] [last_modified] [line 223, size 32, align 32, offset 672] [from ]
!1035 = metadata !{i32 786445, metadata !1010, metadata !"location", metadata !760, i32 224, i64 32, i64 32, i64 704, i32 0, metadata !1016} ; [ DW_TAG_member ] [location] [line 224, size 32, align 32, offset 704] [from ]
!1036 = metadata !{i32 786445, metadata !1010, metadata !"accept_ranges", metadata !760, i32 225, i64 32, i64 32, i64 736, i32 0, metadata !1016} ; [ DW_TAG_member ] [accept_ranges] [line 225, size 32, align 32, offset 736] [from ]
!1037 = metadata !{i32 786445, metadata !1010, metadata !"www_authenticate", metadata !760, i32 226, i64 32, i64 32, i64 768, i32 0, metadata !1016} ; [ DW_TAG_member ] [www_authenticate] [line 226, size 32, align 32, offset 768] [from ]
!1038 = metadata !{i32 786445, metadata !1010, metadata !"transfer_encoding", metadata !760, i32 227, i64 32, i64 32, i64 800, i32 0, metadata !1016} ; [ DW_TAG_member ] [transfer_encoding] [line 227, size 32, align 32, offset 800] [from ]
!1039 = metadata !{i32 786445, metadata !1010, metadata !"content_encoding", metadata !760, i32 230, i64 32, i64 32, i64 832, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_encoding] [line 230, size 32, align 32, offset 832] [from ]
!1040 = metadata !{i32 786445, metadata !1010, metadata !"content_length_n", metadata !760, i32 233, i64 64, i64 32, i64 864, i32 0, metadata !73} ; [ DW_TAG_member ] [content_length_n] [line 233, size 64, align 32, offset 864] [from off_t]
!1041 = metadata !{i32 786445, metadata !1010, metadata !"cache_control", metadata !760, i32 235, i64 160, i64 32, i64 928, i32 0, metadata !23} ; [ DW_TAG_member ] [cache_control] [line 235, size 160, align 32, offset 928] [from ngx_array_t]
!1042 = metadata !{i32 786445, metadata !1010, metadata !"connection_close", metadata !760, i32 237, i64 1, i64 32, i64 1088, i32 0, metadata !32} ; [ DW_TAG_member ] [connection_close] [line 237, size 1, align 32, offset 1088] [from unsigned int]
!1043 = metadata !{i32 786445, metadata !1010, metadata !"chunked", metadata !760, i32 238, i64 1, i64 32, i64 1089, i32 0, metadata !32} ; [ DW_TAG_member ] [chunked] [line 238, size 1, align 32, offset 1089] [from unsigned int]
!1044 = metadata !{i32 786445, metadata !759, metadata !"resolved", metadata !760, i32 278, i64 32, i64 32, i64 2304, i32 0, metadata !1045} ; [ DW_TAG_member ] [resolved] [line 278, size 32, align 32, offset 2304] [from ]
!1045 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1046} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_resolved_t]
!1046 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_resolved_t", metadata !760, i32 254, i64 0, i64 0, i64 0, i32 0, metadata !1047} ; [ DW_TAG_typedef ] [ngx_http_upstream_resolved_t] [line 254, size 0, align 0, offset 0] [from ]
!1047 = metadata !{i32 786451, null, metadata !"", metadata !760, i32 242, i64 288, i64 32, i32 0, i32 0, null, metadata !1048, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 288, align 32, offset 0] [from ]
!1048 = metadata !{metadata !1049, metadata !1050, metadata !1051, metadata !1052, metadata !1053, metadata !1056, metadata !1057, metadata !1058}
!1049 = metadata !{i32 786445, metadata !1047, metadata !"host", metadata !760, i32 243, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [host] [line 243, size 64, align 32, offset 0] [from ngx_str_t]
!1050 = metadata !{i32 786445, metadata !1047, metadata !"port", metadata !760, i32 244, i64 16, i64 16, i64 64, i32 0, metadata !946} ; [ DW_TAG_member ] [port] [line 244, size 16, align 16, offset 64] [from in_port_t]
!1051 = metadata !{i32 786445, metadata !1047, metadata !"no_port", metadata !760, i32 245, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [no_port] [line 245, size 32, align 32, offset 96] [from ngx_uint_t]
!1052 = metadata !{i32 786445, metadata !1047, metadata !"naddrs", metadata !760, i32 247, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [naddrs] [line 247, size 32, align 32, offset 128] [from ngx_uint_t]
!1053 = metadata !{i32 786445, metadata !1047, metadata !"addrs", metadata !760, i32 248, i64 32, i64 32, i64 160, i32 0, metadata !1054} ; [ DW_TAG_member ] [addrs] [line 248, size 32, align 32, offset 160] [from ]
!1054 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1055} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from in_addr_t]
!1055 = metadata !{i32 786454, null, metadata !"in_addr_t", metadata !760, i32 141, i64 0, i64 0, i64 0, i32 0, metadata !542} ; [ DW_TAG_typedef ] [in_addr_t] [line 141, size 0, align 0, offset 0] [from uint32_t]
!1056 = metadata !{i32 786445, metadata !1047, metadata !"sockaddr", metadata !760, i32 250, i64 32, i64 32, i64 192, i32 0, metadata !312} ; [ DW_TAG_member ] [sockaddr] [line 250, size 32, align 32, offset 192] [from ]
!1057 = metadata !{i32 786445, metadata !1047, metadata !"socklen", metadata !760, i32 251, i64 32, i64 32, i64 224, i32 0, metadata !323} ; [ DW_TAG_member ] [socklen] [line 251, size 32, align 32, offset 224] [from socklen_t]
!1058 = metadata !{i32 786445, metadata !1047, metadata !"ctx", metadata !760, i32 253, i64 32, i64 32, i64 256, i32 0, metadata !1059} ; [ DW_TAG_member ] [ctx] [line 253, size 32, align 32, offset 256] [from ]
!1059 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1060} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1060 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !760, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1061} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1061 = metadata !{i32 786451, null, metadata !"ngx_resolver_ctx_s", metadata !1062, i32 111, i64 544, i64 32, i32 0, i32 0, null, metadata !1063, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_resolver_ctx_s] [line 111, size 544, align 32, offset 0] [from ]
!1062 = metadata !{i32 786473, metadata !"src/core/ngx_resolver.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1063 = metadata !{metadata !1064, metadata !1067, metadata !1090, metadata !1100, metadata !1101, metadata !1102, metadata !1103, metadata !1104, metadata !1105, metadata !1106, metadata !1107, metadata !1112, metadata !1113, metadata !1114, metadata !1115, metadata !1116}
!1064 = metadata !{i32 786445, metadata !1061, metadata !"next", metadata !1062, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !1065} ; [ DW_TAG_member ] [next] [line 112, size 32, align 32, offset 0] [from ]
!1065 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1066} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_ctx_t]
!1066 = metadata !{i32 786454, null, metadata !"ngx_resolver_ctx_t", metadata !1062, i32 45, i64 0, i64 0, i64 0, i32 0, metadata !1061} ; [ DW_TAG_typedef ] [ngx_resolver_ctx_t] [line 45, size 0, align 0, offset 0] [from ngx_resolver_ctx_s]
!1067 = metadata !{i32 786445, metadata !1061, metadata !"resolver", metadata !1062, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !1068} ; [ DW_TAG_member ] [resolver] [line 113, size 32, align 32, offset 32] [from ]
!1068 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1069} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_resolver_t]
!1069 = metadata !{i32 786454, null, metadata !"ngx_resolver_t", metadata !1062, i32 108, i64 0, i64 0, i64 0, i32 0, metadata !1070} ; [ DW_TAG_typedef ] [ngx_resolver_t] [line 108, size 0, align 0, offset 0] [from ]
!1070 = metadata !{i32 786451, null, metadata !"", metadata !1062, i32 78, i64 1216, i64 32, i32 0, i32 0, null, metadata !1071, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 78, size 1216, align 32, offset 0] [from ]
!1071 = metadata !{metadata !1072, metadata !1073, metadata !1074, metadata !1075, metadata !1076, metadata !1077, metadata !1078, metadata !1079, metadata !1080, metadata !1081, metadata !1082, metadata !1083, metadata !1084, metadata !1085, metadata !1086, metadata !1087, metadata !1088, metadata !1089}
!1072 = metadata !{i32 786445, metadata !1070, metadata !"event", metadata !1062, i32 80, i64 32, i64 32, i64 0, i32 0, metadata !227} ; [ DW_TAG_member ] [event] [line 80, size 32, align 32, offset 0] [from ]
!1073 = metadata !{i32 786445, metadata !1070, metadata !"dummy", metadata !1062, i32 81, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [dummy] [line 81, size 32, align 32, offset 32] [from ]
!1074 = metadata !{i32 786445, metadata !1070, metadata !"log", metadata !1062, i32 82, i64 32, i64 32, i64 64, i32 0, metadata !140} ; [ DW_TAG_member ] [log] [line 82, size 32, align 32, offset 64] [from ]
!1075 = metadata !{i32 786445, metadata !1070, metadata !"ident", metadata !1062, i32 85, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [ident] [line 85, size 32, align 32, offset 96] [from ngx_int_t]
!1076 = metadata !{i32 786445, metadata !1070, metadata !"udp_connections", metadata !1062, i32 88, i64 160, i64 32, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [udp_connections] [line 88, size 160, align 32, offset 128] [from ngx_array_t]
!1077 = metadata !{i32 786445, metadata !1070, metadata !"last_connection", metadata !1062, i32 89, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [last_connection] [line 89, size 32, align 32, offset 288] [from ngx_uint_t]
!1078 = metadata !{i32 786445, metadata !1070, metadata !"name_rbtree", metadata !1062, i32 91, i64 96, i64 32, i64 320, i32 0, metadata !607} ; [ DW_TAG_member ] [name_rbtree] [line 91, size 96, align 32, offset 320] [from ngx_rbtree_t]
!1079 = metadata !{i32 786445, metadata !1070, metadata !"name_sentinel", metadata !1062, i32 92, i64 160, i64 32, i64 416, i32 0, metadata !262} ; [ DW_TAG_member ] [name_sentinel] [line 92, size 160, align 32, offset 416] [from ngx_rbtree_node_t]
!1080 = metadata !{i32 786445, metadata !1070, metadata !"addr_rbtree", metadata !1062, i32 94, i64 96, i64 32, i64 576, i32 0, metadata !607} ; [ DW_TAG_member ] [addr_rbtree] [line 94, size 96, align 32, offset 576] [from ngx_rbtree_t]
!1081 = metadata !{i32 786445, metadata !1070, metadata !"addr_sentinel", metadata !1062, i32 95, i64 160, i64 32, i64 672, i32 0, metadata !262} ; [ DW_TAG_member ] [addr_sentinel] [line 95, size 160, align 32, offset 672] [from ngx_rbtree_node_t]
!1082 = metadata !{i32 786445, metadata !1070, metadata !"name_resend_queue", metadata !1062, i32 97, i64 64, i64 32, i64 832, i32 0, metadata !371} ; [ DW_TAG_member ] [name_resend_queue] [line 97, size 64, align 32, offset 832] [from ngx_queue_t]
!1083 = metadata !{i32 786445, metadata !1070, metadata !"addr_resend_queue", metadata !1062, i32 98, i64 64, i64 32, i64 896, i32 0, metadata !371} ; [ DW_TAG_member ] [addr_resend_queue] [line 98, size 64, align 32, offset 896] [from ngx_queue_t]
!1084 = metadata !{i32 786445, metadata !1070, metadata !"name_expire_queue", metadata !1062, i32 100, i64 64, i64 32, i64 960, i32 0, metadata !371} ; [ DW_TAG_member ] [name_expire_queue] [line 100, size 64, align 32, offset 960] [from ngx_queue_t]
!1085 = metadata !{i32 786445, metadata !1070, metadata !"addr_expire_queue", metadata !1062, i32 101, i64 64, i64 32, i64 1024, i32 0, metadata !371} ; [ DW_TAG_member ] [addr_expire_queue] [line 101, size 64, align 32, offset 1024] [from ngx_queue_t]
!1086 = metadata !{i32 786445, metadata !1070, metadata !"resend_timeout", metadata !1062, i32 103, i64 32, i64 32, i64 1088, i32 0, metadata !585} ; [ DW_TAG_member ] [resend_timeout] [line 103, size 32, align 32, offset 1088] [from time_t]
!1087 = metadata !{i32 786445, metadata !1070, metadata !"expire", metadata !1062, i32 104, i64 32, i64 32, i64 1120, i32 0, metadata !585} ; [ DW_TAG_member ] [expire] [line 104, size 32, align 32, offset 1120] [from time_t]
!1088 = metadata !{i32 786445, metadata !1070, metadata !"valid", metadata !1062, i32 105, i64 32, i64 32, i64 1152, i32 0, metadata !585} ; [ DW_TAG_member ] [valid] [line 105, size 32, align 32, offset 1152] [from time_t]
!1089 = metadata !{i32 786445, metadata !1070, metadata !"log_level", metadata !1062, i32 107, i64 32, i64 32, i64 1184, i32 0, metadata !30} ; [ DW_TAG_member ] [log_level] [line 107, size 32, align 32, offset 1184] [from ngx_uint_t]
!1090 = metadata !{i32 786445, metadata !1061, metadata !"udp_connection", metadata !1062, i32 114, i64 32, i64 32, i64 64, i32 0, metadata !1091} ; [ DW_TAG_member ] [udp_connection] [line 114, size 32, align 32, offset 64] [from ]
!1091 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1092} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_udp_connection_t]
!1092 = metadata !{i32 786454, null, metadata !"ngx_udp_connection_t", metadata !1062, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1093} ; [ DW_TAG_typedef ] [ngx_udp_connection_t] [line 42, size 0, align 0, offset 0] [from ]
!1093 = metadata !{i32 786451, null, metadata !"", metadata !1062, i32 36, i64 352, i64 32, i32 0, i32 0, null, metadata !1094, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 36, size 352, align 32, offset 0] [from ]
!1094 = metadata !{metadata !1095, metadata !1096, metadata !1097, metadata !1098, metadata !1099}
!1095 = metadata !{i32 786445, metadata !1093, metadata !"connection", metadata !1062, i32 37, i64 32, i64 32, i64 0, i32 0, metadata !220} ; [ DW_TAG_member ] [connection] [line 37, size 32, align 32, offset 0] [from ]
!1096 = metadata !{i32 786445, metadata !1093, metadata !"sockaddr", metadata !1062, i32 38, i64 32, i64 32, i64 32, i32 0, metadata !312} ; [ DW_TAG_member ] [sockaddr] [line 38, size 32, align 32, offset 32] [from ]
!1097 = metadata !{i32 786445, metadata !1093, metadata !"socklen", metadata !1062, i32 39, i64 32, i64 32, i64 64, i32 0, metadata !323} ; [ DW_TAG_member ] [socklen] [line 39, size 32, align 32, offset 64] [from socklen_t]
!1098 = metadata !{i32 786445, metadata !1093, metadata !"server", metadata !1062, i32 40, i64 64, i64 32, i64 96, i32 0, metadata !91} ; [ DW_TAG_member ] [server] [line 40, size 64, align 32, offset 96] [from ngx_str_t]
!1099 = metadata !{i32 786445, metadata !1093, metadata !"log", metadata !1062, i32 41, i64 192, i64 32, i64 160, i32 0, metadata !141} ; [ DW_TAG_member ] [log] [line 41, size 192, align 32, offset 160] [from ngx_log_t]
!1100 = metadata !{i32 786445, metadata !1061, metadata !"ident", metadata !1062, i32 117, i64 32, i64 32, i64 96, i32 0, metadata !9} ; [ DW_TAG_member ] [ident] [line 117, size 32, align 32, offset 96] [from ngx_int_t]
!1101 = metadata !{i32 786445, metadata !1061, metadata !"state", metadata !1062, i32 119, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [state] [line 119, size 32, align 32, offset 128] [from ngx_int_t]
!1102 = metadata !{i32 786445, metadata !1061, metadata !"type", metadata !1062, i32 120, i64 32, i64 32, i64 160, i32 0, metadata !9} ; [ DW_TAG_member ] [type] [line 120, size 32, align 32, offset 160] [from ngx_int_t]
!1103 = metadata !{i32 786445, metadata !1061, metadata !"name", metadata !1062, i32 121, i64 64, i64 32, i64 192, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 121, size 64, align 32, offset 192] [from ngx_str_t]
!1104 = metadata !{i32 786445, metadata !1061, metadata !"naddrs", metadata !1062, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !30} ; [ DW_TAG_member ] [naddrs] [line 123, size 32, align 32, offset 256] [from ngx_uint_t]
!1105 = metadata !{i32 786445, metadata !1061, metadata !"addrs", metadata !1062, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !1054} ; [ DW_TAG_member ] [addrs] [line 124, size 32, align 32, offset 288] [from ]
!1106 = metadata !{i32 786445, metadata !1061, metadata !"addr", metadata !1062, i32 125, i64 32, i64 32, i64 320, i32 0, metadata !1055} ; [ DW_TAG_member ] [addr] [line 125, size 32, align 32, offset 320] [from in_addr_t]
!1107 = metadata !{i32 786445, metadata !1061, metadata !"handler", metadata !1062, i32 127, i64 32, i64 32, i64 352, i32 0, metadata !1108} ; [ DW_TAG_member ] [handler] [line 127, size 32, align 32, offset 352] [from ngx_resolver_handler_pt]
!1108 = metadata !{i32 786454, null, metadata !"ngx_resolver_handler_pt", metadata !1062, i32 47, i64 0, i64 0, i64 0, i32 0, metadata !1109} ; [ DW_TAG_typedef ] [ngx_resolver_handler_pt] [line 47, size 0, align 0, offset 0] [from ]
!1109 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1110} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1111 = metadata !{null, metadata !1065}
!1112 = metadata !{i32 786445, metadata !1061, metadata !"data", metadata !1062, i32 128, i64 32, i64 32, i64 384, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 128, size 32, align 32, offset 384] [from ]
!1113 = metadata !{i32 786445, metadata !1061, metadata !"timeout", metadata !1062, i32 129, i64 32, i64 32, i64 416, i32 0, metadata !345} ; [ DW_TAG_member ] [timeout] [line 129, size 32, align 32, offset 416] [from ngx_msec_t]
!1114 = metadata !{i32 786445, metadata !1061, metadata !"quick", metadata !1062, i32 131, i64 32, i64 32, i64 448, i32 0, metadata !30} ; [ DW_TAG_member ] [quick] [line 131, size 32, align 32, offset 448] [from ngx_uint_t]
!1115 = metadata !{i32 786445, metadata !1061, metadata !"recursion", metadata !1062, i32 132, i64 32, i64 32, i64 480, i32 0, metadata !30} ; [ DW_TAG_member ] [recursion] [line 132, size 32, align 32, offset 480] [from ngx_uint_t]
!1116 = metadata !{i32 786445, metadata !1061, metadata !"event", metadata !1062, i32 133, i64 32, i64 32, i64 512, i32 0, metadata !227} ; [ DW_TAG_member ] [event] [line 133, size 32, align 32, offset 512] [from ]
!1117 = metadata !{i32 786445, metadata !759, metadata !"buffer", metadata !760, i32 280, i64 416, i64 32, i64 2336, i32 0, metadata !67} ; [ DW_TAG_member ] [buffer] [line 280, size 416, align 32, offset 2336] [from ngx_buf_t]
!1118 = metadata !{i32 786445, metadata !759, metadata !"length", metadata !760, i32 281, i64 64, i64 32, i64 2752, i32 0, metadata !73} ; [ DW_TAG_member ] [length] [line 281, size 64, align 32, offset 2752] [from off_t]
!1119 = metadata !{i32 786445, metadata !759, metadata !"out_bufs", metadata !760, i32 283, i64 32, i64 32, i64 2816, i32 0, metadata !60} ; [ DW_TAG_member ] [out_bufs] [line 283, size 32, align 32, offset 2816] [from ]
!1120 = metadata !{i32 786445, metadata !759, metadata !"busy_bufs", metadata !760, i32 284, i64 32, i64 32, i64 2848, i32 0, metadata !60} ; [ DW_TAG_member ] [busy_bufs] [line 284, size 32, align 32, offset 2848] [from ]
!1121 = metadata !{i32 786445, metadata !759, metadata !"free_bufs", metadata !760, i32 285, i64 32, i64 32, i64 2880, i32 0, metadata !60} ; [ DW_TAG_member ] [free_bufs] [line 285, size 32, align 32, offset 2880] [from ]
!1122 = metadata !{i32 786445, metadata !759, metadata !"input_filter_init", metadata !760, i32 287, i64 32, i64 32, i64 2912, i32 0, metadata !1123} ; [ DW_TAG_member ] [input_filter_init] [line 287, size 32, align 32, offset 2912] [from ]
!1123 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1124} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1125 = metadata !{metadata !9, metadata !28}
!1126 = metadata !{i32 786445, metadata !759, metadata !"input_filter", metadata !760, i32 288, i64 32, i64 32, i64 2944, i32 0, metadata !1127} ; [ DW_TAG_member ] [input_filter] [line 288, size 32, align 32, offset 2944] [from ]
!1127 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1128} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1128 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1129, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1129 = metadata !{metadata !9, metadata !28, metadata !289}
!1130 = metadata !{i32 786445, metadata !759, metadata !"input_filter_ctx", metadata !760, i32 289, i64 32, i64 32, i64 2976, i32 0, metadata !28} ; [ DW_TAG_member ] [input_filter_ctx] [line 289, size 32, align 32, offset 2976] [from ]
!1131 = metadata !{i32 786445, metadata !759, metadata !"create_key", metadata !760, i32 292, i64 32, i64 32, i64 3008, i32 0, metadata !1132} ; [ DW_TAG_member ] [create_key] [line 292, size 32, align 32, offset 3008] [from ]
!1132 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1133} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1134 = metadata !{metadata !9, metadata !565}
!1135 = metadata !{i32 786445, metadata !759, metadata !"create_request", metadata !760, i32 294, i64 32, i64 32, i64 3040, i32 0, metadata !1132} ; [ DW_TAG_member ] [create_request] [line 294, size 32, align 32, offset 3040] [from ]
!1136 = metadata !{i32 786445, metadata !759, metadata !"reinit_request", metadata !760, i32 295, i64 32, i64 32, i64 3072, i32 0, metadata !1132} ; [ DW_TAG_member ] [reinit_request] [line 295, size 32, align 32, offset 3072] [from ]
!1137 = metadata !{i32 786445, metadata !759, metadata !"process_header", metadata !760, i32 296, i64 32, i64 32, i64 3104, i32 0, metadata !1132} ; [ DW_TAG_member ] [process_header] [line 296, size 32, align 32, offset 3104] [from ]
!1138 = metadata !{i32 786445, metadata !759, metadata !"abort_request", metadata !760, i32 297, i64 32, i64 32, i64 3136, i32 0, metadata !562} ; [ DW_TAG_member ] [abort_request] [line 297, size 32, align 32, offset 3136] [from ]
!1139 = metadata !{i32 786445, metadata !759, metadata !"finalize_request", metadata !760, i32 298, i64 32, i64 32, i64 3168, i32 0, metadata !1140} ; [ DW_TAG_member ] [finalize_request] [line 298, size 32, align 32, offset 3168] [from ]
!1140 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1141} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1142 = metadata !{null, metadata !565, metadata !9}
!1143 = metadata !{i32 786445, metadata !759, metadata !"rewrite_redirect", metadata !760, i32 300, i64 32, i64 32, i64 3200, i32 0, metadata !1144} ; [ DW_TAG_member ] [rewrite_redirect] [line 300, size 32, align 32, offset 3200] [from ]
!1144 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1145} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1145 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1146, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1146 = metadata !{metadata !9, metadata !565, metadata !1016, metadata !34}
!1147 = metadata !{i32 786445, metadata !759, metadata !"rewrite_cookie", metadata !760, i32 302, i64 32, i64 32, i64 3232, i32 0, metadata !1148} ; [ DW_TAG_member ] [rewrite_cookie] [line 302, size 32, align 32, offset 3232] [from ]
!1148 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1149} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1150 = metadata !{metadata !9, metadata !565, metadata !1016}
!1151 = metadata !{i32 786445, metadata !759, metadata !"timeout", metadata !760, i32 305, i64 32, i64 32, i64 3264, i32 0, metadata !345} ; [ DW_TAG_member ] [timeout] [line 305, size 32, align 32, offset 3264] [from ngx_msec_t]
!1152 = metadata !{i32 786445, metadata !759, metadata !"state", metadata !760, i32 307, i64 32, i64 32, i64 3296, i32 0, metadata !1153} ; [ DW_TAG_member ] [state] [line 307, size 32, align 32, offset 3296] [from ]
!1153 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1154} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_upstream_state_t]
!1154 = metadata !{i32 786454, null, metadata !"ngx_http_upstream_state_t", metadata !760, i32 63, i64 0, i64 0, i64 0, i32 0, metadata !1155} ; [ DW_TAG_typedef ] [ngx_http_upstream_state_t] [line 63, size 0, align 0, offset 0] [from ]
!1155 = metadata !{i32 786451, null, metadata !"", metadata !760, i32 53, i64 256, i64 32, i32 0, i32 0, null, metadata !1156, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 53, size 256, align 32, offset 0] [from ]
!1156 = metadata !{metadata !1157, metadata !1158, metadata !1159, metadata !1160, metadata !1161, metadata !1162, metadata !1163}
!1157 = metadata !{i32 786445, metadata !1155, metadata !"bl_time", metadata !760, i32 54, i64 32, i64 32, i64 0, i32 0, metadata !345} ; [ DW_TAG_member ] [bl_time] [line 54, size 32, align 32, offset 0] [from ngx_msec_t]
!1158 = metadata !{i32 786445, metadata !1155, metadata !"bl_state", metadata !760, i32 55, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [bl_state] [line 55, size 32, align 32, offset 32] [from ngx_uint_t]
!1159 = metadata !{i32 786445, metadata !1155, metadata !"status", metadata !760, i32 57, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [status] [line 57, size 32, align 32, offset 64] [from ngx_uint_t]
!1160 = metadata !{i32 786445, metadata !1155, metadata !"response_sec", metadata !760, i32 58, i64 32, i64 32, i64 96, i32 0, metadata !585} ; [ DW_TAG_member ] [response_sec] [line 58, size 32, align 32, offset 96] [from time_t]
!1161 = metadata !{i32 786445, metadata !1155, metadata !"response_msec", metadata !760, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [response_msec] [line 59, size 32, align 32, offset 128] [from ngx_uint_t]
!1162 = metadata !{i32 786445, metadata !1155, metadata !"response_length", metadata !760, i32 60, i64 64, i64 32, i64 160, i32 0, metadata !73} ; [ DW_TAG_member ] [response_length] [line 60, size 64, align 32, offset 160] [from off_t]
!1163 = metadata !{i32 786445, metadata !1155, metadata !"peer", metadata !760, i32 62, i64 32, i64 32, i64 224, i32 0, metadata !779} ; [ DW_TAG_member ] [peer] [line 62, size 32, align 32, offset 224] [from ]
!1164 = metadata !{i32 786445, metadata !759, metadata !"method", metadata !760, i32 309, i64 64, i64 32, i64 3328, i32 0, metadata !91} ; [ DW_TAG_member ] [method] [line 309, size 64, align 32, offset 3328] [from ngx_str_t]
!1165 = metadata !{i32 786445, metadata !759, metadata !"schema", metadata !760, i32 310, i64 64, i64 32, i64 3392, i32 0, metadata !91} ; [ DW_TAG_member ] [schema] [line 310, size 64, align 32, offset 3392] [from ngx_str_t]
!1166 = metadata !{i32 786445, metadata !759, metadata !"uri", metadata !760, i32 311, i64 64, i64 32, i64 3456, i32 0, metadata !91} ; [ DW_TAG_member ] [uri] [line 311, size 64, align 32, offset 3456] [from ngx_str_t]
!1167 = metadata !{i32 786445, metadata !759, metadata !"cleanup", metadata !760, i32 313, i64 32, i64 32, i64 3520, i32 0, metadata !1168} ; [ DW_TAG_member ] [cleanup] [line 313, size 32, align 32, offset 3520] [from ]
!1168 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1169} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1169 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_pt", metadata !760, i32 313, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [ngx_http_cleanup_pt] [line 313, size 0, align 0, offset 0] [from ]
!1170 = metadata !{i32 786445, metadata !759, metadata !"store", metadata !760, i32 315, i64 1, i64 32, i64 3552, i32 0, metadata !32} ; [ DW_TAG_member ] [store] [line 315, size 1, align 32, offset 3552] [from unsigned int]
!1171 = metadata !{i32 786445, metadata !759, metadata !"cacheable", metadata !760, i32 316, i64 1, i64 32, i64 3553, i32 0, metadata !32} ; [ DW_TAG_member ] [cacheable] [line 316, size 1, align 32, offset 3553] [from unsigned int]
!1172 = metadata !{i32 786445, metadata !759, metadata !"accel", metadata !760, i32 317, i64 1, i64 32, i64 3554, i32 0, metadata !32} ; [ DW_TAG_member ] [accel] [line 317, size 1, align 32, offset 3554] [from unsigned int]
!1173 = metadata !{i32 786445, metadata !759, metadata !"ssl", metadata !760, i32 318, i64 1, i64 32, i64 3555, i32 0, metadata !32} ; [ DW_TAG_member ] [ssl] [line 318, size 1, align 32, offset 3555] [from unsigned int]
!1174 = metadata !{i32 786445, metadata !759, metadata !"cache_status", metadata !760, i32 320, i64 3, i64 32, i64 3556, i32 0, metadata !32} ; [ DW_TAG_member ] [cache_status] [line 320, size 3, align 32, offset 3556] [from unsigned int]
!1175 = metadata !{i32 786445, metadata !759, metadata !"buffering", metadata !760, i32 323, i64 1, i64 32, i64 3559, i32 0, metadata !32} ; [ DW_TAG_member ] [buffering] [line 323, size 1, align 32, offset 3559] [from unsigned int]
!1176 = metadata !{i32 786445, metadata !759, metadata !"keepalive", metadata !760, i32 324, i64 1, i64 32, i64 3560, i32 0, metadata !32} ; [ DW_TAG_member ] [keepalive] [line 324, size 1, align 32, offset 3560] [from unsigned int]
!1177 = metadata !{i32 786445, metadata !759, metadata !"request_sent", metadata !760, i32 326, i64 1, i64 32, i64 3561, i32 0, metadata !32} ; [ DW_TAG_member ] [request_sent] [line 326, size 1, align 32, offset 3561] [from unsigned int]
!1178 = metadata !{i32 786445, metadata !759, metadata !"header_sent", metadata !760, i32 327, i64 1, i64 32, i64 3562, i32 0, metadata !32} ; [ DW_TAG_member ] [header_sent] [line 327, size 1, align 32, offset 3562] [from unsigned int]
!1179 = metadata !{i32 786445, metadata !551, metadata !"upstream_states", metadata !552, i32 372, i64 32, i64 32, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [upstream_states] [line 372, size 32, align 32, offset 320] [from ]
!1180 = metadata !{i32 786445, metadata !551, metadata !"pool", metadata !552, i32 375, i64 32, i64 32, i64 352, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 375, size 32, align 32, offset 352] [from ]
!1181 = metadata !{i32 786445, metadata !551, metadata !"header_in", metadata !552, i32 376, i64 32, i64 32, i64 384, i32 0, metadata !66} ; [ DW_TAG_member ] [header_in] [line 376, size 32, align 32, offset 384] [from ]
!1182 = metadata !{i32 786445, metadata !551, metadata !"headers_in", metadata !552, i32 378, i64 1248, i64 32, i64 416, i32 0, metadata !1183} ; [ DW_TAG_member ] [headers_in] [line 378, size 1248, align 32, offset 416] [from ngx_http_headers_in_t]
!1183 = metadata !{i32 786454, null, metadata !"ngx_http_headers_in_t", metadata !552, i32 239, i64 0, i64 0, i64 0, i32 0, metadata !1184} ; [ DW_TAG_typedef ] [ngx_http_headers_in_t] [line 239, size 0, align 0, offset 0] [from ]
!1184 = metadata !{i32 786451, null, metadata !"", metadata !552, i32 175, i64 1248, i64 32, i32 0, i32 0, null, metadata !1185, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 175, size 1248, align 32, offset 0] [from ]
!1185 = metadata !{metadata !1186, metadata !1187, metadata !1188, metadata !1189, metadata !1190, metadata !1191, metadata !1192, metadata !1193, metadata !1194, metadata !1195, metadata !1196, metadata !1197, metadata !1198, metadata !1199, metadata !1200, metadata !1201, metadata !1202, metadata !1203, metadata !1204, metadata !1205, metadata !1206, metadata !1207, metadata !1208, metadata !1209, metadata !1210, metadata !1211, metadata !1212, metadata !1213, metadata !1214, metadata !1215, metadata !1216, metadata !1217}
!1186 = metadata !{i32 786445, metadata !1184, metadata !"headers", metadata !552, i32 176, i64 224, i64 32, i64 0, i32 0, metadata !401} ; [ DW_TAG_member ] [headers] [line 176, size 224, align 32, offset 0] [from ngx_list_t]
!1187 = metadata !{i32 786445, metadata !1184, metadata !"host", metadata !552, i32 178, i64 32, i64 32, i64 224, i32 0, metadata !1016} ; [ DW_TAG_member ] [host] [line 178, size 32, align 32, offset 224] [from ]
!1188 = metadata !{i32 786445, metadata !1184, metadata !"connection", metadata !552, i32 179, i64 32, i64 32, i64 256, i32 0, metadata !1016} ; [ DW_TAG_member ] [connection] [line 179, size 32, align 32, offset 256] [from ]
!1189 = metadata !{i32 786445, metadata !1184, metadata !"if_modified_since", metadata !552, i32 180, i64 32, i64 32, i64 288, i32 0, metadata !1016} ; [ DW_TAG_member ] [if_modified_since] [line 180, size 32, align 32, offset 288] [from ]
!1190 = metadata !{i32 786445, metadata !1184, metadata !"if_unmodified_since", metadata !552, i32 181, i64 32, i64 32, i64 320, i32 0, metadata !1016} ; [ DW_TAG_member ] [if_unmodified_since] [line 181, size 32, align 32, offset 320] [from ]
!1191 = metadata !{i32 786445, metadata !1184, metadata !"user_agent", metadata !552, i32 182, i64 32, i64 32, i64 352, i32 0, metadata !1016} ; [ DW_TAG_member ] [user_agent] [line 182, size 32, align 32, offset 352] [from ]
!1192 = metadata !{i32 786445, metadata !1184, metadata !"referer", metadata !552, i32 183, i64 32, i64 32, i64 384, i32 0, metadata !1016} ; [ DW_TAG_member ] [referer] [line 183, size 32, align 32, offset 384] [from ]
!1193 = metadata !{i32 786445, metadata !1184, metadata !"content_length", metadata !552, i32 184, i64 32, i64 32, i64 416, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_length] [line 184, size 32, align 32, offset 416] [from ]
!1194 = metadata !{i32 786445, metadata !1184, metadata !"content_type", metadata !552, i32 185, i64 32, i64 32, i64 448, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_type] [line 185, size 32, align 32, offset 448] [from ]
!1195 = metadata !{i32 786445, metadata !1184, metadata !"range", metadata !552, i32 187, i64 32, i64 32, i64 480, i32 0, metadata !1016} ; [ DW_TAG_member ] [range] [line 187, size 32, align 32, offset 480] [from ]
!1196 = metadata !{i32 786445, metadata !1184, metadata !"if_range", metadata !552, i32 188, i64 32, i64 32, i64 512, i32 0, metadata !1016} ; [ DW_TAG_member ] [if_range] [line 188, size 32, align 32, offset 512] [from ]
!1197 = metadata !{i32 786445, metadata !1184, metadata !"transfer_encoding", metadata !552, i32 190, i64 32, i64 32, i64 544, i32 0, metadata !1016} ; [ DW_TAG_member ] [transfer_encoding] [line 190, size 32, align 32, offset 544] [from ]
!1198 = metadata !{i32 786445, metadata !1184, metadata !"expect", metadata !552, i32 191, i64 32, i64 32, i64 576, i32 0, metadata !1016} ; [ DW_TAG_member ] [expect] [line 191, size 32, align 32, offset 576] [from ]
!1199 = metadata !{i32 786445, metadata !1184, metadata !"accept_encoding", metadata !552, i32 194, i64 32, i64 32, i64 608, i32 0, metadata !1016} ; [ DW_TAG_member ] [accept_encoding] [line 194, size 32, align 32, offset 608] [from ]
!1200 = metadata !{i32 786445, metadata !1184, metadata !"via", metadata !552, i32 195, i64 32, i64 32, i64 640, i32 0, metadata !1016} ; [ DW_TAG_member ] [via] [line 195, size 32, align 32, offset 640] [from ]
!1201 = metadata !{i32 786445, metadata !1184, metadata !"authorization", metadata !552, i32 198, i64 32, i64 32, i64 672, i32 0, metadata !1016} ; [ DW_TAG_member ] [authorization] [line 198, size 32, align 32, offset 672] [from ]
!1202 = metadata !{i32 786445, metadata !1184, metadata !"keep_alive", metadata !552, i32 200, i64 32, i64 32, i64 704, i32 0, metadata !1016} ; [ DW_TAG_member ] [keep_alive] [line 200, size 32, align 32, offset 704] [from ]
!1203 = metadata !{i32 786445, metadata !1184, metadata !"x_forwarded_for", metadata !552, i32 203, i64 32, i64 32, i64 736, i32 0, metadata !1016} ; [ DW_TAG_member ] [x_forwarded_for] [line 203, size 32, align 32, offset 736] [from ]
!1204 = metadata !{i32 786445, metadata !1184, metadata !"user", metadata !552, i32 222, i64 64, i64 32, i64 768, i32 0, metadata !91} ; [ DW_TAG_member ] [user] [line 222, size 64, align 32, offset 768] [from ngx_str_t]
!1205 = metadata !{i32 786445, metadata !1184, metadata !"passwd", metadata !552, i32 223, i64 64, i64 32, i64 832, i32 0, metadata !91} ; [ DW_TAG_member ] [passwd] [line 223, size 64, align 32, offset 832] [from ngx_str_t]
!1206 = metadata !{i32 786445, metadata !1184, metadata !"cookies", metadata !552, i32 225, i64 160, i64 32, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cookies] [line 225, size 160, align 32, offset 896] [from ngx_array_t]
!1207 = metadata !{i32 786445, metadata !1184, metadata !"server", metadata !552, i32 227, i64 64, i64 32, i64 1056, i32 0, metadata !91} ; [ DW_TAG_member ] [server] [line 227, size 64, align 32, offset 1056] [from ngx_str_t]
!1208 = metadata !{i32 786445, metadata !1184, metadata !"content_length_n", metadata !552, i32 228, i64 64, i64 32, i64 1120, i32 0, metadata !73} ; [ DW_TAG_member ] [content_length_n] [line 228, size 64, align 32, offset 1120] [from off_t]
!1209 = metadata !{i32 786445, metadata !1184, metadata !"keep_alive_n", metadata !552, i32 229, i64 32, i64 32, i64 1184, i32 0, metadata !585} ; [ DW_TAG_member ] [keep_alive_n] [line 229, size 32, align 32, offset 1184] [from time_t]
!1210 = metadata !{i32 786445, metadata !1184, metadata !"connection_type", metadata !552, i32 231, i64 2, i64 32, i64 1216, i32 0, metadata !32} ; [ DW_TAG_member ] [connection_type] [line 231, size 2, align 32, offset 1216] [from unsigned int]
!1211 = metadata !{i32 786445, metadata !1184, metadata !"msie", metadata !552, i32 232, i64 1, i64 32, i64 1218, i32 0, metadata !32} ; [ DW_TAG_member ] [msie] [line 232, size 1, align 32, offset 1218] [from unsigned int]
!1212 = metadata !{i32 786445, metadata !1184, metadata !"msie6", metadata !552, i32 233, i64 1, i64 32, i64 1219, i32 0, metadata !32} ; [ DW_TAG_member ] [msie6] [line 233, size 1, align 32, offset 1219] [from unsigned int]
!1213 = metadata !{i32 786445, metadata !1184, metadata !"opera", metadata !552, i32 234, i64 1, i64 32, i64 1220, i32 0, metadata !32} ; [ DW_TAG_member ] [opera] [line 234, size 1, align 32, offset 1220] [from unsigned int]
!1214 = metadata !{i32 786445, metadata !1184, metadata !"gecko", metadata !552, i32 235, i64 1, i64 32, i64 1221, i32 0, metadata !32} ; [ DW_TAG_member ] [gecko] [line 235, size 1, align 32, offset 1221] [from unsigned int]
!1215 = metadata !{i32 786445, metadata !1184, metadata !"chrome", metadata !552, i32 236, i64 1, i64 32, i64 1222, i32 0, metadata !32} ; [ DW_TAG_member ] [chrome] [line 236, size 1, align 32, offset 1222] [from unsigned int]
!1216 = metadata !{i32 786445, metadata !1184, metadata !"safari", metadata !552, i32 237, i64 1, i64 32, i64 1223, i32 0, metadata !32} ; [ DW_TAG_member ] [safari] [line 237, size 1, align 32, offset 1223] [from unsigned int]
!1217 = metadata !{i32 786445, metadata !1184, metadata !"konqueror", metadata !552, i32 238, i64 1, i64 32, i64 1224, i32 0, metadata !32} ; [ DW_TAG_member ] [konqueror] [line 238, size 1, align 32, offset 1224] [from unsigned int]
!1218 = metadata !{i32 786445, metadata !551, metadata !"headers_out", metadata !552, i32 379, i64 1248, i64 32, i64 1664, i32 0, metadata !1219} ; [ DW_TAG_member ] [headers_out] [line 379, size 1248, align 32, offset 1664] [from ngx_http_headers_out_t]
!1219 = metadata !{i32 786454, null, metadata !"ngx_http_headers_out_t", metadata !552, i32 274, i64 0, i64 0, i64 0, i32 0, metadata !1220} ; [ DW_TAG_typedef ] [ngx_http_headers_out_t] [line 274, size 0, align 0, offset 0] [from ]
!1220 = metadata !{i32 786451, null, metadata !"", metadata !552, i32 242, i64 1248, i64 32, i32 0, i32 0, null, metadata !1221, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 242, size 1248, align 32, offset 0] [from ]
!1221 = metadata !{metadata !1222, metadata !1223, metadata !1224, metadata !1225, metadata !1226, metadata !1227, metadata !1228, metadata !1229, metadata !1230, metadata !1231, metadata !1232, metadata !1233, metadata !1234, metadata !1235, metadata !1236, metadata !1237, metadata !1238, metadata !1239, metadata !1240, metadata !1241, metadata !1242, metadata !1243, metadata !1244, metadata !1245, metadata !1246}
!1222 = metadata !{i32 786445, metadata !1220, metadata !"headers", metadata !552, i32 243, i64 224, i64 32, i64 0, i32 0, metadata !401} ; [ DW_TAG_member ] [headers] [line 243, size 224, align 32, offset 0] [from ngx_list_t]
!1223 = metadata !{i32 786445, metadata !1220, metadata !"status", metadata !552, i32 245, i64 32, i64 32, i64 224, i32 0, metadata !30} ; [ DW_TAG_member ] [status] [line 245, size 32, align 32, offset 224] [from ngx_uint_t]
!1224 = metadata !{i32 786445, metadata !1220, metadata !"status_line", metadata !552, i32 246, i64 64, i64 32, i64 256, i32 0, metadata !91} ; [ DW_TAG_member ] [status_line] [line 246, size 64, align 32, offset 256] [from ngx_str_t]
!1225 = metadata !{i32 786445, metadata !1220, metadata !"server", metadata !552, i32 248, i64 32, i64 32, i64 320, i32 0, metadata !1016} ; [ DW_TAG_member ] [server] [line 248, size 32, align 32, offset 320] [from ]
!1226 = metadata !{i32 786445, metadata !1220, metadata !"date", metadata !552, i32 249, i64 32, i64 32, i64 352, i32 0, metadata !1016} ; [ DW_TAG_member ] [date] [line 249, size 32, align 32, offset 352] [from ]
!1227 = metadata !{i32 786445, metadata !1220, metadata !"content_length", metadata !552, i32 250, i64 32, i64 32, i64 384, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_length] [line 250, size 32, align 32, offset 384] [from ]
!1228 = metadata !{i32 786445, metadata !1220, metadata !"content_encoding", metadata !552, i32 251, i64 32, i64 32, i64 416, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_encoding] [line 251, size 32, align 32, offset 416] [from ]
!1229 = metadata !{i32 786445, metadata !1220, metadata !"location", metadata !552, i32 252, i64 32, i64 32, i64 448, i32 0, metadata !1016} ; [ DW_TAG_member ] [location] [line 252, size 32, align 32, offset 448] [from ]
!1230 = metadata !{i32 786445, metadata !1220, metadata !"refresh", metadata !552, i32 253, i64 32, i64 32, i64 480, i32 0, metadata !1016} ; [ DW_TAG_member ] [refresh] [line 253, size 32, align 32, offset 480] [from ]
!1231 = metadata !{i32 786445, metadata !1220, metadata !"last_modified", metadata !552, i32 254, i64 32, i64 32, i64 512, i32 0, metadata !1016} ; [ DW_TAG_member ] [last_modified] [line 254, size 32, align 32, offset 512] [from ]
!1232 = metadata !{i32 786445, metadata !1220, metadata !"content_range", metadata !552, i32 255, i64 32, i64 32, i64 544, i32 0, metadata !1016} ; [ DW_TAG_member ] [content_range] [line 255, size 32, align 32, offset 544] [from ]
!1233 = metadata !{i32 786445, metadata !1220, metadata !"accept_ranges", metadata !552, i32 256, i64 32, i64 32, i64 576, i32 0, metadata !1016} ; [ DW_TAG_member ] [accept_ranges] [line 256, size 32, align 32, offset 576] [from ]
!1234 = metadata !{i32 786445, metadata !1220, metadata !"www_authenticate", metadata !552, i32 257, i64 32, i64 32, i64 608, i32 0, metadata !1016} ; [ DW_TAG_member ] [www_authenticate] [line 257, size 32, align 32, offset 608] [from ]
!1235 = metadata !{i32 786445, metadata !1220, metadata !"expires", metadata !552, i32 258, i64 32, i64 32, i64 640, i32 0, metadata !1016} ; [ DW_TAG_member ] [expires] [line 258, size 32, align 32, offset 640] [from ]
!1236 = metadata !{i32 786445, metadata !1220, metadata !"etag", metadata !552, i32 259, i64 32, i64 32, i64 672, i32 0, metadata !1016} ; [ DW_TAG_member ] [etag] [line 259, size 32, align 32, offset 672] [from ]
!1237 = metadata !{i32 786445, metadata !1220, metadata !"override_charset", metadata !552, i32 261, i64 32, i64 32, i64 704, i32 0, metadata !779} ; [ DW_TAG_member ] [override_charset] [line 261, size 32, align 32, offset 704] [from ]
!1238 = metadata !{i32 786445, metadata !1220, metadata !"content_type_len", metadata !552, i32 263, i64 32, i64 32, i64 736, i32 0, metadata !34} ; [ DW_TAG_member ] [content_type_len] [line 263, size 32, align 32, offset 736] [from size_t]
!1239 = metadata !{i32 786445, metadata !1220, metadata !"content_type", metadata !552, i32 264, i64 64, i64 32, i64 768, i32 0, metadata !91} ; [ DW_TAG_member ] [content_type] [line 264, size 64, align 32, offset 768] [from ngx_str_t]
!1240 = metadata !{i32 786445, metadata !1220, metadata !"charset", metadata !552, i32 265, i64 64, i64 32, i64 832, i32 0, metadata !91} ; [ DW_TAG_member ] [charset] [line 265, size 64, align 32, offset 832] [from ngx_str_t]
!1241 = metadata !{i32 786445, metadata !1220, metadata !"content_type_lowcase", metadata !552, i32 266, i64 32, i64 32, i64 896, i32 0, metadata !48} ; [ DW_TAG_member ] [content_type_lowcase] [line 266, size 32, align 32, offset 896] [from ]
!1242 = metadata !{i32 786445, metadata !1220, metadata !"content_type_hash", metadata !552, i32 267, i64 32, i64 32, i64 928, i32 0, metadata !30} ; [ DW_TAG_member ] [content_type_hash] [line 267, size 32, align 32, offset 928] [from ngx_uint_t]
!1243 = metadata !{i32 786445, metadata !1220, metadata !"cache_control", metadata !552, i32 269, i64 160, i64 32, i64 960, i32 0, metadata !23} ; [ DW_TAG_member ] [cache_control] [line 269, size 160, align 32, offset 960] [from ngx_array_t]
!1244 = metadata !{i32 786445, metadata !1220, metadata !"content_length_n", metadata !552, i32 271, i64 64, i64 32, i64 1120, i32 0, metadata !73} ; [ DW_TAG_member ] [content_length_n] [line 271, size 64, align 32, offset 1120] [from off_t]
!1245 = metadata !{i32 786445, metadata !1220, metadata !"date_time", metadata !552, i32 272, i64 32, i64 32, i64 1184, i32 0, metadata !585} ; [ DW_TAG_member ] [date_time] [line 272, size 32, align 32, offset 1184] [from time_t]
!1246 = metadata !{i32 786445, metadata !1220, metadata !"last_modified_time", metadata !552, i32 273, i64 32, i64 32, i64 1216, i32 0, metadata !585} ; [ DW_TAG_member ] [last_modified_time] [line 273, size 32, align 32, offset 1216] [from time_t]
!1247 = metadata !{i32 786445, metadata !551, metadata !"request_body", metadata !552, i32 381, i64 32, i64 32, i64 2912, i32 0, metadata !1248} ; [ DW_TAG_member ] [request_body] [line 381, size 32, align 32, offset 2912] [from ]
!1248 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1249} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_request_body_t]
!1249 = metadata !{i32 786454, null, metadata !"ngx_http_request_body_t", metadata !552, i32 286, i64 0, i64 0, i64 0, i32 0, metadata !1250} ; [ DW_TAG_typedef ] [ngx_http_request_body_t] [line 286, size 0, align 0, offset 0] [from ]
!1250 = metadata !{i32 786451, null, metadata !"", metadata !552, i32 279, i64 224, i64 32, i32 0, i32 0, null, metadata !1251, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 279, size 224, align 32, offset 0] [from ]
!1251 = metadata !{metadata !1252, metadata !1253, metadata !1254, metadata !1255, metadata !1256, metadata !1257}
!1252 = metadata !{i32 786445, metadata !1250, metadata !"temp_file", metadata !552, i32 280, i64 32, i64 32, i64 0, i32 0, metadata !869} ; [ DW_TAG_member ] [temp_file] [line 280, size 32, align 32, offset 0] [from ]
!1253 = metadata !{i32 786445, metadata !1250, metadata !"bufs", metadata !552, i32 281, i64 32, i64 32, i64 32, i32 0, metadata !60} ; [ DW_TAG_member ] [bufs] [line 281, size 32, align 32, offset 32] [from ]
!1254 = metadata !{i32 786445, metadata !1250, metadata !"buf", metadata !552, i32 282, i64 32, i64 32, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ] [buf] [line 282, size 32, align 32, offset 64] [from ]
!1255 = metadata !{i32 786445, metadata !1250, metadata !"rest", metadata !552, i32 283, i64 64, i64 32, i64 96, i32 0, metadata !73} ; [ DW_TAG_member ] [rest] [line 283, size 64, align 32, offset 96] [from off_t]
!1256 = metadata !{i32 786445, metadata !1250, metadata !"to_write", metadata !552, i32 284, i64 32, i64 32, i64 160, i32 0, metadata !60} ; [ DW_TAG_member ] [to_write] [line 284, size 32, align 32, offset 160] [from ]
!1257 = metadata !{i32 786445, metadata !1250, metadata !"post_handler", metadata !552, i32 285, i64 32, i64 32, i64 192, i32 0, metadata !1258} ; [ DW_TAG_member ] [post_handler] [line 285, size 32, align 32, offset 192] [from ngx_http_client_body_handler_pt]
!1258 = metadata !{i32 786454, null, metadata !"ngx_http_client_body_handler_pt", metadata !552, i32 277, i64 0, i64 0, i64 0, i32 0, metadata !562} ; [ DW_TAG_typedef ] [ngx_http_client_body_handler_pt] [line 277, size 0, align 0, offset 0] [from ]
!1259 = metadata !{i32 786445, metadata !551, metadata !"lingering_time", metadata !552, i32 383, i64 32, i64 32, i64 2944, i32 0, metadata !585} ; [ DW_TAG_member ] [lingering_time] [line 383, size 32, align 32, offset 2944] [from time_t]
!1260 = metadata !{i32 786445, metadata !551, metadata !"start_sec", metadata !552, i32 384, i64 32, i64 32, i64 2976, i32 0, metadata !585} ; [ DW_TAG_member ] [start_sec] [line 384, size 32, align 32, offset 2976] [from time_t]
!1261 = metadata !{i32 786445, metadata !551, metadata !"start_msec", metadata !552, i32 385, i64 32, i64 32, i64 3008, i32 0, metadata !345} ; [ DW_TAG_member ] [start_msec] [line 385, size 32, align 32, offset 3008] [from ngx_msec_t]
!1262 = metadata !{i32 786445, metadata !551, metadata !"method", metadata !552, i32 387, i64 32, i64 32, i64 3040, i32 0, metadata !30} ; [ DW_TAG_member ] [method] [line 387, size 32, align 32, offset 3040] [from ngx_uint_t]
!1263 = metadata !{i32 786445, metadata !551, metadata !"http_version", metadata !552, i32 388, i64 32, i64 32, i64 3072, i32 0, metadata !30} ; [ DW_TAG_member ] [http_version] [line 388, size 32, align 32, offset 3072] [from ngx_uint_t]
!1264 = metadata !{i32 786445, metadata !551, metadata !"request_line", metadata !552, i32 390, i64 64, i64 32, i64 3104, i32 0, metadata !91} ; [ DW_TAG_member ] [request_line] [line 390, size 64, align 32, offset 3104] [from ngx_str_t]
!1265 = metadata !{i32 786445, metadata !551, metadata !"uri", metadata !552, i32 391, i64 64, i64 32, i64 3168, i32 0, metadata !91} ; [ DW_TAG_member ] [uri] [line 391, size 64, align 32, offset 3168] [from ngx_str_t]
!1266 = metadata !{i32 786445, metadata !551, metadata !"args", metadata !552, i32 392, i64 64, i64 32, i64 3232, i32 0, metadata !91} ; [ DW_TAG_member ] [args] [line 392, size 64, align 32, offset 3232] [from ngx_str_t]
!1267 = metadata !{i32 786445, metadata !551, metadata !"exten", metadata !552, i32 393, i64 64, i64 32, i64 3296, i32 0, metadata !91} ; [ DW_TAG_member ] [exten] [line 393, size 64, align 32, offset 3296] [from ngx_str_t]
!1268 = metadata !{i32 786445, metadata !551, metadata !"unparsed_uri", metadata !552, i32 394, i64 64, i64 32, i64 3360, i32 0, metadata !91} ; [ DW_TAG_member ] [unparsed_uri] [line 394, size 64, align 32, offset 3360] [from ngx_str_t]
!1269 = metadata !{i32 786445, metadata !551, metadata !"method_name", metadata !552, i32 396, i64 64, i64 32, i64 3424, i32 0, metadata !91} ; [ DW_TAG_member ] [method_name] [line 396, size 64, align 32, offset 3424] [from ngx_str_t]
!1270 = metadata !{i32 786445, metadata !551, metadata !"http_protocol", metadata !552, i32 397, i64 64, i64 32, i64 3488, i32 0, metadata !91} ; [ DW_TAG_member ] [http_protocol] [line 397, size 64, align 32, offset 3488] [from ngx_str_t]
!1271 = metadata !{i32 786445, metadata !551, metadata !"out", metadata !552, i32 399, i64 32, i64 32, i64 3552, i32 0, metadata !60} ; [ DW_TAG_member ] [out] [line 399, size 32, align 32, offset 3552] [from ]
!1272 = metadata !{i32 786445, metadata !551, metadata !"main", metadata !552, i32 400, i64 32, i64 32, i64 3584, i32 0, metadata !565} ; [ DW_TAG_member ] [main] [line 400, size 32, align 32, offset 3584] [from ]
!1273 = metadata !{i32 786445, metadata !551, metadata !"parent", metadata !552, i32 401, i64 32, i64 32, i64 3616, i32 0, metadata !565} ; [ DW_TAG_member ] [parent] [line 401, size 32, align 32, offset 3616] [from ]
!1274 = metadata !{i32 786445, metadata !551, metadata !"postponed", metadata !552, i32 402, i64 32, i64 32, i64 3648, i32 0, metadata !1275} ; [ DW_TAG_member ] [postponed] [line 402, size 32, align 32, offset 3648] [from ]
!1275 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1276} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_postponed_request_t]
!1276 = metadata !{i32 786454, null, metadata !"ngx_http_postponed_request_t", metadata !552, i32 333, i64 0, i64 0, i64 0, i32 0, metadata !1277} ; [ DW_TAG_typedef ] [ngx_http_postponed_request_t] [line 333, size 0, align 0, offset 0] [from ngx_http_postponed_request_s]
!1277 = metadata !{i32 786451, null, metadata !"ngx_http_postponed_request_s", metadata !552, i32 335, i64 96, i64 32, i32 0, i32 0, null, metadata !1278, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_postponed_request_s] [line 335, size 96, align 32, offset 0] [from ]
!1278 = metadata !{metadata !1279, metadata !1280, metadata !1281}
!1279 = metadata !{i32 786445, metadata !1277, metadata !"request", metadata !552, i32 336, i64 32, i64 32, i64 0, i32 0, metadata !565} ; [ DW_TAG_member ] [request] [line 336, size 32, align 32, offset 0] [from ]
!1280 = metadata !{i32 786445, metadata !1277, metadata !"out", metadata !552, i32 337, i64 32, i64 32, i64 32, i32 0, metadata !60} ; [ DW_TAG_member ] [out] [line 337, size 32, align 32, offset 32] [from ]
!1281 = metadata !{i32 786445, metadata !1277, metadata !"next", metadata !552, i32 338, i64 32, i64 32, i64 64, i32 0, metadata !1275} ; [ DW_TAG_member ] [next] [line 338, size 32, align 32, offset 64] [from ]
!1282 = metadata !{i32 786445, metadata !551, metadata !"post_subrequest", metadata !552, i32 403, i64 32, i64 32, i64 3680, i32 0, metadata !1283} ; [ DW_TAG_member ] [post_subrequest] [line 403, size 32, align 32, offset 3680] [from ]
!1283 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1284} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_post_subrequest_t]
!1284 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_t", metadata !552, i32 330, i64 0, i64 0, i64 0, i32 0, metadata !1285} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_t] [line 330, size 0, align 0, offset 0] [from ]
!1285 = metadata !{i32 786451, null, metadata !"", metadata !552, i32 327, i64 64, i64 32, i32 0, i32 0, null, metadata !1286, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 327, size 64, align 32, offset 0] [from ]
!1286 = metadata !{metadata !1287, metadata !1292}
!1287 = metadata !{i32 786445, metadata !1285, metadata !"handler", metadata !552, i32 328, i64 32, i64 32, i64 0, i32 0, metadata !1288} ; [ DW_TAG_member ] [handler] [line 328, size 32, align 32, offset 0] [from ngx_http_post_subrequest_pt]
!1288 = metadata !{i32 786454, null, metadata !"ngx_http_post_subrequest_pt", metadata !552, i32 324, i64 0, i64 0, i64 0, i32 0, metadata !1289} ; [ DW_TAG_typedef ] [ngx_http_post_subrequest_pt] [line 324, size 0, align 0, offset 0] [from ]
!1289 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1290} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1290 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1291, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1291 = metadata !{metadata !9, metadata !565, metadata !28, metadata !9}
!1292 = metadata !{i32 786445, metadata !1285, metadata !"data", metadata !552, i32 329, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 329, size 32, align 32, offset 32] [from ]
!1293 = metadata !{i32 786445, metadata !551, metadata !"posted_requests", metadata !552, i32 404, i64 32, i64 32, i64 3712, i32 0, metadata !1294} ; [ DW_TAG_member ] [posted_requests] [line 404, size 32, align 32, offset 3712] [from ]
!1294 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1295} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_posted_request_t]
!1295 = metadata !{i32 786454, null, metadata !"ngx_http_posted_request_t", metadata !552, i32 342, i64 0, i64 0, i64 0, i32 0, metadata !1296} ; [ DW_TAG_typedef ] [ngx_http_posted_request_t] [line 342, size 0, align 0, offset 0] [from ngx_http_posted_request_s]
!1296 = metadata !{i32 786451, null, metadata !"ngx_http_posted_request_s", metadata !552, i32 344, i64 64, i64 32, i32 0, i32 0, null, metadata !1297, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_posted_request_s] [line 344, size 64, align 32, offset 0] [from ]
!1297 = metadata !{metadata !1298, metadata !1299}
!1298 = metadata !{i32 786445, metadata !1296, metadata !"request", metadata !552, i32 345, i64 32, i64 32, i64 0, i32 0, metadata !565} ; [ DW_TAG_member ] [request] [line 345, size 32, align 32, offset 0] [from ]
!1299 = metadata !{i32 786445, metadata !1296, metadata !"next", metadata !552, i32 346, i64 32, i64 32, i64 32, i32 0, metadata !1294} ; [ DW_TAG_member ] [next] [line 346, size 32, align 32, offset 32] [from ]
!1300 = metadata !{i32 786445, metadata !551, metadata !"virtual_names", metadata !552, i32 406, i64 32, i64 32, i64 3744, i32 0, metadata !1301} ; [ DW_TAG_member ] [virtual_names] [line 406, size 32, align 32, offset 3744] [from ]
!1301 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1302} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_virtual_names_t]
!1302 = metadata !{i32 786454, null, metadata !"ngx_http_virtual_names_t", metadata !552, i32 310, i64 0, i64 0, i64 0, i32 0, metadata !1303} ; [ DW_TAG_typedef ] [ngx_http_virtual_names_t] [line 310, size 0, align 0, offset 0] [from ]
!1303 = metadata !{i32 786451, null, metadata !"", metadata !552, i32 305, i64 192, i64 32, i32 0, i32 0, null, metadata !1304, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 305, size 192, align 32, offset 0] [from ]
!1304 = metadata !{metadata !1305, metadata !1318, metadata !1319}
!1305 = metadata !{i32 786445, metadata !1303, metadata !"names", metadata !552, i32 306, i64 128, i64 32, i64 0, i32 0, metadata !1306} ; [ DW_TAG_member ] [names] [line 306, size 128, align 32, offset 0] [from ngx_hash_combined_t]
!1306 = metadata !{i32 786454, null, metadata !"ngx_hash_combined_t", metadata !552, i32 49, i64 0, i64 0, i64 0, i32 0, metadata !1307} ; [ DW_TAG_typedef ] [ngx_hash_combined_t] [line 49, size 0, align 0, offset 0] [from ]
!1307 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 45, i64 128, i64 32, i32 0, i32 0, null, metadata !1308, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 45, size 128, align 32, offset 0] [from ]
!1308 = metadata !{metadata !1309, metadata !1310, metadata !1317}
!1309 = metadata !{i32 786445, metadata !1307, metadata !"hash", metadata !976, i32 46, i64 64, i64 32, i64 0, i32 0, metadata !974} ; [ DW_TAG_member ] [hash] [line 46, size 64, align 32, offset 0] [from ngx_hash_t]
!1310 = metadata !{i32 786445, metadata !1307, metadata !"wc_head", metadata !976, i32 47, i64 32, i64 32, i64 64, i32 0, metadata !1311} ; [ DW_TAG_member ] [wc_head] [line 47, size 32, align 32, offset 64] [from ]
!1311 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1312} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_wildcard_t]
!1312 = metadata !{i32 786454, null, metadata !"ngx_hash_wildcard_t", metadata !976, i32 32, i64 0, i64 0, i64 0, i32 0, metadata !1313} ; [ DW_TAG_typedef ] [ngx_hash_wildcard_t] [line 32, size 0, align 0, offset 0] [from ]
!1313 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 29, i64 96, i64 32, i32 0, i32 0, null, metadata !1314, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 29, size 96, align 32, offset 0] [from ]
!1314 = metadata !{metadata !1315, metadata !1316}
!1315 = metadata !{i32 786445, metadata !1313, metadata !"hash", metadata !976, i32 30, i64 64, i64 32, i64 0, i32 0, metadata !974} ; [ DW_TAG_member ] [hash] [line 30, size 64, align 32, offset 0] [from ngx_hash_t]
!1316 = metadata !{i32 786445, metadata !1313, metadata !"value", metadata !976, i32 31, i64 32, i64 32, i64 64, i32 0, metadata !28} ; [ DW_TAG_member ] [value] [line 31, size 32, align 32, offset 64] [from ]
!1317 = metadata !{i32 786445, metadata !1307, metadata !"wc_tail", metadata !976, i32 48, i64 32, i64 32, i64 96, i32 0, metadata !1311} ; [ DW_TAG_member ] [wc_tail] [line 48, size 32, align 32, offset 96] [from ]
!1318 = metadata !{i32 786445, metadata !1303, metadata !"nregex", metadata !552, i32 308, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [nregex] [line 308, size 32, align 32, offset 128] [from ngx_uint_t]
!1319 = metadata !{i32 786445, metadata !1303, metadata !"regex", metadata !552, i32 309, i64 32, i64 32, i64 160, i32 0, metadata !1320} ; [ DW_TAG_member ] [regex] [line 309, size 32, align 32, offset 160] [from ]
!1320 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1321} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_server_name_t]
!1321 = metadata !{i32 786454, null, metadata !"ngx_http_server_name_t", metadata !552, i32 302, i64 0, i64 0, i64 0, i32 0, metadata !1322} ; [ DW_TAG_typedef ] [ngx_http_server_name_t] [line 302, size 0, align 0, offset 0] [from ngx_http_server_name_s]
!1322 = metadata !{i32 786451, null, metadata !"ngx_http_server_name_s", metadata !466, i32 271, i64 128, i64 32, i32 0, i32 0, null, metadata !1323, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_server_name_s] [line 271, size 128, align 32, offset 0] [from ]
!1323 = metadata !{metadata !1324, metadata !1325, metadata !1352}
!1324 = metadata !{i32 786445, metadata !1322, metadata !"regex", metadata !466, i32 273, i64 32, i64 32, i64 0, i32 0, metadata !470} ; [ DW_TAG_member ] [regex] [line 273, size 32, align 32, offset 0] [from ]
!1325 = metadata !{i32 786445, metadata !1322, metadata !"server", metadata !466, i32 275, i64 32, i64 32, i64 32, i32 0, metadata !1326} ; [ DW_TAG_member ] [server] [line 275, size 32, align 32, offset 32] [from ]
!1326 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1327} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_srv_conf_t]
!1327 = metadata !{i32 786454, null, metadata !"ngx_http_core_srv_conf_t", metadata !466, i32 205, i64 0, i64 0, i64 0, i32 0, metadata !1328} ; [ DW_TAG_typedef ] [ngx_http_core_srv_conf_t] [line 205, size 0, align 0, offset 0] [from ]
!1328 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 178, i64 608, i64 32, i32 0, i32 0, null, metadata !1329, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 178, size 608, align 32, offset 0] [from ]
!1329 = metadata !{metadata !1330, metadata !1331, metadata !1340, metadata !1341, metadata !1342, metadata !1343, metadata !1344, metadata !1345, metadata !1346, metadata !1347, metadata !1348, metadata !1349, metadata !1350, metadata !1351}
!1330 = metadata !{i32 786445, metadata !1328, metadata !"server_names", metadata !466, i32 180, i64 160, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [server_names] [line 180, size 160, align 32, offset 0] [from ngx_array_t]
!1331 = metadata !{i32 786445, metadata !1328, metadata !"ctx", metadata !466, i32 183, i64 32, i64 32, i64 160, i32 0, metadata !1332} ; [ DW_TAG_member ] [ctx] [line 183, size 32, align 32, offset 160] [from ]
!1332 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1333} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_ctx_t]
!1333 = metadata !{i32 786454, null, metadata !"ngx_http_conf_ctx_t", metadata !466, i32 21, i64 0, i64 0, i64 0, i32 0, metadata !1334} ; [ DW_TAG_typedef ] [ngx_http_conf_ctx_t] [line 21, size 0, align 0, offset 0] [from ]
!1334 = metadata !{i32 786451, null, metadata !"", metadata !1335, i32 17, i64 96, i64 32, i32 0, i32 0, null, metadata !1336, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 17, size 96, align 32, offset 0] [from ]
!1335 = metadata !{i32 786473, metadata !"src/http/ngx_http_config.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1336 = metadata !{metadata !1337, metadata !1338, metadata !1339}
!1337 = metadata !{i32 786445, metadata !1334, metadata !"main_conf", metadata !1335, i32 18, i64 32, i64 32, i64 0, i32 0, metadata !214} ; [ DW_TAG_member ] [main_conf] [line 18, size 32, align 32, offset 0] [from ]
!1338 = metadata !{i32 786445, metadata !1334, metadata !"srv_conf", metadata !1335, i32 19, i64 32, i64 32, i64 32, i32 0, metadata !214} ; [ DW_TAG_member ] [srv_conf] [line 19, size 32, align 32, offset 32] [from ]
!1339 = metadata !{i32 786445, metadata !1334, metadata !"loc_conf", metadata !1335, i32 20, i64 32, i64 32, i64 64, i32 0, metadata !214} ; [ DW_TAG_member ] [loc_conf] [line 20, size 32, align 32, offset 64] [from ]
!1340 = metadata !{i32 786445, metadata !1328, metadata !"server_name", metadata !466, i32 185, i64 64, i64 32, i64 192, i32 0, metadata !91} ; [ DW_TAG_member ] [server_name] [line 185, size 64, align 32, offset 192] [from ngx_str_t]
!1341 = metadata !{i32 786445, metadata !1328, metadata !"connection_pool_size", metadata !466, i32 187, i64 32, i64 32, i64 256, i32 0, metadata !34} ; [ DW_TAG_member ] [connection_pool_size] [line 187, size 32, align 32, offset 256] [from size_t]
!1342 = metadata !{i32 786445, metadata !1328, metadata !"request_pool_size", metadata !466, i32 188, i64 32, i64 32, i64 288, i32 0, metadata !34} ; [ DW_TAG_member ] [request_pool_size] [line 188, size 32, align 32, offset 288] [from size_t]
!1343 = metadata !{i32 786445, metadata !1328, metadata !"client_header_buffer_size", metadata !466, i32 189, i64 32, i64 32, i64 320, i32 0, metadata !34} ; [ DW_TAG_member ] [client_header_buffer_size] [line 189, size 32, align 32, offset 320] [from size_t]
!1344 = metadata !{i32 786445, metadata !1328, metadata !"large_client_header_buffers", metadata !466, i32 191, i64 64, i64 32, i64 352, i32 0, metadata !849} ; [ DW_TAG_member ] [large_client_header_buffers] [line 191, size 64, align 32, offset 352] [from ngx_bufs_t]
!1345 = metadata !{i32 786445, metadata !1328, metadata !"client_header_timeout", metadata !466, i32 193, i64 32, i64 32, i64 416, i32 0, metadata !345} ; [ DW_TAG_member ] [client_header_timeout] [line 193, size 32, align 32, offset 416] [from ngx_msec_t]
!1346 = metadata !{i32 786445, metadata !1328, metadata !"ignore_invalid_headers", metadata !466, i32 195, i64 32, i64 32, i64 448, i32 0, metadata !966} ; [ DW_TAG_member ] [ignore_invalid_headers] [line 195, size 32, align 32, offset 448] [from ngx_flag_t]
!1347 = metadata !{i32 786445, metadata !1328, metadata !"merge_slashes", metadata !466, i32 196, i64 32, i64 32, i64 480, i32 0, metadata !966} ; [ DW_TAG_member ] [merge_slashes] [line 196, size 32, align 32, offset 480] [from ngx_flag_t]
!1348 = metadata !{i32 786445, metadata !1328, metadata !"underscores_in_headers", metadata !466, i32 197, i64 32, i64 32, i64 512, i32 0, metadata !966} ; [ DW_TAG_member ] [underscores_in_headers] [line 197, size 32, align 32, offset 512] [from ngx_flag_t]
!1349 = metadata !{i32 786445, metadata !1328, metadata !"listen", metadata !466, i32 199, i64 1, i64 32, i64 544, i32 0, metadata !32} ; [ DW_TAG_member ] [listen] [line 199, size 1, align 32, offset 544] [from unsigned int]
!1350 = metadata !{i32 786445, metadata !1328, metadata !"captures", metadata !466, i32 201, i64 1, i64 32, i64 545, i32 0, metadata !32} ; [ DW_TAG_member ] [captures] [line 201, size 1, align 32, offset 545] [from unsigned int]
!1351 = metadata !{i32 786445, metadata !1328, metadata !"named_locations", metadata !466, i32 204, i64 32, i64 32, i64 576, i32 0, metadata !539} ; [ DW_TAG_member ] [named_locations] [line 204, size 32, align 32, offset 576] [from ]
!1352 = metadata !{i32 786445, metadata !1322, metadata !"name", metadata !466, i32 276, i64 64, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 276, size 64, align 32, offset 64] [from ngx_str_t]
!1353 = metadata !{i32 786445, metadata !551, metadata !"phase_handler", metadata !552, i32 408, i64 32, i64 32, i64 3776, i32 0, metadata !9} ; [ DW_TAG_member ] [phase_handler] [line 408, size 32, align 32, offset 3776] [from ngx_int_t]
!1354 = metadata !{i32 786445, metadata !551, metadata !"content_handler", metadata !552, i32 409, i64 32, i64 32, i64 3808, i32 0, metadata !1355} ; [ DW_TAG_member ] [content_handler] [line 409, size 32, align 32, offset 3808] [from ngx_http_handler_pt]
!1355 = metadata !{i32 786454, null, metadata !"ngx_http_handler_pt", metadata !552, i32 350, i64 0, i64 0, i64 0, i32 0, metadata !1132} ; [ DW_TAG_typedef ] [ngx_http_handler_pt] [line 350, size 0, align 0, offset 0] [from ]
!1356 = metadata !{i32 786445, metadata !551, metadata !"access_code", metadata !552, i32 410, i64 32, i64 32, i64 3840, i32 0, metadata !30} ; [ DW_TAG_member ] [access_code] [line 410, size 32, align 32, offset 3840] [from ngx_uint_t]
!1357 = metadata !{i32 786445, metadata !551, metadata !"variables", metadata !552, i32 412, i64 32, i64 32, i64 3872, i32 0, metadata !1358} ; [ DW_TAG_member ] [variables] [line 412, size 32, align 32, offset 3872] [from ]
!1358 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1359} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_variable_value_t]
!1359 = metadata !{i32 786454, null, metadata !"ngx_http_variable_value_t", metadata !552, i32 17, i64 0, i64 0, i64 0, i32 0, metadata !1360} ; [ DW_TAG_typedef ] [ngx_http_variable_value_t] [line 17, size 0, align 0, offset 0] [from ngx_variable_value_t]
!1360 = metadata !{i32 786454, null, metadata !"ngx_variable_value_t", metadata !552, i32 37, i64 0, i64 0, i64 0, i32 0, metadata !1361} ; [ DW_TAG_typedef ] [ngx_variable_value_t] [line 37, size 0, align 0, offset 0] [from ]
!1361 = metadata !{i32 786451, null, metadata !"", metadata !35, i32 28, i64 64, i64 32, i32 0, i32 0, null, metadata !1362, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 28, size 64, align 32, offset 0] [from ]
!1362 = metadata !{metadata !1363, metadata !1364, metadata !1365, metadata !1366, metadata !1367, metadata !1368}
!1363 = metadata !{i32 786445, metadata !1361, metadata !"len", metadata !35, i32 29, i64 28, i64 32, i64 0, i32 0, metadata !32} ; [ DW_TAG_member ] [len] [line 29, size 28, align 32, offset 0] [from unsigned int]
!1364 = metadata !{i32 786445, metadata !1361, metadata !"valid", metadata !35, i32 31, i64 1, i64 32, i64 28, i32 0, metadata !32} ; [ DW_TAG_member ] [valid] [line 31, size 1, align 32, offset 28] [from unsigned int]
!1365 = metadata !{i32 786445, metadata !1361, metadata !"no_cacheable", metadata !35, i32 32, i64 1, i64 32, i64 29, i32 0, metadata !32} ; [ DW_TAG_member ] [no_cacheable] [line 32, size 1, align 32, offset 29] [from unsigned int]
!1366 = metadata !{i32 786445, metadata !1361, metadata !"not_found", metadata !35, i32 33, i64 1, i64 32, i64 30, i32 0, metadata !32} ; [ DW_TAG_member ] [not_found] [line 33, size 1, align 32, offset 30] [from unsigned int]
!1367 = metadata !{i32 786445, metadata !1361, metadata !"escape", metadata !35, i32 34, i64 1, i64 32, i64 31, i32 0, metadata !32} ; [ DW_TAG_member ] [escape] [line 34, size 1, align 32, offset 31] [from unsigned int]
!1368 = metadata !{i32 786445, metadata !1361, metadata !"data", metadata !35, i32 36, i64 32, i64 32, i64 32, i32 0, metadata !48} ; [ DW_TAG_member ] [data] [line 36, size 32, align 32, offset 32] [from ]
!1369 = metadata !{i32 786445, metadata !551, metadata !"ncaptures", metadata !552, i32 415, i64 32, i64 32, i64 3904, i32 0, metadata !30} ; [ DW_TAG_member ] [ncaptures] [line 415, size 32, align 32, offset 3904] [from ngx_uint_t]
!1370 = metadata !{i32 786445, metadata !551, metadata !"captures", metadata !552, i32 416, i64 32, i64 32, i64 3936, i32 0, metadata !1371} ; [ DW_TAG_member ] [captures] [line 416, size 32, align 32, offset 3936] [from ]
!1371 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from int]
!1372 = metadata !{i32 786445, metadata !551, metadata !"captures_data", metadata !552, i32 417, i64 32, i64 32, i64 3968, i32 0, metadata !48} ; [ DW_TAG_member ] [captures_data] [line 417, size 32, align 32, offset 3968] [from ]
!1373 = metadata !{i32 786445, metadata !551, metadata !"limit_rate", metadata !552, i32 420, i64 32, i64 32, i64 4000, i32 0, metadata !34} ; [ DW_TAG_member ] [limit_rate] [line 420, size 32, align 32, offset 4000] [from size_t]
!1374 = metadata !{i32 786445, metadata !551, metadata !"header_size", metadata !552, i32 423, i64 32, i64 32, i64 4032, i32 0, metadata !34} ; [ DW_TAG_member ] [header_size] [line 423, size 32, align 32, offset 4032] [from size_t]
!1375 = metadata !{i32 786445, metadata !551, metadata !"request_length", metadata !552, i32 425, i64 64, i64 32, i64 4064, i32 0, metadata !73} ; [ DW_TAG_member ] [request_length] [line 425, size 64, align 32, offset 4064] [from off_t]
!1376 = metadata !{i32 786445, metadata !551, metadata !"err_status", metadata !552, i32 427, i64 32, i64 32, i64 4128, i32 0, metadata !30} ; [ DW_TAG_member ] [err_status] [line 427, size 32, align 32, offset 4128] [from ngx_uint_t]
!1377 = metadata !{i32 786445, metadata !551, metadata !"http_connection", metadata !552, i32 429, i64 32, i64 32, i64 4160, i32 0, metadata !1378} ; [ DW_TAG_member ] [http_connection] [line 429, size 32, align 32, offset 4160] [from ]
!1378 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1379} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_connection_t]
!1379 = metadata !{i32 786454, null, metadata !"ngx_http_connection_t", metadata !552, i32 299, i64 0, i64 0, i64 0, i32 0, metadata !1380} ; [ DW_TAG_typedef ] [ngx_http_connection_t] [line 299, size 0, align 0, offset 0] [from ]
!1380 = metadata !{i32 786451, null, metadata !"", metadata !552, i32 289, i64 192, i64 32, i32 0, i32 0, null, metadata !1381, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 289, size 192, align 32, offset 0] [from ]
!1381 = metadata !{metadata !1382, metadata !1383, metadata !1385, metadata !1386, metadata !1387, metadata !1388}
!1382 = metadata !{i32 786445, metadata !1380, metadata !"request", metadata !552, i32 290, i64 32, i64 32, i64 0, i32 0, metadata !565} ; [ DW_TAG_member ] [request] [line 290, size 32, align 32, offset 0] [from ]
!1383 = metadata !{i32 786445, metadata !1380, metadata !"busy", metadata !552, i32 292, i64 32, i64 32, i64 32, i32 0, metadata !1384} ; [ DW_TAG_member ] [busy] [line 292, size 32, align 32, offset 32] [from ]
!1384 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1385 = metadata !{i32 786445, metadata !1380, metadata !"nbusy", metadata !552, i32 293, i64 32, i64 32, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [nbusy] [line 293, size 32, align 32, offset 64] [from ngx_int_t]
!1386 = metadata !{i32 786445, metadata !1380, metadata !"free", metadata !552, i32 295, i64 32, i64 32, i64 96, i32 0, metadata !1384} ; [ DW_TAG_member ] [free] [line 295, size 32, align 32, offset 96] [from ]
!1387 = metadata !{i32 786445, metadata !1380, metadata !"nfree", metadata !552, i32 296, i64 32, i64 32, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [nfree] [line 296, size 32, align 32, offset 128] [from ngx_int_t]
!1388 = metadata !{i32 786445, metadata !1380, metadata !"pipeline", metadata !552, i32 298, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [pipeline] [line 298, size 32, align 32, offset 160] [from ngx_uint_t]
!1389 = metadata !{i32 786445, metadata !551, metadata !"log_handler", metadata !552, i32 431, i64 32, i64 32, i64 4192, i32 0, metadata !1390} ; [ DW_TAG_member ] [log_handler] [line 431, size 32, align 32, offset 4192] [from ngx_http_log_handler_pt]
!1390 = metadata !{i32 786454, null, metadata !"ngx_http_log_handler_pt", metadata !552, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !1391} ; [ DW_TAG_typedef ] [ngx_http_log_handler_pt] [line 24, size 0, align 0, offset 0] [from ]
!1391 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1392} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1392 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1393, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1393 = metadata !{metadata !48, metadata !565, metadata !565, metadata !48, metadata !34}
!1394 = metadata !{i32 786445, metadata !551, metadata !"cleanup", metadata !552, i32 433, i64 32, i64 32, i64 4224, i32 0, metadata !1395} ; [ DW_TAG_member ] [cleanup] [line 433, size 32, align 32, offset 4224] [from ]
!1395 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1396} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_cleanup_t]
!1396 = metadata !{i32 786454, null, metadata !"ngx_http_cleanup_t", metadata !552, i32 315, i64 0, i64 0, i64 0, i32 0, metadata !1397} ; [ DW_TAG_typedef ] [ngx_http_cleanup_t] [line 315, size 0, align 0, offset 0] [from ngx_http_cleanup_s]
!1397 = metadata !{i32 786451, null, metadata !"ngx_http_cleanup_s", metadata !552, i32 317, i64 96, i64 32, i32 0, i32 0, null, metadata !1398, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_cleanup_s] [line 317, size 96, align 32, offset 0] [from ]
!1398 = metadata !{metadata !1399, metadata !1400, metadata !1401}
!1399 = metadata !{i32 786445, metadata !1397, metadata !"handler", metadata !552, i32 318, i64 32, i64 32, i64 0, i32 0, metadata !1169} ; [ DW_TAG_member ] [handler] [line 318, size 32, align 32, offset 0] [from ngx_http_cleanup_pt]
!1400 = metadata !{i32 786445, metadata !1397, metadata !"data", metadata !552, i32 319, i64 32, i64 32, i64 32, i32 0, metadata !28} ; [ DW_TAG_member ] [data] [line 319, size 32, align 32, offset 32] [from ]
!1401 = metadata !{i32 786445, metadata !1397, metadata !"next", metadata !552, i32 320, i64 32, i64 32, i64 64, i32 0, metadata !1395} ; [ DW_TAG_member ] [next] [line 320, size 32, align 32, offset 64] [from ]
!1402 = metadata !{i32 786445, metadata !551, metadata !"subrequests", metadata !552, i32 435, i64 8, i64 32, i64 4256, i32 0, metadata !32} ; [ DW_TAG_member ] [subrequests] [line 435, size 8, align 32, offset 4256] [from unsigned int]
!1403 = metadata !{i32 786445, metadata !551, metadata !"count", metadata !552, i32 436, i64 8, i64 32, i64 4264, i32 0, metadata !32} ; [ DW_TAG_member ] [count] [line 436, size 8, align 32, offset 4264] [from unsigned int]
!1404 = metadata !{i32 786445, metadata !551, metadata !"blocked", metadata !552, i32 437, i64 8, i64 32, i64 4272, i32 0, metadata !32} ; [ DW_TAG_member ] [blocked] [line 437, size 8, align 32, offset 4272] [from unsigned int]
!1405 = metadata !{i32 786445, metadata !551, metadata !"aio", metadata !552, i32 439, i64 1, i64 32, i64 4280, i32 0, metadata !32} ; [ DW_TAG_member ] [aio] [line 439, size 1, align 32, offset 4280] [from unsigned int]
!1406 = metadata !{i32 786445, metadata !551, metadata !"http_state", metadata !552, i32 441, i64 4, i64 32, i64 4281, i32 0, metadata !32} ; [ DW_TAG_member ] [http_state] [line 441, size 4, align 32, offset 4281] [from unsigned int]
!1407 = metadata !{i32 786445, metadata !551, metadata !"complex_uri", metadata !552, i32 444, i64 1, i64 32, i64 4285, i32 0, metadata !32} ; [ DW_TAG_member ] [complex_uri] [line 444, size 1, align 32, offset 4285] [from unsigned int]
!1408 = metadata !{i32 786445, metadata !551, metadata !"quoted_uri", metadata !552, i32 447, i64 1, i64 32, i64 4286, i32 0, metadata !32} ; [ DW_TAG_member ] [quoted_uri] [line 447, size 1, align 32, offset 4286] [from unsigned int]
!1409 = metadata !{i32 786445, metadata !551, metadata !"plus_in_uri", metadata !552, i32 450, i64 1, i64 32, i64 4287, i32 0, metadata !32} ; [ DW_TAG_member ] [plus_in_uri] [line 450, size 1, align 32, offset 4287] [from unsigned int]
!1410 = metadata !{i32 786445, metadata !551, metadata !"space_in_uri", metadata !552, i32 453, i64 1, i64 32, i64 4288, i32 0, metadata !32} ; [ DW_TAG_member ] [space_in_uri] [line 453, size 1, align 32, offset 4288] [from unsigned int]
!1411 = metadata !{i32 786445, metadata !551, metadata !"invalid_header", metadata !552, i32 455, i64 1, i64 32, i64 4289, i32 0, metadata !32} ; [ DW_TAG_member ] [invalid_header] [line 455, size 1, align 32, offset 4289] [from unsigned int]
!1412 = metadata !{i32 786445, metadata !551, metadata !"add_uri_to_alias", metadata !552, i32 457, i64 1, i64 32, i64 4290, i32 0, metadata !32} ; [ DW_TAG_member ] [add_uri_to_alias] [line 457, size 1, align 32, offset 4290] [from unsigned int]
!1413 = metadata !{i32 786445, metadata !551, metadata !"valid_location", metadata !552, i32 458, i64 1, i64 32, i64 4291, i32 0, metadata !32} ; [ DW_TAG_member ] [valid_location] [line 458, size 1, align 32, offset 4291] [from unsigned int]
!1414 = metadata !{i32 786445, metadata !551, metadata !"valid_unparsed_uri", metadata !552, i32 459, i64 1, i64 32, i64 4292, i32 0, metadata !32} ; [ DW_TAG_member ] [valid_unparsed_uri] [line 459, size 1, align 32, offset 4292] [from unsigned int]
!1415 = metadata !{i32 786445, metadata !551, metadata !"uri_changed", metadata !552, i32 460, i64 1, i64 32, i64 4293, i32 0, metadata !32} ; [ DW_TAG_member ] [uri_changed] [line 460, size 1, align 32, offset 4293] [from unsigned int]
!1416 = metadata !{i32 786445, metadata !551, metadata !"uri_changes", metadata !552, i32 461, i64 4, i64 32, i64 4294, i32 0, metadata !32} ; [ DW_TAG_member ] [uri_changes] [line 461, size 4, align 32, offset 4294] [from unsigned int]
!1417 = metadata !{i32 786445, metadata !551, metadata !"request_body_in_single_buf", metadata !552, i32 463, i64 1, i64 32, i64 4298, i32 0, metadata !32} ; [ DW_TAG_member ] [request_body_in_single_buf] [line 463, size 1, align 32, offset 4298] [from unsigned int]
!1418 = metadata !{i32 786445, metadata !551, metadata !"request_body_in_file_only", metadata !552, i32 464, i64 1, i64 32, i64 4299, i32 0, metadata !32} ; [ DW_TAG_member ] [request_body_in_file_only] [line 464, size 1, align 32, offset 4299] [from unsigned int]
!1419 = metadata !{i32 786445, metadata !551, metadata !"request_body_in_persistent_file", metadata !552, i32 465, i64 1, i64 32, i64 4300, i32 0, metadata !32} ; [ DW_TAG_member ] [request_body_in_persistent_file] [line 465, size 1, align 32, offset 4300] [from unsigned int]
!1420 = metadata !{i32 786445, metadata !551, metadata !"request_body_in_clean_file", metadata !552, i32 466, i64 1, i64 32, i64 4301, i32 0, metadata !32} ; [ DW_TAG_member ] [request_body_in_clean_file] [line 466, size 1, align 32, offset 4301] [from unsigned int]
!1421 = metadata !{i32 786445, metadata !551, metadata !"request_body_file_group_access", metadata !552, i32 467, i64 1, i64 32, i64 4302, i32 0, metadata !32} ; [ DW_TAG_member ] [request_body_file_group_access] [line 467, size 1, align 32, offset 4302] [from unsigned int]
!1422 = metadata !{i32 786445, metadata !551, metadata !"request_body_file_log_level", metadata !552, i32 468, i64 3, i64 32, i64 4303, i32 0, metadata !32} ; [ DW_TAG_member ] [request_body_file_log_level] [line 468, size 3, align 32, offset 4303] [from unsigned int]
!1423 = metadata !{i32 786445, metadata !551, metadata !"subrequest_in_memory", metadata !552, i32 470, i64 1, i64 32, i64 4306, i32 0, metadata !32} ; [ DW_TAG_member ] [subrequest_in_memory] [line 470, size 1, align 32, offset 4306] [from unsigned int]
!1424 = metadata !{i32 786445, metadata !551, metadata !"waited", metadata !552, i32 471, i64 1, i64 32, i64 4307, i32 0, metadata !32} ; [ DW_TAG_member ] [waited] [line 471, size 1, align 32, offset 4307] [from unsigned int]
!1425 = metadata !{i32 786445, metadata !551, metadata !"cached", metadata !552, i32 474, i64 1, i64 32, i64 4308, i32 0, metadata !32} ; [ DW_TAG_member ] [cached] [line 474, size 1, align 32, offset 4308] [from unsigned int]
!1426 = metadata !{i32 786445, metadata !551, metadata !"gzip_tested", metadata !552, i32 478, i64 1, i64 32, i64 4309, i32 0, metadata !32} ; [ DW_TAG_member ] [gzip_tested] [line 478, size 1, align 32, offset 4309] [from unsigned int]
!1427 = metadata !{i32 786445, metadata !551, metadata !"gzip_ok", metadata !552, i32 479, i64 1, i64 32, i64 4310, i32 0, metadata !32} ; [ DW_TAG_member ] [gzip_ok] [line 479, size 1, align 32, offset 4310] [from unsigned int]
!1428 = metadata !{i32 786445, metadata !551, metadata !"gzip_vary", metadata !552, i32 480, i64 1, i64 32, i64 4311, i32 0, metadata !32} ; [ DW_TAG_member ] [gzip_vary] [line 480, size 1, align 32, offset 4311] [from unsigned int]
!1429 = metadata !{i32 786445, metadata !551, metadata !"proxy", metadata !552, i32 483, i64 1, i64 32, i64 4312, i32 0, metadata !32} ; [ DW_TAG_member ] [proxy] [line 483, size 1, align 32, offset 4312] [from unsigned int]
!1430 = metadata !{i32 786445, metadata !551, metadata !"bypass_cache", metadata !552, i32 484, i64 1, i64 32, i64 4313, i32 0, metadata !32} ; [ DW_TAG_member ] [bypass_cache] [line 484, size 1, align 32, offset 4313] [from unsigned int]
!1431 = metadata !{i32 786445, metadata !551, metadata !"no_cache", metadata !552, i32 485, i64 1, i64 32, i64 4314, i32 0, metadata !32} ; [ DW_TAG_member ] [no_cache] [line 485, size 1, align 32, offset 4314] [from unsigned int]
!1432 = metadata !{i32 786445, metadata !551, metadata !"limit_conn_set", metadata !552, i32 492, i64 1, i64 32, i64 4315, i32 0, metadata !32} ; [ DW_TAG_member ] [limit_conn_set] [line 492, size 1, align 32, offset 4315] [from unsigned int]
!1433 = metadata !{i32 786445, metadata !551, metadata !"limit_req_set", metadata !552, i32 493, i64 1, i64 32, i64 4316, i32 0, metadata !32} ; [ DW_TAG_member ] [limit_req_set] [line 493, size 1, align 32, offset 4316] [from unsigned int]
!1434 = metadata !{i32 786445, metadata !551, metadata !"pipeline", metadata !552, i32 499, i64 1, i64 32, i64 4317, i32 0, metadata !32} ; [ DW_TAG_member ] [pipeline] [line 499, size 1, align 32, offset 4317] [from unsigned int]
!1435 = metadata !{i32 786445, metadata !551, metadata !"plain_http", metadata !552, i32 500, i64 1, i64 32, i64 4318, i32 0, metadata !32} ; [ DW_TAG_member ] [plain_http] [line 500, size 1, align 32, offset 4318] [from unsigned int]
!1436 = metadata !{i32 786445, metadata !551, metadata !"chunked", metadata !552, i32 501, i64 1, i64 32, i64 4319, i32 0, metadata !32} ; [ DW_TAG_member ] [chunked] [line 501, size 1, align 32, offset 4319] [from unsigned int]
!1437 = metadata !{i32 786445, metadata !551, metadata !"header_only", metadata !552, i32 502, i64 1, i64 32, i64 4320, i32 0, metadata !32} ; [ DW_TAG_member ] [header_only] [line 502, size 1, align 32, offset 4320] [from unsigned int]
!1438 = metadata !{i32 786445, metadata !551, metadata !"keepalive", metadata !552, i32 503, i64 1, i64 32, i64 4321, i32 0, metadata !32} ; [ DW_TAG_member ] [keepalive] [line 503, size 1, align 32, offset 4321] [from unsigned int]
!1439 = metadata !{i32 786445, metadata !551, metadata !"lingering_close", metadata !552, i32 504, i64 1, i64 32, i64 4322, i32 0, metadata !32} ; [ DW_TAG_member ] [lingering_close] [line 504, size 1, align 32, offset 4322] [from unsigned int]
!1440 = metadata !{i32 786445, metadata !551, metadata !"discard_body", metadata !552, i32 505, i64 1, i64 32, i64 4323, i32 0, metadata !32} ; [ DW_TAG_member ] [discard_body] [line 505, size 1, align 32, offset 4323] [from unsigned int]
!1441 = metadata !{i32 786445, metadata !551, metadata !"internal", metadata !552, i32 506, i64 1, i64 32, i64 4324, i32 0, metadata !32} ; [ DW_TAG_member ] [internal] [line 506, size 1, align 32, offset 4324] [from unsigned int]
!1442 = metadata !{i32 786445, metadata !551, metadata !"error_page", metadata !552, i32 507, i64 1, i64 32, i64 4325, i32 0, metadata !32} ; [ DW_TAG_member ] [error_page] [line 507, size 1, align 32, offset 4325] [from unsigned int]
!1443 = metadata !{i32 786445, metadata !551, metadata !"ignore_content_encoding", metadata !552, i32 508, i64 1, i64 32, i64 4326, i32 0, metadata !32} ; [ DW_TAG_member ] [ignore_content_encoding] [line 508, size 1, align 32, offset 4326] [from unsigned int]
!1444 = metadata !{i32 786445, metadata !551, metadata !"filter_finalize", metadata !552, i32 509, i64 1, i64 32, i64 4327, i32 0, metadata !32} ; [ DW_TAG_member ] [filter_finalize] [line 509, size 1, align 32, offset 4327] [from unsigned int]
!1445 = metadata !{i32 786445, metadata !551, metadata !"post_action", metadata !552, i32 510, i64 1, i64 32, i64 4328, i32 0, metadata !32} ; [ DW_TAG_member ] [post_action] [line 510, size 1, align 32, offset 4328] [from unsigned int]
!1446 = metadata !{i32 786445, metadata !551, metadata !"request_complete", metadata !552, i32 511, i64 1, i64 32, i64 4329, i32 0, metadata !32} ; [ DW_TAG_member ] [request_complete] [line 511, size 1, align 32, offset 4329] [from unsigned int]
!1447 = metadata !{i32 786445, metadata !551, metadata !"request_output", metadata !552, i32 512, i64 1, i64 32, i64 4330, i32 0, metadata !32} ; [ DW_TAG_member ] [request_output] [line 512, size 1, align 32, offset 4330] [from unsigned int]
!1448 = metadata !{i32 786445, metadata !551, metadata !"header_sent", metadata !552, i32 513, i64 1, i64 32, i64 4331, i32 0, metadata !32} ; [ DW_TAG_member ] [header_sent] [line 513, size 1, align 32, offset 4331] [from unsigned int]
!1449 = metadata !{i32 786445, metadata !551, metadata !"expect_tested", metadata !552, i32 514, i64 1, i64 32, i64 4332, i32 0, metadata !32} ; [ DW_TAG_member ] [expect_tested] [line 514, size 1, align 32, offset 4332] [from unsigned int]
!1450 = metadata !{i32 786445, metadata !551, metadata !"root_tested", metadata !552, i32 515, i64 1, i64 32, i64 4333, i32 0, metadata !32} ; [ DW_TAG_member ] [root_tested] [line 515, size 1, align 32, offset 4333] [from unsigned int]
!1451 = metadata !{i32 786445, metadata !551, metadata !"done", metadata !552, i32 516, i64 1, i64 32, i64 4334, i32 0, metadata !32} ; [ DW_TAG_member ] [done] [line 516, size 1, align 32, offset 4334] [from unsigned int]
!1452 = metadata !{i32 786445, metadata !551, metadata !"logged", metadata !552, i32 517, i64 1, i64 32, i64 4335, i32 0, metadata !32} ; [ DW_TAG_member ] [logged] [line 517, size 1, align 32, offset 4335] [from unsigned int]
!1453 = metadata !{i32 786445, metadata !551, metadata !"buffered", metadata !552, i32 519, i64 4, i64 32, i64 4336, i32 0, metadata !32} ; [ DW_TAG_member ] [buffered] [line 519, size 4, align 32, offset 4336] [from unsigned int]
!1454 = metadata !{i32 786445, metadata !551, metadata !"main_filter_need_in_memory", metadata !552, i32 521, i64 1, i64 32, i64 4340, i32 0, metadata !32} ; [ DW_TAG_member ] [main_filter_need_in_memory] [line 521, size 1, align 32, offset 4340] [from unsigned int]
!1455 = metadata !{i32 786445, metadata !551, metadata !"filter_need_in_memory", metadata !552, i32 522, i64 1, i64 32, i64 4341, i32 0, metadata !32} ; [ DW_TAG_member ] [filter_need_in_memory] [line 522, size 1, align 32, offset 4341] [from unsigned int]
!1456 = metadata !{i32 786445, metadata !551, metadata !"filter_need_temporary", metadata !552, i32 523, i64 1, i64 32, i64 4342, i32 0, metadata !32} ; [ DW_TAG_member ] [filter_need_temporary] [line 523, size 1, align 32, offset 4342] [from unsigned int]
!1457 = metadata !{i32 786445, metadata !551, metadata !"allow_ranges", metadata !552, i32 524, i64 1, i64 32, i64 4343, i32 0, metadata !32} ; [ DW_TAG_member ] [allow_ranges] [line 524, size 1, align 32, offset 4343] [from unsigned int]
!1458 = metadata !{i32 786445, metadata !551, metadata !"state", metadata !552, i32 533, i64 32, i64 32, i64 4352, i32 0, metadata !30} ; [ DW_TAG_member ] [state] [line 533, size 32, align 32, offset 4352] [from ngx_uint_t]
!1459 = metadata !{i32 786445, metadata !551, metadata !"header_hash", metadata !552, i32 535, i64 32, i64 32, i64 4384, i32 0, metadata !30} ; [ DW_TAG_member ] [header_hash] [line 535, size 32, align 32, offset 4384] [from ngx_uint_t]
!1460 = metadata !{i32 786445, metadata !551, metadata !"lowcase_index", metadata !552, i32 536, i64 32, i64 32, i64 4416, i32 0, metadata !30} ; [ DW_TAG_member ] [lowcase_index] [line 536, size 32, align 32, offset 4416] [from ngx_uint_t]
!1461 = metadata !{i32 786445, metadata !551, metadata !"lowcase_header", metadata !552, i32 537, i64 256, i64 8, i64 4448, i32 0, metadata !1462} ; [ DW_TAG_member ] [lowcase_header] [line 537, size 256, align 8, offset 4448] [from ]
!1462 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 256, i64 8, i32 0, i32 0, metadata !49, metadata !1463, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 256, align 8, offset 0] [from u_char]
!1463 = metadata !{metadata !1464}
!1464 = metadata !{i32 786465, i64 0, i64 31}     ; [ DW_TAG_subrange_type ] [0, 31]
!1465 = metadata !{i32 786445, metadata !551, metadata !"header_name_start", metadata !552, i32 539, i64 32, i64 32, i64 4704, i32 0, metadata !48} ; [ DW_TAG_member ] [header_name_start] [line 539, size 32, align 32, offset 4704] [from ]
!1466 = metadata !{i32 786445, metadata !551, metadata !"header_name_end", metadata !552, i32 540, i64 32, i64 32, i64 4736, i32 0, metadata !48} ; [ DW_TAG_member ] [header_name_end] [line 540, size 32, align 32, offset 4736] [from ]
!1467 = metadata !{i32 786445, metadata !551, metadata !"header_start", metadata !552, i32 541, i64 32, i64 32, i64 4768, i32 0, metadata !48} ; [ DW_TAG_member ] [header_start] [line 541, size 32, align 32, offset 4768] [from ]
!1468 = metadata !{i32 786445, metadata !551, metadata !"header_end", metadata !552, i32 542, i64 32, i64 32, i64 4800, i32 0, metadata !48} ; [ DW_TAG_member ] [header_end] [line 542, size 32, align 32, offset 4800] [from ]
!1469 = metadata !{i32 786445, metadata !551, metadata !"uri_start", metadata !552, i32 549, i64 32, i64 32, i64 4832, i32 0, metadata !48} ; [ DW_TAG_member ] [uri_start] [line 549, size 32, align 32, offset 4832] [from ]
!1470 = metadata !{i32 786445, metadata !551, metadata !"uri_end", metadata !552, i32 550, i64 32, i64 32, i64 4864, i32 0, metadata !48} ; [ DW_TAG_member ] [uri_end] [line 550, size 32, align 32, offset 4864] [from ]
!1471 = metadata !{i32 786445, metadata !551, metadata !"uri_ext", metadata !552, i32 551, i64 32, i64 32, i64 4896, i32 0, metadata !48} ; [ DW_TAG_member ] [uri_ext] [line 551, size 32, align 32, offset 4896] [from ]
!1472 = metadata !{i32 786445, metadata !551, metadata !"args_start", metadata !552, i32 552, i64 32, i64 32, i64 4928, i32 0, metadata !48} ; [ DW_TAG_member ] [args_start] [line 552, size 32, align 32, offset 4928] [from ]
!1473 = metadata !{i32 786445, metadata !551, metadata !"request_start", metadata !552, i32 553, i64 32, i64 32, i64 4960, i32 0, metadata !48} ; [ DW_TAG_member ] [request_start] [line 553, size 32, align 32, offset 4960] [from ]
!1474 = metadata !{i32 786445, metadata !551, metadata !"request_end", metadata !552, i32 554, i64 32, i64 32, i64 4992, i32 0, metadata !48} ; [ DW_TAG_member ] [request_end] [line 554, size 32, align 32, offset 4992] [from ]
!1475 = metadata !{i32 786445, metadata !551, metadata !"method_end", metadata !552, i32 555, i64 32, i64 32, i64 5024, i32 0, metadata !48} ; [ DW_TAG_member ] [method_end] [line 555, size 32, align 32, offset 5024] [from ]
!1476 = metadata !{i32 786445, metadata !551, metadata !"schema_start", metadata !552, i32 556, i64 32, i64 32, i64 5056, i32 0, metadata !48} ; [ DW_TAG_member ] [schema_start] [line 556, size 32, align 32, offset 5056] [from ]
!1477 = metadata !{i32 786445, metadata !551, metadata !"schema_end", metadata !552, i32 557, i64 32, i64 32, i64 5088, i32 0, metadata !48} ; [ DW_TAG_member ] [schema_end] [line 557, size 32, align 32, offset 5088] [from ]
!1478 = metadata !{i32 786445, metadata !551, metadata !"host_start", metadata !552, i32 558, i64 32, i64 32, i64 5120, i32 0, metadata !48} ; [ DW_TAG_member ] [host_start] [line 558, size 32, align 32, offset 5120] [from ]
!1479 = metadata !{i32 786445, metadata !551, metadata !"host_end", metadata !552, i32 559, i64 32, i64 32, i64 5152, i32 0, metadata !48} ; [ DW_TAG_member ] [host_end] [line 559, size 32, align 32, offset 5152] [from ]
!1480 = metadata !{i32 786445, metadata !551, metadata !"port_start", metadata !552, i32 560, i64 32, i64 32, i64 5184, i32 0, metadata !48} ; [ DW_TAG_member ] [port_start] [line 560, size 32, align 32, offset 5184] [from ]
!1481 = metadata !{i32 786445, metadata !551, metadata !"port_end", metadata !552, i32 561, i64 32, i64 32, i64 5216, i32 0, metadata !48} ; [ DW_TAG_member ] [port_end] [line 561, size 32, align 32, offset 5216] [from ]
!1482 = metadata !{i32 786445, metadata !551, metadata !"http_minor", metadata !552, i32 563, i64 16, i64 32, i64 5248, i32 0, metadata !32} ; [ DW_TAG_member ] [http_minor] [line 563, size 16, align 32, offset 5248] [from unsigned int]
!1483 = metadata !{i32 786445, metadata !551, metadata !"http_major", metadata !552, i32 564, i64 16, i64 32, i64 5264, i32 0, metadata !32} ; [ DW_TAG_member ] [http_major] [line 564, size 16, align 32, offset 5264] [from unsigned int]
!1484 = metadata !{i32 786445, metadata !465, metadata !"alias", metadata !466, i32 334, i64 32, i64 32, i64 320, i32 0, metadata !34} ; [ DW_TAG_member ] [alias] [line 334, size 32, align 32, offset 320] [from size_t]
!1485 = metadata !{i32 786445, metadata !465, metadata !"root", metadata !466, i32 335, i64 64, i64 32, i64 352, i32 0, metadata !91} ; [ DW_TAG_member ] [root] [line 335, size 64, align 32, offset 352] [from ngx_str_t]
!1486 = metadata !{i32 786445, metadata !465, metadata !"post_action", metadata !466, i32 336, i64 64, i64 32, i64 416, i32 0, metadata !91} ; [ DW_TAG_member ] [post_action] [line 336, size 64, align 32, offset 416] [from ngx_str_t]
!1487 = metadata !{i32 786445, metadata !465, metadata !"root_lengths", metadata !466, i32 338, i64 32, i64 32, i64 480, i32 0, metadata !22} ; [ DW_TAG_member ] [root_lengths] [line 338, size 32, align 32, offset 480] [from ]
!1488 = metadata !{i32 786445, metadata !465, metadata !"root_values", metadata !466, i32 339, i64 32, i64 32, i64 512, i32 0, metadata !22} ; [ DW_TAG_member ] [root_values] [line 339, size 32, align 32, offset 512] [from ]
!1489 = metadata !{i32 786445, metadata !465, metadata !"types", metadata !466, i32 341, i64 32, i64 32, i64 544, i32 0, metadata !22} ; [ DW_TAG_member ] [types] [line 341, size 32, align 32, offset 544] [from ]
!1490 = metadata !{i32 786445, metadata !465, metadata !"types_hash", metadata !466, i32 342, i64 64, i64 32, i64 576, i32 0, metadata !974} ; [ DW_TAG_member ] [types_hash] [line 342, size 64, align 32, offset 576] [from ngx_hash_t]
!1491 = metadata !{i32 786445, metadata !465, metadata !"default_type", metadata !466, i32 343, i64 64, i64 32, i64 640, i32 0, metadata !91} ; [ DW_TAG_member ] [default_type] [line 343, size 64, align 32, offset 640] [from ngx_str_t]
!1492 = metadata !{i32 786445, metadata !465, metadata !"client_max_body_size", metadata !466, i32 345, i64 64, i64 32, i64 704, i32 0, metadata !73} ; [ DW_TAG_member ] [client_max_body_size] [line 345, size 64, align 32, offset 704] [from off_t]
!1493 = metadata !{i32 786445, metadata !465, metadata !"directio", metadata !466, i32 346, i64 64, i64 32, i64 768, i32 0, metadata !73} ; [ DW_TAG_member ] [directio] [line 346, size 64, align 32, offset 768] [from off_t]
!1494 = metadata !{i32 786445, metadata !465, metadata !"directio_alignment", metadata !466, i32 347, i64 64, i64 32, i64 832, i32 0, metadata !73} ; [ DW_TAG_member ] [directio_alignment] [line 347, size 64, align 32, offset 832] [from off_t]
!1495 = metadata !{i32 786445, metadata !465, metadata !"client_body_buffer_size", metadata !466, i32 349, i64 32, i64 32, i64 896, i32 0, metadata !34} ; [ DW_TAG_member ] [client_body_buffer_size] [line 349, size 32, align 32, offset 896] [from size_t]
!1496 = metadata !{i32 786445, metadata !465, metadata !"send_lowat", metadata !466, i32 350, i64 32, i64 32, i64 928, i32 0, metadata !34} ; [ DW_TAG_member ] [send_lowat] [line 350, size 32, align 32, offset 928] [from size_t]
!1497 = metadata !{i32 786445, metadata !465, metadata !"postpone_output", metadata !466, i32 351, i64 32, i64 32, i64 960, i32 0, metadata !34} ; [ DW_TAG_member ] [postpone_output] [line 351, size 32, align 32, offset 960] [from size_t]
!1498 = metadata !{i32 786445, metadata !465, metadata !"limit_rate", metadata !466, i32 352, i64 32, i64 32, i64 992, i32 0, metadata !34} ; [ DW_TAG_member ] [limit_rate] [line 352, size 32, align 32, offset 992] [from size_t]
!1499 = metadata !{i32 786445, metadata !465, metadata !"limit_rate_after", metadata !466, i32 353, i64 32, i64 32, i64 1024, i32 0, metadata !34} ; [ DW_TAG_member ] [limit_rate_after] [line 353, size 32, align 32, offset 1024] [from size_t]
!1500 = metadata !{i32 786445, metadata !465, metadata !"sendfile_max_chunk", metadata !466, i32 354, i64 32, i64 32, i64 1056, i32 0, metadata !34} ; [ DW_TAG_member ] [sendfile_max_chunk] [line 354, size 32, align 32, offset 1056] [from size_t]
!1501 = metadata !{i32 786445, metadata !465, metadata !"read_ahead", metadata !466, i32 355, i64 32, i64 32, i64 1088, i32 0, metadata !34} ; [ DW_TAG_member ] [read_ahead] [line 355, size 32, align 32, offset 1088] [from size_t]
!1502 = metadata !{i32 786445, metadata !465, metadata !"client_body_timeout", metadata !466, i32 357, i64 32, i64 32, i64 1120, i32 0, metadata !345} ; [ DW_TAG_member ] [client_body_timeout] [line 357, size 32, align 32, offset 1120] [from ngx_msec_t]
!1503 = metadata !{i32 786445, metadata !465, metadata !"send_timeout", metadata !466, i32 358, i64 32, i64 32, i64 1152, i32 0, metadata !345} ; [ DW_TAG_member ] [send_timeout] [line 358, size 32, align 32, offset 1152] [from ngx_msec_t]
!1504 = metadata !{i32 786445, metadata !465, metadata !"keepalive_timeout", metadata !466, i32 359, i64 32, i64 32, i64 1184, i32 0, metadata !345} ; [ DW_TAG_member ] [keepalive_timeout] [line 359, size 32, align 32, offset 1184] [from ngx_msec_t]
!1505 = metadata !{i32 786445, metadata !465, metadata !"lingering_time", metadata !466, i32 360, i64 32, i64 32, i64 1216, i32 0, metadata !345} ; [ DW_TAG_member ] [lingering_time] [line 360, size 32, align 32, offset 1216] [from ngx_msec_t]
!1506 = metadata !{i32 786445, metadata !465, metadata !"lingering_timeout", metadata !466, i32 361, i64 32, i64 32, i64 1248, i32 0, metadata !345} ; [ DW_TAG_member ] [lingering_timeout] [line 361, size 32, align 32, offset 1248] [from ngx_msec_t]
!1507 = metadata !{i32 786445, metadata !465, metadata !"resolver_timeout", metadata !466, i32 362, i64 32, i64 32, i64 1280, i32 0, metadata !345} ; [ DW_TAG_member ] [resolver_timeout] [line 362, size 32, align 32, offset 1280] [from ngx_msec_t]
!1508 = metadata !{i32 786445, metadata !465, metadata !"resolver", metadata !466, i32 364, i64 32, i64 32, i64 1312, i32 0, metadata !1068} ; [ DW_TAG_member ] [resolver] [line 364, size 32, align 32, offset 1312] [from ]
!1509 = metadata !{i32 786445, metadata !465, metadata !"keepalive_header", metadata !466, i32 366, i64 32, i64 32, i64 1344, i32 0, metadata !585} ; [ DW_TAG_member ] [keepalive_header] [line 366, size 32, align 32, offset 1344] [from time_t]
!1510 = metadata !{i32 786445, metadata !465, metadata !"keepalive_requests", metadata !466, i32 368, i64 32, i64 32, i64 1376, i32 0, metadata !30} ; [ DW_TAG_member ] [keepalive_requests] [line 368, size 32, align 32, offset 1376] [from ngx_uint_t]
!1511 = metadata !{i32 786445, metadata !465, metadata !"keepalive_disable", metadata !466, i32 369, i64 32, i64 32, i64 1408, i32 0, metadata !30} ; [ DW_TAG_member ] [keepalive_disable] [line 369, size 32, align 32, offset 1408] [from ngx_uint_t]
!1512 = metadata !{i32 786445, metadata !465, metadata !"satisfy", metadata !466, i32 370, i64 32, i64 32, i64 1440, i32 0, metadata !30} ; [ DW_TAG_member ] [satisfy] [line 370, size 32, align 32, offset 1440] [from ngx_uint_t]
!1513 = metadata !{i32 786445, metadata !465, metadata !"lingering_close", metadata !466, i32 371, i64 32, i64 32, i64 1472, i32 0, metadata !30} ; [ DW_TAG_member ] [lingering_close] [line 371, size 32, align 32, offset 1472] [from ngx_uint_t]
!1514 = metadata !{i32 786445, metadata !465, metadata !"if_modified_since", metadata !466, i32 372, i64 32, i64 32, i64 1504, i32 0, metadata !30} ; [ DW_TAG_member ] [if_modified_since] [line 372, size 32, align 32, offset 1504] [from ngx_uint_t]
!1515 = metadata !{i32 786445, metadata !465, metadata !"max_ranges", metadata !466, i32 373, i64 32, i64 32, i64 1536, i32 0, metadata !30} ; [ DW_TAG_member ] [max_ranges] [line 373, size 32, align 32, offset 1536] [from ngx_uint_t]
!1516 = metadata !{i32 786445, metadata !465, metadata !"client_body_in_file_only", metadata !466, i32 374, i64 32, i64 32, i64 1568, i32 0, metadata !30} ; [ DW_TAG_member ] [client_body_in_file_only] [line 374, size 32, align 32, offset 1568] [from ngx_uint_t]
!1517 = metadata !{i32 786445, metadata !465, metadata !"client_body_in_single_buffer", metadata !466, i32 376, i64 32, i64 32, i64 1600, i32 0, metadata !966} ; [ DW_TAG_member ] [client_body_in_single_buffer] [line 376, size 32, align 32, offset 1600] [from ngx_flag_t]
!1518 = metadata !{i32 786445, metadata !465, metadata !"internal", metadata !466, i32 378, i64 32, i64 32, i64 1632, i32 0, metadata !966} ; [ DW_TAG_member ] [internal] [line 378, size 32, align 32, offset 1632] [from ngx_flag_t]
!1519 = metadata !{i32 786445, metadata !465, metadata !"sendfile", metadata !466, i32 379, i64 32, i64 32, i64 1664, i32 0, metadata !966} ; [ DW_TAG_member ] [sendfile] [line 379, size 32, align 32, offset 1664] [from ngx_flag_t]
!1520 = metadata !{i32 786445, metadata !465, metadata !"tcp_nopush", metadata !466, i32 383, i64 32, i64 32, i64 1696, i32 0, metadata !966} ; [ DW_TAG_member ] [tcp_nopush] [line 383, size 32, align 32, offset 1696] [from ngx_flag_t]
!1521 = metadata !{i32 786445, metadata !465, metadata !"tcp_nodelay", metadata !466, i32 384, i64 32, i64 32, i64 1728, i32 0, metadata !966} ; [ DW_TAG_member ] [tcp_nodelay] [line 384, size 32, align 32, offset 1728] [from ngx_flag_t]
!1522 = metadata !{i32 786445, metadata !465, metadata !"reset_timedout_connection", metadata !466, i32 385, i64 32, i64 32, i64 1760, i32 0, metadata !966} ; [ DW_TAG_member ] [reset_timedout_connection] [line 385, size 32, align 32, offset 1760] [from ngx_flag_t]
!1523 = metadata !{i32 786445, metadata !465, metadata !"server_name_in_redirect", metadata !466, i32 386, i64 32, i64 32, i64 1792, i32 0, metadata !966} ; [ DW_TAG_member ] [server_name_in_redirect] [line 386, size 32, align 32, offset 1792] [from ngx_flag_t]
!1524 = metadata !{i32 786445, metadata !465, metadata !"port_in_redirect", metadata !466, i32 387, i64 32, i64 32, i64 1824, i32 0, metadata !966} ; [ DW_TAG_member ] [port_in_redirect] [line 387, size 32, align 32, offset 1824] [from ngx_flag_t]
!1525 = metadata !{i32 786445, metadata !465, metadata !"msie_padding", metadata !466, i32 388, i64 32, i64 32, i64 1856, i32 0, metadata !966} ; [ DW_TAG_member ] [msie_padding] [line 388, size 32, align 32, offset 1856] [from ngx_flag_t]
!1526 = metadata !{i32 786445, metadata !465, metadata !"msie_refresh", metadata !466, i32 389, i64 32, i64 32, i64 1888, i32 0, metadata !966} ; [ DW_TAG_member ] [msie_refresh] [line 389, size 32, align 32, offset 1888] [from ngx_flag_t]
!1527 = metadata !{i32 786445, metadata !465, metadata !"log_not_found", metadata !466, i32 390, i64 32, i64 32, i64 1920, i32 0, metadata !966} ; [ DW_TAG_member ] [log_not_found] [line 390, size 32, align 32, offset 1920] [from ngx_flag_t]
!1528 = metadata !{i32 786445, metadata !465, metadata !"log_subrequest", metadata !466, i32 391, i64 32, i64 32, i64 1952, i32 0, metadata !966} ; [ DW_TAG_member ] [log_subrequest] [line 391, size 32, align 32, offset 1952] [from ngx_flag_t]
!1529 = metadata !{i32 786445, metadata !465, metadata !"recursive_error_pages", metadata !466, i32 392, i64 32, i64 32, i64 1984, i32 0, metadata !966} ; [ DW_TAG_member ] [recursive_error_pages] [line 392, size 32, align 32, offset 1984] [from ngx_flag_t]
!1530 = metadata !{i32 786445, metadata !465, metadata !"server_tokens", metadata !466, i32 393, i64 32, i64 32, i64 2016, i32 0, metadata !966} ; [ DW_TAG_member ] [server_tokens] [line 393, size 32, align 32, offset 2016] [from ngx_flag_t]
!1531 = metadata !{i32 786445, metadata !465, metadata !"chunked_transfer_encoding", metadata !466, i32 394, i64 32, i64 32, i64 2048, i32 0, metadata !966} ; [ DW_TAG_member ] [chunked_transfer_encoding] [line 394, size 32, align 32, offset 2048] [from ngx_flag_t]
!1532 = metadata !{i32 786445, metadata !465, metadata !"gzip_vary", metadata !466, i32 397, i64 32, i64 32, i64 2080, i32 0, metadata !966} ; [ DW_TAG_member ] [gzip_vary] [line 397, size 32, align 32, offset 2080] [from ngx_flag_t]
!1533 = metadata !{i32 786445, metadata !465, metadata !"gzip_http_version", metadata !466, i32 399, i64 32, i64 32, i64 2112, i32 0, metadata !30} ; [ DW_TAG_member ] [gzip_http_version] [line 399, size 32, align 32, offset 2112] [from ngx_uint_t]
!1534 = metadata !{i32 786445, metadata !465, metadata !"gzip_proxied", metadata !466, i32 400, i64 32, i64 32, i64 2144, i32 0, metadata !30} ; [ DW_TAG_member ] [gzip_proxied] [line 400, size 32, align 32, offset 2144] [from ngx_uint_t]
!1535 = metadata !{i32 786445, metadata !465, metadata !"gzip_disable", metadata !466, i32 403, i64 32, i64 32, i64 2176, i32 0, metadata !22} ; [ DW_TAG_member ] [gzip_disable] [line 403, size 32, align 32, offset 2176] [from ]
!1536 = metadata !{i32 786445, metadata !465, metadata !"disable_symlinks", metadata !466, i32 408, i64 32, i64 32, i64 2208, i32 0, metadata !30} ; [ DW_TAG_member ] [disable_symlinks] [line 408, size 32, align 32, offset 2208] [from ngx_uint_t]
!1537 = metadata !{i32 786445, metadata !465, metadata !"disable_symlinks_from", metadata !466, i32 409, i64 32, i64 32, i64 2240, i32 0, metadata !1538} ; [ DW_TAG_member ] [disable_symlinks_from] [line 409, size 32, align 32, offset 2240] [from ]
!1538 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1539} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_complex_value_t]
!1539 = metadata !{i32 786454, null, metadata !"ngx_http_complex_value_t", metadata !466, i32 71, i64 0, i64 0, i64 0, i32 0, metadata !1540} ; [ DW_TAG_typedef ] [ngx_http_complex_value_t] [line 71, size 0, align 0, offset 0] [from ]
!1540 = metadata !{i32 786451, null, metadata !"", metadata !1541, i32 66, i64 160, i64 32, i32 0, i32 0, null, metadata !1542, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 66, size 160, align 32, offset 0] [from ]
!1541 = metadata !{i32 786473, metadata !"src/http/ngx_http_script.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1542 = metadata !{metadata !1543, metadata !1544, metadata !1546, metadata !1547}
!1543 = metadata !{i32 786445, metadata !1540, metadata !"value", metadata !1541, i32 67, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [value] [line 67, size 64, align 32, offset 0] [from ngx_str_t]
!1544 = metadata !{i32 786445, metadata !1540, metadata !"flushes", metadata !1541, i32 68, i64 32, i64 32, i64 64, i32 0, metadata !1545} ; [ DW_TAG_member ] [flushes] [line 68, size 32, align 32, offset 64] [from ]
!1545 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_uint_t]
!1546 = metadata !{i32 786445, metadata !1540, metadata !"lengths", metadata !1541, i32 69, i64 32, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [lengths] [line 69, size 32, align 32, offset 96] [from ]
!1547 = metadata !{i32 786445, metadata !1540, metadata !"values", metadata !1541, i32 70, i64 32, i64 32, i64 128, i32 0, metadata !28} ; [ DW_TAG_member ] [values] [line 70, size 32, align 32, offset 128] [from ]
!1548 = metadata !{i32 786445, metadata !465, metadata !"error_pages", metadata !466, i32 412, i64 32, i64 32, i64 2272, i32 0, metadata !22} ; [ DW_TAG_member ] [error_pages] [line 412, size 32, align 32, offset 2272] [from ]
!1549 = metadata !{i32 786445, metadata !465, metadata !"try_files", metadata !466, i32 413, i64 32, i64 32, i64 2304, i32 0, metadata !1550} ; [ DW_TAG_member ] [try_files] [line 413, size 32, align 32, offset 2304] [from ]
!1550 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1551} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_try_file_t]
!1551 = metadata !{i32 786454, null, metadata !"ngx_http_try_file_t", metadata !466, i32 295, i64 0, i64 0, i64 0, i32 0, metadata !1552} ; [ DW_TAG_typedef ] [ngx_http_try_file_t] [line 295, size 0, align 0, offset 0] [from ]
!1552 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 288, i64 160, i64 32, i32 0, i32 0, null, metadata !1553, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 288, size 160, align 32, offset 0] [from ]
!1553 = metadata !{metadata !1554, metadata !1555, metadata !1556, metadata !1557, metadata !1558}
!1554 = metadata !{i32 786445, metadata !1552, metadata !"lengths", metadata !466, i32 289, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_member ] [lengths] [line 289, size 32, align 32, offset 0] [from ]
!1555 = metadata !{i32 786445, metadata !1552, metadata !"values", metadata !466, i32 290, i64 32, i64 32, i64 32, i32 0, metadata !22} ; [ DW_TAG_member ] [values] [line 290, size 32, align 32, offset 32] [from ]
!1556 = metadata !{i32 786445, metadata !1552, metadata !"name", metadata !466, i32 291, i64 64, i64 32, i64 64, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 291, size 64, align 32, offset 64] [from ngx_str_t]
!1557 = metadata !{i32 786445, metadata !1552, metadata !"code", metadata !466, i32 293, i64 10, i64 32, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [code] [line 293, size 10, align 32, offset 128] [from unsigned int]
!1558 = metadata !{i32 786445, metadata !1552, metadata !"test_dir", metadata !466, i32 294, i64 1, i64 32, i64 138, i32 0, metadata !32} ; [ DW_TAG_member ] [test_dir] [line 294, size 1, align 32, offset 138] [from unsigned int]
!1559 = metadata !{i32 786445, metadata !465, metadata !"client_body_temp_path", metadata !466, i32 415, i64 32, i64 32, i64 2336, i32 0, metadata !672} ; [ DW_TAG_member ] [client_body_temp_path] [line 415, size 32, align 32, offset 2336] [from ]
!1560 = metadata !{i32 786445, metadata !465, metadata !"open_file_cache", metadata !466, i32 417, i64 32, i64 32, i64 2368, i32 0, metadata !1561} ; [ DW_TAG_member ] [open_file_cache] [line 417, size 32, align 32, offset 2368] [from ]
!1561 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1562} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_open_file_cache_t]
!1562 = metadata !{i32 786454, null, metadata !"ngx_open_file_cache_t", metadata !466, i32 99, i64 0, i64 0, i64 0, i32 0, metadata !1563} ; [ DW_TAG_typedef ] [ngx_open_file_cache_t] [line 99, size 0, align 0, offset 0] [from ]
!1563 = metadata !{i32 786451, null, metadata !"", metadata !1564, i32 91, i64 416, i64 32, i32 0, i32 0, null, metadata !1565, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 91, size 416, align 32, offset 0] [from ]
!1564 = metadata !{i32 786473, metadata !"src/core/ngx_open_file_cache.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1565 = metadata !{metadata !1566, metadata !1567, metadata !1568, metadata !1569, metadata !1570, metadata !1571}
!1566 = metadata !{i32 786445, metadata !1563, metadata !"rbtree", metadata !1564, i32 92, i64 96, i64 32, i64 0, i32 0, metadata !607} ; [ DW_TAG_member ] [rbtree] [line 92, size 96, align 32, offset 0] [from ngx_rbtree_t]
!1567 = metadata !{i32 786445, metadata !1563, metadata !"sentinel", metadata !1564, i32 93, i64 160, i64 32, i64 96, i32 0, metadata !262} ; [ DW_TAG_member ] [sentinel] [line 93, size 160, align 32, offset 96] [from ngx_rbtree_node_t]
!1568 = metadata !{i32 786445, metadata !1563, metadata !"expire_queue", metadata !1564, i32 94, i64 64, i64 32, i64 256, i32 0, metadata !371} ; [ DW_TAG_member ] [expire_queue] [line 94, size 64, align 32, offset 256] [from ngx_queue_t]
!1569 = metadata !{i32 786445, metadata !1563, metadata !"current", metadata !1564, i32 96, i64 32, i64 32, i64 320, i32 0, metadata !30} ; [ DW_TAG_member ] [current] [line 96, size 32, align 32, offset 320] [from ngx_uint_t]
!1570 = metadata !{i32 786445, metadata !1563, metadata !"max", metadata !1564, i32 97, i64 32, i64 32, i64 352, i32 0, metadata !30} ; [ DW_TAG_member ] [max] [line 97, size 32, align 32, offset 352] [from ngx_uint_t]
!1571 = metadata !{i32 786445, metadata !1563, metadata !"inactive", metadata !1564, i32 98, i64 32, i64 32, i64 384, i32 0, metadata !585} ; [ DW_TAG_member ] [inactive] [line 98, size 32, align 32, offset 384] [from time_t]
!1572 = metadata !{i32 786445, metadata !465, metadata !"open_file_cache_valid", metadata !466, i32 418, i64 32, i64 32, i64 2400, i32 0, metadata !585} ; [ DW_TAG_member ] [open_file_cache_valid] [line 418, size 32, align 32, offset 2400] [from time_t]
!1573 = metadata !{i32 786445, metadata !465, metadata !"open_file_cache_min_uses", metadata !466, i32 419, i64 32, i64 32, i64 2432, i32 0, metadata !30} ; [ DW_TAG_member ] [open_file_cache_min_uses] [line 419, size 32, align 32, offset 2432] [from ngx_uint_t]
!1574 = metadata !{i32 786445, metadata !465, metadata !"open_file_cache_errors", metadata !466, i32 420, i64 32, i64 32, i64 2464, i32 0, metadata !966} ; [ DW_TAG_member ] [open_file_cache_errors] [line 420, size 32, align 32, offset 2464] [from ngx_flag_t]
!1575 = metadata !{i32 786445, metadata !465, metadata !"open_file_cache_events", metadata !466, i32 421, i64 32, i64 32, i64 2496, i32 0, metadata !966} ; [ DW_TAG_member ] [open_file_cache_events] [line 421, size 32, align 32, offset 2496] [from ngx_flag_t]
!1576 = metadata !{i32 786445, metadata !465, metadata !"error_log", metadata !466, i32 423, i64 32, i64 32, i64 2528, i32 0, metadata !140} ; [ DW_TAG_member ] [error_log] [line 423, size 32, align 32, offset 2528] [from ]
!1577 = metadata !{i32 786445, metadata !465, metadata !"types_hash_max_size", metadata !466, i32 425, i64 32, i64 32, i64 2560, i32 0, metadata !30} ; [ DW_TAG_member ] [types_hash_max_size] [line 425, size 32, align 32, offset 2560] [from ngx_uint_t]
!1578 = metadata !{i32 786445, metadata !465, metadata !"types_hash_bucket_size", metadata !466, i32 426, i64 32, i64 32, i64 2592, i32 0, metadata !30} ; [ DW_TAG_member ] [types_hash_bucket_size] [line 426, size 32, align 32, offset 2592] [from ngx_uint_t]
!1579 = metadata !{i32 786445, metadata !465, metadata !"locations", metadata !466, i32 428, i64 32, i64 32, i64 2624, i32 0, metadata !376} ; [ DW_TAG_member ] [locations] [line 428, size 32, align 32, offset 2624] [from ]
!1580 = metadata !{metadata !1581}
!1581 = metadata !{metadata !1582, metadata !1583, metadata !1584, metadata !1585}
!1582 = metadata !{i32 786689, metadata !5, metadata !"cf", metadata !6, i32 16777803, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 587]
!1583 = metadata !{i32 786689, metadata !5, metadata !"locations", metadata !6, i32 33555019, metadata !462, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [locations] [line 587]
!1584 = metadata !{i32 786689, metadata !5, metadata !"clcf", metadata !6, i32 50332235, metadata !463, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [clcf] [line 587]
!1585 = metadata !{i32 786688, metadata !1586, metadata !"lq", metadata !6, i32 589, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq] [line 589]
!1586 = metadata !{i32 786443, metadata !5, i32 588, i32 0, metadata !6, i32 0} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1587 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1588} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_location_queue_t]
!1588 = metadata !{i32 786454, null, metadata !"ngx_http_location_queue_t", metadata !6, i32 444, i64 0, i64 0, i64 0, i32 0, metadata !1589} ; [ DW_TAG_typedef ] [ngx_http_location_queue_t] [line 444, size 0, align 0, offset 0] [from ]
!1589 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 436, i64 288, i64 32, i32 0, i32 0, null, metadata !1590, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 436, size 288, align 32, offset 0] [from ]
!1590 = metadata !{metadata !1591, metadata !1592, metadata !1593, metadata !1594, metadata !1595, metadata !1596, metadata !1597}
!1591 = metadata !{i32 786445, metadata !1589, metadata !"queue", metadata !466, i32 437, i64 64, i64 32, i64 0, i32 0, metadata !371} ; [ DW_TAG_member ] [queue] [line 437, size 64, align 32, offset 0] [from ngx_queue_t]
!1592 = metadata !{i32 786445, metadata !1589, metadata !"exact", metadata !466, i32 438, i64 32, i64 32, i64 64, i32 0, metadata !463} ; [ DW_TAG_member ] [exact] [line 438, size 32, align 32, offset 64] [from ]
!1593 = metadata !{i32 786445, metadata !1589, metadata !"inclusive", metadata !466, i32 439, i64 32, i64 32, i64 96, i32 0, metadata !463} ; [ DW_TAG_member ] [inclusive] [line 439, size 32, align 32, offset 96] [from ]
!1594 = metadata !{i32 786445, metadata !1589, metadata !"name", metadata !466, i32 440, i64 32, i64 32, i64 128, i32 0, metadata !779} ; [ DW_TAG_member ] [name] [line 440, size 32, align 32, offset 128] [from ]
!1595 = metadata !{i32 786445, metadata !1589, metadata !"file_name", metadata !466, i32 441, i64 32, i64 32, i64 160, i32 0, metadata !48} ; [ DW_TAG_member ] [file_name] [line 441, size 32, align 32, offset 160] [from ]
!1596 = metadata !{i32 786445, metadata !1589, metadata !"line", metadata !466, i32 442, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [line] [line 442, size 32, align 32, offset 192] [from ngx_uint_t]
!1597 = metadata !{i32 786445, metadata !1589, metadata !"list", metadata !466, i32 443, i64 64, i64 32, i64 224, i32 0, metadata !371} ; [ DW_TAG_member ] [list] [line 443, size 64, align 32, offset 224] [from ngx_queue_t]
!1598 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_listen", metadata !"ngx_http_add_listen", metadata !"", metadata !6, i32 833, metadata !1599, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*, %struct.ngx_http_core_srv_conf_t*, %struct.ngx_http_listen_opt_t*)* @ngx_http_add_listen, null, null, metadata !1653, i32 834} ; [ DW_TAG_subprogram ] [line 833] [def] [scope 834] [ngx_http_add_listen]
!1599 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1600, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1600 = metadata !{metadata !9, metadata !14, metadata !1326, metadata !1601}
!1601 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1602} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_listen_opt_t]
!1602 = metadata !{i32 786454, null, metadata !"ngx_http_listen_opt_t", metadata !6, i32 103, i64 0, i64 0, i64 0, i32 0, metadata !1603} ; [ DW_TAG_typedef ] [ngx_http_listen_opt_t] [line 103, size 0, align 0, offset 0] [from ]
!1603 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 56, i64 2112, i64 32, i32 0, i32 0, null, metadata !1604, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 56, size 2112, align 32, offset 0] [from ]
!1604 = metadata !{metadata !1605, metadata !1636, metadata !1637, metadata !1638, metadata !1639, metadata !1640, metadata !1641, metadata !1642, metadata !1643, metadata !1644, metadata !1645, metadata !1646, metadata !1647, metadata !1648, metadata !1649}
!1605 = metadata !{i32 786445, metadata !1603, metadata !"u", metadata !466, i32 67, i64 896, i64 32, i64 0, i32 0, metadata !1606} ; [ DW_TAG_member ] [u] [line 67, size 896, align 32, offset 0] [from ]
!1606 = metadata !{i32 786455, metadata !1603, metadata !"", metadata !466, i32 57, i64 896, i64 32, i64 0, i32 0, null, metadata !1607, i32 0, i32 0} ; [ DW_TAG_union_type ] [line 57, size 896, align 32, offset 0] [from ]
!1607 = metadata !{metadata !1608, metadata !1609, metadata !1623, metadata !1632}
!1608 = metadata !{i32 786445, metadata !1606, metadata !"sockaddr", metadata !466, i32 58, i64 128, i64 16, i64 0, i32 0, metadata !313} ; [ DW_TAG_member ] [sockaddr] [line 58, size 128, align 16, offset 0] [from sockaddr]
!1609 = metadata !{i32 786445, metadata !1606, metadata !"sockaddr_in", metadata !466, i32 59, i64 128, i64 32, i64 0, i32 0, metadata !1610} ; [ DW_TAG_member ] [sockaddr_in] [line 59, size 128, align 32, offset 0] [from sockaddr_in]
!1610 = metadata !{i32 786451, null, metadata !"sockaddr_in", metadata !1611, i32 225, i64 128, i64 32, i32 0, i32 0, null, metadata !1612, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr_in] [line 225, size 128, align 32, offset 0] [from ]
!1611 = metadata !{i32 786473, metadata !"/usr/include/netinet/in.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1612 = metadata !{metadata !1613, metadata !1614, metadata !1615, metadata !1619}
!1613 = metadata !{i32 786445, metadata !1610, metadata !"sin_family", metadata !1611, i32 227, i64 16, i64 16, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ] [sin_family] [line 227, size 16, align 16, offset 0] [from sa_family_t]
!1614 = metadata !{i32 786445, metadata !1610, metadata !"sin_port", metadata !1611, i32 228, i64 16, i64 16, i64 16, i32 0, metadata !946} ; [ DW_TAG_member ] [sin_port] [line 228, size 16, align 16, offset 16] [from in_port_t]
!1615 = metadata !{i32 786445, metadata !1610, metadata !"sin_addr", metadata !1611, i32 229, i64 32, i64 32, i64 32, i32 0, metadata !1616} ; [ DW_TAG_member ] [sin_addr] [line 229, size 32, align 32, offset 32] [from in_addr]
!1616 = metadata !{i32 786451, null, metadata !"in_addr", metadata !1611, i32 142, i64 32, i64 32, i32 0, i32 0, null, metadata !1617, i32 0, i32 0} ; [ DW_TAG_structure_type ] [in_addr] [line 142, size 32, align 32, offset 0] [from ]
!1617 = metadata !{metadata !1618}
!1618 = metadata !{i32 786445, metadata !1616, metadata !"s_addr", metadata !1611, i32 144, i64 32, i64 32, i64 0, i32 0, metadata !1055} ; [ DW_TAG_member ] [s_addr] [line 144, size 32, align 32, offset 0] [from in_addr_t]
!1619 = metadata !{i32 786445, metadata !1610, metadata !"sin_zero", metadata !1611, i32 232, i64 64, i64 8, i64 64, i32 0, metadata !1620} ; [ DW_TAG_member ] [sin_zero] [line 232, size 64, align 8, offset 64] [from ]
!1620 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 64, i64 8, i32 0, i32 0, metadata !51, metadata !1621, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 64, align 8, offset 0] [from unsigned char]
!1621 = metadata !{metadata !1622}
!1622 = metadata !{i32 786465, i64 0, i64 7}      ; [ DW_TAG_subrange_type ] [0, 7]
!1623 = metadata !{i32 786445, metadata !1606, metadata !"sockaddr_un", metadata !466, i32 64, i64 880, i64 16, i64 0, i32 0, metadata !1624} ; [ DW_TAG_member ] [sockaddr_un] [line 64, size 880, align 16, offset 0] [from sockaddr_un]
!1624 = metadata !{i32 786451, null, metadata !"sockaddr_un", metadata !1625, i32 30, i64 880, i64 16, i32 0, i32 0, null, metadata !1626, i32 0, i32 0} ; [ DW_TAG_structure_type ] [sockaddr_un] [line 30, size 880, align 16, offset 0] [from ]
!1625 = metadata !{i32 786473, metadata !"/usr/include/sys/un.h", metadata !"/home/tm/phase2/C-NGIN/src", null} ; [ DW_TAG_file_type ]
!1626 = metadata !{metadata !1627, metadata !1628}
!1627 = metadata !{i32 786445, metadata !1624, metadata !"sun_family", metadata !1625, i32 32, i64 16, i64 16, i64 0, i32 0, metadata !317} ; [ DW_TAG_member ] [sun_family] [line 32, size 16, align 16, offset 0] [from sa_family_t]
!1628 = metadata !{i32 786445, metadata !1624, metadata !"sun_path", metadata !1625, i32 33, i64 864, i64 8, i64 16, i32 0, metadata !1629} ; [ DW_TAG_member ] [sun_path] [line 33, size 864, align 8, offset 16] [from ]
!1629 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 864, i64 8, i32 0, i32 0, metadata !20, metadata !1630, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 864, align 8, offset 0] [from char]
!1630 = metadata !{metadata !1631}
!1631 = metadata !{i32 786465, i64 0, i64 107}    ; [ DW_TAG_subrange_type ] [0, 107]
!1632 = metadata !{i32 786445, metadata !1606, metadata !"sockaddr_data", metadata !466, i32 66, i64 880, i64 8, i64 0, i32 0, metadata !1633} ; [ DW_TAG_member ] [sockaddr_data] [line 66, size 880, align 8, offset 0] [from ]
!1633 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 880, i64 8, i32 0, i32 0, metadata !49, metadata !1634, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 880, align 8, offset 0] [from u_char]
!1634 = metadata !{metadata !1635}
!1635 = metadata !{i32 786465, i64 0, i64 109}    ; [ DW_TAG_subrange_type ] [0, 109]
!1636 = metadata !{i32 786445, metadata !1603, metadata !"socklen", metadata !466, i32 69, i64 32, i64 32, i64 896, i32 0, metadata !323} ; [ DW_TAG_member ] [socklen] [line 69, size 32, align 32, offset 896] [from socklen_t]
!1637 = metadata !{i32 786445, metadata !1603, metadata !"set", metadata !466, i32 71, i64 1, i64 32, i64 928, i32 0, metadata !32} ; [ DW_TAG_member ] [set] [line 71, size 1, align 32, offset 928] [from unsigned int]
!1638 = metadata !{i32 786445, metadata !1603, metadata !"default_server", metadata !466, i32 72, i64 1, i64 32, i64 929, i32 0, metadata !32} ; [ DW_TAG_member ] [default_server] [line 72, size 1, align 32, offset 929] [from unsigned int]
!1639 = metadata !{i32 786445, metadata !1603, metadata !"bind", metadata !466, i32 73, i64 1, i64 32, i64 930, i32 0, metadata !32} ; [ DW_TAG_member ] [bind] [line 73, size 1, align 32, offset 930] [from unsigned int]
!1640 = metadata !{i32 786445, metadata !1603, metadata !"wildcard", metadata !466, i32 74, i64 1, i64 32, i64 931, i32 0, metadata !32} ; [ DW_TAG_member ] [wildcard] [line 74, size 1, align 32, offset 931] [from unsigned int]
!1641 = metadata !{i32 786445, metadata !1603, metadata !"so_keepalive", metadata !466, i32 81, i64 2, i64 32, i64 932, i32 0, metadata !32} ; [ DW_TAG_member ] [so_keepalive] [line 81, size 2, align 32, offset 932] [from unsigned int]
!1642 = metadata !{i32 786445, metadata !1603, metadata !"backlog", metadata !466, i32 83, i64 32, i64 32, i64 960, i32 0, metadata !13} ; [ DW_TAG_member ] [backlog] [line 83, size 32, align 32, offset 960] [from int]
!1643 = metadata !{i32 786445, metadata !1603, metadata !"rcvbuf", metadata !466, i32 84, i64 32, i64 32, i64 992, i32 0, metadata !13} ; [ DW_TAG_member ] [rcvbuf] [line 84, size 32, align 32, offset 992] [from int]
!1644 = metadata !{i32 786445, metadata !1603, metadata !"sndbuf", metadata !466, i32 85, i64 32, i64 32, i64 1024, i32 0, metadata !13} ; [ DW_TAG_member ] [sndbuf] [line 85, size 32, align 32, offset 1024] [from int]
!1645 = metadata !{i32 786445, metadata !1603, metadata !"tcp_keepidle", metadata !466, i32 90, i64 32, i64 32, i64 1056, i32 0, metadata !13} ; [ DW_TAG_member ] [tcp_keepidle] [line 90, size 32, align 32, offset 1056] [from int]
!1646 = metadata !{i32 786445, metadata !1603, metadata !"tcp_keepintvl", metadata !466, i32 91, i64 32, i64 32, i64 1088, i32 0, metadata !13} ; [ DW_TAG_member ] [tcp_keepintvl] [line 91, size 32, align 32, offset 1088] [from int]
!1647 = metadata !{i32 786445, metadata !1603, metadata !"tcp_keepcnt", metadata !466, i32 92, i64 32, i64 32, i64 1120, i32 0, metadata !13} ; [ DW_TAG_member ] [tcp_keepcnt] [line 92, size 32, align 32, offset 1120] [from int]
!1648 = metadata !{i32 786445, metadata !1603, metadata !"deferred_accept", metadata !466, i32 99, i64 32, i64 32, i64 1152, i32 0, metadata !30} ; [ DW_TAG_member ] [deferred_accept] [line 99, size 32, align 32, offset 1152] [from ngx_uint_t]
!1649 = metadata !{i32 786445, metadata !1603, metadata !"addr", metadata !466, i32 102, i64 912, i64 8, i64 1184, i32 0, metadata !1650} ; [ DW_TAG_member ] [addr] [line 102, size 912, align 8, offset 1184] [from ]
!1650 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 912, i64 8, i32 0, i32 0, metadata !49, metadata !1651, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 912, align 8, offset 0] [from u_char]
!1651 = metadata !{metadata !1652}
!1652 = metadata !{i32 786465, i64 0, i64 113}    ; [ DW_TAG_subrange_type ] [0, 113]
!1653 = metadata !{metadata !1654}
!1654 = metadata !{metadata !1655, metadata !1656, metadata !1657, metadata !1658, metadata !1660, metadata !1661, metadata !1662, metadata !1664, metadata !1672}
!1655 = metadata !{i32 786689, metadata !1598, metadata !"cf", metadata !6, i32 16778049, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 833]
!1656 = metadata !{i32 786689, metadata !1598, metadata !"cscf", metadata !6, i32 33555265, metadata !1326, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cscf] [line 833]
!1657 = metadata !{i32 786689, metadata !1598, metadata !"lsopt", metadata !6, i32 50332481, metadata !1601, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lsopt] [line 833]
!1658 = metadata !{i32 786688, metadata !1659, metadata !"p", metadata !6, i32 835, metadata !946, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 835]
!1659 = metadata !{i32 786443, metadata !1598, i32 834, i32 0, metadata !6, i32 6} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1660 = metadata !{i32 786688, metadata !1659, metadata !"i", metadata !6, i32 836, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 836]
!1661 = metadata !{i32 786688, metadata !1659, metadata !"sa", metadata !6, i32 837, metadata !312, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sa] [line 837]
!1662 = metadata !{i32 786688, metadata !1659, metadata !"sin", metadata !6, i32 838, metadata !1663, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sin] [line 838]
!1663 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1610} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr_in]
!1664 = metadata !{i32 786688, metadata !1659, metadata !"port", metadata !6, i32 839, metadata !1665, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [port] [line 839]
!1665 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1666} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_port_t]
!1666 = metadata !{i32 786454, null, metadata !"ngx_http_conf_port_t", metadata !6, i32 250, i64 0, i64 0, i64 0, i32 0, metadata !1667} ; [ DW_TAG_typedef ] [ngx_http_conf_port_t] [line 250, size 0, align 0, offset 0] [from ]
!1667 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 246, i64 224, i64 32, i32 0, i32 0, null, metadata !1668, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 246, size 224, align 32, offset 0] [from ]
!1668 = metadata !{metadata !1669, metadata !1670, metadata !1671}
!1669 = metadata !{i32 786445, metadata !1667, metadata !"family", metadata !466, i32 247, i64 32, i64 32, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [family] [line 247, size 32, align 32, offset 0] [from ngx_int_t]
!1670 = metadata !{i32 786445, metadata !1667, metadata !"port", metadata !466, i32 248, i64 16, i64 16, i64 32, i32 0, metadata !946} ; [ DW_TAG_member ] [port] [line 248, size 16, align 16, offset 32] [from in_port_t]
!1671 = metadata !{i32 786445, metadata !1667, metadata !"addrs", metadata !466, i32 249, i64 160, i64 32, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [addrs] [line 249, size 160, align 32, offset 64] [from ngx_array_t]
!1672 = metadata !{i32 786688, metadata !1659, metadata !"cmcf", metadata !6, i32 840, metadata !1673, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 840]
!1673 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1674} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_core_main_conf_t]
!1674 = metadata !{i32 786454, null, metadata !"ngx_http_core_main_conf_t", metadata !6, i32 175, i64 0, i64 0, i64 0, i32 0, metadata !1675} ; [ DW_TAG_typedef ] [ngx_http_core_main_conf_t] [line 175, size 0, align 0, offset 0] [from ]
!1675 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 150, i64 2560, i64 32, i32 0, i32 0, null, metadata !1676, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 150, size 2560, align 32, offset 0] [from ]
!1676 = metadata !{metadata !1677, metadata !1678, metadata !1696, metadata !1697, metadata !1698, metadata !1699, metadata !1700, metadata !1701, metadata !1702, metadata !1703, metadata !1704, metadata !1718, metadata !1719, metadata !1720}
!1677 = metadata !{i32 786445, metadata !1675, metadata !"servers", metadata !466, i32 151, i64 160, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [servers] [line 151, size 160, align 32, offset 0] [from ngx_array_t]
!1678 = metadata !{i32 786445, metadata !1675, metadata !"phase_engine", metadata !466, i32 153, i64 96, i64 32, i64 160, i32 0, metadata !1679} ; [ DW_TAG_member ] [phase_engine] [line 153, size 96, align 32, offset 160] [from ngx_http_phase_engine_t]
!1679 = metadata !{i32 786454, null, metadata !"ngx_http_phase_engine_t", metadata !466, i32 142, i64 0, i64 0, i64 0, i32 0, metadata !1680} ; [ DW_TAG_typedef ] [ngx_http_phase_engine_t] [line 142, size 0, align 0, offset 0] [from ]
!1680 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 138, i64 96, i64 32, i32 0, i32 0, null, metadata !1681, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 138, size 96, align 32, offset 0] [from ]
!1681 = metadata !{metadata !1682, metadata !1694, metadata !1695}
!1682 = metadata !{i32 786445, metadata !1680, metadata !"handlers", metadata !466, i32 139, i64 32, i64 32, i64 0, i32 0, metadata !1683} ; [ DW_TAG_member ] [handlers] [line 139, size 32, align 32, offset 0] [from ]
!1683 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1684} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_phase_handler_t]
!1684 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_t", metadata !466, i32 126, i64 0, i64 0, i64 0, i32 0, metadata !1685} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_t] [line 126, size 0, align 0, offset 0] [from ngx_http_phase_handler_s]
!1685 = metadata !{i32 786451, null, metadata !"ngx_http_phase_handler_s", metadata !466, i32 131, i64 96, i64 32, i32 0, i32 0, null, metadata !1686, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_http_phase_handler_s] [line 131, size 96, align 32, offset 0] [from ]
!1686 = metadata !{metadata !1687, metadata !1692, metadata !1693}
!1687 = metadata !{i32 786445, metadata !1685, metadata !"checker", metadata !466, i32 132, i64 32, i64 32, i64 0, i32 0, metadata !1688} ; [ DW_TAG_member ] [checker] [line 132, size 32, align 32, offset 0] [from ngx_http_phase_handler_pt]
!1688 = metadata !{i32 786454, null, metadata !"ngx_http_phase_handler_pt", metadata !466, i32 128, i64 0, i64 0, i64 0, i32 0, metadata !1689} ; [ DW_TAG_typedef ] [ngx_http_phase_handler_pt] [line 128, size 0, align 0, offset 0] [from ]
!1689 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1690} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1690 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1691, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1691 = metadata !{metadata !9, metadata !549, metadata !1683}
!1692 = metadata !{i32 786445, metadata !1685, metadata !"handler", metadata !466, i32 133, i64 32, i64 32, i64 32, i32 0, metadata !545} ; [ DW_TAG_member ] [handler] [line 133, size 32, align 32, offset 32] [from ngx_http_handler_pt]
!1693 = metadata !{i32 786445, metadata !1685, metadata !"next", metadata !466, i32 134, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [next] [line 134, size 32, align 32, offset 64] [from ngx_uint_t]
!1694 = metadata !{i32 786445, metadata !1680, metadata !"server_rewrite_index", metadata !466, i32 140, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [server_rewrite_index] [line 140, size 32, align 32, offset 32] [from ngx_uint_t]
!1695 = metadata !{i32 786445, metadata !1680, metadata !"location_rewrite_index", metadata !466, i32 141, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [location_rewrite_index] [line 141, size 32, align 32, offset 64] [from ngx_uint_t]
!1696 = metadata !{i32 786445, metadata !1675, metadata !"headers_in_hash", metadata !466, i32 155, i64 64, i64 32, i64 256, i32 0, metadata !974} ; [ DW_TAG_member ] [headers_in_hash] [line 155, size 64, align 32, offset 256] [from ngx_hash_t]
!1697 = metadata !{i32 786445, metadata !1675, metadata !"variables_hash", metadata !466, i32 157, i64 64, i64 32, i64 320, i32 0, metadata !974} ; [ DW_TAG_member ] [variables_hash] [line 157, size 64, align 32, offset 320] [from ngx_hash_t]
!1698 = metadata !{i32 786445, metadata !1675, metadata !"variables", metadata !466, i32 159, i64 160, i64 32, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [variables] [line 159, size 160, align 32, offset 384] [from ngx_array_t]
!1699 = metadata !{i32 786445, metadata !1675, metadata !"ncaptures", metadata !466, i32 160, i64 32, i64 32, i64 544, i32 0, metadata !30} ; [ DW_TAG_member ] [ncaptures] [line 160, size 32, align 32, offset 544] [from ngx_uint_t]
!1700 = metadata !{i32 786445, metadata !1675, metadata !"server_names_hash_max_size", metadata !466, i32 162, i64 32, i64 32, i64 576, i32 0, metadata !30} ; [ DW_TAG_member ] [server_names_hash_max_size] [line 162, size 32, align 32, offset 576] [from ngx_uint_t]
!1701 = metadata !{i32 786445, metadata !1675, metadata !"server_names_hash_bucket_size", metadata !466, i32 163, i64 32, i64 32, i64 608, i32 0, metadata !30} ; [ DW_TAG_member ] [server_names_hash_bucket_size] [line 163, size 32, align 32, offset 608] [from ngx_uint_t]
!1702 = metadata !{i32 786445, metadata !1675, metadata !"variables_hash_max_size", metadata !466, i32 165, i64 32, i64 32, i64 640, i32 0, metadata !30} ; [ DW_TAG_member ] [variables_hash_max_size] [line 165, size 32, align 32, offset 640] [from ngx_uint_t]
!1703 = metadata !{i32 786445, metadata !1675, metadata !"variables_hash_bucket_size", metadata !466, i32 166, i64 32, i64 32, i64 672, i32 0, metadata !30} ; [ DW_TAG_member ] [variables_hash_bucket_size] [line 166, size 32, align 32, offset 672] [from ngx_uint_t]
!1704 = metadata !{i32 786445, metadata !1675, metadata !"variables_keys", metadata !466, i32 168, i64 32, i64 32, i64 704, i32 0, metadata !1705} ; [ DW_TAG_member ] [variables_keys] [line 168, size 32, align 32, offset 704] [from ]
!1705 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1706} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_keys_arrays_t]
!1706 = metadata !{i32 786454, null, metadata !"ngx_hash_keys_arrays_t", metadata !466, i32 89, i64 0, i64 0, i64 0, i32 0, metadata !1707} ; [ DW_TAG_typedef ] [ngx_hash_keys_arrays_t] [line 89, size 0, align 0, offset 0] [from ]
!1707 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 75, i64 672, i64 32, i32 0, i32 0, null, metadata !1708, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 75, size 672, align 32, offset 0] [from ]
!1708 = metadata !{metadata !1709, metadata !1710, metadata !1711, metadata !1712, metadata !1713, metadata !1714, metadata !1715, metadata !1716, metadata !1717}
!1709 = metadata !{i32 786445, metadata !1707, metadata !"hsize", metadata !976, i32 76, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [hsize] [line 76, size 32, align 32, offset 0] [from ngx_uint_t]
!1710 = metadata !{i32 786445, metadata !1707, metadata !"pool", metadata !976, i32 78, i64 32, i64 32, i64 32, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 78, size 32, align 32, offset 32] [from ]
!1711 = metadata !{i32 786445, metadata !1707, metadata !"temp_pool", metadata !976, i32 79, i64 32, i64 32, i64 64, i32 0, metadata !38} ; [ DW_TAG_member ] [temp_pool] [line 79, size 32, align 32, offset 64] [from ]
!1712 = metadata !{i32 786445, metadata !1707, metadata !"keys", metadata !976, i32 81, i64 160, i64 32, i64 96, i32 0, metadata !23} ; [ DW_TAG_member ] [keys] [line 81, size 160, align 32, offset 96] [from ngx_array_t]
!1713 = metadata !{i32 786445, metadata !1707, metadata !"keys_hash", metadata !976, i32 82, i64 32, i64 32, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [keys_hash] [line 82, size 32, align 32, offset 256] [from ]
!1714 = metadata !{i32 786445, metadata !1707, metadata !"dns_wc_head", metadata !976, i32 84, i64 160, i64 32, i64 288, i32 0, metadata !23} ; [ DW_TAG_member ] [dns_wc_head] [line 84, size 160, align 32, offset 288] [from ngx_array_t]
!1715 = metadata !{i32 786445, metadata !1707, metadata !"dns_wc_head_hash", metadata !976, i32 85, i64 32, i64 32, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [dns_wc_head_hash] [line 85, size 32, align 32, offset 448] [from ]
!1716 = metadata !{i32 786445, metadata !1707, metadata !"dns_wc_tail", metadata !976, i32 87, i64 160, i64 32, i64 480, i32 0, metadata !23} ; [ DW_TAG_member ] [dns_wc_tail] [line 87, size 160, align 32, offset 480] [from ngx_array_t]
!1717 = metadata !{i32 786445, metadata !1707, metadata !"dns_wc_tail_hash", metadata !976, i32 88, i64 32, i64 32, i64 640, i32 0, metadata !22} ; [ DW_TAG_member ] [dns_wc_tail_hash] [line 88, size 32, align 32, offset 640] [from ]
!1718 = metadata !{i32 786445, metadata !1675, metadata !"ports", metadata !466, i32 170, i64 32, i64 32, i64 736, i32 0, metadata !22} ; [ DW_TAG_member ] [ports] [line 170, size 32, align 32, offset 736] [from ]
!1719 = metadata !{i32 786445, metadata !1675, metadata !"try_files", metadata !466, i32 172, i64 32, i64 32, i64 768, i32 0, metadata !30} ; [ DW_TAG_member ] [try_files] [line 172, size 32, align 32, offset 768] [from ngx_uint_t]
!1720 = metadata !{i32 786445, metadata !1675, metadata !"phases", metadata !466, i32 174, i64 1760, i64 32, i64 800, i32 0, metadata !1721} ; [ DW_TAG_member ] [phases] [line 174, size 1760, align 32, offset 800] [from ]
!1721 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1760, i64 32, i32 0, i32 0, metadata !1722, metadata !1726, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 1760, align 32, offset 0] [from ngx_http_phase_t]
!1722 = metadata !{i32 786454, null, metadata !"ngx_http_phase_t", metadata !466, i32 147, i64 0, i64 0, i64 0, i32 0, metadata !1723} ; [ DW_TAG_typedef ] [ngx_http_phase_t] [line 147, size 0, align 0, offset 0] [from ]
!1723 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 145, i64 160, i64 32, i32 0, i32 0, null, metadata !1724, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 145, size 160, align 32, offset 0] [from ]
!1724 = metadata !{metadata !1725}
!1725 = metadata !{i32 786445, metadata !1723, metadata !"handlers", metadata !466, i32 146, i64 160, i64 32, i64 0, i32 0, metadata !23} ; [ DW_TAG_member ] [handlers] [line 146, size 160, align 32, offset 0] [from ngx_array_t]
!1726 = metadata !{metadata !1727}
!1727 = metadata !{i32 786465, i64 0, i64 10}     ; [ DW_TAG_subrange_type ] [0, 10]
!1728 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_types_slot", metadata !"ngx_http_types_slot", metadata !"", metadata !6, i32 1346, metadata !449, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_types_slot, null, null, metadata !1729, i32 1347} ; [ DW_TAG_subprogram ] [line 1346] [def] [scope 1347] [ngx_http_types_slot]
!1729 = metadata !{metadata !1730}
!1730 = metadata !{metadata !1731, metadata !1732, metadata !1733, metadata !1734, metadata !1736, metadata !1738, metadata !1739, metadata !1740, metadata !1741, metadata !1742, metadata !1743, metadata !1751, metadata !1757}
!1731 = metadata !{i32 786689, metadata !1728, metadata !"cf", metadata !6, i32 16778562, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1346]
!1732 = metadata !{i32 786689, metadata !1728, metadata !"cmd", metadata !6, i32 33555778, metadata !451, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 1346]
!1733 = metadata !{i32 786689, metadata !1728, metadata !"conf", metadata !6, i32 50332994, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 1346]
!1734 = metadata !{i32 786688, metadata !1735, metadata !"p", metadata !6, i32 1348, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1348]
!1735 = metadata !{i32 786443, metadata !1728, i32 1347, i32 0, metadata !6, i32 16} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1736 = metadata !{i32 786688, metadata !1735, metadata !"types", metadata !6, i32 1349, metadata !1737, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [types] [line 1349]
!1737 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1738 = metadata !{i32 786688, metadata !1735, metadata !"value", metadata !6, i32 1350, metadata !779, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [value] [line 1350]
!1739 = metadata !{i32 786688, metadata !1735, metadata !"default_type", metadata !6, i32 1351, metadata !779, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_type] [line 1351]
!1740 = metadata !{i32 786688, metadata !1735, metadata !"i", metadata !6, i32 1352, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1352]
!1741 = metadata !{i32 786688, metadata !1735, metadata !"n", metadata !6, i32 1353, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1353]
!1742 = metadata !{i32 786688, metadata !1735, metadata !"hash", metadata !6, i32 1354, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 1354]
!1743 = metadata !{i32 786688, metadata !1735, metadata !"type", metadata !6, i32 1355, metadata !1744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 1355]
!1744 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1745} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_key_t]
!1745 = metadata !{i32 786454, null, metadata !"ngx_hash_key_t", metadata !6, i32 39, i64 0, i64 0, i64 0, i32 0, metadata !1746} ; [ DW_TAG_typedef ] [ngx_hash_key_t] [line 39, size 0, align 0, offset 0] [from ]
!1746 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 35, i64 128, i64 32, i32 0, i32 0, null, metadata !1747, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 35, size 128, align 32, offset 0] [from ]
!1747 = metadata !{metadata !1748, metadata !1749, metadata !1750}
!1748 = metadata !{i32 786445, metadata !1746, metadata !"key", metadata !976, i32 36, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [key] [line 36, size 64, align 32, offset 0] [from ngx_str_t]
!1749 = metadata !{i32 786445, metadata !1746, metadata !"key_hash", metadata !976, i32 37, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [key_hash] [line 37, size 32, align 32, offset 64] [from ngx_uint_t]
!1750 = metadata !{i32 786445, metadata !1746, metadata !"value", metadata !976, i32 38, i64 32, i64 32, i64 96, i32 0, metadata !28} ; [ DW_TAG_member ] [value] [line 38, size 32, align 32, offset 96] [from ]
!1751 = metadata !{i32 786688, metadata !1752, metadata !"__s1_len", metadata !6, i32 1386, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 1386]
!1752 = metadata !{i32 786443, metadata !1753, i32 1386, i32 0, metadata !6, i32 27} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1753 = metadata !{i32 786443, metadata !1754, i32 1385, i32 0, metadata !6, i32 26} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1754 = metadata !{i32 786443, metadata !1755, i32 1385, i32 0, metadata !6, i32 25} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1755 = metadata !{i32 786443, metadata !1756, i32 1377, i32 0, metadata !6, i32 23} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1756 = metadata !{i32 786443, metadata !1735, i32 1377, i32 0, metadata !6, i32 22} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1757 = metadata !{i32 786688, metadata !1752, metadata !"__s2_len", metadata !6, i32 1386, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 1386]
!1758 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_merge_types", metadata !"ngx_http_merge_types", metadata !"", metadata !6, i32 1402, metadata !1759, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_array_s**, %struct.ngx_hash_t*, %struct.ngx_array_s**, %struct.ngx_hash_t*, %struct.ngx_str_t*)* @ngx_http_merge_types, null, null, metadata !1762, i32 1403} ; [ DW_TAG_subprogram ] [line 1402] [def] [scope 1403] [ngx_http_merge_types]
!1759 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1760, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1760 = metadata !{metadata !19, metadata !14, metadata !1737, metadata !1761, metadata !1737, metadata !1761, metadata !779}
!1761 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !974} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_hash_t]
!1762 = metadata !{metadata !1763}
!1763 = metadata !{metadata !1764, metadata !1765, metadata !1766, metadata !1767, metadata !1768, metadata !1769, metadata !1770}
!1764 = metadata !{i32 786689, metadata !1758, metadata !"cf", metadata !6, i32 16778618, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1402]
!1765 = metadata !{i32 786689, metadata !1758, metadata !"keys", metadata !6, i32 33555834, metadata !1737, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [keys] [line 1402]
!1766 = metadata !{i32 786689, metadata !1758, metadata !"types_hash", metadata !6, i32 50333050, metadata !1761, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [types_hash] [line 1402]
!1767 = metadata !{i32 786689, metadata !1758, metadata !"prev_keys", metadata !6, i32 67110266, metadata !1737, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prev_keys] [line 1402]
!1768 = metadata !{i32 786689, metadata !1758, metadata !"prev_types_hash", metadata !6, i32 83887482, metadata !1761, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prev_types_hash] [line 1402]
!1769 = metadata !{i32 786689, metadata !1758, metadata !"default_types", metadata !6, i32 100664698, metadata !779, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [default_types] [line 1402]
!1770 = metadata !{i32 786688, metadata !1771, metadata !"hash", metadata !6, i32 1404, metadata !1772, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 1404]
!1771 = metadata !{i32 786443, metadata !1758, i32 1403, i32 0, metadata !6, i32 30} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1772 = metadata !{i32 786454, null, metadata !"ngx_hash_init_t", metadata !6, i32 62, i64 0, i64 0, i64 0, i32 0, metadata !1773} ; [ DW_TAG_typedef ] [ngx_hash_init_t] [line 62, size 0, align 0, offset 0] [from ]
!1773 = metadata !{i32 786451, null, metadata !"", metadata !976, i32 52, i64 224, i64 32, i32 0, i32 0, null, metadata !1774, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 52, size 224, align 32, offset 0] [from ]
!1774 = metadata !{metadata !1775, metadata !1776, metadata !1781, metadata !1782, metadata !1783, metadata !1784, metadata !1785}
!1775 = metadata !{i32 786445, metadata !1773, metadata !"hash", metadata !976, i32 53, i64 32, i64 32, i64 0, i32 0, metadata !1761} ; [ DW_TAG_member ] [hash] [line 53, size 32, align 32, offset 0] [from ]
!1776 = metadata !{i32 786445, metadata !1773, metadata !"key", metadata !976, i32 54, i64 32, i64 32, i64 32, i32 0, metadata !1777} ; [ DW_TAG_member ] [key] [line 54, size 32, align 32, offset 32] [from ngx_hash_key_pt]
!1777 = metadata !{i32 786454, null, metadata !"ngx_hash_key_pt", metadata !976, i32 42, i64 0, i64 0, i64 0, i32 0, metadata !1778} ; [ DW_TAG_typedef ] [ngx_hash_key_pt] [line 42, size 0, align 0, offset 0] [from ]
!1778 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1779} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1779 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1780, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1780 = metadata !{metadata !30, metadata !48, metadata !34}
!1781 = metadata !{i32 786445, metadata !1773, metadata !"max_size", metadata !976, i32 56, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [max_size] [line 56, size 32, align 32, offset 64] [from ngx_uint_t]
!1782 = metadata !{i32 786445, metadata !1773, metadata !"bucket_size", metadata !976, i32 57, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [bucket_size] [line 57, size 32, align 32, offset 96] [from ngx_uint_t]
!1783 = metadata !{i32 786445, metadata !1773, metadata !"name", metadata !976, i32 59, i64 32, i64 32, i64 128, i32 0, metadata !19} ; [ DW_TAG_member ] [name] [line 59, size 32, align 32, offset 128] [from ]
!1784 = metadata !{i32 786445, metadata !1773, metadata !"pool", metadata !976, i32 60, i64 32, i64 32, i64 160, i32 0, metadata !38} ; [ DW_TAG_member ] [pool] [line 60, size 32, align 32, offset 160] [from ]
!1785 = metadata !{i32 786445, metadata !1773, metadata !"temp_pool", metadata !976, i32 61, i64 32, i64 32, i64 192, i32 0, metadata !38} ; [ DW_TAG_member ] [temp_pool] [line 61, size 32, align 32, offset 192] [from ]
!1786 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_set_default_types", metadata !"ngx_http_set_default_types", metadata !"", metadata !6, i32 1446, metadata !1787, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*, %struct.ngx_array_s**, %struct.ngx_str_t*)* @ngx_http_set_default_types, null, null, metadata !1789, i32 1447} ; [ DW_TAG_subprogram ] [line 1446] [def] [scope 1447] [ngx_http_set_default_types]
!1787 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1788, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1788 = metadata !{metadata !9, metadata !14, metadata !1737, metadata !779}
!1789 = metadata !{metadata !1790}
!1790 = metadata !{metadata !1791, metadata !1792, metadata !1793, metadata !1794}
!1791 = metadata !{i32 786689, metadata !1786, metadata !"cf", metadata !6, i32 16778662, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1446]
!1792 = metadata !{i32 786689, metadata !1786, metadata !"types", metadata !6, i32 33555878, metadata !1737, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [types] [line 1446]
!1793 = metadata !{i32 786689, metadata !1786, metadata !"default_type", metadata !6, i32 50333094, metadata !779, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [default_type] [line 1446]
!1794 = metadata !{i32 786688, metadata !1795, metadata !"type", metadata !6, i32 1448, metadata !1744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 1448]
!1795 = metadata !{i32 786443, metadata !1786, i32 1447, i32 0, metadata !6, i32 39} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1796 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_address", metadata !"ngx_http_add_address", metadata !"", metadata !6, i32 969, metadata !1797, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1799, i32 970} ; [ DW_TAG_subprogram ] [line 969] [local] [def] [scope 970] [ngx_http_add_address]
!1797 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1798, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1798 = metadata !{metadata !9, metadata !14, metadata !1326, metadata !1665, metadata !1601}
!1799 = metadata !{metadata !1800}
!1800 = metadata !{metadata !1801, metadata !1802, metadata !1803, metadata !1804, metadata !1805}
!1801 = metadata !{i32 786689, metadata !1796, metadata !"cf", metadata !6, i32 16778185, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 969]
!1802 = metadata !{i32 786689, metadata !1796, metadata !"cscf", metadata !6, i32 33555401, metadata !1326, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cscf] [line 969]
!1803 = metadata !{i32 786689, metadata !1796, metadata !"port", metadata !6, i32 50332617, metadata !1665, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [port] [line 969]
!1804 = metadata !{i32 786689, metadata !1796, metadata !"lsopt", metadata !6, i32 67109833, metadata !1601, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lsopt] [line 969]
!1805 = metadata !{i32 786688, metadata !1806, metadata !"addr", metadata !6, i32 971, metadata !1807, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addr] [line 971]
!1806 = metadata !{i32 786443, metadata !1796, i32 970, i32 0, metadata !6, i32 43} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1807 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1808} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_conf_addr_t]
!1808 = metadata !{i32 786454, null, metadata !"ngx_http_conf_addr_t", metadata !6, i32 268, i64 0, i64 0, i64 0, i32 0, metadata !1809} ; [ DW_TAG_typedef ] [ngx_http_conf_addr_t] [line 268, size 0, align 0, offset 0] [from ]
!1809 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 253, i64 2496, i64 32, i32 0, i32 0, null, metadata !1810, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 253, size 2496, align 32, offset 0] [from ]
!1810 = metadata !{metadata !1811, metadata !1812, metadata !1813, metadata !1814, metadata !1815, metadata !1816, metadata !1817, metadata !1818}
!1811 = metadata !{i32 786445, metadata !1809, metadata !"opt", metadata !466, i32 254, i64 2112, i64 32, i64 0, i32 0, metadata !1602} ; [ DW_TAG_member ] [opt] [line 254, size 2112, align 32, offset 0] [from ngx_http_listen_opt_t]
!1812 = metadata !{i32 786445, metadata !1809, metadata !"hash", metadata !466, i32 256, i64 64, i64 32, i64 2112, i32 0, metadata !974} ; [ DW_TAG_member ] [hash] [line 256, size 64, align 32, offset 2112] [from ngx_hash_t]
!1813 = metadata !{i32 786445, metadata !1809, metadata !"wc_head", metadata !466, i32 257, i64 32, i64 32, i64 2176, i32 0, metadata !1311} ; [ DW_TAG_member ] [wc_head] [line 257, size 32, align 32, offset 2176] [from ]
!1814 = metadata !{i32 786445, metadata !1809, metadata !"wc_tail", metadata !466, i32 258, i64 32, i64 32, i64 2208, i32 0, metadata !1311} ; [ DW_TAG_member ] [wc_tail] [line 258, size 32, align 32, offset 2208] [from ]
!1815 = metadata !{i32 786445, metadata !1809, metadata !"nregex", metadata !466, i32 261, i64 32, i64 32, i64 2240, i32 0, metadata !30} ; [ DW_TAG_member ] [nregex] [line 261, size 32, align 32, offset 2240] [from ngx_uint_t]
!1816 = metadata !{i32 786445, metadata !1809, metadata !"regex", metadata !466, i32 262, i64 32, i64 32, i64 2272, i32 0, metadata !1320} ; [ DW_TAG_member ] [regex] [line 262, size 32, align 32, offset 2272] [from ]
!1817 = metadata !{i32 786445, metadata !1809, metadata !"default_server", metadata !466, i32 266, i64 32, i64 32, i64 2304, i32 0, metadata !1326} ; [ DW_TAG_member ] [default_server] [line 266, size 32, align 32, offset 2304] [from ]
!1818 = metadata !{i32 786445, metadata !1809, metadata !"servers", metadata !466, i32 267, i64 160, i64 32, i64 2336, i32 0, metadata !23} ; [ DW_TAG_member ] [servers] [line 267, size 160, align 32, offset 2336] [from ngx_array_t]
!1819 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_server", metadata !"ngx_http_add_server", metadata !"", metadata !6, i32 996, metadata !1820, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*, %struct.ngx_http_core_srv_conf_t*, %struct.ngx_http_conf_addr_t*)* @ngx_http_add_server, null, null, metadata !1822, i32 997} ; [ DW_TAG_subprogram ] [line 996] [local] [def] [scope 997] [ngx_http_add_server]
!1820 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1821, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1821 = metadata !{metadata !9, metadata !14, metadata !1326, metadata !1807}
!1822 = metadata !{metadata !1823}
!1823 = metadata !{metadata !1824, metadata !1825, metadata !1826, metadata !1827, metadata !1829}
!1824 = metadata !{i32 786689, metadata !1819, metadata !"cf", metadata !6, i32 16778212, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 996]
!1825 = metadata !{i32 786689, metadata !1819, metadata !"cscf", metadata !6, i32 33555428, metadata !1326, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cscf] [line 996]
!1826 = metadata !{i32 786689, metadata !1819, metadata !"addr", metadata !6, i32 50332644, metadata !1807, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 996]
!1827 = metadata !{i32 786688, metadata !1828, metadata !"i", metadata !6, i32 998, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 998]
!1828 = metadata !{i32 786443, metadata !1819, i32 997, i32 0, metadata !6, i32 47} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1829 = metadata !{i32 786688, metadata !1828, metadata !"server", metadata !6, i32 999, metadata !1830, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [server] [line 999]
!1830 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1326} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1831 = metadata !{i32 786478, i32 0, metadata !25, metadata !"ngx_array_init", metadata !"ngx_array_init", metadata !"", metadata !25, i32 32, metadata !1832, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1834, i32 33} ; [ DW_TAG_subprogram ] [line 32] [local] [def] [scope 33] [ngx_array_init]
!1832 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1833, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1833 = metadata !{metadata !9, metadata !22, metadata !38, metadata !30, metadata !34}
!1834 = metadata !{metadata !1835}
!1835 = metadata !{metadata !1836, metadata !1837, metadata !1838, metadata !1839}
!1836 = metadata !{i32 786689, metadata !1831, metadata !"array", metadata !25, i32 16777248, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array] [line 32]
!1837 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!1838 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 32]
!1839 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!1840 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_addresses", metadata !"ngx_http_add_addresses", metadata !"", metadata !6, i32 888, metadata !1797, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1841, i32 889} ; [ DW_TAG_subprogram ] [line 888] [local] [def] [scope 889] [ngx_http_add_addresses]
!1841 = metadata !{metadata !1842}
!1842 = metadata !{metadata !1843, metadata !1844, metadata !1845, metadata !1846, metadata !1847, metadata !1849, metadata !1850, metadata !1851, metadata !1852, metadata !1853, metadata !1854, metadata !1855}
!1843 = metadata !{i32 786689, metadata !1840, metadata !"cf", metadata !6, i32 16778104, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 888]
!1844 = metadata !{i32 786689, metadata !1840, metadata !"cscf", metadata !6, i32 33555320, metadata !1326, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cscf] [line 888]
!1845 = metadata !{i32 786689, metadata !1840, metadata !"port", metadata !6, i32 50332536, metadata !1665, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [port] [line 888]
!1846 = metadata !{i32 786689, metadata !1840, metadata !"lsopt", metadata !6, i32 67109752, metadata !1601, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lsopt] [line 888]
!1847 = metadata !{i32 786688, metadata !1848, metadata !"p", metadata !6, i32 890, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 890]
!1848 = metadata !{i32 786443, metadata !1840, i32 889, i32 0, metadata !6, i32 57} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1849 = metadata !{i32 786688, metadata !1848, metadata !"len", metadata !6, i32 891, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 891]
!1850 = metadata !{i32 786688, metadata !1848, metadata !"off", metadata !6, i32 892, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 892]
!1851 = metadata !{i32 786688, metadata !1848, metadata !"i", metadata !6, i32 893, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 893]
!1852 = metadata !{i32 786688, metadata !1848, metadata !"default_server", metadata !6, i32 894, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [default_server] [line 894]
!1853 = metadata !{i32 786688, metadata !1848, metadata !"sa", metadata !6, i32 895, metadata !312, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sa] [line 895]
!1854 = metadata !{i32 786688, metadata !1848, metadata !"addr", metadata !6, i32 896, metadata !1807, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addr] [line 896]
!1855 = metadata !{i32 786688, metadata !1848, metadata !"saun", metadata !6, i32 898, metadata !1856, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [saun] [line 898]
!1856 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1624} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from sockaddr_un]
!1857 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_block", metadata !"ngx_http_block", metadata !"", metadata !6, i32 50, metadata !449, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_command_s*, i8*)* @ngx_http_block, null, null, metadata !1858, i32 51} ; [ DW_TAG_subprogram ] [line 50] [local] [def] [scope 51] [ngx_http_block]
!1858 = metadata !{metadata !1859}
!1859 = metadata !{metadata !1860, metadata !1861, metadata !1862, metadata !1863, metadata !1865, metadata !1866, metadata !1867, metadata !1868, metadata !1869, metadata !1894, metadata !1895, metadata !1896, metadata !1897}
!1860 = metadata !{i32 786689, metadata !1857, metadata !"cf", metadata !6, i32 16777266, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 50]
!1861 = metadata !{i32 786689, metadata !1857, metadata !"cmd", metadata !6, i32 33554482, metadata !451, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmd] [line 50]
!1862 = metadata !{i32 786689, metadata !1857, metadata !"conf", metadata !6, i32 50331698, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [conf] [line 50]
!1863 = metadata !{i32 786688, metadata !1864, metadata !"rv", metadata !6, i32 52, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rv] [line 52]
!1864 = metadata !{i32 786443, metadata !1857, i32 51, i32 0, metadata !6, i32 69} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1865 = metadata !{i32 786688, metadata !1864, metadata !"mi", metadata !6, i32 53, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mi] [line 53]
!1866 = metadata !{i32 786688, metadata !1864, metadata !"m", metadata !6, i32 54, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 54]
!1867 = metadata !{i32 786688, metadata !1864, metadata !"s", metadata !6, i32 55, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 55]
!1868 = metadata !{i32 786688, metadata !1864, metadata !"pcf", metadata !6, i32 56, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pcf] [line 56]
!1869 = metadata !{i32 786688, metadata !1864, metadata !"module", metadata !6, i32 57, metadata !1870, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [module] [line 57]
!1870 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1871} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_module_t]
!1871 = metadata !{i32 786454, null, metadata !"ngx_http_module_t", metadata !6, i32 36, i64 0, i64 0, i64 0, i32 0, metadata !1872} ; [ DW_TAG_typedef ] [ngx_http_module_t] [line 36, size 0, align 0, offset 0] [from ]
!1872 = metadata !{i32 786451, null, metadata !"", metadata !1335, i32 24, i64 256, i64 32, i32 0, i32 0, null, metadata !1873, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 24, size 256, align 32, offset 0] [from ]
!1873 = metadata !{metadata !1874, metadata !1878, metadata !1879, metadata !1883, metadata !1887, metadata !1888, metadata !1892, metadata !1893}
!1874 = metadata !{i32 786445, metadata !1872, metadata !"preconfiguration", metadata !1335, i32 25, i64 32, i64 32, i64 0, i32 0, metadata !1875} ; [ DW_TAG_member ] [preconfiguration] [line 25, size 32, align 32, offset 0] [from ]
!1875 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1876} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1876 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1877, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1877 = metadata !{metadata !9, metadata !14}
!1878 = metadata !{i32 786445, metadata !1872, metadata !"postconfiguration", metadata !1335, i32 26, i64 32, i64 32, i64 32, i32 0, metadata !1875} ; [ DW_TAG_member ] [postconfiguration] [line 26, size 32, align 32, offset 32] [from ]
!1879 = metadata !{i32 786445, metadata !1872, metadata !"create_main_conf", metadata !1335, i32 28, i64 32, i64 32, i64 64, i32 0, metadata !1880} ; [ DW_TAG_member ] [create_main_conf] [line 28, size 32, align 32, offset 64] [from ]
!1880 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1881} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1881 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1882, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1882 = metadata !{metadata !28, metadata !14}
!1883 = metadata !{i32 786445, metadata !1872, metadata !"init_main_conf", metadata !1335, i32 29, i64 32, i64 32, i64 96, i32 0, metadata !1884} ; [ DW_TAG_member ] [init_main_conf] [line 29, size 32, align 32, offset 96] [from ]
!1884 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1885} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1885 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1886, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1886 = metadata !{metadata !19, metadata !14, metadata !28}
!1887 = metadata !{i32 786445, metadata !1872, metadata !"create_srv_conf", metadata !1335, i32 31, i64 32, i64 32, i64 128, i32 0, metadata !1880} ; [ DW_TAG_member ] [create_srv_conf] [line 31, size 32, align 32, offset 128] [from ]
!1888 = metadata !{i32 786445, metadata !1872, metadata !"merge_srv_conf", metadata !1335, i32 32, i64 32, i64 32, i64 160, i32 0, metadata !1889} ; [ DW_TAG_member ] [merge_srv_conf] [line 32, size 32, align 32, offset 160] [from ]
!1889 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1890} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1890 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1891, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1891 = metadata !{metadata !19, metadata !14, metadata !28, metadata !28}
!1892 = metadata !{i32 786445, metadata !1872, metadata !"create_loc_conf", metadata !1335, i32 34, i64 32, i64 32, i64 192, i32 0, metadata !1880} ; [ DW_TAG_member ] [create_loc_conf] [line 34, size 32, align 32, offset 192] [from ]
!1893 = metadata !{i32 786445, metadata !1872, metadata !"merge_loc_conf", metadata !1335, i32 35, i64 32, i64 32, i64 224, i32 0, metadata !1889} ; [ DW_TAG_member ] [merge_loc_conf] [line 35, size 32, align 32, offset 224] [from ]
!1894 = metadata !{i32 786688, metadata !1864, metadata !"ctx", metadata !6, i32 58, metadata !1332, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 58]
!1895 = metadata !{i32 786688, metadata !1864, metadata !"clcf", metadata !6, i32 59, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 59]
!1896 = metadata !{i32 786688, metadata !1864, metadata !"cscfp", metadata !6, i32 60, metadata !1830, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cscfp] [line 60]
!1897 = metadata !{i32 786688, metadata !1864, metadata !"cmcf", metadata !6, i32 61, metadata !1673, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cmcf] [line 61]
!1898 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_optimize_servers", metadata !"ngx_http_optimize_servers", metadata !"", metadata !6, i32 1022, metadata !1899, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1901, i32 1023} ; [ DW_TAG_subprogram ] [line 1022] [local] [def] [scope 1023] [ngx_http_optimize_servers]
!1899 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1900, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1900 = metadata !{metadata !9, metadata !14, metadata !1673, metadata !22}
!1901 = metadata !{metadata !1902}
!1902 = metadata !{metadata !1903, metadata !1904, metadata !1905, metadata !1906, metadata !1908, metadata !1909, metadata !1910}
!1903 = metadata !{i32 786689, metadata !1898, metadata !"cf", metadata !6, i32 16778238, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1022]
!1904 = metadata !{i32 786689, metadata !1898, metadata !"cmcf", metadata !6, i32 33555454, metadata !1673, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmcf] [line 1022]
!1905 = metadata !{i32 786689, metadata !1898, metadata !"ports", metadata !6, i32 50332670, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ports] [line 1022]
!1906 = metadata !{i32 786688, metadata !1907, metadata !"p", metadata !6, i32 1024, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 1024]
!1907 = metadata !{i32 786443, metadata !1898, i32 1023, i32 0, metadata !6, i32 112} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1908 = metadata !{i32 786688, metadata !1907, metadata !"a", metadata !6, i32 1025, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 1025]
!1909 = metadata !{i32 786688, metadata !1907, metadata !"port", metadata !6, i32 1026, metadata !1665, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [port] [line 1026]
!1910 = metadata !{i32 786688, metadata !1907, metadata !"addr", metadata !6, i32 1027, metadata !1807, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addr] [line 1027]
!1911 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_init_listening", metadata !"ngx_http_init_listening", metadata !"", metadata !6, i32 1195, metadata !1912, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1914, i32 1196} ; [ DW_TAG_subprogram ] [line 1195] [local] [def] [scope 1196] [ngx_http_init_listening]
!1912 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1913, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1913 = metadata !{metadata !9, metadata !14, metadata !1665}
!1914 = metadata !{metadata !1915}
!1915 = metadata !{metadata !1916, metadata !1917, metadata !1918, metadata !1920, metadata !1921, metadata !1922, metadata !1923, metadata !1930}
!1916 = metadata !{i32 786689, metadata !1911, metadata !"cf", metadata !6, i32 16778411, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1195]
!1917 = metadata !{i32 786689, metadata !1911, metadata !"port", metadata !6, i32 33555627, metadata !1665, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [port] [line 1195]
!1918 = metadata !{i32 786688, metadata !1919, metadata !"i", metadata !6, i32 1197, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1197]
!1919 = metadata !{i32 786443, metadata !1911, i32 1196, i32 0, metadata !6, i32 121} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1920 = metadata !{i32 786688, metadata !1919, metadata !"last", metadata !6, i32 1198, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1198]
!1921 = metadata !{i32 786688, metadata !1919, metadata !"bind_wildcard", metadata !6, i32 1199, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bind_wildcard] [line 1199]
!1922 = metadata !{i32 786688, metadata !1919, metadata !"ls", metadata !6, i32 1200, metadata !306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 1200]
!1923 = metadata !{i32 786688, metadata !1919, metadata !"hport", metadata !6, i32 1201, metadata !1924, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hport] [line 1201]
!1924 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1925} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_port_t]
!1925 = metadata !{i32 786454, null, metadata !"ngx_http_port_t", metadata !6, i32 243, i64 0, i64 0, i64 0, i32 0, metadata !1926} ; [ DW_TAG_typedef ] [ngx_http_port_t] [line 243, size 0, align 0, offset 0] [from ]
!1926 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 239, i64 64, i64 32, i32 0, i32 0, null, metadata !1927, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 239, size 64, align 32, offset 0] [from ]
!1927 = metadata !{metadata !1928, metadata !1929}
!1928 = metadata !{i32 786445, metadata !1926, metadata !"addrs", metadata !466, i32 241, i64 32, i64 32, i64 0, i32 0, metadata !28} ; [ DW_TAG_member ] [addrs] [line 241, size 32, align 32, offset 0] [from ]
!1929 = metadata !{i32 786445, metadata !1926, metadata !"naddrs", metadata !466, i32 242, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [naddrs] [line 242, size 32, align 32, offset 32] [from ngx_uint_t]
!1930 = metadata !{i32 786688, metadata !1919, metadata !"addr", metadata !6, i32 1202, metadata !1807, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addr] [line 1202]
!1931 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_addrs", metadata !"ngx_http_add_addrs", metadata !"", metadata !6, i32 1299, metadata !1932, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1934, i32 1300} ; [ DW_TAG_subprogram ] [line 1299] [local] [def] [scope 1300] [ngx_http_add_addrs]
!1932 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1933, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1933 = metadata !{metadata !9, metadata !14, metadata !1924, metadata !1807}
!1934 = metadata !{metadata !1935}
!1935 = metadata !{metadata !1936, metadata !1937, metadata !1938, metadata !1939, metadata !1941, metadata !1953, metadata !1954}
!1936 = metadata !{i32 786689, metadata !1931, metadata !"cf", metadata !6, i32 16778515, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1299]
!1937 = metadata !{i32 786689, metadata !1931, metadata !"hport", metadata !6, i32 33555731, metadata !1924, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hport] [line 1299]
!1938 = metadata !{i32 786689, metadata !1931, metadata !"addr", metadata !6, i32 50332947, metadata !1807, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 1299]
!1939 = metadata !{i32 786688, metadata !1940, metadata !"i", metadata !6, i32 1301, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1301]
!1940 = metadata !{i32 786443, metadata !1931, i32 1300, i32 0, metadata !6, i32 133} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1941 = metadata !{i32 786688, metadata !1940, metadata !"addrs", metadata !6, i32 1302, metadata !1942, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [addrs] [line 1302]
!1942 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1943} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_in_addr_t]
!1943 = metadata !{i32 786454, null, metadata !"ngx_http_in_addr_t", metadata !6, i32 226, i64 0, i64 0, i64 0, i32 0, metadata !1944} ; [ DW_TAG_typedef ] [ngx_http_in_addr_t] [line 226, size 0, align 0, offset 0] [from ]
!1944 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 223, i64 96, i64 32, i32 0, i32 0, null, metadata !1945, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 223, size 96, align 32, offset 0] [from ]
!1945 = metadata !{metadata !1946, metadata !1947}
!1946 = metadata !{i32 786445, metadata !1944, metadata !"addr", metadata !466, i32 224, i64 32, i64 32, i64 0, i32 0, metadata !1055} ; [ DW_TAG_member ] [addr] [line 224, size 32, align 32, offset 0] [from in_addr_t]
!1947 = metadata !{i32 786445, metadata !1944, metadata !"conf", metadata !466, i32 225, i64 64, i64 32, i64 32, i32 0, metadata !1948} ; [ DW_TAG_member ] [conf] [line 225, size 64, align 32, offset 32] [from ngx_http_addr_conf_t]
!1948 = metadata !{i32 786454, null, metadata !"ngx_http_addr_conf_t", metadata !466, i32 220, i64 0, i64 0, i64 0, i32 0, metadata !1949} ; [ DW_TAG_typedef ] [ngx_http_addr_conf_t] [line 220, size 0, align 0, offset 0] [from ]
!1949 = metadata !{i32 786451, null, metadata !"", metadata !466, i32 211, i64 64, i64 32, i32 0, i32 0, null, metadata !1950, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 211, size 64, align 32, offset 0] [from ]
!1950 = metadata !{metadata !1951, metadata !1952}
!1951 = metadata !{i32 786445, metadata !1949, metadata !"default_server", metadata !466, i32 213, i64 32, i64 32, i64 0, i32 0, metadata !1326} ; [ DW_TAG_member ] [default_server] [line 213, size 32, align 32, offset 0] [from ]
!1952 = metadata !{i32 786445, metadata !1949, metadata !"virtual_names", metadata !466, i32 215, i64 32, i64 32, i64 32, i32 0, metadata !1301} ; [ DW_TAG_member ] [virtual_names] [line 215, size 32, align 32, offset 32] [from ]
!1953 = metadata !{i32 786688, metadata !1940, metadata !"sin", metadata !6, i32 1303, metadata !1663, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sin] [line 1303]
!1954 = metadata !{i32 786688, metadata !1940, metadata !"vn", metadata !6, i32 1304, metadata !1301, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vn] [line 1304]
!1955 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_add_listening", metadata !"ngx_http_add_listening", metadata !"", metadata !6, i32 1258, metadata !1956, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1958, i32 1259} ; [ DW_TAG_subprogram ] [line 1258] [local] [def] [scope 1259] [ngx_http_add_listening]
!1956 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1957, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1957 = metadata !{metadata !306, metadata !14, metadata !1807}
!1958 = metadata !{metadata !1959}
!1959 = metadata !{metadata !1960, metadata !1961, metadata !1962, metadata !1964, metadata !1965}
!1960 = metadata !{i32 786689, metadata !1955, metadata !"cf", metadata !6, i32 16778474, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1258]
!1961 = metadata !{i32 786689, metadata !1955, metadata !"addr", metadata !6, i32 33555690, metadata !1807, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 1258]
!1962 = metadata !{i32 786688, metadata !1963, metadata !"ls", metadata !6, i32 1260, metadata !306, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ls] [line 1260]
!1963 = metadata !{i32 786443, metadata !1955, i32 1259, i32 0, metadata !6, i32 139} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1964 = metadata !{i32 786688, metadata !1963, metadata !"clcf", metadata !6, i32 1261, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 1261]
!1965 = metadata !{i32 786688, metadata !1963, metadata !"cscf", metadata !6, i32 1262, metadata !1326, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cscf] [line 1262]
!1966 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_server_names", metadata !"ngx_http_server_names", metadata !"", metadata !6, i32 1056, metadata !1967, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !1969, i32 1057} ; [ DW_TAG_subprogram ] [line 1056] [local] [def] [scope 1057] [ngx_http_server_names]
!1967 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1968, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1968 = metadata !{metadata !9, metadata !14, metadata !1673, metadata !1807}
!1969 = metadata !{metadata !1970}
!1970 = metadata !{metadata !1971, metadata !1972, metadata !1973, metadata !1974, metadata !1976, metadata !1977, metadata !1978, metadata !1979, metadata !1980, metadata !1981, metadata !1982, metadata !1983}
!1971 = metadata !{i32 786689, metadata !1966, metadata !"cf", metadata !6, i32 16778272, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 1056]
!1972 = metadata !{i32 786689, metadata !1966, metadata !"cmcf", metadata !6, i32 33555488, metadata !1673, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmcf] [line 1056]
!1973 = metadata !{i32 786689, metadata !1966, metadata !"addr", metadata !6, i32 50332704, metadata !1807, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [addr] [line 1056]
!1974 = metadata !{i32 786688, metadata !1975, metadata !"rc", metadata !6, i32 1058, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 1058]
!1975 = metadata !{i32 786443, metadata !1966, i32 1057, i32 0, metadata !6, i32 141} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1976 = metadata !{i32 786688, metadata !1975, metadata !"n", metadata !6, i32 1059, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 1059]
!1977 = metadata !{i32 786688, metadata !1975, metadata !"s", metadata !6, i32 1060, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 1060]
!1978 = metadata !{i32 786688, metadata !1975, metadata !"hash", metadata !6, i32 1061, metadata !1772, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 1061]
!1979 = metadata !{i32 786688, metadata !1975, metadata !"ha", metadata !6, i32 1062, metadata !1706, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ha] [line 1062]
!1980 = metadata !{i32 786688, metadata !1975, metadata !"name", metadata !6, i32 1063, metadata !1320, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 1063]
!1981 = metadata !{i32 786688, metadata !1975, metadata !"cscfp", metadata !6, i32 1064, metadata !1830, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cscfp] [line 1064]
!1982 = metadata !{i32 786688, metadata !1975, metadata !"regex", metadata !6, i32 1066, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regex] [line 1066]
!1983 = metadata !{i32 786688, metadata !1975, metadata !"i", metadata !6, i32 1067, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1067]
!1984 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_cmp_dns_wildcards", metadata !"ngx_http_cmp_dns_wildcards", metadata !"", metadata !6, i32 1186, metadata !1985, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @ngx_http_cmp_dns_wildcards, null, null, metadata !1989, i32 1187} ; [ DW_TAG_subprogram ] [line 1186] [local] [def] [scope 1187] [ngx_http_cmp_dns_wildcards]
!1985 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1986, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1986 = metadata !{metadata !13, metadata !1987, metadata !1987}
!1987 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !1988} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!1988 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!1989 = metadata !{metadata !1990}
!1990 = metadata !{metadata !1991, metadata !1992, metadata !1993, metadata !1995}
!1991 = metadata !{i32 786689, metadata !1984, metadata !"one", metadata !6, i32 16778402, metadata !1987, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [one] [line 1186]
!1992 = metadata !{i32 786689, metadata !1984, metadata !"two", metadata !6, i32 33555618, metadata !1987, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [two] [line 1186]
!1993 = metadata !{i32 786688, metadata !1994, metadata !"first", metadata !6, i32 1188, metadata !1744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1188]
!1994 = metadata !{i32 786443, metadata !1984, i32 1187, i32 0, metadata !6, i32 165} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!1995 = metadata !{i32 786688, metadata !1994, metadata !"second", metadata !6, i32 1189, metadata !1744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [second] [line 1189]
!1996 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_cmp_conf_addrs", metadata !"ngx_http_cmp_conf_addrs", metadata !"", metadata !6, i32 1160, metadata !1997, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i8*, i8*)* @ngx_http_cmp_conf_addrs, null, null, metadata !1999, i32 1161} ; [ DW_TAG_subprogram ] [line 1160] [local] [def] [scope 1161] [ngx_http_cmp_conf_addrs]
!1997 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !1998, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!1998 = metadata !{metadata !9, metadata !1987, metadata !1987}
!1999 = metadata !{metadata !2000}
!2000 = metadata !{metadata !2001, metadata !2002, metadata !2003, metadata !2005}
!2001 = metadata !{i32 786689, metadata !1996, metadata !"one", metadata !6, i32 16778376, metadata !1987, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [one] [line 1160]
!2002 = metadata !{i32 786689, metadata !1996, metadata !"two", metadata !6, i32 33555592, metadata !1987, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [two] [line 1160]
!2003 = metadata !{i32 786688, metadata !2004, metadata !"first", metadata !6, i32 1162, metadata !1807, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1162]
!2004 = metadata !{i32 786443, metadata !1996, i32 1161, i32 0, metadata !6, i32 166} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2005 = metadata !{i32 786688, metadata !2004, metadata !"second", metadata !6, i32 1163, metadata !1807, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [second] [line 1163]
!2006 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_init_phase_handlers", metadata !"ngx_http_init_phase_handlers", metadata !"", metadata !6, i32 275, metadata !2007, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !2009, i32 276} ; [ DW_TAG_subprogram ] [line 275] [local] [def] [scope 276] [ngx_http_init_phase_handlers]
!2007 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2008, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2008 = metadata !{metadata !9, metadata !14, metadata !1673}
!2009 = metadata !{metadata !2010}
!2010 = metadata !{metadata !2011, metadata !2012, metadata !2013, metadata !2015, metadata !2016, metadata !2017, metadata !2018, metadata !2019, metadata !2020, metadata !2022, metadata !2023}
!2011 = metadata !{i32 786689, metadata !2006, metadata !"cf", metadata !6, i32 16777491, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 275]
!2012 = metadata !{i32 786689, metadata !2006, metadata !"cmcf", metadata !6, i32 33554707, metadata !1673, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmcf] [line 275]
!2013 = metadata !{i32 786688, metadata !2014, metadata !"j", metadata !6, i32 277, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 277]
!2014 = metadata !{i32 786443, metadata !2006, i32 276, i32 0, metadata !6, i32 171} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2015 = metadata !{i32 786688, metadata !2014, metadata !"i", metadata !6, i32 278, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 278]
!2016 = metadata !{i32 786688, metadata !2014, metadata !"n", metadata !6, i32 279, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 279]
!2017 = metadata !{i32 786688, metadata !2014, metadata !"find_config_index", metadata !6, i32 280, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [find_config_index] [line 280]
!2018 = metadata !{i32 786688, metadata !2014, metadata !"use_rewrite", metadata !6, i32 281, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_rewrite] [line 281]
!2019 = metadata !{i32 786688, metadata !2014, metadata !"use_access", metadata !6, i32 282, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [use_access] [line 282]
!2020 = metadata !{i32 786688, metadata !2014, metadata !"h", metadata !6, i32 283, metadata !2021, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 283]
!2021 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !545} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_handler_pt]
!2022 = metadata !{i32 786688, metadata !2014, metadata !"ph", metadata !6, i32 284, metadata !1683, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ph] [line 284]
!2023 = metadata !{i32 786688, metadata !2014, metadata !"checker", metadata !6, i32 285, metadata !1688, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [checker] [line 285]
!2024 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_init_headers_in_hash", metadata !"ngx_http_init_headers_in_hash", metadata !"", metadata !6, i32 244, metadata !2007, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !2025, i32 245} ; [ DW_TAG_subprogram ] [line 244] [local] [def] [scope 245] [ngx_http_init_headers_in_hash]
!2025 = metadata !{metadata !2026}
!2026 = metadata !{metadata !2027, metadata !2028, metadata !2029, metadata !2031, metadata !2032, metadata !2033}
!2027 = metadata !{i32 786689, metadata !2024, metadata !"cf", metadata !6, i32 16777460, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 244]
!2028 = metadata !{i32 786689, metadata !2024, metadata !"cmcf", metadata !6, i32 33554676, metadata !1673, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmcf] [line 244]
!2029 = metadata !{i32 786688, metadata !2030, metadata !"headers_in", metadata !6, i32 246, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [headers_in] [line 246]
!2030 = metadata !{i32 786443, metadata !2024, i32 245, i32 0, metadata !6, i32 193} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2031 = metadata !{i32 786688, metadata !2030, metadata !"hk", metadata !6, i32 247, metadata !1744, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hk] [line 247]
!2032 = metadata !{i32 786688, metadata !2030, metadata !"hash", metadata !6, i32 248, metadata !1772, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 248]
!2033 = metadata !{i32 786688, metadata !2030, metadata !"header", metadata !6, i32 249, metadata !2034, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [header] [line 249]
!2034 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2035} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ngx_http_header_t]
!2035 = metadata !{i32 786454, null, metadata !"ngx_http_header_t", metadata !6, i32 166, i64 0, i64 0, i64 0, i32 0, metadata !2036} ; [ DW_TAG_typedef ] [ngx_http_header_t] [line 166, size 0, align 0, offset 0] [from ]
!2036 = metadata !{i32 786451, null, metadata !"", metadata !552, i32 162, i64 128, i64 32, i32 0, i32 0, null, metadata !2037, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 162, size 128, align 32, offset 0] [from ]
!2037 = metadata !{metadata !2038, metadata !2039, metadata !2040}
!2038 = metadata !{i32 786445, metadata !2036, metadata !"name", metadata !552, i32 163, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 163, size 64, align 32, offset 0] [from ngx_str_t]
!2039 = metadata !{i32 786445, metadata !2036, metadata !"offset", metadata !552, i32 164, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [offset] [line 164, size 32, align 32, offset 64] [from ngx_uint_t]
!2040 = metadata !{i32 786445, metadata !2036, metadata !"handler", metadata !552, i32 165, i64 32, i64 32, i64 96, i32 0, metadata !2041} ; [ DW_TAG_member ] [handler] [line 165, size 32, align 32, offset 96] [from ngx_http_header_handler_pt]
!2041 = metadata !{i32 786454, null, metadata !"ngx_http_header_handler_pt", metadata !552, i32 22, i64 0, i64 0, i64 0, i32 0, metadata !2042} ; [ DW_TAG_typedef ] [ngx_http_header_handler_pt] [line 22, size 0, align 0, offset 0] [from ]
!2042 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2043} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2043 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2044, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2044 = metadata !{metadata !9, metadata !549, metadata !1016, metadata !30}
!2045 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_init_phases", metadata !"ngx_http_init_phases", metadata !"", metadata !6, i32 218, metadata !2007, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !2046, i32 219} ; [ DW_TAG_subprogram ] [line 218] [local] [def] [scope 219] [ngx_http_init_phases]
!2046 = metadata !{metadata !2047}
!2047 = metadata !{metadata !2048, metadata !2049}
!2048 = metadata !{i32 786689, metadata !2045, metadata !"cf", metadata !6, i32 16777434, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 218]
!2049 = metadata !{i32 786689, metadata !2045, metadata !"cmcf", metadata !6, i32 33554650, metadata !1673, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmcf] [line 218]
!2050 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_init_static_location_trees", metadata !"ngx_http_init_static_location_trees", metadata !"", metadata !6, i32 556, metadata !2051, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*, %struct.ngx_http_core_loc_conf_s*)* @ngx_http_init_static_location_trees, null, null, metadata !2053, i32 557} ; [ DW_TAG_subprogram ] [line 556] [local] [def] [scope 557] [ngx_http_init_static_location_trees]
!2051 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2052, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2052 = metadata !{metadata !9, metadata !14, metadata !463}
!2053 = metadata !{metadata !2054}
!2054 = metadata !{metadata !2055, metadata !2056, metadata !2057, metadata !2059, metadata !2060, metadata !2061}
!2055 = metadata !{i32 786689, metadata !2050, metadata !"cf", metadata !6, i32 16777772, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 556]
!2056 = metadata !{i32 786689, metadata !2050, metadata !"pclcf", metadata !6, i32 33554988, metadata !463, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pclcf] [line 556]
!2057 = metadata !{i32 786688, metadata !2058, metadata !"q", metadata !6, i32 558, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 558]
!2058 = metadata !{i32 786443, metadata !2050, i32 557, i32 0, metadata !6, i32 207} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2059 = metadata !{i32 786688, metadata !2058, metadata !"locations", metadata !6, i32 559, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locations] [line 559]
!2060 = metadata !{i32 786688, metadata !2058, metadata !"clcf", metadata !6, i32 560, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 560]
!2061 = metadata !{i32 786688, metadata !2058, metadata !"lq", metadata !6, i32 561, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq] [line 561]
!2062 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_create_locations_tree", metadata !"ngx_http_create_locations_tree", metadata !"", metadata !6, i32 773, metadata !2063, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.ngx_http_location_tree_node_s* (%struct.ngx_conf_s*, %struct.ngx_queue_s*, i32)* @ngx_http_create_locations_tree, null, null, metadata !2065, i32 774} ; [ DW_TAG_subprogram ] [line 773] [local] [def] [scope 774] [ngx_http_create_locations_tree]
!2063 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2064, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2064 = metadata !{metadata !521, metadata !14, metadata !376, metadata !34}
!2065 = metadata !{metadata !2066}
!2066 = metadata !{metadata !2067, metadata !2068, metadata !2069, metadata !2070, metadata !2072, metadata !2073, metadata !2074, metadata !2075}
!2067 = metadata !{i32 786689, metadata !2062, metadata !"cf", metadata !6, i32 16777989, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 773]
!2068 = metadata !{i32 786689, metadata !2062, metadata !"locations", metadata !6, i32 33555205, metadata !376, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [locations] [line 773]
!2069 = metadata !{i32 786689, metadata !2062, metadata !"prefix", metadata !6, i32 50332421, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [prefix] [line 773]
!2070 = metadata !{i32 786688, metadata !2071, metadata !"len", metadata !6, i32 775, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 775]
!2071 = metadata !{i32 786443, metadata !2062, i32 774, i32 0, metadata !6, i32 215} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2072 = metadata !{i32 786688, metadata !2071, metadata !"q", metadata !6, i32 776, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 776]
!2073 = metadata !{i32 786688, metadata !2071, metadata !"tail", metadata !6, i32 777, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 777]
!2074 = metadata !{i32 786688, metadata !2071, metadata !"lq", metadata !6, i32 778, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq] [line 778]
!2075 = metadata !{i32 786688, metadata !2071, metadata !"node", metadata !6, i32 779, metadata !521, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 779]
!2076 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_create_locations_list", metadata !"ngx_http_create_locations_list", metadata !"", metadata !6, i32 708, metadata !2077, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.ngx_queue_s*, %struct.ngx_queue_s*)* @ngx_http_create_locations_list, null, null, metadata !2079, i32 709} ; [ DW_TAG_subprogram ] [line 708] [local] [def] [scope 709] [ngx_http_create_locations_list]
!2077 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2078, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2078 = metadata !{null, metadata !376, metadata !376}
!2079 = metadata !{metadata !2080}
!2080 = metadata !{metadata !2081, metadata !2082, metadata !2083, metadata !2085, metadata !2086, metadata !2087, metadata !2088, metadata !2089}
!2081 = metadata !{i32 786689, metadata !2076, metadata !"locations", metadata !6, i32 16777924, metadata !376, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [locations] [line 708]
!2082 = metadata !{i32 786689, metadata !2076, metadata !"q", metadata !6, i32 33555140, metadata !376, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [q] [line 708]
!2083 = metadata !{i32 786688, metadata !2084, metadata !"name", metadata !6, i32 710, metadata !48, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [name] [line 710]
!2084 = metadata !{i32 786443, metadata !2076, i32 709, i32 0, metadata !6, i32 223} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2085 = metadata !{i32 786688, metadata !2084, metadata !"len", metadata !6, i32 711, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 711]
!2086 = metadata !{i32 786688, metadata !2084, metadata !"x", metadata !6, i32 712, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 712]
!2087 = metadata !{i32 786688, metadata !2084, metadata !"tail", metadata !6, i32 713, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 713]
!2088 = metadata !{i32 786688, metadata !2084, metadata !"lq", metadata !6, i32 714, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq] [line 714]
!2089 = metadata !{i32 786688, metadata !2084, metadata !"lx", metadata !6, i32 715, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lx] [line 715]
!2090 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_join_exact_locations", metadata !"ngx_http_join_exact_locations", metadata !"", metadata !6, i32 681, metadata !2091, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !2093, i32 682} ; [ DW_TAG_subprogram ] [line 681] [local] [def] [scope 682] [ngx_http_join_exact_locations]
!2091 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2092, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2092 = metadata !{metadata !9, metadata !14, metadata !376}
!2093 = metadata !{metadata !2094}
!2094 = metadata !{metadata !2095, metadata !2096, metadata !2097, metadata !2099, metadata !2100, metadata !2101, metadata !2102, metadata !2105}
!2095 = metadata !{i32 786689, metadata !2090, metadata !"cf", metadata !6, i32 16777897, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 681]
!2096 = metadata !{i32 786689, metadata !2090, metadata !"locations", metadata !6, i32 33555113, metadata !376, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [locations] [line 681]
!2097 = metadata !{i32 786688, metadata !2098, metadata !"q", metadata !6, i32 683, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 683]
!2098 = metadata !{i32 786443, metadata !2090, i32 682, i32 0, metadata !6, i32 231} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2099 = metadata !{i32 786688, metadata !2098, metadata !"x", metadata !6, i32 684, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 684]
!2100 = metadata !{i32 786688, metadata !2098, metadata !"lq", metadata !6, i32 685, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq] [line 685]
!2101 = metadata !{i32 786688, metadata !2098, metadata !"lx", metadata !6, i32 686, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lx] [line 686]
!2102 = metadata !{i32 786688, metadata !2103, metadata !"__s1_len", metadata !6, i32 692, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 692]
!2103 = metadata !{i32 786443, metadata !2104, i32 692, i32 0, metadata !6, i32 233} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2104 = metadata !{i32 786443, metadata !2098, i32 688, i32 0, metadata !6, i32 232} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2105 = metadata !{i32 786688, metadata !2103, metadata !"__s2_len", metadata !6, i32 692, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 692]
!2106 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_init_locations", metadata !"ngx_http_init_locations", metadata !"", metadata !6, i32 453, metadata !2107, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_conf_s*, %struct.ngx_http_core_srv_conf_t*, %struct.ngx_http_core_loc_conf_s*)* @ngx_http_init_locations, null, null, metadata !2109, i32 454} ; [ DW_TAG_subprogram ] [line 453] [local] [def] [scope 454] [ngx_http_init_locations]
!2107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2108 = metadata !{metadata !9, metadata !14, metadata !1326, metadata !463}
!2109 = metadata !{metadata !2110}
!2110 = metadata !{metadata !2111, metadata !2112, metadata !2113, metadata !2114, metadata !2116, metadata !2117, metadata !2118, metadata !2119, metadata !2120, metadata !2121, metadata !2122, metadata !2123, metadata !2124}
!2111 = metadata !{i32 786689, metadata !2106, metadata !"cf", metadata !6, i32 16777669, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 453]
!2112 = metadata !{i32 786689, metadata !2106, metadata !"cscf", metadata !6, i32 33554885, metadata !1326, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cscf] [line 453]
!2113 = metadata !{i32 786689, metadata !2106, metadata !"pclcf", metadata !6, i32 50332101, metadata !463, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [pclcf] [line 453]
!2114 = metadata !{i32 786688, metadata !2115, metadata !"n", metadata !6, i32 455, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 455]
!2115 = metadata !{i32 786443, metadata !2106, i32 454, i32 0, metadata !6, i32 236} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2116 = metadata !{i32 786688, metadata !2115, metadata !"q", metadata !6, i32 456, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 456]
!2117 = metadata !{i32 786688, metadata !2115, metadata !"locations", metadata !6, i32 457, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [locations] [line 457]
!2118 = metadata !{i32 786688, metadata !2115, metadata !"named", metadata !6, i32 458, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [named] [line 458]
!2119 = metadata !{i32 786688, metadata !2115, metadata !"tail", metadata !6, i32 459, metadata !371, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 459]
!2120 = metadata !{i32 786688, metadata !2115, metadata !"clcf", metadata !6, i32 460, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 460]
!2121 = metadata !{i32 786688, metadata !2115, metadata !"lq", metadata !6, i32 461, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq] [line 461]
!2122 = metadata !{i32 786688, metadata !2115, metadata !"clcfp", metadata !6, i32 462, metadata !539, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcfp] [line 462]
!2123 = metadata !{i32 786688, metadata !2115, metadata !"r", metadata !6, i32 464, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 464]
!2124 = metadata !{i32 786688, metadata !2115, metadata !"regex", metadata !6, i32 465, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [regex] [line 465]
!2125 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_cmp_locations", metadata !"ngx_http_cmp_locations", metadata !"", metadata !6, i32 625, metadata !2126, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.ngx_queue_s*, %struct.ngx_queue_s*)* @ngx_http_cmp_locations, null, null, metadata !2130, i32 626} ; [ DW_TAG_subprogram ] [line 625] [local] [def] [scope 626] [ngx_http_cmp_locations]
!2126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2127 = metadata !{metadata !9, metadata !2128, metadata !2128}
!2128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2129} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2129 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !371} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ngx_queue_t]
!2130 = metadata !{metadata !2131}
!2131 = metadata !{metadata !2132, metadata !2133, metadata !2134, metadata !2136, metadata !2137, metadata !2138, metadata !2139, metadata !2140, metadata !2143, metadata !2144, metadata !2146}
!2132 = metadata !{i32 786689, metadata !2125, metadata !"one", metadata !6, i32 16777841, metadata !2128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [one] [line 625]
!2133 = metadata !{i32 786689, metadata !2125, metadata !"two", metadata !6, i32 33555057, metadata !2128, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [two] [line 625]
!2134 = metadata !{i32 786688, metadata !2135, metadata !"rc", metadata !6, i32 627, metadata !9, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 627]
!2135 = metadata !{i32 786443, metadata !2125, i32 626, i32 0, metadata !6, i32 255} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2136 = metadata !{i32 786688, metadata !2135, metadata !"first", metadata !6, i32 628, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 628]
!2137 = metadata !{i32 786688, metadata !2135, metadata !"second", metadata !6, i32 629, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [second] [line 629]
!2138 = metadata !{i32 786688, metadata !2135, metadata !"lq1", metadata !6, i32 630, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq1] [line 630]
!2139 = metadata !{i32 786688, metadata !2135, metadata !"lq2", metadata !6, i32 631, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq2] [line 631]
!2140 = metadata !{i32 786688, metadata !2141, metadata !"__s1_len", metadata !6, i32 657, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 657]
!2141 = metadata !{i32 786443, metadata !2142, i32 657, i32 0, metadata !6, i32 262} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2142 = metadata !{i32 786443, metadata !2135, i32 656, i32 0, metadata !6, i32 261} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2143 = metadata !{i32 786688, metadata !2141, metadata !"__s2_len", metadata !6, i32 657, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 657]
!2144 = metadata !{i32 786688, metadata !2145, metadata !"__s1_len", metadata !6, i32 673, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s1_len] [line 673]
!2145 = metadata !{i32 786443, metadata !2135, i32 673, i32 0, metadata !6, i32 266} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2146 = metadata !{i32 786688, metadata !2145, metadata !"__s2_len", metadata !6, i32 673, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__s2_len] [line 673]
!2147 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_merge_servers", metadata !"ngx_http_merge_servers", metadata !"", metadata !6, i32 382, metadata !2148, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !2150, i32 383} ; [ DW_TAG_subprogram ] [line 382] [local] [def] [scope 383] [ngx_http_merge_servers]
!2148 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2149, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2149 = metadata !{metadata !19, metadata !14, metadata !1673, metadata !1870, metadata !30}
!2150 = metadata !{metadata !2151}
!2151 = metadata !{metadata !2152, metadata !2153, metadata !2154, metadata !2155, metadata !2156, metadata !2158, metadata !2159, metadata !2160, metadata !2161, metadata !2162}
!2152 = metadata !{i32 786689, metadata !2147, metadata !"cf", metadata !6, i32 16777598, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 382]
!2153 = metadata !{i32 786689, metadata !2147, metadata !"cmcf", metadata !6, i32 33554814, metadata !1673, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cmcf] [line 382]
!2154 = metadata !{i32 786689, metadata !2147, metadata !"module", metadata !6, i32 50332030, metadata !1870, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [module] [line 382]
!2155 = metadata !{i32 786689, metadata !2147, metadata !"ctx_index", metadata !6, i32 67109246, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx_index] [line 382]
!2156 = metadata !{i32 786688, metadata !2157, metadata !"rv", metadata !6, i32 384, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rv] [line 384]
!2157 = metadata !{i32 786443, metadata !2147, i32 383, i32 0, metadata !6, i32 268} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2158 = metadata !{i32 786688, metadata !2157, metadata !"s", metadata !6, i32 385, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 385]
!2159 = metadata !{i32 786688, metadata !2157, metadata !"ctx", metadata !6, i32 386, metadata !1332, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 386]
!2160 = metadata !{i32 786688, metadata !2157, metadata !"saved", metadata !6, i32 387, metadata !1333, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [saved] [line 387]
!2161 = metadata !{i32 786688, metadata !2157, metadata !"clcf", metadata !6, i32 388, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 388]
!2162 = metadata !{i32 786688, metadata !2157, metadata !"cscfp", metadata !6, i32 389, metadata !1830, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cscfp] [line 389]
!2163 = metadata !{i32 786478, i32 0, metadata !6, metadata !"ngx_http_merge_locations", metadata !"ngx_http_merge_locations", metadata !"", metadata !6, i32 423, metadata !2164, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* (%struct.ngx_conf_s*, %struct.ngx_queue_s*, i8**, %struct.ngx_http_module_t*, i32)* @ngx_http_merge_locations, null, null, metadata !2166, i32 424} ; [ DW_TAG_subprogram ] [line 423] [local] [def] [scope 424] [ngx_http_merge_locations]
!2164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2165 = metadata !{metadata !19, metadata !14, metadata !376, metadata !214, metadata !1870, metadata !30}
!2166 = metadata !{metadata !2167}
!2167 = metadata !{metadata !2168, metadata !2169, metadata !2170, metadata !2171, metadata !2172, metadata !2173, metadata !2175, metadata !2176, metadata !2177, metadata !2178, metadata !2179}
!2168 = metadata !{i32 786689, metadata !2163, metadata !"cf", metadata !6, i32 16777639, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cf] [line 423]
!2169 = metadata !{i32 786689, metadata !2163, metadata !"locations", metadata !6, i32 33554855, metadata !376, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [locations] [line 423]
!2170 = metadata !{i32 786689, metadata !2163, metadata !"loc_conf", metadata !6, i32 50332071, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc_conf] [line 423]
!2171 = metadata !{i32 786689, metadata !2163, metadata !"module", metadata !6, i32 67109287, metadata !1870, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [module] [line 423]
!2172 = metadata !{i32 786689, metadata !2163, metadata !"ctx_index", metadata !6, i32 83886503, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ctx_index] [line 423]
!2173 = metadata !{i32 786688, metadata !2174, metadata !"rv", metadata !6, i32 425, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rv] [line 425]
!2174 = metadata !{i32 786443, metadata !2163, i32 424, i32 0, metadata !6, i32 276} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2175 = metadata !{i32 786688, metadata !2174, metadata !"q", metadata !6, i32 426, metadata !376, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 426]
!2176 = metadata !{i32 786688, metadata !2174, metadata !"ctx", metadata !6, i32 427, metadata !1332, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ctx] [line 427]
!2177 = metadata !{i32 786688, metadata !2174, metadata !"saved", metadata !6, i32 428, metadata !1333, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [saved] [line 428]
!2178 = metadata !{i32 786688, metadata !2174, metadata !"clcf", metadata !6, i32 429, metadata !463, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [clcf] [line 429]
!2179 = metadata !{i32 786688, metadata !2174, metadata !"lq", metadata !6, i32 430, metadata !1587, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lq] [line 430]
!2180 = metadata !{metadata !2181}
!2181 = metadata !{metadata !2182, metadata !2186, metadata !2224, metadata !2225, metadata !2226, metadata !2230, metadata !2232}
!2182 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_html_default_types", metadata !"ngx_http_html_default_types", metadata !"", metadata !6, i32 35, metadata !2183, i32 0, i32 1, [2 x %struct.ngx_str_t]* @ngx_http_html_default_types} ; [ DW_TAG_variable ] [ngx_http_html_default_types] [line 35] [def]
!2183 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 128, i64 32, i32 0, i32 0, metadata !91, metadata !2184, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 128, align 32, offset 0] [from ngx_str_t]
!2184 = metadata !{metadata !2185}
!2185 = metadata !{i32 786465, i64 0, i64 1}      ; [ DW_TAG_subrange_type ] [0, 1]
!2186 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_module", metadata !"ngx_http_module", metadata !"", metadata !6, i32 38, metadata !2187, i32 0, i32 1, %struct.ngx_module_s* @ngx_http_module} ; [ DW_TAG_variable ] [ngx_http_module] [line 38] [def]
!2187 = metadata !{i32 786454, null, metadata !"ngx_module_t", metadata !6, i32 12, i64 0, i64 0, i64 0, i32 0, metadata !2188} ; [ DW_TAG_typedef ] [ngx_module_t] [line 12, size 0, align 0, offset 0] [from ngx_module_s]
!2188 = metadata !{i32 786451, null, metadata !"ngx_module_s", metadata !10, i32 111, i64 800, i64 32, i32 0, i32 0, null, metadata !2189, i32 0, i32 0} ; [ DW_TAG_structure_type ] [ngx_module_s] [line 111, size 800, align 32, offset 0] [from ]
!2189 = metadata !{metadata !2190, metadata !2191, metadata !2192, metadata !2193, metadata !2194, metadata !2195, metadata !2196, metadata !2197, metadata !2198, metadata !2199, metadata !2200, metadata !2204, metadata !2208, metadata !2209, metadata !2210, metadata !2214, metadata !2215, metadata !2216, metadata !2217, metadata !2218, metadata !2219, metadata !2220, metadata !2221, metadata !2222, metadata !2223}
!2190 = metadata !{i32 786445, metadata !2188, metadata !"ctx_index", metadata !10, i32 112, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ] [ctx_index] [line 112, size 32, align 32, offset 0] [from ngx_uint_t]
!2191 = metadata !{i32 786445, metadata !2188, metadata !"index", metadata !10, i32 113, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ] [index] [line 113, size 32, align 32, offset 32] [from ngx_uint_t]
!2192 = metadata !{i32 786445, metadata !2188, metadata !"spare0", metadata !10, i32 115, i64 32, i64 32, i64 64, i32 0, metadata !30} ; [ DW_TAG_member ] [spare0] [line 115, size 32, align 32, offset 64] [from ngx_uint_t]
!2193 = metadata !{i32 786445, metadata !2188, metadata !"spare1", metadata !10, i32 116, i64 32, i64 32, i64 96, i32 0, metadata !30} ; [ DW_TAG_member ] [spare1] [line 116, size 32, align 32, offset 96] [from ngx_uint_t]
!2194 = metadata !{i32 786445, metadata !2188, metadata !"spare2", metadata !10, i32 117, i64 32, i64 32, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [spare2] [line 117, size 32, align 32, offset 128] [from ngx_uint_t]
!2195 = metadata !{i32 786445, metadata !2188, metadata !"spare3", metadata !10, i32 118, i64 32, i64 32, i64 160, i32 0, metadata !30} ; [ DW_TAG_member ] [spare3] [line 118, size 32, align 32, offset 160] [from ngx_uint_t]
!2196 = metadata !{i32 786445, metadata !2188, metadata !"version", metadata !10, i32 120, i64 32, i64 32, i64 192, i32 0, metadata !30} ; [ DW_TAG_member ] [version] [line 120, size 32, align 32, offset 192] [from ngx_uint_t]
!2197 = metadata !{i32 786445, metadata !2188, metadata !"ctx", metadata !10, i32 122, i64 32, i64 32, i64 224, i32 0, metadata !28} ; [ DW_TAG_member ] [ctx] [line 122, size 32, align 32, offset 224] [from ]
!2198 = metadata !{i32 786445, metadata !2188, metadata !"commands", metadata !10, i32 123, i64 32, i64 32, i64 256, i32 0, metadata !451} ; [ DW_TAG_member ] [commands] [line 123, size 32, align 32, offset 256] [from ]
!2199 = metadata !{i32 786445, metadata !2188, metadata !"type", metadata !10, i32 124, i64 32, i64 32, i64 288, i32 0, metadata !30} ; [ DW_TAG_member ] [type] [line 124, size 32, align 32, offset 288] [from ngx_uint_t]
!2200 = metadata !{i32 786445, metadata !2188, metadata !"init_master", metadata !10, i32 126, i64 32, i64 32, i64 320, i32 0, metadata !2201} ; [ DW_TAG_member ] [init_master] [line 126, size 32, align 32, offset 320] [from ]
!2201 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2202} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2203 = metadata !{metadata !9, metadata !140}
!2204 = metadata !{i32 786445, metadata !2188, metadata !"init_module", metadata !10, i32 128, i64 32, i64 32, i64 352, i32 0, metadata !2205} ; [ DW_TAG_member ] [init_module] [line 128, size 32, align 32, offset 352] [from ]
!2205 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2206} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2207 = metadata !{metadata !9, metadata !206}
!2208 = metadata !{i32 786445, metadata !2188, metadata !"init_process", metadata !10, i32 130, i64 32, i64 32, i64 384, i32 0, metadata !2205} ; [ DW_TAG_member ] [init_process] [line 130, size 32, align 32, offset 384] [from ]
!2209 = metadata !{i32 786445, metadata !2188, metadata !"init_thread", metadata !10, i32 131, i64 32, i64 32, i64 416, i32 0, metadata !2205} ; [ DW_TAG_member ] [init_thread] [line 131, size 32, align 32, offset 416] [from ]
!2210 = metadata !{i32 786445, metadata !2188, metadata !"exit_thread", metadata !10, i32 132, i64 32, i64 32, i64 448, i32 0, metadata !2211} ; [ DW_TAG_member ] [exit_thread] [line 132, size 32, align 32, offset 448] [from ]
!2211 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2212} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2213 = metadata !{null, metadata !206}
!2214 = metadata !{i32 786445, metadata !2188, metadata !"exit_process", metadata !10, i32 133, i64 32, i64 32, i64 480, i32 0, metadata !2211} ; [ DW_TAG_member ] [exit_process] [line 133, size 32, align 32, offset 480] [from ]
!2215 = metadata !{i32 786445, metadata !2188, metadata !"exit_master", metadata !10, i32 135, i64 32, i64 32, i64 512, i32 0, metadata !2211} ; [ DW_TAG_member ] [exit_master] [line 135, size 32, align 32, offset 512] [from ]
!2216 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook0", metadata !10, i32 137, i64 32, i64 32, i64 544, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook0] [line 137, size 32, align 32, offset 544] [from uintptr_t]
!2217 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook1", metadata !10, i32 138, i64 32, i64 32, i64 576, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook1] [line 138, size 32, align 32, offset 576] [from uintptr_t]
!2218 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook2", metadata !10, i32 139, i64 32, i64 32, i64 608, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook2] [line 139, size 32, align 32, offset 608] [from uintptr_t]
!2219 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook3", metadata !10, i32 140, i64 32, i64 32, i64 640, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook3] [line 140, size 32, align 32, offset 640] [from uintptr_t]
!2220 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook4", metadata !10, i32 141, i64 32, i64 32, i64 672, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook4] [line 141, size 32, align 32, offset 672] [from uintptr_t]
!2221 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook5", metadata !10, i32 142, i64 32, i64 32, i64 704, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook5] [line 142, size 32, align 32, offset 704] [from uintptr_t]
!2222 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook6", metadata !10, i32 143, i64 32, i64 32, i64 736, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook6] [line 143, size 32, align 32, offset 736] [from uintptr_t]
!2223 = metadata !{i32 786445, metadata !2188, metadata !"spare_hook7", metadata !10, i32 144, i64 32, i64 32, i64 768, i32 0, metadata !31} ; [ DW_TAG_member ] [spare_hook7] [line 144, size 32, align 32, offset 768] [from uintptr_t]
!2224 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_max_module", metadata !"ngx_http_max_module", metadata !"", metadata !6, i32 32, metadata !30, i32 0, i32 1, i32* @ngx_http_max_module} ; [ DW_TAG_variable ] [ngx_http_max_module] [line 32] [def]
!2225 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_top_header_filter", metadata !"ngx_http_top_header_filter", metadata !"", metadata !6, i32 33, metadata !546, i32 0, i32 1, i32 (%struct.ngx_http_request_s*)** @ngx_http_top_header_filter} ; [ DW_TAG_variable ] [ngx_http_top_header_filter] [line 33] [def]
!2226 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_top_body_filter", metadata !"ngx_http_top_body_filter", metadata !"", metadata !6, i32 34, metadata !2227, i32 0, i32 1, i32 (%struct.ngx_http_request_s*, %struct.ngx_chain_s*)** @ngx_http_top_body_filter} ; [ DW_TAG_variable ] [ngx_http_top_body_filter] [line 34] [def]
!2227 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2228} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2229 = metadata !{metadata !9, metadata !549, metadata !60}
!2230 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_commands", metadata !"ngx_http_commands", metadata !"", metadata !6, i32 36, metadata !2231, i32 1, i32 1, [2 x %struct.ngx_command_s]* @ngx_http_commands} ; [ DW_TAG_variable ] [ngx_http_commands] [line 36] [local] [def]
!2231 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 448, i64 32, i32 0, i32 0, metadata !452, metadata !2184, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 448, align 32, offset 0] [from ngx_command_t]
!2232 = metadata !{i32 786484, i32 0, null, metadata !"ngx_http_module_ctx", metadata !"ngx_http_module_ctx", metadata !"", metadata !6, i32 37, metadata !2233, i32 1, i32 1, %struct.ngx_core_module_t* @ngx_http_module_ctx} ; [ DW_TAG_variable ] [ngx_http_module_ctx] [line 37] [local] [def]
!2233 = metadata !{i32 786454, null, metadata !"ngx_core_module_t", metadata !6, i32 152, i64 0, i64 0, i64 0, i32 0, metadata !2234} ; [ DW_TAG_typedef ] [ngx_core_module_t] [line 152, size 0, align 0, offset 0] [from ]
!2234 = metadata !{i32 786451, null, metadata !"", metadata !10, i32 148, i64 128, i64 32, i32 0, i32 0, null, metadata !2235, i32 0, i32 0} ; [ DW_TAG_structure_type ] [line 148, size 128, align 32, offset 0] [from ]
!2235 = metadata !{metadata !2236, metadata !2237, metadata !2241}
!2236 = metadata !{i32 786445, metadata !2234, metadata !"name", metadata !10, i32 149, i64 64, i64 32, i64 0, i32 0, metadata !91} ; [ DW_TAG_member ] [name] [line 149, size 64, align 32, offset 0] [from ngx_str_t]
!2237 = metadata !{i32 786445, metadata !2234, metadata !"create_conf", metadata !10, i32 150, i64 32, i64 32, i64 64, i32 0, metadata !2238} ; [ DW_TAG_member ] [create_conf] [line 150, size 32, align 32, offset 64] [from ]
!2238 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2239} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2239 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2240, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2240 = metadata !{metadata !28, metadata !206}
!2241 = metadata !{i32 786445, metadata !2234, metadata !"init_conf", metadata !10, i32 151, i64 32, i64 32, i64 96, i32 0, metadata !2242} ; [ DW_TAG_member ] [init_conf] [line 151, size 32, align 32, offset 96] [from ]
!2242 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 32, i64 32, i64 0, i32 0, metadata !2243} ; [ DW_TAG_pointer_type ] [line 0, size 32, align 32, offset 0] [from ]
!2243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !2244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!2244 = metadata !{metadata !19, metadata !206, metadata !28}
!2245 = metadata !{i32 587, i32 0, metadata !5, null}
!2246 = metadata !{i32 590, i32 0, metadata !1586, null}
!2247 = metadata !{metadata !"any pointer", metadata !2248}
!2248 = metadata !{metadata !"omnipotent char", metadata !2249}
!2249 = metadata !{metadata !"Simple C/C++ TBAA"}
!2250 = metadata !{i32 591, i32 0, metadata !2251, null}
!2251 = metadata !{i32 786443, metadata !1586, i32 590, i32 0, metadata !6, i32 1} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2252 = metadata !{i32 592, i32 0, metadata !2251, null}
!2253 = metadata !{i32 595, i32 0, metadata !2251, null}
!2254 = metadata !{i32 596, i32 0, metadata !2251, null}
!2255 = metadata !{i32 597, i32 0, metadata !2251, null}
!2256 = metadata !{i32 598, i32 0, metadata !1586, null}
!2257 = metadata !{i32 599, i32 0, metadata !1586, null}
!2258 = metadata !{i32 602, i32 0, metadata !1586, null}
!2259 = metadata !{i32 606, i32 0, metadata !2260, null}
!2260 = metadata !{i32 786443, metadata !1586, i32 605, i32 0, metadata !6, i32 4} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2261 = metadata !{i32 607, i32 0, metadata !2260, null}
!2262 = metadata !{i32 608, i32 0, metadata !2260, null}
!2263 = metadata !{i32 610, i32 0, metadata !2264, null}
!2264 = metadata !{i32 786443, metadata !1586, i32 609, i32 0, metadata !6, i32 5} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2265 = metadata !{i32 611, i32 0, metadata !2264, null}
!2266 = metadata !{i32 613, i32 0, metadata !1586, null}
!2267 = metadata !{i32 614, i32 0, metadata !1586, null}
!2268 = metadata !{i32 615, i32 0, metadata !1586, null}
!2269 = metadata !{metadata !"int", metadata !2248}
!2270 = metadata !{i32 616, i32 0, metadata !1586, null}
!2271 = metadata !{i32 617, i32 0, metadata !1586, null}
!2272 = metadata !{i32 618, i32 0, metadata !1586, null}
!2273 = metadata !{i32 619, i32 0, metadata !1586, null}
!2274 = metadata !{i32 620, i32 0, metadata !1586, null}
!2275 = metadata !{i32 621, i32 0, metadata !1586, null}
!2276 = metadata !{i32 622, i32 0, metadata !1586, null}
!2277 = metadata !{i32 623, i32 0, metadata !1586, null}
!2278 = metadata !{i32 833, i32 0, metadata !1598, null}
!2279 = metadata !{i32 843, i32 0, metadata !1659, null}
!2280 = metadata !{i32 844, i32 0, metadata !1659, null}
!2281 = metadata !{i32 845, i32 0, metadata !2282, null}
!2282 = metadata !{i32 786443, metadata !1659, i32 844, i32 0, metadata !6, i32 7} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2283 = metadata !{i32 846, i32 0, metadata !2282, null}
!2284 = metadata !{i32 851, i32 0, metadata !1659, null}
!2285 = metadata !{metadata !"short", metadata !2248}
!2286 = metadata !{i32 865, i32 0, metadata !2287, null}
!2287 = metadata !{i32 786443, metadata !2288, i32 861, i32 0, metadata !6, i32 11} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2288 = metadata !{i32 786443, metadata !1659, i32 851, i32 0, metadata !6, i32 9} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2289 = metadata !{i32 866, i32 0, metadata !2287, null}
!2290 = metadata !{i32 869, i32 0, metadata !1659, null}
!2291 = metadata !{i32 870, i32 0, metadata !2292, null}
!2292 = metadata !{i32 786443, metadata !1659, i32 870, i32 0, metadata !6, i32 12} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2293 = metadata !{i32 871, i32 0, metadata !2294, null}
!2294 = metadata !{i32 786443, metadata !2292, i32 870, i32 0, metadata !6, i32 13} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2295 = metadata !{i32 786689, metadata !1840, metadata !"cf", metadata !6, i32 16778104, metadata !14, i32 0, metadata !2296} ; [ DW_TAG_arg_variable ] [cf] [line 888]
!2296 = metadata !{i32 875, i32 0, metadata !2294, null}
!2297 = metadata !{i32 888, i32 0, metadata !1840, metadata !2296}
!2298 = metadata !{i32 786689, metadata !1840, metadata !"cscf", metadata !6, i32 33555320, metadata !1326, i32 0, metadata !2296} ; [ DW_TAG_arg_variable ] [cscf] [line 888]
!2299 = metadata !{i32 786689, metadata !1840, metadata !"lsopt", metadata !6, i32 67109752, metadata !1601, i32 0, metadata !2296} ; [ DW_TAG_arg_variable ] [lsopt] [line 888]
!2300 = metadata !{i32 907, i32 0, metadata !1848, metadata !2296}
!2301 = metadata !{i32 ptrtoint (%struct.in_addr* getelementptr inbounds (%struct.sockaddr_in* null, i32 0, i32 2) to i32)}
!2302 = metadata !{i32 786688, metadata !1848, metadata !"off", metadata !6, i32 892, metadata !34, i32 0, metadata !2296} ; [ DW_TAG_auto_variable ] [off] [line 892]
!2303 = metadata !{i32 921, i32 0, metadata !2304, metadata !2296}
!2304 = metadata !{i32 786443, metadata !2305, i32 918, i32 0, metadata !6, i32 60} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2305 = metadata !{i32 786443, metadata !1848, i32 907, i32 0, metadata !6, i32 58} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2306 = metadata !{i32 4}
!2307 = metadata !{i32 786688, metadata !1848, metadata !"len", metadata !6, i32 891, metadata !34, i32 0, metadata !2296} ; [ DW_TAG_auto_variable ] [len] [line 891]
!2308 = metadata !{i32 922, i32 0, metadata !2304, metadata !2296}
!2309 = metadata !{i32 926, i32 0, metadata !1848, metadata !2296}
!2310 = metadata !{i32 786688, metadata !1848, metadata !"p", metadata !6, i32 890, metadata !48, i32 0, metadata !2296} ; [ DW_TAG_auto_variable ] [p] [line 890]
!2311 = metadata !{i32 927, i32 0, metadata !1848, metadata !2296}
!2312 = metadata !{i32 786688, metadata !1848, metadata !"addr", metadata !6, i32 896, metadata !1807, i32 0, metadata !2296} ; [ DW_TAG_auto_variable ] [addr] [line 896]
!2313 = metadata !{i32 786688, metadata !1848, metadata !"i", metadata !6, i32 893, metadata !30, i32 0, metadata !2296} ; [ DW_TAG_auto_variable ] [i] [line 893]
!2314 = metadata !{i32 928, i32 0, metadata !2315, metadata !2296}
!2315 = metadata !{i32 786443, metadata !1848, i32 928, i32 0, metadata !6, i32 61} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2316 = metadata !{i32 972, i32 0, metadata !1806, metadata !2317}
!2317 = metadata !{i32 962, i32 0, metadata !1848, metadata !2296}
!2318 = metadata !{i32 929, i32 0, metadata !2319, metadata !2296}
!2319 = metadata !{i32 786443, metadata !2315, i32 928, i32 0, metadata !6, i32 62} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2320 = metadata !{i32 933, i32 0, metadata !2319, metadata !2296}
!2321 = metadata !{i32 937, i32 0, metadata !2319, metadata !2296}
!2322 = metadata !{i32 786688, metadata !1848, metadata !"default_server", metadata !6, i32 894, metadata !30, i32 0, metadata !2296} ; [ DW_TAG_auto_variable ] [default_server] [line 894]
!2323 = metadata !{i32 940, i32 0, metadata !2319, metadata !2296}
!2324 = metadata !{i32 941, i32 0, metadata !2325, metadata !2296}
!2325 = metadata !{i32 786443, metadata !2319, i32 940, i32 0, metadata !6, i32 65} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2326 = metadata !{i32 942, i32 0, metadata !2327, metadata !2296}
!2327 = metadata !{i32 786443, metadata !2325, i32 941, i32 0, metadata !6, i32 66} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2328 = metadata !{i32 943, i32 0, metadata !2327, metadata !2296}
!2329 = metadata !{i32 945, i32 0, metadata !2325, metadata !2296}
!2330 = metadata !{i64 0, i64 2, metadata !2285, i64 2, i64 14, metadata !2248, i64 0, i64 2, metadata !2285, i64 2, i64 2, metadata !2285, i64 4, i64 4, metadata !2269, i64 8, i64 8, metadata !2248, i64 0, i64 2, metadata !2285, i64 2, i64 108, metadata !2248, i64 0, i64 110, metadata !2248, i64 112, i64 4, metadata !2269, i64 116, i64 4, metadata !2269, i64 116, i64 4, metadata !2269, i64 116, i64 4, metadata !2269, i64 116, i64 4, metadata !2269, i64 116, i64 4, metadata !2269, i64 120, i64 4, metadata !2269, i64 124, i64 4, metadata !2269, i64 128, i64 4, metadata !2269, i64 132, i64 4, metadata !2269, i64 136, i64 4, metadata !2269, i64 140, i64 4, metadata !2269, i64 144, i64 4, metadata !2269, i64 148, i64 114, metadata !2248}
!2331 = metadata !{i32 948, i32 0, metadata !2319, metadata !2296}
!2332 = metadata !{i32 946, i32 0, metadata !2325, metadata !2296}
!2333 = metadata !{i32 949, i32 0, metadata !2334, metadata !2296}
!2334 = metadata !{i32 786443, metadata !2319, i32 948, i32 0, metadata !6, i32 67} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2335 = metadata !{i32 950, i32 0, metadata !2336, metadata !2296}
!2336 = metadata !{i32 786443, metadata !2334, i32 949, i32 0, metadata !6, i32 68} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2337 = metadata !{i32 951, i32 0, metadata !2336, metadata !2296}
!2338 = metadata !{i32 1}
!2339 = metadata !{i32 953, i32 0, metadata !2334, metadata !2296}
!2340 = metadata !{i32 954, i32 0, metadata !2334, metadata !2296}
!2341 = metadata !{i32 955, i32 0, metadata !2334, metadata !2296}
!2342 = metadata !{i32 956, i32 0, metadata !2319, metadata !2296}
!2343 = metadata !{i32 959, i32 0, metadata !2319, metadata !2296}
!2344 = metadata !{i32 786689, metadata !1796, metadata !"cf", metadata !6, i32 16778185, metadata !14, i32 0, metadata !2317} ; [ DW_TAG_arg_variable ] [cf] [line 969]
!2345 = metadata !{i32 969, i32 0, metadata !1796, metadata !2317}
!2346 = metadata !{i32 786689, metadata !1796, metadata !"cscf", metadata !6, i32 33555401, metadata !1326, i32 0, metadata !2317} ; [ DW_TAG_arg_variable ] [cscf] [line 969]
!2347 = metadata !{i32 786689, metadata !1796, metadata !"lsopt", metadata !6, i32 67109833, metadata !1601, i32 0, metadata !2317} ; [ DW_TAG_arg_variable ] [lsopt] [line 969]
!2348 = metadata !{i32 973, i32 0, metadata !2349, metadata !2317}
!2349 = metadata !{i32 786443, metadata !1806, i32 972, i32 0, metadata !6, i32 44} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2350 = metadata !{i32 786689, metadata !1831, metadata !"array", metadata !25, i32 16777248, metadata !22, i32 0, metadata !2348} ; [ DW_TAG_arg_variable ] [array] [line 32]
!2351 = metadata !{i32 32, i32 0, metadata !1831, metadata !2348}
!2352 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2348} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2353 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2348} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2354 = metadata !{i32 312}
!2355 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2348} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2356 = metadata !{i32 39, i32 0, metadata !2357, metadata !2348}
!2357 = metadata !{i32 786443, metadata !1831, i32 33, i32 0, metadata !25, i32 55} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/core/ngx_array.h]
!2358 = metadata !{i32 40, i32 0, metadata !2357, metadata !2348}
!2359 = metadata !{i32 41, i32 0, metadata !2357, metadata !2348}
!2360 = metadata !{i32 42, i32 0, metadata !2357, metadata !2348}
!2361 = metadata !{i32 44, i32 0, metadata !2357, metadata !2348}
!2362 = metadata !{i32 45, i32 0, metadata !2357, metadata !2348}
!2363 = metadata !{i32 977, i32 0, metadata !1806, metadata !2317}
!2364 = metadata !{i32 978, i32 0, metadata !1806, metadata !2317}
!2365 = metadata !{i32 981, i32 0, metadata !1806, metadata !2317}
!2366 = metadata !{i32 982, i32 0, metadata !1806, metadata !2317}
!2367 = metadata !{i32 990, i32 0, metadata !1806, metadata !2317}
!2368 = metadata !{i32 983, i32 0, metadata !1806, metadata !2317}
!2369 = metadata !{i32 991, i32 0, metadata !1806, metadata !2317}
!2370 = metadata !{i32 992, i32 0, metadata !1806, metadata !2317}
!2371 = metadata !{i32 878, i32 0, metadata !1659, null}
!2372 = metadata !{i32 879, i32 0, metadata !1659, null}
!2373 = metadata !{i32 882, i32 0, metadata !1659, null}
!2374 = metadata !{i32 883, i32 0, metadata !1659, null}
!2375 = metadata !{i32 884, i32 0, metadata !1659, null}
!2376 = metadata !{i32 786689, metadata !1796, metadata !"cf", metadata !6, i32 16778185, metadata !14, i32 0, metadata !2377} ; [ DW_TAG_arg_variable ] [cf] [line 969]
!2377 = metadata !{i32 885, i32 0, metadata !1659, null}
!2378 = metadata !{i32 969, i32 0, metadata !1796, metadata !2377}
!2379 = metadata !{i32 786689, metadata !1796, metadata !"cscf", metadata !6, i32 33555401, metadata !1326, i32 0, metadata !2377} ; [ DW_TAG_arg_variable ] [cscf] [line 969]
!2380 = metadata !{i32 786689, metadata !1796, metadata !"lsopt", metadata !6, i32 67109833, metadata !1601, i32 0, metadata !2377} ; [ DW_TAG_arg_variable ] [lsopt] [line 969]
!2381 = metadata !{i32 973, i32 0, metadata !2349, metadata !2377}
!2382 = metadata !{i32 786689, metadata !1831, metadata !"array", metadata !25, i32 16777248, metadata !22, i32 0, metadata !2381} ; [ DW_TAG_arg_variable ] [array] [line 32]
!2383 = metadata !{i32 32, i32 0, metadata !1831, metadata !2381}
!2384 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2381} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2385 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2381} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2386 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2381} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2387 = metadata !{i32 39, i32 0, metadata !2357, metadata !2381}
!2388 = metadata !{i32 40, i32 0, metadata !2357, metadata !2381}
!2389 = metadata !{i32 41, i32 0, metadata !2357, metadata !2381}
!2390 = metadata !{i32 42, i32 0, metadata !2357, metadata !2381}
!2391 = metadata !{i32 44, i32 0, metadata !2357, metadata !2381}
!2392 = metadata !{i32 45, i32 0, metadata !2357, metadata !2381}
!2393 = metadata !{i32 972, i32 0, metadata !1806, metadata !2377}
!2394 = metadata !{i32 977, i32 0, metadata !1806, metadata !2377}
!2395 = metadata !{i32 978, i32 0, metadata !1806, metadata !2377}
!2396 = metadata !{i32 981, i32 0, metadata !1806, metadata !2377}
!2397 = metadata !{i32 982, i32 0, metadata !1806, metadata !2377}
!2398 = metadata !{i32 990, i32 0, metadata !1806, metadata !2377}
!2399 = metadata !{i32 983, i32 0, metadata !1806, metadata !2377}
!2400 = metadata !{i32 991, i32 0, metadata !1806, metadata !2377}
!2401 = metadata !{i32 992, i32 0, metadata !1806, metadata !2377}
!2402 = metadata !{i32 886, i32 0, metadata !1659, null}
!2403 = metadata !{i32 1346, i32 0, metadata !1728, null}
!2404 = metadata !{i32 1348, i32 0, metadata !1735, null}
!2405 = metadata !{i32 1356, i32 0, metadata !1735, null}
!2406 = metadata !{i32 1357, i32 0, metadata !1735, null}
!2407 = metadata !{i32 1360, i32 0, metadata !1735, null}
!2408 = metadata !{i32 1361, i32 0, metadata !1735, null}
!2409 = metadata !{i32 1362, i32 0, metadata !2410, null}
!2410 = metadata !{i32 786443, metadata !1735, i32 1361, i32 0, metadata !6, i32 18} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2411 = metadata !{i32 1363, i32 0, metadata !2410, null}
!2412 = metadata !{i32 1366, i32 0, metadata !2410, null}
!2413 = metadata !{i32 1367, i32 0, metadata !2414, null}
!2414 = metadata !{i32 786443, metadata !2410, i32 1366, i32 0, metadata !6, i32 20} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2415 = metadata !{i32 1368, i32 0, metadata !2414, null}
!2416 = metadata !{i32 1371, i32 0, metadata !2414, null}
!2417 = metadata !{i32 1372, i32 0, metadata !2414, null}
!2418 = metadata !{i32 1373, i32 0, metadata !2414, null}
!2419 = metadata !{i32 1374, i32 0, metadata !2414, null}
!2420 = metadata !{i32 1376, i32 0, metadata !1735, null}
!2421 = metadata !{i32 1377, i32 0, metadata !1756, null}
!2422 = metadata !{i32 1378, i32 0, metadata !1755, null}
!2423 = metadata !{i32 1379, i32 0, metadata !2424, null}
!2424 = metadata !{i32 786443, metadata !1755, i32 1378, i32 0, metadata !6, i32 24} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2425 = metadata !{i32 1380, i32 0, metadata !2424, null}
!2426 = metadata !{i32 1382, i32 0, metadata !1755, null}
!2427 = metadata !{i32 1383, i32 0, metadata !1755, null}
!2428 = metadata !{i32 1384, i32 0, metadata !1755, null}
!2429 = metadata !{i32 1385, i32 0, metadata !1754, null}
!2430 = metadata !{i32 1386, i32 0, metadata !1752, null}
!2431 = metadata !{i32 1387, i32 0, metadata !2432, null}
!2432 = metadata !{i32 786443, metadata !1753, i32 1386, i32 0, metadata !6, i32 28} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2433 = metadata !{i32 1388, i32 0, metadata !2432, null}
!2434 = metadata !{i32 1391, i32 0, metadata !1755, null}
!2435 = metadata !{i32 1392, i32 0, metadata !1755, null}
!2436 = metadata !{i32 1395, i32 0, metadata !1755, null}
!2437 = metadata !{i32 1396, i32 0, metadata !1755, null}
!2438 = metadata !{i32 1397, i32 0, metadata !1755, null}
!2439 = metadata !{i32 1400, i32 0, metadata !1735, null}
!2440 = metadata !{i32 1402, i32 0, metadata !1758, null}
!2441 = metadata !{i32 1404, i32 0, metadata !1771, null}
!2442 = metadata !{i32 1405, i32 0, metadata !1771, null}
!2443 = metadata !{i32 1409, i32 0, metadata !2444, null}
!2444 = metadata !{i32 786443, metadata !1771, i32 1405, i32 0, metadata !6, i32 31} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2445 = metadata !{i32 1410, i32 0, metadata !2444, null}
!2446 = metadata !{i32 1411, i32 0, metadata !2444, null}
!2447 = metadata !{i32 1412, i32 0, metadata !2444, null}
!2448 = metadata !{i32 1413, i32 0, metadata !2444, null}
!2449 = metadata !{i32 1414, i32 0, metadata !2444, null}
!2450 = metadata !{i32 1415, i32 0, metadata !2444, null}
!2451 = metadata !{i32 1416, i32 0, metadata !2444, null}
!2452 = metadata !{i32 1421, i32 0, metadata !1771, null}
!2453 = metadata !{i32 1422, i32 0, metadata !2454, null}
!2454 = metadata !{i32 786443, metadata !1771, i32 1421, i32 0, metadata !6, i32 34} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2455 = metadata !{i32 786689, metadata !1786, metadata !"cf", metadata !6, i32 16778662, metadata !14, i32 0, metadata !2456} ; [ DW_TAG_arg_variable ] [cf] [line 1446]
!2456 = metadata !{i32 1423, i32 0, metadata !2457, null}
!2457 = metadata !{i32 786443, metadata !2454, i32 1422, i32 0, metadata !6, i32 35} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2458 = metadata !{i32 1446, i32 0, metadata !1786, metadata !2456}
!2459 = metadata !{i32 786689, metadata !1786, metadata !"types", metadata !6, i32 33555878, metadata !1737, i32 0, metadata !2456} ; [ DW_TAG_arg_variable ] [types] [line 1446]
!2460 = metadata !{i32 786689, metadata !1786, metadata !"default_type", metadata !6, i32 50333094, metadata !779, i32 0, metadata !2456} ; [ DW_TAG_arg_variable ] [default_type] [line 1446]
!2461 = metadata !{i32 1449, i32 0, metadata !1795, metadata !2456}
!2462 = metadata !{i32 1450, i32 0, metadata !1795, metadata !2456}
!2463 = metadata !{i32 1453, i32 0, metadata !1795, metadata !2456}
!2464 = metadata !{i32 1454, i32 0, metadata !2465, metadata !2456}
!2465 = metadata !{i32 786443, metadata !1795, i32 1453, i32 0, metadata !6, i32 41} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2466 = metadata !{i32 1455, i32 0, metadata !2465, metadata !2456}
!2467 = metadata !{i32 1458, i32 0, metadata !2465, metadata !2456}
!2468 = metadata !{i32 1459, i32 0, metadata !2465, metadata !2456}
!2469 = metadata !{i32 1460, i32 0, metadata !2465, metadata !2456}
!2470 = metadata !{i32 1461, i32 0, metadata !2465, metadata !2456}
!2471 = metadata !{i32 1438, i32 0, metadata !2454, null}
!2472 = metadata !{i32 1428, i32 0, metadata !2473, null}
!2473 = metadata !{i32 786443, metadata !2454, i32 1427, i32 0, metadata !6, i32 37} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2474 = metadata !{i32 1429, i32 0, metadata !2473, null}
!2475 = metadata !{i32 1431, i32 0, metadata !2454, null}
!2476 = metadata !{i32 1432, i32 0, metadata !2454, null}
!2477 = metadata !{i32 1433, i32 0, metadata !2454, null}
!2478 = metadata !{i32 1434, i32 0, metadata !2454, null}
!2479 = metadata !{i32 1435, i32 0, metadata !2454, null}
!2480 = metadata !{i32 1436, i32 0, metadata !2454, null}
!2481 = metadata !{i32 1437, i32 0, metadata !2454, null}
!2482 = metadata !{i32 1442, i32 0, metadata !1771, null}
!2483 = metadata !{i32 1443, i32 0, metadata !1771, null}
!2484 = metadata !{i32 1444, i32 0, metadata !1771, null}
!2485 = metadata !{i32 1446, i32 0, metadata !1786, null}
!2486 = metadata !{i32 1449, i32 0, metadata !1795, null}
!2487 = metadata !{i32 1450, i32 0, metadata !1795, null}
!2488 = metadata !{i32 1453, i32 0, metadata !1795, null}
!2489 = metadata !{i32 1454, i32 0, metadata !2465, null}
!2490 = metadata !{i32 1455, i32 0, metadata !2465, null}
!2491 = metadata !{i32 1458, i32 0, metadata !2465, null}
!2492 = metadata !{i32 1459, i32 0, metadata !2465, null}
!2493 = metadata !{i32 1460, i32 0, metadata !2465, null}
!2494 = metadata !{i32 1461, i32 0, metadata !2465, null}
!2495 = metadata !{i32 1464, i32 0, metadata !1795, null}
!2496 = metadata !{i32 996, i32 0, metadata !1819, null}
!2497 = metadata !{i32 1000, i32 0, metadata !1828, null}
!2498 = metadata !{i32 1001, i32 0, metadata !2499, null}
!2499 = metadata !{i32 786443, metadata !1828, i32 1000, i32 0, metadata !6, i32 48} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2500 = metadata !{i32 786689, metadata !1831, metadata !"array", metadata !25, i32 16777248, metadata !22, i32 0, metadata !2498} ; [ DW_TAG_arg_variable ] [array] [line 32]
!2501 = metadata !{i32 32, i32 0, metadata !1831, metadata !2498}
!2502 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2498} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2503 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2498} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2504 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2498} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2505 = metadata !{i32 39, i32 0, metadata !2357, metadata !2498}
!2506 = metadata !{i32 40, i32 0, metadata !2357, metadata !2498}
!2507 = metadata !{i32 41, i32 0, metadata !2357, metadata !2498}
!2508 = metadata !{i32 42, i32 0, metadata !2357, metadata !2498}
!2509 = metadata !{i32 44, i32 0, metadata !2357, metadata !2498}
!2510 = metadata !{i32 45, i32 0, metadata !2357, metadata !2498}
!2511 = metadata !{i32 1006, i32 0, metadata !2512, null}
!2512 = metadata !{i32 786443, metadata !1828, i32 1005, i32 0, metadata !6, i32 50} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2513 = metadata !{i32 1007, i32 0, metadata !2514, null}
!2514 = metadata !{i32 786443, metadata !2512, i32 1007, i32 0, metadata !6, i32 51} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2515 = metadata !{i32 1008, i32 0, metadata !2516, null}
!2516 = metadata !{i32 786443, metadata !2514, i32 1007, i32 0, metadata !6, i32 52} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2517 = metadata !{i32 1009, i32 0, metadata !2518, null}
!2518 = metadata !{i32 786443, metadata !2516, i32 1008, i32 0, metadata !6, i32 53} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2519 = metadata !{i32 1010, i32 0, metadata !2518, null}
!2520 = metadata !{i32 1014, i32 0, metadata !1828, null}
!2521 = metadata !{i32 1015, i32 0, metadata !1828, null}
!2522 = metadata !{i32 1018, i32 0, metadata !1828, null}
!2523 = metadata !{i32 1019, i32 0, metadata !1828, null}
!2524 = metadata !{i32 1020, i32 0, metadata !1828, null}
!2525 = metadata !{i32 50, i32 0, metadata !1857, null}
!2526 = metadata !{i32 56, i32 0, metadata !1864, null}
!2527 = metadata !{i32 63, i32 0, metadata !1864, null}
!2528 = metadata !{i32 64, i32 0, metadata !1864, null}
!2529 = metadata !{i32 67, i32 0, metadata !1864, null}
!2530 = metadata !{i32 69, i32 0, metadata !1864, null}
!2531 = metadata !{i32 70, i32 0, metadata !2532, null}
!2532 = metadata !{i32 786443, metadata !1864, i32 70, i32 0, metadata !6, i32 71} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2533 = metadata !{i32 71, i32 0, metadata !2534, null}
!2534 = metadata !{i32 786443, metadata !2532, i32 70, i32 0, metadata !6, i32 72} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2535 = metadata !{i32 74, i32 0, metadata !2534, null}
!2536 = metadata !{i32 75, i32 0, metadata !2534, null}
!2537 = metadata !{i32 77, i32 0, metadata !1864, null}
!2538 = metadata !{i32 78, i32 0, metadata !1864, null}
!2539 = metadata !{i32 85, i32 0, metadata !1864, null}
!2540 = metadata !{i32 86, i32 0, metadata !1864, null}
!2541 = metadata !{i32 93, i32 0, metadata !1864, null}
!2542 = metadata !{i32 94, i32 0, metadata !1864, null}
!2543 = metadata !{i32 101, i32 0, metadata !2544, null}
!2544 = metadata !{i32 786443, metadata !1864, i32 101, i32 0, metadata !6, i32 77} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2545 = metadata !{i32 102, i32 0, metadata !2546, null}
!2546 = metadata !{i32 786443, metadata !2544, i32 101, i32 0, metadata !6, i32 78} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2547 = metadata !{i32 105, i32 0, metadata !2546, null}
!2548 = metadata !{i32 106, i32 0, metadata !2546, null}
!2549 = metadata !{i32 107, i32 0, metadata !2546, null}
!2550 = metadata !{i32 108, i32 0, metadata !2551, null}
!2551 = metadata !{i32 786443, metadata !2546, i32 107, i32 0, metadata !6, i32 80} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2552 = metadata !{i32 109, i32 0, metadata !2551, null}
!2553 = metadata !{i32 113, i32 0, metadata !2546, null}
!2554 = metadata !{i32 114, i32 0, metadata !2555, null}
!2555 = metadata !{i32 786443, metadata !2546, i32 113, i32 0, metadata !6, i32 82} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2556 = metadata !{i32 115, i32 0, metadata !2555, null}
!2557 = metadata !{i32 119, i32 0, metadata !2546, null}
!2558 = metadata !{i32 120, i32 0, metadata !2559, null}
!2559 = metadata !{i32 786443, metadata !2546, i32 119, i32 0, metadata !6, i32 84} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2560 = metadata !{i32 121, i32 0, metadata !2559, null}
!2561 = metadata !{i32 126, i32 0, metadata !1864, null}
!2562 = metadata !{i64 0, i64 4, metadata !2247, i64 4, i64 4, metadata !2247, i64 8, i64 4, metadata !2247, i64 12, i64 4, metadata !2247, i64 16, i64 4, metadata !2247, i64 20, i64 4, metadata !2247, i64 24, i64 4, metadata !2247, i64 28, i64 4, metadata !2247, i64 32, i64 4, metadata !2269, i64 36, i64 4, metadata !2269, i64 40, i64 4, metadata !2247, i64 44, i64 4, metadata !2247}
!2563 = metadata !{i32 127, i32 0, metadata !1864, null}
!2564 = metadata !{i32 128, i32 0, metadata !2565, null}
!2565 = metadata !{i32 786443, metadata !1864, i32 128, i32 0, metadata !6, i32 86} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2566 = metadata !{i32 129, i32 0, metadata !2567, null}
!2567 = metadata !{i32 786443, metadata !2565, i32 128, i32 0, metadata !6, i32 87} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2568 = metadata !{i32 132, i32 0, metadata !2567, null}
!2569 = metadata !{i32 133, i32 0, metadata !2567, null}
!2570 = metadata !{i32 134, i32 0, metadata !2571, null}
!2571 = metadata !{i32 786443, metadata !2567, i32 133, i32 0, metadata !6, i32 89} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2572 = metadata !{i32 140, i32 0, metadata !1864, null}
!2573 = metadata !{i32 141, i32 0, metadata !1864, null}
!2574 = metadata !{i32 142, i32 0, metadata !1864, null}
!2575 = metadata !{i32 143, i32 0, metadata !1864, null}
!2576 = metadata !{i32 150, i32 0, metadata !1864, null}
!2577 = metadata !{i32 151, i32 0, metadata !1864, null}
!2578 = metadata !{i32 152, i32 0, metadata !2579, null}
!2579 = metadata !{i32 786443, metadata !1864, i32 152, i32 0, metadata !6, i32 92} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2580 = metadata !{i32 171, i32 0, metadata !2581, null}
!2581 = metadata !{i32 786443, metadata !1864, i32 171, i32 0, metadata !6, i32 98} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2582 = metadata !{i32 153, i32 0, metadata !2583, null}
!2583 = metadata !{i32 786443, metadata !2579, i32 152, i32 0, metadata !6, i32 93} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2584 = metadata !{i32 156, i32 0, metadata !2583, null}
!2585 = metadata !{i32 157, i32 0, metadata !2583, null}
!2586 = metadata !{i32 159, i32 0, metadata !2583, null}
!2587 = metadata !{i32 160, i32 0, metadata !2588, null}
!2588 = metadata !{i32 786443, metadata !2583, i32 159, i32 0, metadata !6, i32 95} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2589 = metadata !{i32 161, i32 0, metadata !2588, null}
!2590 = metadata !{i32 786689, metadata !2147, metadata !"cf", metadata !6, i32 16777598, metadata !14, i32 0, metadata !2591} ; [ DW_TAG_arg_variable ] [cf] [line 382]
!2591 = metadata !{i32 165, i32 0, metadata !2583, null}
!2592 = metadata !{i32 382, i32 0, metadata !2147, metadata !2591}
!2593 = metadata !{i32 786689, metadata !2147, metadata !"cmcf", metadata !6, i32 33554814, metadata !1673, i32 0, metadata !2591} ; [ DW_TAG_arg_variable ] [cmcf] [line 382]
!2594 = metadata !{i32 786689, metadata !2147, metadata !"module", metadata !6, i32 50332030, metadata !1870, i32 0, metadata !2591} ; [ DW_TAG_arg_variable ] [module] [line 382]
!2595 = metadata !{i32 786689, metadata !2147, metadata !"ctx_index", metadata !6, i32 67109246, metadata !30, i32 0, metadata !2591} ; [ DW_TAG_arg_variable ] [ctx_index] [line 382]
!2596 = metadata !{%struct.ngx_http_conf_ctx_t* undef}
!2597 = metadata !{i32 387, i32 0, metadata !2157, metadata !2591}
!2598 = metadata !{i32 390, i32 0, metadata !2157, metadata !2591}
!2599 = metadata !{i32 786688, metadata !2157, metadata !"cscfp", metadata !6, i32 389, metadata !1830, i32 0, metadata !2591} ; [ DW_TAG_auto_variable ] [cscfp] [line 389]
!2600 = metadata !{i32 391, i32 0, metadata !2157, metadata !2591}
!2601 = metadata !{i32 392, i32 0, metadata !2157, metadata !2591}
!2602 = metadata !{i8* null}
!2603 = metadata !{i32 786688, metadata !2157, metadata !"rv", metadata !6, i32 384, metadata !19, i32 0, metadata !2591} ; [ DW_TAG_auto_variable ] [rv] [line 384]
!2604 = metadata !{i32 393, i32 0, metadata !2157, metadata !2591}
!2605 = metadata !{i32 786688, metadata !2157, metadata !"s", metadata !6, i32 385, metadata !30, i32 0, metadata !2591} ; [ DW_TAG_auto_variable ] [s] [line 385]
!2606 = metadata !{i32 394, i32 0, metadata !2607, metadata !2591}
!2607 = metadata !{i32 786443, metadata !2157, i32 394, i32 0, metadata !6, i32 269} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2608 = metadata !{i32 398, i32 0, metadata !2609, metadata !2591}
!2609 = metadata !{i32 786443, metadata !2610, i32 397, i32 0, metadata !6, i32 271} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2610 = metadata !{i32 786443, metadata !2607, i32 394, i32 0, metadata !6, i32 270} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2611 = metadata !{i32 397, i32 0, metadata !2610, metadata !2591}
!2612 = metadata !{i32 403, i32 0, metadata !2610, metadata !2591}
!2613 = metadata !{i32 406, i32 0, metadata !2614, metadata !2591}
!2614 = metadata !{i32 786443, metadata !2610, i32 403, i32 0, metadata !6, i32 273} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2615 = metadata !{i32 396, i32 0, metadata !2610, metadata !2591}
!2616 = metadata !{i32 399, i32 0, metadata !2609, metadata !2591}
!2617 = metadata !{i32 405, i32 0, metadata !2614, metadata !2591}
!2618 = metadata !{i32 407, i32 0, metadata !2614, metadata !2591}
!2619 = metadata !{i32 411, i32 0, metadata !2614, metadata !2591}
!2620 = metadata !{i32 412, i32 0, metadata !2614, metadata !2591}
!2621 = metadata !{i32 413, i32 0, metadata !2614, metadata !2591}
!2622 = metadata !{i32 419, i32 0, metadata !2157, metadata !2591}
!2623 = metadata !{i32 166, i32 0, metadata !2583, null}
!2624 = metadata !{i32 172, i32 0, metadata !2625, null}
!2625 = metadata !{i32 786443, metadata !2581, i32 171, i32 0, metadata !6, i32 99} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2626 = metadata !{i32 173, i32 0, metadata !2625, null}
!2627 = metadata !{i32 176, i32 0, metadata !2625, null}
!2628 = metadata !{i32 786689, metadata !2045, metadata !"cf", metadata !6, i32 16777434, metadata !14, i32 0, metadata !2629} ; [ DW_TAG_arg_variable ] [cf] [line 218]
!2629 = metadata !{i32 180, i32 0, metadata !1864, null}
!2630 = metadata !{i32 218, i32 0, metadata !2045, metadata !2629}
!2631 = metadata !{i32 786689, metadata !2045, metadata !"cmcf", metadata !6, i32 33554650, metadata !1673, i32 0, metadata !2629} ; [ DW_TAG_arg_variable ] [cmcf] [line 218]
!2632 = metadata !{i32 220, i32 0, metadata !2633, metadata !2629}
!2633 = metadata !{i32 786443, metadata !2045, i32 219, i32 0, metadata !6, i32 199} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2634 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2632} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2635 = metadata !{i32 32, i32 0, metadata !1831, metadata !2632}
!2636 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2632} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2637 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2632} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2638 = metadata !{i32 39, i32 0, metadata !2357, metadata !2632}
!2639 = metadata !{i32 40, i32 0, metadata !2357, metadata !2632}
!2640 = metadata !{i32 41, i32 0, metadata !2357, metadata !2632}
!2641 = metadata !{i32 42, i32 0, metadata !2357, metadata !2632}
!2642 = metadata !{i32 44, i32 0, metadata !2357, metadata !2632}
!2643 = metadata !{i32 45, i32 0, metadata !2357, metadata !2632}
!2644 = metadata !{i32 223, i32 0, metadata !2633, metadata !2629}
!2645 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2644} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2646 = metadata !{i32 32, i32 0, metadata !1831, metadata !2644}
!2647 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2644} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2648 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2644} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2649 = metadata !{i32 39, i32 0, metadata !2357, metadata !2644}
!2650 = metadata !{i32 40, i32 0, metadata !2357, metadata !2644}
!2651 = metadata !{i32 41, i32 0, metadata !2357, metadata !2644}
!2652 = metadata !{i32 42, i32 0, metadata !2357, metadata !2644}
!2653 = metadata !{i32 44, i32 0, metadata !2357, metadata !2644}
!2654 = metadata !{i32 45, i32 0, metadata !2357, metadata !2644}
!2655 = metadata !{i32 226, i32 0, metadata !2633, metadata !2629}
!2656 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2655} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2657 = metadata !{i32 32, i32 0, metadata !1831, metadata !2655}
!2658 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2655} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2659 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2655} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2660 = metadata !{i32 39, i32 0, metadata !2357, metadata !2655}
!2661 = metadata !{i32 40, i32 0, metadata !2357, metadata !2655}
!2662 = metadata !{i32 41, i32 0, metadata !2357, metadata !2655}
!2663 = metadata !{i32 42, i32 0, metadata !2357, metadata !2655}
!2664 = metadata !{i32 44, i32 0, metadata !2357, metadata !2655}
!2665 = metadata !{i32 45, i32 0, metadata !2357, metadata !2655}
!2666 = metadata !{i32 229, i32 0, metadata !2633, metadata !2629}
!2667 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2666} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2668 = metadata !{i32 32, i32 0, metadata !1831, metadata !2666}
!2669 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2666} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2670 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2666} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2671 = metadata !{i32 39, i32 0, metadata !2357, metadata !2666}
!2672 = metadata !{i32 40, i32 0, metadata !2357, metadata !2666}
!2673 = metadata !{i32 41, i32 0, metadata !2357, metadata !2666}
!2674 = metadata !{i32 42, i32 0, metadata !2357, metadata !2666}
!2675 = metadata !{i32 44, i32 0, metadata !2357, metadata !2666}
!2676 = metadata !{i32 45, i32 0, metadata !2357, metadata !2666}
!2677 = metadata !{i32 232, i32 0, metadata !2633, metadata !2629}
!2678 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2677} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2679 = metadata !{i32 32, i32 0, metadata !1831, metadata !2677}
!2680 = metadata !{i32 2}
!2681 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2677} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2682 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2677} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2683 = metadata !{i32 39, i32 0, metadata !2357, metadata !2677}
!2684 = metadata !{i32 40, i32 0, metadata !2357, metadata !2677}
!2685 = metadata !{i32 41, i32 0, metadata !2357, metadata !2677}
!2686 = metadata !{i32 42, i32 0, metadata !2357, metadata !2677}
!2687 = metadata !{i32 44, i32 0, metadata !2357, metadata !2677}
!2688 = metadata !{i32 45, i32 0, metadata !2357, metadata !2677}
!2689 = metadata !{i32 235, i32 0, metadata !2633, metadata !2629}
!2690 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2689} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2691 = metadata !{i32 32, i32 0, metadata !1831, metadata !2689}
!2692 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2689} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2693 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2689} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2694 = metadata !{i32 39, i32 0, metadata !2357, metadata !2689}
!2695 = metadata !{i32 40, i32 0, metadata !2357, metadata !2689}
!2696 = metadata !{i32 41, i32 0, metadata !2357, metadata !2689}
!2697 = metadata !{i32 42, i32 0, metadata !2357, metadata !2689}
!2698 = metadata !{i32 44, i32 0, metadata !2357, metadata !2689}
!2699 = metadata !{i32 45, i32 0, metadata !2357, metadata !2689}
!2700 = metadata !{i32 238, i32 0, metadata !2633, metadata !2629}
!2701 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2700} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2702 = metadata !{i32 32, i32 0, metadata !1831, metadata !2700}
!2703 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2700} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2704 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2700} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2705 = metadata !{i32 39, i32 0, metadata !2357, metadata !2700}
!2706 = metadata !{i32 40, i32 0, metadata !2357, metadata !2700}
!2707 = metadata !{i32 41, i32 0, metadata !2357, metadata !2700}
!2708 = metadata !{i32 42, i32 0, metadata !2357, metadata !2700}
!2709 = metadata !{i32 44, i32 0, metadata !2357, metadata !2700}
!2710 = metadata !{i32 244, i32 0, metadata !2024, metadata !2711}
!2711 = metadata !{i32 183, i32 0, metadata !1864, null}
!2712 = metadata !{i32 786689, metadata !2024, metadata !"cf", metadata !6, i32 16777460, metadata !14, i32 0, metadata !2711} ; [ DW_TAG_arg_variable ] [cf] [line 244]
!2713 = metadata !{i32 786689, metadata !2024, metadata !"cmcf", metadata !6, i32 33554676, metadata !1673, i32 0, metadata !2711} ; [ DW_TAG_arg_variable ] [cmcf] [line 244]
!2714 = metadata !{i32 246, i32 0, metadata !2030, metadata !2711}
!2715 = metadata !{i32 248, i32 0, metadata !2030, metadata !2711}
!2716 = metadata !{i32 250, i32 0, metadata !2030, metadata !2711}
!2717 = metadata !{i32 786689, metadata !1831, metadata !"array", metadata !25, i32 16777248, metadata !22, i32 0, metadata !2716} ; [ DW_TAG_arg_variable ] [array] [line 32]
!2718 = metadata !{i32 32, i32 0, metadata !1831, metadata !2716}
!2719 = metadata !{i32 786689, metadata !1831, metadata !"pool", metadata !25, i32 33554464, metadata !38, i32 0, metadata !2716} ; [ DW_TAG_arg_variable ] [pool] [line 32]
!2720 = metadata !{i32 32}
!2721 = metadata !{i32 786689, metadata !1831, metadata !"n", metadata !25, i32 50331680, metadata !30, i32 0, metadata !2716} ; [ DW_TAG_arg_variable ] [n] [line 32]
!2722 = metadata !{i32 16}
!2723 = metadata !{i32 786689, metadata !1831, metadata !"size", metadata !25, i32 67108896, metadata !34, i32 0, metadata !2716} ; [ DW_TAG_arg_variable ] [size] [line 32]
!2724 = metadata !{i32 39, i32 0, metadata !2357, metadata !2716}
!2725 = metadata !{i32 40, i32 0, metadata !2357, metadata !2716}
!2726 = metadata !{i32 41, i32 0, metadata !2357, metadata !2716}
!2727 = metadata !{i32 42, i32 0, metadata !2357, metadata !2716}
!2728 = metadata !{i32 44, i32 0, metadata !2357, metadata !2716}
!2729 = metadata !{i32 45, i32 0, metadata !2357, metadata !2716}
!2730 = metadata !{i32 253, i32 0, metadata !2731, metadata !2711}
!2731 = metadata !{i32 786443, metadata !2030, i32 253, i32 0, metadata !6, i32 195} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2732 = metadata !{i32 254, i32 0, metadata !2733, metadata !2711}
!2733 = metadata !{i32 786443, metadata !2731, i32 253, i32 0, metadata !6, i32 196} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2734 = metadata !{i32 255, i32 0, metadata !2733, metadata !2711}
!2735 = metadata !{i32 258, i32 0, metadata !2733, metadata !2711}
!2736 = metadata !{i32 259, i32 0, metadata !2733, metadata !2711}
!2737 = metadata !{i32 260, i32 0, metadata !2733, metadata !2711}
!2738 = metadata !{i32 262, i32 0, metadata !2030, metadata !2711}
!2739 = metadata !{i32 263, i32 0, metadata !2030, metadata !2711}
!2740 = metadata !{i32 264, i32 0, metadata !2030, metadata !2711}
!2741 = metadata !{i32 265, i32 0, metadata !2030, metadata !2711}
!2742 = metadata !{i32 266, i32 0, metadata !2030, metadata !2711}
!2743 = metadata !{i32 267, i32 0, metadata !2030, metadata !2711}
!2744 = metadata !{i32 268, i32 0, metadata !2030, metadata !2711}
!2745 = metadata !{i32 269, i32 0, metadata !2030, metadata !2711}
!2746 = metadata !{i32 186, i32 0, metadata !2747, null}
!2747 = metadata !{i32 786443, metadata !1864, i32 186, i32 0, metadata !6, i32 104} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2748 = metadata !{i32 187, i32 0, metadata !2749, null}
!2749 = metadata !{i32 786443, metadata !2747, i32 186, i32 0, metadata !6, i32 105} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2750 = metadata !{i32 190, i32 0, metadata !2749, null}
!2751 = metadata !{i32 191, i32 0, metadata !2749, null}
!2752 = metadata !{i32 192, i32 0, metadata !2753, null}
!2753 = metadata !{i32 786443, metadata !2749, i32 191, i32 0, metadata !6, i32 107} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2754 = metadata !{i32 197, i32 0, metadata !1864, null}
!2755 = metadata !{i32 204, i32 0, metadata !1864, null}
!2756 = metadata !{i32 786689, metadata !2006, metadata !"cf", metadata !6, i32 16777491, metadata !14, i32 0, metadata !2757} ; [ DW_TAG_arg_variable ] [cf] [line 275]
!2757 = metadata !{i32 205, i32 0, metadata !1864, null}
!2758 = metadata !{i32 275, i32 0, metadata !2006, metadata !2757}
!2759 = metadata !{i32 786689, metadata !2006, metadata !"cmcf", metadata !6, i32 33554707, metadata !1673, i32 0, metadata !2757} ; [ DW_TAG_arg_variable ] [cmcf] [line 275]
!2760 = metadata !{i32 286, i32 0, metadata !2014, metadata !2757}
!2761 = metadata !{i32 287, i32 0, metadata !2014, metadata !2757}
!2762 = metadata !{i32 786688, metadata !2014, metadata !"find_config_index", metadata !6, i32 280, metadata !30, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [find_config_index] [line 280]
!2763 = metadata !{i32 288, i32 0, metadata !2014, metadata !2757}
!2764 = metadata !{i32 289, i32 0, metadata !2014, metadata !2757}
!2765 = metadata !{i32 786688, metadata !2014, metadata !"use_rewrite", metadata !6, i32 281, metadata !30, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [use_rewrite] [line 281]
!2766 = metadata !{i32 290, i32 0, metadata !2014, metadata !2757}
!2767 = metadata !{i32 786688, metadata !2014, metadata !"use_access", metadata !6, i32 282, metadata !30, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [use_access] [line 282]
!2768 = metadata !{i32 292, i32 0, metadata !2014, metadata !2757}
!2769 = metadata !{i32 294, i32 0, metadata !2770, metadata !2757}
!2770 = metadata !{i32 786443, metadata !2771, i32 293, i32 0, metadata !6, i32 173} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2771 = metadata !{i32 786443, metadata !2014, i32 293, i32 0, metadata !6, i32 172} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2772 = metadata !{i32 786688, metadata !2014, metadata !"n", metadata !6, i32 279, metadata !30, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [n] [line 279]
!2773 = metadata !{i32 293, i32 0, metadata !2771, metadata !2757}
!2774 = metadata !{i32 296, i32 0, metadata !2014, metadata !2757}
!2775 = metadata !{i32 786688, metadata !2014, metadata !"ph", metadata !6, i32 284, metadata !1683, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [ph] [line 284]
!2776 = metadata !{i32 297, i32 0, metadata !2014, metadata !2757}
!2777 = metadata !{i32 300, i32 0, metadata !2014, metadata !2757}
!2778 = metadata !{i32 301, i32 0, metadata !2014, metadata !2757}
!2779 = metadata !{i32 786688, metadata !2014, metadata !"i", metadata !6, i32 278, metadata !30, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [i] [line 278]
!2780 = metadata !{i32 302, i32 0, metadata !2781, metadata !2757}
!2781 = metadata !{i32 786443, metadata !2014, i32 302, i32 0, metadata !6, i32 175} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2782 = metadata !{i32 303, i32 0, metadata !2783, metadata !2757}
!2783 = metadata !{i32 786443, metadata !2781, i32 302, i32 0, metadata !6, i32 176} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2784 = metadata !{i32 786688, metadata !2014, metadata !"h", metadata !6, i32 283, metadata !2021, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [h] [line 283]
!2785 = metadata !{i32 304, i32 0, metadata !2783, metadata !2757}
!2786 = metadata !{i32 307, i32 0, metadata !2787, metadata !2757}
!2787 = metadata !{i32 786443, metadata !2788, i32 306, i32 0, metadata !6, i32 178} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2788 = metadata !{i32 786443, metadata !2783, i32 304, i32 0, metadata !6, i32 177} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2789 = metadata !{i32 308, i32 0, metadata !2790, metadata !2757}
!2790 = metadata !{i32 786443, metadata !2787, i32 307, i32 0, metadata !6, i32 179} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2791 = metadata !{i32 309, i32 0, metadata !2790, metadata !2757}
!2792 = metadata !{i32 315, i32 0, metadata !2793, metadata !2757}
!2793 = metadata !{i32 786443, metadata !2788, i32 314, i32 0, metadata !6, i32 180} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2794 = metadata !{i32 316, i32 0, metadata !2793, metadata !2757}
!2795 = metadata !{i32 317, i32 0, metadata !2793, metadata !2757}
!2796 = metadata !{i32 318, i32 0, metadata !2793, metadata !2757}
!2797 = metadata !{i32 319, i32 0, metadata !2793, metadata !2757}
!2798 = metadata !{i32 323, i32 0, metadata !2799, metadata !2757}
!2799 = metadata !{i32 786443, metadata !2788, i32 322, i32 0, metadata !6, i32 181} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2800 = metadata !{i32 324, i32 0, metadata !2801, metadata !2757}
!2801 = metadata !{i32 786443, metadata !2799, i32 323, i32 0, metadata !6, i32 182} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2802 = metadata !{i32 325, i32 0, metadata !2801, metadata !2757}
!2803 = metadata !{i32 331, i32 0, metadata !2804, metadata !2757}
!2804 = metadata !{i32 786443, metadata !2788, i32 330, i32 0, metadata !6, i32 183} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2805 = metadata !{i32 332, i32 0, metadata !2806, metadata !2757}
!2806 = metadata !{i32 786443, metadata !2804, i32 331, i32 0, metadata !6, i32 184} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2807 = metadata !{i32 333, i32 0, metadata !2806, metadata !2757}
!2808 = metadata !{i32 334, i32 0, metadata !2806, metadata !2757}
!2809 = metadata !{i32 335, i32 0, metadata !2806, metadata !2757}
!2810 = metadata !{i32 336, i32 0, metadata !2806, metadata !2757}
!2811 = metadata !{i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* @ngx_http_core_access_phase}
!2812 = metadata !{i32 786688, metadata !2014, metadata !"checker", metadata !6, i32 285, metadata !1688, i32 0, metadata !2757} ; [ DW_TAG_auto_variable ] [checker] [line 285]
!2813 = metadata !{i32 341, i32 0, metadata !2814, metadata !2757}
!2814 = metadata !{i32 786443, metadata !2788, i32 340, i32 0, metadata !6, i32 185} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2815 = metadata !{i32 342, i32 0, metadata !2814, metadata !2757}
!2816 = metadata !{i32 347, i32 0, metadata !2817, metadata !2757}
!2817 = metadata !{i32 786443, metadata !2788, i32 346, i32 0, metadata !6, i32 186} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2818 = metadata !{i32 348, i32 0, metadata !2819, metadata !2757}
!2819 = metadata !{i32 786443, metadata !2817, i32 347, i32 0, metadata !6, i32 187} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2820 = metadata !{i32 349, i32 0, metadata !2819, metadata !2757}
!2821 = metadata !{i32 350, i32 0, metadata !2819, metadata !2757}
!2822 = metadata !{i32 351, i32 0, metadata !2819, metadata !2757}
!2823 = metadata !{i32 356, i32 0, metadata !2824, metadata !2757}
!2824 = metadata !{i32 786443, metadata !2788, i32 355, i32 0, metadata !6, i32 188} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2825 = metadata !{i32 357, i32 0, metadata !2826, metadata !2757}
!2826 = metadata !{i32 786443, metadata !2824, i32 356, i32 0, metadata !6, i32 189} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2827 = metadata !{i32 358, i32 0, metadata !2826, metadata !2757}
!2828 = metadata !{i32 359, i32 0, metadata !2826, metadata !2757}
!2829 = metadata !{i32 360, i32 0, metadata !2826, metadata !2757}
!2830 = metadata !{i32 (%struct.ngx_http_request_s*, %struct.ngx_http_phase_handler_s*)* @ngx_http_core_generic_phase}
!2831 = metadata !{i32 369, i32 0, metadata !2788, metadata !2757}
!2832 = metadata !{i32 370, i32 0, metadata !2788, metadata !2757}
!2833 = metadata !{i32 371, i32 0, metadata !2783, metadata !2757}
!2834 = metadata !{i32 372, i32 0, metadata !2835, metadata !2757}
!2835 = metadata !{i32 786443, metadata !2783, i32 372, i32 0, metadata !6, i32 191} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2836 = metadata !{i32 373, i32 0, metadata !2837, metadata !2757}
!2837 = metadata !{i32 786443, metadata !2835, i32 372, i32 0, metadata !6, i32 192} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2838 = metadata !{i32 374, i32 0, metadata !2837, metadata !2757}
!2839 = metadata !{i32 375, i32 0, metadata !2837, metadata !2757}
!2840 = metadata !{i32 376, i32 0, metadata !2837, metadata !2757}
!2841 = metadata !{i32 209, i32 0, metadata !1864, null}
!2842 = metadata !{i32 786689, metadata !1898, metadata !"cf", metadata !6, i32 16778238, metadata !14, i32 0, metadata !2841} ; [ DW_TAG_arg_variable ] [cf] [line 1022]
!2843 = metadata !{i32 1022, i32 0, metadata !1898, metadata !2841}
!2844 = metadata !{i32 786689, metadata !1898, metadata !"cmcf", metadata !6, i32 33555454, metadata !1673, i32 0, metadata !2841} ; [ DW_TAG_arg_variable ] [cmcf] [line 1022]
!2845 = metadata !{i32 786689, metadata !1898, metadata !"ports", metadata !6, i32 50332670, metadata !22, i32 0, metadata !2841} ; [ DW_TAG_arg_variable ] [ports] [line 1022]
!2846 = metadata !{i32 1028, i32 0, metadata !1907, metadata !2841}
!2847 = metadata !{i32 1031, i32 0, metadata !1907, metadata !2841}
!2848 = metadata !{i32 786688, metadata !1907, metadata !"port", metadata !6, i32 1026, metadata !1665, i32 0, metadata !2841} ; [ DW_TAG_auto_variable ] [port] [line 1026]
!2849 = metadata !{i32 786688, metadata !1907, metadata !"p", metadata !6, i32 1024, metadata !30, i32 0, metadata !2841} ; [ DW_TAG_auto_variable ] [p] [line 1024]
!2850 = metadata !{i32 1032, i32 0, metadata !2851, metadata !2841}
!2851 = metadata !{i32 786443, metadata !1907, i32 1032, i32 0, metadata !6, i32 114} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2852 = metadata !{i32 1056, i32 0, metadata !1966, metadata !2853}
!2853 = metadata !{i32 1044, i32 0, metadata !2854, metadata !2841}
!2854 = metadata !{i32 786443, metadata !2855, i32 1043, i32 0, metadata !6, i32 118} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2855 = metadata !{i32 786443, metadata !2856, i32 1039, i32 0, metadata !6, i32 117} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2856 = metadata !{i32 786443, metadata !2857, i32 1039, i32 0, metadata !6, i32 116} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2857 = metadata !{i32 786443, metadata !2851, i32 1032, i32 0, metadata !6, i32 115} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2858 = metadata !{i32 1071, i32 0, metadata !1975, metadata !2853}
!2859 = metadata !{i32 1075, i32 0, metadata !1975, metadata !2853}
!2860 = metadata !{i32 1104, i32 0, metadata !1975, metadata !2853}
!2861 = metadata !{i32 1105, i32 0, metadata !1975, metadata !2853}
!2862 = metadata !{i32 1106, i32 0, metadata !1975, metadata !2853}
!2863 = metadata !{i32 1107, i32 0, metadata !1975, metadata !2853}
!2864 = metadata !{i32 1108, i32 0, metadata !1975, metadata !2853}
!2865 = metadata !{i32 1109, i32 0, metadata !1975, metadata !2853}
!2866 = metadata !{i32 1116, i32 0, metadata !1975, metadata !2853}
!2867 = metadata !{i32 1125, i32 0, metadata !1975, metadata !2853}
!2868 = metadata !{i32 1126, i32 0, metadata !2869, metadata !2853}
!2869 = metadata !{i32 786443, metadata !1975, i32 1125, i32 0, metadata !6, i32 156} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2870 = metadata !{i32 1127, i32 0, metadata !2869, metadata !2853}
!2871 = metadata !{i32 1128, i32 0, metadata !2869, metadata !2853}
!2872 = metadata !{i32 1117, i32 0, metadata !2873, metadata !2853}
!2873 = metadata !{i32 786443, metadata !1975, i32 1116, i32 0, metadata !6, i32 154} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2874 = metadata !{i32 1112, i32 0, metadata !2875, metadata !2853}
!2875 = metadata !{i32 786443, metadata !1975, i32 1109, i32 0, metadata !6, i32 152} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2876 = metadata !{i32 1033, i32 0, metadata !2857, metadata !2841}
!2877 = metadata !{i32 1038, i32 0, metadata !2857, metadata !2841}
!2878 = metadata !{i32 786688, metadata !1907, metadata !"addr", metadata !6, i32 1027, metadata !1807, i32 0, metadata !2841} ; [ DW_TAG_auto_variable ] [addr] [line 1027]
!2879 = metadata !{i32 786688, metadata !1907, metadata !"a", metadata !6, i32 1025, metadata !30, i32 0, metadata !2841} ; [ DW_TAG_auto_variable ] [a] [line 1025]
!2880 = metadata !{i32 1039, i32 0, metadata !2856, metadata !2841}
!2881 = metadata !{i32 1040, i32 0, metadata !2855, metadata !2841}
!2882 = metadata !{i32 786689, metadata !1966, metadata !"cf", metadata !6, i32 16778272, metadata !14, i32 0, metadata !2853} ; [ DW_TAG_arg_variable ] [cf] [line 1056]
!2883 = metadata !{i32 786689, metadata !1966, metadata !"cmcf", metadata !6, i32 33555488, metadata !1673, i32 0, metadata !2853} ; [ DW_TAG_arg_variable ] [cmcf] [line 1056]
!2884 = metadata !{i32 1061, i32 0, metadata !1975, metadata !2853}
!2885 = metadata !{i32 1062, i32 0, metadata !1975, metadata !2853}
!2886 = metadata !{i32 786688, metadata !1975, metadata !"regex", metadata !6, i32 1066, metadata !30, i32 0, metadata !2853} ; [ DW_TAG_auto_variable ] [regex] [line 1066]
!2887 = metadata !{i32 1068, i32 0, metadata !1975, metadata !2853}
!2888 = metadata !{i32 1070, i32 0, metadata !1975, metadata !2853}
!2889 = metadata !{i32 1072, i32 0, metadata !1975, metadata !2853}
!2890 = metadata !{i32 1076, i32 0, metadata !1975, metadata !2853}
!2891 = metadata !{i32 1079, i32 0, metadata !1975, metadata !2853}
!2892 = metadata !{i32 786688, metadata !1975, metadata !"cscfp", metadata !6, i32 1064, metadata !1830, i32 0, metadata !2853} ; [ DW_TAG_auto_variable ] [cscfp] [line 1064]
!2893 = metadata !{i32 786688, metadata !1975, metadata !"s", metadata !6, i32 1060, metadata !30, i32 0, metadata !2853} ; [ DW_TAG_auto_variable ] [s] [line 1060]
!2894 = metadata !{i32 1080, i32 0, metadata !2895, metadata !2853}
!2895 = metadata !{i32 786443, metadata !1975, i32 1080, i32 0, metadata !6, i32 144} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2896 = metadata !{i32 1100, i32 0, metadata !2897, metadata !2853}
!2897 = metadata !{i32 786443, metadata !2898, i32 1098, i32 0, metadata !6, i32 151} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2898 = metadata !{i32 786443, metadata !2899, i32 1082, i32 0, metadata !6, i32 147} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2899 = metadata !{i32 786443, metadata !2900, i32 1082, i32 0, metadata !6, i32 146} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2900 = metadata !{i32 786443, metadata !2895, i32 1080, i32 0, metadata !6, i32 145} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2901 = metadata !{i32 1081, i32 0, metadata !2900, metadata !2853}
!2902 = metadata !{i32 786688, metadata !1975, metadata !"name", metadata !6, i32 1063, metadata !1320, i32 0, metadata !2853} ; [ DW_TAG_auto_variable ] [name] [line 1063]
!2903 = metadata !{i32 786688, metadata !1975, metadata !"n", metadata !6, i32 1059, metadata !30, i32 0, metadata !2853} ; [ DW_TAG_auto_variable ] [n] [line 1059]
!2904 = metadata !{i32 1082, i32 0, metadata !2899, metadata !2853}
!2905 = metadata !{i32 1084, i32 0, metadata !2898, metadata !2853}
!2906 = metadata !{i32 1085, i32 0, metadata !2907, metadata !2853}
!2907 = metadata !{i32 786443, metadata !2898, i32 1084, i32 0, metadata !6, i32 148} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2908 = metadata !{i32 1089, i32 0, metadata !2898, metadata !2853}
!2909 = metadata !{i32 786688, metadata !1975, metadata !"rc", metadata !6, i32 1058, metadata !9, i32 0, metadata !2853} ; [ DW_TAG_auto_variable ] [rc] [line 1058]
!2910 = metadata !{i32 1090, i32 0, metadata !2898, metadata !2853}
!2911 = metadata !{i32 1094, i32 0, metadata !2912, metadata !2853}
!2912 = metadata !{i32 786443, metadata !2898, i32 1093, i32 0, metadata !6, i32 150} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2913 = metadata !{i32 1095, i32 0, metadata !2912, metadata !2853}
!2914 = metadata !{i32 1099, i32 0, metadata !2897, metadata !2853}
!2915 = metadata !{i32 1110, i32 0, metadata !2875, metadata !2853}
!2916 = metadata !{i32 1111, i32 0, metadata !2875, metadata !2853}
!2917 = metadata !{i32 1118, i32 0, metadata !2873, metadata !2853}
!2918 = metadata !{i32 1119, i32 0, metadata !2873, metadata !2853}
!2919 = metadata !{i32 1120, i32 0, metadata !2873, metadata !2853}
!2920 = metadata !{i32 1123, i32 0, metadata !2873, metadata !2853}
!2921 = metadata !{i32 1124, i32 0, metadata !2873, metadata !2853}
!2922 = metadata !{i32 1129, i32 0, metadata !2869, metadata !2853}
!2923 = metadata !{i32 1132, i32 0, metadata !2869, metadata !2853}
!2924 = metadata !{i32 1133, i32 0, metadata !2869, metadata !2853}
!2925 = metadata !{i32 1134, i32 0, metadata !1975, metadata !2853}
!2926 = metadata !{i32 1136, i32 0, metadata !1975, metadata !2853}
!2927 = metadata !{i32 1139, i32 0, metadata !1975, metadata !2853}
!2928 = metadata !{i32 1140, i32 0, metadata !1975, metadata !2853}
!2929 = metadata !{i32 1141, i32 0, metadata !1975, metadata !2853}
!2930 = metadata !{i32 1145, i32 0, metadata !2931, metadata !2853}
!2931 = metadata !{i32 786443, metadata !1975, i32 1145, i32 0, metadata !6, i32 160} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2932 = metadata !{i32 1146, i32 0, metadata !2933, metadata !2853}
!2933 = metadata !{i32 786443, metadata !2931, i32 1145, i32 0, metadata !6, i32 161} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2934 = metadata !{i32 1147, i32 0, metadata !2935, metadata !2853}
!2935 = metadata !{i32 786443, metadata !2933, i32 1147, i32 0, metadata !6, i32 162} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2936 = metadata !{i32 1148, i32 0, metadata !2937, metadata !2853}
!2937 = metadata !{i32 786443, metadata !2935, i32 1147, i32 0, metadata !6, i32 163} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2938 = metadata !{i32 1149, i32 0, metadata !2939, metadata !2853}
!2939 = metadata !{i32 786443, metadata !2937, i32 1148, i32 0, metadata !6, i32 164} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2940 = metadata !{i32 786688, metadata !1975, metadata !"i", metadata !6, i32 1067, metadata !30, i32 0, metadata !2853} ; [ DW_TAG_auto_variable ] [i] [line 1067]
!2941 = metadata !{i64 0, i64 4, metadata !2247, i64 4, i64 4, metadata !2247, i64 8, i64 4, metadata !2269, i64 12, i64 4, metadata !2247}
!2942 = metadata !{i32 1150, i32 0, metadata !2939, metadata !2853}
!2943 = metadata !{i32 1156, i32 0, metadata !1975, metadata !2853}
!2944 = metadata !{i32 1157, i32 0, metadata !1975, metadata !2853}
!2945 = metadata !{i32 1203, i32 0, metadata !1919, metadata !2946}
!2946 = metadata !{i32 1049, i32 0, metadata !2857, metadata !2841}
!2947 = metadata !{i32 786689, metadata !1911, metadata !"cf", metadata !6, i32 16778411, metadata !14, i32 0, metadata !2946} ; [ DW_TAG_arg_variable ] [cf] [line 1195]
!2948 = metadata !{i32 1195, i32 0, metadata !1911, metadata !2946}
!2949 = metadata !{i32 786688, metadata !1919, metadata !"addr", metadata !6, i32 1202, metadata !1807, i32 0, metadata !2946} ; [ DW_TAG_auto_variable ] [addr] [line 1202]
!2950 = metadata !{i32 786688, metadata !1919, metadata !"last", metadata !6, i32 1198, metadata !30, i32 0, metadata !2946} ; [ DW_TAG_auto_variable ] [last] [line 1198]
!2951 = metadata !{i32 1204, i32 0, metadata !1919, metadata !2946}
!2952 = metadata !{i32 1211, i32 0, metadata !1919, metadata !2946}
!2953 = metadata !{i32 1212, i32 0, metadata !2954, metadata !2946}
!2954 = metadata !{i32 786443, metadata !1919, i32 1211, i32 0, metadata !6, i32 122} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2955 = metadata !{i32 786688, metadata !1919, metadata !"bind_wildcard", metadata !6, i32 1199, metadata !30, i32 0, metadata !2946} ; [ DW_TAG_auto_variable ] [bind_wildcard] [line 1199]
!2956 = metadata !{i32 1213, i32 0, metadata !2954, metadata !2946}
!2957 = metadata !{i32 1214, i32 0, metadata !2954, metadata !2946}
!2958 = metadata !{i32 786688, metadata !1919, metadata !"i", metadata !6, i32 1197, metadata !30, i32 0, metadata !2946} ; [ DW_TAG_auto_variable ] [i] [line 1197]
!2959 = metadata !{i32 1218, i32 0, metadata !1919, metadata !2946}
!2960 = metadata !{i32 1219, i32 0, metadata !1919, metadata !2946}
!2961 = metadata !{i32 1220, i32 0, metadata !2962, metadata !2946}
!2962 = metadata !{i32 786443, metadata !1919, i32 1219, i32 0, metadata !6, i32 124} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2963 = metadata !{i32 1221, i32 0, metadata !2964, metadata !2946}
!2964 = metadata !{i32 786443, metadata !2962, i32 1220, i32 0, metadata !6, i32 125} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2965 = metadata !{i32 1224, i32 0, metadata !2962, metadata !2946}
!2966 = metadata !{i32 786689, metadata !1955, metadata !"cf", metadata !6, i32 16778474, metadata !14, i32 0, metadata !2965} ; [ DW_TAG_arg_variable ] [cf] [line 1258]
!2967 = metadata !{i32 1258, i32 0, metadata !1955, metadata !2965}
!2968 = metadata !{i32 786689, metadata !1955, metadata !"addr", metadata !6, i32 33555690, metadata !1807, i32 0, metadata !2965} ; [ DW_TAG_arg_variable ] [addr] [line 1258]
!2969 = metadata !{i32 1263, i32 0, metadata !1963, metadata !2965}
!2970 = metadata !{i32 786688, metadata !1963, metadata !"ls", metadata !6, i32 1260, metadata !306, i32 0, metadata !2965} ; [ DW_TAG_auto_variable ] [ls] [line 1260]
!2971 = metadata !{i32 1264, i32 0, metadata !1963, metadata !2965}
!2972 = metadata !{i32 1267, i32 0, metadata !1963, metadata !2965}
!2973 = metadata !{i32 1268, i32 0, metadata !1963, metadata !2965}
!2974 = metadata !{i32 1269, i32 0, metadata !1963, metadata !2965}
!2975 = metadata !{i32 786688, metadata !1963, metadata !"cscf", metadata !6, i32 1262, metadata !1326, i32 0, metadata !2965} ; [ DW_TAG_auto_variable ] [cscf] [line 1262]
!2976 = metadata !{i32 1270, i32 0, metadata !1963, metadata !2965}
!2977 = metadata !{i32 1271, i32 0, metadata !1963, metadata !2965}
!2978 = metadata !{i32 1272, i32 0, metadata !1963, metadata !2965}
!2979 = metadata !{i32 1273, i32 0, metadata !1963, metadata !2965}
!2980 = metadata !{i32 1274, i32 0, metadata !1963, metadata !2965}
!2981 = metadata !{i32 1275, i32 0, metadata !1963, metadata !2965}
!2982 = metadata !{i32 1278, i32 0, metadata !1963, metadata !2965}
!2983 = metadata !{i32 1279, i32 0, metadata !1963, metadata !2965}
!2984 = metadata !{i32 1280, i32 0, metadata !1963, metadata !2965}
!2985 = metadata !{i32 1281, i32 0, metadata !1963, metadata !2965}
!2986 = metadata !{i32 1283, i32 0, metadata !1963, metadata !2965}
!2987 = metadata !{i32 1284, i32 0, metadata !1963, metadata !2965}
!2988 = metadata !{i32 1285, i32 0, metadata !1963, metadata !2965}
!2989 = metadata !{i32 1290, i32 0, metadata !1963, metadata !2965}
!2990 = metadata !{i32 786688, metadata !1919, metadata !"ls", metadata !6, i32 1200, metadata !306, i32 0, metadata !2946} ; [ DW_TAG_auto_variable ] [ls] [line 1200]
!2991 = metadata !{i32 1228, i32 0, metadata !2962, metadata !2946}
!2992 = metadata !{i32 1229, i32 0, metadata !2962, metadata !2946}
!2993 = metadata !{i32 1232, i32 0, metadata !2962, metadata !2946}
!2994 = metadata !{i32 1233, i32 0, metadata !2962, metadata !2946}
!2995 = metadata !{i32 1234, i32 0, metadata !2996, metadata !2946}
!2996 = metadata !{i32 786443, metadata !2962, i32 1233, i32 0, metadata !6, i32 128} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!2997 = metadata !{i32 1235, i32 0, metadata !2996, metadata !2946}
!2998 = metadata !{i32 786689, metadata !1931, metadata !"cf", metadata !6, i32 16778515, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_arg_variable ] [cf] [line 1299]
!2999 = metadata !{i32 1246, i32 0, metadata !3000, metadata !2946}
!3000 = metadata !{i32 786443, metadata !3001, i32 1242, i32 0, metadata !6, i32 131} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3001 = metadata !{i32 786443, metadata !2962, i32 1240, i32 0, metadata !6, i32 130} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3002 = metadata !{i32 1299, i32 0, metadata !1931, metadata !2999}
!3003 = metadata !{i32 786689, metadata !1931, metadata !"addr", metadata !6, i32 50332947, metadata !1807, i32 0, metadata !2999} ; [ DW_TAG_arg_variable ] [addr] [line 1299]
!3004 = metadata !{i32 1305, i32 0, metadata !1940, metadata !2999}
!3005 = metadata !{i32 1306, i32 0, metadata !1940, metadata !2999}
!3006 = metadata !{i32 1309, i32 0, metadata !1940, metadata !2999}
!3007 = metadata !{i32 786688, metadata !1940, metadata !"addrs", metadata !6, i32 1302, metadata !1942, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [addrs] [line 1302]
!3008 = metadata !{i32 786688, metadata !1940, metadata !"i", metadata !6, i32 1301, metadata !30, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [i] [line 1301]
!3009 = metadata !{i32 1310, i32 0, metadata !3010, metadata !2999}
!3010 = metadata !{i32 786443, metadata !1940, i32 1310, i32 0, metadata !6, i32 135} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3011 = metadata !{i32 1312, i32 0, metadata !3012, metadata !2999}
!3012 = metadata !{i32 786443, metadata !3010, i32 1310, i32 0, metadata !6, i32 136} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3013 = metadata !{i32 1313, i32 0, metadata !3012, metadata !2999}
!3014 = metadata !{i32 1316, i32 0, metadata !3012, metadata !2999}
!3015 = metadata !{i32 1322, i32 0, metadata !3012, metadata !2999}
!3016 = metadata !{i32 1323, i32 0, metadata !3012, metadata !2999}
!3017 = metadata !{i32 1326, i32 0, metadata !3012, metadata !2999}
!3018 = metadata !{i32 1327, i32 0, metadata !3012, metadata !2999}
!3019 = metadata !{i32 1328, i32 0, metadata !3012, metadata !2999}
!3020 = metadata !{i32 1329, i32 0, metadata !3012, metadata !2999}
!3021 = metadata !{i32 1331, i32 0, metadata !3012, metadata !2999}
!3022 = metadata !{i32 1332, i32 0, metadata !3012, metadata !2999}
!3023 = metadata !{i32 1334, i32 0, metadata !3012, metadata !2999}
!3024 = metadata !{i32 1252, i32 0, metadata !2962, metadata !2946}
!3025 = metadata !{i32 1253, i32 0, metadata !2962, metadata !2946}
!3026 = metadata !{i32 214, i32 0, metadata !1864, null}
!3027 = metadata !{i32 215, i32 0, metadata !1864, null}
!3028 = metadata !{i32 453, i32 0, metadata !2106, null}
!3029 = metadata !{i32 459, i32 0, metadata !2115, null}
!3030 = metadata !{i32 467, i32 0, metadata !2115, null}
!3031 = metadata !{i32 468, i32 0, metadata !2115, null}
!3032 = metadata !{i32 471, i32 0, metadata !2115, null}
!3033 = metadata !{%struct.ngx_queue_s* null}
!3034 = metadata !{i32 472, i32 0, metadata !2115, null}
!3035 = metadata !{i32 473, i32 0, metadata !2115, null}
!3036 = metadata !{i32 475, i32 0, metadata !2115, null}
!3037 = metadata !{i32 476, i32 0, metadata !2115, null}
!3038 = metadata !{i32 478, i32 0, metadata !3039, null}
!3039 = metadata !{i32 786443, metadata !2115, i32 478, i32 0, metadata !6, i32 238} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3040 = metadata !{i32 480, i32 0, metadata !3041, null}
!3041 = metadata !{i32 786443, metadata !3039, i32 478, i32 0, metadata !6, i32 239} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3042 = metadata !{i32 481, i32 0, metadata !3041, null}
!3043 = metadata !{i32 485, i32 0, metadata !3041, null}
!3044 = metadata !{i32 486, i32 0, metadata !3045, null}
!3045 = metadata !{i32 786443, metadata !3041, i32 485, i32 0, metadata !6, i32 241} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3046 = metadata !{i32 487, i32 0, metadata !3045, null}
!3047 = metadata !{i32 493, i32 0, metadata !3041, null}
!3048 = metadata !{i32 494, i32 0, metadata !3049, null}
!3049 = metadata !{i32 786443, metadata !3041, i32 493, i32 0, metadata !6, i32 243} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3050 = metadata !{i32 495, i32 0, metadata !3049, null}
!3051 = metadata !{i32 500, i32 0, metadata !3041, null}
!3052 = metadata !{i32 505, i32 0, metadata !3053, null}
!3053 = metadata !{i32 786443, metadata !2115, i32 504, i32 0, metadata !6, i32 246} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3054 = metadata !{i32 506, i32 0, metadata !3053, null}
!3055 = metadata !{i32 507, i32 0, metadata !3053, null}
!3056 = metadata !{i32 508, i32 0, metadata !3053, null}
!3057 = metadata !{i32 509, i32 0, metadata !3053, null}
!3058 = metadata !{i32 510, i32 0, metadata !3053, null}
!3059 = metadata !{i32 512, i32 0, metadata !3053, null}
!3060 = metadata !{i32 513, i32 0, metadata !2115, null}
!3061 = metadata !{i32 514, i32 0, metadata !3062, null}
!3062 = metadata !{i32 786443, metadata !2115, i32 513, i32 0, metadata !6, i32 247} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3063 = metadata !{i32 515, i32 0, metadata !3062, null}
!3064 = metadata !{i32 518, i32 0, metadata !3062, null}
!3065 = metadata !{i32 519, i32 0, metadata !3066, null}
!3066 = metadata !{i32 786443, metadata !3062, i32 519, i32 0, metadata !6, i32 249} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3067 = metadata !{i32 521, i32 0, metadata !3068, null}
!3068 = metadata !{i32 786443, metadata !3066, i32 519, i32 0, metadata !6, i32 250} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3069 = metadata !{i32 523, i32 0, metadata !3062, null}
!3070 = metadata !{i32 524, i32 0, metadata !3062, null}
!3071 = metadata !{i32 525, i32 0, metadata !3062, null}
!3072 = metadata !{i32 526, i32 0, metadata !3062, null}
!3073 = metadata !{i32 527, i32 0, metadata !3062, null}
!3074 = metadata !{i32 528, i32 0, metadata !3062, null}
!3075 = metadata !{i32 529, i32 0, metadata !3062, null}
!3076 = metadata !{i32 531, i32 0, metadata !3062, null}
!3077 = metadata !{i32 533, i32 0, metadata !2115, null}
!3078 = metadata !{i32 534, i32 0, metadata !3079, null}
!3079 = metadata !{i32 786443, metadata !2115, i32 533, i32 0, metadata !6, i32 251} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3080 = metadata !{i32 535, i32 0, metadata !3079, null}
!3081 = metadata !{i32 538, i32 0, metadata !3079, null}
!3082 = metadata !{i32 539, i32 0, metadata !3083, null}
!3083 = metadata !{i32 786443, metadata !3079, i32 539, i32 0, metadata !6, i32 253} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3084 = metadata !{i32 541, i32 0, metadata !3085, null}
!3085 = metadata !{i32 786443, metadata !3083, i32 539, i32 0, metadata !6, i32 254} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3086 = metadata !{i32 543, i32 0, metadata !3079, null}
!3087 = metadata !{i32 544, i32 0, metadata !3079, null}
!3088 = metadata !{i32 545, i32 0, metadata !3079, null}
!3089 = metadata !{i32 546, i32 0, metadata !3079, null}
!3090 = metadata !{i32 547, i32 0, metadata !3079, null}
!3091 = metadata !{i32 548, i32 0, metadata !3079, null}
!3092 = metadata !{i32 549, i32 0, metadata !3079, null}
!3093 = metadata !{i32 551, i32 0, metadata !3079, null}
!3094 = metadata !{i32 554, i32 0, metadata !2115, null}
!3095 = metadata !{i32 556, i32 0, metadata !2050, null}
!3096 = metadata !{i32 562, i32 0, metadata !2058, null}
!3097 = metadata !{i32 563, i32 0, metadata !2058, null}
!3098 = metadata !{i32 566, i32 0, metadata !2058, null}
!3099 = metadata !{i32 569, i32 0, metadata !3100, null}
!3100 = metadata !{i32 786443, metadata !2058, i32 569, i32 0, metadata !6, i32 210} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3101 = metadata !{i32 571, i32 0, metadata !3102, null}
!3102 = metadata !{i32 786443, metadata !3100, i32 569, i32 0, metadata !6, i32 211} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3103 = metadata !{i32 572, i32 0, metadata !3102, null}
!3104 = metadata !{i32 786689, metadata !2090, metadata !"cf", metadata !6, i32 16777897, metadata !14, i32 0, metadata !3105} ; [ DW_TAG_arg_variable ] [cf] [line 681]
!3105 = metadata !{i32 576, i32 0, metadata !2058, null}
!3106 = metadata !{i32 681, i32 0, metadata !2090, metadata !3105}
!3107 = metadata !{i32 786689, metadata !2090, metadata !"locations", metadata !6, i32 33555113, metadata !376, i32 0, metadata !3105} ; [ DW_TAG_arg_variable ] [locations] [line 681]
!3108 = metadata !{i32 687, i32 0, metadata !2098, metadata !3105}
!3109 = metadata !{i32 786688, metadata !2098, metadata !"q", metadata !6, i32 683, metadata !376, i32 0, metadata !3105} ; [ DW_TAG_auto_variable ] [q] [line 683]
!3110 = metadata !{i32 688, i32 0, metadata !2098, metadata !3105}
!3111 = metadata !{i32 689, i32 0, metadata !2104, metadata !3105}
!3112 = metadata !{i32 692, i32 0, metadata !2103, metadata !3105}
!3113 = metadata !{i32 693, i32 0, metadata !3114, metadata !3105}
!3114 = metadata !{i32 786443, metadata !2104, i32 692, i32 0, metadata !6, i32 234} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3115 = metadata !{i32 786688, metadata !2098, metadata !"x", metadata !6, i32 684, metadata !376, i32 0, metadata !3105} ; [ DW_TAG_auto_variable ] [x] [line 684]
!3116 = metadata !{i32 698, i32 0, metadata !3114, metadata !3105}
!3117 = metadata !{i32 694, i32 0, metadata !3118, metadata !3105}
!3118 = metadata !{i32 786443, metadata !3114, i32 693, i32 0, metadata !6, i32 235} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3119 = metadata !{i32 695, i32 0, metadata !3118, metadata !3105}
!3120 = metadata !{i32 699, i32 0, metadata !3114, metadata !3105}
!3121 = metadata !{i32 700, i32 0, metadata !3114, metadata !3105}
!3122 = metadata !{i32 579, i32 0, metadata !2058, null}
!3123 = metadata !{i32 580, i32 0, metadata !2058, null}
!3124 = metadata !{i32 581, i32 0, metadata !2058, null}
!3125 = metadata !{i32 585, i32 0, metadata !2058, null}
!3126 = metadata !{i32 1160, i32 0, metadata !1996, null}
!3127 = metadata !{i32 1166, i32 0, metadata !2004, null}
!3128 = metadata !{i32 1170, i32 0, metadata !2004, null}
!3129 = metadata !{i32 1174, i32 0, metadata !2004, null}
!3130 = metadata !{i32 1178, i32 0, metadata !2004, null}
!3131 = metadata !{i32 1183, i32 0, metadata !2004, null}
!3132 = metadata !{i32 1184, i32 0, metadata !2004, null}
!3133 = metadata !{i32 1186, i32 0, metadata !1984, null}
!3134 = metadata !{i32 1192, i32 0, metadata !1994, null}
!3135 = metadata !{i32 708, i32 0, metadata !2076, null}
!3136 = metadata !{i32 713, i32 0, metadata !2084, null}
!3137 = metadata !{i32 716, i32 0, metadata !2084, null}
!3138 = metadata !{i32 720, i32 0, metadata !2084, null}
!3139 = metadata !{i32 721, i32 0, metadata !3140, null}
!3140 = metadata !{i32 786443, metadata !2084, i32 720, i32 0, metadata !6, i32 225} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3141 = metadata !{i32 722, i32 0, metadata !3140, null}
!3142 = metadata !{i32 724, i32 0, metadata !2084, null}
!3143 = metadata !{i32 725, i32 0, metadata !2084, null}
!3144 = metadata !{i32 726, i32 0, metadata !3145, null}
!3145 = metadata !{i32 786443, metadata !2084, i32 726, i32 0, metadata !6, i32 226} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3146 = metadata !{i32 728, i32 0, metadata !3147, null}
!3147 = metadata !{i32 786443, metadata !3145, i32 726, i32 0, metadata !6, i32 227} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3148 = metadata !{i32 732, i32 0, metadata !2084, null}
!3149 = metadata !{i32 733, i32 0, metadata !2084, null}
!3150 = metadata !{i32 734, i32 0, metadata !3151, null}
!3151 = metadata !{i32 786443, metadata !2084, i32 733, i32 0, metadata !6, i32 229} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3152 = metadata !{i32 735, i32 0, metadata !3151, null}
!3153 = metadata !{i32 737, i32 0, metadata !2084, null}
!3154 = metadata !{i32 738, i32 0, metadata !2084, null}
!3155 = metadata !{i32 739, i32 0, metadata !2084, null}
!3156 = metadata !{i32 740, i32 0, metadata !2084, null}
!3157 = metadata !{i32 741, i32 0, metadata !2084, null}
!3158 = metadata !{i32 742, i32 0, metadata !2084, null}
!3159 = metadata !{i32 744, i32 0, metadata !2084, null}
!3160 = metadata !{i32 745, i32 0, metadata !2084, null}
!3161 = metadata !{i32 746, i32 0, metadata !2084, null}
!3162 = metadata !{i32 747, i32 0, metadata !2084, null}
!3163 = metadata !{i32 749, i32 0, metadata !2084, null}
!3164 = metadata !{i32 750, i32 0, metadata !3165, null}
!3165 = metadata !{i32 786443, metadata !2084, i32 749, i32 0, metadata !6, i32 230} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3166 = metadata !{i32 751, i32 0, metadata !3165, null}
!3167 = metadata !{i32 753, i32 0, metadata !2084, null}
!3168 = metadata !{i32 754, i32 0, metadata !2084, null}
!3169 = metadata !{i32 755, i32 0, metadata !2084, null}
!3170 = metadata !{i32 756, i32 0, metadata !2084, null}
!3171 = metadata !{i32 757, i32 0, metadata !2084, null}
!3172 = metadata !{i32 758, i32 0, metadata !2084, null}
!3173 = metadata !{i32 760, i32 0, metadata !2084, null}
!3174 = metadata !{i32 761, i32 0, metadata !2084, null}
!3175 = metadata !{i32 762, i32 0, metadata !2084, null}
!3176 = metadata !{i32 763, i32 0, metadata !2084, null}
!3177 = metadata !{i32 765, i32 0, metadata !2084, null}
!3178 = metadata !{i32 766, i32 0, metadata !2084, null}
!3179 = metadata !{i32 767, i32 0, metadata !2084, null}
!3180 = metadata !{i32 773, i32 0, metadata !2062, null}
!3181 = metadata !{i32 777, i32 0, metadata !2071, null}
!3182 = metadata !{i32 780, i32 0, metadata !2071, null}
!3183 = metadata !{i32 782, i32 0, metadata !2071, null}
!3184 = metadata !{i32 783, i32 0, metadata !2071, null}
!3185 = metadata !{i32 784, i32 0, metadata !2071, null}
!3186 = metadata !{i32 787, i32 0, metadata !2071, null}
!3187 = metadata !{i32 788, i32 0, metadata !2071, null}
!3188 = metadata !{i32 789, i32 0, metadata !2071, null}
!3189 = metadata !{i32 790, i32 0, metadata !2071, null}
!3190 = metadata !{i32 791, i32 0, metadata !2071, null}
!3191 = metadata !{i32 792, i32 0, metadata !2071, null}
!3192 = metadata !{i32 793, i32 0, metadata !2071, null}
!3193 = metadata !{i32 794, i32 0, metadata !2071, null}
!3194 = metadata !{i32 795, i32 0, metadata !2071, null}
!3195 = metadata !{i32 796, i32 0, metadata !2071, null}
!3196 = metadata !{i32 797, i32 0, metadata !2071, null}
!3197 = metadata !{i32 798, i32 0, metadata !2071, null}
!3198 = metadata !{i32 799, i32 0, metadata !2071, null}
!3199 = metadata !{i32 800, i32 0, metadata !2071, null}
!3200 = metadata !{i32 802, i32 0, metadata !2071, null}
!3201 = metadata !{i32 809, i32 0, metadata !2071, null}
!3202 = metadata !{i32 810, i32 0, metadata !2071, null}
!3203 = metadata !{i32 813, i32 0, metadata !2071, null}
!3204 = metadata !{i32 814, i32 0, metadata !2071, null}
!3205 = metadata !{i32 815, i32 0, metadata !2071, null}
!3206 = metadata !{i32 818, i32 0, metadata !2071, null}
!3207 = metadata !{i32 819, i32 0, metadata !2071, null}
!3208 = metadata !{i32 823, i32 0, metadata !2071, null}
!3209 = metadata !{i32 826, i32 0, metadata !2071, null}
!3210 = metadata !{i32 827, i32 0, metadata !2071, null}
!3211 = metadata !{i32 828, i32 0, metadata !3212, null}
!3212 = metadata !{i32 786443, metadata !2071, i32 827, i32 0, metadata !6, i32 222} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3213 = metadata !{i32 831, i32 0, metadata !2071, null}
!3214 = metadata !{i32 625, i32 0, metadata !2125, null}
!3215 = metadata !{i32 634, i32 0, metadata !2135, null}
!3216 = metadata !{i32 635, i32 0, metadata !2135, null}
!3217 = metadata !{i32 636, i32 0, metadata !2135, null}
!3218 = metadata !{i32 640, i32 0, metadata !2135, null}
!3219 = metadata !{i32 644, i32 0, metadata !2135, null}
!3220 = metadata !{i32 648, i32 0, metadata !2135, null}
!3221 = metadata !{i32 652, i32 0, metadata !2135, null}
!3222 = metadata !{i32 656, i32 0, metadata !2135, null}
!3223 = metadata !{i32 657, i32 0, metadata !2141, null}
!3224 = metadata !{i32 660, i32 0, metadata !2135, null}
!3225 = metadata !{i32 664, i32 0, metadata !2135, null}
!3226 = metadata !{i32 673, i32 0, metadata !2145, null}
!3227 = metadata !{i32 674, i32 0, metadata !2135, null}
!3228 = metadata !{i32 678, i32 0, metadata !2135, null}
!3229 = metadata !{i32 679, i32 0, metadata !2135, null}
!3230 = metadata !{i32 423, i32 0, metadata !2163, null}
!3231 = metadata !{i32 428, i32 0, metadata !2174, null}
!3232 = metadata !{i32 431, i32 0, metadata !2174, null}
!3233 = metadata !{i32 434, i32 0, metadata !2174, null}
!3234 = metadata !{i32 435, i32 0, metadata !2174, null}
!3235 = metadata !{i64 0, i64 4, metadata !2247, i64 4, i64 4, metadata !2247, i64 8, i64 4, metadata !2247}
!3236 = metadata !{i32 439, i32 0, metadata !3237, null}
!3237 = metadata !{i32 786443, metadata !3238, i32 436, i32 0, metadata !6, i32 279} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3238 = metadata !{i32 786443, metadata !2174, i32 436, i32 0, metadata !6, i32 278} ; [ DW_TAG_lexical_block ] [/home/tm/phase2/C-NGIN/src/src/http/ngx_http.c]
!3239 = metadata !{i32 440, i32 0, metadata !3237, null}
!3240 = metadata !{i32 436, i32 0, metadata !3238, null}
!3241 = metadata !{i32 438, i32 0, metadata !3237, null}
!3242 = metadata !{i32 441, i32 0, metadata !3237, null}
!3243 = metadata !{i32 444, i32 0, metadata !3237, null}
!3244 = metadata !{i32 445, i32 0, metadata !3237, null}
!3245 = metadata !{i32 449, i32 0, metadata !2174, null}
!3246 = metadata !{i32 450, i32 0, metadata !2174, null}
!3247 = metadata !{i32 451, i32 0, metadata !2174, null}
